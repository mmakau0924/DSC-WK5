using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace DSC_WK5
{
    public partial class Contact : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into FnUsrNfo values('" + NameTxt.Text
                + "', '" + AgeTxt.Text + "', '" + EmailTxt.Text + "', '" + PhoneTxt.Text
                + "' ,'" + InfoTxt.Text + "' )", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}