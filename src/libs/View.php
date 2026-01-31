<?php
    class View {
        public static function render($view, $data = []) {
            extract($data);

            ob_start();

            $viewRoute = "../src/views/$view.php";

            if (file_exists($viewRoute)) {
                require $viewRoute;

            } else {
                ob_end_clean();
                die("Error 404: La vista \"$view\" no existe.");
            }

            $content = ob_get_clean();

            require "../src/views/layouts/main.php";
        }
    }
?>