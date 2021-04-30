using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ETicaret.Site
{
    public partial class sepet1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["kullanici"] != null)
            {
                string id = Session["kullanici"].ToString();
                SqlConnection baglanti;
                baglanti = new SqlConnection("Data Source=DESKTOP-LV09CUS;Initial Catalog=eticaretvt;Integrated Security=True");
                baglanti.Open();


                SqlDataAdapter komut = new SqlDataAdapter("SELECT SepetFoto,SepetAdi,SepetFiyat FROM Sepet1 WHERE KullaniciID=" + id, baglanti);
                DataTable dt = new DataTable();
                komut.Fill(dt);
                spt.DataSource = dt;
                spt.DataBind();

                SqlDataAdapter toplam = new SqlDataAdapter("SELECT sum (SepetFiyat) as Toplam FROM Sepet1 WHERE KullaniciID=" + id, baglanti);
                DataTable dt1 = new DataTable();
                toplam.Fill(dt1);
                toplam1.DataSource = dt1;
                toplam1.DataBind();
                baglanti.Close();

            }
            else
            {
                Response.Redirect("/Giris/login.aspx");
            }
            
        }
    }
}