namespace Lab_4;

public abstract class Transport
{
    protected double Fuel { get; set; }
    protected double Health { get; set; }
    protected double Speed { get; set; }
    protected double Power { get; set; }
    protected Vector Direction { get; set; }
    protected Vector Position { get; set; }

    protected abstract void Move();

    protected virtual void Refuel()
    {
        Fuel = 40.0;
    }
    protected abstract void Repair();

    public override string ToString()
    {
        return $"Fuel: {Fuel}, Health: {Health}, Speed: {Speed}, Power: {Power}, Direction: {Direction},  Position: {Position}";
    }
}