<br/>
<h1 class="text-center">Recherche d'objets par numéro</h1>
<br/>

<div class="row">
    <div class="col-4 mx-auto text-center">
        <form action="./?action=recherche&critere=<?= $critere ?>" method="POST">

            <?php
                switch ($critere) {
                    case "numero":
            ?>
                        <div class="form-group">
                            <input type="text" class="form-control" name="numeroObj" placeholder="numero" value="<?= $numeroObj ?>" /><br />
                        </div>
            <?php
                        break;
                }
            ?>
            <input type="submit" class="btn btn-success" value="Rechercher" />
            <br/>
        </form>
        <br/><br/>
    </div>
</div>




