using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlantSite
{
    public partial class Home_Page : System.Web.UI.Page
    {
        public string hello = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           if(Session["id"]!= null)
            {
                hello = String.Format("Hello {0}", Session["name"]);
            }
           else
            {
                hello = "Hello guest";
            }
        }
    }
}