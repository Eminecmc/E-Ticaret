using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaret.Site
{
    public partial class OdemeBitir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti;
            baglanti = new SqlConnection("Data Source=DESKTOP-LV09CUS;Initial Catalog=eticaretvt;Integrated Security=True");
            baglanti.Open();
            string sil = Session["kullanici"].ToString();
            SqlCommand komut = new SqlCommand("DELETE Sepet1 WHERE KullaniciID=" + sil, baglanti);
            komut.ExecuteNonQuery();

            sonuc.InnerHtml = "Ödeme Başarılı bir şekilde gerçekleşti";
            sonuc.InnerHtml += "<meta http-equiv='refresh' content='5;url=index.aspx'>";
        }
    }
}