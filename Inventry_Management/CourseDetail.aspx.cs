using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace Inventry_Management
{
    public partial class CourseDetail : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataAdapter mySqlDataAdapter;
        DataTable dataTable;
        string student_id = null;
        string id = null;
        bool checkEnrolled = false;
        string test = null;
        int Result = 0;
        protected void Page_Load(object sender, EventArgs e)
        {



            id = Request.QueryString["id"];
            if (id == null)
            {
                Response.Redirect("Course_Panel.aspx");
            }
            else
            {
                test = (String)Session["email"];
                student_id = (String)Session["studentID"];
                if (test == null)
                {
                    Button1.Text = "Login to Enrolled";

                }
                else {

                   
                    if(student_id != null){
                        checkCourseEnrolled();
                    }

                }

                getCourses();
            }



        }

        private void getCourses()
        {
            string query = "SELECT * FROM `courses` where id=" + id;
            con = new MySqlConnection(Connection.GetConnectionString());
            con.Open();
            cmd = new MySqlCommand(query, con);
            mySqlDataAdapter = new MySqlDataAdapter(cmd);
            dataTable = new DataTable();
            mySqlDataAdapter.Fill(dataTable);
            RepeaterSingleCourse.DataSource = dataTable;
            RepeaterSingleCourse.DataBind();
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (test == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {


                if (id != null & student_id != null)
                {
                    if (checkEnrolled == false)
                    {
                        string query = "INSERT INTO enrolled_courses (course_id , student_id) VALUES ('" + id + "', '" + student_id + "');";
                        con = new MySqlConnection(Connection.GetConnectionString());
                        con.Open();
                        cmd = new MySqlCommand(query, con);
                        cmd.ExecuteNonQuery();
                        Response.Redirect(Request.RawUrl);


                    }
                    else
                    {
                        Button1.Text = "Already Enrolled";
                        Response.Redirect("Course_Panel.aspx");
                    }

                    

                    con.Close();
                }
                else
                {
                    Response.Redirect("Course_Panel.aspx");
                }
            }






        }

        private void checkCourseEnrolled()
        {
            string query = "select * from enrolled_courses  where  course_id='" + id + "'  and student_id='" + student_id + "' ";
            con = new MySqlConnection(Connection.GetConnectionString());
            con.Open();
            cmd = new MySqlCommand(query, con);
            MySqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                checkEnrolled = true;
                Button1.Text = "Already Enrolled";
 

            }
            reader.Close();
            con.Close();
        }


    }
}