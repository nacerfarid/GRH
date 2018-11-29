<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>

<%@ include file="/WEB-INF/jsp/includes/role_carrieres.jsp" %>

<html>
<head>
    <title>Liste des postes</title>
    <link href="./style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<%@ include file="/WEB-INF/jsp/includes/header_menu.jsp" %>

<fieldset>
	<legend>Liste des postes</legend>
	<a class="ajout" href="./add_poste.htm">
        Ajouter un poste
    </a>
	<display:table name="postes" sort="list" pagesize="10" class="adminlist" decorator="web.carrieres.ListePostesDecorator" requestURI="liste_postes.htm">
		<display:setProperty name="css.tr.odd" value="row0" />
		<display:setProperty name="css.tr.even" value="row1" />
		<display:column property="libelle" title="Libellé" sortable="true" />
		<display:column property="estOccupeHumanReadable" title="Est occupé" sortable="true" />
		<display:column property="metier" title="Métier" sortable="true" />
		<display:column property="editLink" title="&nbsp;" style="text-align:center" />
		<display:column property="supprLink" title="&nbsp;" style="text-align:center" />
	</display:table>
</fieldset>

</body>
</html>