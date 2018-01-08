<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Affichage d'une charge</title>
        <link type="text/css" rel="stylesheet" href="<c:url value="style.css"/>" />
    </head>
    <body>
        <c:import url="menu.jsp" />
        <div id="corps">
            <p class="info">${ message }</p>
            <c:if test="${ !erreur }">
                <p>Nom : <c:out value="${ charge.nom }"/></p>
                <p>Priorité : <c:out value="${ charge.priorite }"/></p>
                <p>Localisation : <c:out value="${ charge.localisation }"/></p>
                <p>Etat : <c:out value="${ charge.etat }"/></p>
            </c:if>
        </div>
    </body>
</html>