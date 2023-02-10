using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventry_Management
{
    public partial class HomePage : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataAdapter mySqlDataAdapter;
        DataTable dataTable;
        private void getCourses()
        {
            string query = "SELECT * FROM `courses`";
            con = new MySqlConnection(Connection.GetConnectionString());
            cmd = new MySqlCommand(query, con);
            mySqlDataAdapter = new MySqlDataAdapter(cmd);
            dataTable = new DataTable();
            mySqlDataAdapter.Fill(dataTable);
            Repeater1.DataSource = dataTable;
            Repeater1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            getCourses();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Regiser.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Course_Panel.aspx");


        }
    }
}