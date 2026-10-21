namespace Lab_4;

public abstract class Car : Transport
{
    protected Wheel[] Wheels { get; set; }

    protected Car()
    {
        Speed = 0;
        Fuel = 40;
        Health = 100;
        Direction = new Vector(0, 0);
        Position = new Vector(0, 0);
        Wheels = new Wheel[4];
        for (int i = 0; i < Wheels.Length; i++)
        {
            Wheels[i] = new Wheel(3, 28);
        }
    }

    protected Car(double fuel, double health, double speed, Vector direction, Vector position, Wheel[] wheels)
    {
        Speed = speed;
        Fuel = fuel;
        Health = health;
        Direction = direction;
        Position = position;
        Wheels = wheels;
    }

    public override void Move()
    {
        Console.WriteLine("Car is moving on road");
        Position += (Direction * Speed);
    }

    protected override void Refuel()
    {
        Fuel = 90;
    }

    protected override void Repair()
    {
        Health = 100;
    }
    
    protected void ChangeWheels(Wheel[] wheels)
    {
        Wheels = wheels;
    }

    public override string ToString()
    {
        string s = "";
        foreach (var wheel in Wheels)
        {
            s += wheel.ToString() + ",\n";
        }
        return base.ToString() + "wheels:\n" + s;
    }
}