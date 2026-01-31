<?php $apptitle = Config::getInstance()->get('app_title'); ?>
<!-- <!DOCTYPE html> -->


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $pageTitle ?? $apptitle ?></title>
    <link rel="stylesheet" href="./css/output.css">
</head>

<body class="bg-base-200">

    <!-- NAVBAR -->
    <header>
        <div class="navbar bg-base-100 shadow-sm">
            <div class="flex-1">
                <a class="btn btn-ghost text-xl">daisyUI</a>
            </div>
            <div class="flex-none">
                <button class="btn btn-square btn-ghost">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block h-5 w-5 stroke-current">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h.01M12 12h.01M19 12h.01M6 12a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0z"></path>
                    </svg>
                </button>
            </div>
        </div>
    </header>

    <!-- CONTENIDO DINÁMICO (LA VISTA ESPECÍFICA) -->
    <main class="min-h-screen py-8">
        <?php
        if (isset($viewPath) && file_exists($viewPath)) {
            require $viewPath;
        } else {
            echo '<div class="container mx-auto"><div class="alert alert-error">Vista no encontrada: ' . ($viewPath ?? 'no definida') . '</div></div>';
        }
        ?>
        <div class="card bg-base-100 w-96 shadow-sm">
            <figure>
                <img
                    src="https://img.daisyui.com/images/stock/photo-1606107557195-0e29a4b5b4aa.webp"
                    alt="Shoes" />
            </figure>
            <div class="card-body">
                <h2 class="card-title">Card Title</h2>
                <p>A card component has a figure, a body part, and inside body there are title and actions parts</p>
                <div class="card-actions justify-end">
                    <button class="btn btn-primary">Buy Now</button>
                </div>
            </div>
        </div>
    </main>

    <!-- FOOTER -->
    <footer class="footer footer-center p-10 bg-base-300 text-base-content">
        <div>
            <p class="font-bold text-lg">daisyUI</p>
            <p>Copyright © 2026 - All right reserved</p>
        </div>
    </footer>

</body>
