using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventry_Management
{
    public partial class MyCourse : System.Web.UI.Page
    {

        String test = null;
        protected void MessageBox(string message)
        {
            
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            test = (String)Session["email"];

            if(test == null)
            {
               Response.Redirect("/Login.aspx");
            }


 
        }
    }
}