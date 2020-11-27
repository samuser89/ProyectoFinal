<%-- 
    Document   : login
    Created on : 26/11/2020, 08:21:53 AM
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
  <title>Login</title>

  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link href="css/sb-admin.css" rel="stylesheet">
  <link href="css/sweetalert.css" rel="stylesheet" type="text/css"/>
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="js/sweetalert.min.js" type="text/javascript"/></script>
</head>

<body class="bg-dark" >
    <%
   
        if (request.getAttribute("stError") != null){
    %>
    <input type="text" hidden="" id="txtMensaje" value="<%=request.getAttribute("stError").toString()%>"/>
    <script>
        var stMensaje = document.getElementById("txtMensaje").value;
        swal("Mensaje",stMensaje,"error");
    </script>
        <% }    %>
    
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header"><strong>Inicio de Sesión</strong></div>
      <div class="card-body">
          <form action="LoginController" method="post">
          <div class="form-group">
            <label for="lblEmail">Correo Electrónico</label>
            <input class="form-control" id="txtEmail" name="txtEmail" type="email" aria-describedby="emailHelp" placeholder="Ingrese su correo">
          </div>
          <div class="form-group">
            <label for="lblPassword">Contraseña</label>
            <input class="form-control" id="txtPassword" name="txtPassword" type="password" placeholder="Contraseña">
          </div>
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                  <input class="form-check-input" name="chkRecordar" type="checkbox"> Recordarme en este equipo</label>
            </div>
          </div>
            <input class="btn btn-primary btn-block" type="submit" id="btnAceptar" name="btnAceptar" value="Aceptar"/>
        </form>
        <div class="text-center">
            <a class="d-block small mt-3" href="Registrar.jsp"> Registrar una cuenta</a>
          <a class="d-block small" href="#">¿Olvidó su contraseña?</a>
        </div>
      </div>
    </div>
  </div>
  
</body>

</html>
