namespace Lab_4;

public class Hybrid : Car
{
    public double EPower {get; set;}
    public double Battery {get; set;}
    
    public Hybrid() : base()
    {
        EPower = 500.0;
        Battery = 100.0;
    }
    
    public Hybrid(double fuel, double health, double speed, Vector direction, Vector position, double ePower, double battery, Wheel[] wheels) : base(fuel, health, speed, direction, position, wheels)
    {
        EPower = ePower;
        Battery = battery;
    }

    protected override void Refuel()
    {
        base.Refuel();
        Battery = 100;
    }
}