using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventry_Management
{
    public partial class UserSettings : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataAdapter mySqlDataAdapter;
        DataTable dataTable;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            fetch();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        

        protected void fetch()
        {
            con = new MySqlConnection(Connection.GetConnectionString());
            con.Open();
            HttpCookie cokobj = Request.Cookies["active_user"];
            string emaill = cokobj["email"];
            String email = Response.Cookies["email"].ToString();
            String query = "select * from students where `st_email` = '"+emaill.ToString()+"' ";
            cmd = new MySqlCommand(query, con);
            DataTable dt = new DataTable();
            //MySqlDataAdapter ada = new MySqlDataAdapter(cmd);
            //ada.Fill(dt);

            MySqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    full_name.Value = dr.GetString("st_name");
                    phone_number.Value = dr.GetString("st_contact");
                    user_info.Value = dr.GetString("st_desc");
                    google.Value = dr.GetString("st_email");
                    linkedin.Value = dr.GetString("st_linkedin");
                }
            }
            else
            {
                Response.Redirect("HomePage.aspx");
            }

            //if (dt.Rows.Count > 0)
            //{
            //    full_name.Value = dt.Rows[0].ToString();
                

            //    //phone_number.Value = dt.Rows[2].ToString();
            //    //password.Value = dt.Rows[4].ToString();
            //    //user_info.Value = dt.Rows[3].ToString();
            //    //google.Value = dt.Rows[5].ToString();
            //    //linkedin.Value = dt.Rows[6].ToString();

            //}
            //else
            //{
            //    Response.Redirect("HomePage.aspx");  
            //}
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Save();
            fetch();
        }


        protected void Save()
        {
            if(full_name.Value == "" || phone_number.Value == "" || google.Value == "" ) 
            {
                
                Response.Write("<script>alert('plesase fill required field !')</script>");

            }
            else
            {
                try
                {
                    con = new MySqlConnection(Connection.GetConnectionString());
                    con.Open();
                    HttpCookie cokobj = Request.Cookies["active_user"];
                    string emaill = cokobj["email"];
                    
                    string query = " update `students` set st_name = '" + full_name.Value + "', st_email = '" + google.Value + "', st_password= '" + password.Value + "',st_desc= '" + user_info.Value + "',st_contact='" + phone_number.Value + "',st_linkedin='" + linkedin.Value + "'  where st_email == '" + emaill.ToString() + "'      ";
                    cmd = new MySqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("HomePage.aspx");
                }catch(Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
        }
    }
}