<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Amelissa</title>
    </head>

    <body style="background-color: brown">
        <br>

        <div class="container">
            <div class="card  shadow">
                <div class="card-header shasow">
                    CRUD
                </div>
                <div class="card-body">
                    <div class="navbar">
                        <form class="form-inline">
                            <input type="search" name="txtbuscar" class="form-control">
                            <input type="submit" name="accion" value="Buscar" class="btn btn-success">
                        </form>
                    </div>
                   
                    <table class="table table-bordered text-center shadow">
                        
                        <thead  class="thead-light">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">NOMBRE</th>
                                <th scope="col">DOCUMENTO</th>
                                <th scope="col">DIRECCION</th>
                                <th scope="col">ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <th scope="row">${dato.id}</th>
                                    <td>${dato.nombres}</td>
                                    <td>${dato.documentos}</td>
                                    <td>${dato.direcciones}</td>
                                    <td>
                                        <a href="editar.htm?id=${dato.id}" class="btn btn-warning">Editar</a>
                                        <a href="delete.htm?id=${dato.id}" class="btn btn-danger">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <a href="agregar.htm" class="btn btn-primary">Agregar nuevo</a>
                </div>
                <div class="card-footer text-muted">
                    JOHAN QUINTERO
                </div>
            </div>

        </div>

    </body>
</html>
