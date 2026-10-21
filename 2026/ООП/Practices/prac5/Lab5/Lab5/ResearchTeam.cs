namespace Lab5;

class ResearchTeam
{
    private string _topic;

    public string Topic
    {
        get => _topic;
        set => _topic = string.IsNullOrEmpty(value) ? throw new ArgumentException("Topic cannot be empty") : value;
    }
    private string _organization;

    public string Organization
    {
        get =>  _organization; 
        set => _organization = string.IsNullOrEmpty(value) ? throw new ArgumentException("Organization cannot be empty") : value;
    }
    private int _registrationNumber;
    public int RegistrationNumber
    {
        get => _registrationNumber;
        set => _registrationNumber = value;
    }
    private TimeFrame _researchDuration;

    public TimeFrame ResearchDuration
    {
        get => _researchDuration; 
        set => _researchDuration = value;
    }
    private Paper[] _papers;

    public Paper[] Papers
    {
        get => _papers;
        set  => _papers = value;
    }

    public Paper? LastPaper
    {
        get
        {
            if (_papers.Length == 0)
            {
                return null;
            }
            
            Paper[] sorted = new Paper[_papers.Length];
            _papers.CopyTo(sorted, 0);
            Array.Sort(sorted, (a,b) => DateTime.Compare(a.CreationDate, b.CreationDate));
            return sorted[^1];
        }
    }

    public bool this[TimeFrame timeFrame]
    {
        get => timeFrame == _researchDuration;
    }

    public ResearchTeam(string topic, string organization, int registrationNumber, TimeFrame researchDuration)
    {
        _topic = topic;
        _organization = organization;
        _registrationNumber = registrationNumber;
        _researchDuration = researchDuration;
    }

    public ResearchTeam()
    {
        _topic = "About Joe's sandwich";
        _organization = "Friend Inc.";
        _registrationNumber = 1;
        _researchDuration = TimeFrame.Year;
    }


    public void AddPapers(params Paper[] papers)
    {
        int newLong = _papers.Length + papers.Length;
        var tmp = new Paper[_papers.Length];
        _papers.CopyTo(tmp, 0);
        _papers = new Paper[newLong];
        tmp.CopyTo(_papers, 0);
        papers.CopyTo(_papers, tmp.Length);
    }

    public override string ToString()
    {
        string result =  $"{_topic}  {_organization} {_registrationNumber} {_researchDuration} \n";
        foreach (var VARIABLE in _papers)
        {
            result += $"{VARIABLE}\n";
        }
        return result;
    }
    
    public virtual string ToShortString()
    {
        return $"{_topic}  {_organization} {_registrationNumber} {_researchDuration}";
    }
    
}