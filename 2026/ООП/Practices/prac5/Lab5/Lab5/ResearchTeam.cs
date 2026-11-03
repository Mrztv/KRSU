using System.Collections;

namespace Lab5;

class ResearchTeam : Team, INameAndCopy
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
    private ArrayList _papers;

    public ArrayList Papers
    {
        get => _papers;
        set => _papers = value ?? new ArrayList();
    }

    public Paper? LastPaper
    {
        get
        {
            if (_papers.Count == 0)
            {
                return null;
            }

            ArrayList sorted = (ArrayList) Papers.Clone();
            
            sorted.Sort();
            // пробует преобразовать sorted[^1] к Paper если не удачно то возвращает null, 
            return sorted[^1] as Paper;
        }
    }

    private ArrayList _persons;

    public ArrayList Persons
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
        _papers = new ArrayList();
    }

    public ResearchTeam() : base()
    {
        _topic = "About Joe's sandwich";
        // _organization = "Friend Inc.";
        // _registrationNumber = 1;
        _researchDuration = TimeFrame.Year;
        _papers = new ArrayList();
    }


    public void AddPapers(params Paper[] papers)
    {
        /*
        int newLong = _papers.Length + papers.Length;
        var tmp = new Paper[_papers.Length];
        _papers.CopyTo(tmp, 0);
        _papers = new Paper[newLong];
        tmp.CopyTo(_papers, 0);
        papers.CopyTo(_papers, tmp.Length);*/
        
        _papers.AddRange(papers);
        
    }

    public override bool Equals(object? obj)
    {
        if (obj is ResearchTeam team)
        {
            return _topic.Equals(team.Topic) && _researchDuration.Equals(team.ResearchDuration) && base.Equals(team) && _papers.Equals(team.Papers) && _persons.Equals(team.Persons);
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
        return $"{base.ToString()} {_topic} {_researchDuration}";
    }
    
    
    
    public new object DeepCopy()
    {
        ResearchTeam researchTeam = new ResearchTeam(_topic, organization, Name, Id, _researchDuration);
        researchTeam.Papers = new ArrayList();
        foreach (Paper paper in Papers)
        {
            researchTeam.Papers.Add(paper.DeepCopy());
        }
        researchTeam.Persons = new ArrayList();
        foreach (Person person in Persons)
        {
            researchTeam.Persons.Add(person.DeepCopy());
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