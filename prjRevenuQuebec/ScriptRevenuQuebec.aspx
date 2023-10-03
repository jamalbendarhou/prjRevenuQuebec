<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScriptRevenuQuebec.aspx.cs" Inherits="prjRevenuQuebec.ScriptRevenuQuebec" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>REVENU QUEBEC</title>
</head>
    <link rel="stylesheet" type="text/css" href="CSS/raggae.css" />
<body>
    <img src="images/logo.svg" alt="Logo" style="width:100px;" />
    <form id="form1" runat="server">        
    <hr />
    <h1>REVENU-QUEBEC</h1>
    <hr />
    <h2>Calcul des deductions avantages</h2>
    <br />
    <table id="tableau">

        <tr>
            <td>votre nom :</td>
            <td>               
                <asp:TextBox ID="txtNom" CssClass="boite" runat="server"></asp:TextBox>              
            </td>
        </tr>
        <tr>
            <td>votre sexe :</td>
            <td>             
                <asp:RadioButton ID="radHomme" runat="server" Text="Homme" groupName="genre" />
                <br />
                <asp:RadioButton ID="radFemme" runat="server" Text="Femme" groupName="genre" />              
            </td>
        </tr>
        <tr>
            <td>votre Salaire :</td>
            <td>                
                <asp:TextBox ID="txtSalaire" CssClass="boite" runat="server"></asp:TextBox>                
            </td>
        </tr>
        <tr>
            <td>Etes-vous marie ?</td>
            <td>
                <asp:CheckBox ID="cBoxMarie" runat="server" />
               
            </td>
        </tr>
        <tr>
            <td>Nombre d' enfants :</td>
            <td>
               <asp:DropDownList ID="ddlNbrEnfant" runat="server">
                        <asp:ListItem Text="0" Value="0" />
                        <asp:ListItem Text="1" Value="1" />
                        <asp:ListItem Text="2" Value="2" />
                        <asp:ListItem Text="3" Value="3" />
                        <asp:ListItem Text="4" Value="4" />
                        <asp:ListItem Text="5" Value="5" />
                        <asp:ListItem Text="6" Value="6" />
                        <asp:ListItem Text="7" Value="7" />
                        <asp:ListItem Text="8" Value="8" />
                        <asp:ListItem Text="9" Value="9" />
                        <asp:ListItem Text="10" Value="10" />
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="centrer">
            <td>

                <asp:Button ID="btnCalculer" CssClass="bouton" runat="server" Text="Calculer" OnClick="btnCalculer_Click" />

            </td>
               
            <td>
                <asp:Button ID="btnRecommencer" CssClass="bouton" runat="server" Text="Recommencer" OnClick="btnRecommencer_Click" />
            </td>
        </tr>
        <tr class="centrer">
            <td colspan="2">
                <asp:Label ID="lblResultat" CssClass="resultat" runat="server" Text=""></asp:Label>
            </td>
        </tr>


    </table>
    <div id="photoRQ">
        <img src="images/imageRQ.png" alt="Image de Revenu-Quebec" style="max-width: 100%;" />
    </div>
        
    </form>
</body>
</html>
