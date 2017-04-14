<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <%@include file="header.jsp" %>
        <title>Editar un usuario</title>
    </head>
    <body>
        <ol class="breadcrumb">
            <li><a href="<%=request.getContextPath()%>/User">Usuarios</a></li>
            <li class="active">Editar Usuarios</li>
        </ol>
        <div class="container well">
            <div class="page-header">
                 <h1>Editar usuario</h1>
            </div>
            <div class="col-md-6">
                <form action="<%=request.getContextPath()%>/Update" method="post">
                    <input type="hidden" value="<c:out value="${id}"/>" name="id">
                    <div class="form-group">
                        <label for="nombres">Nombres</label>
                        <input type="text" name="nombres" value="<c:out value="${nombre}" />" id="nombres" class="form-control" placeholder="Por favor digite sus nombres" required>
                    </div>
                    <div class="form-group">
                        <label for="correo">Correo Electronico</label>
                        <input type="email" name="correo" value="<c:out value="${correo}" />" id="correo" class="form-control" placeholder="Por favor digite su correo electronico" required>
                    </div>
                    <p>
                        <input type="submit" class="btn btn-success" value="Editar Usuario">
                    </p>
                </form>
            </div>
        </div>
        <%@include file="scripts.jsp" %>
    </body>
</html>
