<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <%@include file="header.jsp" %>
        <title>Usuarios</title>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <h1>Usuarios</h1>
            </div>
            <div class="table-responsive">
                <a href="<%=request.getContextPath()%>/Agregar" class="btn btn-primary pull-right">Agregar usuario</a>
                <br>
                <br>
                <table class="table table-bordered">
                    <thead>
                    <th>
                        Id
                    </th>
                    <th>
                        Nombres
                    </th>
                    <th>
                        Correo
                    </th>
                    <th>
                        Acciones
                    </th>
                    </thead>
                    <tbody>
                <c:forEach items="${datos}" var="dato">
                    <tr>
                        <td>
                            <c:out value="${dato.getId()}" />
                        </td>
                        <td>
                            <c:out value="${dato.getNombres()}" />
                        </td>
                        <td>
                            <c:out value="${dato.getCorreo()}" />
                        </td>
                        <td>
                            <a href="<%=request.getContextPath()%>/Editar?id=<c:out value="${dato.getId()}" />"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                            <a href="<%=request.getContextPath()%>/Delete?id=<c:out value="${dato.getId()}" />" onclick="return confirm('Desea confirmar la devolucion del activo?')"><span class="glyphicon glyphicon-erase" aria-hidden="true"></span></a>
                        </td>
                    </tr>    
                </c:forEach>
                 </tbody>
                </table>
            </div>
            <a href="index" class="btn btn-link">Volver</a>
        </div>
        <%@include file="scripts.jsp" %>
    </body>
</html>
