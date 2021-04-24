<?php
    $acteur = $result['data']['acteur'];
    $roles = $result['data']['roles'];

?>

<h1><?= $acteur->getPrenomActeur(). " ".$acteur->getNomActeur() ?></h1>
<img class="imageRe" src="<?=IMG_PATH.$acteur->getImage()?>" alt="chemin">
<p><?= $acteur->__toString() ?></p>

<h3>Filmographie:</h3>
<ul>
<?php foreach($roles as $role){ ?>
        <li>
            <a href="?ctrl=film&action=voirFilm&id=<?= $role->getFilm()->getId() ?>"><?= $role->getFilm()->getNomFilm()?></a><?=" (".$role->getFilm()->getAnneeSortie()."): <i>".$role->getRole()->getNomRole()."</i>" ?>
        </li>
<?php }?>
</ul>
