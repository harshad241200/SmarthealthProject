using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace SmartHealthConsltation
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod]
        public string Delete(string id)
        {
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                string sql = "delete from smarthealth where id= '" + id + "'";
                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                int status = cmd.ExecuteNonQuery();
                if (status > 0)
                {
                    return "success";
                }
                else
                {
                    return "fail";
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return null;
        }
    }
}
