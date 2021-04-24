<?php
    $realisateur = $result['data']['realisateur'];
    $oeuvre= $result['data']['oeuvre'];
?>

<h1><?= $realisateur->getPrenomRealisateur(). " ".$realisateur->getNomRealisateur() ?></h1>
<img class="imageRe" src="<?=IMG_PATH.$realisateur->getImage() ?>" alt="chemin">
<p><?= $realisateur->__toString() ?></p>

<h3>Liste des films réalisés:</h3>
<ul>
    <?php foreach($oeuvre as $film){ ?>
    <li><a href="?ctrl=film&action=voirFilm&id=<?= $film->getId() ?>"><?= $film->getNomFilm() ?></a><?=" (".$film->getAnneeSortie().")" ?></li>
    <?php } ?>
</ul>