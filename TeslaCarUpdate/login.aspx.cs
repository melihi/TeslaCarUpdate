using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeslaCarUpdate
{
    public partial class login : System.Web.UI.Page
    {

        readonly SqlConnection baglanti = new SqlConnection(@"data source=TESLASQLSERVER;initial catalog=Tesla;persist security info=True;user id=teslapc2;password=Sifre090909;MultipleActiveResultSets=True;App=EntityFramework");
        SqlDataReader dr;
        string hash;
        string salt;
        protected void Page_Load(object sender, EventArgs e)
        {
             
            Label1.Visible = false;
            object user = Session["username"];
            if (user != null)
            {
                try
                {
                    Response.Redirect("TeslaManagement.aspx");
                }
                catch
                {

                }

            }

        }
        public void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                String a = TextBox1.Text;
                string pass = TextBox2.Text;
                string salt = getSalt(a);
                string input = hashed(pass + salt);

                //SqlCommand komut = new SqlCommand("SELECT * FROM TeslaDatabase WHERE TeslaID=@P1 AND Password=@P2", baglanti);
                //komut.Parameters.AddWithValue("@P1", TextBox1.Text);
                //komut.Parameters.AddWithValue("@P2", TextBox2.Text);
                baglanti.Open();
                SqlCommand komut = new SqlCommand("SELECT * FROM TeslaDatabase WHERE  TeslaID =  '" + TextBox1.Text + "' AND Password = '" + input + "' ", baglanti);



                dr = komut.ExecuteReader();
                if (dr.Read())
                {
                     
                    Session.Add("username", dr.GetString(1));
                    Session.Add("role", dr.GetString(4));
                    Session.Timeout = 130;
                    baglanti.Close();
                    Response.Redirect("TeslaManagement.aspx");
                    /*
                    if (hash == dr.GetString(2){

                    }
                    */
                }
                Label1.Visible = true;
                
            }
            catch
            {
            }
        }
        public string hashed(string veri)
        {
            MD5 md5 = new MD5CryptoServiceProvider();

             
            md5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(veri));

             
            byte[] result = md5.Hash;

            StringBuilder strBuilder = new StringBuilder();
            for (int i = 0; i < result.Length; i++)
            {

                strBuilder.Append(result[i].ToString("x2"));
            }
            hash = strBuilder.ToString();
            return hash;
        }
        public string getSalt(string user)
        {
            try
            {
                //SqlCommand komut = new SqlCommand("SELECT * FROM TeslaDatabase WHERE TeslaID=@P1 AND Password=@P2", baglanti);
                //komut.Parameters.AddWithValue("@P1", TextBox1.Text);
                //komut.Parameters.AddWithValue("@P2", TextBox2.Text);
                SqlConnection sql = new SqlConnection("data source=TESLASQLSERVER;initial catalog=Tesla;persist security info=True;user id=teslapc2;password=Sifre090909;MultipleActiveResultSets=True;App=EntityFramework");
                SqlCommand sqlk = new SqlCommand("SELECT * FROM TeslaDatabase WHERE  TeslaID = '" + user + "'", sql);
                sql.Open();

                SqlDataReader da = sqlk.ExecuteReader();
                if (da.Read())
                {
                    salt = da.GetString(3);
                }
            }
            catch
            {
            }
            return salt;
        }
         
    }
}