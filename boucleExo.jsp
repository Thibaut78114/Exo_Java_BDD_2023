<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeur = request.getParameter("valeur"); %>

<%-- Vérification de l'existence de la valeur --%>
<% if (valeur != null && !valeur.isEmpty()) { %>

<%-- Affichage d'une ligne d'étoiles en fonction de la valeur saisie --%>
<% int cpt = Integer.parseInt(valeur); %>
<p>
<% for (int i = 1; i <= cpt; i++) { %>
   <%= "*" %>
<% } %>
</p>

<h2>Exercice 1 : Le carré d'étoiles</h2>
<p>Ecrire le code afin de produire un carré d'étoile</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>
<% for (int i = 0; i < cpt; i++) { %>
    <%
    for (int j = 0; j < cpt; j++) {
        out.print("* ");
    }
    %>
    <br>
<% } %>
</p>

<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<% for (int i = 1; i <= cpt; i++) { %>
    <% for (int j = 1; j <= i; j++) { %>
        <%= "*" %>
    <% } %>
    <br>
<% } %>

<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<% for (int i = cpt; i >= 1; i--) { %>
    <% for (int j = 1; j <= i; j++) { %>
        <%= "*" %>
    <% } %>
    <br>
<% } %>

<h2>Exercice 4 : Triangle rectangle aligné sur la droite</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<% for (int i = 1; i <= cpt; i++) { %>
    <% for (int j = cpt - i; j > 0; j--) { %>
        <%= "&nbsp;&nbsp;" %>
    <% } %>
    <% for (int k = 1; k <= i; k++) { %>
        <%= "*" %>
    <% } %>
    <br>
<% } %>


<h2>Exercice 5 : Triangle isocele</h2>
<p>Ecrire le code afin de produire un triangle isocèle</p>
<% for (int i = 1; i <= cpt; i++) { %>
    <% for (int j = 1; j <= cpt - i; j++) { %>
        <%= "&nbsp;&nbsp;" %>
    <% } %>
    <% for (int k = 1; k <= 2 * i - 1; k++) { %>
        <%= "*" %>
    <% } %>
    <br>
<% } %>



<h2>Exercice 6 : Le demi losange</h2>
<p>Ecrire le code afin de produire un demi-losange</p>
<% for (int i = 1; i <= cpt; i++) { %>
    <% for (int j = 1; j <= cpt - i; j++) { %>
        <%= "&nbsp;&nbsp;" %>
    <% } %>
    <% for (int k = 1; k <= i; k++) { %>
        <%= "*" %>
    <% } %>
    <br>
<% } %>


<h2>Exercice 7 : La table de multiplication</h2>
<p>Ecrire le code afin de créser une table de multiplication</p>
<% int num = Integer.parseInt(valeur); %>
<% for (int i = 1; i <= 10; i++) { %>
    <p><%= num %> x <%= i %> = <%= num * i %></p>
<% } %>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>

