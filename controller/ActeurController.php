<?php

namespace Controller;

    use App\AbstractController;
    use Model\Manager\ActeurManager;

    class ActeurController extends AbstractController
    {
        public function __construct(){
            $this->manager = new ActeurManager();
        }

        public function index()
        {
            $acteurs = $this->manager->findAll();

            return $this->render("acteur/home.php", [
                "acteurs" => $acteurs,
                "title"    => "Liste des acteurs"
            ]);
        }

        public function voirActeur($id)
        {
            if($id){
                
                $acteur = $this->manager->findOneById($id);
                $roles = $this->manager->roleMovie($id);

                return $this->render("acteur/voir.php", [
                    "acteur" => $acteur,
                    "title"   => $acteur,
                    "roles" => $roles
                ]);
            }  
            else $this->redirectToRoute("acteur", "index");
        }
    }