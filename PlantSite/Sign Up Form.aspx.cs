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
        public string errorMessage = "";
        public string str = "";
        public string tomer = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                str = "<li><a href=\"Sign Out.aspx\">Sign Out</a></li>";
            }
            if (Request.HttpMethod == "POST")
            {
                // Insert the data
                string fullName = Request.Form["FullName"];
                string Username = Request.Form["Username"];
                string Password = Request.Form["Password"];
                string Email = Request.Form["Email"];
                string Phone = Request.Form["Phone"];
                System.Diagnostics.Debug.WriteLine("1:" + tomer + errorMessage);
                SqlConnection connection = new SqlConnection(DatabaseConnection.ConnectionString);
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandText = String.Format("INSERT INTO Users (FullName, Username, Password, Email, Phone) VALUES ('{0}', '{1}', '{2}', '{3}', '{4}');", fullName, Username, Password, Email, Phone);
                try
                {
                    command.ExecuteNonQuery();
                    Session["name"] = fullName;
                    tomer = "<script> alert(\"you have signed in\"); </script>";
                    errorMessage = "";
                    System.Diagnostics.Debug.WriteLine("2:" + tomer + errorMessage);
                }
                catch (SqlException ex)
                {
                    errorMessage = "*Username already exists";
                    System.Diagnostics.Debug.WriteLine("3:" + tomer + errorMessage);
                    System.Diagnostics.Debug.WriteLine(ex.Message);
                }
                System.Diagnostics.Debug.WriteLine("4:" + tomer + errorMessage);
                connection.Close();

                
            }
        }
    }
}