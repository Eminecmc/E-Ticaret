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
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-LV09CUS;Initial Catalog=eticaretvt;Integrated Security=True");
            baglanti.Open();
            SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM Kategori", baglanti);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            NavbarList.DataSource = dt;
            NavbarList.DataBind();
            baglanti.Close();
            if (IsPostBack)
            {
                string kelime1 = search1.Text.Trim();
                string url = string.Format("search.aspx?kelime={0}", kelime1);
                Response.Redirect(url);
            }

        }
    }
} 