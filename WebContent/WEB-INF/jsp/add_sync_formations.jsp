<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/WEB-INF/jsp/includes/role_formations.jsp" %>

<html>
<head>
    <title>Ajouter/Synchroniser des formations</title>
    <link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<%@ include file="/WEB-INF/jsp/includes/header_menu.jsp" %>

<form:form method="post" action="add_sync_formations.htm" enctype="multipart/form-data">
<fieldset>
<legend>Ajouter/Synchroniser des formations</legend>
    <div class="ligne">
        <span class="label">Fichier XML :</span>
        <input type="file" name="file"/>
		<form:errors path="file" cssClass="error"/>	
    </div>
    <div class="ligne">
        <span class="label">&nbsp;</span>
        <a href="liste_formations.htm">Retour</a>&nbsp;-&nbsp;<input type="submit" value="Importer" />
    </div>
</fieldset>
</form:form>

</body>
</html>