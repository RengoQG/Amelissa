<%-- 
    Document   : agregar
    Created on : 7/12/2022, 02:30:13 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<br>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar</title>
    </head>
    <body style="background-color: brown">
        <div class="container">
            <div class="card text-center">
                <div class="card-header">
                    Formulario
                </div>
                <div class="card-body">
                    <h5 class="card-title">Agregar registro</h5>
                    <form method="POST">
                        <div class="form-group">
                            <label  >Nombre</label>
                            <input name="nombres" type="text" class="form-control"  placeholder="Ingresa un nombre">

                        </div>
                        <div class="form-group">
                            <label  >Documento</label>
                            <input name="documentos" type="text" class="form-control"  placeholder="Ingresa un documento">
                        </div>
                        <div class="form-group">
                            <label  >Diección</label>
                            <input name="direcciones" type="text" class="form-control"  placeholder="Ingresa tú dirección">
                        </div>

                        <button type="submit" value="Agregar" class="btn btn-primary">Agregar registro</button> |
                        <a href="index.htm" class="btn btn-danger">Cancelar</a>
                    </form>

                </div>
                <div class="card-footer text-muted">
                    Johan
                </div>
            </div>
        </div>

    </body>
</html>
