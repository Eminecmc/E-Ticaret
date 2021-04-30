using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ETicaret.Giris
{
    public partial class signUp : System.Web.UI.Page
    {
        SqlConnection baglanti;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti = new SqlConnection("Data Source=DESKTOP-LV09CUS;Initial Catalog=eticaretvt;Integrated Security=True");
            baglanti.Open();

            string sifreli = sifrele.MD5Olustur(sifreOlusturma.Text);
            SqlCommand komut = new SqlCommand("INSERT INTO KULLANICILAR1(UserAdi,UserSoyadi,UserMail,UserSifre)values(@P1,@P2,@P3,@P4)", baglanti);
            komut.Parameters.AddWithValue("@P1", Adiniz.Text);
            komut.Parameters.AddWithValue("@P2", Soyadiniz.Text);
            komut.Parameters.AddWithValue("@P3", mailOlusturma.Text);
            komut.Parameters.AddWithValue("@P4",sifreli);

            if(Adiniz.Text=="" || Soyadiniz.Text=="" ||mailOlusturma.Text=="" || sifreOlusturma.Text == "")
            {
                Mesaj.Text = "Eksik bilgi girdiniz ";
            }
            else
            {
                komut.ExecuteNonQuery();
                Mesaj.Text = "Başarılı kayıt olundu.";
                Mesaj.Text += "<meta http-equiv='refresh' content='2;url=login.aspx'>";
               
            }
           
           
            baglanti.Close();
        }
    }
}