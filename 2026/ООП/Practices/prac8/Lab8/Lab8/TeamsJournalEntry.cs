namespace Lab8;

internal class TeamsJournalEntry
{
    public string CollectionName { get; set; }
    public Revision EventType { get; set; }
    public string ProperyName { get; set; }
    public int Id { get; set; }

    public TeamsJournalEntry(string collectionName, Revision eventType, string properyName, int id)
    {
        CollectionName = collectionName;
        EventType = eventType;
        ProperyName = properyName;
        Id = id;
    }

    public override string ToString()
    {
        return $"Entry:\n\tCollectionName: {CollectionName}, EventType: {EventType}, ProperyName: {ProperyName}, Id: {Id}";
    }
}