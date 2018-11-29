<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/WEB-INF/jsp/includes/role_carrieres.jsp" %>

<html>
<head>
    <title>Ajout ou modification d'un m&eacute;tier</title>
    <link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<%@ include file="/WEB-INF/jsp/includes/header_menu.jsp" %>

<form:form method="post">
<fieldset>
<legend>M&eacute;tier</legend>
    <div class="ligne">
        <span class="label">Libell&eacute; :</span>
        <form:input path="libelle" maxlength="128" />
        <form:errors path="libelle" cssClass="error"/>
    </div>
    <div class="ligne">
        <span class="label">Cat&eacute;gorie :</span>
        <form:select path="categorie">
        	<form:options items="${categories}" itemValue="id" />
        </form:select>
        <a href="add_categorie.htm">Ajouter</a>
        <a href="liste_categories.htm">Gestion des cat&eacute;gories</a>
    </div>
    <div class="ligne">
        <span class="label">&nbsp;</span>
        <a href="liste_metiers.htm">Retour</a>&nbsp;-&nbsp;<input type="submit" value="Valider" />
    </div>
</fieldset>
</form:form>

</body>
</html>