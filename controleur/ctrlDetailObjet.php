<?php

if ($_SERVER["SCRIPT_FILENAME"] == __FILE__) {
    $racine = "..";
}



// on inclut les modèles nécessaires
include_once "$racine/modele/modeleObjetDAO.php";

// recuperation des donnees GET, POST, et SESSION
$numero = $_GET["numero"];

// appel des fonctions du modèle permettant de recuperer les données utiles à l'affichage 
$unObjet = ModeleObjetDAO::getObjetByNumero($numero);

if($unObjet != null){
    $laPhoto = $unObjet->getNumero().".jpg";
}

// appel des vues qui permettent de gerer l'affichage des données
$titre = "detail d'un objet";
include "$racine/vue/vueEntete.php";
include "$racine/vue/vueDetailObjet.php";
include "$racine/vue/vuePied.php";
