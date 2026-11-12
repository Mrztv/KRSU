namespace Lab8;

internal interface INameAndCopy
{
    string Name { get; set; }
    object DeepCopy();
}
