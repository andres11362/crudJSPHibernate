<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <%@include file="header.jsp" %>
        <title>Agregar un usuario</title>
    </head>
    <body>
        <ol class="breadcrumb">
            <li><a href="<%=request.getContextPath()%>/User">Usuarios</a></li>
            <li class="active">Agregar Usuarios</li>
        </ol>
        <div class="container well">
            <div class="page-header">
                 <h1>Nuevo usuario</h1>
            </div>
            <div class="col-md-6">
                <form action="<%=request.getContextPath()%>/Create" method="post">
                    <div class="form-group">
                        <label for="nombres">Nombres</label>
                        <input type="text" name="nombres" id="nombres" class="form-control" placeholder="Por favor digite sus nombres" required>
                    </div>
                    <div class="form-group">
                        <label for="correo">Correo Electronico</label>
                        <input type="email" name="correo" id="correo" class="form-control" placeholder="Por favor digite su correo electronico" required>
                    </div>
                    <p>
                        <input type="submit" class="btn btn-success" value="Agregar Usuario">
                    </p>
                </form>
            </div>
        </div>
        <%@include file="scripts.jsp" %>
    </body>
</html>
