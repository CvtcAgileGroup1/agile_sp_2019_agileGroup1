using AgileGameWebApp.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgileGameWebApp
{
    public partial class AddProfile : System.Web.UI.Page
    {

        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String queryStr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void click_addProfile(object sender, EventArgs e)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();

            queryStr = "INSERT INTO gamebook.user (uName, pWord, email, city, curAvatar, bio)" + "VALUES('" + txtPName.Text + "','password','" + txtPEmail.Text
                + "','" + txtPLocation.Text + "','" + dropAvatar.SelectedValue + "','" + txtPBio.Text + "');";

            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd.ExecuteReader();
            conn.Close();
        }

        protected void btnSignin_Click(object sender, EventArgs e)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();
            int userID = 0;

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();

            queryStr = "SELECT userID FROM user WHERE uName = '" + txtUserName.Text + "' AND pWord = '" + txtPassword.Text + "';";

            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            MySql.Data.MySqlClient.MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
               userID = reader["userID"] == DBNull.Value ? 0 : (int)reader["userID"];
            }

            if(userID != 0)
            {
                Session.Add("userID", userID);
                Response.Redirect("Default.aspx");
            } else
            {
                lblProfileNotFound.Text = "Either the user name or password is incorrect";
            }
                

        }
    }
}