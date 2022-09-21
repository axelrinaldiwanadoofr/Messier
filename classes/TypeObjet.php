<?php

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

/**
 * Description of TypeObjet
 *
 * @author Ordi-herve
 */
class TypeObjet {
    private string $code;
    private string $libelle;

    
    //Constructeur
    function __construct(string $code, string $libelle){
        $this->code = $code;
        $this->libelle = $libelle;
    }   
    
    public function getLibelle(){
        return $this->libelle;
    }
}
