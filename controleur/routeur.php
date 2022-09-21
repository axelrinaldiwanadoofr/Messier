<?php

//Fonction qui retourne le fichier controleur à utiliser
function routeur($action){
 
    //Chaque action va déterminer le controleur à appeler
    $lesActions = array();
    $lesActions["defaut"] = "ctrlAccueil.php";
    $lesActions["detail"] = "ctrlDetailObjet.php";
    $lesActions["recherche"] = "ctrlRechercheObjet.php";
    $lesActions["liste"] = "ctrlListeObjets.php";    

    $controleur = $lesActions["defaut"];
    
    //Permet de vérifier que l'action existe et renvoie le nom du contrôleur PHP    
    if (array_key_exists ( $action , $lesActions )){
        $controleur = $lesActions[$action];
    }
    
    return $controleur;
}
