<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Global.Master"  CodeBehind="ReporteContrato.aspx.vb" Inherits="DSI.ReporteContrato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <h1>
            Reporte Contrato</h1>
    </center>
    <br />
    <br />
    &nbsp; Cliente:
    <asp:TextBox ID="TextBoxCliente" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    Estado :
    <asp:DropDownList ID="DropDownListEstado" runat="server" 
        DataSourceID="SqlDataSourceEstado" DataTextField="ESTADO" 
        DataValueField="ID">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tipo de Contrato<asp:DropDownList 
        ID="DropDownListTipo" runat="server" 
        DataSourceID="SqlDataSourceTipo" DataTextField="NOMBRE" 
        DataValueField="ID_TIPO_CONTRATO">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSourceTipo" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;SC_TIPO_CONTRATO&quot;">
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Mostrar todos los Contratos" />
    <asp:Button ID="Button2" runat="server" Text="Filtrar por Cliente" />
    <asp:Button ID="Button3" runat="server" Text="Filtrar por Estado" />
    <asp:Button ID="Button4" runat="server" Text="Filtrar por Tipo" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID_CONTRATO" DataSourceID="SqlDataSourceContrato">
        <Columns>
            <asp:BoundField DataField="ID_CONTRATO" HeaderText="ID_CONTRATO" 
                ReadOnly="True" SortExpression="ID_CONTRATO" />
            <asp:BoundField DataField="FC_CREACION" HeaderText="FC_CREACION" 
                SortExpression="FC_CREACION" />
            <asp:BoundField DataField="FC_INICIO" HeaderText="FC_INICIO" 
                SortExpression="FC_INICIO" />
            <asp:BoundField DataField="FC_TERMINO" HeaderText="FC_TERMINO" 
                SortExpression="FC_TERMINO" />
            <asp:BoundField DataField="VALOR_TOTAL" HeaderText="VALOR_TOTAL" 
                SortExpression="VALOR_TOTAL" />
            <asp:BoundField DataField="U_ORIGEN" HeaderText="U_ORIGEN" 
                SortExpression="U_ORIGEN" />
            <asp:BoundField DataField="U_DESTINO" HeaderText="U_DESTINO" 
                SortExpression="U_DESTINO" />
            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" 
                SortExpression="ESTADO" />
            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" 
                SortExpression="NOMBRE" />
            <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
        </Columns>
    </asp:GridView>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID_CONTRATO" DataSourceID="SqlDataSourceContrTodos">
        <Columns>
            <asp:BoundField DataField="ID_CONTRATO" HeaderText="ID_CONTRATO" 
                ReadOnly="True" SortExpression="ID_CONTRATO" />
            <asp:BoundField DataField="FC_CREACION" HeaderText="FC_CREACION" 
                SortExpression="FC_CREACION" />
            <asp:BoundField DataField="FC_INICIO" HeaderText="FC_INICIO" 
                SortExpression="FC_INICIO" />
            <asp:BoundField DataField="FC_TERMINO" HeaderText="FC_TERMINO" 
                SortExpression="FC_TERMINO" />
            <asp:BoundField DataField="VALOR_TOTAL" HeaderText="VALOR_TOTAL" 
                SortExpression="VALOR_TOTAL" />
            <asp:BoundField DataField="U_ORIGEN" HeaderText="U_ORIGEN" 
                SortExpression="U_ORIGEN" />
            <asp:BoundField DataField="U_DESTINO" HeaderText="U_DESTINO" 
                SortExpression="U_DESTINO" />
            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" 
                SortExpression="ESTADO" />
            <asp:BoundField DataField="EXPR4" HeaderText="EXPR4" SortExpression="EXPR4" />
            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" 
                SortExpression="NOMBRE" />
        </Columns>
    </asp:GridView>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID_CONTRATO" DataSourceID="SqlDataSourceContrTipo">
        <Columns>
            <asp:BoundField DataField="ID_CONTRATO" HeaderText="ID_CONTRATO" 
                ReadOnly="True" SortExpression="ID_CONTRATO" />
            <asp:BoundField DataField="FC_CREACION" HeaderText="FC_CREACION" 
                SortExpression="FC_CREACION" />
            <asp:BoundField DataField="FC_INICIO" HeaderText="FC_INICIO" 
                SortExpression="FC_INICIO" />
            <asp:BoundField DataField="FC_TERMINO" HeaderText="FC_TERMINO" 
                SortExpression="FC_TERMINO" />
            <asp:BoundField DataField="VALOR_TOTAL" HeaderText="VALOR_TOTAL" 
                SortExpression="VALOR_TOTAL" />
            <asp:BoundField DataField="U_ORIGEN" HeaderText="U_ORIGEN" 
                SortExpression="U_ORIGEN" />
            <asp:BoundField DataField="U_DESTINO" HeaderText="U_DESTINO" 
                SortExpression="U_DESTINO" />
            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" 
                SortExpression="ESTADO" />
            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" 
                SortExpression="NOMBRE" />
            <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceContrTipo" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT SC_CONTRATO.ID_CONTRATO, SC_CONTRATO.FC_CREACION, SC_CONTRATO.FC_INICIO, SC_CONTRATO.FC_TERMINO, SC_CONTRATO.VALOR_TOTAL, SC_CONTRATO.U_ORIGEN, SC_CONTRATO.U_DESTINO, ESTADO.ESTADO, SC_CLIENTE.NOMBRE, SC_TIPO_CONTRATO.NOMBRE AS TIPO FROM SC_CONTRATO, ESTADO, SC_CLIENTE, SC_TIPO_CONTRATO WHERE SC_CONTRATO.ESTADO_VIGENCIA = ESTADO.ID AND SC_CONTRATO.ESTADO_VIGENCIA = ESTADO.ID AND SC_CONTRATO.RUT = SC_CLIENTE.RUT AND ESTADO.ID = SC_CLIENTE.ESTADO AND SC_CONTRATO.ID_TIPO_CONTRATO = SC_TIPO_CONTRATO.ID_TIPO_CONTRATO AND SC_CONTRATO.ID_TIPO_CONTRATO = SC_TIPO_CONTRATO.ID_TIPO_CONTRATO AND (SC_CONTRATO.ID_TIPO_CONTRATO = :TIPO)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownListTipo" DefaultValue="" Name="TIPO" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID_CONTRATO" DataSourceID="SqlDataSourceContrEstado">
        <Columns>
            <asp:BoundField DataField="ID_CONTRATO" HeaderText="ID_CONTRATO" 
                ReadOnly="True" SortExpression="ID_CONTRATO" />
            <asp:BoundField DataField="FC_CREACION" HeaderText="FC_CREACION" 
                SortExpression="FC_CREACION" />
            <asp:BoundField DataField="FC_INICIO" HeaderText="FC_INICIO" 
                SortExpression="FC_INICIO" />
            <asp:BoundField DataField="FC_TERMINO" HeaderText="FC_TERMINO" 
                SortExpression="FC_TERMINO" />
            <asp:BoundField DataField="VALOR_TOTAL" HeaderText="VALOR_TOTAL" 
                SortExpression="VALOR_TOTAL" />
            <asp:BoundField DataField="U_ORIGEN" HeaderText="U_ORIGEN" 
                SortExpression="U_ORIGEN" />
            <asp:BoundField DataField="U_DESTINO" HeaderText="U_DESTINO" 
                SortExpression="U_DESTINO" />
            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" 
                SortExpression="ESTADO" />
            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" 
                SortExpression="NOMBRE" />
            <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceContrEstado" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT SC_CONTRATO.ID_CONTRATO, SC_CONTRATO.FC_CREACION, SC_CONTRATO.FC_INICIO, SC_CONTRATO.FC_TERMINO, SC_CONTRATO.VALOR_TOTAL, SC_CONTRATO.U_ORIGEN, SC_CONTRATO.U_DESTINO, ESTADO.ESTADO, SC_CLIENTE.NOMBRE, SC_TIPO_CONTRATO.NOMBRE AS TIPO FROM SC_CONTRATO, ESTADO, SC_CLIENTE, SC_TIPO_CONTRATO WHERE SC_CONTRATO.ESTADO_VIGENCIA = ESTADO.ID AND SC_CONTRATO.RUT = SC_CLIENTE.RUT AND SC_CONTRATO.ID_TIPO_CONTRATO = SC_TIPO_CONTRATO.ID_TIPO_CONTRATO AND (SC_CONTRATO.ESTADO_VIGENCIA = :ESTADO)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownListEstado" Name="ESTADO" 
                PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceContrTodos" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT SC_CONTRATO.ID_CONTRATO, SC_CONTRATO.FC_CREACION, SC_CONTRATO.FC_INICIO, SC_CONTRATO.FC_TERMINO, SC_CONTRATO.VALOR_TOTAL, SC_CONTRATO.U_ORIGEN, SC_CONTRATO.U_DESTINO, ESTADO.ESTADO, SC_TIPO_CONTRATO.NOMBRE AS EXPR4, SC_CLIENTE.NOMBRE FROM SC_CONTRATO, ESTADO, SC_CLIENTE, SC_TIPO_CONTRATO WHERE SC_CONTRATO.ESTADO_VIGENCIA = ESTADO.ID AND SC_CONTRATO.RUT = SC_CLIENTE.RUT AND SC_CONTRATO.ID_TIPO_CONTRATO = SC_TIPO_CONTRATO.ID_TIPO_CONTRATO">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceContrato" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        
        SelectCommand="SELECT SC_CONTRATO.ID_CONTRATO, SC_CONTRATO.FC_CREACION, SC_CONTRATO.FC_INICIO, SC_CONTRATO.FC_TERMINO, SC_CONTRATO.VALOR_TOTAL, SC_CONTRATO.U_ORIGEN, SC_CONTRATO.U_DESTINO, ESTADO.ESTADO, SC_CLIENTE.NOMBRE, SC_TIPO_CONTRATO.NOMBRE AS TIPO FROM SC_CONTRATO, ESTADO, SC_CLIENTE, SC_TIPO_CONTRATO WHERE SC_CONTRATO.ESTADO_VIGENCIA = ESTADO.ID AND ESTADO.ID = SC_CLIENTE.ESTADO AND SC_CONTRATO.ID_TIPO_CONTRATO = SC_TIPO_CONTRATO.ID_TIPO_CONTRATO  AND (SC_CLIENTE.NOMBRE = :RUT) ">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBoxCliente" Name="RUT" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceEstado" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;ESTADO&quot;"></asp:SqlDataSource>
    <br />
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input class="oculto" onclick="print();" type="button" value="Imprimir" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button5" runat="server" Text="Volver" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
