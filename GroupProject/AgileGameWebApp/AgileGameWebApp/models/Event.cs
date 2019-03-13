using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AgileGameWebApp.models
{
    public class Event
    {
        public int eventID { get; set; }
        public string eName { get; set; }
        public string desc { get; set; }
        public string location { get; set; }
        public int privacy { get; set; }
        public string startTime { get; set; }
        public string endTime { get; set; }
        public string startDate { get; set; }
        public string endDate { get; set; }
        public int numPeople { get; set; }


        public Event()
        {

        }
    }
}