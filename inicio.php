
<?php 
session_start();
if (!isset($_SESSION['login']) || $_SESSION['login'] != "OK") {
    header('location: index.php');
}

require_once('librerias/cabe.php');
 ?>

 <div class="container">
  <div class="row">
    <div class="col-12">
      <h1>SEGUNDO PARCIAL</h1>


	<hr>
	<h3><font color="#228B22">PERTENECE A:</font> Marizol Siñani Aruquipa <BR>
	<H3><font color="#228B22">  CEDULA DE INDENTIDAD:</font> 6122859<BR>
	<h3><font color="#228B22">REGISTRO UNIVERSITARIO: </font>200000020 <BR>
	<h3><font color="#228B22">FECHA: </font>06/11/2020</h3>
	<hr>
	

    </div>
  </div>
</div>
<?php 
require_once('librerias/pie.php');
 ?>