using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgileGameWebApp
{
    public partial class Profile : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        //MySql.Data.MySqlClient.MySqlCommand cmd;
        UserClass user = new UserClass();
        String querystring = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = connectionString();
            conn.Open();
            querystring = String.Format("SELECT userID uName,fName,lName,email,age,city,state,zip,bio FROM user WHERE user.userID = '{0}'", 2);
            MySql.Data.MySqlClient.MySqlCommand cmd = new MySql.Data.MySqlClient.MySqlCommand(querystring, conn);
            MySql.Data.MySqlClient.MySqlDataReader dataReader = cmd.ExecuteReader();
            if (dataReader.Read())
            {
                Label1.Text = dataReader[0].ToString();
                Label1.Text = dataReader[1].ToString();
                Label1.Text = dataReader[2].ToString();
                Label1.Text = dataReader[3].ToString();
                Label1.Text = dataReader[4].ToString();
                Label1.Text = dataReader[5].ToString();
                Label1.Text = dataReader[6].ToString();
                Label1.Text = dataReader[7].ToString();
                Label1.Text = dataReader[8].ToString();
                
            }
            
        }

        private MySql.Data.MySqlClient.MySqlConnection connectionString()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

            return new MySql.Data.MySqlClient.MySqlConnection(connString);

        }
    }
}