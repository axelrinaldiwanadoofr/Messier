<?php

//Détermination de la racine
if ( $_SERVER["SCRIPT_FILENAME"] == __FILE__ ){
    $racine="..";
}
// creation du menu burger
$menuBurger = array();
$menuBurger[] = Array("url"=>"./?action=liste&page=1","label"=>"Liste des objets");
$menuBurger[] = Array("url"=>"./?action=recherche&critere=numero","label"=>"Recherche par numéro");


//Inclut les modèles nécessaires
include_once "$racine/modele/ModeleObjetDAO.php";

// Récupération du critère de recherche en GET, par défaut par numero
$critere = "numero";
if (isset($_GET["critere"])) {
    $critere = $_GET["critere"];
}



switch($critere){
    case 'numero':
        
        //Récupération du numéro d'objet saisi dans le textBox en POST
        $numeroObj = "";
        
        if (isset($_POST["numeroObj"])){
            $numeroObj = $_POST["numeroObj"];
            
            // On demande au modèle de récupérer les données nécessaires à l'affichage
            $unObjet = ModeleObjetDAO::getObjetByNumero($numeroObj);
        }        
        break;  
}


// appel du script de vue qui permet de gerer l'affichage des donnees


//Entete
include "$racine/vue/vueEntete.php";

//VueRechercheObjet
include "$racine/vue/vueRechercheobjet.php";

//Vue résultat
if (!empty($_POST)) {
    // affichage des resultats de la recherche
    include "$racine/vue/vueResultRecherche.php";
}

//Vue pied de page
include "$racine/vue/vuePied.php";


?>