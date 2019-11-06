using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class PersonalPropertyForm : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Helper.GetCon());

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = @"INSERT INTO BlueForm VALUES(@IDnum, @LN, @FN, @dept, @Address, @Contact, @purpose, @item, @details, @Serial, @Campus, @date, @Period, @status)";
        cmd.Parameters.AddWithValue("@IDnum", txtIDNo.Text);
        cmd.Parameters.AddWithValue("@purpose", txtPurpose.Text);
        cmd.Parameters.AddWithValue("@item", txtItem.Text);
        cmd.Parameters.AddWithValue("@details", txtDetails.Text);
        cmd.Parameters.AddWithValue("@Serial", txtserial.Text);
        cmd.Parameters.AddWithValue("@Campus", txtCampus.Text);
        cmd.Parameters.AddWithValue("@date", txtDate.Text);
        cmd.Parameters.AddWithValue("@Period", txtPeriod.Text);
        cmd.Parameters.AddWithValue("@status", txtStatus.Text);
        cmd.ExecuteNonQuery();
        con.Close();

    }
}