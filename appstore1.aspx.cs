using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

namespace Fraud_Apps
{
    public partial class appstore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RetrieveContent();
            //Rating r1 = new Rating();


            //DataTable dt = new DataTable();
            //dt.Columns.AddRange(new DataColumn[2] { new DataColumn("Appname", typeof(string)),
            //                new DataColumn("Filname", typeof(string)) });


            //SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
            //try
            //{
            //    con.Open();
            //    string query = "select Appname,Filname,AvgRate from apps order by AppCounter desc; ";
            //    SqlCommand cmd = new SqlCommand(query, con);
            //    SqlDataReader dr = cmd.ExecuteReader();
            //    if (dr.HasRows)
            //    {
            //        while (dr.Read())
            //        {
            //            dt.Rows.Add(dr.GetValue(0).ToString(), dr.GetValue(1).ToString());
            //            r1.CurrentRating = Convert.ToInt32(dr["AvgRate"]);
            //        }
            //    }
            //}
            //catch (Exception ex)
            //{
            //}
            //finally
            //{
            //    con.Close();
            //}

            //RepeaterImages.DataSource = dt;
            //RepeaterImages.DataBind();

        }

        protected void RetrieveContent()
        {
            string query = string.Empty;


           // if (!DropDownList3.SelectedItem.Text.Equals("--Select--"))
            {
                query = "select Appname,Filname,AvgRate from apps order by AppCounter desc;";
            }
            //SqlDataSource sqlDatasource = new SqlDataSource();
            //sqlDatasource.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["ProductAspectDbConnectionString"]);
            //sqlDatasource.SelectCommand = query;
            //acrDynamic.DataSourceID = Convert.ToString(sqlDatasource);

          //  SqlDataSource3.SelectCommand = query;
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConStr"]);
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count != 0)
            {
                Label lbTitle;
                Label lbContent;
                Image img = new Image();
                AjaxControlToolkit.AccordionPane pn;
                int i = 0;     // This is just to use for assigning pane an id
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    lbTitle = new Label();
                    lbContent = new Label();
                    //lbTitle.Text = dr["Pname"].ToString();
                    // lbContent.Text = dr["Description"].ToString();
                    Rating r1 = new Rating();

                    r1.CurrentRating = Convert.ToInt32(dr["AvgRate"]);
                    img.ImageUrl = "~/Upload/" + dr["Filname"].ToString();
                    img.Height = 200;
                    img.Width = 200;
                    pn = new AjaxControlToolkit.AccordionPane();
                    pn.ID = "Pane" + i;
                    pn.HeaderContainer.Controls.Add(lbTitle);
                    pn.ContentContainer.Controls.Add(lbContent);
                    pn.ContentContainer.Controls.Add(r1);
                    acrDynamic.Panes.Add(pn);
                    ++i;
                }
            }

        }

    }
}