<?php

    namespace Model\Entity;
    use App\AbstractEntity;

    Class Joue extends AbstractEntity{
        
        private $acteur;
        private $film;
        private $role;

        public function __construct($data){
            parent::hydrate($data, $this);
        }
        
        /**
         * Get the value of acteur_id
         */ 
        public function getacteur()
        {
                return $this->acteur;
        }

        /**
         * Set the value of acteur_id
         *
         * @return  self
         */ 
        public function setacteur($acteur)
        {
                $this->acteur = $acteur;

                return $this;
        }

        /**
         * Get the value of film
         */ 
        public function getFilm()
        {
                return $this->film;
        }

        /**
         * Set the value of film
         *
         * @return  self
         */ 
        public function setFilm($film)
        {
                $this->film = $film;

                return $this;
        }

        /**
         * Get the value of role
         */ 
        public function getRole()
        {
                return $this->role;
        }

        /**
         * Set the value of role
         *
         * @return  self
         */ 
        public function setRole($role)
        {
                $this->role = $role;

                return $this;
        }
    }