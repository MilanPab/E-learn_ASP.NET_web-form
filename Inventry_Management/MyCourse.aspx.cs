using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Generic;


namespace Inventry_Management
{
    public partial class MyCourse : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataAdapter mySqlDataAdapter;
        DataTable dataTable;
        List<string> course_id = new List<String>();
        string student_id = null;
         bool checkEnrolled = false;
        string test = null;
        int Result = 0;
        string id = null;


        protected void Page_Load(object sender, EventArgs e)
        {

            id = Request.QueryString["id"];
            if(id != null)
            {
                removeCourses();
                Response.Redirect("/MyCourse.aspx");
            }



            test = (String)Session["email"];
            student_id = (String)Session["studentID"];

            if (test == null )
            {
                Response.Redirect("Login.aspx");


            }
            else
            {
                getCourses();
            }



        }

        private void removeCourses()
        {
            string query = "DELETE FROM enrolled_courses WHERE course_id=@courseID";
            con = new MySqlConnection(Connection.GetConnectionString());
            con.Open();
            cmd = new MySqlCommand(query, con);
            cmd.Parameters.AddWithValue("@courseID", id);
            cmd.ExecuteNonQuery();
        }

        private void getCourses()
        {
            getCourseId();

            if (course_id.Count > 0)
            {
                DataTable dataTable = new DataTable();
                dataTable.Columns.Add("course_name", typeof(string));
                dataTable.Columns.Add("description", typeof(string));
                dataTable.Columns.Add("course_id", typeof(string));
                dataTable.Columns.Add("imgurl", typeof(string));
                // Add other columns as needed

                foreach (string id in course_id)
                {
                    string query = "SELECT * FROM `courses` where id=" + id;
                    con = new MySqlConnection(Connection.GetConnectionString());
                    con.Open();
                    cmd = new MySqlCommand(query, con);
                    mySqlDataAdapter = new MySqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    mySqlDataAdapter.Fill(dt);
                    DataRow dr = dataTable.NewRow();
                    dr["course_name"] = dt.Rows[0]["name"];
                    dr["course_id"] = dt.Rows[0]["id"];
                    dr["description"] = dt.Rows[0]["details"];
                    dr["imgurl"] = dt.Rows[0]["imageUrl"];
                    // Add other columns as needed
                    dataTable.Rows.Add(dr);
                    con.Close();
                }
                Repeater1.DataSource = dataTable;
                Repeater1.DataBind();
            }
        }


        private void getCourseId()
        {
            string query = "SELECT course_id FROM `enrolled_courses` where student_id=" + student_id;
            con = new MySqlConnection(Connection.GetConnectionString());
            con.Open();
            cmd = new MySqlCommand(query, con);
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                 course_id.Add(reader["course_id"].ToString());

            }


        }


 
    }
}