namespace Lab9;

internal class Team : INameAndCopy, IComparable
{
    protected string organization;
    protected int id;

    public Team()
    {
        Name = "Rust";
        organization = "Piston Cup";
        id = 95;
    }

    public Team(string organization, int id, string name)
    {
        Name = name;
        this.organization = organization;
        Id = id;
    }

    public string Name { get; set; }
    
    public string Organization
    {
        get => organization; 
        set => organization = value ?? throw new ArgumentNullException(nameof(value));
    }

    public int Id
    {
        get => id; 
        set =>  id = value > 0 ? value : throw new ArgumentException("Id must  be greater than 0.");
    }
    
    public object DeepCopy()
    {
        Team tmp = new Team(organization, Id, Name);
        tmp.Name = Name;
        tmp.Id = Id;
        tmp.Organization = Organization;
        return tmp;
    }

    object INameAndCopy.DeepCopy()
    {
        return MemberwiseClone();
    }

    public override bool Equals(object? obj)
    {
        if (obj is Team team)
        {
            return Name == team.Name && id == team.Id && organization == team.Organization;
        }

        return false;
    }

    public override int GetHashCode()
    {
        // return Name.GetHashCode() ^ id.GetHashCode() ^ organization.GetHashCode();
        // они не одинаковые Combine зачем-то проверяет на нули все значения, через ref и присваивает каждой переменной 0 потом там есть ещё goto(?! ну ладно)
        // в конце он возвращает вообще страшную функцию объединяющую все хэши
        return HashCode.Combine(Name, id, organization);
    }

    public static bool operator ==(Team team1, Team team2)
    {
        return team1.Equals(team2);
    }

    public static bool operator !=(Team? team1, Team team2)
    {
        return !team1.Equals(team2);
    }

    public override string ToString()
    {
        return $"Name: {Name}, Id: {Id},  Organization: {Organization}";
    }

    public int CompareTo(object? obj)
    {
        if (obj is Team team) return id.CompareTo(team.id);
        throw new ArgumentException("Object is not a Team");
    }
}