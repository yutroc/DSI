<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Index.Master" CodeBehind="MenuClienteRevisaContrato.aspx.vb" Inherits="DSI.MenuClienteRevisaContrato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Contratos del cliente"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID_CONTRATO" 
        DataSourceID="SqlDataSourceMenuCLienteRevisaContrato">
        <Columns>
            <asp:BoundField DataField="ID_CONTRATO" HeaderText="ID_CONTRATO" 
                ReadOnly="True" SortExpression="ID_CONTRATO" />
            <asp:BoundField DataField="FC_CREACION" HeaderText="FC_CREACION" 
                SortExpression="FC_CREACION" />
            <asp:BoundField DataField="FC_INICIO" HeaderText="FC_INICIO" 
                SortExpression="FC_INICIO" />
            <asp:BoundField DataField="FC_TERMINO" HeaderText="FC_TERMINO" 
                SortExpression="FC_TERMINO" />
            <asp:BoundField DataField="ESTADO_VIGENCIA" HeaderText="ESTADO_VIGENCIA" 
                SortExpression="ESTADO_VIGENCIA" />
            <asp:BoundField DataField="VALOR_TOTAL" HeaderText="VALOR_TOTAL" 
                SortExpression="VALOR_TOTAL" />
            <asp:BoundField DataField="ID_TIPO_CONTRATO" HeaderText="ID_TIPO_CONTRATO" 
                SortExpression="ID_TIPO_CONTRATO" />
            <asp:BoundField DataField="RUT" HeaderText="RUT" SortExpression="RUT" />
            <asp:BoundField DataField="U_ORIGEN" HeaderText="U_ORIGEN" 
                SortExpression="U_ORIGEN" />
            <asp:BoundField DataField="U_DESTINO" HeaderText="U_DESTINO" 
                SortExpression="U_DESTINO" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceMenuCLienteRevisaContrato" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT SC_CONTRATO.ID_CONTRATO, SC_CONTRATO.FC_CREACION, SC_CONTRATO.FC_INICIO, SC_CONTRATO.FC_TERMINO, SC_CONTRATO.ESTADO_VIGENCIA, SC_CONTRATO.VALOR_TOTAL, SC_CONTRATO.ID_TIPO_CONTRATO, SC_CONTRATO.RUT, SC_CONTRATO.U_ORIGEN, SC_CONTRATO.U_DESTINO FROM SC_CLIENTE_CONTRATO, SC_CONTRATO WHERE SC_CLIENTE_CONTRATO.ID_CONTRATO = SC_CONTRATO.ID_CONTRATO AND (SC_CLIENTE_CONTRATO.RUT = :RUT)">
        <SelectParameters>
            <asp:SessionParameter Name="RUT" SessionField="idClienteRevisaContrato" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:LinkButton ID="LinkButton1" runat="server">Atras</asp:LinkButton>
</asp:Content>
