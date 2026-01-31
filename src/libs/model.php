<?php
require_once '/var/www/src/libs/Database.php';

class Model {
    protected PDO $db;

    public function __construct() {
        $this->db = Database::getInstance()->getPDO();
    }
}
?>