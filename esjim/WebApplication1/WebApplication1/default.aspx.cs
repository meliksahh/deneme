using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection bag = new SqlConnection("Data Source= HP; Initial Catalog=esjim; Integrated Security=true;");
            bag.Open();

           SqlCommand ccc=new SqlCommand("Select * from Kul Where kadi='"+ kua.Text+"'  and sifre='" +sif.Text +"'",bag);
            SqlDataReader da = ccc.ExecuteReader();

            if (da.Read())
                {
                Session["kadi"] = da["kadi"].ToString();
                Response.Redirect("giris.aspx");
            }
            else
            {
                Response.Redirect("Hata");
            }
                   
        }

    }
}