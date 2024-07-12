# PDO

# Variables de Sesion => $servidor = "mysql:dbname=" . BD . ";host=" . SERVIDOR;
# BD(Base de datos) => define("BD", "storebspty");
# SERVIDOR => define("SERVIDOR", "localhost");

# Creación => Forma 1 => $pdo = new PDO ($servidor o $dns, $usuario, $contraseña, $options(opcional));

# PDO::prepare => $smt = $pdo->prepare("SELECT * FROM productos");

# PDO::execute => $smt->execute();

# fetch() => solo recupera una fila del conjunto de resultado
# fetch() => $smt->fetch(PDO::método);

# fetchAll() => recupera todos las filas del conjunto de resultado
# fetchAll() => $smt->fetchAll(PDO::método);


# Métodos de Fetch => 
# PDO::FETCH_ASSOC: Devuelve un array indexado por el nombre de la columna. $datos['prop'];
# PDO::FETCH_NUM: Devuelve un array indexado por el número de columna. $datos[index]; index = number;
# PDO::FETCH_BOTH (predeterminado): Devuelve un array indexado tanto por el nombre de la columna como por el número de columna. $datos['mixed']; pueden mezclar ambos.
# PDO::FETCH_OBJ: Devuelve un objeto anónimo con nombres de propiedad que se corresponden con los nombres de las columnas. $datos->prop; 


# Métodos de FetchAll =>
# PDO::FETCH_ASSOC: Devuelve un array indexado por el nombre de la columna. $datos['prop'];
# PDO::FETCH_NUM: Devuelve un array indexado por el número de columna. $datos[index]; index = number;
# PDO::FETCH_BOTH (predeterminado): Devuelve un array indexado tanto por el nombre de la columna como por el número de columna. $datos['mixed']; pueden mezclar ambos.
# PDO::FETCH_OBJ: Devuelve un array de objetos anónimos con nombres de propiedad que se corresponden con los nombres de las columnas. $datos->prop;


# BindParam => $smt->bindParam(":prop", $variable);

# insertLastId() => $idRecuperar = $smt->insertLastId();