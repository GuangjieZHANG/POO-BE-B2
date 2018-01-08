<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Affichage d'un boitier</title>
        <link type="text/css" rel="stylesheet" href="<c:url value="style.css"/>" />
    </head>
    <body>
        <c:import url="menu.jsp" />
        <div id="corps">
            <p class="info">${ message }</p>
            <c:if test="${ !erreur }">
                <p>Nom : <c:out value="${ boitier.nom }"/></p>
                <p>Priorité : <c:out value="${ boitier.id }"/></p>
                <p>Localisation : <c:out value="${ boitier.calibreProtection }"/></p>
                <p>Charges :<br /> <c:out value="${ boitier.charges[0].nom }"/>
                <br /> <a href="#"><c:out value="${ boitier.charges[1].nom }"/></a>
                <br /> <a href="#"><c:out value="${ boitier.charges[2].nom }"/></a>
                <br /> <a href="#"><c:out value="${ boitier.charges[3].nom }"/></a>
                <br /> <a href="#"><c:out value="${ boitier.charges[4].nom }"/></a>
                <br /> <a href="#"><c:out value="${ boitier.charges[5].nom }"/></a>
                <br /> <a href="#"><c:out value="${ boitier.charges[6].nom }"/></a>
                <br /> <a href="#"><c:out value="${ boitier.charges[7].nom }"/></a></p>
            </c:if>
        </div>
    </body>
</html>