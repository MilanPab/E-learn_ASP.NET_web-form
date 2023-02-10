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
using static System.Net.Mime.MediaTypeNames;

namespace Inventry_Management
{
    public partial class UserSettings : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        String email = "abc@gmail.com";
        string query = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["email"] = "abc@gmail.com";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }



        protected void fetch()
        {

            if (email != null)
            {
                con = new MySqlConnection(Connection.GetConnectionString());
                con.Open();

                String query = "select * from students where `st_email` = '" + Session["email"].ToString() + "' ";
                cmd = new MySqlCommand(query, con);
                DataTable dt = new DataTable();


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
                    Response.Redirect("Login.aspx");
                }

                con.Close();

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Save();
        }


        protected void Save()
        {
            if (full_name.Value == "" || phone_number.Value == "" || google.Value == "")
            {

                Response.Write("<script>alert('plesase fill required field !')</script>");

            }
            else
            {
                try
                {
                    con = new MySqlConnection(Connection.GetConnectionString());
                    con.Open();

                    if (full_name.Value != "" && phone_number.Value != "" && google.Value != "")
                    {
                        string query = " update `students` set st_name = '" + full_name.Value + "', st_email = '" + google.Value + "', st_password= '" + password.Value + "',st_desc= '" + user_info.Value + "',st_contact='" + phone_number.Value + "',st_linkedin='" + linkedin.Value + "'  where st_email == '" + Session["email"].ToString() + "'      ";

                    }
                    else if (full_name.Value != "" && phone_number.Value != "")
                    {
                        string query = " update `students` set st_name = '" + full_name.Value + "', st_email = '" + google.Value + "', st_password= '" + password.Value + "',st_desc= '" + user_info.Value + "',st_contact='" + phone_number.Value + "',st_linkedin='" + linkedin.Value + "'  where st_email == '" + Session["email"].ToString() + "'      ";


                    }
                    else if (phone_number.Value != "" && google.Value != "")
                    {
                        string query = " update `students` set st_name = '" + full_name.Value + "', st_email = '" + google.Value + "', st_password= '" + password.Value + "',st_desc= '" + user_info.Value + "',st_contact='" + phone_number.Value + "',st_linkedin='" + linkedin.Value + "'  where st_email == '" + Session["email"].ToString() + "'      ";

                    }
                    else if (!string.IsNullOrEmpty(full_name.Value))
                    {
                        string query = " update `students` set st_name = '" + full_name.Value + "', st_email = '" + google.Value + "', st_password= '" + password.Value + "',st_desc= '" + user_info.Value + "',st_contact='" + phone_number.Value + "',st_linkedin='" + linkedin.Value + "'  where st_email == '" + Session["email"].ToString() + "'      ";

                    }
                    else if (!string.IsNullOrEmpty(phone_number.Value))
                    {
                        string query = " update `students` set st_name = '" + full_name.Value + "', st_email = '" + google.Value + "', st_password= '" + password.Value + "',st_desc= '" + user_info.Value + "',st_contact='" + phone_number.Value + "',st_linkedin='" + linkedin.Value + "'  where st_email == '" + Session["email"].ToString() + "'      ";


                    }
                    else
                    {
                        string query = " update `students` set st_name = '" + full_name.Value + "', st_email = '" + google.Value + "', st_password= '" + password.Value + "',st_desc= '" + user_info.Value + "',st_contact='" + phone_number.Value + "',st_linkedin='" + linkedin.Value + "'  where st_email == '" + Session["email"].ToString() + "'      ";

                    }
                    if (query != null)
                    {

                        cmd = new MySqlCommand(query, con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        fetch();
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Session.Remove("email");
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
    }
}