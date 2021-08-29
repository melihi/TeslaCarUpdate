using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeslaCarUpdate
{
    public partial class TeslaManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object user = Session["username"];
            object role = Session["role"];
            if (user == null)
            {
                try
                {
                    Response.Redirect("UnAuthorizedAccess.aspx"); 
                }
                catch
                {

                }
            }
            else
            {
                Label9.Text = "Tesla ID : " + user;
                Label10.Text = "Role : " + role;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            Response.Redirect("TeslaCustomerManage.aspx");
            
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
            
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
           

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeslaCarList.aspx");

        }
    }
}