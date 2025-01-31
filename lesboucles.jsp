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

<%-- Boucle for pour afficher une ligne d'étoiles --%>
    <%int cpt = Integer.parseInt(valeur); %>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
       <%= "*" %>
    <% } %>
    </p>

<h2>Exercice 1 : Le carré d'étoiles</h2>
<p>Ecrire le code afin de produire un carré d'étoile</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>

<p>*****</br>*****</br>*****</br>*****</br>*****</p>
<p>
    <%  for (int i = 1; i <= cpt; i++) {  %>
          <% for (int j = 1; j <= cpt; j++) {   %>
                <%= "*" %> 
        <% } %>  
        <br>
    <% } %> 
</p>

<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*</br>**</br>***</br>****</br>*****</p>
 <p>
    <% 
        for (int j = cpt - 1; j >= 1; j--) {  
            // Espaces avant les étoiles pour aligner à gauche
            for (int i = 1; i <= cpt - j; i++) {
                out.print("&nbsp;"); // Espaces
            } 
    %> 
</p>

<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p><p>*****</br>****</br>***</br>**</br>*</p>

<p>
    <% for (int i = cpt; i >= 1; i--) { %>    
        <% for (int j = 1; j <= i; j++) { %> 
            <%= "*" %> 
         <% } %>  
        <br>
    <% } %> 
</p>

<h2>Exercice 4 : Triangle rectangle 2</h2> <p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>
<p>
 <% 
    // Upper half including the middle line
    for (int j = 1; j <= cpt; j++) { 
        for (int i = 1; i <= j; i++) {
            out.print("*");  
        }
        out.print("<br>"); 
    }
%> 

</p>
<h2>Exercice 5 : Triangle isocele</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;***</br>&nbsp;****</br>*****</p>
<p>
 <p>
 <% 
    for (int i = 1; i <= cpt; i++) {
        // Affichage des espaces avant les étoiles pour aligner à droite
        for (int j = 1; j <= cpt - i; j++) {
            out.print("&nbsp;"); // Espaces
        }
        // Affichage des étoiles
        for (int k = 1; k <= i; k++) {
            out.print("*"); // Etoiles
        }
        // Passer à la ligne suivante
        out.println("<br>");
    }
%>
    </p> 
      

<h2>Exercice 6 : Le demi losange</h2>
<p>Ecrire le code afin de produire un losange</p><p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>
<p>*****</br>&nbsp;&nbsp;****</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</p>
 <p>
 <% 
  for (int j = cpt - 1; j >= 1; j--) {  
        // Espaces avant les étoiles pour aligner à gauche
        for (int i = 1; i <= cpt - j; i++) {
            out.print("&nbsp;"); // Espaces
        }
        // Imprimer les étoiles
        for (int i = 1; i <= j; i++) {
            out.print("*");
        }
        out.print("<br>");  // Nouvelle ligne après chaque ligne d'étoiles
    }
%>
   </p> 
 <p> 
    <% 
        // Upper half including the middle line
        for (int j = 1; j <= cpt; j++) { 
            // Espaces avant les étoiles pour aligner à gauche
            for (int i = 1; i <= cpt - j; i++) {
                out.print("&nbsp;"); // Espaces
            }
            // Imprimer les étoiles
            for (int i = 1; i <= j; i++) {
                out.print("*");
            }
            out.print("<br>"); // Nouvelle ligne après chaque ligne d'étoiles
        }
        
        // Lower half excluding the middle line
        for (int j = cpt - 1; j >= 1; j--) {  
            // Espaces avant les étoiles pour aligner à gauche
            for (int i = 1; i <= cpt - j; i++) {
                out.print("&nbsp;"); // Espaces
            }
            // Imprimer les étoiles
            for (int i = 1; i <= j; i++) {
                out.print("*");
            }
            out.print("<br>");  // Nouvelle ligne après chaque ligne d'étoiles
        }
    %>
 </p> 
<h2>Exercice 7 : La table de multiplication</h2>
<p>Ecrire le code afin de créser une table de multiplication</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>5 x 1 = 5</p>
<p>5 x 2 = 10</p>
<p>5 x 3 = 15</p>
<p>5 x 4 = 20</p>
<p>5 x 5 = 25</p>
<p>
 <% 
    int number = 5; 
%>
<% 
    for (int i = 1; i <= 10; i++) {
%>
        <p><%= number + " x " + i + " = " + (number * i) %></p>
<% 
    }
%>

</p>
<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
