using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AgileGameWebApp.models
{
    public class UserClass
    {
        public int userID { get; set; }
        public string uName { get; set; }
        public string fName { get; set; }
        public string lName { get; set; }
        public int age { get; set; }
        public string city { get; set; }
        public string state { get; set; }
        public string email { get; set; }
        public string bio { get; set; }
        public int zip { get; set; }
        public string currentPic { get; set; }
        public UserClass()
        {
            userID = 0;
            uName = "";
            fName = "";
            lName = "";
            age = 0;
            city = "";
            state = "";
            zip = 0;
        }
        public UserClass(int USERID, string UNAME, string FNAME, string LNAME, int AGE, string CITY, string STATE, int ZIP)
        {
            USERID = userID;
            UNAME = uName;
            FNAME = fName;
            LNAME = lName;
            AGE = age;
            CITY = city;
            STATE = state;
            ZIP = zip;
        }
    }
}