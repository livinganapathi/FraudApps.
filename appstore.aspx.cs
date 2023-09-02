using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fraud_Apps
{
    public partial class appstore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[4] { new DataColumn("Appname", typeof(string)),
                            new DataColumn("Filname", typeof(string)),
                            new DataColumn("Appid", typeof(string)) ,
                            new DataColumn("AvgRate", typeof(int)) });


            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
            try
            {
                con.Open();
                string query = "select Appname,Filname,Appid,AvgRate from apps order by AppCounter desc; ";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        dt.Rows.Add(dr.GetValue(0).ToString(), dr.GetValue(1).ToString(), dr.GetValue(2).ToString(), Convert.ToInt32(dr.GetValue(3).ToString()));
                    }
                }
            }
            catch (Exception ex)
            {
            }
            finally
            {
                con.Close();
            }

            RepeaterImages.DataSource = dt;
            RepeaterImages.DataBind();

        }
    }
}