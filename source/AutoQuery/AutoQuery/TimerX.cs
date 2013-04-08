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
using System.Threading;
using System.Threading.Tasks;

namespace AutoQuery
{
    class TimerX
    {
        private class TimeObject
        {
            public int count;
            public Timer timer;
            public bool enable;
        }
        double max_count = 0;
        bool infi = false;
        double minutes = 0;
        int delay = 0;
        public TimerX(double minutes, double max_ct, bool _inf, int _del)
        {
            this.max_count = max_ct;
            this.infi = _inf;
            this.minutes = minutes;
            this.delay = _del;
            RunTimer();
        }

        public void RunTimer()
        {
            TimeObject TimeObj = new TimeObject();
            TimeObj.enable = true;
            TimeObj.count = 1;

            TimerCallback TimerDelegate = new TimerCallback(TimerTask);

            Timer TimerItem = new Timer(TimerDelegate, TimeObj, 2000, delay);

            TimeObj.timer = TimerItem;
            TimeSpan span1 = TimeSpan.FromMinutes(this.minutes);

            if (!infi)
            {
                while (TimeObj.count < max_count)
                {
                    Thread.Sleep(span1);
                }
            }
            else
            {
                while (true)
                {
                    Thread.Sleep(span1);
                }
            }

            TimeObj.enable = false;
        }

        private void TimerTask(object StateObj)
        {
            TimeObject State = (TimeObject)StateObj;
            Interlocked.Increment(ref State.count);

            //exec
            Program.CommandsExec();

            if (!State.enable)
            {
                State.timer.Dispose();
                //Console.WriteLine("Done  " + DateTime.Now.ToString());
            }
        }
    }
}
