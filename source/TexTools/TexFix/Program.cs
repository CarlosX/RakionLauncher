using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace TexFix
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Title = "Tex Fix Alpha";

            if (args.Length <= 1)
                return;

            string original = args[0];
            string nuevo = args[1];

            Console.WriteLine("Original: {0}", original);
            Console.WriteLine("Nuevo: {0}", nuevo);

            Console.WriteLine("Ready!");
            Console.WriteLine();

            byte[] ori_data = ReadAllBytes(original);
            PacketReader ori_read = new PacketReader(ori_data);
            byte[] ori_head = ori_read.ReadBytes(44);

            byte[] new_data = ReadAllBytes(nuevo);
            PacketReader new_read = new PacketReader(new_data);
            new_read.SkipBytes(44);
            int length = new_read.Buffer.Length - 44;
            byte[] new_com = new_read.ReadBytes(length);

            string mod = nuevo.Replace(".tex", "") + "_mod.tex";
            WriteAllBytes(ori_head, new_com, mod);
            Console.WriteLine();
            Console.WriteLine("Complete! - {0}", mod);
        }

        public static void WriteAllBytes(byte[] head, byte[] data, string filename)
        {
            using (FileStream fs= new FileStream(filename, FileMode.OpenOrCreate, FileAccess.Write))
            {
                foreach (byte n in head)
                {
                    fs.WriteByte(n);
                }
                foreach (byte n in data)
                {
                    fs.WriteByte(n);
                }
            }
        }
        public static byte[] ReadAllBytes(string fileName)
        {
            byte[] buffer = null;
            using (FileStream fs = new FileStream(fileName, FileMode.Open, FileAccess.Read))
            {
                buffer = new byte[fs.Length];
                fs.Read(buffer, 0, (int)fs.Length);
            }
            return buffer;
        }
        public static void HexDump(byte[] bytes, int bytesPerLine = 16)
        {
            if (bytes != null)
            {
                int bytesLength = bytes.Length;

                char[] HexChars = "0123456789ABCDEF".ToCharArray();

                int firstHexColumn =
                      8                   // 8 characters for the address
                    + 3;                  // 3 spaces

                int firstCharColumn = firstHexColumn
                    + bytesPerLine * 3       // - 2 digit for the hexadecimal value and 1 space
                    + (bytesPerLine - 1) / 8 // - 1 extra space every 8 characters from the 9th
                    + 2;                  // 2 spaces 

                int lineLength = firstCharColumn
                    + bytesPerLine           // - characters to show the ascii value
                    + Environment.NewLine.Length; // Carriage return and line feed (should normally be 2)

                char[] line = (new String(' ', lineLength - 2) + Environment.NewLine).ToCharArray();
                int expectedLines = (bytesLength + bytesPerLine - 1) / bytesPerLine;
                StringBuilder result = new StringBuilder(expectedLines * lineLength);

                for (int i = 0; i < bytesLength; i += bytesPerLine)
                {
                    line[0] = HexChars[(i >> 28) & 0xF];
                    line[1] = HexChars[(i >> 24) & 0xF];
                    line[2] = HexChars[(i >> 20) & 0xF];
                    line[3] = HexChars[(i >> 16) & 0xF];
                    line[4] = HexChars[(i >> 12) & 0xF];
                    line[5] = HexChars[(i >> 8) & 0xF];
                    line[6] = HexChars[(i >> 4) & 0xF];
                    line[7] = HexChars[(i >> 0) & 0xF];

                    int hexColumn = firstHexColumn;
                    int charColumn = firstCharColumn;

                    for (int j = 0; j < bytesPerLine; j++)
                    {
                        if (j > 0 && (j & 7) == 0) hexColumn++;
                        if (i + j >= bytesLength)
                        {
                            line[hexColumn] = ' ';
                            line[hexColumn + 1] = ' ';
                            line[charColumn] = ' ';
                        }
                        else
                        {
                            byte b = bytes[i + j];
                            line[hexColumn] = HexChars[(b >> 4) & 0xF];
                            line[hexColumn + 1] = HexChars[b & 0xF];
                            line[charColumn] = (b < 32 ? '·' : (char)b);
                        }
                        hexColumn += 3;
                        charColumn++;
                    }
                    result.Append(line);
                }
                string fff = result.ToString();
                //file_log.WriteLine(fff);

                Console.WriteLine(fff);
            }
        }
    }
}
