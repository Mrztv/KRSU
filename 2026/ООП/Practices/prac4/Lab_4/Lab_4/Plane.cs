namespace Lab_4;

public sealed class Plane : Transport
{
    public double Latitude { get; set; }

    public Plane()
    {
        Fuel = 100;
        Health = 100;
        Speed = 400;
        Power = 20000;
        Direction = new Vector(0,0);
        Position = new Vector(0,0);
        Latitude = 0;
    }

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


    public override void Move()
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