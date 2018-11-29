<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>

<%@ include file="/WEB-INF/jsp/includes/role_formations.jsp" %>

<html>
<head>
    <title>Liste des sessions de formation</title>
    <link href="./style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<%@ include file="/WEB-INF/jsp/includes/header_menu.jsp" %>

<fieldset>
	<legend>Liste des sessions de formation</legend>
	<a class="ajout" href="./add_session_formation.htm?id_plan_formation=${id_plan_formation}">
        Ajouter une session de formation
    </a>
	<display:table name="session_formations" sort="list" pagesize="10" class="adminlist" decorator="web.formations.ListeSessionFormationsDecorator" requestURI="liste_session_formations.htm">
		<display:setProperty name="css.tr.odd" value="row0" />
		<display:setProperty name="css.tr.even" value="row1" />
		<display:column property="dateDebutShortFormat" title="D&eacute;but" sortable="true" />
		<display:column property="dateFinShortFormat" title="Fin" sortable="true" />
		<display:column property="formation" title="Formation" sortable="true" />
		<display:column property="nbParticipants" title="Nombre de participants" sortable="true" />
		<display:column property="prixTotal" title="Prix total (En &euro)" sortable="true" />
		<display:column property="subscribeLink" title="Inscription(s)" style="text-align:center" />
		<display:column property="editLink" title="&nbsp;" style="text-align:center" />
		<display:column property="supprLink" title="&nbsp;" style="text-align:center" />
	</display:table>
	<br />
	<a href="liste_plan_formations.htm">Retour</a>
</fieldset>


</body>
</html>