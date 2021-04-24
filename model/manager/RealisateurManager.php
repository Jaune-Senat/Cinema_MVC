<?php

    namespace Model\Manager;
    use App\AbstractManager;

    class RealisateurManager extends AbstractManager
    {
        public function __construct(){
            parent::connect();
        }

        public function findAll(){
            return $this->getResults(
                "Model\Entity\Realisateur",
                "SELECT * FROM realisateur"
            );
        }

        public function findOneById($id){
            return $this->getOneOrNullResult(
                "Model\Entity\Realisateur",
                "SELECT * FROM realisateur WHERE id = :num",
                [
                    "num" => $id
                ]
            );
        }

        public function findAllMovies($id){
            return $this->getResults(
                "Model\Entity\Film",
                "SELECT *
                FROM film
                WHERE realisateur_id = :num",
                [
                    "num" => $id
                ]
                );
        }
    }