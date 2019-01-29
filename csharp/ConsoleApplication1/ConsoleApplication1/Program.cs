using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {

            int chances = 3;

            Console.WriteLine("\nWelcome to Random Number Guessing Game.");
            Console.WriteLine("\n\nGuess the random number range from 1 to 10.");
            Console.WriteLine(string.Format("\nYou have {0} chances to win the game.", chances));


            for (int i = 1; i <= chances; i++)
            {
                Random randomnumber = new Random();
                int random = randomnumber.Next(1, 10);

                string userValue = Console.ReadLine();

                if (userValue == random.ToString())
                {
                    Console.WriteLine("You guess is correct!");
                }
                else
                {
                    Console.WriteLine("You guess is wrong ");
                }

                if (i == chances)
                {
                    Console.WriteLine("sorry, You ran out your chances! Game Over");
                }
            }
        }
    }
}
