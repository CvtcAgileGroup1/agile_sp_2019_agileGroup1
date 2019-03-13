using AgileGameWebApp.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgileGameWebApp
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String queryStr;
        List<Event> events = new List<Event>();
        protected void Page_Load(object sender, EventArgs e)
        {

            conn = connectionString();
            conn.Open();

            queryStr = "SELECT eventID, eName, location, startDate FROM event";

            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            MySql.Data.MySqlClient.MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Event newEvent = new Event();

                newEvent.eventID = (int)reader["eventID"];
                newEvent.eName = (String)reader["eName"];
                newEvent.location = reader["location"] == DBNull.Value ? "" : (String)reader["location"];
                newEvent.startDate = reader["startDate"] == DBNull.Value ? "" : reader["startDate"].ToString();

                events.Add(newEvent);
            }
            conn.Close();

            //if (Request.QueryString["sort"] != null)
            //{
            //    switch (Request.QueryString["sort"])
            //    {
            //        case "Name":
            //            games = games.OrderBy(o => o.gameName).ToList();
            //            break;
            //        case "Type":
            //            games = games.OrderBy(o => o.gameType).ToList();
            //            break;
            //        case "Rating":
            //            games = games.OrderByDescending(o => o.gameRating).ToList();
            //            break;
            //    }
            //}





            for (int i = 0; i < events.Count; i++)
            {
                MyPlaceholder.Controls.Add(new Literal { Text = "<a href='SingleEvent.aspx?eventID=" + events[i].eventID + "'><li class='gamesList'><p>" + events[i].eName + "</p><p>" + events[i].location + "</p><p>" + events[i].startDate + "</p></li><a>" });
            }

        }

        private MySql.Data.MySqlClient.MySqlConnection connectionString()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

            return new MySql.Data.MySqlClient.MySqlConnection(connString);

        }
    }
}