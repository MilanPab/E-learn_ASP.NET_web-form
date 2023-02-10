using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventry_Management
{
    public partial class Course_Panel : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataAdapter mySqlDataAdapter;
        DataTable dataTable;


        protected void Page_Load(object sender, EventArgs e)
        {
            getCourses();

        }

        private void getCourses()
        {
            string query = "SELECT * FROM `courses`";
            con = new MySqlConnection(Connection.GetConnectionString());
            cmd = new MySqlCommand(query, con);
            mySqlDataAdapter = new MySqlDataAdapter(cmd);
            dataTable = new DataTable();
            mySqlDataAdapter.Fill(dataTable);
            RepeaterCourse.DataSource = dataTable;
            RepeaterCourse.DataBind();
        }


      

    }
}