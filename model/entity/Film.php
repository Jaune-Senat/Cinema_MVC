<?php

    namespace Model\Entity;
    use App\AbstractEntity;

    Class Film extends AbstractEntity{

        private $id;
        private $nomFilm;
        private $duree;
        private $synopsis;
        private $anneeSortie;
        private $note;
        private $realisateur;
        private $affiche;


        public function __construct($data){
            parent::hydrate($data, $this);
        }
        
        /**
         * Get the value of id
         */ 
        public function getId()
        {
                return $this->id;
        }

        /**
         * Set the value of id
         *
         * @return  self
         */ 
        public function setId($id)
        {
                $this->id = $id;

                return $this;
        }
    
        /**
         * Get the value of nomFilm
         */ 
        public function getNomFilm()
        {
                return $this->nomFilm;
        }

        /**
         * Set the value of nomFilm
         *
         * @return  self
         */ 
        public function setNomFilm($nomFilm)
        {
                $this->nomFilm = $nomFilm;

                return $this;
        }

        /**
         * Get the value of duree
         */ 
        public function getDuree()
        {
                return $this->duree;
        }

        /**
         * Set the value of duree
         *
         * @return  self
         */ 
        public function setDuree($duree)
        {
                $this->duree = $duree;

                return $this;
        }

        /**
         * Get the value of synopsis
         */ 
        public function getSynopsis()
        {
                return $this->synopsis;
        }

        /**
         * Set the value of synopsis
         *
         * @return  self
         */ 
        public function setSynopsis($synopsis)
        {
                $this->synopsis = $synopsis;

                return $this;
        }

        /**
         * Get the value of anneeSortie
         */ 
        public function getAnneeSortie()
        {
                return $this->anneeSortie;
        }

        /**
         * Set the value of anneeSortie
         *
         * @return  self
         */ 
        public function setAnneeSortie($anneeSortie)
        {
                $this->anneeSortie = $anneeSortie;

                return $this;
        }

        /**
         * Get the value of note
         */ 
        public function getNote()
        {
                return $this->note;
        }

        /**
         * Set the value of note
         *
         * @return  self
         */ 
        public function setNote($note)
        {
                $this->note = $note;

                return $this;
        }

        /**
         * Get the value of real_id
         */ 
        public function getRealisateur()
        {
                return $this->realisateur;
        }

        /**
         * Set the value of real_id
         *
         * @return  self
         */ 
        public function setRealisateur($realisateur)
        {
                $this->realisateur = $realisateur;

                return $this;
        }

        /**
         * Get the value of affiche
         */ 
        public function getAffiche()
        {
                return $this->affiche;
        }
        
        /**
         * Set the value of affiche
         *
         * @return  self
         */ 
        public function setAffiche($affiche)
        {
                $this->affiche = $affiche;
                
                return $this;
        }
    }