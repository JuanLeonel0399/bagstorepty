<?php
include('global/config.php');
include('global/conexion.php');
include('carrito.php');
include("templates/cabecera.php");
?>

<?php
if ($_POST) {
    $total = 0;
    $SID = session_id();
    $correo = $_POST['email'];

    foreach ($_SESSION['CARRITO'] as $index => $producto) {
        $total = $total + ($producto['precio'] * $producto['cantidad']);
    }
    $sentencia = $pdo->prepare("INSERT INTO ventas 
    (id, claveTran, paypalDts, fecha, correo, total, status) 
    VALUES (NULL, :claveTran, '', NOW(), :correo, :total, 'pendiente');");

    $sentencia->bindParam(":claveTran", $SID);
    $sentencia->bindParam(":correo", $correo);
    $sentencia->bindParam(":total", $total);
    $sentencia->execute();
    $idVenta = $pdo->lastInsertId();

    foreach ($_SESSION['CARRITO'] as $index => $producto) {
        $sentencia = $pdo->prepare("INSERT INTO detalleventa 
        (id, idVenta, idProd, PrecioUni, cantidad, descargado) 
        VALUES (NULL, :idVenta, :idProd, :PrecioUni, :cantidad, 0);");

        $sentencia->bindParam(":idVenta", $idVenta);
        $sentencia->bindParam(":idProd", $producto['id']);
        $sentencia->bindParam(":PrecioUni", $producto['precio']);
        $sentencia->bindParam(":cantidad", $producto['cantidad']);
        $sentencia->execute();
    }
}
?>
<script src="https://www.paypalobjects.com/api/checkout.js"></script>
<div class="jumbotron text-center">
    <h1 class="display-4">
        Estas a un paso para pagar
    </h1>
    <hr class="my-4">
    <p class="lead">
        La cantidad a pagar con Paypal es de:
    <h4><?php echo number_format($total, 2) . "USD" ?></h4>
    </p>
    <div class="d-flex justify-content-center align-items-center" id="paypal-button-container">

    </div>
    <p>La factura llegará una vez proceses el pago. <br>
        <strong>(Para dudas, escribe a este correo :juanleonelmitre@gmail.com)</strong>
    </p>
</div>

<style>
    /* Media query for mobile viewport */
    @media screen and (max-width: 400px) {
        #paypal-button-container {
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: auto;
            /* display: inline-block; */
            background-color: none;
        }
    }

    /* Media query for desktop viewport */
    @media screen and (min-width: 400px) {
        #paypal-button-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin: auto;
            width: 250px;
            /* display: inline-block; */
            background-color: transparent;
        }
    }
</style>


<script>
    paypal.Button.render({
        env: 'sandbox', // sandbox | production
        style: {
            label: 'checkout', // checkout | credit | pay | buynow | generic
            size: 'responsive', // small | medium | large | responsive
            shape: 'pill', // pill | rect
            color: 'gold' // gold | blue | silver | black
        },

        // PayPal Client IDs - replace with your own
        // Create a PayPal app: https://developer.paypal.com/developer/applications/create

        client: {
            sandbox: 'AXzEaSNRGASQCJva_8LVgzJx5UXvcf_hx951C73YpUdmjEBMtKbstrLp14_fGFxk5Ep-JLo27l7jimPz',
            production: 'AXpuckkqGe8Faiz3aVPGyxxfrpsPLKjEYf5eg-11_JqnMSr30_NLpKX1puxNVoLqI0qtofHLG9TlRWi_'
        },


        payment: function(data, actions) {
            return actions.payment.create({
                payment: {
                    transactions: [{
                        amount: {
                            total: '<?php echo $total ?>',
                            currency: 'USD',
                        },
                        description: "Compra de productos a Bags Store PTY: <?php echo number_format($total, 2).'USD' ?>",
                        custom: "<?php echo $SID ?>#<?php echo openssl_encrypt($idVenta,COD,KEY);?>",
                    }]
                }
            });
        },

        onAuthorize: function(data, actions) {
            return actions.payment.execute().then(function() {
                /* window.alert("Gracias por su compra"); */
                window.location = "verificador.php?paymentToken=" +data.paymentToken+"&paymentID="+data.paymentID ;
            });
        }

    }, '#paypal-button-container');
</script>
<?php
include("templates/pie.php");
?>