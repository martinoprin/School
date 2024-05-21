<h1>C sharp </h1>

```csharp
using System;

namespace HelloWorld
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");
        }
    }
}
```
```csharp
int number = 10;           // Integer
float decimal = 5.5f       // Float
double pi = 3.14d;         // Floating point number
char letter = 'A';         // Character
string message = "Hello";  // String
bool isTrue = true;        // Boolean
```
VPIS, IZPIS
```csharp
using System;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Please enter your name:");
        string name = Console.ReadLine();
        Console.WriteLine("Hello, " + name + "!");
    }
}
```
SWITCH
```csharp
int day = 3;
switch (day)
{
    case 1:
        Console.WriteLine("Monday");
        break;
    case 2:
        Console.WriteLine("Tuesday");
        break;
    case 3:
        Console.WriteLine("Wednesday");
        break;
    default:
        Console.WriteLine("Invalid day");
        break;
}
```
FOR
```csharp
for (int i = 0; i < 5; i++)
{
    Console.WriteLine(i);
}
```
WHILE
```csharp
int i = 0;
while (i < 5)
{
    Console.WriteLine(i);
    i++;
}
```
DO WHILE
```csharp
int i = 0;
do
{
    Console.WriteLine(i);
    i++;
} while (i < 5);
```
```csharp
class Car 
{
  string color = "red";

  static void Main(string[] args)
  {
    Car myObj = new Car();
    Console.WriteLine(myObj.color);
  }
}
```
```csharp
// Create a Car class
class Car
{
  public string model;  // Create a field

  // Create a class constructor for the Car class
  public Car()
  {
    model = "Mustang"; // Set the initial value for model
  }

  static void Main(string[] args)
  {
    Car Ford = new Car();  // Create an object of the Car Class (this will call the constructor)
    Console.WriteLine(Ford.model);  // Print the value of model
  }
}

// Outputs "Mustang"
```
GET, SET
```csharp
class Person
{
  private string name; // field

  public string Name   // property
  {
    get { return name; }   // get method
    set { name = value; }  // set method
  }
}
```
AUTOMATIC PROPERTIES
```csharp
class Person
{
  public string Name  // property
  { get; set; }
}

class Program
{
  static void Main(string[] args)
  {
    Person myObj = new Person();
    myObj.Name = "Liam";
    Console.WriteLine(myObj.Name);
  }
}
```
```csharp
class Person
{
    // Fields
    public string Name;
    public int Age;

    // Method
    public void Introduce()
    {
        Console.WriteLine($"Hello, my name is {Name} and I am {Age} years old.");
    }
}

class Program
{
    static void Main(string[] args)
    {
        Person person = new Person();
        person.Name = "John";
        person.Age = 30;
        person.Introduce();
    }
}
```
