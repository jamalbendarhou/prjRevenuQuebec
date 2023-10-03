using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace prjRevenuQuebec
{
    public partial class ScriptRevenuQuebec : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculer_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtNom.Text) || string.IsNullOrEmpty(txtSalaire.Text))
            {
                lblResultat.Text = "veuillez remplir tous les champs";
                return; 
            }

            if (radHomme.Checked == false && radFemme.Checked == false)
            {
                lblResultat.Text = "veuillez indiquer votre sexe";
                return;
            }

            string nom, statut, titre, info;
            decimal salaire, deduction, avantage, revenu;
            Int16 nbrEnfant;
            nom = txtNom.Text;
                      
            if (radHomme.Checked == true) {
                    titre = "monsieur";
                } else
                {
                    titre = "madame";
                }

            salaire = Convert.ToDecimal(txtSalaire.Text);

                if (cBoxMarie.Checked == true) {
                        statut = "marie";
                    } else
                    {
                        statut = "celibataire";
                    }

            nbrEnfant = Convert.ToInt16(ddlNbrEnfant.Text);

            if (titre == "monsieur")
                  {
                        deduction = salaire * Convert.ToDecimal(0.3);
                        avantage = 0;
                  }
             else
                  {
                        deduction = salaire * Convert.ToDecimal(0.2);
                        avantage = nbrEnfant * Convert.ToDecimal(5000);
                  }

             if (statut == "marie")
                  {
                        deduction += salaire * Convert.ToDecimal(0.1);
                  }
             else
                  {
                        deduction += salaire * Convert.ToDecimal(0.2);
                  }

               revenu = salaire - deduction + avantage;
               info =
                        titre + " " + nom + ", <br /> votre salaire brut : " +
                        salaire +
                        " <br /> vos déductions : " +
                        deduction +
                        " <br /> vos avantages : " +
                        avantage +
                        " <br /> votre revenu : " +
                        revenu +
                    " <br /> Merci. ";

                    lblResultat.Text = info;
                    }

        protected void btnRecommencer_Click(object sender, EventArgs e)
        {
            txtNom.Text =   txtSalaire.Text = lblResultat.Text ="";
            radHomme.Checked = radFemme.Checked = cBoxMarie.Checked = false;
            ddlNbrEnfant.Text = "0";
            txtNom.Focus();
        }
    }
}