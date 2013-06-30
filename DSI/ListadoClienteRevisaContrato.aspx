<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Global.Master"
    CodeBehind="ListadoClienteRevisaContrato.aspx.vb" Inherits="DSI.ListadoCLienteContrato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="TituloPagina">
        <h1>
            Listado de Contratos por Cliente</h1>
    </div>
    <h2>
        Seleccion un cliente para ver sus contratos</h2>
    <div class="datagrid">
        <asp:GridView ID="GridViewClienteRevisaContrato" runat="server" AllowPaging="True"
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="RUT" DataSourceID="SqlDataSourceClientes">
            <Columns>
                <asp:BoundField DataField="RUT" HeaderText="RUT" ReadOnly="True" SortExpression="RUT" />
                <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSourceClientes" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>"
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" SelectCommand="SELECT &quot;RUT&quot;, &quot;NOMBRE&quot;, &quot;DIRECCION&quot; FROM &quot;SC_CLIENTE&quot; ORDER BY &quot;NOMBRE&quot;">
    </asp:SqlDataSource>
</asp:Content>
