<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GRID_1.aspx.cs" EnableEventValidation="false" Inherits="GRIDSIMPLE_1.GRID_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="Grid_Control" runat="server" 
                AutoGenerateColumns=" false"  
                BackColor="White" 
                BorderColor="White" 
                BorderStyle="Ridge" 
                BorderWidth="2px" 
                CellPadding="3" 
                CellSpacing="1" 
                GridLines="None" 
                Width="227px" 
                OnRowDataBound="Grid_Control_RowDataBound" 
                OnSelectedIndexChanged="Grid_Control_SelectedIndexChanged"
                >
                <Columns>
                    <asp:BoundField DataField= "Id_Factura" HeaderText="Factura" /> 
                    <asp:BoundField DataField= "num_Linea" HeaderText="Linea" /> 
                    <asp:BoundField DataField= "cod_Producto" HeaderText="Codigo" /> 
                    <asp:BoundField DataField= "det_Producto" HeaderText="Producto" /> 
                    <asp:BoundField DataField= "cant_Producto" HeaderText="Cantidad" /> 
                    <asp:BoundField DataField= "cost_Unitario" HeaderText="Costo" /> 
                    <asp:BoundField DataField= "total_linea" HeaderText="Total" /> 
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <br />
            <br />
            <table>
                <tr>
                    <td>Factura</td> 
                    <td><asp:TextBox ID="txtID_FACTURA" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Linea</td> 
                    <td><asp:TextBox ID="txtNUM_LINEA" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Codigo</td> 
                    <td><asp:TextBox ID="txtCODIGO" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Producto</td> 
                    <td><asp:TextBox ID="txtDET_PRODUCTO" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Cantidad</td> 
                    <td><asp:TextBox ID="txtCANTIDAD" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Costo</td> 
                    <td><asp:TextBox ID="txtCOSTO" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Total</td> 
                    <td><asp:TextBox ID="txtTOTAL" runat="server"></asp:TextBox></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
