using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartHealthConsltation
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void confirm(object sender, EventArgs e)
        {
            SqlConnection con = null;
            try
            {
                string patientname = patientnames.Text;
                string contact = contac.Text;
                string date = dates.Text;
                string time = times.Text;
                string Symptoms = Symptomss.Text;

                //Get connection string from web.config file  
                string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                //create new sqlconnection and connection to database by using connection string from web.config file 
                string sql = "insert into smarthealth(patientname, contact, DATE,TIME,Symptoms) values('" + patientname + "','" + contact + "','" + date + "','" + time + "','" + Symptoms + "')";

                con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);

                int status = cmd.ExecuteNonQuery();

                if (status > 0)
                {
                    Response.Redirect("index");
                    //Response.Write("<script>alert('Success')</script>");
                }

            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
            finally
            {
                con.Close();
            }

            //message.Text = "Success Fully";

        }

    }
}
