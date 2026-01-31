<?php
    require_once "../src/libs/Database.php";
    require_once "../src/libs/config.php";

    class HomeController {
        public function index() {
            try {
                $db = Database::getInstance();
                $pdo = $db->getPDO();
                $appTitle = Config::getInstance()->get("app_title");

                $data = [
                    "titulo" => "Bienvenido a " . $appTitle,
                    "texto" => "Tus tonki precios de confianza." 
                ];

                View::render("home/home", $data);

            } catch (Exception $e) {
                error_log("Error en HomeController: " . $e->getMessage());
                View::render("errores/500");
            }
        }
    }
?>