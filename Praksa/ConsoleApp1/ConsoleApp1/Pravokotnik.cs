using System;

namespace PravokotnikApp
{
    class Pravokotnik
    {
        protected int x;
        private int y;
        public Pravokotnik()
        {
            x = 5;
            y = 10;
        }
        public Pravokotnik(int x, int y)
        {
            this.x = x;
            this.y = y;
        }
        public void izpis()
        {
            Console.WriteLine(x + ", " + y);
            Console.WriteLine("Povrsina {0}", getArea());
        }
        public void vpis()
        {
            Console.Write("Vpisi x: ");
            string input = Console.ReadLine();
            x = Convert.ToInt32(input);

            Console.Write("Vpisi y: ");
            //input = Console.ReadLine();
            //y = Convert.ToInt32(input);
            y = Convert.ToInt32(Console.ReadLine());
        }
        public int getArea()
        {
            return x * y;
        }
    }
    class Kvadrat : Pravokotnik
    {
        public Kvadrat(int x)
        {
            this.x = x;
        }
        public void izpis()
        {
            Console.WriteLine(x);
        }
    }
}

