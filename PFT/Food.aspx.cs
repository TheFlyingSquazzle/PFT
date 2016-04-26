using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Food : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

  /*  protected void RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string stor_id = FoodGrid.DataKeys[e.RowIndex].Values["FoodName"].ToString();
        string _query = "Delete from [Food] where FoodName=" + stor_id;
        using (SqlConnection conn = new SqlConnection(@"Data Source=pft.database.windows.net;Initial Catalog=PFTdb;Integrated Security=False;User ID=corbinrwatkins;Password=Cryleew91;Connect Timeout=60;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"))
        {
            using (SqlCommand comm = new SqlCommand())
            {
                comm.Connection = conn;
                comm.CommandType = CommandType.Text;
                comm.CommandText = _query;
                conn.Open();
                comm.ExecuteNonQuery();
            }
        }
    }*/

}