<?php

    namespace Model\Entity;
    use App\AbstractEntity;

    Class Role extends AbstractEntity{
        private $id;
        private $nomRole;

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
         * Get the value of nomRole
         */ 
        public function getNomRole()
        {
                return $this->nomRole;
        }

        /**
         * Set the value of nomRole
         *
         * @return  self
         */ 
        public function setNomRole($nomRole)
        {
                $this->nomRole = $nomRole;

                return $this;
        }
    }