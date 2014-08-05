using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using Microsoft.Win32;

namespace FixLaunch
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            _dir = Environment.CurrentDirectory;
            textBox1.Text = _dir;
        }
        string _dir = "";
        string _dir2 = "";
        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox2.Text != "")
            {
                foreach (char dt in _dir)
                {
                    if (dt == '\\')
                        _dir2 += "\\\\";
                    else
                        _dir2 += dt;
                }
                RegistryKey localr = Registry.LocalMachine.CreateSubKey(@"SOFTWARE\\Wow6432Node\\Softnyx\\Rakion");

                if (localr != null)
                {
                    try
                    {
                        localr.SetValue("Location", _dir2);
                        localr.SetValue("Version", int.Parse(textBox2.Text));

                    }
                    catch (Exception ep)
                    {
                        MessageBox.Show(ep.Message, "FixLaunch", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                localr.Close();

                MessageBox.Show("Complete!", "FixLaunch", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
    }
}
