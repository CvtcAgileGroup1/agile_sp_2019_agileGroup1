using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgileGameWebApp
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String queryStr;
        protected void click_addUser(object sender, EventArgs e)
        {
            addUser();
        }
        private void addUser()
        {
            int userID = 0;
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();

            queryStr = String.Format("INSERT INTO gamebook.user (uName, fName, lName, pWord, email, age, city, state, zip, bio) VALUES ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}');", txtUsername.Text, txtFName.Text, txtLName.Text, txtPassword.Text, txtEmail.Text, txtAge.Text, txtCity.Text, txtState.Text, txtZip.Text, txtBio.Text);
            Console.WriteLine(queryStr);

            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd.ExecuteReader();
            cmd.Dispose();
            queryStr = "SELECT userID FROM user WHERE uName = '" + txtUsername.Text + "' AND pWord = '" + txtPassword.Text + "';";

            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            MySql.Data.MySqlClient.MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                userID = reader["userID"] == DBNull.Value ? 0 : (int)reader["userID"];
            }

            Session.Add("userID", userID);

            conn.Close();

            Response.Redirect("Default.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}