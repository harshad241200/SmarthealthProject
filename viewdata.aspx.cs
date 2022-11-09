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
    public partial class viewdata : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = null;
            string sql = "select id,patientname, contact, DATE, TIME, Symptoms from smarthealth order by id desc";
            con = new SqlConnection(strcon);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeaters1.DataSource = dt;
            Repeaters1.DataBind();
            con.Close();
        }
    }
}