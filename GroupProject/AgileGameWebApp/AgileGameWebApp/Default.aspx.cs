using AgileGameWebApp.models;
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
        MySql.Data.MySqlClient.MySqlCommand cmd;
        UserClass user = new UserClass();
        String querystring = "";
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["userID"] != null)
            {
                conn = connectionString();
                conn.Open();
                querystring = String.Format("SELECT userID, uName,fName,lName,email,age,city,state,zip,bio, curAvatar FROM user WHERE user.userID = " + Session["userID"] + ";");

                cmd = new MySql.Data.MySqlClient.MySqlCommand(querystring, conn);

                MySql.Data.MySqlClient.MySqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    user.userID = reader["userID"] == DBNull.Value ? 0 : (int)reader["userID"];
                    user.uName = reader["uName"] == DBNull.Value ? "" : (String)reader["uName"];
                    user.fName = reader["fName"] == DBNull.Value ? "" : (String)reader["fName"];
                    user.lName = reader["lName"] == DBNull.Value ? "" : (String)reader["lName"];
                    user.age = reader["age"] == DBNull.Value ? 0 : (int)reader["age"];
                    user.city = reader["city"] == DBNull.Value ? "" : (String)reader["city"];
                    user.state = reader["state"] == DBNull.Value ? "" : (String)reader["state"];
                    user.zip = reader["zip"] == DBNull.Value ? 0 : (int)reader["zip"];
                    user.email = reader["email"] == DBNull.Value ? "" : (String)reader["email"];
                    user.bio = reader["bio"] == DBNull.Value ? "" : (String)reader["bio"];
                    user.currentPic = reader["curAvatar"] == DBNull.Value ? "images/Avatar1.jpg" : (string)reader["curAvatar"];

                }
                userID.Text = user.userID.ToString();
                Username.Text = user.uName;
                FirstName.Text = user.fName;
                LastName.Text += user.lName;
                contactd.Text = user.email;
                lblCity.Text = user.city;
                biod.Text = user.bio;
                avatar.Src = user.currentPic;
                lblState.Text = user.state;
                lblZip.Text = user.zip.ToString();
                lblAge.Text = user.age.ToString();



            } else
            {
                Response.Redirect("AddUsers.aspx");
            }
            

        }

        private MySql.Data.MySqlClient.MySqlConnection connectionString()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

            return new MySql.Data.MySqlClient.MySqlConnection(connString);

        }
    }
}