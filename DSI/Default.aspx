<%@ Page Title="Página principal" Language="vb" MasterPageFile="~/Global.Master"
    AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="DSI._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="TituloPagina">
        <h1>
            Bienvenido al Sistema Comercial</h1>
    </div>
    <div class="datagrid">
    <asp:GridView ID="GridViewAnexo" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" DataKeyNames="ID_ANEXO" DataSourceID="SqlDataSourceAnexos">
        <Columns>
            <asp:BoundField DataField="ID_ANEXO" HeaderText="ID_ANEXO" ReadOnly="True" SortExpression="ID_ANEXO" />
            <asp:BoundField DataField="TITULO" HeaderText="TITULO" SortExpression="TITULO" />
            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSourceAnexos" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>"
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" SelectCommand="SELECT * FROM &quot;SC_ANEXO&quot;">
    </asp:SqlDataSource>
</asp:Content>
