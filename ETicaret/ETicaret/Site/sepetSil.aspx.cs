using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaret.Site
{
    public partial class sepetSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sepet = Request.QueryString["id"];
            SqlConnection baglanti;
            baglanti = new SqlConnection("Data Source=DESKTOP-LV09CUS;Initial Catalog=eticaretvt;Integrated Security=True");
            baglanti.Open();

           
            SqlCommand kmt = new SqlCommand("DELETE FROM Sepet1 WHERE SepetFiyat=" + sepet, baglanti);
            kmt.ExecuteNonQuery();
            Response.Redirect("sepet1.aspx");


        }
    }
}