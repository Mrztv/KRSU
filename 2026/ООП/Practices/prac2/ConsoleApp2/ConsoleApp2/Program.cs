using System;
using System.Collections.Generic;

internal class Program
{
    public static void Main(string[] args)
    {
        Task1();
        Task2();
    }

    private static void Task1()
    {
        Console.WriteLine("Input your text:");
        string input = Console.ReadLine();
        Console.WriteLine(Calculator.Calculate(input));
    }

    private static void Task2()
    {
        Car.Beep();
        Car car = new Car(1, "tesla model x", "blue", "sedan", 1000, 20, 40000D);
        Car car1 = new Car(2, "tesla model s", "sedan", 1500, 30000);
        
        Console.WriteLine("car: " + car);
        Console.WriteLine("car: " + car1);
        
        
        Console.WriteLine("old color: " + car.Color);
        car.Recolor("red");
        Console.WriteLine("new color: " + car.Color);
        
        
        Console.WriteLine("old owner: " + car.Owner);
        car.Sell("someone");
        Console.WriteLine("new owner: " + car.Owner);

        Car carLink = car;
        Console.WriteLine("car color: " + car.Color);
        carLink.Recolor("pink");
        Console.WriteLine("car color: " + car.Color);

    }
}


class Calculator
{
    public static int Calculate(string str)
    {
        int result = 0;
        
        Dictionary<char, int> dict = new Dictionary<char, int>();
        foreach (char c in str)
        {
            if (dict.ContainsKey(c))
            {
                dict[c]++;
            }
            else
            {
                dict.Add(c, 1);
            }
        }

        foreach (char c in dict.Keys)
        {
            result += (int)Math.Pow(c, dict[c]);
        
        }
        
        return result%8;
    }
}

//TODO:
// Разработайте класс, который должен содержать: 
//     элементы разного уровня доступа (public и private);  done
//     не менее 4 свойств;  done
//     не менее 3 методов; done
//     хотя бы одну перегрузку метода; done
//     статический метод; done
//     константное или поле только для чтения; done 
//     не менее 3 конструкторов; done
//     финализатор done


//     Класс – автомобиль (например, для салона продажи).
//     Примеры свойств: мощность, количество пассажирских мест, модель.
//     Примеры методов: Перекрасить, списать, заказать у производителя.

class Car
{
    private readonly int Id;
    private string _model;
    private string _color;

    public string Color
    {
        get => _color;
        set => _color = value;
    }

    private string _bodyType;
    private int _power;
    private int _trunkValue;
    private string _owner = "company";

    public string Owner
    {
        get => _owner;
        set => _owner = value;
    }
    
    public double Price;
    

    public Car(int id, string model, string color, string bodyType, int power, int trunkValue, double price)
    {
        Id = id;
        _model = model;
        _color = color;
        _bodyType = bodyType;
        _power = power;
        _trunkValue = trunkValue;
        Price = price;
    }

    public Car(int id, string model, string color, string bodyType)
    {
        Id = id;
        _model = model;
        _color = color;
        _bodyType = bodyType;
    }

    public Car(int id, string model, string bodyType, int power, double price)
    {
        Id = id;
        _model = model;
        _bodyType = bodyType;
        _power = power;
        Price = price;
    }

    public static void Beep()
    {
        Console.WriteLine("\a");
    }


    public void Sell(string buyer)
    {
        _owner = buyer;
    }

    public void Sell(string buyer, double sale)
    {
        Price *= (1 - sale);
        _owner = buyer;
    }

    public void Recolor(string color)
    {
        _color = color;
    }
    
    ~Car()
    {
        Console.WriteLine($"Car {Id} has been destroyed");
    }


    public override string ToString()
    {
        return $"{Id}, {_model}, {_color}, {_bodyType}, {_power}, {_trunkValue}, {_owner}, {Price}";
    }
}



