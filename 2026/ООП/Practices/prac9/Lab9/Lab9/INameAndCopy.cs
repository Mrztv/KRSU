namespace Lab9;

internal interface INameAndCopy
{
    string Name { get; set; }
    object DeepCopy();
}
