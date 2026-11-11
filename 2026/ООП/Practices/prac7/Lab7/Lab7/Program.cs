namespace Lab7;

internal class Program
{
    private static void Main(string[] args)
    {
        ResearchTeamCollection collection1 = new ResearchTeamCollection(20, "1");
        ResearchTeamCollection collection2 = new ResearchTeamCollection(10, "2");

        // Console.WriteLine(collection1.ToString());
        // Console.WriteLine(collection2.ToString());

        TeamsJournal teamsJournalForFirst = new TeamsJournal();
        TeamsJournal teamsJournalForBoth = new TeamsJournal();
        
        collection1.ResearchTeamAdded += teamsJournalForFirst.ResearchTeamHandler;
        collection1.ResearchTeamInserted += teamsJournalForFirst.ResearchTeamHandler;
        
        collection1.ResearchTeamAdded += teamsJournalForBoth.ResearchTeamHandler;
        collection1.ResearchTeamInserted += teamsJournalForBoth.ResearchTeamHandler;
        collection2.ResearchTeamAdded += teamsJournalForBoth.ResearchTeamHandler;
        collection2.ResearchTeamInserted += teamsJournalForBoth.ResearchTeamHandler;
        
        collection1.AddResearchTeams(
            new ResearchTeam("test1", "test1", "test1", 1, TimeFrame.Long),
            new ResearchTeam("test2", "test2", "test2", 2, TimeFrame.TwoYear),
            new ResearchTeam("test3", "test3", "test3", 3, TimeFrame.Year)
            );
        collection2.AddResearchTeams(
            new ResearchTeam("test1", "test1", "test1", 1, TimeFrame.Long),
            new ResearchTeam("test2", "test2", "test2", 2, TimeFrame.TwoYear),
            new ResearchTeam("test3", "test3", "test3", 3, TimeFrame.Year)
        );
        
        
        collection1.InsertAt(8, new ResearchTeam("insert", "insert", "insert", 1000, TimeFrame.Long));
        collection2.InsertAt(8, new ResearchTeam("insert", "insert", "insert", 1000, TimeFrame.Long));
        
        collection1.InsertAt(1000,  new ResearchTeam("insert_add", "insert_add", "insert_add", 993, TimeFrame.Long));
        collection2.InsertAt(1000,  new ResearchTeam("insert_add", "insert_add", "insert_add", 993, TimeFrame.Long));
        
        Console.WriteLine(teamsJournalForFirst.ToString());
        Console.WriteLine(teamsJournalForBoth.ToString());
    }
    
    
    
    
}