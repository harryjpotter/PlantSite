using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PlantSite
{
    public class DatabaseConnection
    {
        public static string ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=\"|DataDirectory|\\Database.mdf\";Integrated Security=True;User Instance=True";
        //public static string ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=\"|DataDirectory|\\DatabaseHome.mdf\";Integrated Security=True;User Instance=True";
    }
}