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
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();

            queryStr = String.Format("INSERT INTO gamebook.user (uName, fName, lName, pWord, email, age, city, state, zip) VALUES ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}');", txtUsername.Text, txtFName.Text, txtLName.Text, txtPassword.Text, txtEmail.Text, txtAge.Text, txtCity.Text, txtState.Text, txtZip.Text);
            Console.WriteLine(queryStr);

            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd.ExecuteReader();
            conn.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}