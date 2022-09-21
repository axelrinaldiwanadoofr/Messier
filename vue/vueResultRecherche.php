<div class="container">
    <br/>
    <h1 class = "text-center">Résultat de la recherche</h1>
    <br/><br/>
    <div class="row justify-content-center">
        <div class="row justify-content-center">
            <div class="col-md-12">
                
            <?php
                if($unObjet){                
            ?>
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
                    $numero = $unObjet->getNumero();
                    $nom = $unObjet->getNomCommun();
                    $libelleType = $unObjet->getTypeObjet()->getLibelle();

                    echo "<tr>";
                        echo "<td scope='row'>" . $numero . "</td>";
                        echo "<td>" . $nom . "</td>";
                        echo "<td>" . $libelleType . "</td>";
                        echo "<td><a class='nav-link' href='./?action=detail&numero=" . $numero . "'><img src='images/rechercher.png' alt='Afficher le détail'></a></td>";
                    echo "</tr>";
                    echo "</tbody>";
                echo "</table>";                    
                } 
                else{
                    echo "<br/><h2>Objet non référencé !</h2>";
                }
            ?>

              </div>
        </div>
    </div>
</div>