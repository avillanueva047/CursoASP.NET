<%@ Page AspCompat="true" Language="JScript" AutoEventWireup="true" CodeBehind="paso2.aspx.cs" Inherits="EjemploPractico_02.paso2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>Encuesta de Calidad</h1>
    <form id="form1" runat="server" method="post" action="final.aspx">
        <div>
            <h3>Por favor, Introduzca sus datos a continuación</h3>
        </div>
        <div>
            <label for="nombre">Escriba su Nombre</label><br />
            <input type="text" name="nombre"/>
        </div>
        <div>
            <label for="apellido">Escriba su Apellido</label><br />
            <input type="text" name="apellido"/>
        </div>
        <div>
            <label for="edad">Indique su edad</label><br />
            <input type="number" name="edad"/>
        </div>
        <div>
            <label for="sexo">Indique su Sexo</label><br />
            <select name="sexo">
                <option value="M">Masculino</option>
                <option value="F">Femenino</option>
            </select>
        </div>
        <div>
            <button type="submit">Terminar</button>
        </div>
    </form>
</body>
</html>
