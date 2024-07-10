<?php
include('global/config.php');
include('carrito.php');
include("templates/cabecera.php");
?>
<h3>Lista De Carrito</h3>
<?php if (!empty($_SESSION['CARRITO'])) {  ?>
    <table class="table table-light table-bordered text-center">
        <tbody>
            <tr>
                <th>#</th>
                <th>Producto</th>
                <th>Cantidad</th>
                <th>SubTotal</th>
                <th>Action</th>
            </tr>
            <?php $total = 0; ?>
            <?php  array($_SESSION['CARRITO']);
             foreach ($_SESSION['CARRITO'] as $indice => $producto) : ?>
                <tr>
                    <th><?php echo $producto['id'] ?></th>
                    <th><?php echo $producto['nombre'] ?></th>
                    <th><?php echo $producto['cantidad'] ?></th>
                    <th><?php echo number_format($producto['precio'] * $producto['cantidad'], 2) . "USD" ?></th>

                    <th>
                        <form action="" method="post">
                            <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($producto['id'], COD, KEY) ?>">
                            <button class="btn btn-danger" type="submit" name="btnAccion" value="eliminar">
                                <i class="fa-solid fa-trash"></i>
                            </button>
                        </form>
                    </th>
                </tr>
                <?php $total += $producto['precio'] * $producto['cantidad']; ?>
            <?php endforeach; ?>
            <tr>
                <td colspan="3" align="right">
                    <h3>Total</h3>
                </td>
                <td align="right">
                    <h3><?php echo number_format($total, 2) . "USD" ?></h3>
                </td>
                <td></td>
            </tr>
            <tr>
                <td colspan="5">
                    <form action="pagar.php" method="POST">
                        <div class="alert alert-success">
                            <div class="mb-3">
                                <label for="email" class="form-label">Correo de usuario: </label>
                                <input type="email" name="email" id="email" class="form-control" placeholder="Ingrese su email" required />
                                <small id="emailHelp" class="form-text text-muted text-dark">La factura llegará a este correo</small>
                            </div>
                        </div>
                        <button class="btn btn-primary btn-lg btn-block" type="submit" value="proceder" name="btnAccion">Pagar</button>
                    </form>
                </td>
            </tr>
        </tbody>
    </table>
<?php } else { ?>
    <div class="alert alert-success">
        No Hay Productos.
    </div>
<?php } ?>

<?php include("templates/pie.php"); ?>