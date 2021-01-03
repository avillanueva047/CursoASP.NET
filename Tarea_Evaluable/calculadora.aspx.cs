using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea_Evaluable
{
    public partial class calculadora : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calcular_Click(object sender, EventArgs e)
        {
            switch (operacion.SelectedValue)
            {
                case "sumar":
                    resultado.InnerText = "El resultado de la operación es: " + (Int32.Parse(numero_1.Value) + Int32.Parse(numero_2.Value));
                    break;
                case "restar":
                    resultado.InnerText = "El resultado de la operación es: " + (Int32.Parse(numero_1.Value) - Int32.Parse(numero_2.Value));
                    break;
                case "multiplicar":
                    resultado.InnerText = "El resultado de la operación es: " + (Int32.Parse(numero_1.Value) * Int32.Parse(numero_2.Value));
                    break;
            }
        }
    }
}