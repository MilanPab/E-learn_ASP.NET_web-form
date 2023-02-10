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
    public partial class News1 : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataAdapter mySqlDataAdapter;
        DataTable dataTable;
        protected void Page_Load(object sender, EventArgs e)
        {
            getNews();
        }

        private void getNews()
        {
            string query = "SELECT * FROM `news`";
            con = new MySqlConnection(Connection.GetConnectionString());
            cmd = new MySqlCommand(query, con);
            mySqlDataAdapter = new MySqlDataAdapter(cmd);
            dataTable = new DataTable();
            mySqlDataAdapter.Fill(dataTable);
            Repeater_News.DataSource = dataTable;
            Repeater_News.DataBind();
        }

    }
}