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
        public string str = "";
        //get the data that is in the database
        public int TempUpMax, TempUpMin, TempDownMax, TempDownMin, HuUpMax, HuUpMin, HuDownMax, HuDownMin;
        public float pHMax, pHMin, ECMax, ECMin, PumpMin;

        //get the data from the inputs
        public string TempUpMaxInput, TempUpMinInput, TempDownMaxInput, TempDownMinInput, HuUpMaxInput, HuUpMinInput, HuDownMaxInput, HuDownMinInput, pHMaxInput, pHMinInput, ECMaxInput, ECMinInput, PumpMinInput;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(DatabaseConnection.ConnectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandText = string.Format("SELECT * FROM NominalData;");
            //System.Diagnostics.Debug.WriteLine("");
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
                    pHMax = reader.GetFloat(8);
                    pHMin = reader.GetFloat(9);
                    ECMax = reader.GetFloat(10);
                    ECMin = reader.GetFloat(11);
                    PumpMin = reader.GetFloat(12);

                }
            }
            //System.Diagnostics.Debug.WriteLine("info: {0} ",TempUpMax);

            if (Session["id"] == null)
            {
                Response.Redirect("Sign In.aspx");
            }
            else
            {
                str = "Sign Out";
                if (Request.HttpMethod == "POST")
                {
                    // Insert the data
                    TempUpMaxInput = Request.Form["TempUpMax"];
                    TempUpMinInput = Request.Form["TempUpMin"];
                    TempDownMaxInput = Request.Form["TempDownMax"];
                    TempDownMinInput = Request.Form["TempDownMin"];
                    HuUpMaxInput = Request.Form["HuUpMax"];
                    HuUpMinInput = Request.Form["HuUpMin"];
                    HuDownMaxInput = Request.Form["HuDownMax"];
                    HuDownMinInput = Request.Form["HuDownMin"];
                    pHMaxInput = Request.Form["pHMax"];
                    pHMinInput = Request.Form["pHMin"];
                    ECMaxInput = Request.Form["ECMax"];
                    ECMinInput = Request.Form["ECMin"];
                    PumpMinInput = Request.Form["PumpMin"];

                    //updating the data
                    if (CheckNotNull(TempUpMaxInput))
                        TempUpMax = int.Parse(TempUpMaxInput);

                    //command.CommandText = string.Format("UPDATE NominalData SET TempUpMax= {0};", TempUpMax);
                    //command.CommandText = "INSERT INTO NominalData VALUES (30, 15, 25, 15, 100, 50, 80, 50, 6.5, 5.5, 1.5, 0.7, 50);";
                    command.CommandText = string.Format("UPDATE NominalData SET TempUpMax={0}, TempUpMin={1}, TempDownMax={2}, TempDownMin={3}, HuUpMax={4}, HuUpMin={5}, HuDownMax={6}, HuDownMin={7}, pHMax={8}, pHMin={9}, ECMax={10}, ECMin={11}, PumpMin={12};", TempUpMax, TempUpMin, TempDownMax, TempDownMin, HuUpMax, HuUpMin, HuDownMax, HuDownMin, pHMax, pHMin, ECMax, ECMin, PumpMin);
                    command.ExecuteNonQuery();
                }
            }
            connection.Close();
        }

        private bool CheckNotNull(string str)
        {
            if(str == null)
            {
                return false;
            }
            return true;
        }
    }
}