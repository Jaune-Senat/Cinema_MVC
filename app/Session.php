<?php

    namespace App;
    
    abstract class Session
    {
        public static function getFlashes(){
            if(isset($_SESSION['messages'])){
                var_dump($_SESSION['messages']);
                unset($_SESSION['messages']);
            }
        }

        public static function addFlash($type, $message){
            if(!isset($_SESSION["messages"])){
                $_SESSION["messages"] = [];
            }
            if(!isset($_SESSION["messages"][$type])){
                $_SESSION["messages"][$type] = [];
            }
            $_SESSION["messages"][$type][] = $message;
        }

    }