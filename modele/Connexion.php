<?php
	/** 
    * Classe d'accès aux données de type singleton
    * qui utilise les services de la classe PDO
    */

   class Connexion{   	
	//Attribut statique
        private static $connexion;

        /**
         * Constructeur privé vide
         */				
        private function __construct(){
            self::$connexion = null;
        }

        /**
        * Méthode statique qui renvoie l'unique instance de Connexion
        **/
        public static function getInstance(){
            if(!self::$connexion){
                try {
                    $serveur = 'mysql:host=localhost:3306;';
                    $bdd = 'dbname=bd_messier';   		
                    $user = 'root' ; 
                    $mdp = 'root' ;

                    self::$connexion = new PDO($serveur.$bdd, $user, $mdp); 
                    self::$connexion->query("SET CHARACTER SET utf8");
                } catch (PDOException $e) {
                        echo " Error connexion: " . $serveur . " " . $bdd . " " . $user . " " . $mdp . " " . $e->getMessage() ;
                        throw new Exception("Erreur à  la connexion \n" . $e->getMessage());
                }
            }
            return self::$connexion;
        }

        /**
        * Destructeur qui libère l'objet
        **/
        public function __destruct(){
            self::$connexion = null;
        }
     }   
?>