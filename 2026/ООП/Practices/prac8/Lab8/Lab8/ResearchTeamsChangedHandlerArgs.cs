namespace Lab8;

internal class ResearchTeamsChangedHandlerArgs<TKey> : EventArgs
{
    public string CollectionName { get; }
    public Revision Revision { get; }
    public string PropertyName { get; }
    public int RegistrationNumber { get; }

    public ResearchTeamsChangedHandlerArgs(string collectionName, Revision revision, string propertyName, int registrationNumber)
    {
        CollectionName = collectionName;
        Revision = revision;
        PropertyName = propertyName;
        RegistrationNumber = registrationNumber;
    }

    public override string ToString()
    {
        return $"CollectionName: {CollectionName}, Revision: {Revision}, PropertyName: {PropertyName}, RegistrationNumber: {RegistrationNumber}";
    }
}