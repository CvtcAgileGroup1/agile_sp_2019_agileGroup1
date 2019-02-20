using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgileGameWebApp
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String queryStr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void click_addEvent(object sender, EventArgs e)
        {
            addEvent();
        }

        private void addEvent()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();

            queryStr = "INSERT INTO gamebook.event (eName, description, location, dateStart, public)" + "VALUES('" + txtTitle.Text + "','" + txtDesc.Text + "','" + txtLocation.Text
                + "','" + txtEventDate.Text + "','" + rdoPrivacy.SelectedIndex + "');";

            lblTest.Text = queryStr;

            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd.ExecuteReader();
            conn.Close();
        }

    }
}