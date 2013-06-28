<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ListadoContratoClausula.aspx.vb" Inherits="DSI.listaContratoClausula" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server">Crear contrato</asp:LinkButton>
    <asp:GridView ID="GridViewContrato" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSourceContratoParaClausula" 
        AllowPaging="True" DataKeyNames="ID_CONTRATO">
        <Columns>
            <asp:BoundField DataField="ID_CONTRATO" HeaderText="Id  contrato" 
                SortExpression="ID_CONTRATO" ReadOnly="True" />
            <asp:BoundField DataField="RUT" HeaderText="Rut Cliente" 
                SortExpression="RUT" />
            <asp:BoundField DataField="FC_CREACION" HeaderText="Fecha de creacion" 
                SortExpression="FC_CREACION" />
            <asp:BoundField DataField="FC_INICIO" HeaderText="fecha de inico" 
                SortExpression="FC_INICIO" />
            <asp:BoundField DataField="FC_TERMINO" HeaderText="fecha de termino" 
                SortExpression="FC_TERMINO" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceContratoParaClausula" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connectionStringDSI %>" 
        ProviderName="<%$ ConnectionStrings:connectionStringDSI.ProviderName %>" 
        
    SelectCommand="SELECT &quot;ID_CONTRATO&quot;, &quot;FC_CREACION&quot;, &quot;FC_INICIO&quot;, &quot;FC_TERMINO&quot;, &quot;RUT&quot; FROM &quot;SC_CONTRATO&quot;">
    </asp:SqlDataSource>
</asp:Content>
