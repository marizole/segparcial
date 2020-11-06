<?php 
session_start();
if (!isset($_SESSION['login']) || $_SESSION['login'] != "OK") {
    header('location: index.php');
}
require_once('librerias/conexionBD.php');

$sql = "select p.*,r.descripcion as roles from permisos p left join roles r on p.id_rol = r.id";
$result =  $conn->query($sql);
$permisos = array();
while ($fila =  $result->fetch_array()) {
    $permisos[] = $fila;
}

$sql = "select * from roles";
$result =  $conn->query($sql);
$roles = array();
while ($fila =  $result->fetch_array()) {
    $roles[] = $fila;
}

$sql = "select * from usuarios";
$result =  $conn->query($sql);
$usuarios = array();
while ($fila =  $result->fetch_array()) {
    $usuarios[] = $fila;
}


$sql = "select * from permisos";
$result =  $conn->query($sql);
$permisos = array();
while ($fila =  $result->fetch_array()) {
    $permisos[] = $fila;
}

require_once('librerias/cabe.php');
 ?>

 <div class="container">
  <div class="row">
    <div class="col-12">
      <h1>Permisos</h1>
         <p>
            <a href="per-edit.php" class="btn btn-success">Nuevo</a>
         </p>     
            <table class="table table-striped">
                    <tr>
                        <th>Id</th>
                        <th>Usuario</th>
                        <th>Rol</th>
                        <th></th>
                        <th></th>
                    </tr>
                    <?php foreach ($permisos as $item): ?>
                    <tr>
                        <td><?= $item['id']?></td>
                        <td><?= $item['usuario']?></td>
                        <td><?= $item['rol']?></td>
                        <td>
                           <a href="#" class="btn btn-primary">Editar</a>
                        </td>
                        <td>
                           <a href="#" class="btn btn-danger">Eliminar</a>
                        </td>
                    </tr>
                <?php endforeach ?>
             </table>
    </div>
  </div>
</div>
<?php 
require_once('librerias/pie.php');
 ?>