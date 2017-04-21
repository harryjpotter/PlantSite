using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PlantSite
{
    public partial class Update : System.Web.UI.Page
    {
        public int TempUpMax;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(DatabaseConnection.ConnectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandText = string.Format("SELECT {0} From NominalData;", TempUpMax);
            SqlDataReader reader = command.ExecuteReader();
            reader.Read();
            TempUpMax = reader.GetInt32(0);
            reader.Close();
            if (Session["id"] == null)
            {
                Response.Redirect("Sign In.aspx");
            }
            else
            {
                if (Request.HttpMethod == "POST")
                {
                    // Insert the data
                    TempUpMax = int.Parse(Request.Form["TempUpMax"]);
                    int TempUpMin = int.Parse(Request.Form["TempUpMin"]);
                    int TempDownMax = int.Parse(Request.Form["TempDownMax"]);
                    int TempDownMin = int.Parse(Request.Form["TempDownMin"]);
                    int HuUpMax = int.Parse(Request.Form["HuUpMax"]);
                    int HuUpMin = int.Parse(Request.Form["HuUpMin"]);
                    int HuDownMax = int.Parse(Request.Form["HuDownMax"]);
                    int HuDownMin = int.Parse(Request.Form["HuDownMin"]);
                    float pHMax = float.Parse(Request.Form["pHMax"]);
                    float pHMin = float.Parse(Request.Form["pHMin"]);
                    float ECMax = float.Parse(Request.Form["ECMax"]);
                    float ECMin = float.Parse(Request.Form["ECMin"]);
                    int PumpMin = int.Parse(Request.Form["PumpMin"]);

                    //command.CommandText = "INSERT INTO NominalData VALUES (30, 15, 25, 15, 100, 50, 80, 50, 6.5, 5.5, 1.5, 0.7, 50);";
                    //command.CommandText = "UPDATE NominalData SET PumpMin=40;";
                    command.CommandText = string.Format("UPDATE NominalData SET TempUpMax={0}, TempUpMin={1}, TempDownMax={2}, TempDownMin={3}, HuUpMax={4}, HuUpMin={5}, HuDownMax={6}, HuDownMin={7}, pHMax={8}, pHMin={9}, ECMax={10}, ECMin={11}, PumpMin={12};", TempUpMax, TempUpMin, TempDownMax, TempDownMin, HuUpMax, HuUpMin, HuDownMax, HuDownMin, pHMax, pHMin, ECMax, ECMin, PumpMin);
                    command.ExecuteNonQuery();
                }
            }
                connection.Close();
        }
    }
}