using System;
using System.Data.SqlClient;
using System.Windows;
using System.Collections.Generic;
using System.Drawing.Printing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Principal;

namespace Students
{
    public partial class student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void addDefaultValue(object sender, EventArgs e)
        {
            ListItem defaultValue = new ListItem("Default", "-1");
            DropDownList2.Items.Insert(0, defaultValue);
            string dataString = "Data Source=.\\sqlexpress;Initial Catalog=Students;Persist Security Info=True;User ID=sa;Password=remote;";
            string SqlQuery = "SELECT (txtFirstName + ' ' + txtSurname) as Name, IDX_Student FROM tbl_Students";
            try
            {
                using (SqlConnection connection = new SqlConnection(dataString))
                {
                    using (SqlCommand command = new SqlCommand(SqlQuery, connection))
                    {
                        try
                        {
                            connection.Open();
                            SqlDataReader reader = command.ExecuteReader();
                            int count = 1;
                            while (reader.Read())
                            {
                                ListItem nameValue = new ListItem(reader["Name"].ToString(), reader["IDX_Student"].ToString());
                                DropDownList2.Items.Insert(count, nameValue);
                                count += 1;
                            }
                        }
                        catch(Exception g)
                        {
                            txtFirstName.Text = ("oops 1: " + g);
                        }
                    }
                }
            }
            catch (Exception g)
            {
            txtSurname.Text = ("oops2: "+g);
            }
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            try {
                string dataString = "Data Source=.\\sqlexpress;Initial Catalog=Students;Persist Security Info=True;User ID=sa;Password=remote;";
                string SqlQuery = ("SELECT * FROM tbl_Students WHERE IDX_Student = " + DropDownList2.SelectedValue);
                using (SqlConnection connection = new SqlConnection(dataString))
                {
                    using (SqlCommand command = new SqlCommand(SqlQuery, connection))
                    {
                        try
                        {
                            connection.Open();
                            SqlDataReader reader = command.ExecuteReader();
                            while (reader.Read())
                            {
                                txtStudentIDX.Text = reader["IDX_Student"].ToString();
                                txtFirstName.Text = reader["txtFirstName"].ToString();
                                txtSurname.Text = reader["txtSurname"].ToString();
                                txtAge.Text = reader["intAge"].ToString();
                                txtDOB.Text = reader["dtDOB"].ToString();
                                txtIDNum.Text = reader["txtIDno"].ToString();
                                txtCellNum.Text = reader["txtContactno"].ToString();
                                txtEmail.Text = reader["txtEMail"].ToString();
                                bitEnabled.Checked = bool.Parse(reader["Enabled"].ToString());
                            }
                            reader.Close();
                        }
                        catch (SqlException g)
                        {
                            txtStudentIDX.Text = ("Error 1: " + g);
                        }
                    }
                    connection.Close();
                }
            }
            catch(Exception g)
            {
                txtStudentIDX.Text = ("Error 2: " + g);
            }
        }

        protected void ButtonClear_Click(object sender, EventArgs e)
        {
            txtStudentIDX.Text = "";
            txtFirstName.Text = "";
            txtSurname.Text = "";
            txtAge.Text = "";
            txtDOB.Text = "";
            txtIDNum.Text = "";
            txtCellNum.Text = "";
            txtEmail.Text = "";
            bitEnabled.Checked = false;
        }

        protected void ButtonClose_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx", false);
        }
    }
}