using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PlantSite
{
    public partial class Sign_Up_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod == "POST")
            {
                // Insert the data
                string fullName = Request.Form["FullName"];

                string connetionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=\"|DataDirectory|\\Database.mdf\";Integrated Security=True;User Instance=True";
                SqlConnection connection = new SqlConnection(connetionString);
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandText = String.Format("INSERT INTO Users (FullName) VALUES ({0});", fullName);
                command.ExecuteNonQuery();

                connection.Close();

                //Response.Redirect("home.aspx");
            }
        }
    }
}