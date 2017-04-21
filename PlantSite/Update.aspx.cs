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
        public int TempUpMax, TempUpMin, TempDownMax, TempDownMin, HuUpMax, HuUpMin, HuDownMax, HuDownMin, PumpMin;
        public float pHMax, pHMin, ECMax, ECMin;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(DatabaseConnection.ConnectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandText = string.Format("SELECT * FROM NominalData;");
            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    TempUpMax = reader.GetInt32(0);
                    TempUpMin = reader.GetInt32(1);
                    TempDownMax = reader.GetInt32(2);
                    TempDownMin = reader.GetInt32(3);
                    HuUpMax = reader.GetInt32(4);
                    HuUpMin = reader.GetInt32(5);
                    HuDownMax = reader.GetInt32(6);
                    HuDownMin = reader.GetInt32(7);
                    pHMax = (float)reader.GetDouble(8);
                    pHMin = (float)reader.GetDouble(9);
                    ECMax = (float)reader.GetDouble(10);
                    ECMin = (float)reader.GetDouble(11);
                    PumpMin = reader.GetInt32(12);
                }
            }

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
                    TempUpMin = int.Parse(Request.Form["TempUpMin"]);
                    TempDownMax = int.Parse(Request.Form["TempDownMax"]);
                    TempDownMin = int.Parse(Request.Form["TempDownMin"]);
                    HuUpMax = int.Parse(Request.Form["HuUpMax"]);
                    HuUpMin = int.Parse(Request.Form["HuUpMin"]);
                    HuDownMax = int.Parse(Request.Form["HuDownMax"]);
                    HuDownMin = int.Parse(Request.Form["HuDownMin"]);
                    pHMax = float.Parse(Request.Form["pHMax"]);
                    pHMin = float.Parse(Request.Form["pHMin"]);
                    ECMax = float.Parse(Request.Form["ECMax"]);
                    ECMin = float.Parse(Request.Form["ECMin"]);
                    PumpMin = int.Parse(Request.Form["PumpMin"]);

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