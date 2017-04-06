using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PlantSite
{
    public partial class Sign_In : System.Web.UI.Page
    {
        public string message = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod == "POST")
            {
                string Username = Request.Form["Username"];
                string Password = Request.Form["Password"];

                SqlConnection connection = new SqlConnection(DatabaseConnection.ConnectionString);
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandText = "SELECT * WHERE Username = '" + Username + "';";
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    if (reader.GetString(3) == Password)
                    {
                        message = "Success!";
                        Session["id"] = reader.GetInt32(0);
                        Response.Redirect("Home Page.aspx");
                    }
                    else
                    {
                        message = "Login failed. Check your username and password, please try again.";
                    }
                }
                else
                {
                    message = "Login failed. Check your username and password, please try again.";
                }
                reader.Close();
                connection.Close();

            }
        }
    }
}
