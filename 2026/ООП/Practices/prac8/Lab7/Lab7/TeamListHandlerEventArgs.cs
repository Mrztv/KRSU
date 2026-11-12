namespace Lab7;

public class TeamListHandlerEventArgs : EventArgs
{
    public string CollectionName { get; set; }
    
    public string TypeInfo {get; set;}
    
    public int Index { get; set; }

    public TeamListHandlerEventArgs()
    {
        CollectionName = "";
        TypeInfo = "";
        Index = -1;
    }

    public TeamListHandlerEventArgs(string collectionName, string typeInfo, int index)
    {
        CollectionName = collectionName;
        TypeInfo = typeInfo;
        Index = index;
    }

    public override string ToString()
    {
        return $"CollectionName: {CollectionName}, TypeInfo: {TypeInfo}, Index: {Index}";
    }
}