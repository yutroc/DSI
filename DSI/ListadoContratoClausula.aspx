<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ListadoContratoClausula.aspx.vb" Inherits="DSI.listaContratoClausula" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server">Crear contrato</asp:LinkButton>
    <asp:GridView ID="GridViewContrato" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSourceContratoParaClausula" 
        AllowPaging="True" DataKeyNames="ID_CONTRATO">
        <Columns>
            <asp:BoundField DataField="ID_CONTRATO" HeaderText="ID_CONTRATO" 
                SortExpression="ID_CONTRATO" ReadOnly="True" />
            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE CLIENTE" 
                SortExpression="NOMBRE" />
            <asp:BoundField DataField="FC_CREACION" HeaderText="FECHA CREACION" 
                SortExpression="FC_CREACION" />
            <asp:BoundField DataField="FC_INICIO" HeaderText="FECHA INICIO" 
                SortExpression="FC_INICIO" />
            <asp:BoundField DataField="FC_TERMINO" HeaderText="FECHA TERMINO" 
                SortExpression="FC_TERMINO" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceContratoParaClausula" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        
    
        SelectCommand="SELECT SC_CONTRATO.ID_CONTRATO, SC_CONTRATO.FC_CREACION, SC_CONTRATO.FC_INICIO, SC_CONTRATO.FC_TERMINO, SC_CONTRATO.RUT, SC_CLIENTE.NOMBRE FROM SC_CONTRATO, SC_CLIENTE_CONTRATO, SC_CLIENTE WHERE SC_CONTRATO.ID_CONTRATO = SC_CLIENTE_CONTRATO.ID_CONTRATO AND SC_CLIENTE_CONTRATO.RUT = SC_CLIENTE.RUT">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceIdMax" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT MAX(&quot;ID_CONTRATO&quot;) as m FROM SC_CONTRATO">
    </asp:SqlDataSource>
</asp:Content>
