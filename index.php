<?php
include('global/config.php');
include('global/conexion.php');
include('carrito.php');
include("templates/cabecera.php");
?>

<?php echo $mensaje ?>
<div class="row justify-content-sm-center overflow-hidden">
    <?php
    $sentencia = $pdo->prepare("SELECT * FROM productos");
    $sentencia->execute();
    $listaProd = $sentencia->fetchAll(PDO::FETCH_ASSOC);

    foreach ($listaProd as $producto) :
    ?>
        <div class="col-4">
            <div class="card p-2 m-2 ">
                <img class="card-img-top" src="<?php echo $producto['imagen'] ?>" alt="Title" />
                <div class="card-body">
                    <h3 class="card-title"><?php echo $producto['nombre'] ?></h3>
                    <span class="card-title"><?php echo $producto['precio'] ?>USD</span>
                    <form action="" method="post">
                        <input type="hidden" name="nombre" id="nombre" value="<?php echo openssl_encrypt($producto['nombre'], COD, KEY) ?>">
                        <input type="hidden" name="precio" id="precio" value="<?php echo openssl_encrypt($producto['precio'], COD, KEY) ?>">
                        <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($producto['id'], COD, KEY) ?>">
                        <input type="hidden" name="cantidad" id="cantidad" value="<?php echo openssl_encrypt(1, COD, KEY); ?>">

                        <button class="btn btn-primary btn-lg" type="submit" value="agregar" name="btnAccion">
                            <i class="fa-solid fa-cart-shopping"></i>
                        </button>
                    </form>
                </div>
            </div>
        </div>
    <?php endforeach ?>
</div>

<?php
include("templates/pie.php");
?>