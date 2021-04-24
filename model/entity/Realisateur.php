<?php

    namespace Model\Entity;
    use App\AbstractEntity;

    Class Realisateur extends AbstractEntity{
        private $nomRealisateur;
        private $prenomRealisateur;
        private $sexeRealisateur;
        private $naissanceRealisateur;
        private $id;
        private $image;

        public function __construct($data){
            parent::hydrate($data, $this);
        }

        /**
         * Get the value of nomAct
         */ 
        public function getNomRealisateur()
        {
                return $this->nomRealisateur;
        }

        /**
         * Set the value of nomAct
         *
         * @return  self
         */ 
        public function setNomRealisateur($nomRealisateur)
        {
                $this->nomRealisateur = $nomRealisateur;

                return $this;
        }

        /**
         * Get the value of prenomAct
         */ 
        public function getPrenomRealisateur()
        {
                return $this->prenomRealisateur;
        }

        /**
         * Set the value of prenomAct
         *
         * @return  self
         */ 
        public function setPrenomRealisateur($prenomRealisateur)
        {
                $this->prenomRealisateur = $prenomRealisateur;

                return $this;
        }

        /**
         * Get the value of sexe
         */ 
        public function getSexeRealisateur()
        {
                return $this->sexeRealisateur;
        }

        /**
         * Set the value of sexe
         *
         * @return  self
         */ 
        public function setSexeRealisateur($sexeRealisateur)
        {
                $this->sexeRealisateur = $sexeRealisateur;

                return $this;
        }

        /**
         * Get the value of naissanceAct
         */ 
        public function getNaissanceRealisateur()
        {
                return $this->naissanceRealisateur->format("d-m-Y");
        }

        /**
         * Set the value of naissanceAct
         *
         * @return  self
         */ 
        public function setNaissanceRealisateur($naissanceRealisateur)
        {
                $this->naissanceRealisateur = new \DateTime($naissanceRealisateur);

                return $this;
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
         * Get the value of image
         */ 
        public function getImage()
        {
                return $this->image;
        }
        
        /**
         * Set the value of image
         *
         * @return  self
         */ 
        public function setImage($image)
        {
                $this->image = $image;
                
                return $this;
        }

        public function __toString()
        {
            if($this->sexeRealisateur == "F"){
                return "<br>Née le ". $this->naissanceRealisateur->format("d-m-Y");
            }else return "<br>Né le ". $this->naissanceRealisateur->format("d-m-Y");
        }
    }