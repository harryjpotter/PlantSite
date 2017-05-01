using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PlantSite
{
    public partial class History : System.Web.UI.Page
    {
        public string CurrDataTable;
        public string str = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                str = "<li><a href=\"Sign Out.aspx\">Sign Out</a></li>";
            }
            SqlConnection connection = new SqlConnection(DatabaseConnection.ConnectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandText = string.Format("SELECT * FROM CurrData");
            using (SqlDataReader reader = command.ExecuteReader())
            {
                CurrDataTable = PrintTablesData(reader);
            }

        }
        private static string PrintTablesData(SqlDataReader reader)
        {
            string currDataData = "<table> <tr>";
            int columnCount = reader.FieldCount;
            // Print Header (Column names)
            for (int i = 0; i < columnCount; i++)
            {
                // reader.GetName(i) gets the name of the ith coulmn
                currDataData += "<th>" + reader.GetName(i) + "</th>";
            }
            currDataData += "</tr>";
            while (reader.Read()) // Read next row, stop if no more rows
            {
                for (int i = 0; i < columnCount; i++)
                {
                    // reader.GetValue(i) gets the value of the ith column in the current row
                    currDataData += "<td>" + reader.GetValue(i).ToString() + "</td>";
                }
                currDataData += "</tr>" + "<tr>";
            }
            //System.Diagnostics.Debug.WriteLine(currDataData);
            currDataData += "</tr>" + "</table";
            return currDataData;
        }
        }

    }
