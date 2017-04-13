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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod == "POST")
            {
                // Insert the data
                string TempUpMax = Request.Form["TempUpMax"];
                string TempUpMin = Request.Form["TempUpMin"];
                string TempDownMax = Request.Form["TempDownMax"];
                string TempDownMin = Request.Form["TempDownMin"];
                string HuUpMax = Request.Form["HuUpMax"];
                string HuUpMin = Request.Form["HuUpMin"];
                string HuDownMax = Request.Form["HuDownMax"];
                string HuDownMin = Request.Form["HuDownMin"];
                string pHMax = Request.Form["pHMax"];
                string pHMin = Request.Form["pHMin"];
                string ECMax = Request.Form["ECMax"];
                string ECMin = Request.Form["ECMin"];
                string PumpMin = Request.Form["PumpMin"];

                SqlConnection connection = new SqlConnection(DatabaseConnection.ConnectionString);
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                //command.CommandText = "INSERT INTO NominalData VALUES (30, 15, 25, 15, 100, 50, 80, 50, 6.5, 5.5, 1.5, 0.7, 50);";
                command.CommandText = string.Format("UPDATE NominalData SET TempUpMax={0}, TempUpMin={1}, TempDownMax={2}, TempDownMin={3}, HuUpMax={4}, HuUpMin={5}, HuDownMax={6}, HuDownMin={7}, pHMax={8}, pHMin={9}, ECMax={10}, ECMin={11}, PumpMin={12} ;", TempUpMax, TempUpMin, TempDownMax, TempDownMin, HuUpMax, HuUpMin, HuDownMax, HuDownMin, pHMax, pHMin, ECMax, ECMin, PumpMin);
                command.ExecuteNonQuery();
                connection.Close();
            }
        }
    }
}