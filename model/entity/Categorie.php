<?php

    namespace Model\Entity;
    use App\AbstractEntity;

    Class Categorie extends AbstractEntity{

        private $genre_id;
        private $film_id;

        public function __construct($data){
            parent::hydrate($this, $data);
        }

        /**
         * Get the value of genre_id
         */ 
        public function getGenre_id()
        {
                return $this->genre_id;
        }

        /**
         * Set the value of genre_id
         *
         * @return  self
         */ 
        public function setGenre_id($genre_id)
        {
                $this->genre_id = $genre_id;

                return $this;
        }

        /**
         * Get the value of film_id
         */ 
        public function getFilm_id()
        {
                return $this->film_id;
        }

        /**
         * Set the value of film_id
         *
         * @return  self
         */ 
        public function setFilm_id($film_id)
        {
                $this->film_id = $film_id;

                return $this;
        }
    }