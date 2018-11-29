<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>

<%@ include file="/WEB-INF/jsp/includes/role_administration.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
    <title>Ajout ou modification d'un employé</title>
    <link href="style/style.css" rel="stylesheet" type="text/css" />
    
    <script type="text/javascript" src="./datepicker/js/datepicker.js"></script>
    <link href="./datepicker/css/datepicker.css" rel="stylesheet" type="text/css" />
</head>
<body>

<%@ include file="/WEB-INF/jsp/includes/header_menu.jsp" %>

<form:form method="post">
<fieldset>
<legend>Employé</legend>
    <fieldset>
        <legend>Informations</legend>
        <div id="bloc_nom">
            <div class="ligne">
                <span class="label">Civilité :</span>

                <form:select path="civilite">
        			<form:options items="${civilites}" itemLabel="libelle" itemValue="id" />
        		</form:select>
            </div>
            <div class="ligne">
                <span class="label">Nom :</span>
				<form:input path="nom" maxlength="128" />
				<form:errors path="nom" cssClass="error"/>
            </div>
            <div class="ligne">
                <span class="label">Prénom :</span>
                <form:input path="prenom" maxlength="128" />
				<form:errors path="prenom" cssClass="error"/>
            </div>
            <div class="ligne">
                <span class="label">Date de naissance :</span>
                <form:input path="dateNaissance" cssClass="format-d-m-y" maxlength="10" size="10" />
				<form:errors path="dateNaissance" cssClass="error"/>
            </div>
        </div>
        <div id="bloc_mail_tel">
            <div class="ligne">
                <span class="label">Email :</span>
                <form:input path="email" maxlength="128" />
				<form:errors path="email" cssClass="error"/>
            </div>
            <div class="ligne">
                <span class="label">Tél. pro :</span>
                <form:input path="telephonePro" maxlength="20" />
				<form:errors path="telephonePro" cssClass="error"/>
            </div>
            <div class="ligne">
                <span class="label">Tél. perso :</span>
                <form:input path="telephonePerso" maxlength="20" />
				<form:errors path="telephonePerso" cssClass="error"/>
            </div>
            <div class="ligne">
                <span class="label">Tél. mobile :</span>
                <form:input path="telephoneMobile" maxlength="20" />
				<form:errors path="telephoneMobile" cssClass="error"/>
            </div>
            <div class="ligne">
                <span class="label">Fax :</span>
                <form:input path="fax" maxlength="20" />
				<form:errors path="fax" cssClass="error"/>
            </div>
            <div class="ligne">
                <span class="label">Rue :</span>
                <form:input path="adrRue" maxlength="255" />
				<form:errors path="adrRue" cssClass="error"/>
            </div>
            <div class="ligne">
                <span class="label">CP :</span>
                <form:input path="adrCp" maxlength="10" />
				<form:errors path="adrCp" cssClass="error"/>
            </div>
            <div class="ligne">
                <span class="label">Ville :</span>
                <form:input path="adrVille" maxlength="128" />
				<form:errors path="adrVille" cssClass="error"/>
            </div>
        </div>
    </fieldset>
    
    <fieldset>
        <legend>Emplois Précédents</legend>
        <a class="ajout" href="javascript:alert('Vous devez d\'abord ajouter l\'employé.');">
            Ajouter un emploi
        </a>
        <display:table name="emploiPrecedents" sort="list" class="adminlist" decorator="web.administration.ListeEmploiPrecedentsDecorator">
			<display:setProperty name="css.tr.odd" value="row0" />
			<display:setProperty name="css.tr.even" value="row1" />
			<display:column property="dateDebutShortFormat" title="Date de début" />
			<display:column property="dateFinShortFormat" title="Date de Fin" />
			<display:column property="poste" title="Poste" />
			<display:column property="entreprise" title="Entreprise" />
			<display:column property="contrat" title="Contrat" />
			<display:column property="editLink" title="&nbsp;" style="text-align:center" />
			<display:column property="supprLink" title="&nbsp;" style="text-align:center" />
		</display:table>
    </fieldset>
    
    <fieldset>
        <legend>Diplomes</legend>
        <a class="ajout" href="javascript:alert('Vous devez d\'abord ajouter l\'employé.');">
            Ajouter un diplome
        </a>
        <display:table name="diplomes" sort="list" class="adminlist" decorator="web.administration.ListeDiplomesDecorator">
			<display:setProperty name="css.tr.odd" value="row0" />
			<display:setProperty name="css.tr.even" value="row1" />
			<display:column property="annee" title="Année" />
			<display:column property="denomination" title="Dénomination" />
			<display:column property="etablissement" title="Établissemnt" />
			<display:column property="niveauEtude" title="Niveau" />
			<display:column property="editLink" title="&nbsp;" style="text-align:center" />
			<display:column property="supprLink" title="&nbsp;" style="text-align:center" />
		</display:table>
    </fieldset>
    
    <fieldset>
    <legend>Divers</legend>
		<div class="ligne">
		    <span class="label">Situation familiale :</span>
		    <form:select path="situationFamiliale">
       			<form:options items="${situationsFamiliale}" itemLabel="libelle" itemValue="id" />
       		</form:select>
		</div>
		<div class="ligne">
		    <span class="label">Nombre d'enfants :</span>
		    <form:select path="nbEnfants">
       			<form:options items="${nbsEnfants}" />
       		</form:select>
		</div>
		<div class="ligne">
		    <span class="label">Description :</span>
		    <form:textarea path="description" />
		    <form:errors path="description" cssClass="error"/>
		</div>    
    </fieldset>

    <div class="ligne">
        <span class="label">&nbsp;</span>
        <a href="liste_employes.htm">Retour</a>&nbsp;-&nbsp;<input type="submit" value="Valider" />
    </div>
</fieldset>
</form:form>

</body>
</html>