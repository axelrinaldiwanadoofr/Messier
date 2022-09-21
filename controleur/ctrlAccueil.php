<?php

//Détermination de la racine
if ( $_SERVER["SCRIPT_FILENAME"] == __FILE__ ){
    $racine="..";
}


// Affichage des vues
$titre = "Accueil - Les objets de Messier";
include "$racine/vue/vueEntete.php";
include "$racine/vue/vueAccueil.php";
include "$racine/vue/vuePied.php";

