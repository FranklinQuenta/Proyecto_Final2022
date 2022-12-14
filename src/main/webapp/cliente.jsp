<!--
JSP DESTINADO SOLO A FORMULARIO DE EDICION/REGISTRO
aun me falta saber como seria el registro de nuevos usuarios pero esta seria la estructura
inicial

-->
<!--Ya sabes la validacion de acceso similar a la de los Controladores-->
<%
    if (session.getAttribute("login")!="OK") {
            response.sendRedirect("index.jsp");
        }
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
La parte de los links, los metas, y el script de la linea 97 son predeterminados, deben ir en cada JSP
creado para que tenga el formato que viste al ejecutarlo
-->
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>JSP Page</title>
 <style>
              body {
                display: flex;
                align-items: center;
                padding-top: 40px;
                padding-bottom: 40px;
                background-color: #AFEEEE;
            }
        </style>
    </head>
    <body>
        <div class="container">

                <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="editar"/>
            </jsp:include>
            <p>
                <!--Boton para cerrar sesion, se conecta con el controlador Logout-->
                <a href="Logout" class="btn btn-outline-danger"><i class="fas fa-window-close"></i> Cerrar Sesion</a>

            </p
            <!--El formulario que se usará tambien para depositos y retiros
            sigue el mismo formato, solo debes cambiar los nombres y algunas cosas que ya veras
            al depositar y retirar solo insertaras datos no modificaras asi que referenciar la info
            no será util-->
            <form action="ClienteControlador" method="post">
                <input type="hidden" name="id_cliente" value="${cliente.id_cliente}">
                <div class="mb-3">
                    <label for="" class="form-label">Nombres</label>
                    <input type="text" type="text" style="text-transform:uppercase;" class="form-control" name="nombres" value="${cliente.nombres}" placeholder="Escriba su/sus nombres" >
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Apellidos</label>
                    <input type="text" type="text" style="text-transform:uppercase;" class="form-control" name="apellidos" value="${cliente.apellidos}" placeholder="Escriba su/sus apellidos">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Cedula de Identidad</label>
                    <input type="text" type="text" style="text-transform:uppercase;" class="form-control" name="cedula_identidad" value="${cliente.cedula_identidad}" placeholder="Escriba su CI">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Sexo</label>
                    <input type="text" type="text" style="text-transform:uppercase;" class="form-control" name="sexo" value="${cliente.sexo}" placeholder="Escriba su sexo">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Direccion</label>
                    <input type="text" type="text" style="text-transform:uppercase;" class="form-control" name="direccion" value="${cliente.direccion}" placeholder="Escriba su direccion">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Celular</label>
                    <input type="text" type="text" style="text-transform:uppercase;" class="form-control" name="celular" value="${cliente.celular}" placeholder="Escriba su numero de celular">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Correo</label>
                    <input type="email" type="text" style="text-transform:uppercase;" class="form-control" name="correo" value="${cliente.correo}" placeholder="Escriba su correo electronico">
                </div>
                <button type="submit" class="btn btn-dark">Enviar</button>
            </form>
        </div>
        <!--Script que debe estar presente en cada JSP-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>