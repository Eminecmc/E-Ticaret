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
    public partial class urun : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["urunAdi"];
            SqlConnection baglanti;
            baglanti = new SqlConnection("Data Source=DESKTOP-LV09CUS;Initial Catalog=eticaretvt;Integrated Security=True");
            baglanti.Open();
           
            SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM UrunListesi where kategori="+id, baglanti);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            tekrar.DataSource = dt;
            tekrar.DataBind();

            SqlCommand komut = new SqlCommand("select KategoriAdi from Kategori where KategoriID=" + id, baglanti);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {

                Session.Add("kategoriAdi", dr["KategoriAdi"]);
                Session.Timeout = 1;
               
            }
            kAdi.Text = Session["kategoriAdi"].ToString();
            KAdi1.Text = Session["kategoriAdi"].ToString();
            baglanti.Close();

        }
    }
}