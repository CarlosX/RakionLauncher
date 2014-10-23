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
            Console.Title = "Tex Tools Alpha";

           

            byte[] data = ReadAllBytes("imgtest.tex");
            PacketReader read = new PacketReader(data);

            string version_chunk = read.ReadASCII(4);
            int version = read.ReadInt32();
            string data_chunk = read.ReadASCII(4);

            uint enc_shift = read.ReadUint32();
            uint enc_width = read.ReadUint32();
            uint enc_height = read.ReadUint32();
            uint enc_mipmap = read.ReadUint32();
            uint enc_bits = read.ReadUint32();
            uint enc_uknown = read.ReadUint32();// all 1
            string format_chunk = read.ReadASCII(4);
            int anim_offset = read.ReadInt32();


            Console.WriteLine("version_chunk: {0}", version_chunk);
            Console.WriteLine("version: {0}", version);
            Console.WriteLine("data_chunk: {0}", data_chunk);
            Console.WriteLine("enc_shift: 0x{0:x}", enc_shift);
            Console.WriteLine("enc_width: {0}", enc_width);
            Console.WriteLine("enc_height: {0}", enc_height);
            Console.WriteLine("enc_mipmap: {0}", enc_mipmap);
            Console.WriteLine("enc_bits: {0}", enc_bits);
            Console.WriteLine("enc_uknown: {0}", enc_uknown);
            Console.WriteLine("format_chunk: {0}", format_chunk);
            Console.WriteLine("anim_offset: 0x{0:x}", anim_offset);

            if (format_chunk == "FRMC")
            {
                for(int i=0; i < enc_mipmap; i++)
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
    }
}
