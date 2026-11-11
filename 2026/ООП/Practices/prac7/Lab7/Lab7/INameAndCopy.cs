namespace Lab7;

internal interface INameAndCopy
{
    string Name { get; set; }
    object DeepCopy();
}
