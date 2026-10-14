namespace Lab_4;

public class Plane : Transport
{
    public double Latitude { get; set; }

    public Plane(double fuel, double health, double speed, double power, Vector direction, Vector position,  double latitude)
    {
        Fuel = fuel;
        Health = health;
        Speed = speed;
        Power = power;
        Direction = direction;
        Position = position;
        Latitude = latitude;
    }


    protected override void Move()
    {
        Console.WriteLine("Plane flying");
        Position += (Direction * Speed);
    }

    public void GetUp(double distance)
    {
        Latitude += distance;
    }
    
    protected override void Repair()
    {
        Console.WriteLine("Plane Repairing");
        Health = 100;
    }

    protected override void Refuel()
    {
        Fuel = 10000;
    }

    public override string ToString()
    {
        return base.ToString() + $"Latitude: {Latitude}";
    }
}