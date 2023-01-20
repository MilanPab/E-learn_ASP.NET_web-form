using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using System.Data;
using System.Net.Mail;

namespace Inventry_Management
{


    

    
    public partial class Register : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataAdapter mySqlDataAdapter;
        DataTable dataTable;

        protected void Page_Load(object sender, EventArgs e)
        {

        } 
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (username.Value == "" || InputEmail.Value=="" || contact.Value=="" || InputPassword.Value=="") 
            {
                    username.Value= "error";
                
            }
            else
            {
                string query = " INSERT INTO `students`(`st_name`,`st_email`,`st_password`,`st_contact`) values('" + username.Value.ToString() + "','" + InputEmail.Value.ToString() + "','" + InputPassword.Value.ToString() + "','" + contact.Value.ToString() + "') ";
                con = new MySqlConnection(Connection.GetConnectionString());
                con.Open();
                cmd = new MySqlCommand(query, con);
                cmd.ExecuteNonQuery();
                Response.Redirect("HomePage.aspx");
            }

            

        }
    }
}