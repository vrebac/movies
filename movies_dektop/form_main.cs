using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace movies_dektop
{
    public partial class form_main : Form
    {
        public form_main()
        {
            InitializeComponent();
            this.IsMdiContainer = true;
            this.FormBorderStyle = FormBorderStyle.FixedDialog;
            menuStrip1.Renderer = new MyRenderer();
        }

        private class MyRenderer : ToolStripProfessionalRenderer
        {
            public MyRenderer() : base(new MyColors()) { }
        }

        private class MyColors : ProfessionalColorTable
        {
            public override Color MenuItemSelected
            {
                get { return Color.FromArgb(0,153,255); }
            }
            public override Color MenuItemSelectedGradientBegin
            {
                get { return Color.FromArgb(0, 153, 255); }
            }
            public override Color MenuItemSelectedGradientEnd
            {
                get { return Color.FromArgb(0, 153, 255); }
            }
            public override Color MenuItemPressedGradientBegin
            {
                get
                {   return Color.FromArgb(0, 153, 255);}
            }
            public override Color MenuItemPressedGradientEnd
            {
                get
                { return Color.FromArgb(0, 0, 0);}
            }
        }

        private void korisniciToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void form_main_Load(object sender, EventArgs e)
        {

        }

        private void noviKorisnikToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void noviKorisnikToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            foreach (Form f in Application.OpenForms)
            {

                if (f.Text == "Dodaj novog korisnika")
                {
                    f.Close();
                    break;
                }
            }
                Users.form_addUser f2 = new Users.form_addUser();
                f2.MdiParent = this;
                f2.FormBorderStyle = FormBorderStyle.FixedDialog;
                f2.Show();
        }
    }
}
