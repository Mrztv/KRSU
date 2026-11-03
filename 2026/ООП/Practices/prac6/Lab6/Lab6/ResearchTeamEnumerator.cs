using System.Collections;

namespace Lab5;

class ResearchTeamEnumerator : IEnumerable<Person>
{
    
    ArrayList _persons;

    public ResearchTeamEnumerator(ArrayList persons)
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