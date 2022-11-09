using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartHealthConsltation
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = null;
            string sql = "select * from smarthealth  where id='" + id + "'";
            con = new SqlConnection(strcon);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
        }

        protected void EDIT(object sender, EventArgs e)
        {
            try
            {
                string id = Request.QueryString["id"];//getting value from url

                RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
                string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

                string patientnames = (item.FindControl("patientnames") as TextBox).Text;
                string contac = (item.FindControl("contac") as TextBox).Text;
                string dates = (item.FindControl("dates") as TextBox).Text;
                string times = (item.FindControl("times") as TextBox).Text;
                string Symptomss = (item.FindControl("Symptomss") as TextBox).Text;


                string sql = "update smarthealth set Patientname='" + patientnames + "',Contact='" + contac + "',date='" + dates + "',time='" + times + "',Symptoms='" + Symptomss + "' where id = '" + id + "'";
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                int status = cmd.ExecuteNonQuery();
                if (status > 0)
                {
                    // result.Text = "Successfully inserted";                 
                    Response.Redirect("index.aspx");
                }
                else
                {
                    Console.WriteLine("Enable");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }


        }


        //message.Text = "Success Fully";

    }
}
    
