<%@ Page AspCompat="true" Language="JScript" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EjemploPractico_01.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>Formulario de Proveedor</h1>
    <form action="proveedor.aspx" method="post">
        <div>
            <div>
                <label for="proveedor">Proveedor</label><br />
                <input type="text" name="proveedor"/>
            </div>
            <div>
                <label for="cif">CIF</label><br />
                <input type="text" name="cif" />
            </div>
            <div>
                <label for="ciudad">Ciudad</label><br />
                <input type="text" name="ciudad"/>
            </div>
            <div>
                <label for="tlf">Telefono</label><br />
                <input type="text" name="tlf"/>
            </div>
            <div>
                <br /><button type="submit">Registrar</button>
            </div>
        </div>
    </form>
</body>
</html>
