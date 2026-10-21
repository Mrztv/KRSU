namespace Lab5;

internal class Program
{
    private static void Main(string[] args)
    {

        ResearchTeam researchTeam = new ResearchTeam();
        Console.WriteLine("ToShortString");
        Console.WriteLine(researchTeam.ToShortString());

        Console.WriteLine("Indexator");
        Console.WriteLine(researchTeam[TimeFrame.Year]);
        Console.WriteLine(researchTeam[TimeFrame.TwoYear]);
        Console.WriteLine(researchTeam[TimeFrame.Long]);

        researchTeam.Organization = "test organization";
        researchTeam.RegistrationNumber = 420;
        researchTeam.Topic = "Wake me up when september ends";
        researchTeam.ResearchDuration = TimeFrame.Long;
        researchTeam.Papers = [new Paper()];
        
        researchTeam.AddPapers(new Paper("test", new Person("Green", "Day", new DateTime(1987, 1, 1)), DateTime.Now));
        Console.WriteLine("After AddPapers");
        Console.WriteLine(researchTeam);

        Console.WriteLine("Last paper");
        Console.WriteLine(researchTeam.LastPaper);
        
        
        
        /*
         * Для этого в методе Main() создать
           одномерный массив;
           двумерный прямоугольный массив;
           двумерный ступенчатый массив
         */

        int nrow = 0, ncolumn = 0;
        Console.Write("Enter the number of rows and columns(delims: ' ' or ','): ");
        string userInput = Console.ReadLine();
        if (userInput.IndexOf(' ') != -1)
        {
            nrow =  int.Parse(userInput.Split(' ')[0]);
            ncolumn =  int.Parse(userInput.Split(' ')[1]);
        }
        else if (userInput.IndexOf(',') != -1)
        {
            nrow =  int.Parse(userInput.Split(',')[0]);
            ncolumn =  int.Parse(userInput.Split(',')[1]);
        }
        
        
        Paper[] arr = new Paper[nrow*ncolumn];
        Paper[,] matrix =  new Paper[nrow, ncolumn];
        Paper[][] mas = new Paper[nrow][];
        
        int total = nrow * ncolumn;
        int baseLen = total / nrow;
        int remainder = total % nrow;
        for (int i = 0; i < nrow; i++)
        {
            int len = baseLen + (i < remainder ? 1 : 0);
            mas[i] = new Paper[len];
        }

        for (int i = 0; i < nrow * ncolumn; i++)
        {
            arr[i] = new Paper( );
        }
        
        for (int i = 0; i < nrow; i++)
        {
            for (int j = 0; j < ncolumn; j++)
            {
                matrix[i,j] = new Paper();
            }
        }
        
        
        for (int i = 0; i < nrow; i++)
        {
            for (int j = 0; j < mas[i].Length; j++)
            {
                mas[i][j] = new Paper();
            }
        }

        Console.WriteLine("Set new name for papers in array");
        int tickStart, tickEnd;
        tickStart = Environment.TickCount;
        for (int i = 0; i < nrow * ncolumn; i++)
        {
            arr[i].Name = "My name";
        }
        tickEnd = Environment.TickCount;
        Console.WriteLine($"Time for array: {tickEnd-tickStart}");
        
        
        Console.WriteLine("Set new name for papers in matrix");
        tickStart = Environment.TickCount;
        
        for (int i = 0; i < nrow; i++)
        {
            for (int j = 0; j < ncolumn; j++)
            {
                matrix[i,j].Name = "My name";
            }
        }
        tickEnd = Environment.TickCount;
        Console.WriteLine($"Time for matrix: {tickEnd-tickStart}");
        
        
        Console.WriteLine("Set new name for papers in stepped");
        tickStart = Environment.TickCount;
        for (int i = 0; i < nrow; i++)
        {
            for (int j = 0; j < mas[i].Length; j++)
            {
                mas[i][j].Name = "My name";
            }
        }
        tickEnd = Environment.TickCount;
        Console.WriteLine($"Time for stepped: {tickEnd-tickStart}");
        
    }
}