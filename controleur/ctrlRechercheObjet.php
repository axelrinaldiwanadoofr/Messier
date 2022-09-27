<?php

//Inclut les modèles nécessaires
include_once "$racine/modele/ModeleObjetDAO.php";

// Récupération du critère de recherche en GET
$critere = filter_input(INPUT_GET, "critere",FILTER_SANITIZE_STRING);

//Par défaut par on affecte numero
if($critere == null)
{
    $critere = "numero";
}

switch($critere){
    case 'numero':
        
        //Récupération du numéro d'objet saisi dans le textBox en POST
        $numeroObj = filter_input(INPUT_POST, "numeroObj", FILTER_SANITIZE_STRING);
        
        if ($numeroObj != null){
            // On demande au modèle de récupérer les données nécessaires à l'affichage
            $unObjet = ModeleObjetDAO::getObjetByNumero($numeroObj);
        }        
        break;  
}


// appel du script de vue qui permet de gerer l'affichage des donnees

//Entete
include "$racine/vue/vueEntete.php";

//VueRechercheObjet
include "$racine/vue/vueRechercheObjet.php";

if(isset($numeroObj))
{
    // affichage des resultats de la recherche
    include "$racine/vue/vueResultRecherche.php";
}    

//Vue pied de page
include "$racine/vue/vuePied.php";