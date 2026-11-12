namespace Lab7;

internal class TestCollections
{
    private List<Team> _teamList;
    private List<string> _stringList;
    private Dictionary<Team, ResearchTeam> _teamDictionary;
    private Dictionary<string, ResearchTeam> _stringDictionary;
    
    static ResearchTeam AddDefault(int n)
    {
        ResearchTeam team = new ResearchTeam();
        Paper[]papers= new Paper[n];
        for (int i = 0; i < n; i++)
        {
            Paper paper = new Paper {Name=i.ToString()};
            paper.Person = new Person($"Author{i}", $"Surname{i}", new DateTime());
            papers[i] = paper;
        }
        team.AddPapers(papers); 
        return team;
    }

    public TestCollections(int n)
    {
        _teamList = new List<Team>(n);
        _stringList = new List<string>(n);
        for (int i = 0; i < n; i++)
        {
            Team newTeam = new Team("ThreeDaysGrace", i+1, $"{i+1}");
            _teamList.Add(newTeam);
            _stringList.Add(newTeam.ToString());
        }
        
        _teamDictionary = new Dictionary<Team, ResearchTeam>(n);
        _stringDictionary = new Dictionary<string, ResearchTeam>(n);
        for (int i = 0; i < n; i++)
        {
            Team newTeam = new Team("ThreeDaysGrace", i+1, $"{i+1}");
            ResearchTeam newResearchTeam = AddDefault(10);
            _teamDictionary.Add(newTeam, newResearchTeam);
            _stringDictionary.Add(newTeam.ToString(), newResearchTeam);
        }   
    }

    public void SearchList(Team team)
    {
        int startTick, endTick;
        bool found = false;
        startTick = Environment.TickCount;
        foreach (var _team in _teamList)
        { 
            if (team == _team)
            {
                found = true;
                break;
            }
        }
        endTick = Environment.TickCount;
        if (found) Console.WriteLine($"Found team in List<Team> in {endTick - startTick} ms");
        else Console.WriteLine("Cannot found Team in List<Team>");
    }

    public void SearchList(string teamName)
    {
        int startTick, endTick;
        startTick = Environment.TickCount;
        bool found = false;
        foreach (var _team in _stringList)
        {
            if (_team == teamName)
            {
                found = true;
                break;
            }
        }
        endTick = Environment.TickCount;
        if(found) Console.WriteLine($"Found string in List<string> in {endTick - startTick} ms");
        else Console.WriteLine($"Not found string in List<string>");
    }

    public void SearchDictionary(Team team)
    {
        int startTick, endTick;
        bool found = false;
        startTick = Environment.TickCount;
        if (_teamDictionary.ContainsKey(team))
        {
            found = true;
            ResearchTeam _team = _teamDictionary[team];
        }
        endTick =  Environment.TickCount;
        if (found) Console.WriteLine($"Found team in Dictionary<Team, ResearchTeam> in {endTick - startTick} ms");
        else  Console.WriteLine("Cannot found Team");
    }
    
    public void SearchDictionary(string teamName)
    {
        int startTick, endTick;
        bool found = false;
        startTick = Environment.TickCount;
        ResearchTeam _team;
        if (_stringDictionary.ContainsKey(teamName))
        {
            found = true;
        }
        endTick =  Environment.TickCount;
        if (found) Console.WriteLine($"Found string in Dictionary<string, ResearchTeam> in {endTick - startTick} ms");
        else Console.WriteLine("Cannot found Team");
    }
    public void SearchTeamDictionary(string str, ResearchTeam team)
    {
        int startTick, endTick;
        startTick = Environment.TickCount;
        bool found = false;
        foreach (var value in _teamDictionary.Values)
        {
            if (value == team)
            {
                foreach (var teamPaper in team.Papers)
                {
                    if (teamPaper.Name == str)
                    {
                        found = true;
                        break;
                    }
                }
            }
        }
        endTick = Environment.TickCount;
        if (found) Console.WriteLine($"Found ResearchTeam by Name in Dictionary<Team, ResearchTeam> in {endTick - startTick} ms>");
        else Console.WriteLine("Cannot found Team");
    }
    
    
    
    
    
    
}