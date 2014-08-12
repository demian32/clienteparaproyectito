<%-- 
    Document   : index
    Created on : 11/07/2014, 10:38:13 AM
    Author     : Deyanira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciando Sesion</title>
        <!-- Bootstrap core CSS -->
        <link href="./js/libs/twitter-bootstrap/css/bootstrap.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        #principal{
            position:fixed;
            background-color: white;
            height: 100%;
            width:100%;
            left:0px;
            top:0px;
            z-index:2000;
        }
        #body{
            position: absolute;
            height: 100%;
            width:100%;
            left:0px;
            top:0px;
            z-index: 100;
        }
    </style>
    </head>
    <body>
        <div id="principal">
            <div class="container">

                <form class="form-signin" role="form">
                  <h2 class="form-signin-heading">Inicia Sesion</h2>
                  <input type="login" class="form-control" placeholder="login" required autofocus>
                  <input type="password" class="form-control" placeholder="password" required>
                  <div class="checkbox">
                    <label>
                      <input type="checkbox" value="remember-me"> Remember me
                    </label>
                  </div>
                  <a href="#" id="in" class="btn btn-warning btn-block">Inicia Sesion</a>
                </form>
            </div>
        </div>
        <div id="body">
            <ul class="nav nav-tabs">
  <li class="active"><a href="#inicio" data-toggle="tab">Inicio</a></li>
  <li><a href="#perfil" data-toggle="tab">Usuarios</a></li>
 <li><a href="#mensaje" data-toggle="tab">Libros</a></li>
  <li><a href="#configuracion" data-toggle="tab">Prestamo de libros</a></li>
