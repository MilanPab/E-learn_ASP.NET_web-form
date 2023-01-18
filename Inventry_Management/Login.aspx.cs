using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventry_Management
{



    public partial class Login : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataAdapter mySqlDataAdapter;
        DataTable dataTable;


        protected void MessageBox(string message)
        {
            string alertMessage = "Message: ";
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
 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ( InputEmail.Value == "" || InputPassword.Value == "")
            {
                InputEmail.Value = "error";

            }
            else
            {
                string query = " select * from student where st_email = '"+InputEmail.Value+"' and st_pass = '"+InputPassword.Value+"' ";
                con = new MySqlConnection(Connection.GetConnectionString());
                con.Open();
                cmd = new MySqlCommand(query, con);
                cmd.ExecuteNonQuery();
                //MySqlDataReader sdr = cmd.ExecuteReader();
                int Result = (int)cmd.ExecuteScalar();
                if (Result > 0)
                {
                    String email = InputEmail.Value;

                   // String username = sdr["st_name"].ToString();
                    Session["email"] = email;
 

                    
                    con.Close();
                    
                   Response.Redirect("HomePage.aspx");

                }
                else
                {
                    Response.Redirect("Login.aspx");
                }

                con.Close();

            }
        }
    }
}