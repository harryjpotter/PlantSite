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

            if (Session["name"] == null)
            {
                Response.Redirect("Sign In.aspx");
            }
            else
            {
                str = "<li><a href=\"Sign Out.aspx\">Sign Out</a></li>";
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
                    UpdatingParams();

                    command.CommandText = string.Format("UPDATE NominalData SET TempUpMax={0}, TempUpMin={1}, TempDownMax={2}, TempDownMin={3}, HuUpMax={4}, HuUpMin={5}, HuDownMax={6}, HuDownMin={7}, pHMax={8}, pHMin={9}, ECMax={10}, ECMin={11}, PumpMin={12};", TempUpMax, TempUpMin, TempDownMax, TempDownMin, HuUpMax, HuUpMin, HuDownMax, HuDownMin, pHMax, pHMin, ECMax, ECMin, PumpMin);
                    command.ExecuteNonQuery();
                }
            }
            connection.Close();
        }

        private void UpdatingParams()
        {
            if (CheckNotNull(TempUpMaxInput))
                TempUpMax = int.Parse(TempUpMaxInput);

            if (CheckNotNull(TempUpMinInput))
                TempUpMin = int.Parse(TempUpMinInput);

            if (CheckNotNull(TempDownMaxInput))
                TempDownMax = int.Parse(TempDownMaxInput);

            if (CheckNotNull(TempDownMinInput))
                TempDownMin = int.Parse(TempDownMinInput);

            if (CheckNotNull(HuUpMaxInput))
                HuUpMax = int.Parse(HuUpMaxInput);

            if (CheckNotNull(HuUpMinInput))
                HuUpMin = int.Parse(HuUpMinInput);

            if (CheckNotNull(HuDownMaxInput))
                HuDownMax = int.Parse(HuDownMaxInput);

            if (CheckNotNull(HuDownMinInput))
                HuDownMin = int.Parse(HuDownMinInput);

            if (CheckNotNull(pHMaxInput))
                pHMax = float.Parse(pHMaxInput);

            if (CheckNotNull(pHMinInput))
                pHMin = float.Parse(pHMinInput);

            if (CheckNotNull(ECMaxInput))
                ECMax = float.Parse(ECMaxInput);

            if (CheckNotNull(ECMinInput))
                ECMin = float.Parse(ECMinInput);

            if (CheckNotNull(PumpMinInput))
                PumpMin = float.Parse(PumpMinInput);
        }

        private bool CheckNotNull(string str)
        {
            if(str == "" || str == null)
                return false;
            return true;
        }
    }
}