using System;
using System.Collections.Generic;
using System.Configuration;
using System.Web;

namespace WebBanSach.lib
{
    public class AppSettingsGet
    {
        // I also get my connection string from here
        public static string ConnectionString
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            }
        }

    }
}
