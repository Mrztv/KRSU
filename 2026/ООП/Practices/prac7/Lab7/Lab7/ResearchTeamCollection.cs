namespace Lab7;

internal class ResearchTeamCollection
{
    private List<ResearchTeam> _researchTeams;
    
    delegate void TeamListHandler(object source, TeamListHandlerEventArgs args);
    
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
        }
    }

    public void AddResearchTeams(params ResearchTeam[] researchTeams)
    {
        _researchTeams.AddRange(researchTeams);
    }

    public override string ToString()
    {
        string result = "Research Teams:\n";
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
    
    
}