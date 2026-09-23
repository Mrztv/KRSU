
Console.WriteLine("Task 1");

String str = "hsakfjh87212470asfasgf";

foreach (char c in str)
{
    //if (c >= '0' && c <= '9')
    //{
    //    Console.WriteLine(c);
    //}
    Console.Write(c >= '0' && c <= '9' ? c.ToString() + '\n' : "");
}



Console.WriteLine("Task 2");

int[] array = { 2141, 12, 412, 552, 12, 1, 2, 4, 5, 5000 };
int[] sorted = new int[array.Length];
array.CopyTo(sorted, 0);
Array.Sort(sorted);
Array.Reverse(sorted);

int[] result = new int[array.Length];

for (int i = 0; i < array.Length; i++)
{
    result[i] = array[i] + sorted[i];
}

foreach (int i in result) { Console.WriteLine(i); }



Console.WriteLine("Task 3");


int[] original = {12, 4, 2, 12, 1, 2, 1, 251, 52 };
int[] resultT3 = DeleteElems(original, 2, 12, 1);

foreach (int i in resultT3) { Console.WriteLine(i); }

int[] DeleteElems(int[] original, params int[] elems)
{
    int count = original.Length;
    foreach (int elem in original)
    {
        if (Array.IndexOf(elems, elem) != -1)
        {
            count--;
        }
    }
    int[] result = new int[count];
    int index = 0;

    foreach (int elem in original)
    {
        if (Array.IndexOf(elems, elem) == -1)
        {
            result[index++] = elem;
        }
    }
    
    return result;
}


Console.WriteLine("Task 4");

int[] arrayT4 = { 1, 2, 3, 4, 5 };

int min, max, avg;

OutMethod(arrayT4, out min, out max, out avg);
Console.WriteLine("Out");
Console.WriteLine("Min: {0}", min);
Console.WriteLine("Max: {0}", max);
Console.WriteLine("Average: {0}", avg);

var tuple = TupleMethod(arrayT4);
Console.WriteLine("Tuple");
Console.WriteLine("Min: {0}", tuple.Item1);
Console.WriteLine("Max: {0}", tuple.Item2);
Console.WriteLine("Average: {0}", tuple.Item3);
void OutMethod(int[] array, out int min, out int max, out int avg)
{
    min = array.Min();
    max = array.Max();
    avg = Convert.ToInt32(array.Average());
}

(int, int, int) TupleMethod(int[] array)
{
    int min, max, avg;
    min = array.Min();
    max = array.Max();
    avg = Convert.ToInt32(array.Average());
    return (min, max, avg);
}

//int[] array = { 1, 2, 3, 4 };
//int[] array2 = array;

//for (int i = 0 ; i < 4; i++)
//{
//    Console.WriteLine(array[i]);
//    Console.WriteLine(array2[i]);
//}


//array2[0] = 155;

//for (int i = 0; i < 4; i++)
//{
//    Console.WriteLine(array[i]);
//    Console.WriteLine(array2[i]);
//}


