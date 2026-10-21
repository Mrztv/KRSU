namespace Lab5;

class Person : INameAndCopy
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

    public override int GetHashCode()
    {
        return _name.GetHashCode() ^ _surname.GetHashCode() ^ _dateOfBirth.GetHashCode();
    }

    public object DeepCopy()
    {
        return new Person(_name, _surname, _dateOfBirth);
    }
    
}