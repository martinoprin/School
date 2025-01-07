using System;

namespace ConsoleApp1
{
    public class Person
    {
        //public   int Id { get; set; }
       public string Name { get; set; }

        private string lastname;
        public string Lastname
        {
            get{
                return lastname;
            }
            set{
                lastname = value;
            }

        }
    }
}
