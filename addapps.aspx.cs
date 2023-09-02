using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SqlConnectionValidator;
using System.Net.Mail;
using System.Data.SqlClient;

namespace Fraud_Apps
{
    public partial class addapps : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // Session["Username"] = "Sunil";
            if (Session["Username"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                Random r = new Random();
                int a = r.Next(1234, 999999);
                docid.Value = "APP" + a.ToString();
                uploadeddate.Value = DateTime.Now.ToString("dd/MM/yyyy");
               // Session["Username"] = "Username";
                uploadedby.Value = Session["Username"].ToString();
            }
        }



        protected void Upload(object sender, EventArgs e)
        {
            if (docname.Value.Equals(string.Empty) || author.Value.Equals(string.Empty))
            {

                Response.Write("<script>alert('Please enter all details !!!');</script>");
            }
            else
            {
                Random r = new Random();
                int publickey = r.Next(1234, 999999);
                string s = DateTime.Now.ToString("dd");
                Random r1 = new Random(Convert.ToInt32(s));
                int aggregatekey = r1.Next(123, 999999);
                string path = Server.MapPath(@".\Upload\") + (FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath(@".\Upload\") + (FileUpload1.FileName));
               SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Constr"]);
                try
                {
                    con.Open();
                    string query = "insert into apps values('" + docname.Value + "','" + docid.Value + "','" + uploadedby.Value + "','" + uploadeddate.Value + "','" + FileUpload1.FileName + "','" + path + "','" + author.Value + "',0,0,'--');";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                }
                catch
                {
                }
                finally
                {
                    con.Close();
                    Response.Write("<script>alert('File has been uploaded successfully !!!');</script>");
                    Response.Write("<script>window.location='addapps.aspx';</script>");
                    //Response.Redirect("fileupload.aspx");
                }
            }
        }

        protected void Reset(object sender, EventArgs e)
        {
            Response.Redirect("addapps.aspx");
        }
    }
}