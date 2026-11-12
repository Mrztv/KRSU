using System.ComponentModel;

namespace Lab8;

public delegate void TeamListHandler(object source, TeamListHandlerEventArgs args);

internal delegate void ResearchTeamsChangedHandler<TKey>(object sender, ResearchTeamsChangedHandlerArgs<TKey> args);

internal class ResearchTeamCollection<TKey> where TKey : notnull
{
    private readonly List<ResearchTeam> _researchTeams;
    private readonly Dictionary<TKey, ResearchTeam> _researchTeamDictionary;

    public ResearchTeamCollection(int countOfAdd, string collectionName)
    {
        Name = collectionName;
        _researchTeamDictionary = new Dictionary<TKey, ResearchTeam>();
        _researchTeams = [];
        AddDefaults(countOfAdd);
    }

    public string Name { get; set; }
    
    public int MinimalId
    {
        get
        {
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

    public event ResearchTeamsChangedHandler<TKey>? ResearchTeamsChanged;
    public event TeamListHandler? ResearchTeamAdded;
    public event TeamListHandler? ResearchTeamInserted;

    public void PropertyChangedEventHandler(object? sender, PropertyChangedEventArgs e)
    {
        ResearchTeamsChanged?.Invoke(sender, new ResearchTeamsChangedHandlerArgs<TKey>(Name, Revision.Property, e.PropertyName, ((ResearchTeam)sender).Id));
    }

    private void AddDefaults(int countOfAdd)
    {
        for (int i = 0; i < countOfAdd; i++)
        {
            _researchTeams.Add(new ResearchTeam($"{i + 1}", "test", $"{i + 1}", i + 1, (TimeFrame)(i % 3)));
            ResearchTeamAdded?.Invoke(this, new TeamListHandlerEventArgs(Name, "add", _researchTeams.Count - 1));
        }
    }

    public void AddResearchTeams(params ResearchTeam[] researchTeams)
    {
        // _researchTeams.AddRange(researchTeams);
        foreach (var researchTeam in researchTeams)
        {
            _researchTeams.Add(researchTeam);
            ResearchTeamAdded?.Invoke(this, new TeamListHandlerEventArgs(Name, "add", _researchTeams.Count - 1));
        }
    }

    public bool Remove(ResearchTeam rt)
    {
        if (_researchTeamDictionary.ContainsValue(rt))
        {
            foreach (var key in _researchTeamDictionary.Keys)
            {
                if (_researchTeamDictionary[key] == rt)
                {
                    _researchTeamDictionary[key].PropertyChanged -= PropertyChangedEventHandler;
                    _researchTeamDictionary.Remove(key);
                    ResearchTeamsChanged?.Invoke(this,
                        new ResearchTeamsChangedHandlerArgs<TKey>(Name, Revision.Remove, "", rt.Id));
                    return true;
                }
            }
        }

        return false;
    }

    public bool Replace(ResearchTeam rtOld, ResearchTeam rtNew)
    {
        if (_researchTeamDictionary.ContainsValue(rtOld))
        {
            foreach (var key in _researchTeamDictionary.Keys)
            {
                if (_researchTeamDictionary[key] == rtOld)
                {
                    _researchTeamDictionary[key].PropertyChanged -= PropertyChangedEventHandler;
                    ResearchTeamsChanged?.Invoke(this,
                        new ResearchTeamsChangedHandlerArgs<TKey>(Name, Revision.Replace, "", rtOld.Id));
                    _researchTeamDictionary[key] = rtNew;
                    _researchTeamDictionary[key].PropertyChanged += PropertyChangedEventHandler;
                    return true;
                }
            }
        }

        return false;
    }

    public bool Add(TKey key, ResearchTeam rt)
    {
        _researchTeamDictionary[key] = rt;
        rt.PropertyChanged += PropertyChangedEventHandler;
        return true;
    }

    public ResearchTeam this[TKey key] => _researchTeamDictionary[key];

    public void InsertAt(int index, ResearchTeam researchTeam)
    {
        if (_researchTeams.Count < index + 1)
        {
            _researchTeams.Add(researchTeam);
            ResearchTeamAdded?.Invoke(this, new TeamListHandlerEventArgs(Name, "add", _researchTeams.Count - 1));
        }
        else
        {
            _researchTeams.Insert(index, researchTeam);
            ResearchTeamInserted?.Invoke(this, new TeamListHandlerEventArgs(Name, "insert", index));
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

    public void IdSort()
    {
        _researchTeams.Sort((x, y) => x.CompareTo(y));
    }

    public void TopicSort()
    {
        _researchTeams.Sort((x, y) => x.Compare(x, y));
    }

    public void CountSort()
    {
        ResearchTeamComparer comparer = new ResearchTeamComparer();
        _researchTeams.Sort(comparer.Compare);
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
}