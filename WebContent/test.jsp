
<%@ page import="java.util.*" %>

<%

  /* Création de la liste et des données */

  List<Map<String, String>> maListe = new ArrayList<Map<String, String>>();

  Map<String, String> news = new HashMap<String, String>();

  news.put("titre", "Titre de ma première news");

  news.put("contenu", "corps de ma première news");

  maListe.add(news);

  news = new HashMap<String, String>();

  news.put("titre", "Titre de ma seconde news");

  news.put("contenu", "corps de ma seconde news");

  maListe.add(news);

  pageContext.setAttribute("maListe", maListe);

%>


<c:forEach items="${maListe}" var="news">

<div class="news">

  <div class="titreNews">

      <c:out value="${news['titre']}" />

  </div>

  <div class="corpsNews">

      <c:out value="${news['contenu']}" />

  </div>

</div>

</c:forEach>

    <form method="post" action="resTest.jsp">

      <p>

        <label for="nom">Entrez ici votre nom de famille :</label><br />

        <input type="text" name="nom" id="nom" tabindex="10" />

      </p>

      <p>

        <label for="prenom">Entrez ici votre prénom :</label><br />

        <input type="text" name="prenom" id="prenom" tabindex="20" />

      </p>

      <p>

        <label for="pays">Dans quel(s) pays avez-vous déjà voyagé ?</label><br />

        <select name="pays" id="pays" multiple="multiple" tabindex="30">

          <option value="France">France</option>

          <option value="Espagne">Espagne</option>

          <option value="Italie">Italie</option>

          <option value="Royaume-uni">Royaume-Uni</option>

          <option value="Canada">Canada</option>

          <option value="Etats-unis">Etats-Unis</option>

          <option value="Chine">Chine</option>

          <option value="Japon">Japon</option>

        </select>

      </p>

      <p>

        <label for="autre">Entrez ici les autres pays que vous avez visités, séparés par une virgule :</label><br />

        <textarea id="autre" name="autre" rows="2" cols="40" tabindex="40" placeholder="Ex: Norvège, Chili, Nouvelle-Zélande"></textarea>

      </p>

      <p>

        <input type="submit" value="Valider" /> <input type="reset" value="Remettre à zéro" />

      </p>

    </form>


</html>