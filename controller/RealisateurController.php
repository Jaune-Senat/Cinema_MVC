<?php

namespace Controller;

    use App\AbstractController;
    use Model\Manager\RealisateurManager;

    class RealisateurController extends AbstractController
    {
        public function __construct(){
            $this->manager = new RealisateurManager();
        }

        public function index()
        {
            $realisateurs = $this->manager->findAll();

            return $this->render("realisateur/home.php", [
                "realisateurs" => $realisateurs,
                "title"    => "Liste des realisateurs"
            ]);
        }

        public function voirRealisateur($id)
        {
            if($id){
                
                $realisateur = $this->manager->findOneById($id);
                $oeuvre = $this->manager->findAllMovies($id);

                return $this->render("realisateur/voir.php", [
                    "realisateur" => $realisateur,
                    "title"   => $realisateur,
                    "oeuvre" => $oeuvre
                ]);
            }  
            else $this->redirectToRoute("realisateur", "index");
        }
    }