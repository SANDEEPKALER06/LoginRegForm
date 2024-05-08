using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginRegForm

{
    public partial class Registration : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
{
    string username = txtUsername.Text;
    string password = txtPassword.Text;
    string firstName = txtFirstName.Text;
    string lastName = txtLastName.Text;
    string email = txtEmail.Text;
    DateTime dateOfBirth = DateTime.Parse(txtDateOfBirth.Text);

    SaveUser(username, password, firstName, lastName, email, dateOfBirth);

   
    Response.Redirect("WebForm2.aspx");
}


private void SaveUser(string username, string password, string firstName, string lastName, string email, DateTime dateOfBirth)
{
    string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
    using (SqlConnection connection = new SqlConnection(connectionString))
    {
        connection.Open();
        SqlCommand command = new SqlCommand("INSERT INTO Users (Username, Password, FirstName, LastName, Email, DateOfBirth) VALUES (@Username, @Password, @FirstName, @LastName, @Email, @DateOfBirth)", connection);
        command.Parameters.AddWithValue("@Username", username);
        command.Parameters.AddWithValue("@Password", password);
        command.Parameters.AddWithValue("@FirstName", firstName);
        command.Parameters.AddWithValue("@LastName", lastName);
        command.Parameters.AddWithValue("@Email", email);
        command.Parameters.AddWithValue("@DateOfBirth", dateOfBirth);
        command.ExecuteNonQuery();
    }
        }
    }
}
