using System.Runtime.InteropServices.JavaScript;

namespace Lab_4;

public class Truck : Car
{
    public double CarryingCapacity { get; set; }
    public Item[] Items { get; set; } 
    
    public Truck()
    {
        CarryingCapacity = 1000.0;
        Items = [];
    }

    public Truck(double fuel, double health, double speed, Vector direction, Vector position, double carryingCapacity, Wheel[] wheels) : base(fuel, health, speed, direction, position, wheels)
    {
        CarryingCapacity = carryingCapacity;
        Items = [];
    }

    public void AddItem(Item item)
    {
        Item[] tmp = new Item[Items.Length + 1];
        Items.CopyTo(tmp, 0);
        tmp[tmp.Length - 1] = item;
        Items = tmp;
    }
    
    public override string ToString()
    {
        string s = "";
        foreach (Item item in Items)
        {
            s += $"{item},\n";
        }
        return base.ToString() + $"CarryingCapacity: {CarryingCapacity}";
    }
}