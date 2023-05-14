using MySql.Data.MySqlClient;
using System;
using System.Runtime.Remoting.Messaging;
using System.Web.UI;

namespace Project_Nusantara_Resto
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string message = Request.QueryString["pesan"];

                if (!string.IsNullOrEmpty(message))
                {
                    if (message == "gagal")
                    {
                        ShowAlert("Login Failed!", "Wrong Username and Password!", "alert-danger");
                    }
                    else if (message == "logout")
                    {
                        ShowAlert("Log Out Success!", "You have successfully logged out", "alert-success");
                    }
                    else if (message == "belum_login")
                    {
                        ShowAlert("Access Denied!", "You must be logged in to access the admin dashboard page!!", "alert-danger");
                    }
                }
            }
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string Name = name.Text.Trim();
            string Password = password.Text.Trim();

            // Buat koneksi ke database
            string connectionString = "server=localhost;database=nusantara_resto;uid=root;pwd=;";
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                try
                {
                    // Buka koneksi dan jalankan query
                    conn.Open();

                    string query = "SELECT adminCode FROM admin WHERE adminName = @adminName AND adminPassword = @adminPassword";
                    MySqlCommand cmd = new MySqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@adminName", Name);
                    cmd.Parameters.AddWithValue("@adminPassword", Password);

                    MySqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        reader.Read();
                        string admincode = reader.GetString(0);
                        reader.Close();
                        conn.Close();
                        // Save admin code to session
                        Session["adminCode"] = admincode;
                        Response.Redirect("~/admin/menu.aspx?code=" + admincode);
                    }
                    else
                    {
                        // Show error message
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Nama atau password salah!');", true);
                        reader.Close();
                        conn.Close();
                    }
                }
                catch (Exception ex)
                {
                    // Tampilkan pesan error jika terjadi kesalahan
                    ShowAlert("Error", ex.Message, "alert-danger");
                }
            }
        }

        private void ShowAlert(string title, string message, string alertClass)
        {
            string script = string.Format("showAlert('{0}', '{1}', '{2}');", title, message, alertClass);
            ScriptManager.RegisterStartupScript(this, GetType(), "showAlert", script, true);
        }
    }
}
