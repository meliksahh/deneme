using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
    }
}