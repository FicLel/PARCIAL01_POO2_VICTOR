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
        <form  action="AlumnosServ" class="form-horizontal style-form" method="POST">
      <section id="main-content">          
              <section class="wrapper">
                  <h3><i class="fa fa-angle-right"></i>Alumnos</h3>

                  <!-- BASIC FORM ELELEMNTS -->
                  <div class="row mt">
                      <div class="col-lg-12">
                          <div class="form-panel">
                                  <h4 class="mb" id="mensaje">${mensAler}</h4>

                                  <div class="form-group">
                                      <div class="col-sm-12">
                                          <label for="nombre">Nombre: </label>
                                            <input class="form-control" type="text" name="nombre"/>
                                      </div>
                                      <div class="col-sm-12">
                                          <label for="apellido">Apellido: </label>
                                            <input class="form-control" type="text" name="apellido"/>
                                      </div>
                                      <div class="col-sm-12">
                                          <label for="fechaNacimiento">Fecha Nacimiento: </label>
                                            <input class="form-control" type="date" name="fechaNacimiento"/>
                                      </div>
                                      <div class="col-sm-12">
                                          <label for="correo">Correo electrónico: </label>
                                            <input class="form-control" type="text" name="correo"/>
                                      </div>
                                      <div class="col-sm-12">
                                          <label for="telefono">Teléfono </label>
                                            <input class="form-control" type="text" name="telefono"/>
                                      </div>
                                      <div class="col-sm-12">
                                          <label for="direccion">Dirección </label>
                                            <input class="form-control" type="text" name="direccion"/>
                                      </div>
                                      <div class="col-sm-12">
                                          <label for="genero">Género </label>
                                          <select class="form-control" name="genero">
                                              <option value="f">Femenino</option>
                                              <option value="m">Masculino</option>
                                          </select>
                                      </div>
                                  </div>
                                      
                                      
                              <div class="col s12 center-align">
                                  <input type="submit" name="accionBtn" value="Guardar" class="btn btn-default" />                                        
                              </div>    
                          </div>
                      </div><!-- col-lg-12-->      	
                  </div><!-- /row -->
              </section>      
      </section><!-- /MAIN CONTENT -->
      </form>
    </body>
</html>
