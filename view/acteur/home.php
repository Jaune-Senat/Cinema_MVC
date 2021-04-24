<?php
    $acteurs = $result['data']['acteurs'];
?>

<h1>Liste des Acteurs</h1>

<main id="acteurs-list">
    <table class="uk-table uk-table-striped">
        <thead>
            <tr>
                <th>Nom et Prénom</th>
                <th>Né(e) le</th>
            </tr>
        </thead>
        <tbody>
            <?php
                foreach ($acteurs as $acteur) { ?>
                    <tr>
                        <td><a href="?ctrl=acteur&action=voirActeur&id=<?= $acteur->getId() ?>"><?=$acteur->getPrenomActeur()." ".$acteur->getNomActeur()?></a></td>
                        <td><?= $acteur->getNaissanceActeur() ?></td>  
                    </tr>  
                <?php }?>      
        </tbody>
    </table>
</main>