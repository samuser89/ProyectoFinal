<%-- 
    Document   : registrar
    Created on : 26/11/2020, 08:52:01 AM
    Author     : samuel.serna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Registro</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
   <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Registrar Cuenta</div>
      <div class="card-body">
    <form method="post">
        <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="lblIdentificacion">Identificación</label>
                <input class="form-control" id="txtIdentificacion" name="txtIdentificacion" type="text" aria-describedby="nameHelp" placeholder="Ingrese identificación">
              </div>
            </div>
        </div>
        <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="lblPrimerNombre">Primer Nombre</label>
                <input class="form-control" id="txtPrimerNombre" name="txtPrimerNombre" type="text" aria-describedby="nameHelp" placeholder="Ingrese Primer Nombre">
              </div>
              <div class="col-md-6">
                <label for="lblSegundoNombre">Segundo Nombre</label>
                <input class="form-control" id="txtSegundoNombre" name="txtSegundoNombre" type="text" aria-describedby="nameHelp" placeholder="Ingrese Segundo Nombre">
              </div>

            </div>
        </div>
        <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="lblPrimerApellido">Primer Apellido</label>
                <input class="form-control" id="txtPrimerApellido" name="txtPrimerApellido" type="text" aria-describedby="nameHelp" placeholder="Ingrese Primer Apellido">
              </div>
              <div class="col-md-6">
                <label for="lblSegundoApellido">Segundo Apellido</label>
                <input class="form-control" id="txtSegundoNombre" name="txtSegundoApellido" type="text" aria-describedby="nameHelp" placeholder="Ingrese Segundo Apellido">
              </div>

            </div>
        </div>
            
        <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="lblDireccion">Dirección</label>
                <input class="form-control" id="txtDireccion" name="txtDireccion" type="text" aria-describedby="nameHelp" placeholder="Ingrese Dirección">
              </div>
              <div class="col-md-6">
                <label for="lblTelefono">Teléfono</label>
                <input class="form-control" id="txtSegundoNombre" name="txtTelefono" type="text" aria-describedby="nameHelp" placeholder="Ingrese Telefono">
              </div>

            </div>
        </div>
            
        <div class="form-group">
            <div class="form-row">
              <div class="col-md-12">
                <label for="lblCorreo">Correo electrónico</label>
                <input class="form-control" id="txtCorreo" name="txtCorreo" type="email" aria-describedby="nameHelp" placeholder="Ingrese Correo">
              </div>
            </div>
        </div>
            
        <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="lblPassword">Contraseña</label>
                <input class="form-control" id="txtPassword" name="txtPassword" type="password" aria-describedby="nameHelp" placeholder="Ingrese Contraseña">
              </div>
              <div class="col-md-6">
                <label for="lblConfirmarPassword">Confirmar Contraseña</label>
                <input class="form-control" id="txtConfirmarPassword" name="txtConfirmarPassword" type="password" aria-describedby="nameHelp" placeholder="Confirme Contraseña">
              </div>

            </div>
        </div>
            <input type="submit" class="btn btn-primary btn-block" href="Login.jsp" name="btnAceptar" value="Aceptar"/>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="Login.jsp">Ya tengo una Cuenta</a>
          <a class="d-block small" href="#">¿Olvidó su contraseña?</a>
        </div>
      </div>
    </div>
  </div>
 
</body>

</html>
