<?php
include('global/config.php');
include('global/conexion.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    $sentencia = $pdo->prepare("INSERT INTO usuarios (id, email, password) VALUES (NULL, :email, :password);");
    if ($sentencia->execute(['email' => $email, 'password' => $password])) {
        echo "Usuario registrado exitosamente.";
        header('Location: inicio.php');
    } else {
        echo "Error al registrar el usuario";
    }
}
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Usuario</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .txt-a {
            text-decoration: none;
            color: #ffffff;
        }

        .login-container {
            background-color: #fff;
            padding: 20px 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
            text-align: center;
        }

        .login-container h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
        }

        .mg-2 {
            margin-top: 5px;
        }

        .input-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .input-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }

        .input-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #007BFF;
            border: none;
            border-radius: 5px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>
    <div class="login-container">
        <h1>Bags Store PTY</h1>
        <h2>Registro</h2>
        <form method="POST">
            <div class="input-group">
                <label for="username">email</label>
                <input type="email" id="username" name="email" required>
            </div>
            <div class="input-group">   
                <label for="password">Contraseña</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Registro</button>
        </form>
        <button type="submit" class="mg-2"><a class="txt-a" href="inicio.php">Iniciar Sesion</a></button>

    </div>
</body>

</html>