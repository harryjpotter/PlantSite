using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PlantSite
{
    public class DatabaseConnection
    {
        //school
        //public static string ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=\"|DataDirectory|\\Database.mdf\";Integrated Security=True;User Instance=True";
        
        //home
        public static string ConnectionString = "Data Source = (LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\rotem_000\\Documents\\GitHub\\PlantSite\\PlantSite\\App_Data\\Database.mdf;Integrated Security = True; Connect Timeout = 30";

        //school-2015
        //public static string ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\user1\\Documents\\GitHub\\PlantSite\\PlantSite\\App_Data\\Database.mdf;Integrated Security=True";
    }
}