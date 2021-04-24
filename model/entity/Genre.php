<?php

    namespace Model\Entity;
    use App\AbstractEntity;

    Class Genre extends AbstractEntity{
        
        private $id;
        private $nomGenre;

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
         * Get the value of nomGenre
         */ 
        public function getNomGenre()
        {
                return $this->nomGenre;
        }

        /**
         * Set the value of nomGenre
         *
         * @return  self
         */ 
        public function setNomGenre($nomGenre)
        {
                $this->nomGenre = $nomGenre;

                return $this;
        }
    }