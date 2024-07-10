<?php
session_start();

include('global/conexion.php');
$mensaje = "";

if (isset($_POST['btnAccion'])) {
    switch ($_POST['btnAccion']) {
        case 'agregar':
            if (is_numeric(openssl_decrypt($_POST['id'], COD, KEY))) {
                $id = openssl_decrypt($_POST['id'], COD, KEY);
            } else {
                $mensaje .= "Upps id...Incorrecto. ";
            }
            if (is_string(openssl_decrypt($_POST['nombre'], COD, KEY))) {
                $nombre = openssl_decrypt($_POST['nombre'], COD, KEY);
            } else {
                $mensaje .= "Upps nombre...Incorrecto. ";
            }
            if (is_numeric(openssl_decrypt($_POST['precio'], COD, KEY))) {
                $precio = openssl_decrypt($_POST['precio'], COD, KEY);
            } else {
                $mensaje .= "Upps precio...Incorrecto. ";
            }
            if (is_numeric(openssl_decrypt($_POST['cantidad'], COD, KEY))) {
                $cantidad = openssl_decrypt($_POST['cantidad'], COD, KEY);
            } else {
                $mensaje .= "Upps cantidad...Incorrecto. ";
            }

            if (!isset($_SESSION['CARRITO'])) {
                array($_SESSION['CARRITO'] );
                $producto = array(
                    'id' => $id,
                    'nombre' => $nombre,
                    'cantidad' => $cantidad,
                    'precio' => $precio,
                );
                $_SESSION['CARRITO'][0] = $producto;
                $mensaje = "Producto agregado al carrito";
            } else {
                $numeroProductos = count($_SESSION['CARRITO']);
                $producto = array(
                    'id' => $id,
                    'nombre' => $nombre,
                    'cantidad' => $cantidad,
                    'precio' => $precio,
                );
                $_SESSION['CARRITO'][$numeroProductos] = $producto;
                $mensaje = "Producto agregado al carrito";
            }
            break;
        case 'eliminar':
            if (is_numeric(openssl_decrypt($_POST['id'], COD, KEY))) {
                $id = openssl_decrypt($_POST['id'], COD, KEY);

                foreach ($_SESSION['CARRITO'] as $index => $producto) {
                    if ($producto['id'] == $id) {
                        unset($_SESSION['CARRITO'][$index]);
                        echo "<script>alert('Elemento Eliminado)</script>";
                    }
                }
            } else {
                $mensaje .= "Upps id...Incorrecto. ";
            }
            break;
    }
}
