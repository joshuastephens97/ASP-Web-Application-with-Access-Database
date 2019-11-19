using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebServiceDemo
{
    /// <summary>
    /// Summary description for Reverse
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Reverse : System.Web.Services.WebService
    {
        [WebMethod]
        public string Reversed(string input)
        {
            char[] reversedArray = input.ToArray();
            Array.Reverse(reversedArray);
            return new string(reversedArray);
        }
    }
}
