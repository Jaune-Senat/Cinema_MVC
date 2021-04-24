<?php

namespace Controller;

    use App\AbstractController;
    use Model\Manager\FilmManager;

    class FilmController extends AbstractController
    {
        public function __construct(){
            $this->manager = new FilmManager();
        }

        public function index()
        {
            $films = $this->manager->findAll();

            return $this->render("film/home.php", [
                "films" => $films,
                "title"    => "Liste des films"
            ]);
        }

        public function voirFilm($id)
        {
            if($id){
                
                $film = $this->manager->findOneById($id);
                $casting = $this->manager->findCastingByFilm($id);
                $realisateur = $this->manager->findRealisateur($id);

                return $this->render("film/voir.php", [
                    "film" => $film,
                    "casting" => $casting,
                    "title"   => $film,
                    "realisateur" => $realisateur
                ]);
            }  
            else $this->redirectToRoute("film", "index");
        }
    }