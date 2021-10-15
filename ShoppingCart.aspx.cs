using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AJames_ITSD325
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] != null)
            {
                //Label 1
                Label1.Text = Session["cart"].ToString(); 

                //Label 2
                SqlConnection con = new
                    SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select ProdName from [dbo].[Table] where ProdID = '" + Label1.Text + "'";
                cmd.Connection = con;
                con.Open();
                String sqlOutput = (String)cmd.ExecuteScalar();
                con.Close();
                Label2.Text = sqlOutput;

                //Label 3
                cmd.CommandText = "Select ProdPrice from [dbo].[Table] where ProdID = '" + Label1.Text + "'";
                cmd.Connection = con;
                con.Open();
                sqlOutput = (String)cmd.ExecuteScalar();
                con.Close();
                Label3.Text = sqlOutput;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label4.Text = "Thank you for your order! Your confirmation number is 30E1472";
            Session.Clear();
        }
    }
}