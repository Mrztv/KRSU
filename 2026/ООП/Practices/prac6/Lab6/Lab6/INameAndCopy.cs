namespace Lab6;

public interface INameAndCopy
{
    string Name { get; set; }
    object DeepCopy();
}
