using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgileGameWebApp
{
    public partial class AddGame : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String queryStr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            AddNewGame();
        }

        private void AddNewGame()
        {

            string gameName = "";
            string gameType = "";
            string gameDesc = "";

            gameName = txtGameName.Text;
            gameType = txtGameType.Text;
            gameDesc = txtDescription.Text;

            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();

       

            queryStr = "INSERT INTO gamebook.game (gName, type, description)" + "VALUES('" + gameName + "','" + gameType + "','" + gameDesc + "');";

            lblTest.Text = "Submitted";

            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd.ExecuteReader();
            cmd.Dispose();
            conn.Close();
            btnSubmit.Visible = false;
            Response.Redirect("BrowseGames.aspx");

        }
    }
}