using System.Collections;

namespace Lab9;

internal class Person : INameAndCopy
{
    private string _name;
    private string _surname;
    private DateTime _dateOfBirth;

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

    public override bool Equals(object? obj)
    {
        if (obj is Person person)
        {
            return _name.Equals(person.Name) && _surname.Equals(person.Surname) && _dateOfBirth.Equals(person.DateOfBirth);
        }
        return false;
    }

    public static bool operator ==(Person p1, Person p2)
    {
        return p1.Equals(p2);
    }
    
    public static bool operator !=(Person p1, Person p2)
    {
        return !p1.Equals(p2);
    }
    
    public object DeepCopy()
    {
        var person = new Person(new string(_name), new string(_surname), new DateTime(_dateOfBirth.Year, _dateOfBirth.Month, _dateOfBirth.Day));
        return person;
    }
    
    public override int GetHashCode()
    {
        return _name.GetHashCode() ^ _surname.GetHashCode() ^ _dateOfBirth.GetHashCode();
    }
    
    public override string ToString()
    {
        return $"Name: {_name}, Surname: {_surname}, Birthday: {_dateOfBirth}";
    }

    public string ToShortString()
    {
        return $"{_name}, {_surname}";
    }

}