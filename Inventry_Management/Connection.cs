using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Inventry_Management
{
    public class Connection
    {
        public static string GetConnectionString()
        {
            return "server=localhost; uid=root;pwd='';database=elms_system; convert zero datetime=true;";
        }
    }
    public class Utils
    {
        public static bool isValidExtension(string fileName)
        {
            string[] fileExtensions = { ".jpg", ".jpeg", ".png" };
            for(int i = 0; i <= fileExtensions.Length; i++)
            {
                if (fileName.Contains(fileExtensions[i]))
                {
                    return true;
                }
            }
            return false;
        }

        public static string GetImageUrl(object url)
        {
            string urlString = string.Empty;
            if(string.IsNullOrEmpty(url.ToString()) || url == DBNull.Value)
            {
                urlString = "../Images/No_image.png";
            }
            else
            {
                urlString = string.Format("../{0}", url);
            }
            return urlString;
        }
    }
}