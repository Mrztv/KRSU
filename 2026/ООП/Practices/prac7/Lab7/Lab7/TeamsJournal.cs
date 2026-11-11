namespace Lab7;

internal class TeamsJournal
{
    List<TeamsJournalEntry> _journal = new List<TeamsJournalEntry>();

    public void ResearchTeamHandler(object source, TeamListHandlerEventArgs args)
    {
        _journal.Add(new TeamsJournalEntry(args.CollectionName, args.TypeInfo, args.Index));
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