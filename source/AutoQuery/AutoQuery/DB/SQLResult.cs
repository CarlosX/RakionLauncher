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
using System.Data;

namespace AutoQuery
{
    public class SQLResult : DataTable
    {
        public int Count { get; set; }

        public T Read<T>(int row, string columnName, int number = 0)
        {
            return (T)Convert.ChangeType(Rows[row][columnName + (number != 0 ? (1 + number).ToString() : "")], typeof(T));
        }

        public object[] ReadAllValuesFromField(string columnName)
        {
            object[] obj = new object[Count];

            for (int i = 0; i < Count; i++)
                obj[i] = Rows[i][columnName];

            return obj;
        }
    }
}
