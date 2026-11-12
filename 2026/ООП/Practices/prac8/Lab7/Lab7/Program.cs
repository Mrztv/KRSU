namespace Lab7;

internal class Program
{
    private static void Main(string[] args)
    {
        ResearchTeamCollection<string> collection1 = new ResearchTeamCollection<string>(10, "Collection1");
        ResearchTeamCollection<string> collection2 = new ResearchTeamCollection<string>(20, "Collection2");

        TeamsJournal teamsJournal = new TeamsJournal();

        ResearchTeam rt1Old = new ResearchTeam("1", "1", "research team 1 old", 1, TimeFrame.Long);
        ResearchTeam rt2Old = new ResearchTeam("2", "2", "research team 2 old", 2, TimeFrame.Long);
            

        collection1.ResearchTeamsChanged += teamsJournal.ResearchTeamsChangedHandler;
        collection2.ResearchTeamsChanged += teamsJournal.ResearchTeamsChangedHandler;
        
        collection1.Add("Research Team 1", rt1Old);
        collection2.Add("Research Team 2", rt2Old);

        collection1["Research Team 1"].Topic = "Test";
        rt2Old.Topic = "Test";
        
        collection1["Research Team 1"].ResearchDuration = TimeFrame.TwoYear;
        rt2Old.ResearchDuration = TimeFrame.Year;
        
        
        ResearchTeam rt1New = new ResearchTeam("1", "1", "research team 1 new", 10, TimeFrame.Long);
        ResearchTeam rt2New = new ResearchTeam("2", "2", "research team 2 new", 20, TimeFrame.Long);
        
        collection1.Replace(rt1Old, rt1New);
        collection2.Replace(rt2Old, rt2New);
        
        rt1Old.ResearchDuration = TimeFrame.TwoYear;
        rt2Old.Topic = "Old topic";
        
        collection1.Remove(rt1New);
        collection2.Remove(rt2New);
        
        rt1New.Topic = "New topic";
        rt2New.ResearchDuration = TimeFrame.TwoYear;
        
        Console.WriteLine(teamsJournal);

    }
    
    
    
    
}