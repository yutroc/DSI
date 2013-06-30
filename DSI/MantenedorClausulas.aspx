<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Global.Master" CodeBehind="MantenedorClausulas.aspx.vb" Inherits="DSI.MantenedorClausulas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="TituloPagina">
        <h1>
            Cláusulas</h1>
    </div>
    <h2>
        Si desea ver, eliminar o editar alguna de las cláusulas, haga click en "seleccionar"</h2>
    <div class="datagrid">
    <asp:GridView ID="GridViewClausula" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_CLAUSULA" 
        DataSourceID="SqlDataSourceClausula">
        <Columns>
            <asp:BoundField DataField="ID_CLAUSULA" HeaderText="ID_CLAUSULA" 
                ReadOnly="True" SortExpression="ID_CLAUSULA" />
            <asp:BoundField DataField="TITULO" HeaderText="TITULO" 
                SortExpression="TITULO" />
            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" 
                SortExpression="DESCRIPCION" />
            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" 
                SortExpression="ESTADO" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSourceClausula" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        
        SelectCommand="SELECT SC_CLAUSULA.ID_CLAUSULA, SC_CLAUSULA.TITULO, SC_CLAUSULA.DESCRIPCION, ESTADO.ESTADO FROM SC_CLAUSULA, ESTADO WHERE SC_CLAUSULA.ESTADO = ESTADO.ID"></asp:SqlDataSource>
</asp:Content>
