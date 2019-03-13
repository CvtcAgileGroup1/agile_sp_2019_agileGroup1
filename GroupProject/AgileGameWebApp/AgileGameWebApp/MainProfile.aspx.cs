using AgileGameWebApp.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgileGameWebApp
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        //MySql.Data.MySqlClient.MySqlCommand cmd;
        String querystring = "";
        private string user = "";
        MySql.Data.MySqlClient.MySqlCommand ret;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {


            List<Game> games = new List<Game>();
            user = Request.QueryString["user"];
            if (user != null)
            {
                conn = connectionString();

                conn.Open();
                querystring = String.Format("SELECT uName,fName,bio FROM user WHERE user.userID = '{0}';", user.ToString());
                cmd = new MySql.Data.MySqlClient.MySqlCommand(querystring, conn);
                MySql.Data.MySqlClient.MySqlDataReader dataReader = cmd.ExecuteReader();


                while (dataReader.Read())
                {
                    Username1.Text = dataReader[0].ToString();
                    FirstName.Text = dataReader[1].ToString();
                    
                    Bio.Text = dataReader[2].ToString();

                }

                dataReader.Close();
                conn.Close();
            }
            else
            {
                Label1.Text = "Unknown User";
            }


            user = Request.QueryString["user"];
            if (user != null)
            {
                conn = connectionString();
                conn.Open();
                string retrieveGamesQueryString = String.Format("SELECT gname FROM game, usergame WHERE usergame.gameID = game.gameID and usergame.userID = {0};", user);

                ret = new MySql.Data.MySqlClient.MySqlCommand(retrieveGamesQueryString, conn);
                MySql.Data.MySqlClient.MySqlDataReader gameReader = ret.ExecuteReader();

                while (gameReader.Read())
                {
                    Game game = new Game();
                    game.gameName = (String)gameReader["gname"];
                    games.Add(game);

                }
                gameReader.Close();
                conn.Close();

                for (int i = 0; i < games.Count; i++)
                {
                    MyPlaceholder.Controls.Add(new Literal { Text = "<li class='gamesList'><p>" + games[i].gameName + "</p>" });
                }
            }

        }

        private MySql.Data.MySqlClient.MySqlConnection connectionString()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

            return new MySql.Data.MySqlClient.MySqlConnection(connString);

        }
    }
}