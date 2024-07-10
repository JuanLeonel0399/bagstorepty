<?php

if (!isset($_SESSION['CARRITO'])) {
    $_SESSION['CARRITO'] = array();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bags Store PTY</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</head>

<body data-bs-theme="dark">

    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container container-lg ">
            <a class="navbar-brand " href="index.php">Bags Store PTY</a>
            <div class="collapse navbar-collapse" id="collapsibleNavId">
                <ul class="navbar-nav me-auto mt-2 mt-lg-0 ">
                    <li class="nav-item">
                        <a class="nav-link active " href="index.php" aria-current="page">Bolsas
                        </a>
                    </li>
                </ul>
                <ul class="nav justify-content-center  ">
                    <li class="nav-item">
                        <a class="nav-link text-white" href="mostrarCarrito.php">
                            <i class="fa-solid fa-cart-shopping"></i>
                            <span class="badge bg-secondary">
                            <?php
                            echo isset($_SESSION['CARRITO']) && is_array($_SESSION['CARRITO']) ? count($_SESSION['CARRITO']) : 0;
                            ?>
                        </span>
                        </a>
                       
                    </li>
                </ul>


            </div>
        </div>
    </nav>

    <div class="container">