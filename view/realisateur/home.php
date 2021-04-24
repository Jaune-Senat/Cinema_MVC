<?php
    $realisateurs = $result['data']['realisateurs'];
?>

<h1>Liste des Realisateurs</h1>

<main id="realisateurs-list">
    <table class="uk-table uk-table-striped">
        <thead>
            <tr>
                <th>Nom et Prénom</th>
                <th>Né(e) le</th>
            </tr>
        </thead>
        <tbody>
            <?php
                foreach ($realisateurs as $realisateur) { ?>
                    <tr>
                        <td><a href="?ctrl=realisateur&action=voirRealisateur&id=<?= $realisateur->getId() ?>"><?=$realisateur->getPrenomRealisateur()." ".$realisateur->getNomRealisateur()?></a></td>
                        <td><?= $realisateur->getNaissanceRealisateur() ?></td>  
                    </tr>  
                <?php }?>      
        </tbody>
    </table>
</main>