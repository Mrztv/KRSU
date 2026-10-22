using System.Collections;
using System.Runtime.InteropServices;

namespace Lab5;

internal class Program
{
    private static void Main(string[] args)
    {
        Team team1 = new Team();
        Team team2 = new Team();

        if (ReferenceEquals(team1, team2))
        {
            Console.WriteLine("Object are same");
        }
        else
        {
            Console.WriteLine("Object are not same");
        }

        if (team1 == team2)
        {
            Console.WriteLine("Teams are equal");
        }
        else
        {
            Console.WriteLine("Teams are not equal");
        }

        Console.WriteLine($"HashCode for team1: {team1.GetHashCode()}");
        Console.WriteLine($"HashCode for team2: {team2.GetHashCode()}");


        try
        {
            team1.Id = -420;
        }
        catch (ArgumentException e)
        {
            Console.WriteLine(e.Message);
        }
        
        ResearchTeam res = new ResearchTeam();
        res.AddPapers(new Paper(), new Paper());
        res.Persons = [new Person(),  new Person()];
        Console.WriteLine(res.ToString());

        Console.WriteLine(res.Team);

        Console.WriteLine("\n\n\n\n");
        
        ResearchTeam deepCopy = (ResearchTeam)res.DeepCopy();
        
        res.AddPapers(new Paper("TestCopy", new Person(), new DateTime(1999, 11, 11)));
        res.Topic = "new Topic";
        res.Organization = "deepCopy test organization";
        Console.WriteLine(res);
        Console.WriteLine(deepCopy);


        Console.WriteLine("Iterator person:");
        foreach (Person personsWithoutPaper in res.GetPersonsWithoutPapers())
        {
            Console.WriteLine(personsWithoutPaper);
        }

        
        
        res.AddPapers(new Paper("OldPaper",  new Person(), new DateTime(1900, 1, 1)));
        Console.WriteLine("Iterator paper:");
        foreach (Paper paperNotOlderThan2 in res.GetPapersNotOlderThan(2))
        {
            Console.WriteLine(paperNotOlderThan2);
        }
    }
    
    
    
    
}