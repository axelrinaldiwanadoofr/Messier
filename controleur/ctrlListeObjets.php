<?php
if ( $_SERVER["SCRIPT_FILENAME"] == __FILE__ ){
    $racine="..";
}

include_once "$racine/modele/modeleObjetDAO.php";


// appel des fonctions permettant de recuperer les données utiles à l'affichage 
$listeObjets = ModeleObjetDAO::readAll();

// appel du script de vue qui permet de gerer l'affichage des donnees
$titre = "Liste des objets";
include "$racine/vue/vueEntete.php";
include "$racine/vue/vueListeObjets.php";
include "$racine/vue/vuePied.php";

