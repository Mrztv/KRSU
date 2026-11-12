using System.Collections;

namespace Lab8;

internal class ResearchTeamEnumerator : IEnumerable<Person>
{
    
    private readonly ArrayList _persons;

    public ResearchTeamEnumerator(List<Person> persons)
    {
        _persons = new ArrayList(persons);
    }
    
    public IEnumerator<Person> GetEnumerator()
    {
        foreach (Person  person in _persons)
        {
            if (person.Papers.Count > 0)
            {
                yield return person;
            }
        }
    }

    IEnumerator IEnumerable.GetEnumerator()
    {
        return GetEnumerator();
    }
}