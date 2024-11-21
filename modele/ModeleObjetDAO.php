<?php

    include_once "$racine/classes/Objet.php";
    require_once("Connexion.php");
    require_once("ModeleTypeObjetDAO.php");

    
    class ModeleObjetDAO{
        
        //Attribut
        private static $lesObjets;
        
        //Méthodes
        public static function readAll() {
            self::$lesObjets = self::chargerObjets();
            return self::$lesObjets; 
        }

        // retourne un tableau associatif à 2 dimensions (1 ligne / n colonnes) contenant toutes les constellations
        // On retourne un tableau à 2 dimensions pour harmoniser les traitements de la vue résultat
        public static function getObjetByNumero($numeroObj) {
            self::$lesObjets = self::chargerObjets();
            $unObjet = null;
            foreach(self::$lesObjets as $obj){
                if($obj->getNumero() == $numeroObj){
                    $unObjet = $obj;
                }
            }
            return $unObjet;
        } 
        
            
        private static function chargerObjets()
        {
            $resultat = new ArrayObject();

            $req = "SELECT * FROM objet ORDER BY 1";

            try {
                echo " 4" ;
                $curseur = Connexion::getInstance()->query($req);
                echo " 5" ;

                //plusieurs lignes de résultat
                while ($ligne = $curseur->fetch(PDO::FETCH_ASSOC)) {

                    $unTypeObjet = ModeleTypeObjetDAO::findById($ligne['codeType']);

                    $nomCommun = $ligne['nomCommun'];
                    if($ligne['nomCommun'] == null){
                        $nomCommun = "";
                    }

                    $unObjet = new Objet($ligne['numero'], $nomCommun, $ligne['constellation'],$ligne['periodeVisibilite'], 
                        $ligne['diametreApparent'], $ligne['magnitude'], $unTypeObjet);
                    $resultat[] = $unObjet;
                }     
                return $resultat;      
            }
            catch(PDOException $e) {
                print "Erreur !: " . $e->getMessage();
                die();
            }
        }        
    }   
