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
    <style>
        .cart-container {
            position: relative;
            display: inline-block;
        }

        .cart-icon {
            font-size: 24px;
        }

        .notificacion {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 25px;
            height: 25px;
            position: absolute;
            top: -5px;
            right: 5px;
            background-color: rgb(155, 155, 155);
            font: 14px;
            padding: 2px 6px;
            border-radius: 50%;
            color: white;
        }
    </style>
</head>

<body data-bs-theme="dark">

    <nav class="navbar navbar-expand-md bg-body-tertiary">
        <div class="container container-lg ">
            <div class="collapse navbar-collapse" id="collapsibleNavId">
                <ul class="navbar-nav me-auto mt-2 mt-lg-0 ">
                    <li class="nav-item">
                        <a class="nav-link active fs-3 text" href="index.php">Bags Store PTY</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active fs-3 text " href="index.php" aria-current="page">Inicio
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active fs-3 text " href="nosotros.php" aria-current="page">Nosotros
                        </a>
                    </li>
                </ul>
                <ul class="nav justify-content-center ">
                    <li class="nav-item">
                        <div class="cart-container">
                            <a class="nav-link text-white cart-icon" href="mostrarCarrito.php">
                                <i class="fa-solid fa-cart-shopping"></i>
                            </a>
                            <span class="notificacion">0</span>
                        </div>

                    </li>
                </ul>


            </div>
        </div>
    </nav>