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
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["kelime"] != null)
            {
                string kelime = Request.QueryString["kelime"];
                SqlConnection baglanti;
                baglanti = new SqlConnection("Data Source=DESKTOP-LV09CUS;Initial Catalog=eticaretvt;Integrated Security=True");
                baglanti.Open();
                SqlDataAdapter komut = new SqlDataAdapter("SELECT * FROM UrunListesi where UrunAdi like '%"+kelime+"%'",baglanti);
                DataTable dt = new DataTable();
            
                komut.Fill(dt);
                if (dt == null){
                    txt.InnerHtml = "Ürün bulunamadı...";
                }
                else
                {
                    arama.DataSource = dt;
                    arama.DataBind();
                }
               

                baglanti.Close();
                

            }
        }
    }
}