using System.Runtime.Intrinsics;

namespace Lab_4;

public class Vector
{
    public double X { get; set; }
    public double Y { get; set; }

    public Vector(double x, double y)
    {
        X = x;
        Y = y;
    }

    public static Vector operator +(Vector v1, Vector v2)
    {
        return new Vector(v1.X + v2.X, v1.Y + v2.Y);
    }
    
    public static Vector operator *(Vector v1, double c)
    {
        return new Vector(v1.X * c, v1.Y * c);
    }
    
    
    
    
}
































