<%@ Page AspCompat="true" Language="JScript" AutoEventWireup="true" CodeBehind="paso1.aspx.cs" Inherits="EjemploPractico_02.paso1" %>

<% 
    /*
    *   We use Session to store a variables globally.
    *   Once the session is ended, is better to clear
    *   the data with Session.Clear()
    */

    var question_01 = Request.Form("question_01");
    Session["question_01"] = question_01;
%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>Encuesta de Calidad</h1>
    <form id="form1" runat="server" action="paso2.aspx" method="post">
        <div>
            <label for="question_02">Del 1 al 5, Indique el grado de satisfacción con el proceso de compra</label><br />
            <select name="question_02">
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
