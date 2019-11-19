using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiceTest
{
    class Program
    {
        static void Main(string[] args)
        {
            // references the web service
            Tafe.ReverseSoapClient service = new Tafe.ReverseSoapClient();

            Console.Write("Enter some text: ");
            string userText = Console.ReadLine();
            Console.WriteLine("Original: {0}\r\nReversed: {1}", userText, service.Reversed(userText));

            Console.Read();
        }
    }
}
