<?php

    namespace Model\Manager;
    use App\AbstractManager;

    class FilmManager extends AbstractManager
    {
        public function __construct(){
            parent::connect();
        }

        public function findAll(){
            return $this->getResults(
                "Model\Entity\Film",
                "SELECT * FROM film"
            );
        }

        public function findOneById($id){
            return $this->getOneOrNullResult(
                "Model\Entity\Film",
                "SELECT * FROM film WHERE id = :num",
                [
                    "num" => $id
                ]
            );
        }

        public function findReal($id){
            return $this->getResults(
                "Model\Entity\Realisateur",
                "SELECT nomReal, prenomReal
                FROM realisateur r, film f
                WHERE r.id = f.real_id
                AND f.id = :num",
                [
                    "num" => $id
                ]
                );
        }

        public function findRealisateur($id){
            return $this->getOneOrNullResult(
                "Model\Entity\Realisateur",
                "SELECT * FROM realisateur WHERE id = :num",
                [
                    "num" => $id
                ]
            );
        }

        public function findCastingByFilm($id){
            return $this->getResults(
                "Model\Entity\Joue",
                "SELECT * FROM acteur a, joue j, role r
                WHERE a.id = j.acteur_id
                AND j.role_id = r.id
                AND j.film_id = :num",
                [
                    "num" => $id
                ]
                );
        }
    }