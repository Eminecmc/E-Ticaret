using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ETicaret.Giris
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection baglanti;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void submit_Click(object sender, EventArgs e)
        {

            baglanti = new SqlConnection("Data Source=DESKTOP-LV09CUS;Initial Catalog=eticaretvt;Integrated Security=True");
            baglanti.Open();

            string sifreli = sifrele.MD5Olustur(sifre.Text);
            SqlCommand komut = new SqlCommand("SELECT * FROM KULLANICILAR1 WHERE UserMail=@P1 AND UserSifre=@P2", baglanti);
            komut.Parameters.AddWithValue("@P1", email.Text);
            komut.Parameters.AddWithValue("@P2",sifreli);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
               
                Session.Add("kullanici", dr["UserID"]);
                mesaj.Text = Session["kullanici"].ToString();
                Session.Timeout = 1;
                Response.Redirect("/site/index.aspx");
               
            }
            else
            {
                mesaj.Text="kullanıcı adı veya sifresi hatalı";
            }
            baglanti.Close();

        }
    }
}