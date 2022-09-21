
<h1 class="text-center">Recherche d'objets</h1>
<br/>

<form action="./?action=recherche&critere=<?= $critere ?>" method="POST">


    <?php
        switch ($critere) {
            case "numero":
    ?>
                <div class="form-group">
                    <label>Recherche par numero : </label>
                    <input type="text" class="form-control" name="numeroObj" placeholder="numero" value="<?= $numeroObj ?>" /><br />
                </div>
    <?php
                break;
        }
    ?>
    <br /><br />
    <input type="submit" class="btn btn-success" value="Rechercher" />

</form>
