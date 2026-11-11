using System.Collections;

namespace Lab6;

public class ResearchTeam : Team, INameAndCopy, IComparer<ResearchTeam>
{
    private string _topic;

    public string Topic
    {
        get => _topic;
        set => _topic = string.IsNullOrEmpty(value) ? throw new ArgumentException("Topic cannot be empty") : value;
    }
    
    private TimeFrame _researchDuration;

    public TimeFrame ResearchDuration
    {
        get => _researchDuration; 
        set => _researchDuration = value;
    }
    private List<Paper> _papers;

    public List<Paper> Papers
    {
        get => _papers;
        set => _papers = value ?? new List<Paper>();
    }

    public Paper? LastPaper
    {
        get
        {
            if (_papers.Count == 0)
            {
                return null;
            }

            List<Paper> sorted = _papers.ToList();
            sorted.Sort();
            return sorted[^1];
        }
    }

    private List<Person> _persons;

    public List<Person> Persons
    {
        get => _persons;
        set => _persons = value ?? throw new ArgumentNullException(nameof(value));
    }

    public Team Team
    {
        get => new Team(organization, id, Name);
        set
        {
            if (value is null) throw new ArgumentNullException(nameof(value));   
            Organization = value.Organization;
            Id = value.Id;
        }
    }

    public bool this[TimeFrame timeFrame]
    {
        get => timeFrame == _researchDuration;
    }

    public ResearchTeam(string topic, string organization, string name, int registrationNumber, TimeFrame researchDuration) : base (organization, registrationNumber, name)
    {
        _topic = topic;
        _researchDuration = researchDuration;
        _papers = new List<Paper>();
        _persons = new List<Person>();
    }

    public ResearchTeam() : base()
    {
        _topic = "About Joe's sandwich";
        // _organization = "Friend Inc.";
        // _registrationNumber = 1;
        _researchDuration = TimeFrame.Year;
        _papers = new List<Paper>();
        _persons = new List<Person>();
    }


    public void AddPapers(params Paper[] papers)
    {
        /*
        int newLong = _papers.Length + papers.Length;
        var tmp = new Paper[_papers.Length];
        _papers.CopyTo(tmp, 0);
        _papers = new Paper[newLong];
        tmp.CopyTo(_papers, 0);
        papers.CopyTo(_papers, tmp.Length);
        */
        
        _papers.AddRange(papers);
        
    }

    public int Compare(ResearchTeam? x, ResearchTeam? y)
    {
        if (x is null || y is null)
        {
            throw new ArgumentException("Arguments cannot be null.");
        }
        return String.Compare(x._topic, y._topic);
    }

    public override bool Equals(object? obj)
    {
        if (obj is ResearchTeam team)
        {
            return _topic.Equals(team.Topic) && _researchDuration.Equals(team.ResearchDuration) && base.Equals(team);
        }
        return false;
    }

    public override int GetHashCode()
    {
        return HashCode.Combine(base.GetHashCode(), _topic, _researchDuration,  _papers, _persons);
    }

    public override string ToString()
    {
        string result =  $"{base.ToString()} Topic: {_topic}  ResearchDuration: {_researchDuration} \nPapers:\n";
        foreach (var paper in _papers)
        {
            result += $"{paper}\n";
        }
        result += "Persons:\n";
        foreach (var person in _persons)
        {
            result += $"{person}\n";
        }
        return result;
    }
    
    public virtual string ToShortString()
    {
        return $"{base.ToString()} Topic: {_topic} ResearchDuration: {_researchDuration}";
    }
    
    
    
    public new object DeepCopy()
    {
        ResearchTeam researchTeam = new ResearchTeam(_topic, organization, Name, Id, _researchDuration);
        researchTeam.Papers = new List<Paper>();
        foreach (Paper paper in Papers)
        {
            researchTeam.Papers.Add((Paper) paper.DeepCopy());
        }
        researchTeam.Persons = new List<Person>();
        foreach (Person person in Persons)
        {
            researchTeam.Persons.Add((Person) person.DeepCopy());
        }
        researchTeam.Topic = new string(_topic);
        researchTeam.ResearchDuration = ResearchDuration;
        researchTeam.Name = new string(Name);
        return researchTeam;
    }

    object INameAndCopy.DeepCopy()
    {
        return DeepCopy();
    }

    public IEnumerable<Person> GetPersonsWithoutPapers()
    {
        foreach (Person person in Persons)
        {
            if(person.Papers.Count == 0)
            {
                yield return person;
            }
        }
    }

    public IEnumerable<Paper> GetPapersNotOlderThan(int yearsCount)
    {
        foreach (Paper paper in Papers)
        {
            if (DateTime.Now.Year - paper.CreationDate.Year < yearsCount)
            {
                yield return paper;
            }
        }
    }
    
    
    public IEnumerable<Person> GetMembersWithMoreThanOnePaper()
    {
        foreach (Person p in _persons)
        {
            if (p.Papers.Count > 1)
                yield return p;
        }
    }
    
    
    public IEnumerable<Paper> GetLastYearPapers()
    {
        foreach (Paper paper in Papers)
        {
            if (DateTime.Now.Year - paper.CreationDate.Year < 1)
            {
                yield return paper;
            }
        }
    }

    
    
    
}