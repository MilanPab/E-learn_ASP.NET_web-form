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
using MySql.Data.MySqlClient;

namespace Inventry_Management
{



    public partial class Login : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        int Result = 0;
        string studentID = null;
        string email = null;



        protected void Page_Load(object sender, EventArgs e)
        {
 
        }


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



        protected void Button1_Click(object sender, EventArgs e)
        {
            if (InputEmail.Value == "" || InputPassword.Value == "")
            {
                MessageBox("Enter email or password");
            }
            else
            {
                string query = "SELECT COUNT(*) FROM `students` WHERE st_email = '" + InputEmail.Value + "' AND st_password = '" + InputPassword.Value + "'";
                con = new MySqlConnection(Connection.GetConnectionString());
                con.Open();
                cmd = new MySqlCommand(query, con);
                object result = cmd.ExecuteScalar();

                if (result != DBNull.Value)
                {
                    Result = Convert.ToInt32(result);
                }

                if (Result == 0)
                {
                    MessageBox("Login Failed");
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    MessageBox("SuccessFully Login");
                    email = InputEmail.Value;
                    Session["email"] = email;
                  
                    getStudetID();
                    Response.Redirect("HomePage.aspx");

                    
                }
                con.Close();
            }
        }


        private void getStudetID()
        {
            string query = "SELECT st_id from students where st_email=@email";
            MessageBox(query);
            con = new MySqlConnection(Connection.GetConnectionString());
            con.Open();

            cmd = new MySqlCommand(query, con);
            cmd.Parameters.AddWithValue("@email", InputEmail.Value);

            MySqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                studentID = reader["st_id"].ToString();
 
             }

            if(studentID!= null)
            {
                Session["studentID"] = studentID;   
            }
            con.Close();


        }

    }
}