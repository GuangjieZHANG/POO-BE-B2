<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Choix d'un boitier</title>
        <link type="text/css" rel="stylesheet" href="<c:url value="style.css"/>" />
    </head>
    <body>
        <c:import url="menu.jsp" />
        <div>
            <form method="get" action="<c:url value="/choisirBoitier"/>">
                <fieldset>
                    <legend>Id boitier</legend>
                    <input type="text" id="idBoitier" name="idBoitier" value="" size="2" maxlength="2" />
                </fieldset>
                <input type="submit" value="Valider"  />
                <input type="reset" value="Remettre à zéro" /> <br />
            </form>
        </div>
    </body>
</html>