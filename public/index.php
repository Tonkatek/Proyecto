<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
</html>

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
<!-- <!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>PHP + Tailwind + DaisyUI</title>
    <link href="./css/output.css" rel="stylesheet">
</head>
<body class="p-10">
    <?php
        // require_once "/var/www/src/libs/model.php";
        // try {
        //     $claseConfig = new Model();
            
        // } catch (\Throwable $th) {
        //     echo "algo ha salido mal";
        // }

        // echo "Ha salido todo bien"
    ?>
    <div class="card w-96 bg-base-100 shadow-xl">
        <div class="card-body">
            <h2 class="card-title">¡Funciona! 🚀</h2>
            <p class="font-bold">UwU</p>
            <div class="card-actions justify-end">
                <button class="btn btn-primary">OK</button>
            </div>
        </div>
    </div>

</body>
</html> -->