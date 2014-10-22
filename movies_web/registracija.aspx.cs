using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using movies_service;
using movies_service.Data;

namespace movies_web
{
    public partial class registracija : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnPotvrdi_Click(object sender, EventArgs e)
        {
                Kupci novi = new Kupci();
                novi.Ime = txtIme.Text;
                novi.Prezime = txtPrezime.Text;
                novi.DatumRegistracije = DateTime.Now;
                novi.Email = txtEmail.Text;
                string salt = movies_service.Util.UIHelper.GenerateSalt();
                novi.LozinkaSalt = salt;
                novi.LozinkaHash = movies_service.Util.UIHelper.GenerateHash(txtLozinka.Text, salt);

                DAKupci.Insert(novi);

                Response.Redirect("login.aspx");

                ClearForm();
            
            //else
            //{
            //    string display = "E-mail je već zauzet!";
            //    ClientScript.RegisterStartupScript(this.GetType(), "Upozorenje", "alert('" + display + "');", true);
            //}
        }

        private void ClearForm()
        {
            txtIme.Text = "";
            txtPrezime.Text = "";
            txtEmail.Text = "";
            txtKorisnickoIme.Text = "";
            txtLozinka.Text = "";
            txtPotvrdaLozinke.Text = "";
        }
    }
}