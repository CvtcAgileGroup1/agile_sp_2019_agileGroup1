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
            //txtDateStart.Text = DateTime.Now.Date.ToString("yyyy-MM-dd");
            //Calendar1.SelectedDate = DateTime.Now.Date;
            //txtDateEnd.Text = DateTime.Now.Date.AddDays(1).ToString("yyyy-MM-dd");
            //Calendar1.SelectedDate = DateTime.Now.Date.AddDays(1);
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            rvDateStart.MinimumValue = DateTime.Now.Date.ToString("yyyy-MM-dd");
            rvDateStart.MaximumValue = DateTime.Now.Date.AddYears(5).ToString("yyyy-MM-dd");

            rvDateEnd.MinimumValue = DateTime.Now.Date.ToString("yyyy-MM-dd");
            rvDateEnd.MaximumValue = DateTime.Now.Date.AddYears(5).ToString("yyyy-MM-dd");
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
            DateTime eventStart = DateTime.Parse(txtDateStart.Text);
            DateTime eventEnd = DateTime.Parse(txtDateEnd.Text);
            if (eventEnd >= eventStart) {
                //String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

                //conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                //conn.Open();

                queryStr = "INSERT INTO gamebook.event (eName, description, location, dateStart, dateEnd, public)" + "VALUES('" + txtEName.Text + "','" + txtDescription.Text + "','" + txtLocation.Text
                    + "','" + txtDateStart.Text + "','" + txtDateEnd.Text + "','" + rdoPrivacy.SelectedIndex + "');";

                lblTest.Text = queryStr;

                //cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                //cmd.ExecuteReader();
                //conn.Close();
                
            } else
            {
                lblTest.Text = "Begin date must be before end date";
            }


        }

        protected void btnDateStart_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void btnDateEnd_Click(object sender, EventArgs e)
        {
            Calendar2.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDateStart.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd") ;
            Calendar1.Visible = false;
        }


        protected void Calendar2_SelectionChanged1(object sender, EventArgs e)
        {
            txtDateEnd.Text = Calendar2.SelectedDate.ToString("yyyy-MM-dd");
            Calendar2.Visible = false;
        }
    }
}