<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Global.Master"
    CodeBehind="WebFormListadoCliente.aspx.vb" Inherits="DSI.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="TituloPagina">
        <h1>
            Listado de Clientes</h1>
    </div>
    <h2>
        Si desea ver, eliminar o editar alguno de los clientes, haga click en "seleccionar".</h2>
    <asp:LinkButton ID="LinkButtonCrearCliente" runat="server">Agregar nuevo cliente</asp:LinkButton>
    <div class="datagrid">
        <asp:GridView ID="GridViewCliente" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" DataKeyNames="RUT" DataSourceID="SqlDataSourceCliente">
            <Columns>
                <asp:BoundField DataField="RUT" HeaderText="RUT" ReadOnly="True" SortExpression="RUT" />
                <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSourceCliente" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>"
        DeleteCommand="DELETE FROM &quot;SC_CLIENTE&quot; WHERE &quot;RUT&quot; = :RUT"
        InsertCommand="INSERT INTO &quot;SC_CLIENTE&quot; (&quot;RUT&quot;, &quot;NOMBRE&quot;, &quot;DIRECCION&quot;) VALUES (:RUT, :NOMBRE, :DIRECCION)"
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" SelectCommand="SELECT &quot;RUT&quot;, &quot;NOMBRE&quot;, &quot;DIRECCION&quot; FROM &quot;SC_CLIENTE&quot; ORDER BY &quot;NOMBRE&quot;"
        UpdateCommand="UPDATE &quot;SC_CLIENTE&quot; SET &quot;NOMBRE&quot; = :NOMBRE, &quot;DIRECCION&quot; = :DIRECCION WHERE &quot;RUT&quot; = :RUT">
        <DeleteParameters>
            <asp:Parameter Name="RUT" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RUT" Type="String" />
            <asp:Parameter Name="NOMBRE" Type="String" />
            <asp:Parameter Name="DIRECCION" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NOMBRE" Type="String" />
            <asp:Parameter Name="DIRECCION" Type="String" />
            <asp:Parameter Name="RUT" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
