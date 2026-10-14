namespace Lab_4;

public class Wheel
{
    private double _pressure;
    private double _radius;

    public Wheel(double pressure, double radius)
    {
        _pressure = pressure;
        _radius = radius;
    }

    public override string ToString()
    {
        return $"Pressure: {_pressure}, Radius: {_radius} ";
    }
}