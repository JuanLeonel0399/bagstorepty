<?php
include('global/config.php');
include('global/conexion.php');
include("templates/cabecera.php");

?>
<div class="row justify-content-sm-center overflow-hidden">
    <?php
    $sentencia = $pdo->prepare("SELECT * FROM productos");
    $sentencia->execute();
    $productos = $sentencia->fetchAll(PDO::FETCH_ASSOC);
    ?>
    <?php foreach ($productos as $producto) { ?>
        <div class="col-3 d-flex">
            <div class="card p-2 m-2 flex-grow-1">
                <img class="card-img-top " src="<?php echo $producto['imagen']; ?>" alt="<?php echo $producto['nombre']; ?>" />
                <div class="card-body">
                    <h3 class="card-title"><?php echo $producto['nombre']; ?></h3>
                    <span class="card-title"><?php echo $producto['precio'] . MONEDA; ?></span>
                    <form action="" method="post">
                        <input type="hidden" name="nombre" id="nombre" value="<?php echo openssl_encrypt($producto['nombre'], COD, KEY); ?>">
                        <input type="hidden" name="precio" id="precio" value="<?php echo openssl_encrypt($producto['precio'], COD, KEY); ?>">
                        <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($producto['id'], COD, KEY); ?>">
                        <input type="hidden" name="cantidad" id="cantidad" value="<?php echo openssl_encrypt(1, COD, KEY); ?>">

                        <div class="d-grid gap-2">
                            <button class="btn btn-primary" type="submit" value="agregar" name="btnAccion">
                                <i class="fa-solid fa-cart-shopping"></i>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    <?php } ?>

</div>

<?php

include("templates/pie.php");
?>