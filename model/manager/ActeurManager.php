<?php

    namespace Model\Manager;
    use App\AbstractManager;

    class ActeurManager extends AbstractManager
    {
        public function __construct(){
            parent::connect();
        }

        public function findAll(){
            return $this->getResults(
                "Model\Entity\Acteur",
                "SELECT * FROM acteur"
            );
        }

        public function findOneById($id){
            return $this->getOneOrNullResult(
                "Model\Entity\Acteur",
                "SELECT * FROM acteur WHERE id = :num",
                [
                    "num" => $id
                ]
            );
        }

        public function findAllMovies($id){
            return $this->getResults(
                "Model\Entity\Film",
                "SELECT nomFilm, f.id AS id
                FROM film f, joue j, acteur a
                WHERE f.id = j.film_id
                AND j.acteur_id = a.id
                AND a.id = :num",
                [
                    "num" => $id
                ]
            );
        }

        public function roleMovie($id){
            return $this->getResults(
                "Model\Entity\Joue",
                "SELECT *
                FROM joue j
                WHERE j.acteur_id = :num",
                [
                    "num" => $id
                ]
            );
        }
    }