/*
 * Copyright (C) 2013 AutoQuery by CarlosX
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AutoQuery
{
    class LogConsole
    {
        static string prefix = "[SERVICE]";
        static string name   = "[AutoQuery]";

        public static void Show(string lg1)
        {
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.Write(prefix + ": ");
            Console.ForegroundColor = ConsoleColor.Green;
            Console.Write(lg1 + "\n");
            Console.ForegroundColor = ConsoleColor.Gray;
        }
        public static void Show(string lg1,object arg0)
        {
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.Write(prefix + ": ");
            Console.ForegroundColor = ConsoleColor.Green;
            Console.Write(lg1,arg0);
            Console.Write("\n");
            Console.ForegroundColor = ConsoleColor.Gray;
        }
        public static void Show(string lg1, params object[] arg)
        {
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.Write(prefix + ": ");
            Console.ForegroundColor = ConsoleColor.Green;
            Console.Write(lg1, arg);
            Console.Write("\n");
            Console.ForegroundColor = ConsoleColor.Gray;
        }
        public static void Show(string lg1, object arg0, object arg1)
        {
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.Write(prefix + ": ");
            Console.ForegroundColor = ConsoleColor.Green;
            Console.Write(lg1, arg0,arg1);
            Console.Write("\n");
            Console.ForegroundColor = ConsoleColor.Gray;
        }
        public static void Show(string lg1, object arg0, object arg1, object arg2)
        {
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.Write(prefix + ": ");
            Console.ForegroundColor = ConsoleColor.Green;
            Console.Write(lg1, arg0, arg1,arg2);
            Console.Write("\n");
            Console.ForegroundColor = ConsoleColor.Gray;
        }
        public static void Show(string lg1, object arg0, object arg1, object arg2, object arg3)
        {
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.Write(prefix + ": ");
            Console.ForegroundColor = ConsoleColor.Green;
            Console.Write(lg1, arg0, arg1, arg2,arg3);
            Console.Write("\n");
            Console.ForegroundColor = ConsoleColor.Gray;
        }
        public static void Show(string lg1, object arg0, object arg1, object arg2, object arg3, object arg4)
        {
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.Write(prefix + ": ");
            Console.ForegroundColor = ConsoleColor.Green;
            Console.Write(lg1, arg0, arg1, arg2,arg3,arg4);
            Console.Write("\n");
            Console.ForegroundColor = ConsoleColor.Gray;
        }
        public static void _Load()
        {
            Console.ForegroundColor = ConsoleColor.Magenta;
            Console.Title = name;
            string p = ttbb((80 - name.Length) / 2);
            Console.WriteLine(p + name + p);
            Console.ForegroundColor = ConsoleColor.Gray;
        }
        static string ttbb(int xd)
        {
            string bb = "";
            for (int x = 0; x < xd; x++)
            {
                bb += "=";
            }
            return bb;
        }
    }
}
