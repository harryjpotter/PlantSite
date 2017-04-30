using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PlantSite
{
    public partial class Home_Page : System.Web.UI.Page
    {
        public string str = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                str = "Sign Out";
            }
        }
    }
}