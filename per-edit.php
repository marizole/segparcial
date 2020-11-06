<?php 


require_once('librerias/conexionBD.php');
$sql = "select * from roles";
$result =  $conn->query($sql);
$roles = array();

while ($fila =  $result->fetch_array()) {
    $roles[] = $fila;
   
}


require_once('librerias/cabe.php');
?>
      <div class="container">
        <div class="row">
            <div class="col-6">
                <h1>Nuevo Permiso</h1>        
                <form action="per-procesa.php" method="post">
                  
                   <div class="form-group">
                    <label for="">Usuario</label>
                    <select name="id_usuario" class="form-control">
                      <option value="">-- Seleccione --</option>
                      <?php foreach ($usuario as $item): ?>
                        <option value="<?= $item['id'] ?>"><?= $item['descripcion'] ?></option>
                      <?php endforeach ?>
                    </select>
                  </div>

                   <div class="form-group">
                    <label for="">Rol</label>
                    <select name="id_rol" class="form-control">
                      <option value="">-- Seleccione --</option>
                      <?php foreach ($roles as $item): ?>
                        <option value="<?= $item['id'] ?>"><?= $item['descripcion'] ?></option>
                      <?php endforeach ?>
                    </select>
                  </div>
                     
                 
                  <button type="submit" class="btn btn-primary">Enviar</button>
                </form>                
            </div>
        </div>
      </div>
<?php 
require_once('librerias/pie.php');
 ?>