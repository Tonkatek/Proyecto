<?php
    class producto{
    private $id;
    private $nombre;
    private $tipo;
    private $marca;
    private $descripcion;
    private $precio;
    private $stock;
    private $img;
    private $created_at;
    private $updated_at;
    function getId(){
        return $this->id;
    }
    function getNombre(){
        return $this->nombre;
    }
    function getTipo(){
        return $this->tipo;
    }
    function getMarca(){
        return $this->marca;
    }
    function getDescripcion(){
        return $this->descripcion;
    }
    function getPrecio(){
        return $this->precio;
    }
    function getStock(){
        return $this->stock;
    }
    function getImg(){
        return $this->img;
    }
    function getCreated(){
        return $this->created_at;
    }
    function getLastUpdate(){
        return $this->updated_at;
    }
    function getPathImg() {
        return "/var/www/html/imgs/".$this->img;
    }

    


    }


    


?>