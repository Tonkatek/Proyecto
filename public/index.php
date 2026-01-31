<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>PHP + Tailwind + DaisyUI</title>
    <link href="./css/output.css" rel="stylesheet">
</head>
<body class="p-10">
    <?php
        require_once "/var/www/src/libs/model.php";
        try {
            $claseConfig = new Model();
            
        } catch (\Throwable $th) {
            echo "algo ha salido mal";
        }

        echo "Ha salido todo bien"
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
</html>
