﻿using System;
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
        public string CurrDataColumns, CurrDataTable;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(DatabaseConnection.ConnectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();
            command.CommandText = string.Format("SELECT * FROM CurrData");
            using (SqlDataReader reader = command.ExecuteReader())
            {
                CurrDataColumns = PrintTablesColumns(reader);
                CurrDataTable = PrintTablesData(reader);
            }

        }
        private static string PrintTablesColumns(SqlDataReader reader)
        {
            string currDataColumns = "";

            int columnCount = reader.FieldCount;
            // Print Header (Column names)
            for (int i = 0; i < columnCount; i++)
            {
                // reader.GetName(i) gets the name of the ith coulmn
                currDataColumns += reader.GetName(i) + "           ";
            }
            return currDataColumns;
        }

        private static string PrintTablesData(SqlDataReader reader)
        {
            //System.Diagnostics.Debug.WriteLine("1");
            string currDataData = "";
            int columnCount = reader.FieldCount;
            // Print Header (Data Names)
            while (reader.Read()) // Read next row, stop if no more rows
            {
                for (int i = 0; i < columnCount; i++)
                {
                    // reader.GetValue(i) gets the value of the ith column in the current row
                    currDataData += reader.GetValue(i).ToString() + "           ";
                    //System.Diagnostics.Debug.WriteLine("2");
                }
                //System.Diagnostics.Debug.WriteLine("3");
                currDataData += "<br/>";
            }
            //System.Diagnostics.Debug.WriteLine(currDataData);
            return currDataData;
        }
        }

    }
