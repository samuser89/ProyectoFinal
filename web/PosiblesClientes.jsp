<%-- 
    Document   : posiblesclientes
    Created on : 26/11/2020, 10:01:23 AM
    Author     : samuel.serna
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Posibles Clientes</title>
        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom fonts for this template-->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
          <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">
        <!-- Bootstrap core JavaScript-->
        <link href="css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="js/sweetalert.min.js" type="text/javascript"/></script>
            <style type="text/css">
           .dollars:before{ content: '$'; }
       </style>
    </head>
    <body>
        
        <%
        List<Models.clsPosiblesClientes> lstclsPosiblesClientes = 
                new   ArrayList<Models.clsPosiblesClientes>();
        
            if(session.getAttribute("session_lstclsPosiblesClientes") !=null){
            lstclsPosiblesClientes = (List<Models.clsPosiblesClientes>)session.getAttribute("session_lstclsPosiblesClientes");
            }
            if(request.getAttribute("stMensaje") !=null &&  request.getAttribute("stTipo") !=null){
        %>
        
        <input type="text" hidden="" id="txtMensaje" value="<%=request.getAttribute("stMensaje")%>"/>
        <input type="text" hidden="" id="txtTipo" value="<%=request.getAttribute("stTipo")%>"/>       
        
        <script>
            var mensaje = document.getElementById("txtMensaje").value;
            var tipo = document.getElementById("txtTipo").value;
            
            swal("Mensaje", mensaje,tipo);
            
        </script>
        
        <%
            }
        %>
        
        
        <div class="container">        
            <div class="card mx-auto mt-5">
                <div class="card-header">Crear Posible Cliente</div>
                <div class="card-body">
                    <form method="post" action="PosiblesClientesController">
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-12">
                                    <input type="submit" class="btn btn-success"  name="btnGuardar" value="Guardar"/>
                                    <input type="submit" class="btn btn-warning" name="btnModificar" value="Modificar"/>
                                    <input type="submit" class="btn btn-danger" name="btnCancelar" value="Cancelar" />
                                    <a class="btn btn-outline-info" style="float: right;"  href="Index.jsp"> 
                                        <i class="fa fa-angle-double-left"></i> Volver</a>
                                </div>
                                
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="form-row">
                                <h1>Información Posible Cliente</h1>
                            
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <label name="lblEmpresa">Empresa</label>
                                    <input type="txt" placeholder="Empresa" name="txtEmpresa" class="form-control" />
                                </div>
                                <div class="col-md-3">
                                    <label name="lblNombre">Nombres</label>
                                    <input type="txt" placeholder="Nombre" name="txtNombre" class="form-control" />                                    
                                </div>
                                <div class="col-md-3">
                                    <label name="lblApellidos">Apellidos</label>
                                    <input type="txt" placeholder="Apellidos" name="txtApellidos" class="form-control" />                                    
                                </div>
                                <div class="col-md-3">
                                    <label name="lblTitulo">Titulo</label>
                                    <input type="txt" placeholder="Titulo" name="txtTitulo" class="form-control"/>                                    
                                </div>                            
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <label name="lblCorreoElectronico">Correo electrónico</label>
                                    <input type="email" placeholder="Correo Electrónico " name="txtCorreoElectronico" class="form-control"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblTelefono">Teléfono</label>
                                    <input type="txt" placeholder="Telefono" name="txtTelefono" class="form-control"/>                                    
                                </div>
                                <div class="col-md-3">
                                    <label name="lblFax">Fax</label>
                                    <input type="txt" placeholder="Fax" name="txtFax" class="form-control"/>                                    
                                </div>
                                <div class="col-md-3">
                                    <label name="lblMovil">Movil</label>
                                    <input type="txt" placeholder="Movil" name="txtMovil" class="form-control"/>                                    
                                </div>                                                    
                            
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <label name="lblSitioWeb">Sitio Web</label>
                                    <input type="text" placeholder="Sitio Web" name="txtWeb" class="form-control"/>
                                </div>
                                <div class="col-md-3">
                                    <label name="lblFuentePosibleCliente">Fuente Posible Cliente</label>
                                    <select class="form-control" name="ddlFuentePosibleCliente">
                                        <option value="1" selected="true">None</option>
                                        <option value="2">Aviso</option>
                                        <option value="3">Llamada no solicitada</option>
                                        <option value="4">Recomendación de empleado</option>
                                        <option value="5">Recomendación externa</option>
                                        <option value="6">Tienda en línea</option>
                                    </select>                                    
                                </div>
                                <div class="col-md-3">
                                    <label name="lblEstadoPosibleCliente">Estado Posible Cliente</label>
                                    <select class="form-control" name="ddlEstadoPosibleCliente">
                                        <option value="1" selected="true">None</option>
                                        <option value="2">Intento de contacto</option>
                                        <option value="3">Contactar en el futuro</option>
                                        <option value="4">Contactado</option>
                                        <option value="5">Posible cliente no solicitado</option>
                                        <option value="6">Posible cliente perdido</option>
                                    </select>                                    
                                </div>
                                <div class="col-md-3">
                                    <label name="lblSector">Sector</label>
                                    <select class="form-control" name="ddlSector">
                                        <option value="1" selected="true">None</option>
                                        <option value="2">APS (Proveedor de servicios de aplicaciones)</option>
                                        <option value="3">OEM de datos</option>
                                        <option value="4">ERP (Planificación de recursos de empresa)</option>
                                        <option value="5">Gobierno/Ejercito</option>
                                        <option value="6">Empresa grande</option>
                                    </select>                                    
                                </div>                        
                            
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <label name="lblCantidadEmpleados">Cantidad de empleados</label>
                                    <input type="number" placeholder="Cantidad de empleados" name="txtCantidadEmpleados" class="form-control"/>
                                </div>
                                
                                <div class="col-md-3">
                                    <label name="lblIngresosAnuales">Ingresos Anuales</label>
                                    <input type="number" placeholder="Ingresos Anuales" name="txtIngresosAnuales" class="form-control"/>
                                </div>
                                
                                <div class="col-md-3">
                                    <label name="lblCalificacion">Calificación</label>
                                    <select class="form-control" name="ddlCalificacion">
                                        <option value="1" selected="true">None</option>
                                        <option value="2">Adquirido</option>
                                        <option value="3">Activo</option>
                                        <option value="4">Contactado</option>
                                        <option value="5">Fallo de mercado</option>
                                        <option value="6">Proyecto cancelado</option>
                                        <option value="7">Apagar</option>
                                    </select>                                    
                                </div>

                                <div class="col-md-3">
                                    <label name="lblNoParticipacionCorreoElectronico"><br>
                                        <input type="checkbox" name="chkNoParticipacionCorreoElectronico">
                                        No participación correo electónico
                                    </label>                                   
                                </div>
                                
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <label name="lblIDSkype">ID de Skype</label>
                                    <input type="text" placeholder="ID Skype" name="txtIDSkype" class="form-control"/>
                                </div>
                                
                                <div class="col-md-3">
                                    <label name="lblTwitter">Twitter</label>
                                    <input type="text" placeholder="Twitter" name="txtTwitter" class="form-control"/>
                                </div>
                                
                                <div class="col-md-6">
                                    <label name="lblCorreElectronicoSecundario">Correo electrónico secundario</label>
                                    <input type="email" placeholder="Correo electrónico secundario" name="txtCorreElectronicoSecundario" class="form-control"/>
                                </div>
                                                          
                            
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-12">
                                    <b class="badge-pill badge-info">
                                        Registros: <%=lstclsPosiblesClientes.size()%>
                                    </b>
                                </div>
                            </div>
                        </div>
                        
            <%if(session.getAttribute("session_lstclsPosiblesClientes") !=null){%>
            

            
            
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-12">
                                    <table class="table table-bordered table-responsive">
                                        <thead class="thead-dark">
                                        <tr>
                                            <th>Empresa</th>
                                            <th>Nombre</th>
                                            <th>Apellidos</th>
                                            <th>Titulo</th>
                                            <th>Correo electrónico</th>
                                            <th>Teléfono</th>
                                            <th>Fax</th>
                                            <th>Movil</th>
                                            <th>Sitio Web</th>
                                            <th>Fuente Posibles Clientes</th>
                                            <th>Estado Posible Cliente</th>
                                            <th>Sector</th>
                                            <th>Cantidad Empleados</th>
                                            <th>Ingreso Anuales</th>
                                            <th>Calificación</th>
                                            <th>No participación correo electónico</th>
                                            <th>ID de Skype</th>
                                            <th>Twitter</th>
                                            <th>Correo electrónico secundario</th>
                                        </tr>
                                        </thead>
                                        <%
            
                                            DecimalFormat df = new DecimalFormat();
                                                df.setMaximumFractionDigits(2);
                                                df.setMinimumFractionDigits(2); 
            
                                            for(Models.clsPosiblesClientes item: lstclsPosiblesClientes){
                                                Models.clsFuentePosibleCliente obclsFuentePosibleCliente=item.getObclsFuentePosibleCliente();
                                                Models.clsEstadoPosibleCliente obclsEstadoPosibleCliente=item.getObclsEstadoPosibleCliente();
                                                Models.clsSector obclSector=item.getObclsSector();
                                                Models.clsCalificacion obclsCalificacion=item.getObclsCalificacion();
                                                
                                        %>
                                        <tbody>
                                        <tr>
                                            <td><%= item.getStEmpresa()%></td>
                                            <td><%= item.getStNombre()%></td>
                                            <td><%= item.getStApellidos()%></td>
                                            <td><%= item.getStTitulo()%></td>
                                            <td><%= item.getStCorreoElectronico()%></td>
                                            <td><%= item.getStTelefono()%></td>
                                            <td><%= item.getStFax()%></td>
                                            <td><%= item.getStMovil()%></td>
                                            <td><%= item.getStSitioWeb()%></td>
                                            <td><%= obclsFuentePosibleCliente.getStDescripcion()%></td>
                                            <td><%= obclsEstadoPosibleCliente.getStDescripcion()%></td>
                                            <td><%= obclSector.getStDescripcion()%></td>
                                            <td><%= item.getInCantidadEmpleados()%></td>
                                            <td class="dollars"><%= df.format(item.getDbIngresosAnuales())%></td>
                                            <td><%= obclsCalificacion.getStDescripcion()%></td>
                                            <td><%= item.getChNoParticipacionCorreoElectronico()%></td>
                                            <td><%= item.getStIDSkype()%></td>
                                            <td><%= item.getStTwitter()%></td>
                                            <td><%= item.getStCorreoElectronicoSecundario()%></td>
                                        </tr>                                        
                                        </tbody>
                                        <%    
                                            }
                                        %>
                                        
                                    </table>
                                </div>
                            
                            </div>
                        </div>
                                        <%} %>
                        
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>