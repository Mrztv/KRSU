namespace Lab8;

internal class TeamsJournal
{
    private readonly List<TeamsJournalEntry> _journal = [];

    public void ResearchTeamsChangedHandler<T>(object source, ResearchTeamsChangedHandlerArgs<T> args)
    {
        _journal.Add(new TeamsJournalEntry(args.CollectionName, args.Revision, args.PropertyName, args.RegistrationNumber));
    }

    public override string ToString()
    {
        string res = "Journal Entries:\n";
        foreach (var teamsJournalEntry in _journal)
        {
            res += teamsJournalEntry.ToString() + '\n';
        }
        return res;
    }
}