<?php include('global/config.php');
include('global/conexion.php');
include('carrito.php');
include("templates/cabecera.php");
?>
<style>


    h1,
    h3 {
        color: #d1d1dd;
    }

    p {
        color: #c1c1c1;
    }
</style>
<div class="container mt-5">
    <h1 class="text-center">Sobre Nosotros</h1>
    <p class="text-center">Bienvenidos a Bags Store PTY, su tienda de confianza para todas sus necesidades de bolsas. Con más de 5 años de experiencia en la industria, nos enorgullece ofrecer productos de alta calidad y un servicio al cliente excepcional.</p>
    <div class="row mt-4">
        <div class="col-md-6">
            <h3>Nuestra Historia</h3>
            <p>Desde nuestros inicios, nos hemos dedicado a proporcionar una amplia gama de bolsas que satisfacen tanto las necesidades cotidianas como las especiales de nuestros clientes. Con un enfoque en la sostenibilidad y la innovación, hemos evolucionado continuamente para ofrecer lo mejor del mercado.</p>
        </div>
        <div class="col-md-6">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjwJFp9GkU-LfKyJawaVXAKAZJqPWbhhdATw&s" class="img-fluid" alt="Nuestra Historia">
        </div>
    </div>
    <div class="row mt-4">
        <div class="col-md-6">
            <img src="https://www.moncayomarketing.com/wp-content/uploads/2020/09/valores-marca-web.png" class="img-fluid" alt="Nuestros Valores">
        </div>
        <div class="col-md-6">
            <h3>Nuestros Valores</h3>
            <p>En Bags Store PTY, nos guiamos por los valores de calidad, integridad y compromiso con nuestros clientes. Creemos en la importancia de ofrecer productos que no solo sean funcionales y duraderos, sino que también reflejen nuestro compromiso con la excelencia y la responsabilidad ambiental.</p>
        </div>
    </div>
    <div class="row mt-4">
        <div class="col-md-12 text-center">
            <h3>Nuestra Misión</h3>
            <p>Nuestra misión es ser el proveedor líder de bolsas de alta calidad, ofreciendo una experiencia de compra excepcional y contribuyendo positivamente al medio ambiente mediante prácticas sostenibles. Estamos dedicados a satisfacer las necesidades de nuestros clientes con productos innovadores y un servicio inigualable.</p>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<?php
include("templates/pie.php");
?>