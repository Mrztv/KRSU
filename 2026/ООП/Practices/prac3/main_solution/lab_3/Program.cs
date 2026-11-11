
using System.Collections;
using System.Globalization;

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


class Person
{
    private string _name;
    public string Name
    {
        get => _name;
        set
        {
            if (string.IsNullOrEmpty(value))
            {
                throw new ArgumentException("Name cannot be empty");
            }
            _name = value;
        }
    }

    private string _surname;
    public string Surname
    {
        get => _surname;
        set
        {
            if (string.IsNullOrEmpty(value))
            {
                throw new ArgumentException("Surname cannot be empty");
            }
            _surname = value;
        }
    }
    
    private DateTime _dateOfBirth;
    public DateTime DateOfBirth
    {
        get => _dateOfBirth;
        set => _dateOfBirth = value;
    }

    public int Year
    {
        get => _dateOfBirth.Year;
        set => _dateOfBirth = _dateOfBirth.AddYears(value-_dateOfBirth.Year);
    }

    public Person(string name, string surname, DateTime dateOfBirth)
    {
        _name = name;
        _surname = surname;
        _dateOfBirth = dateOfBirth;
    }

    public Person()
    {
        _name = "Matthew";
        _surname = "Perry";
        _dateOfBirth = new DateTime(1969, 8, 19);
    }

    public override string ToString()
    {
        return $"Name: {_name}\nSurname: {_surname}\nBirthday: {_dateOfBirth}";
    }
    
    public string ToShortString()
    {
        return $"{_name} {_surname}";
    }
    
}

enum TimeFrame
{
    Year,
    TwoYear,
    Long
}

class Paper
{
    public string Name { get; set; }
    public Person Person { get; set; }
    public DateTime CreationDate { get; set; }

    public Paper(string name, Person person, DateTime creationDate)
    {
        Name = name;
        Person = person;
        CreationDate = creationDate;
    }
    
    public Paper()
    {
        Name = "Who eat Joe's sandwich";
        Person = new Person();
        CreationDate = DateTime.Now;
    }

    public override string ToString()
    {
        return  $"Name: {Name}\nPerson: {Person}\nCreation date: {CreationDate}";
    }
}

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

