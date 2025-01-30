<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les chaines</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les chaines de charactères</h1>
<form action="#" method="post">
    <p>Saisir une chaine (Du texte avec 6 caractères minimum) : <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null) { %>

    <%-- Obtention de la longueur de la chaîne --%>
    <% int longueurChaine = chaine.length(); %>
    <p>La longueur de votre chaîne est de <%= longueurChaine %> caractères</p>

    <%-- Extraction du 3° caractère dans votre chaine --%>
    <% char caractereExtrait = chaine.charAt(2); %>
    <p>Le 3° caractère de votre chaine est la lettre <%= caractereExtrait %></p>

    <%-- Obtention d'une sous-chaîne --%>
    <% String sousChaine = chaine.substring(2, 6); %>
    <p>Une sous chaine de votre texte : <%= sousChaine %></p>

    <%-- Recharche de la lettre "e" --%>
    <% char recherche = 'e'; 
       int position = chaine.indexOf(recherche); %>
    <p>Votre premier "e" est en : <%= position %></p>

    
<h2>Exercice 1 : Combien de 'e' dans notre chaine de charactère ?</h2>
<p>Ecrire un programme pour compter le nombre de lettre e dans votre chaine de charactères</p>
<%
    int count = 0; // Déclaration du compteur en dehors de la boucle
    for (int i = 0; i < chaine.length(); i++) { 
        if (chaine.charAt(i) == 'e') {
            count++; // On incrémente correctement le compteur
        } 
    } 
%>
<p>Le nombre de lettres 'e' dans la chaîne est : <%= count %></p>

<h2>Exercice 2 : Affichage verticale</h2>
<p>Ecrire le programme pour afficher le texte en vertical</br>
Exemple : Bonjour</br>
B</br>
o</br>
n</br>
j</br>
o</br>
u</br>
r</p>

<%
    StringBuilder result = new StringBuilder(); // Déclaration de la variable
    for (int i = 0; i < chaine.length(); i++) {
        char chr = chaine.charAt(i);
        result.append(chr).append("<br>"); // Ajout du caractère et saut de ligne HTML
    }
%>
<p>Votre texte affiché en vertical :</p>
<p><%= result.toString() %></p>

<h2>Exercice 3 : Retour à la ligne</h2>
<p>La présence d'un espace provoque un retour à la ligne </br>
Exemple : L'hiver sera pluvieux</br>
L'hiver</br>
sera</br>
pluvieux</p>

<p>La présence d'un espace provoque un retour à la ligne</p>

<%
    StringBuilder output = new StringBuilder(); // Déclaration de output
    for (int i = 0; i < chaine.length(); i++) {
        char chr = chaine.charAt(i);
        if (chr == ' ') {
            output.append("<br>"); // Ajout du retour à la ligne lorsqu'on rencontre un espace
        } else {
            output.append(chr); // Ajout du caractère normal
        }
    }
%>
<p>Affichage avec retour à la ligne pour chaque espace :</p>
<p><%= output.toString() %></p>



<h2>Exercice 4 : Afficher une lettre sur deux</h2>
<p>Ecrire le programme pour afficher seulement une lettre sur deux de votre texte </br>
Exemple : L'hiver sera pluvieux</br>
Lhvrsr lvex</p>

<h2>Exercice 5 : La phrase en verlant</h2>
<p>Ecrire le programme afin d'afficher le texte en verlant </br>
Exemple : L'hiver sera pluvieux</br>
xueivulp ares revih'l</p>

<h2>Exercice 6 : Consonnes et voyelles</h2>
<p>Ecrire le programme afin de compter les consonnes et les voyelles dans votre texte</p>
<%
    String voyelles = "aeiouyAEIOUY";
    int voyellesNbre = 0; 
    int consonnesNbre = 0;

    // Vérifie chaque caractère de la chaîne
    for (int l = 0; l < chaine.length(); l++) {
        char chr = chaine.charAt(l);
        // Vérifie si le caractère est une voyelle
        if (voyelles.indexOf(chr) != -1) {
            voyellesNbre++; 
        } 
        // Vérifie si le caractère est une consonne (lettre non voyelle)
        else if (Character.isLetter(chr)) {
            consonnesNbre++;
        }
    }
%>

<p>Nombre de voyelles : <%= voyellesNbre %></p>
<p>Nombre de consonnes : <%= consonnesNbre %></p>


<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
