using System;
using System.Diagnostics;
using System.IO;

namespace FFplayThumbnail
{
    class Program
    {
        static private int ValidArgs(string[] args)
        {
            if (args.Length == 0)
                return -1;
            else if (args.Length == 1 && !File.Exists(args[0]))
                return -2;
            else if (args.Length > 2)
                return -3;
            else if (args.Length == 2)
            {
                if (File.Exists(args[0]) && args[1] == "fullscreen")
                    return 1;
                else if (args[0] == "fullscreen" && File.Exists(args[1]))
                    return 2;
                else if (!File.Exists(args[0]) && !File.Exists(args[1]))
                    return -4;
                else
                    return -5;
            }
            return 0;
        }

        static void Main(string[] args)
        {
            int argsStatus = ValidArgs(args);

            if (argsStatus < 0)
            {
                if (argsStatus == -1)
                    Console.WriteLine("You must enter the video you want to play!");
                else if (argsStatus == -2)
                    Console.WriteLine("File does not exist!");
                else if (argsStatus == -3)
                    Console.WriteLine("Too much arguments!");
                else if (argsStatus == -4)
                    Console.WriteLine("You entered two parameters but none of them is a file!");
                else
                    Console.WriteLine("You entered two parameters but none of them is a valid parameter");

                Console.WriteLine("Usage: FFplayThumbnail fullscreen video");
                Console.Write("Press any key to exit...... ");
                Console.ReadKey();
            }
            else
            {
                var parameters = " -autoexit ";
                var action = "";
                var file = ('"' + args[0] + '"');

                if (argsStatus == 1)
                {
                    action = args[1];
                }
                else if (argsStatus == 2)
                {
                    action = args[0];
                    file = ('"' + args[1] + '"');
                }

                if (action == "fullscreen")
                {
                    parameters += "-fs -i ";
                }
                else
                {
                    parameters += "-x 960 -y 540 -i ";
                }

                Process.Start(new ProcessStartInfo(@"ffplay.exe")
                {
                    Arguments = (parameters + file)
                });
            }
        }
    }
}
