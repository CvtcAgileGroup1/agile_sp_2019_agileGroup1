using AgileGameWebApp.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgileGameWebApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String queryStr;
        int gameID;
        int userID;

        protected void Page_Load(object sender, EventArgs e)
        {
            Game game = new Game();

            if (Request.QueryString["gameID"] != null)
            {
                gameID = Convert.ToInt32(Request.QueryString["gameID"]);
            }
            else
            {
                //Use game 1 for testing
                gameID = 1;
            }

            conn = connectionString();
            conn.Open();

            queryStr = "SELECT * FROM gamebook.game WHERE gameID = " + gameID + ";";

            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            MySql.Data.MySqlClient.MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                
                game.gameID = (int)reader["gameID"];
                game.gameName = (String)reader["gName"];
                game.gameDesc = reader["description"] == DBNull.Value ? "" : (String)reader["description"];
                game.gameType = reader["type"] == DBNull.Value ? "" : (String)reader["type"];
                game.gameRating = reader["aveRating"] == DBNull.Value ? 0.0 : Convert.ToDouble(reader["aveRating"]);
            }

            conn.Close();

            gameInfo.Controls.Add(new Literal { Text = "<p>" + game.gameName + "</p><p>" + game.gameType + "</p><p>" + game.gameDesc + "</p><p>" + game.gameRating + "</p>" });

        }


        protected void addToGames_Click(object sender, EventArgs e)
        {
            //For testing
            Session.Add("userID", 1);

            if(Session["userID"] != null)
            {
                userID = Convert.ToInt32(Session["userID"]);
            }

            conn = connectionString();
            conn.Open();

            queryStr = "SELECT * FROM gamebook.usergame WHERE userID = 1 and gameID = 1";

            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            MySql.Data.MySqlClient.MySqlDataReader reader = cmd.ExecuteReader();
            if (!reader.HasRows)
            {
                reader.Close();
                queryStr = "INSERT INTO gamebook.usergame (userID, gameID) VALUES (" + userID + ", " + gameID + ");";
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                cmd.ExecuteReader();
            }
            else
            {
                alreadyAdded.Controls.Add(new Literal { Text = "<p>This game is already in your library.</p>" });

            }

            conn.Close();

        }

        private MySql.Data.MySqlClient.MySqlConnection connectionString()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

            return new MySql.Data.MySqlClient.MySqlConnection(connString);

        }
    }
}