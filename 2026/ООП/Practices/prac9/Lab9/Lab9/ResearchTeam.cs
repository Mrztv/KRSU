using System.ComponentModel;
using System.Security;
using System.Text.Json;
using System.Text.Json.Serialization;

namespace Lab9;

internal class ResearchTeam : Team, INameAndCopy, IComparer<ResearchTeam>, INotifyPropertyChanged, IComparable
{
    private string _topic;
    private TimeFrame _researchDuration;
    private List<Paper> _papers;
    private List<Person> _persons;

    public ResearchTeam() : base()
    {
        _topic = "About Joe's sandwich";
        // _organization = "Friend Inc.";
        // _registrationNumber = 1;
        _researchDuration = TimeFrame.Year;
        _papers = new List<Paper>();
        _persons = new List<Person>();
    }

    public ResearchTeam(string topic, string organization, string name, int registrationNumber, TimeFrame researchDuration) : base (organization, registrationNumber, name)
    {
        _topic = topic;
        _researchDuration = researchDuration;
        _papers = new List<Paper>();
        _persons = new List<Person>();
    }

    public string Topic
    {
        get => _topic;
        set
        {
            _topic = string.IsNullOrEmpty(value) ? throw new ArgumentException("Topic cannot be empty") : value;
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("Topic"));
        }
    }

    public TimeFrame ResearchDuration
    {
        get => _researchDuration; 
        set {
            _researchDuration = value;
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("ResearchDuration"));
        }
    }

    public List<Paper> Papers
    {
        get => _papers;
        set => _papers = value ?? new List<Paper>();
    }

    [JsonIgnore]
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

    public List<Person> Persons
    {
        get => _persons;
        set => _persons = value ?? throw new ArgumentNullException(nameof(value));
    }
    
    [JsonIgnore]
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

    public event PropertyChangedEventHandler? PropertyChanged;
    
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
            result += $"\t{paper}\n";
        }
        result += "Persons:\n";
        foreach (var person in _persons)
        {
            result += $"\t{person}\n";
        }
        return result;
    }

    public int CompareTo(object? obj)
    {
        if (obj is ResearchTeam team)
        {
            return id.CompareTo(team.id);
        }
        else return -1;
    }

    public virtual string ToShortString()
    {
        return $"{base.ToString()} Topic: {_topic} ResearchDuration: {_researchDuration}";
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

    public static bool Save(string filename, ResearchTeam rt)
    {
        if (filename is null)
        {
            Console.WriteLine("Filename cannot be null.");
            return false;
        }

        FileStream? fileStream = null;
        try
        {
            FileInfo? fileInfo;
            if (File.Exists(filename))
            {
                Console.WriteLine($"{filename} Exists");
                fileInfo = new FileInfo(filename);
            }
            else
            {
                File.Create(filename).Close();
                fileInfo = new FileInfo(filename);
                Console.WriteLine($"{filename} Created");
            }

            fileStream = fileInfo.Open(FileMode.Create);
            StreamWriter streamWriter = new StreamWriter(fileStream);
            
            var options = new JsonSerializerOptions { WriteIndented = true };
            string test = JsonSerializer.Serialize(rt, options);
            
            streamWriter.Write(test);
            streamWriter.Close();
            fileStream?.Close();
            return true;

        }
        catch (SecurityException ex)
        {
            Console.WriteLine("SecurityException: " + ex.Message);
            return false;
        }
        catch (ArgumentException ex)
        {
            Console.WriteLine("Argument exception: " + ex.Message);
            return false;
        }
        catch (FileNotFoundException ex)
        {
            Console.WriteLine("FileNotFoundException: " + ex.Message);
            return false;
        }
        catch (IOException ex)
        {
            Console.WriteLine("IOException: " + ex.Message);
            return false;
        }
        finally
        {
            fileStream?.Close();
        }
        return false;
    }
    
    public bool Save(string filename)
    {
        bool result = Save(filename, this);
        return result;
    }
    
    public static bool Load(string filename, ref ResearchTeam? rt)
    {
        ResearchTeam? rtCopy = (ResearchTeam) rt?.DeepCopy();
        if (filename is null)
        {
            Console.WriteLine("Filename cannot be null.");
            return false;
        }

        FileStream? fileStream = null;
        try
        {
            FileInfo? fileInfo;
            if (File.Exists(filename))
            {
                Console.WriteLine($"{filename} Exists");
                fileInfo = new FileInfo(filename);
            }
            else
            {
                return false;
            }

            fileStream = fileInfo.Open(FileMode.Open);
            StreamReader streamReader = new StreamReader(fileStream);
            
            var options = new JsonSerializerOptions { WriteIndented = true };
            rt = JsonSerializer.Deserialize<ResearchTeam>(streamReader.ReadToEnd(), options);
            
            streamReader.Close();
            fileStream?.Close();
            
            return true;

        }
        catch (SecurityException ex)
        {
            Console.WriteLine("SecurityException: " + ex.Message);
            return false;
        }
        catch (ArgumentException ex)
        {
            Console.WriteLine("Argument exception: " + ex.Message);
            return false;
        }
        catch (FileNotFoundException ex)
        {
            Console.WriteLine("FileNotFoundException: " + ex.Message);
            return false;
        }
        catch (IOException ex)
        {
            Console.WriteLine("IOException: " + ex.Message);
            return false;
        }
        finally
        {
            fileStream?.Close();
        }
        return false;
    }
    
    
}