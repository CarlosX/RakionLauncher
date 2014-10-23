using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace TexFix
{
    public class PacketReader
    {
        private byte[] data;
        private int position = 0;
        public PacketReader(byte[] data_)
        {
            data = data_;
        }

        public byte[] Buffer
        {
            get { return this.data; }
        }

        public short ReadInt16()
        {
            short us = BitConverter.ToInt16(data, position);
            position += 2;
            return us;
        }

        public int ReadInt32()
        {
            int ui = BitConverter.ToInt32(data, position);
            position += 4;
            return ui;
        }

        public ushort ReadUint16()
        {
            ushort us = BitConverter.ToUInt16(data, position);
            position += 2;
            return us;
        }

        public uint ReadUint32()
        {
            uint ui = BitConverter.ToUInt32(data, position);
            position += 4;
            return ui;
        }

        public ulong ReadUint64()
        {
            ulong ul = BitConverter.ToUInt32(data, position);
            position += 8;
            return ul;
        }

        public byte ReadByte()
        {
            byte b = Convert.ToByte(data[position]);
            position += 1;
            return b;
        }
        
        public byte[] ReadBytes(int len)
        {
            MemoryStream ms = new MemoryStream();
            for (int x = 0; x < len; x++)
            {
                ms.WriteByte(data[position]);
                position += 1;
            }

            return ms.ToArray();
        }

        public float ReadFloat()
        {
            float f = BitConverter.ToSingle(data, position);
            position += 4;
            return f;
        }

        public string ReadCode()
        {
            MemoryStream ms = new MemoryStream();

            for (int x = 0; x < (data.Length-position); x++)
            {
                byte tp = data[position];
                if (tp != 0x00)
                {
                    ms.WriteByte(tp);
                    position += 1;
                }
                else
                {
                    position += 1;
                    break;
                }
            }
            string str = Encoding.ASCII.GetString(ms.ToArray(), 0, ms.ToArray().Length);
            return str;
        }

        public void ReturnPost(int i)
        {
            position -= i;
        }
        public string ReadLua()
        {
            MemoryStream ms = new MemoryStream();

            for (int x = 1; x <6; x++)
            {

                switch (x)
                {
                    case 1:
                        byte tp1 = data[position - 5];
                        ms.WriteByte(tp1);
                        break;
                    case 2:
                        byte tp2 = data[position - 4];
                        ms.WriteByte(tp2);
                        break;
                    case 3:
                        byte tp3 = data[position - 3];
                        ms.WriteByte(tp3);
                        break;
                    case 4:
                        byte tp4 = data[position - 2];
                        ms.WriteByte(tp4);
                        break;
                }
            }
            string str = Encoding.ASCII.GetString(ms.ToArray(), 0, ms.ToArray().Length);
            return str;
        }

        public string ReadASCII(int length)
        {
            string str = Encoding.ASCII.GetString(data, position, length);
            position += length;
            return str;
        }

        public string ReadUnicode(int length)
        {
            string str = Encoding.Unicode.GetString(data, position, length);
            position += (length * 2);
            return str;
        }

        public void SkipBytes(int count)
        {
            position += count;
        }

        public bool good()
        {
            bool temp = false;

            if(position <= data.Length)
                temp = true;

            return temp;
        }
        public int Position
        {
            get { return position; }
            set { position = value; }
        }


        public enum StringEncoding { ASCII = 1, UNICODE = 2 }
    }
}
