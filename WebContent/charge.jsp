<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Modification d'une charge</title>
        <link type="text/css" rel="stylesheet" href="<c:url value="style.css"/>" />
    </head>
    <body>
        <c:import url="menu.jsp" />
        <div>
            <form method="get" action="<c:url value="/modificationCharge"/>">
                <fieldset>
                    <legend>Informations charge</legend>
                    <c:import url="charge_form.jsp" />
                </fieldset>
                <input type="submit" value="Valider"  />
                <input type="reset" value="Remettre à zéro" /> <br />
            </form>
        </div>
    </body>
</html>