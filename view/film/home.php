<?php
    $films = $result['data']['films'];
?>

<h1>Liste des Films</h1>

<main id="films-list">
    <table class="uk-table uk-table-striped">
        <thead>
            <tr>
                <th>TITRE</th>
                <th>SORTI EN</th>
                <th>PAR</th>
            </tr>
        </thead>
        <tbody>
            <?php
                foreach ($films as $film) { ?>
                    <tr>
                        <td><a href="?ctrl=film&action=voirFilm&id=<?= $film->getId() ?>"><?= $film->getNomFilm()?></a></td>
                        <td><?= $film->getAnneeSortie() ?></td>
                        <td>  <?= $film->getRealisateur()->getPrenomRealisateur()." ". $film->getRealisateur()->getNomRealisateur() ?> </td>
                    </tr>  
                <?php }?>      
        </tbody>
    </table>
</main>