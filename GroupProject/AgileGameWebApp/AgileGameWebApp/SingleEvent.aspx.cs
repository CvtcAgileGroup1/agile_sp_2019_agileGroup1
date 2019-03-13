using AgileGameWebApp.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgileGameWebApp
{
    public partial class WebForm8 : System.Web.UI.Page
    {

        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String queryStr;
        int eventID;
        int userID;

        protected void Page_Load(object sender, EventArgs e)
        {
            Event newEvent = new Event();

            if (Request.QueryString["eventID"] != null)
            {
                eventID = Convert.ToInt32(Request.QueryString["eventID"]);
            }
            else
            {
                //Use game 1 for testing
                eventID = 1;
            }

            conn = connectionString();
            conn.Open();

            queryStr = "SELECT * FROM gamebook.event WHERE eventID = " + eventID + ";";

            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            MySql.Data.MySqlClient.MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {

                newEvent.eventID = (int)reader["eventID"];
                newEvent.eName = (String)reader["eName"];
                newEvent.desc = reader["description"] == DBNull.Value ? "" : (String)reader["description"];
                newEvent.location = reader["location"] == DBNull.Value ? "" : (String)reader["location"];
                newEvent.privacy = reader["public"] == DBNull.Value ? 0 : (int)(reader["public"]);
                newEvent.startTime = reader["startTime"] == DBNull.Value ? "" : reader["startTime"].ToString();
                newEvent.endTime = reader["endTime"] == DBNull.Value ? "" : reader["endTime"].ToString();
                newEvent.startDate = reader["startDate"] == DBNull.Value ? "" : reader["startDate"].ToString();
                newEvent.endDate = reader["endDate"] == DBNull.Value ? "" : reader["endDate"].ToString();
                newEvent.numPeople = reader["numPeople"] == DBNull.Value ? 0 : (int)reader["numPeople"];
            }

            conn.Close();

            eventInfo.Controls.Add(new Literal { Text = "<p>" + 
                newEvent.eName + "</p><p>" + newEvent.desc + "</p><p>" + 
                newEvent.location + "</p><p>Privacy: " + 
                intToPrivatePublic(newEvent.privacy) + "</p><p>Start Time: " + 
                newEvent.startTime + "</p><p>End Time: " + 
                newEvent.endTime + "</p><p>Start Date: " + 
                newEvent.startDate + "</p><p>End Date: " + 
                newEvent.endDate + "</p><p>Capacity: " + 
                newEvent.numPeople + "</p>" });

        }

        protected void addToEvents_Click(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                userID = Convert.ToInt32(Session["userID"]);
            } else
            {
                //For Testing
                userID = 1;
            }

            conn = connectionString();
            conn.Open();

            queryStr = "SELECT * FROM gamebook.userevent WHERE eventID = " + eventID + " AND userID = " + userID + ";";

            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            MySql.Data.MySqlClient.MySqlDataReader reader = cmd.ExecuteReader();
            if (!reader.HasRows)
            {
                reader.Close();
                queryStr = "INSERT INTO gamebook.userevent (eventID, userID) VALUES (" + eventID + ", " + userID + ");";
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                cmd.ExecuteReader();
                response.Controls.Add(new Literal { Text = "<p>This event has been added.</p>" });
            }
            else
            {
                response.Controls.Add(new Literal { Text = "<p>This event is already in your library.</p>" });

            }

            conn.Close();
        }

        private MySql.Data.MySqlClient.MySqlConnection connectionString()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

            return new MySql.Data.MySqlClient.MySqlConnection(connString);

        }

        private string intToPrivatePublic(int intToConvert)
        {

            if(intToConvert == 0)
            {
                return "Private";
            } else if (intToConvert == 1)
            {
                return "Public";
            } else
            {
                return null;
            }

        }
    }
}