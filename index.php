<?php
include('global/config.php');
include('global/conexion.php');
include('carrito.php');
include("templates/cabecera.php");
?>
<div class="row justify-content-sm-center overflow-hidden">

        <div class="col-4">
            <div class="card p-2 m-2 ">
                <img class="card-img-top" src="" alt="Title" />
                <div class="card-body">
                    <h3 class="card-title">Articulo</h3>
                    <span class="card-title">300USD</span>
                    <form action="" method="post">
                        <input type="hidden" name="nombre" id="nombre" value="">
                        <input type="hidden" name="precio" id="precio" value="">
                        <input type="hidden" name="id" id="id" value="">
                        <input type="hidden" name="cantidad" id="cantidad" value="">

                        <button class="btn btn-primary btn-lg" type="submit" value="agregar" name="btnAccion">
                            <i class="fa-solid fa-cart-shopping"></i>
                        </button>
                    </form>
                </div>
            </div>
        </div>

</div>

<?php
include("templates/pie.php");
?>