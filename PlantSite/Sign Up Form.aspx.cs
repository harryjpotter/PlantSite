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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod == "POST")
            {
                // Insert the data
                string fullName = Request.Form["FullName"];
                string Username = Request.Form["Username"];
                string Password = Request.Form["Password"];
                string Email = Request.Form["Email"];
                string Phone = Request.Form["Phone"];

                SqlConnection connection = new SqlConnection(DatabaseConnection.ConnectionString);
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandText = String.Format("INSERT INTO Users (FullName, Username, Password, Email, Phone) OUTPUT Inserted.Id VALUES ('{0}', '{1}', '{2}', '{3}', '{4}');", fullName, Username, Password, Email, Phone);
                try
                {
                    int id = (int)command.ExecuteScalar();
                    Session["id"] = id;
                    Session["name"] = fullName;
                    Response.Redirect("Home Page.aspx");
                }
                catch (SqlException)
                {
                    errorMessage = "*Username already exists";
                }
                //command.CommandText = "DELETE FROM Users WHERE Id=30";
                command.ExecuteNonQuery();
                connection.Close();

                
            }
        }
    }
}