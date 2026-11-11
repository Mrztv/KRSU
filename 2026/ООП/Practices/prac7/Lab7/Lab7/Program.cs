namespace Lab7;

internal class Program
{
    private static void Main(string[] args)
    {
        ResearchTeamCollection researchTeamCollection = new ResearchTeamCollection(3, "MyCollection");
        ResearchTeam aaa = new ResearchTeam("aaa", "aaa", "aaa", 109, TimeFrame.Year);
        aaa.AddPapers(new Paper(), new Paper(), new Paper());
        ResearchTeam bbb = new ResearchTeam("bbb", "bbb", "bbb", 14, TimeFrame.TwoYear);
        bbb.AddPapers(new Paper(), new Paper());
        ResearchTeam bab = new ResearchTeam("bab", "bab", "bab", 55, TimeFrame.Long);
        bab.AddPapers(new Paper());
        researchTeamCollection.AddResearchTeams(aaa, bbb, bab);
        Console.WriteLine(researchTeamCollection.ToShortString());
        
        
        researchTeamCollection.IdSort();
        Console.WriteLine("IdSort");
        Console.WriteLine(researchTeamCollection.ToShortString());
        
        researchTeamCollection.TopicSort();
        Console.WriteLine("TopicSort");
        Console.WriteLine(researchTeamCollection.ToShortString());
        
        researchTeamCollection.CountSort();
        Console.WriteLine("CountSort");
        Console.WriteLine(researchTeamCollection.ToShortString());


        Console.WriteLine("Minimal id");
        Console.WriteLine(researchTeamCollection.MinimalId);

        Console.WriteLine("Filter two Years");
        foreach (var team in researchTeamCollection.TwoYearResearchTeams)
        {
            Console.WriteLine(team.ToShortString());
        }

        Console.WriteLine("Group with 2 papers");
        foreach (var team in researchTeamCollection.NGroup(2))
        {
            Console.WriteLine(team.ToShortString());
        }

        Console.WriteLine("Group with 0 papers");
        foreach (var team in researchTeamCollection.NGroup(0))
        {
            Console.WriteLine(team.ToShortString());
        }

        TestCollections testCollections = new TestCollections(1000000);
        
        Team first = new Team("ThreeDaysGrace", 1, "1");
        Team mid = new Team("ThreeDaysGrace", 500, "500");
        Team last = new Team("ThreeDaysGrace", 1000, "1000");
        Team nonexistent = new Team("ThreeDaysGrace", 1000000, "1000000");

        Console.WriteLine("Search first in List<Team>, List<string>, Dictionary<Team, ResearchTeam>, Dictionary<string, ResearchTeam>");
        
        testCollections.SearchList(first);
        testCollections.SearchList(first.ToString());
        testCollections.SearchDictionary(first);
        testCollections.SearchDictionary(first.ToString());
        testCollections.SearchTeamDictionary("1", new ResearchTeam());

        Console.WriteLine("Search mid in List<Team>, List<string>, Dictionary<Team, ResearchTeam>, Dictionary<string, ResearchTeam>");
        
        testCollections.SearchList(mid);
        testCollections.SearchList(mid.ToString());
        testCollections.SearchDictionary(mid);
        testCollections.SearchDictionary(mid.ToString());
        testCollections.SearchTeamDictionary("1", new ResearchTeam());

        Console.WriteLine("Search last in List<Team>, List<string>, Dictionary<Team, ResearchTeam>, Dictionary<string, ResearchTeam>");
        
        testCollections.SearchList(last);
        testCollections.SearchList(last.ToString());
        testCollections.SearchDictionary(last);
        testCollections.SearchDictionary(last.ToString());
        testCollections.SearchTeamDictionary("1", new ResearchTeam());

        Console.WriteLine("Search nonexistent in List<Team>, List<string>, Dictionary<Team, ResearchTeam>, Dictionary<string, ResearchTeam>");
        
        testCollections.SearchList(nonexistent);
        testCollections.SearchList(nonexistent.ToString());
        testCollections.SearchDictionary(nonexistent);
        testCollections.SearchDictionary(nonexistent.ToString());
        testCollections.SearchTeamDictionary("1", new ResearchTeam());


    }
    
    
    
    
}