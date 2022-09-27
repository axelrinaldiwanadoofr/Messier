<?php
    //Permet de connaitre la racine du projet
    $racine = dirname(__FILE__);

    include_once "$racine/modele/ModeleObjetDAO.php";

    //inclure le routeur
    include "$racine/controleur/routeur.php";

    //Récupération de l'action à exécuter
    $action = filter_input(INPUT_GET, 'action', FILTER_SANITIZE_STRING);
    if (!isset($action)){
        $action = "defaut";
    }

    //Appel au routeur pour récupérer le controleur à appeler
    $controleur = Routeur::getControleur($action);

    //Inclure le bon controleur
    include "$racine/controleur/$controleur";