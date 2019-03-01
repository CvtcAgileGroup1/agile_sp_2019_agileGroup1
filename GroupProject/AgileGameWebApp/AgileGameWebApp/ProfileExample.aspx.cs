using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgileGameWebApp
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e) 
        {

        }

        private void click_addEvent(object sender, EventArgs e) 
        {
            addEvent()
        }

        private void addEvent() 
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebappConnString"].toString();

            conn = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            conn.Open();

            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd.ExecuteReader();
            conn.Close();

        }





    }
}