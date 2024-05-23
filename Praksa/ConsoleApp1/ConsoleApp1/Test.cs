using System;
using System.IO;

namespace BinaryApp
{
    class Obcina
    {
        //public char[] ime;
        //public char[] pokrajina;
        //public int racun;
        //public int povrsina;

        public void vpis(string writeText)
        {
            File.WriteAllText("C:\\Users\\prakinfo\\Desktop\\School\\Praksa\\ConsoleApp1\\filename.txt", writeText);  // Create a file and write the content of writeText to it
        }
        public string izpis()
        {
            return File.ReadAllText("C:\\Users\\prakinfo\\Desktop\\School\\Praksa\\ConsoleApp1\\filename.txt");  // Read the contents of the file
        }
    }
}