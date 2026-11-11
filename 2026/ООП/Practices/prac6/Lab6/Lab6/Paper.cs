namespace Lab6;

public class Paper : INameAndCopy
{
    public string Name { get; set; }
    public Person Person { get; set; }
    public DateTime CreationDate { get; set; }

    public Paper(string name, Person person, DateTime creationDate)
    {
        Name = name;
        Person = person;
        CreationDate = creationDate;
        Person.AddPaper(this);
    }
    
    public Paper()
    {
        Name = "Who eat Joe's sandwich";
        Person = new Person();
        CreationDate = DateTime.Now;
        Person.AddPaper(this);
    }

    public override string ToString()
    {
        return  $"Name: {Name}\nPerson: {Person}\nCreation date: {CreationDate}";
    }

    public object DeepCopy()
    {
        return new Paper(Name, Person, CreationDate);
    }

    public override bool Equals(object? obj)
    {
        if (obj is Paper paper)
        {
            return Name == paper.Name && Person == paper.Person && CreationDate == paper.CreationDate;
        }
        return false;
    }

    public override int GetHashCode()
    {
        return Name.GetHashCode() ^ Person.GetHashCode() ^ CreationDate.GetHashCode();
    }

    public static bool operator ==(Paper paper1, Paper paper2)
    {
        return paper1.Equals(paper2);
    }

    public static bool operator !=(Paper paper1, Paper paper2)
    {
        return !paper1.Equals(paper2);
    }
    
}