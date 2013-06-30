<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Global.Master" CodeBehind="MenuCumplimiento.aspx.vb" Inherits="DSI.MenuCumplimiento" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
            Text="CUMPLIMIENTO DE LOS CONTRATOS VIGENTES"></asp:Label>
    </p>
<p>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSourceDetalle2">
            <series>
                <asp:Series Name="Series1" XValueMember="ID_CONTRATO" 
                    YValueMembers="PROCENTAJE">
                    <EmptyPointStyle IsVisibleInLegend="False" />
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
            <Titles>
                <asp:Title Name="Title1" Text="Gráfico id de contrato vs porcentaje">
                </asp:Title>
            </Titles>
        </asp:Chart>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ID_CONTRATO" DataSourceID="SqlDataSourceDetalle2" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Width="830px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID_CONTRATO" HeaderText="ID_CONTRATO" 
                    SortExpression="ID_CONTRATO" />
                <asp:BoundField DataField="RUT" HeaderText="RUT CLIENTE" SortExpression="RUT" />
                <asp:BoundField DataField="FC_INICIO" HeaderText="FC_INICIO" 
                    SortExpression="FC_INICIO" />
                <asp:BoundField DataField="FC_TERMINO" HeaderText="FC_TERMINO" 
                    SortExpression="FC_TERMINO" />
                <asp:BoundField DataField="PROCENTAJE" HeaderText="CUMPLIMIENTO %" 
                    SortExpression="PROCENTAJE" />
                <asp:BoundField DataField="VALOR_TOTAL" HeaderText="VALOR_TOTAL" 
                    SortExpression="VALOR_TOTAL" />
                <asp:CommandField HeaderText="DETALLE" SelectText="Ver Detalle" 
                    ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" 
            Font-Bold="True" Font-Size="Larger"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSourceDetalle" CellPadding="4" ForeColor="#333333" 
            GridLines="None" Width="829px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID_PRODUCTO" HeaderText="ID_PRODUCTO" 
                    SortExpression="ID_PRODUCTO" />
                <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE PRODUCTO" 
                    SortExpression="NOMBRE" />
                <asp:BoundField DataField="CANTIDADGUIA" HeaderText="CANTIDAD ENTREGADA" 
                    SortExpression="CANTIDADGUIA" />
                <asp:BoundField DataField="CANTIDADCONTRATO" HeaderText="CANTIDAD CONTRATADO" 
                    SortExpression="CANTIDADCONTRATO" />
                <asp:BoundField DataField="VALOR" HeaderText="VALOR UNITARIO" 
                    SortExpression="VALOR" />
                <asp:BoundField DataField="PROCENTAJE" HeaderText="CUMPLIMIENTO %" 
                    SortExpression="PROCENTAJE" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceDetalle" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
            SelectCommand="SELECT SC_CONTRATO.ID_CONTRATO, SC_LIN_CONTRATO.ID_PRODUCTO, NVL(SUM(GUIA_DESPACHO_DETALLE.CANTIDAD),0) AS CANTIDADGUIA, SUM(SC_LIN_CONTRATO.CANTIDAD) AS CANTIDADCONTRATO, ROUND(NVL(SUM(GUIA_DESPACHO_DETALLE.CANTIDAD),0) * 100 / SUM(SC_LIN_CONTRATO.CANTIDAD), 2) AS PROCENTAJE, SC_PRODUCTO.NOMBRE, SC_PRODUCTO.VALOR 

FROM ((SC_CONTRATO JOIN SC_LIN_CONTRATO ON SC_CONTRATO.ID_CONTRATO = SC_LIN_CONTRATO.ID_CONTRATO) LEFT JOIN
                (GUIA_DESPACHO_DETALLE JOIN GUIA_DESPACHO ON GUIA_DESPACHO_DETALLE.ID_GUIA_DESPACHO = GUIA_DESPACHO.ID_GUIA_DESPACHO) ON SC_CONTRATO.ID_CONTRATO = GUIA_DESPACHO.ID_CONTRATO), SC_PRODUCTO 

WHERE SC_LIN_CONTRATO.ID_PRODUCTO = SC_PRODUCTO.ID_PRODUCTO AND (SC_CONTRATO.ESTADO_VIGENCIA = 1) 

