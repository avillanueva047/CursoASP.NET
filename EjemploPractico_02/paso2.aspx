<%@ Page AspCompat="true" Language="JScript" AutoEventWireup="true" CodeBehind="paso2.aspx.cs" Inherits="EjemploPractico_02.paso2" %>

<%
    var question_02 = Request.Form("question_02");
    Session["question_02"] = question_02;
%>

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
            <label for="name">Escriba su Nombre</label><br />
            <input type="text" name="name"/>
        </div>
        <div>
            <label for="last_name">Escriba su Apellido</label><br />
            <input type="text" name="last_name"/>
        </div>
        <div>
            <label for="age">Indique su edad</label><br />
            <!-- Is need both argument (min & max) to set a range -->
            <input type="number" name="age" min="13" max="150"/>
        </div>
        <div>
            <label for="sex">Indique su Sexo</label><br />
            <select name="sex">
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
