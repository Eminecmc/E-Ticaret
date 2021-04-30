using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaret.Site
{
    public partial class Odeme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlConnection baglanti;
            baglanti = new SqlConnection("Data Source=DESKTOP-LV09CUS;Initial Catalog=eticaretvt;Integrated Security=True");
            baglanti.Open();
            SqlCommand komut = new SqlCommand("INSERT INTO Odeme1(OdemeAd,OdemeTelNo,OdemeAdres,KullaniciID) values(@V1,@V2,@V3,@V4)", baglanti);
            komut.Parameters.AddWithValue("@V1", adSoyad.Text);
            komut.Parameters.AddWithValue("@V2",tel.Text);
            komut.Parameters.AddWithValue("@V3", adres.Text);
            komut.Parameters.AddWithValue("@V4", Session["kullanici"]);
            komut.ExecuteNonQuery();


        }

        protected void odeme_Click(object sender, EventArgs e)
        {
            
          
            
            Response.Redirect("OdemeBitir.aspx");
        }
    }
}