using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Nusantara_Resto
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["adminCode"] != null)
                {
                    string adminCode = Session["adminCode"].ToString();
                    string connString = "server=localhost;user=root;database=nusantara_resto;password=;";
                    MySqlConnection conn = new MySqlConnection(connString);
                    try
                    {
                        conn.Open();
                        MySqlCommand cmd = new MySqlCommand("SELECT adminName FROM admin WHERE adminCode=@adminCode", conn);
                        cmd.Parameters.AddWithValue("@adminCode", adminCode);
                        string AdminName = cmd.ExecuteScalar().ToString();
                        conn.Close();
                        adminName.Text = AdminName;
                    }
                    catch (Exception ex)
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Database error: " + ex.Message + "');", true);
                        conn.Close();
                    }
                }
                else
                {
                    Response.Redirect("~/LoginAdmin.aspx");
                }
            }
        }
    }
}