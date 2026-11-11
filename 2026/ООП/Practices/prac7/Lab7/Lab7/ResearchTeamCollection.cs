namespace Lab7;

internal class ResearchTeamCollection
{
    private List<ResearchTeam> _researchTeams;
    
    public delegate void TeamListHandler(object source, TeamListHandlerEventArgs args);
    
    public string Name { get; set; }
    

    public int MinimalId
    {
        get {
            if (_researchTeams.Count == 0)
            {
                return -1;
            }
            IdSort();
            return _researchTeams[0].Id;
        }
    }

    public ResearchTeam this[int index]
    {
        get { return _researchTeams[index]; }
        set { _researchTeams[index] = value; }
    }
    
    public IEnumerable<ResearchTeam> TwoYearResearchTeams
    {
        get
        {
            foreach (var researchTeam in _researchTeams)
            {
                if (researchTeam.ResearchDuration == TimeFrame.TwoYear)
                {
                    yield return researchTeam;
                }
            }
        }
    }

    public List<ResearchTeam> NGroup(int value)
    {
        List<ResearchTeam> result = new List<ResearchTeam>();
        foreach (var researchTeam in _researchTeams)
        {
            if (researchTeam.Papers.Count == value)
            {
                result.Add(researchTeam);
            }
        }
        return result;
    }

    public ResearchTeamCollection()
    {
        Name = "Test Name";
        _researchTeams = new List<ResearchTeam>();
    }
    
    public ResearchTeamCollection(int countOfAdd, string collectionName)
    {
        Name = collectionName;
        _researchTeams = new List<ResearchTeam>();
        AddDefaults(countOfAdd);
    }

    private void AddDefaults(int countOfAdd)
    {
        for (int i = 0; i < countOfAdd; i++)
        {
            _researchTeams.Add(new ResearchTeam($"{i+1}", "test", $"{i+1}", i+1, (TimeFrame)(i%3) ));
            ResearchTeamAdded?.Invoke(this, new TeamListHandlerEventArgs(Name, "add", _researchTeams.Count-1));
        }
    }

    public void AddResearchTeams(params ResearchTeam[] researchTeams)
    {
        // _researchTeams.AddRange(researchTeams);
        foreach (var researchTeam in researchTeams)
        {
            _researchTeams.Add(researchTeam);
            ResearchTeamAdded?.Invoke(this, new TeamListHandlerEventArgs(Name, "add", _researchTeams.Count-1));
        }

    }

    public override string ToString()
    {
        string result = $"Research Teams: {Name}\n";
        foreach (var researchTeam in _researchTeams)
        {
            result += $"\t{researchTeam}\n";
        }
        return result;
    }

    public virtual string ToShortString()
    {
        string result = "Research Teams:\n";
        foreach (var researchTeam in _researchTeams)
        {
            result += $"\t{researchTeam.ToShortString()}\n";
        }
        return result;
    }

    public void IdSort()
    {
        _researchTeams.Sort((x,y) => x.CompareTo(y));
    }
    
    public void TopicSort()
    {
        _researchTeams.Sort((x,y) => x.Compare(x,y));
    }
    
    public void CountSort()
    {
        ResearchTeamComparer comparer = new ResearchTeamComparer();
        _researchTeams.Sort(comparer.Compare);
    }



    public void InsertAt(int index, ResearchTeam researchTeam)
    {
        if (_researchTeams.Count < index + 1)
        {
            _researchTeams.Add(researchTeam);
            ResearchTeamAdded?.Invoke(this, new TeamListHandlerEventArgs(Name, "add", _researchTeams.Count-1));
        }
        else
        {
            _researchTeams.Insert(index, researchTeam);
            ResearchTeamInserted?.Invoke(this, new TeamListHandlerEventArgs(Name, "insert", index));
        }
    }

    public event TeamListHandler ResearchTeamAdded;
    public event TeamListHandler ResearchTeamInserted;

}