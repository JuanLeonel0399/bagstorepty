
<?php
include('global/config.php');
include('global/conexion.php');
include('carrito.php');
include("templates/cabecera.php");



/* print_r($_GET); */

$ClientID = "AXzEaSNRGASQCJva_8LVgzJx5UXvcf_hx951C73YpUdmjEBMtKbstrLp14_fGFxk5Ep-JLo27l7jimPz";
$Secret = "EOIoYl0KhdNfjIGft9ylEWgTRTpguR0clByeyqeUj69d2AkvPoxQCd2BJ-iQ5GVptKd89uAsBaf9PTVN";


$Login = curl_init("https://api-m.sandbox.paypal.com/v1/oauth2/token");
curl_setopt($Login, CURLOPT_RETURNTRANSFER, true);
curl_setopt($Login, CURLOPT_USERPWD, $ClientID . ":" . $Secret);
curl_setopt($Login, CURLOPT_POSTFIELDS, "grant_type=client_credentials");

$Respuesta = curl_exec($Login);
$objRespuesta = json_decode($Respuesta);

$AccesToken = $objRespuesta->access_token;


$venta = curl_init("https://api-m.sandbox.paypal.com/v1/payments/payment/" . $_GET['paymentID']);
curl_setopt($venta, CURLOPT_HTTPHEADER, array("Content-Type: application/json", "Authorization: Bearer " . $AccesToken));
curl_setopt($venta, CURLOPT_RETURNTRANSFER, true);


$RespVenta = curl_exec($venta);


$datos = new stdClass();
$datos = json_decode($RespVenta);

$objDatosTran = json_decode($RespVenta);

$name = $datos->payer->payer_info->first_name . " " . $datos->payer->payer_info->last_name;
$state = $datos->state;
$email = $datos->payer->payer_info->email;


$total = $objDatosTran->transactions[0]->amount->total;
$custom = $objDatosTran->transactions[0]->custom;

$clave = explode("#", $custom);
$SID = $clave[0];
$ClaveVenta = openssl_decrypt($clave[1], COD, KEY);

curl_close($venta);
curl_close($Login);
if ($state == 'approved') {
    $mensajePay = "<h3>Pago Aprobado</h3>";
    $sentencia = $pdo->prepare("UPDATE ventas SET paypalDts = :paypalDts, status = 'aprobado' WHERE ventas.id = :id;");
    $sentencia->bindParam(":id", $ClaveVenta);
    $sentencia->bindParam(":paypalDts", $RespVenta);
    $sentencia->execute();

    $mensajePay = "<h3>Pago Aprobado</h3>";
    $sentencia = $pdo->prepare("UPDATE ventas SET status = 'completo' WHERE claveTran = :claveTran AND total = :total AND id = :id");

    $sentencia->bindParam(":claveTran", $SID);
    $sentencia->bindParam(":total", $total);
    $sentencia->bindParam(":id", $ClaveVenta);
    $sentencia->execute();

    $completado = $sentencia->rowCount();
    session_destroy();
} else {
    $mensajePay = "<h3>Hay un problema con el pago</h3>";
}
/* echo $ClaveVenta;
echo $mensajePay; */
?>
<style>
    .invoice-box {
        background: #fff;
        color: black;
        display: flex;
        justify-content: center;
        max-width: 800px;
        margin: auto;
        padding: 30px;
        border: 1px solid #eee;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
        font-size: 16px;
        line-height: 24px;
        font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
    }
    #tabla{
        color:black !important;
    }
    .invoice-box table {
        width: 100%;
        line-height: inherit;
        text-align: left;
        color: black;
    }

    .invoice-box table td {
        padding: 5px;
        vertical-align: top;
    }

    .invoice-box table tr td:nth-child(2) {
        text-align: right;
    }

    .invoice-box table tr.top table td {
        padding-bottom: 20px;
    }

    .invoice-box table tr.top table td.title {
        font-size: 45px;
        line-height: 45px;
        color: #333;
    }

    .invoice-box table tr.information table td {
        padding-bottom: 40px;
    }

    .invoice-box table tr.heading td {
        background: #eee;
        color: #333;
        border-bottom: 1px solid #ddd;
        font-weight: bold;
    }

    .invoice-box table tr.details td {
        padding-bottom: 20px;
    }

    .invoice-box table tr.item td {
        border-bottom: 1px solid #eee;
    }

    .invoice-box table tr.item.last td {
        border-bottom: none;
    }

    .invoice-box table tr.total td:nth-child(2) {
        border-top: 2px solid #eee;
        font-weight: bold;
    }
</style>
<div class="jumbotron text-center">
    <h1 class="display-4">
        ¡Listo!
    </h1>
    <hr class="my-4">
    <p class="lead">
        <?php echo $mensajePay; ?>
    </p>
    <p>
        <?php
        $date = new DateTime();
        if ($completado >= 1) {
            $sentencia = $pdo->prepare("SELECT * FROM detalleventa, productos WHERE detalleventa.idProd = productos.id AND detalleventa.idVenta = :id;");
            $sentencia->bindParam(":id", $ClaveVenta);
            $sentencia->execute();
            $listaProd = $sentencia->fetchAll($pdo::FETCH_ASSOC);
           /*  print_r($listaProd); */
        }
        ?>
    <div class=" invoice-box ">
        
        <table id="tabla" cellpadding="0" cellspacing="0" class="table-bordered">
            <tr class="top">
                <td colspan="2">
                    <table>

                        <tr>
                            <td class="title">
                                <h1 class="">Factura</h1>
                            </td>
                            <td>
                                Fecha: <?php echo $date->format("d/m/Y"); ?><br>
                                Vencimiento: <?php echo date("d/m/Y", strtotime("+30 days")); ?>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="information">
                <td colspan="2">
                    <table>
                        <tr>
                            <td>
                                Bags Store PTY<br>
                                Calle San Fransisco 123<br>
                                Panamá, Panamá, 12345
                            </td>
                            <td>
                                <?php echo $name ?><br>
                                <?php echo $email ?><br>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="heading" >
                <td colspan="2">Método de pago</td>
            </tr>
            <tr class="details">
                <td colspan="2">Paypal</td>
            </tr>
            <tr class="heading">
                <td>Producto</td>
                <td>Precio</td>
            </tr>
            <?php foreach ($listaProd as $index => $producto) : ?>
                <tr class="item">
                    <td><?php echo $producto['nombre'] ?></td>
                    <td><?php echo $producto['precio'] . "USD"; ?></td>
                </tr>
            <?php endforeach; ?>
            <tr class="total">
                <td></td>
                <td>Total: <?php echo $total . "USD"; ?></td>
            </tr>
        </table>
    </div>

        <button id="descargar" class="btn btn-success btn-xm m-2" type="submit" value="factura" name="btnAccion">Descargar Factura</button>
    </p>
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>
<script>
        document.getElementById('descargar').addEventListener('click', function() {
            // Elemento que queremos convertir en PDF
            const elemento = document.getElementById('tabla');
            // Configuración de html2pdf
            const opt = {
                margin: 1,
                filename: 'Factura<?php echo $ClaveVenta ?>.pdf',
                image: { type: 'jpeg', quality: 1 },
                html2canvas: { scale: 2 },
                jsPDF: { unit: 'in', format: 'letter', orientation: 'portrait' }
            };
            // Generar y descargar el PDF
            html2pdf().from(elemento).set(opt).save();
        });
</script></script>
<?php
include("templates/pie.php");
?>