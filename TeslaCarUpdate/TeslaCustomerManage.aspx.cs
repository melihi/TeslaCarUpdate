using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeslaCarUpdate
{
    public partial class TeslaCustomerManage : System.Web.UI.Page
    {
        string connstring = @"data source=TESLASQLSERVER;initial catalog=Tesla;persist security info=True;user id=teslapc2;password=Sifre090909;MultipleActiveResultSets=True;App=EntityFramework";
        readonly SqlConnection baglanti = new SqlConnection(@"data source=TESLASQLSERVER;initial catalog=Tesla;persist security info=True;user id=teslapc2;password=Sifre090909;MultipleActiveResultSets=True;App=EntityFramework");




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

        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            string query = "SELECT * FROM TeslaCustomers WHERE  Name =  '" + TextBox1.Text + "' AND Surname = '" + TextBox2.Text +
                                         "' OR Mail = '" + TextBox6.Text + "' OR CarModel='" + TextBox3.Text + "' OR CarYear='" + TextBox5.Text + "' OR Country='" + TextBox4.Text + "'";
            try
            {


                SqlConnection sql = new SqlConnection(connstring);
                SqlCommand sqlk = new SqlCommand(query, sql);
                sql.Open();
                SqlDataAdapter sqld = new SqlDataAdapter(sqlk);
                DataTable dt = new DataTable();
                sqld.Fill(dt);
                StringBuilder str = new StringBuilder();
                str.Append("<table border=1 class='veri'>");
                str.Append("<tr>");
                foreach (DataColumn dc in dt.Columns)
                {
                    str.Append("<th>");
                    str.Append(dc.ColumnName.ToUpper());
                    str.Append("</th>");
                }
                str.Append("</tr>");
                foreach (DataRow dr in dt.Rows)
                {
                    str.Append("<tr>");
                    foreach (DataColumn dc in dt.Columns)
                    {
                        str.Append("<th>");
                        str.Append(dr[dc.ColumnName].ToString());
                        str.Append("</th>");
                    }
                    str.Append("</tr>");
                }
                str.Append("</table>");

                Panel1.Controls.Add(new Label { Text = str.ToString() });
                sql.Close();
            }
            catch { }




        }
        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeslaManagement.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");

        }

        protected void Button7_Click(object sender, EventArgs e)
        {

            string query2 = "INSERT INTO TeslaCustomers(Name, Surname, Mail, CarModel, CarYear, Country) VALUES ('" + TextBox1.Text + "', '" + TextBox2.Text + "','" + TextBox6.Text + "','" + TextBox3.Text + "'," + TextBox5.Text + ",'" + TextBox4.Text + "')";
           
             

            try
            {
                baglanti.Open();
                //SqlConnection sql = new SqlConnection(connstring);

                SqlCommand abcd = new SqlCommand("INSERT INTO TeslaCustomers(Name, Surname, Mail, CarModel, CarYear, Country) VALUES('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox6.Text + "', '" + TextBox3.Text + "', " + TextBox5.Text + ", '" + TextBox4.Text + "')", baglanti);
            
            abcd.ExecuteNonQuery();
          
            SqlDataReader dr = abcd.ExecuteReader();
            if (dr.Read())
            {
                Response.Write(dr.GetString(1));
            }

            baglanti.Close();

           

            }
            catch { }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeslaCarList.aspx");

        }

    }
}