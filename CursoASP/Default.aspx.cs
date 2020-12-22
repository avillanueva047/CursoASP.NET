using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CursoASP
{
    public partial class _Default : Page
    {
        bool mostrarBoton = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (mostrarBoton == false) Button1.Visible = false;

            for (int loopCount = 1; loopCount <= 10; loopCount++)
            {
                if (loopCount == 5)
                {
                    break;
                }
                Label1.Text += loopCount.ToString() + "<br />";

                writeCount(loopCount);
            }
        }

        private void writeCount(int i)
        {
            Label2.Text += "Contador: " + i.ToString() + "<br />";
        }
    }
}