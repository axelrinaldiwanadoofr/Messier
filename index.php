<?php

    //Permet de connaitre la racine du projet
    include "getRacine.php";
    include_once "$racine/modele/ModeleObjetDAO.php";

    //inclure le routeur
    include "$racine/controleur/routeur.php";

    //Récupération de l'action à exécuter
    $action = filter_input(INPUT_GET, 'action', FILTER_SANITIZE_STRING);
    if (!isset($action)){
        $action = "defaut";
    }

    //Appel au routeur pour déterminer le controleur à appeler
    $controleur = routeur($action);

    //Inclure le bon controleur
    include "$racine/controleur/$controleur";