</ul>
        <div class="tab-content">
            <div class="tab-pane fade in active" id="inicio">Inicio</div>
            <div class="tab-pane fade" id="perfil">
                <div class="row">
                    <center>Insertar usuario</center><br>
                    <div class="col-xs-6">
                        <label >Nombre:</label>
                        <input id="nom" type="text" class="form-control" ></input>
                        <button type="submit" class="btn btn-primary" id="nuevous">Enviar</button>
                    </div>
                </div>
                <div class="row">
                    <center>Actualizar usuario</center><br>
                    <div class="col-xs-6">
                        <label>Id:</label>
                        <input id="idu" type="text" class="form-control" >
                        <label>Nombre:</label>
                        <input id="nom" type="text" class="form-control" ></input>
                        <button type="submit" class="btn btn-primary" id="actualusu">Enviar</button>
                    </div>
                </div>
                <div class="row">
                    <center>Borrar usuario</center><br>
                    <div class="col-xs-6">
                        <label >Id:</label>
                        <input id="idu" type="text" class="form-control" ></input>
                        <label>Nombre:</label>
                        <input id="nom" type="text" class="form-control" ></input>
                        <button type="submit" class="btn btn-primary" id="borrarus">Enviar</button>
                    </div>
                </div>
                <center>Buscar Todos los usuarios</center><br>
                <div class="row">		
                    <div class="col-xs-2">
                        <button type="submit" class="btn btn-primary btn-block" id="buscaust">Consultar</button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <ul id="buscaus"></ul>
                    </div>
                </div>
                <div class="row">
                    <center>Buscar usuario por Id</center><br>
                    <div class="col-xs-6">
                        <label>Id:</label>
                        <input id="idu" type="text" class="form-control" ></input>
                        <button type="submit" class="btn btn-primary" id="buscarusi">Enviar</button>
                        <div class="row">
                            <div class="col-xs-12">
                                <ul id="bui"></ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="mensaje">
                <div class="row">
                    <center>Insertar Libro</center><br>
                    <div class="col-xs-6">
                        <label >Nombre:</label>
			<input id="nom" type="text" class="form-control" ></input>
			<label>Autor:</label>
			<input id="aut" type="text" class="form-control"></input>
			<label >Precio:</label>
			<input id="pre" type="text" class="form-control"></input>
                        <button type="submit" class="btn btn-primary" id="nuevoli">Enviar</button>
                    </div>
                </div>
                <div class="row">
                    <center>Actualizar Libro</center><br>
                    <div class="col-xs-6">
                        <label >Id:</label>
                        <input id="idl" type="text" class="form-control" ></input>
                        <label >Nombre:</label>
			<input id="nom" type="text" class="form-control" ></input>
			<label >Autor:</label>
			<input id="aut" type="text" class="form-control" ></input>
			<label >Precio:</label>
			<input id="pre" type="text" class="form-control" ></input>
                        <button type="submit" class="btn btn-primary" id="actualizarli">Enviar</button>
                    </div>
                </div>
                <div class="row">
                    <center>Borrar Libro</center><br>
                    <div class="col-xs-6">
                        <label >ID:</label>
                        <input id="idl" type="text" class="form-control" ></input>
                        <label >Nombre:</label>
			<input id="nom" type="text" class="form-control"></input>
                        <button type="submit" class="btn btn-primary" id="borrarli">Enviar</button>
                    </div>
                </div>
                <center>Buscar Todos los Libros</center><br>
                <div class="row">		
                    <div class="col-xs-2">
                        <button type="submit" class="btn btn-primary btn-block" id="buscalit">Consultar</button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <ul id="buscalib"></ul>
                    </div>
                </div>
                <div class="row">
                    <center>Buscar libro por Id</center><br>
                    <div class="col-xs-6">
                        <label >Id:</label>
                        <input id="idl" type="text" class="form-control"></input>
                        <button type="submit" class="btn btn-primary" id="buscarlii">Enviar</button>
                        <div class="row">
                            <div class="col-xs-12">
                                <ul id="bli"></ul>
                            </div>
                        </div>
                    </div>
                </div>
            
            
            </div>
            <div class="tab-pane fade" id="configuracion">
                <div class="row">
                    <center>Insertar prestamo de libro</center><br>
                    <div class="col-xs-6">
                        <label>Id del Usuario:</label>
                        <input id="idu" type="text" class="form-control" ></input>
                        <label>Id del libro:</label>
                        <input id="idl" type="text" class="form-control" >
                        <label>fecha:</label>
			<input id="fec" type="text" class="form-control"></input>
			<label>cantidad:</label>
			<input id="can" type="text" class="form-control" ></input>
			<label>Total:</label>
			<input id="tot" type="text" class="form-control"></input>
                        <button type="submit" class="btn btn-primary" id="nuevopr">Enviar</button>
                    </div>
                </div>
                <div class="row">
                    <center>Actualizar prestmo de libro</center><br>
                    <div class="col-xs-6">
                        <label>Id del Prestamo:</label>
                        <input id="idp" type="text" class="form-control"></input>
                        <label>Id del Usuario:</label>
                        <input id="idu" type="text" class="form-control"></input>
                        <label>Id del libro:</label>
                        <input id="idl" type="text" class="form-control">
                        <label>fecha:</label>
			<input id="fec" type="text" class="form-control"></input>
			<label>cantidad:</label>
			<input id="can" type="text" class="form-control"></input>
			<label>Total:</label>
			<input id="tot" type="text" class="form-control"></input>
                        <button type="submit" class="btn btn-primary" id="actualizarli">Enviar</button>
                    </div>
                </div>
                <div class="row">
                    <center>Borrar prestamo de libro</center><br>
                    <div class="col-xs-6">
                        <label>ID:</label>
                        <input id="idl" type="text" class="form-control"></input>
                        <label>Total:</label>
                        <input id="tot" type="text" class="form-control"></input>
                        <button type="submit" class="btn btn-primary" id="borrarli">Enviar</button>
                    </div>
                </div>
                <center>Buscar Todos los prestamo de libros</center><br>
                <div class="row">		
                    <div class="col-xs-2">
                        <button type="submit" class="btn btn-primary btn-block" id="buscaprt">Consultar</button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <ul id="buscapre"></ul>
                    </div>
                </div>
                <div class="row">
                    <center>Buscar prestamo de libro por ID</center><br>
                    <div class="col-xs-6">
                        <label>Id:</label>
                        <input id="idp" type="text" class="form-control"></input>
                        <button type="submit" class="btn btn-primary" id="buscarpri">Enviar</button>
                        <div class="row">
                            <div class="col-xs-12">
                                <ul id="bpi"></ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <script src="./js/libs/jquery/jquery.js"></script>
        <script src="./js/libs/twitter-bootstrap/js/bootstrap.js"></script>
        <script src="assets/js/bootstrap-tab.js"></script>
        <script src="assets/js/bootstrap-alert.js"></script>
        <!--Script de bienvenida al ingresar-->
        <script>
            $(document).ready(function(){
            $("#in").click(function(){
                alert("Bien hecho has ingresado los datos correctos");
            $("#principal").hide(2000);    
        });
    });
            
        </script>
        <!--Script para insertar nueva Usuario-->
        <script>
        	$("#nuevous").click(function(){
        		var nom = $("#nom").val();
        		$.ajax({
        			method: 'POST',
        			url:"http://localhost:8080/Proyectito/servicios/usuario/"+ nom,
        			success: function(mensaje){
        				alert(mensaje);
        			},
        			failure: function(e){
        				alert(e);
        			},
        		});
        	});
        </script>

        <!--Script para insertar nuevo Libro-->
        <script>
        	$("#nuevoli").click(function(){
        		var nom = $("#nom").val();
                        var aut = $("#aut").val();
                        var pre = $("#pre").val();
        		$.ajax({
        			method: 'POST',
        			url:"http://localhost:8080/Proyectito/servicios/libro/"+ nom+"/"+aut+"/"+pre,
        			success: function(mensaje){
        				alert(mensaje);
        			},
        			failure: function(e){
        				alert(e);
        			},
        		});
        	});
        </script>
		
		<!--Script para insertar nuevo Prestamo de libros-->
        <script>
        	$("#nuevopr").click(function(){
        		var idu = $("#idu").val();
        		var idl = $("#idl").val();
        		var fec = $("#fec").val();
        		var can = $("#can").val();
                        var tot = $("#tot").val();
        		$.ajax({
        			method: 'POST',
        			url:"http://localhost:8080/Proyectito/servicios/prestamo/"+idu+"/"+idl+"/"+fec+"/"+can+"/"+tot,
        			success: function(mensaje){
        				alert(mensaje);
        			},
        			failure: function(e){
        				alert(e);
        			},
        		});
        	});
        </script>

		<!--Script para buscar todos los usuarios-->
        <script>
        	$("#buscaust").click(function(){
        		$.getJSON("http://localhost:8080/Proyectito/servicios/usuario",function(result){
        			$.each(result, function(i,campo){
        				$("#buscaus").append("<li>"+ campo.id +" - "+ campo.Nombre +"</li>");
        			});
        		});
        	});
        </script>

        <!--Script para buscar todos los libros-->
        <script>
        	$("#buscalit").click(function(){
        		$.getJSON("http://localhost:8080/Proyectito/servicios/libro",function(result){
        			$.each(result, function(i,campo){
        				$("#buscalib").append("<li>"+ campo.id +" - "+ campo.nombre +"</li>");
        			});
        		});
        	});
        </script>

        <!--Script para buscar todos los prestamo de libros-->
        <script>
        	$("#buscaprt").click(function(){
        		$.getJSON("http://localhost:8080/Proyectito/servicios/prestamo",function(result){
        			$.each(result, function(i,campo){
        				$("#buscapre").append("<li>"+ campo.idpre +" - "+ campo.id_a +" - "+ campo.id_l +" - "+ campo.fecha +" - "+ campo.cantidad +" - "+campo.total+"</li>");
        			});
        		});
        	});
        </script>
        
        <!--Script para actualizar usuario-->
        <script>
        	$("#actualizarus").click(function(){
        		var idu = $("#idu").val();
        		var nom = $("#nom").val();
        		$.ajax({
        			method: 'PUT',
        			url:"http://localhost:8080/Proyectito/servicios/usuario/"+ idu +"/"+ nom,
        			success: function(mensaje){
        				alert(mensaje);
        			},
        			failure: function(e){
        				alert(e);
        			},
        		});
        	});
        </script>
        
        <!--Script para actualizar libros-->
        <script>
        	$("#actualizarli").click(function(){
        		var idl = $("#idl").val();
        		var nom = $("#nom").val();
                        var aut = $("#aut").val();
                        var pre = $("#pre").val();
        		$.ajax({
        			method: 'PUT',
        			url:"http://localhost:8080/Proyectito/servicios/libro/"+ idl +"/"+ nom+"/"+aut+"/"+pre,
        			success: function(mensaje){
        				alert(mensaje);
        			},
        			failure: function(e){
        				alert(e);
        			},
        		});
        	});
        </script>
        
        <!--Script para actualizar prestamo de libro-->
        <script>
        	$("#actualizarpr").click(function(){
                        var idp = $("#idp").val();
        		var idu = $("#idu").val();
        		var idl = $("#idl").val();
        		var fec = $("#fec").val();
        		var can = $("#can").val();
                        var tot = $("#tot").val();
        		$.ajax({
        			method: 'PUT',
        			url:"http://localhost:8080/Proyectito/servicios/prestamo/"+ idp +"/"+ idu +"/"+ idl +"/"+ fec +"/"+ can+"/"+tot,
        			success: function(mensaje){
        				alert(mensaje);
        			},
        			failure: function(e){
        				alert(e);
        			},
        		});
        	});
        </script>

		<!--Script para eliminar usuario-->
        <script>
        	$("#borrarus").click(function(){
        		var idu = $("#idu").val();
                        var nom = $("#nom").val();
        		$.ajax({
        			method: 'DELETE',
        			url: "http://localhost:8080/Proyectito/servicios/usuario/"+ idu+"/"+nom,
        			success: function(mensaje){
        				alert(mensaje);
        			},
        			failure: function(e){
        				alert(e);
        			},
        		});
        	});
        </script>

        <!--Script para eliminar libros-->
        <script>
        	$("#borrarli").click(function(){
        		var idl = $("#idl").val();
                        var nom = $("#nom").val();
        		$.ajax({
        			method: 'DELETE',
        			url: "http://localhost:8080/Proyectito/servicios/libro/"+ idl+"/"+nom,
        			success: function(mensaje){
        				alert(mensaje);
        			},
        			failure: function(e){
        				alert(e);
        			},
        		});
        	});
        </script>

        <!--Script para eliminar prestamo de libros-->
        <script>
        	$("#borrarpr").click(function(){
        		var idp = $("#idp").val();
                        var tot = $("#tot").val();;
        		$.ajax({
        			method: 'DELETE',
        			url: "http://localhost:8080/Proyectito/servicios/prestamo/"+ idp+"/"+tot,
        			success: function(mensaje){
        				alert(mensaje);
        			},
        			failure: function(e){
        				alert(e);
        			},
        		});
        	});
        </script>

        <!--Script para buscar usuario por ID-->
        <script>
        	$("#buscarusi").click(function(){
        		var idu = $("#idu").val();
        		$.ajax({
        			method: 'GET',
        			url: "http://localhost:8080/Proyectito/servicios/usuario/"+ idu,
        			success: function(mensaje){
        				$("#bui").append("<li>"+ mensaje + "</li>");
        			},
        			failure: function(e){
        				alert(e);
        			},
        		});
        	});
        </script>

        <!--Script para buscar libro por ID-->
        <script>
        	$("#buscarlii").click(function(){
        		var idl = $("#idl").val();
        		$.ajax({
        			method: 'GET',
        			url: "http://localhost:8080/Proyectito/servicios/libro/"+ idl,
        			success: function(mensaje){
        				$("#bli").append("<li>"+ mensaje + "</li>");
        			},
        			failure: function(e){
        				alert(e);
        			},
        		});
        	});
        </script>

        <!--Script para buscar prestamo por ID-->
        <script>
        	$("#buscarpri").click(function(){
        		var idp = $("#idp").val();
        		$.ajax({
        			method: 'GET',
        			url: "http://localhost:8080/Proyectito/servicios/prestamo/"+ idp,
        			success: function(mensaje){
        				$("#bpi").append("<li>"+ mensaje + "</li>");
        			},
        			failure: function(e){
        				alert(e);
        			},
        		});
        	});
        </script>

    </body>
</html>
