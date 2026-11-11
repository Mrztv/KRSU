namespace Lab7;

internal class TeamsJournalEntry
{
    public string CollectionName { get; set; }
    public string TypeInfo { get; set; }
    public int Index { get; set; }

    public TeamsJournalEntry(string collectionName, string typeInfo, int index)
    {
        CollectionName = collectionName;
        TypeInfo = typeInfo;
        Index = index;
    }

    public override string ToString()
    {
        return $"Entry:\n\tCollectionName: {CollectionName}, TypeInfo: {TypeInfo}, Index: {Index}";
    }
}