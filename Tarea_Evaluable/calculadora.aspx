<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calculadora.aspx.cs" Inherits="Tarea_Evaluable.calculadora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label for="numero_1">Número 1:</label>
            <input id="numero_1" name="numero_1" type="number" runat="server"/>
        </div>
        <br />
        <div>
            <label for="numero_2">Número 2:</label>
            <input id="numero_2" name="numero_2" type="number" runat="server" />
        </div>
        <br />
        <div>
            <asp:DropDownList id="operacion" name="operacion" runat="server">
                <asp:ListItem value="sumar">Sumar</asp:ListItem>
                <asp:ListItem value="restar">Restar</asp:ListItem>
                <asp:ListItem value="multiplicar">Multiplicar</asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:Button id="Calcular" runat="server" Text="Calcular" OnClick="Calcular_Click" />
        </div>
        <br />
    </form>
    <label id="resultado" runat="server"></label>
</body>
</html>
