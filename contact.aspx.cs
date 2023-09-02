using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Fraud_Apps
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            if (uname.Value == "" && frmemail.Value == "" && sub.Value == "" && msg.Value == "")
            {
                Response.Write("<script>alert('Enter all Fields')</script>");
            }
            else
            {
                try
                {
                    MailMessage m = new MailMessage("jacksparrow8861@gmail.com", eml.Value, frmemail.Value, "Subject is--" + sub.Value + " and Message is--" + msg.Value);

                    SmtpClient s = new SmtpClient("smtp.gmail.com", 587);
                    s.Credentials = new System.Net.NetworkCredential("iamevil7781@gmail.com", "evilmonster007");
                    s.EnableSsl = true;
                    s.Send(m);
                    Resetter();
                }

                catch (Exception ex)
                {

                }


                //}
                //catch (Exception ex)
                //{
                //}
                //finally
                //{

                //}

            }
        }
    protected void Reset(object sender, EventArgs e)
    {
        Resetter();
    }
    void Resetter()
    {
    Response.Redirect("contact.aspx");
    }
}
 }
