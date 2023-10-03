    function calculer() {
        let nom = document.getElementById("txtNom").value;
        let titre;
        if (document.getElementById("radSexeHomme").checked === true) {
            titre = "monsieur";
        } else {
            titre = "madame";
        }

        let salaire = parseFloat(document.getElementById("txtSalaire").value);
        let statut;
        if (document.getElementById("cBoxMariee").checked === true) {
            statut = "marie";
        } else {
            statut = "celibataire";
        }

        let nbrEnfant = parseInt(document.getElementById("listNbrEnfant").value);

        let deduction;
        let avantage;
        if (titre === "monsieur") {
            deduction = salaire * parseFloat(0.3);
            avantage = parseFloat(0);
        } else {
            deduction = salaire * parseFloat(0.2);
            avantage = nbrEnfant * parseFloat(5000);
        }

        if (statut === "marie") {
            deduction += salaire * parseFloat(0.1);
        } else {
            deduction += salaire * parseFloat(0.2)
        }


        let revenu = salaire - deduction + avantage;

        let info =
            titre + " " + nom + ", <br /> votre salaire brut : " +
            salaire +
            " <br /> vos déductions : " +
            deduction +
            " <br /> vos avantages : " +
            avantage +
            " <br /> votre revenu : " +
            revenu +
            " <br /> Merci. ";

        document.getElementById("parResultat").innerHTML = info;
    }
function recommencer() {

    document.getElementById('txtNom').value = '';
    document.getElementById('radSexeHomme').checked = false;
    document.getElementById('radSexeFemme').checked = false;
    document.getElementById('txtSalaire').value = '';
    document.getElementById('cBoxMariee').checked = false;
    document.getElementById('listNbrEnfant').value = '0';
    document.getElementById('parResultat').innerHTML = '';
    document.getElementById('txtNom').focus();
}