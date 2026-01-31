<!DOCTYPE html>
<html lang="en">

<body>
    
<?php
    require_once "../src/libs/config.php";
    require_once "../src/libs/View.php";
    require_once "../src/libs/Database.php";
    require_once "../src/libs/model.php";
    
    $controllerName = isset($_GET["controller"]) ? $_GET["controller"] : "Home";
    $actionName = isset($_GET["action"]) ? $_GET["action"] : "index";

    $controllerClassName = ucfirst($controllerName) . "Controller";
    $fileController = "../src/controllers/$controllerClassName.php";

    if (file_exists($fileController)) {
        require_once $fileController;
        $controller = new $controllerClassName();

        if (method_exists($controller, $actionName)) {
            $controller->$actionName();

        } else {
            die("Error: La acción \"$actionName\" no existe en \"$controllerClassName\".");
        }

    } else {
        die("Error: El controlador \"$controllerClassName\" no existe.");
    }
?>
</body>
</html>