GROUP BY SC_CONTRATO.ID_CONTRATO, SC_LIN_CONTRATO.ID_PRODUCTO, SC_CONTRATO.ESTADO_VIGENCIA, SC_PRODUCTO.NOMBRE, SC_PRODUCTO.VALOR HAVING (SC_CONTRATO.ID_CONTRATO = :ID_CONTRATO) 
ORDER BY SC_CONTRATO.ID_CONTRATO, SC_LIN_CONTRATO.ID_PRODUCTO">
            <SelectParameters>
                <asp:SessionParameter Name="ID_CONTRATO" SessionField="ID_CONTRATO" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceDetalle2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
            
            SelectCommand="SELECT        SC_CONTRATO.ID_CONTRATO, NVL(SUM(GUIA_DESPACHO_DETALLE.CANTIDAD),0) AS CANTIDADGUIA, SUM(SC_LIN_CONTRATO.CANTIDAD) AS CANTIDADCONTRATO, 
                         ROUND(NVL(SUM(GUIA_DESPACHO_DETALLE.CANTIDAD),0) * 100 / SUM(SC_LIN_CONTRATO.CANTIDAD), 2) AS PROCENTAJE, SC_CONTRATO.VALOR_TOTAL, 
                         SC_CONTRATO.FC_INICIO, SC_CONTRATO.FC_TERMINO, SC_CLIENTE.RUT
FROM            (((SC_CONTRATO JOIN SC_LIN_CONTRATO ON SC_CONTRATO.ID_CONTRATO = SC_LIN_CONTRATO.ID_CONTRATO) LEFT JOIN
                (GUIA_DESPACHO_DETALLE JOIN GUIA_DESPACHO ON GUIA_DESPACHO_DETALLE.ID_GUIA_DESPACHO = GUIA_DESPACHO.ID_GUIA_DESPACHO) ON SC_CONTRATO.ID_CONTRATO = GUIA_DESPACHO.ID_CONTRATO)
                JOIN SC_CLIENTE_CONTRATO ON SC_CLIENTE_CONTRATO.ID_CONTRATO = SC_CONTRATO.ID_CONTRATO) JOIN SC_CLIENTE ON SC_CLIENTE_CONTRATO.RUT = SC_CLIENTE.RUT
WHERE         
                         (SC_CONTRATO.ESTADO_VIGENCIA = 1)
GROUP BY SC_CONTRATO.ID_CONTRATO, SC_CONTRATO.ESTADO_VIGENCIA, SC_CONTRATO.VALOR_TOTAL, SC_CONTRATO.FC_INICIO, SC_CONTRATO.FC_TERMINO, 
                         SC_CLIENTE.RUT
ORDER BY SC_CONTRATO.ID_CONTRATO">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceResumen" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
            SelectCommand="SELECT GUIA_DESPACHO.ID_CONTRATO, SUM(GUIA_DESPACHO_DETALLE.CANTIDAD) AS CANTIDADGUIA, SUM(SC_LIN_CONTRATO.CANTIDAD) AS CANTIDADCONTRATO, ROUND(SUM(GUIA_DESPACHO_DETALLE.CANTIDAD) * 100 / SUM(SC_LIN_CONTRATO.CANTIDAD), 2) AS PROCENTAJE FROM GUIA_DESPACHO_DETALLE, GUIA_DESPACHO, SC_LIN_CONTRATO, SC_CONTRATO WHERE GUIA_DESPACHO_DETALLE.ID_GUIA_DESPACHO = GUIA_DESPACHO.ID_GUIA_DESPACHO AND GUIA_DESPACHO.ID_CONTRATO = SC_LIN_CONTRATO.ID_CONTRATO AND GUIA_DESPACHO_DETALLE.ID_PRODUCTO = SC_LIN_CONTRATO.ID_PRODUCTO AND SC_LIN_CONTRATO.ID_CONTRATO = SC_CONTRATO.ID_CONTRATO AND (SC_CONTRATO.ESTADO_VIGENCIA = 1) GROUP BY GUIA_DESPACHO.ID_CONTRATO, SC_CONTRATO.ESTADO_VIGENCIA ORDER BY GUIA_DESPACHO.ID_CONTRATO">
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
