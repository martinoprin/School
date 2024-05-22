using System;
using ConsoleApp1;
using PravokotnikApp;

class Hello
{

    static void Main(string[] args)
    {
        //int x = 5;
        //Console.WriteLine("Hello, World!{0}", x);
        //Pravokotnik p = new Pravokotnik();
        //p.izpis();
        //Pravokotnik a = new Pravokotnik(100, 50);
        //a.izpis();
        //a.vpis();
        //Console.WriteLine("Povrsina {0}", a.getArea());
        //a.izpis();

        //Console.WriteLine("\x61");
        int[] tab; //declaration
        tab = new int[5]; //initialization

        string b = "Aneki";
        string c = "neki";
        //Console.WriteLine(String.Compare(b, c) > 0);

        Kvadrat k = new Kvadrat(10);
        k.izpis();
        Person p = new Person();
        //p.Id = 15;
        p.Name = "Janez";
        //Console.WriteLine(p.Name);
        p.Lastname = "Novak";
        //Console.WriteLine(p.Lastname);

        int[] arr = new int[5];

        for (int i = 0; i < arr.Length; i++)
        {
            //Console.WriteLine($"{i}");
            //arr[i] = i+1;
        }

        foreach (int i in arr)
        {
            //Console.WriteLine($"{arr[i-1]}");
            //Console.WriteLine($"{i}");
        }
    }
}

