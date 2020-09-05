using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adp;
        DataSet dset;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("data source=.;database = mysql; user ID = sa; Password = iamrahul");
            con.Open();
            adp = new SqlDataAdapter("select * from dept", con);
            dset = new DataSet();

            adp.Fill(dset, "dept1");

            GridView2.DataSource = dset;
            GridView2.DataBind();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Response.Write("DELETING");
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Write("EDITED");
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Response.Write("UPDATING");
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            Response.Write("CANCEL");
        }
    }
}