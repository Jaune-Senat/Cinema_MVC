<?php

    namespace Model\Entity;
    use App\AbstractEntity;

    Class Acteur extends AbstractEntity{

        private $id;
        private $nomActeur;
        private $prenomActeur;
        private $sexeActeur;
        private $naissanceActeur;
        private $image;
        
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
         * Get the value of nomAct
         */ 
        public function getNomActeur()
        {
                return $this->nomActeur;
        }

        /**
         * Set the value of nomAct
         *
         * @return  self
         */ 
        public function setNomActeur($nomActeur)
        {
                $this->nomActeur = $nomActeur;

                return $this;
        }

        /**
         * Get the value of prenomAct
         */ 
        public function getPrenomActeur()
        {
                return $this->prenomActeur;
        }

        /**
         * Set the value of prenomAct
         *
         * @return  self
         */ 
        public function setPrenomActeur($prenomActeur)
        {
                $this->prenomActeur = $prenomActeur;

                return $this;
        }

        /**
         * Get the value of sexe
         */ 
        public function getSexeActeur()
        {
                return $this->sexeActeur;
        }

        /**
         * Set the value of sexe
         *
         * @return  self
         */ 
        public function setSexeActeur($sexeActeur)
        {
                $this->sexeActeur = $sexeActeur;

                return $this;
        }

        /**
         * Get the value of naissanceAct
         */ 
        public function getNaissanceActeur()
        {
                return $this->naissanceActeur->format("d-m-Y");
        }

        /**
         * Set the value of naissanceAct
         *
         * @return  self
         */ 
        public function setNaissanceActeur($naissanceActeur)
        {
                $this->naissanceActeur = new \DateTime($naissanceActeur);

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

        public function __toString(){
                if($this->sexeActeur == "F"){
                return "<br>Née le ". $this->naissanceActeur->format("d-m-Y");
                }else return "<br>Né le ". $this->naissanceActeur->format("d-m-Y");
        }
    }