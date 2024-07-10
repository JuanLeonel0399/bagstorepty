
<nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container container-lg ">
            <a class="navbar-brand " href="index.php">Bags Store PTY</a>
            <div class="collapse navbar-collapse" id="collapsibleNavId">
                <ul class="navbar-nav me-auto mt-2 mt-lg-0 ">
                    <li class="nav-item">
                        <a class="nav-link active " href="index.php" aria-current="page">Inicio
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active " href="#" aria-current="page">Bolsas
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="#">Contacto</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="#">Acerca de</a>
                    </li>
                    <?php if(isset($_SESSION['id_us'])): ?>
                        <li class="nav-item">
                            <a class="nav-link " href="logout.php">Cerrar Sesion</a>
                        </li>
                    <?php else: ?>
                        <li class="nav-item">
                            <a class="nav-link " href="login.php">Iniciar Sesion</a>
                        </li><li class="nav-item">
                            <a class="nav-link " href="regist.php">Registrar</a>
                        </li>
                    <?php endif; ?>

                </ul>
                <ul class="nav justify-content-center  ">
                    <li class="nav-item">
                        <a class="nav-link text-white" href="mostrarCarrito.php"><i class="fa-solid fa-cart-shopping"></i></a>
                        <span class=""><?php echo (empty($_SESSION['id_us'])) ? 0 : count($_SESSION['id_us']) ?></span>
                    </li>
                </ul>


            </div>
        </div>
    </nav>