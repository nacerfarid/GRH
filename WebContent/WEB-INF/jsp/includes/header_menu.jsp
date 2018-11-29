<%@ taglib uri="http://jakarta.apache.org/taglibs/session-1.0" prefix="sess" %>
<body onload="doWave(0)">
<div class="gbh" style="right: 0pt;"></div>
<div id="titre" align="left" style="float: left; font-size: 84%; font-family: arial,sans-serif !important;">
	<nobr><b><marquee direction="right"scrollamount='4' onmouseover="this.stop();" onmouseout="this.start();">Gestion du Personnel</marquee></b></nobr>
</div>
<div id="bar" align="right" style="padding: 0pt 0pt 15px; font-size: 84%;">
	<nobr>
		<sess:existsAttribute name="nom">
		<b>Bienvenue <sess:attribute name="nom" /></b>
		|
		</sess:existsAttribute>
		<a href="accueil.htm">Accueil</a>
		|
		<sess:existsAttribute name="nom" value="false">
		<a href="identification.htm">Connexion</a>
		</sess:existsAttribute>
		<sess:existsAttribute name="nom">
		<a href="logout.htm">Déconnexion</a>
		</sess:existsAttribute>
	</nobr>
</div>

<div id="leftsidebar">
	<ul class="menu">
		<li class="subhead"><a href="accueil.htm" style="background-color: rgb(201, 215, 241); margin-bottom: 10px;">Accueil</a></li>
		
		<li class="subhead"><a href="accueil_rh.htm" style="background-color: rgb(201, 215, 241  ); margin-bottom: 10px;">Accueil Gestionnaire</a></li>
		
		<li class="subhead"><a href="" style="background-color: rgb(77, 127, 222);">Administration</a></li>
			<li class="subtitle"><a href="liste_employes.htm" style="border-bottom: 1px solid rgb(77, 127, 222); color: rgb(77, 127, 222);">Gestion des employ&eacute;s</a></li>
			<li class="subtitle"><a href="liste_utilisateurs.htm" style="color: rgb(77, 127, 222);">Gestion des utilisateurs</a></li>
			
		
		<li class="subhead"><a href="" style="background-color: rgb(148, 219, 77);">Carrières</a></li>
			<li class="subtitle"><a href="liste_postes.htm" style="border-bottom: 1px solid rgb(148, 219, 77); color: rgb(148, 219, 77);">Gestion des postes</a></li>
			<!-- <li class="subtitle"><a href="liste_evaluations.htm" style="border-bottom: 1px solid rgb(148, 219, 77); color: rgb(148, 219, 77);">Gestions des evaluations</a></li>-->
			<li class="subtitle"><a href="liste_competences.htm" style="border-bottom: 1px solid rgb(148, 219, 77); color: rgb(148, 219, 77);">Gestion des compétences</a></li>
			<li class="subtitle"><a href="liste_metiers.htm" style="color: rgb(148, 219, 77);">Catalogue de m&eacute;tiers</a></li>
		
		<li class="subhead"><a href="" style="background-color: rgb(191, 191, 191);">Formations</a></li>
			<li class="subtitle"><a href="liste_formations.htm" style="border-bottom: 1px solid rgb(191, 191, 191); color: rgb(191, 191, 191);">Catalogue de formation</a></li>
			<!-- <li class="subtitle"><a href="liste_plan_formations.htm" style="color: rgb(191, 191, 191);">Plans de formations</a></li>-->
	</ul>
</div>


<p style="text-align:center;text-shadow: 0px 0px 5px rgba(249, 15, 15, 0.75);color: #0080ff;font-size: 62px;font-family:Impact">PROJET DE FIN D'ÉTUDES</p>
<!--  <p style="text-align:center;font-size:29px;font-family:Chiller;color:green;">Encadré par:Professeur Leila Essanouni</p> -->
<script language="JavaScript">
var theText = "Réalisé par: Ismail Elkodadi et Nacer Farid";

function nextSize(i,incMethod,textLength)
{
if (incMethod == 1) return (17*Math.abs( Math.sin(i/(textLength/3.14))) );
if (incMethod == 2) return (25*Math.abs( Math.cos(i/(textLength/3.14))));
}

function sizeCycle(text,method,dis)
{
	output = "";
	for (i = 0; i < text.length; i++)
	{
		size = parseInt(nextSize(i +dis,method,text.length));
		output += "<font style='font-size: "+ size +"pt'>" +text.substring(i,i+1)+ "</font>";
	}
	theDiv.innerHTML = output;
}

function doWave(n) 
{   
	sizeCycle(theText,1,n);
	if (n > theText.length) {n=0}
	setTimeout("doWave(" + (n+1) + ")", 50);
}
</script>
<div ID="theDiv" align="center">

</div>

<MARQUEE BEHAVIOR="alternate" DIRECTION="left" BGCOLOR="#E6E6E6" WIDTH="100%" HEIGHT=20>
<CENTER>ÉCOLE SUPÉRIEURE DE TECHNOLOGIE À BERRECHID</CENTER>
</MARQUEE>

</body>