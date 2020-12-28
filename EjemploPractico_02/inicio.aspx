<%@ Page AspCompat="true" Language="JScript" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="EjemploPractico_02.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>Encuesta de Calidad</h1>
    <form id="form1" runat="server" action="paso1.aspx" method="post">
        <div>
            <label for="question_01">Del 1 al 5, Indique el grado de satisfacción con la atención ofrecida</label><br />
            <select name="question_01">
                <option value = "5">Muy Buena(5)</option>
                <option value = "4">Buena (4)</option>
                <option value = "3">Regular (3)</option>
                <option value = "2">Mala (2)</option>
                <option value = "1">Muy Mala (1)</option>
            </select>
        </div>
        <div>
            <button type="submit">Siguiente</button>
        </div>
    </form>
</body>
</html>
