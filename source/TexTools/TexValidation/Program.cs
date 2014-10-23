using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;


namespace TexValidation
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Title = "Tex Tools Alpha";

            if (args.Length <= 0)
                return;

            string file = args[0];
            byte[] data = ReadAllBytes(file);
            PacketReader read = new PacketReader(data);

            try
            {
                string version_chunk = read.ReadASCII(4);
                int version = read.ReadInt32();
                string data_chunk = read.ReadASCII(4);

                uint enc_bits = read.ReadUint32();
                uint enc_width = read.ReadUint32();
                uint enc_height = read.ReadUint32();
                uint enc_mipmap = read.ReadUint32();
                uint enc_shift = read.ReadUint32();
                uint enc_uknown = read.ReadUint32();// all 1
                string format_chunk = read.ReadASCII(4);
                int anim_offset = read.ReadInt32();


                Console.WriteLine("version_chunk: {0}", version_chunk);
                Console.WriteLine("version: {0}", version);
                Console.WriteLine("data_chunk: {0}", data_chunk);
                Console.WriteLine("enc_bits: {0}", enc_bits);
                Console.WriteLine("enc_width: {0}", enc_width);
                Console.WriteLine("enc_height: {0}", enc_height);
                Console.WriteLine("enc_mipmap: {0}", enc_mipmap);
                Console.WriteLine("enc_shift: {0}", enc_shift);
                Console.WriteLine("enc_uknown: {0}", enc_uknown);
                Console.WriteLine("format_chunk: {0}", format_chunk);
                Console.WriteLine("anim_offset: {0}", anim_offset);

                if (format_chunk == "FRMC")
                {
                    for (int i = 0; i < enc_mipmap; i++)
                    {
                        int size = read.ReadInt32();
                        Console.WriteLine("size: {0}", size);
                        byte[] texture_data = read.ReadBytes(size);
                        //int size    : texture data size in bytes
                        //unsigned char data[size]: texture data (it's DTX1 or DTX3 data)
                    }
                    /* For "FRMC" format it's:
                    if enc_bits is 4 or 13 then texture data is compressed with DTX1 (24 bits / no alpha)
                    for another values its compressed with DTX3 (32 bits / with alpha)*/

                    if (enc_bits == 4 || enc_bits == 13)
                    {
                        Console.WriteLine("texture compressed: DTX1(24 bits / no alpha)");
                    }
                    else
                    {
                        Console.WriteLine("texture compressed: DTX3(32 bits / with alpha)");
                    }
                }
                else
                {
                    /*For "FRMS":
                    if enc_bits is 0 or 2 then texture data is RGB otherwise its RGBA.*/
                    if (enc_bits == 0 || enc_bits == 2)
                    {
                        Console.WriteLine("texture: RGB otherwise its RGBA");
                    }

                }
                int rest = read.Buffer.Length - read.Position;
                Console.WriteLine("Resta: {0} offset: {1}", rest, read.Position);
                byte[] rs = read.ReadBytes(rest);
                HexDump(rs);

                Console.WriteLine("Tex File Work!");
            }
            catch (Exception ex)
            {
                Console.WriteLine("No Work!");
            }

            Console.ReadKey();
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
