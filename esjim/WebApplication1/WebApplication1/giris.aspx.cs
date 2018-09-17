using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["kadi"] != null)
                Response.Write("Hoşgeldin" + " " +Session["kadi"]);
            else
                Response.Redirect("default.aspx");

        }

        protected void perkaydet_Click(object sender, EventArgs e)
        {
            SqlConnection bag = new SqlConnection("Data Source= HP; Initial Catalog=esjim; Integrated Security=true;");
            bag.Open();

            SqlCommand ccc = new SqlCommand("Insert into Personel(adi,soyadi,email,telno,birim) values ('"+ad.Text+"','"+soyad.Text+"','"+email.Text+"','"+tel.Text+"','"+birim.Text+"')",bag);
            ccc.ExecuteNonQuery();
            bag.Close();
        }
    }
}