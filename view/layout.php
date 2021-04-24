<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- UIkit CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.6.18/dist/css/uikit.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
    <link rel="stylesheet" href="<?= CSS_PATH ?>style.css">
    <title>On refait le cinéma</title>
</head>
<body> 
    <nav id="navigathor" class="uk-navbar-container" uk-navbar>
        <a class="uk-navbar-item uk-logo" href="?ctrl=home">Accueil</a>

        <div class="uk-navbar-right">
            <ul id="menuu" class="uk-navbar-nav">
                <li class="uk-navbar-item"><a href="?ctrl=film">Les films</a></li>
                <li class="uk-navbar-item"><a href="?ctrl=acteur">Les acteurs</a></li>
                <li class="uk-navbar-item"><a href="?ctrl=realisateur">Les réalisateurs</a></li>
            </ul>
        </div>  
    </nav>

    <div class="uk-container">
        <section id="messages" uk-alert class="uk-padding-remove">
            <?= App\Session::getFlashes() ?>
        </section>
    </div>

    <div class="uk-container">
        <?= $page //ici s'intègrera la page que le contrôleur aura renvoyé !!?> 
    </div>

    <footer>
        <p class='uk-text-center'>&copy; 1987 - NAIL IT !!</p>
    </footer>
    <!-- UIkit JS -->
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.6.18/dist/js/uikit.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.6.18/dist/js/uikit-icons.min.js"></script>
</body>
</html>