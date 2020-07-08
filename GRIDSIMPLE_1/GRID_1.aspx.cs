using Capa_Datos;
using Capa_Datos.Entidades;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GRIDSIMPLE_1
{
    public partial class GRID_1 : System.Web.UI.Page
    {
        Datos objDato;

        List<Facturas> auxLista; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                cg_Datos(); 
            }
        }

        void cg_Datos()
        {
            objDato = new Datos();
            auxLista = objDato.Listado_de_Factura();
            Grid_Control.DataSource = auxLista;
            Grid_Control.DataBind(); 
        }
        protected void Grid_Control_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(Grid_Control, "Select$" + e.Row.RowIndex); 
            }

        }

        protected void Grid_Control_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach(GridViewRow fila in Grid_Control.Rows)
            {
                if (fila.RowIndex == Grid_Control.SelectedIndex)
                {
                    txtID_FACTURA.Text = fila.Cells[0].Text;
                    txtNUM_LINEA.Text = fila.Cells[1].Text;
                    txtCODIGO.Text = fila.Cells[2].Text;
                    txtDET_PRODUCTO.Text = fila.Cells[3].Text;
                    txtCANTIDAD.Text = fila.Cells[4].Text;
                    txtCOSTO.Text = fila.Cells[5].Text;
                    txtTOTAL.Text = fila.Cells[6].Text;
                    fila.BackColor = ColorTranslator.FromHtml("#1ABC9C"); 
                }
                else
                {
                    fila.BackColor = ColorTranslator.FromHtml("#C0392B ");
                }
            }

            cg_Datos(); 

        }
    }
}