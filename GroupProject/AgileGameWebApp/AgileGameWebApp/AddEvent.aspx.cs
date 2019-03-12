using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgileGameWebApp
{
    public partial class AddEvent : System.Web.UI.Page
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
            rvDateEnd.MaximumValue = DateTime.Now.Date.AddYears(5).ToString("yyyy-MM-dd HH:MI:SS");
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

            string timeStart = "";
            int startCase = ddTimeStart.SelectedIndex;
            string timeEnd = "";
            int endCase = ddTimeEnd.SelectedIndex;
            int numPeople = 0;

            switch (startCase)
            {
                case 0:
                    timeStart = "00:00:01";
                    break;
                case 1:
                    timeStart = "01:00:01";
                    break;
                case 2:
                    timeStart = "02:00:01";
                    break;
                case 3:
                    timeStart = "03:00:01";
                    break;
                case 4:
                    timeStart = "04:00:01";
                    break;
                case 5:
                    timeStart = "05:00:01";
                    break;
                case 6:
                    timeStart = "06:00:01";
                    break;
                case 7:
                    timeStart = "07:00:01";
                    break;
                case 8:
                    timeStart = "08:00:01";
                    break;
                case 9:
                    timeStart = "09:00:01";
                    break;
                case 10:
                    timeStart = "10:00:01";
                    break;
                case 11:
                    timeStart = "11:00:01";
                    break;
                case 12:
                    timeStart = "12:00:01";
                    break;
                case 13:
                    timeStart = "13:00:01";
                    break;
                case 14:
                    timeStart = "14:00:01";
                    break;
                case 15:
                    timeStart = "15:00:01";
                    break;
                case 16:
                    timeStart = "16:00:01";
                    break;
                case 17:
                    timeStart = "17:00:01";
                    break;
                case 18:
                    timeStart = "18:00:01";
                    break;
                case 19:
                    timeStart = "19:00:01";
                    break;
                case 20:
                    timeStart = "20:00:01";
                    break;
                case 21:
                    timeStart = "21:00:01";
                    break;
                case 22:
                    timeStart = "22:00:01";
                    break;
                case 23:
                    timeStart = "23:00:01";
                    break;
            }

            switch (endCase)
            {
                case 0:
                    timeEnd = "00:00:01";
                    break;
                case 1:
                    timeEnd = "01:00:01";
                    break;
                case 2:
                    timeEnd = "02:00:01";
                    break;
                case 3:
                    timeEnd = "03:00:01";
                    break;
                case 4:
                    timeEnd = "04:00:01";
                    break;
                case 5:
                    timeEnd = "05:00:01";
                    break;
                case 6:
                    timeEnd = "06:00:01";
                    break;
                case 7:
                    timeEnd = "07:00:01";
                    break;
                case 8:
                    timeEnd = "08:00:01";
                    break;
                case 9:
                    timeEnd = "09:00:01";
                    break;
                case 10:
                    timeEnd = "10:00:01";
                    break;
                case 11:
                    timeEnd = "11:00:01";
                    break;
                case 12:
                    timeEnd = "12:00:01";
                    break;
                case 13:
                    timeEnd = "13:00:01";
                    break;
                case 14:
                    timeEnd = "14:00:01";
                    break;
                case 15:
                    timeEnd = "15:00:01";
                    break;
                case 16:
                    timeEnd = "16:00:01";
                    break;
                case 17:
                    timeEnd = "17:00:01";
                    break;
                case 18:
                    timeEnd = "18:00:01";
                    break;
                case 19:
                    timeEnd = "19:00:01";
                    break;
                case 20:
                    timeEnd = "20:00:01";
                    break;
                case 21:
                    timeEnd = "21:00:01";
                    break;
                case 22:
                    timeEnd = "22:00:01";
                    break;
                case 23:
                    timeEnd = "23:00:01";
                    break;
            }


            DateTime eventStart = DateTime.Parse(txtDateStart.Text + " " + timeStart);
            DateTime eventEnd = DateTime.Parse(txtDateEnd.Text + " " + timeEnd);


            bool peopleIsInt = int.TryParse(txtNumPeople.Text, out numPeople);

            if (eventEnd < eventStart)
            {

                lblEndDateInvalid.Visible = true;

            }
            else if (peopleIsInt == false)
            {
                lblNotAValidNumber.Visible = true;

            }
            else
            {
                String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();

                lblEndDateInvalid.Visible = false;
                lblNotAValidNumber.Visible = false;

                
                queryStr = "INSERT INTO gamebook.event (eName, description, location, startDate, endDate, startTime, endTime, numPeople, public)" + "VALUES('" + txtEName.Text + "','" + txtDescription.Text + "','" + txtLocation.Text
                    + "','" + txtDateStart.Text + "','" + txtDateEnd.Text + "','" + timeStart + "','" + timeEnd + "','" + numPeople + "','" + rdoPrivacy.SelectedIndex + "');";

                lblTest.Text = "Submited";

                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                cmd.ExecuteReader();
                cmd.Dispose();
                conn.Close();

                Button1.Visible = false;
            }
            

        }

        protected void btnDateStart_Click(object sender, EventArgs e)
        {
            if (Calendar1.Visible == true)
            {
                Calendar1.Visible = false;
            }
            else
            {

                Calendar1.Visible = true;
            }

        }

        protected void btnDateEnd_Click(object sender, EventArgs e)
        {
            if (Calendar2.Visible == true)
            {
                Calendar2.Visible = false;
            }
            else
            {

                Calendar2.Visible = true;
            }

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDateStart.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
            Calendar1.Visible = false;
        }


        protected void Calendar2_SelectionChanged1(object sender, EventArgs e)
        {
            txtDateEnd.Text = Calendar2.SelectedDate.ToString("yyyy-MM-dd");
            Calendar2.Visible = false;
        }


    }
}