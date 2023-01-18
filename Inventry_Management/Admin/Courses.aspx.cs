using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.IO;

namespace Inventry_Management
{
    
    public partial class Courses : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataAdapter mySqlDataAdapter;
        DataTable dataTable;
        protected void Page_Load(object sender, EventArgs e)
        {
           Response.Redirect("/HomePage.aspx");

            getCourses();
        }

        private void getCourses()
        {
            string query = "SELECT * FROM `courses`";
            con = new MySqlConnection(Connection.GetConnectionString());
            cmd = new MySqlCommand(query, con);
            mySqlDataAdapter= new MySqlDataAdapter(cmd);
            dataTable= new DataTable();
            mySqlDataAdapter.Fill(dataTable);
            repeaterCourses.DataSource=dataTable;
            repeaterCourses.DataBind();
        }

        protected void btnAddOrUpdate_Click1(object sender, EventArgs e)
        {
            string actionName = string.Empty, fileExtension = string.Empty, imagePath = string.Empty;
            bool isValidToExecute = false;
            int courseId = Convert.ToInt32(hdnId.Value);
            string query;
            if(courseId == 0)
            {
                query = "INSERT INTO `courses` (`name`, `details`, `videoUrl`, `imageUrl`, `isActive`) VALUES (@name, @details, @videoUrl, @imageUrl, @isActive)";
            }
            else
            {
                query = "UPDATE `courses` SET `name` = @name, `details` = @details, `videoUrl` = @videoUrl, `imageUrl` = @imageUrl, `isActive` = @isActive WHERE `courses`.`id` = @categoryId";
            }
            con = new MySqlConnection(Connection.GetConnectionString());
            cmd = new MySqlCommand(query, con);
            cmd.Parameters.AddWithValue("@categoryId", courseId);
            cmd.Parameters.AddWithValue("@name", courseName.Text.Trim());
            cmd.Parameters.AddWithValue("@details", courseDescription.Text.Trim());
            cmd.Parameters.AddWithValue("@videoUrl", courseVideoUrl.Text.Trim());
            cmd.Parameters.AddWithValue("@isActive", cbIsActive.Checked);

            if (CourseImage.HasFile)
            {
                if (Utils.isValidExtension(CourseImage.FileName))
                {
                    Guid guid = Guid.NewGuid();
                    fileExtension = Path.GetExtension(CourseImage.FileName);
                    imagePath = "images/Courses/"+guid.ToString() + fileExtension;
                    CourseImage.PostedFile.SaveAs(Server.MapPath("~/"+imagePath));
                    cmd.Parameters.AddWithValue("@imageUrl", imagePath);
                    isValidToExecute = true;
                }
                else
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Please select .jpg or .png or .jpeg";
                    lblMsg.CssClass = "alert alert-danger";
                    isValidToExecute = false;
                }
            }
            else
            {
                isValidToExecute = true;
            }
            if (isValidToExecute)
            {
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    actionName = courseId == 0 ? "inserted" : "updated";
                    lblMsg.Visible = true;
                    lblMsg.Text = "Course "+actionName+" successfully";
                    lblMsg.CssClass = "alert alert-success";
                    getCourses();
                    clear();
                }catch(Exception ex)
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Error- " + ex.Message;
                    lblMsg.CssClass = "alert alert-danger";
                }
                finally { con.Close(); }
            }
            

        }

        private void clear()
        {
            courseName.Text = string.Empty;
            courseDescription.Text = string.Empty;  
            courseVideoUrl.Text= string.Empty;
            cbIsActive.Checked = false;
            hdnId.Value = "0";
            btnAddOrUpdate.Text = "Add";
            imgCategory.ImageUrl= string.Empty;
            imgCategory.Visible = false;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
        }

        protected void repeaterCategory_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            lblMsg.Visible = false;
            imgCategory.Visible = true;
            con = new MySqlConnection(Connection.GetConnectionString());
            if (e.CommandName == "edit")
            {

                //string query = "UPDATE `categories` SET `name` = 'fruit', `imageUrl` = 'Images/Category/d2bd778f-a075-4335-bba0-64e651c8456fs.png', `isActive` = b'0' WHERE `categories`.`categoryId` = 3;";
                string query = "SELECT * FROM courses WHERE id = @courseId";
                cmd = new MySqlCommand(query, con);
                cmd.Parameters.AddWithValue("@courseId", e.CommandArgument);
                mySqlDataAdapter = new MySqlDataAdapter(cmd);
                dataTable = new DataTable();
                mySqlDataAdapter.Fill(dataTable);
                courseName.Text = dataTable.Rows[0]["name"].ToString();
                courseDescription.Text = dataTable.Rows[0]["details"].ToString();
                courseVideoUrl.Text = dataTable.Rows[0]["videoUrl"].ToString();
                cbIsActive.Checked = Convert.ToBoolean(dataTable.Rows[0]["isActive"]);
                imgCategory.ImageUrl = string.IsNullOrEmpty(dataTable.Rows[0]["imageUrl"].ToString()) ? "../Images/No_image.png" : "../" + dataTable.Rows[0]["imageUrl"].ToString();
                imgCategory.Height = 200;
                imgCategory.Width = 200;
                hdnId.Value = dataTable.Rows[0]["id"].ToString();
                btnAddOrUpdate.Text = "Update";
                LinkButton btn = e.Item.FindControl("lnkEdit") as LinkButton;
                btn.CssClass = "badge badge-warning";
            }
            else if (e.CommandName == "delete")
            {

                //string query = "UPDATE `categories` SET `name` = 'fruit', `imageUrl` = 'Images/Category/d2bd778f-a075-4335-bba0-64e651c8456fs.png', `isActive` = b'0' WHERE `categories`.`categoryId` = 3;";
                string query = "DELETE FROM `courses` WHERE `id` = @courseId";
                cmd = new MySqlCommand(query, con);
                cmd.Parameters.AddWithValue("@courseId", e.CommandArgument);
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblMsg.Visible = true;
                    lblMsg.Text = "Course deleted successfully!";
                    lblMsg.CssClass = "alert alert-success";
                    getCourses();
                    clear();
                }
                catch (Exception ex)
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Error- " + ex.Message;
                    lblMsg.CssClass = "alert alert-danger";
                }
                finally { con.Close(); }
            }
        }

        protected void repeaterCategory_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label lbl = e.Item.FindControl("lblIsActive") as Label;
                if (lbl.Text == "True")
                {
                    lbl.Text = "Active";
                    lbl.CssClass = "badge badge-success";
                }
                else
                {
                    lbl.Text = "In-Active";
                    lbl.CssClass = "badge badge-danger";
                }
            }
        }

    }
}