using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeslaCarUpdate
{
    public partial class UnAuthorizedAccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebClient client = new WebClient();
            string downloadString = client.DownloadString("http://www.ifconfig.me");
             
            
            Label1.Text = downloadString;
        }
        
    }
}