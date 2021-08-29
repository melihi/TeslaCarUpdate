using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeslaCarUpdate
{
    public partial class TeslaCarList : System.Web.UI.Page
    {
       string connstring = (@"data source=TESLASQLSERVER;initial catalog=Tesla;persist security info=True;user id=teslapc2;password=Sifre090909;MultipleActiveResultSets=True;App=EntityFramework");

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
                Label11.Text = "Tesla ID : " + user;
                Label12.Text = "Role : " + role;
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");

        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeslaManagement.aspx");

        }
        protected void Button2_Click(object sender, EventArgs e)
        {


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeslaCustomerManage.aspx");

        }
        public void deneme()
        {

        }

        protected void list_Click(object sender, EventArgs e)
        {
            getCarList(TextBox1.Text);
        }
        protected void getCarList(string text)
        {
           
                string query2 = "SELECT * FROM TeslaCarList WHERE Model = '" + text + "' ; ";

           
                SqlConnection sql = new SqlConnection(connstring);

            SqlCommand abcd = new SqlCommand(query2, sql);
            sql.Open();
            SqlDataReader dr = abcd.ExecuteReader();


            StringBuilder str = new StringBuilder();

            
                 
                while (dr.Read())
                {
                    
                    str.Append(dr[0].ToString() +" "+ dr[1].ToString() + " " + dr[2].ToString() + " " + dr[3].ToString() + " " + dr[4].ToString() + "\n");

                }
                //StringBuilder str = new StringBuilder();
                //str.Append(dr.GetString(0) + dr.GetString(1) + dr.GetString(2) + dr.GetString(3) + dr.GetString(4));
                TextBox2.Text = str.ToString();
            //Response.Write(dr.GetString(0));
             
            try
            {
            }
            catch
            {

            }
        }
    }
}