<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur1" name="valeur1"></p>
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur2" name="valeur2"></p>
    <p>Saisir la valeur A : <input type="text" id="inputValeurA" name="valeurA"></p>
    <p>Saisir la valeur B : <input type="text" id="inputValeurB" name="valeurB"></p>
    <p>Saisir la valeur C : <input type="text" id="inputValeurC" name="valeurC"></p>
    <p><input type="submit" value="Afficher"></p>
</form>
<%-- Récupération des valeurs --%>
<%
    String valeur1 = request.getParameter("valeur1");
    String valeur2 = request.getParameter("valeur2");

    if (valeur1 != null && valeur2 != null) {
        int intValeur1 = Integer.parseInt(valeur1);
        int intValeur2 = Integer.parseInt(valeur2);

        // Comparaison des valeurs
        if (intValeur1 > intValeur2) { 
%>
            <p>Valeur 1 est supérieure à Valeur 2.</p>
<%
        } else if (intValeur1 < intValeur2) { 
%>
            <p>Valeur 1 est inférieure à Valeur 2.</p>
<%
        } else { 
%>
            <p>Valeur 1 est égale à Valeur 2.</p>
<%
        }
    }

    String valeurA = request.getParameter("valeurA");
    String valeurB = request.getParameter("valeurB");
    String valeurC = request.getParameter("valeurC");
    String resultatExo1 = "";

    if (valeurA != null && valeurB != null && valeurC != null) {
        int intValeurA = Integer.parseInt(valeurA);
        int intValeurB = Integer.parseInt(valeurB);
        int intValeurC = Integer.parseInt(valeurC);

        // Comparaison de C entre A et B
        if (intValeurC > intValeurA && intValeurC < intValeurB) {
            resultatExo1 = "Oui, C est compris entre A et B.";
        } else {
            resultatExo1 = "Non, C n'est pas compris entre A et B.";
        }
    }
%>

<h2>Exercice 1 : Comparaison 1</h2>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>
A, B et C et dites nous si la valeur de C est comprise entre A et B.</br>
Exemple :</br>
A = 10</br>
B = 20</br>
C = 15</br>
Oui C est compris entre A et B</p>

<%= resultatExo1 %>

<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>
<%
    if (valeur1 != null) {
        int number = Integer.parseInt(valeur1);
        // Vérification pair ou impair
        if (number % 2 == 0) { 
%>
            <p>Le nombre est pair.</p>
<%
        } else { 
%>
            <p>Le nombre est impair.</p>
<%
        }
    }
%>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
