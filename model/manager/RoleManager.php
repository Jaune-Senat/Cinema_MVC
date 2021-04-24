<?php

    namespace Model\Manager;
    use App\AbstractManager;

    class RoleManager extends AbstractManager{
        public function __construct(){
            parent::connect();
        }

        public function findAll(){
            return $this->getResults(
                "Model\Entity\Role",
                "SELECT * FROM role"
            );
        }

        public function findOneById($id){
            return $this->getOneOrNullResult(
                "Model\Entity\Role",
                "SELECT * FROM role WHERE id = :num",
                [
                    "num" => $id
                ]
            );
        }
    }