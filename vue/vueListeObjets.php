<div class="container">
    <br/>
    <h1 class = "text-center">Liste des objets de Messier</h1>
    <br/><br/>
    <div class="row justify-content-center">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <table class="table">
                     <thead>
                        <tr>
                            <th scope="col">Numéro</th>
                            <th scope="col">Nom</th>
                            <th scope="col">Type objet</th>
                            <th scope="col">Détails</th>                
                       </tr>
                    </thead>
                    <tbody>


                    <?php
                        //Calcul de la page début et de la page fin
                        $page = $_GET['page'];
                        $debut = ($page - 1) * 6;
                        $fin = $debut + 6;
                        if($fin > 109){
                            $fin = 109;
                        }

                        for ($i = $debut; $i < $fin; $i++) {

                            $numero = $listeObjets[$i]->getNumero();
                            $nom = $listeObjets[$i]->getNomCommun();
                            $libelleType = $listeObjets[$i]->getTypeObjet()->getLibelle();

                            echo "<tr>";
                                echo "<td scope='row'>" . $numero . "</td>";
                                echo "<td>" . $nom . "</td>";
                                echo "<td>" . $libelleType . "</td>";
                                echo "<td><a class='nav-link' href='./?action=detail&numero=" . $numero . "'><img src='images/rechercher.png' alt='Afficher le détail'></a></td>";
                            echo "</tr>";
                        } 
                    ?>
                    </tbody>
                </table>
                
                <?php
                    //Préparation des pages
                    $p1 = $page;
                    $p2 = $page + 1;
                    $p3 = $page + 2;
                    
                    $previous = true;
                    if($page == 1){
                        $previous = false;
                    }
                    
                    $next = true;
                    if($page == 19){
                        $next = false;
                    }
                    
                ?>
                
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-end">
                        <?php
                            if($previous){
                                echo  "<li class='page-item'>";
                            }
                            else{
                                echo  "<li class='page-item disabled'>";
                            }
                        ?>
                        <a class="page-link" href="./?action=liste&page=<?= $p1 - 1 ?>">Previous</a>
                      </li>
                      <li class="page-item"><a class="page-link" href="./?action=liste&page=<?= $p1 ?>"><?= $p1 ?></a></li>
                      <li class="page-item"><a class="page-link" href="./?action=liste&page=<?= $p2 ?>"><?= $p2 ?></a></li>
                      <li class="page-item"><a class="page-link" href="./?action=liste&page=<?= $p3 ?>"><?= $p3 ?></a></li>
                      
                        <?php
                            if($next){
                                echo  "<li class='page-item'>";
                            }
                            else{
                                echo  "<li class='page-item disabled'>";
                            }
                        ?>
                          
                        <a class="page-link" href="./?action=liste&page=<?= $p3 + 1 ?>">Next</a>
                      </li>
                    </ul>
                  </nav>
                
            </div>
        </div>
    </div>
</div>