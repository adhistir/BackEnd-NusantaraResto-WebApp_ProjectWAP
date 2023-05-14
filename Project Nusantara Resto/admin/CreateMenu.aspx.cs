using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Project_Nusantara_Resto.admin
{
    public partial class CreateMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["adminCode"] != null)
                {
                    string AdminCode = Session["adminCode"].ToString();
                    string connString = "server=localhost;user=root;database=nusantara_resto;password=;";
                    MySqlConnection conn = new MySqlConnection(connString);
                    try
                    {
                        conn.Open();
                        MySqlCommand cmd = new MySqlCommand("SELECT adminName FROM admin WHERE adminCode=@adminCode", conn);
                        cmd.Parameters.AddWithValue("@adminCode", AdminCode);
                        string AdminName = cmd.ExecuteScalar().ToString();
                        conn.Close();
                        txtAdminCode.Text = AdminCode;
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

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            string connString = "Server=localhost;Database=nusantara_resto;Uid=root;Pwd=;";
            using (MySqlConnection connection = new MySqlConnection(connString))
            {
                connection.Open();
                string query = "INSERT INTO menu (categoryCode, menuName, menuDesc, menuStock, menuImage, menuPrice, adminCode) VALUES ( @categoryCode, @menuName, @menuDesc, @menuStock, @menuImage, @menuPrice, @adminCode)";
                using (MySqlCommand command = new MySqlCommand(query, connection))
                {
                    
                    command.Parameters.AddWithValue("@categoryCode", txtCategoryCode.Text);
                    command.Parameters.AddWithValue("@menuName", txtMenuName.Text);
                    command.Parameters.AddWithValue("@menuDesc", txtMenuDesc.Text);
                    
                    command.Parameters.AddWithValue("@menuStock", Convert.ToInt32(txtMenuStock.Text));
                    command.Parameters.AddWithValue("@menuPrice", Convert.ToDecimal(txtMenuPrice.Text));
                    command.Parameters.AddWithValue("@adminCode", Session["adminCode"].ToString());


                    // Upload the image file
                    if (imageUpload.HasFile)
                    {
                        string fileName = Path.GetFileName(imageUpload.PostedFile.FileName);
                        string fileExtension = Path.GetExtension(fileName).ToLower();
                        if (fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png")
                        {
                            string filePath = Server.MapPath("~/image/" + fileName);
                            imageUpload.SaveAs(filePath);

                            // Read the uploaded image into a byte array
                            byte[] imageData = File.ReadAllBytes(filePath);

                            // Add the byte array as the value of the @image parameter
                            command.Parameters.Add("@menuImage", MySqlDbType.Blob, imageData.Length).Value = imageData;
                        }
                    }

                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        // Redirect to the menu.aspx page with a success message
                        Response.Redirect("menu.aspx?create=success!");
                    }
                    else
                    {
                        // Redirect to the menu.aspx page with an error message
                        Response.Redirect("menu.aspx?create=error");
                    }
                }
            }
        }
    }
}