using AgileGameWebApp.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgileGameWebApp
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String queryStr;
        List<Game> games = new List<Game>();

        protected void Page_Load(object sender, EventArgs e)
        {

            conn = connectionString();
            conn.Open();

            queryStr = "SELECT gameID, gName, type, aveRating FROM game";

            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            MySql.Data.MySqlClient.MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Game newGame = new Game();

                newGame.gameID = (int)reader["gameID"];
                newGame.gameName = (String)reader["gName"];
                newGame.gameType = reader["type"] == DBNull.Value ? "" : (String)reader["type"];
                newGame.gameRating = reader["aveRating"] == DBNull.Value ? 0.0 : Convert.ToDouble(reader["aveRating"]);

                games.Add(newGame);
            }
            conn.Close();

            if (Request.QueryString["sort"] != null)
            {
                switch (Request.QueryString["sort"])
                {
                    case "Name":
                        games = games.OrderBy(o => o.gameName).ToList();
                        break;
                    case "Type":
                        games = games.OrderBy(o => o.gameType).ToList();
                        break;
                    case "Rating":
                        games = games.OrderByDescending(o => o.gameRating).ToList();
                        break;
                }
            }

            

           

            for (int i = 0; i < games.Count; i++)
            {
                MyPlaceholder.Controls.Add(new Literal { Text="<a href='GameExample.aspx?gameID=" + games[i].gameID + "'><li class='gamesList'><p>" + games[i].gameName + "</p><p>" + games[i].gameType + "</p><p>" + games[i].gameRating  + "</p></li><a>" });
            }

            

        }


        private MySql.Data.MySqlClient.MySqlConnection connectionString()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

            return new MySql.Data.MySqlClient.MySqlConnection(connString);

        }
    }
}