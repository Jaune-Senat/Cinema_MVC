<?php
    $film = $result['data']['film'];
    $casting = $result['data']['casting'];
?>

<h1><?= $film->getNomFilm() ?></h1>

<div class="row">
    <aside class="affiche">
        <img src="<?=IMG_PATH.$film->getAffiche() ?>" alt="">
    </aside>
    <main>
        <p>
            <h3>Synopsis:</h3>
            <?= $film->getSynopsis() ?>
            <br><br><b>Durée:</b> <?= $film->getDuree() ?> min
            <?php $str = "";
            for($i = 1; $i <= $film->getNote(); $i++){
                $str.= "<i class='fas ystar fa-star'></i>";
                $str;
            }
            for($i = 1; $i <= 5 - $film->getNote(); $i++){
                $str.= "<i class='fas fa-star'></i>";
                $str;
            } ?>
            <br><br><b>Note:</b> <?= $str; ?>
            <br><br><b>Realisé par:  <a href="?ctrl=realisateur&action=voirRealisateur&id=<?= $film->getRealisateur()->getId() ?>"><?= $film->getRealisateur()->getPrenomRealisateur()." ". $film->getRealisateur()->getNomRealisateur() ?></a></b>
        </p>
    </main>
</div>    

<h3>Casting</h3>
<section class="section">
    <?php foreach($casting as $acteur) {?>
    <article class="article">
        <img class="imageCast" src="<?=IMG_PATH.$acteur->getActeur()->getImage()?>" alt="IMG_PATH">
        <a href="?ctrl=acteur&action=voirActeur&id=<?= $acteur->getActeur()->getId() ?>"><?=$acteur->getActeur()->getPrenomActeur()." ".$acteur->getActeur()->getNomActeur()?></a>
        <?= "<i>".$acteur->getRole()->getNomRole()."</i>" ?>
    </article>
    <?php } ?>
</section>
