<%-- 
    Document   : Alumnos
    Created on : 08-31-2016, 06:02:47 PM
    Author     : Laboratorio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alumnos</title>
        <link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'/>
        <script type='text/javascript' src='webjars/jquery/2.1.4/jquery.min.js'></script>
        <script type='text/javascript' src='webjars/bootstrap/3.2.0/js/bootstrap.min.js'></script>
    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
              <!-- Brand and toggle get grouped for better mobile display -->
              <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">Parcial</a>
              </div>

              <!-- Collect the nav links, forms, and other content for toggling -->
              <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">

                  <li><a href="index.jsp">Menu</a></li>
                    <li><a href="tipoDocu.jsp">Alumno</a></li>
                      <li><a href="tipoGafe.jsp">Grupos</a></li>

                </ul>


              </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
          </nav>
        <form action="TipoDocuServ" method="Post">
             <input  type="hidden" name="codi" id="codi" value="${codi}"/>
            <div class="container">
                
                
                <div class="panel panel-default" style="padding: 15px;">
                    <h2>CRUD Tipo de documento</h2>
                    <div class="form-group">
                        <label for="nomb">Nombre: </label>
                        <input class="form-control" type="text" name="nomb" id="nomb"value="${nomb}" />
                    </div>
                    <div class="form-group">
                        <label for="nomb">Apellido: </label>
                        <input class="form-control" type="text" name="apel" id="nomb"value="${nomb}" />
                    </div>
                    <div class="form-group">
                        <label for="nomb">Fecha de nacimiento: </label>
                        <input class="form-control" type="text" name="fech" id="nomb"value="${nomb}" />
                    </div>
                    <div class="form-group">
                        <label for="nomb">Correo: </label>
                        <input class="form-control" type="text" name="correo" id="nomb"value="${nomb}" />
                    </div>
                    <div class="form-group">
                        <label for="nomb">Teléfono: </label>
                        <input class="form-control" type="text" name="tel" id="nomb"value="${nomb}" />
                    </div>
                    <div class="form-group">
                        <label for="nomb">Dirección: </label>
                        <input class="form-control" type="text" name="direccion" id="nomb"value="${nomb}" />
                    </div>
                    <div class="form-group">
                        <label for="nomb">Genero: </label>
                        <input class="form-control" type="text" name="genero" id="nomb"value="${nomb}" />
                    </div>
                    <div class="btn-group">
                        <input type="submit" name="alumBton" value="Guardar" class="btn btn-default" />
                        <input type="submit" name="alumBton" value="Consultar" class="btn btn-default" />
                        <input type="submit" name="alumBton" value="Modificar" class="btn btn-default" />
                        <input type="submit" name="alumBton" value="Eliminar" class="btn btn-default" />
                    </div>
                </div>
                <div class="panel panel-default"style="padding: 15px;">
                    <jsp:useBean id="TipoDocuCtrl" class="//com.sv.udb.controlador.TipoDocuCtrl" scope="page"/>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Nombre</th>                              
                                 <th>Seleccione</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${TipoDocuCtrl.ConsTodo()}" var="fila">
                                <tr>
                                    <td><c:out value="${fila.nombTipoDocu}"></c:out></td>                                 
                                    <td> <input type="radio" name="codiRadi" value="${fila.codiTipoDocu}"/></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                 </div>
            </div>
            
        </form>
    </body>
</html>
