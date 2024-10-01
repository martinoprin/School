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

        public void binaryvpis(string fileName)
        {
            string ime = Console.ReadLine();
            int starost = Convert.ToInt32(Console.ReadLine());

            using (FileStream fs = new FileStream(fileName, FileMode.Open, FileAccess.Write))
            {
                fs.Seek(0, SeekOrigin.End);
                using (BinaryWriter binWriter = new BinaryWriter(fs))
                {
                    binWriter.Write(ime);
                    binWriter.Write(starost);
                }
            }
        }
        public void ReadBookData(string fileName)
        {
            using (BinaryReader binReader = new BinaryReader(File.Open(fileName, FileMode.Open)))
            {
                while (binReader.BaseStream.Position != binReader.BaseStream.Length)
                {
                    string ime = binReader.ReadString();
                    int age = binReader.ReadInt32();

                    // Display the read data
                    Console.WriteLine($"Data read from binary file: {ime} {age}");
                }
            }
        }

    }
}