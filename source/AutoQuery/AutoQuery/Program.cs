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
using System.Threading.Tasks;
using System.IO;

namespace AutoQuery
{
    class Program
    {
        public static Systems.Ini ini = null;
        #region Timer
        public static int s_timer = 10;
        public static int max_count = 100;
        public static int delay = 10000;
        public static bool infi = false;
        public static bool debug = false;
        public static string _dir = "";
        public static string _file_config = @"\Settings\Settings.ini";
        #endregion
        #region MYSQL
        public static MySqlBase _SQL = new MySqlBase();
        static string _db_user = "root";
        static string _db_pass = "123456";
        static string _db_ipsv = "127.0.0.1";
        static string _db_name = "rakion";
        static int _db_port = 3306;
        #endregion
        static void Main(string[] args)
        {
            #region Load Settings
            _dir = Environment.CurrentDirectory;
            LogConsole._Load();

            try
            {
                if (File.Exists(_dir + _file_config))
                {
                    ini = new Systems.Ini(_dir + _file_config);

                    s_timer = ini.GetValue("Timer", "minutes", 10);
                    max_count = ini.GetValue("Timer", "max", 100);
                    delay = ini.GetValue("Timer", "delay", 10000);
                    infi = ini.GetValue("Timer", "infi", false);

                    _db_user = ini.GetValue("MYSQL", "user", "root");
                    _db_pass = ini.GetValue("MYSQL", "pass", "123456");
                    _db_ipsv = ini.GetValue("MYSQL", "ipsv", "127.0.0.1");
                    _db_name = ini.GetValue("MYSQL", "data", "rakion");
                    _db_port = ini.GetValue("MYSQL", "port", 3306);

                    debug = ini.GetValue("CONSOLE", "debug", false);
                    ini = null;
                    LogConsole.Show("Has loaded your settings successfully");
                }
                else
                {
                    LogConsole.Show("Settings.ini could not be found, using default setting");
                }
            }
            catch (Exception)
            {
                return;
            }
            #endregion

            _SQL.Init(_db_ipsv, _db_user, _db_pass, _db_name, _db_port);
            TimerX _t = new TimerX(s_timer, max_count, infi, delay);
        }
        public static void CommandsExec()
        {
            Program._SQL.CommandSQL("DeletePending");
        }
    }
}
