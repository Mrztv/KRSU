using System.Text.Json.Serialization;

namespace Lab9;

internal class Paper : INameAndCopy, IComparable
{
    public string Name { get; set; }
    [JsonIgnore]
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

    public static bool operator ==(Paper paper1, Paper paper2)
    {
        return paper1.Equals(paper2);
    }

    public static bool operator !=(Paper paper1, Paper paper2)
    {
        return !paper1.Equals(paper2);
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
    
    public int CompareTo(object? obj)
    {
        if (obj is Paper paper)
        {
            return CreationDate.CompareTo(paper.CreationDate);
        }

        return -1;
    }

    public override string ToString()
    {
        return  $"Name: {Name}, Person: {Person}, Creation date: {CreationDate}";
    }
}