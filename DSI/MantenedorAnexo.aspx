<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="MantenedorAnexo.aspx.vb" Inherits="DSI.MantenedorAnexo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="LabelMensajes" runat="server"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridViewAnexo" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_ANEXO" 
        DataSourceID="SqlDataSourceAnexo">
        <Columns>
            <asp:BoundField DataField="ID_ANEXO" HeaderText="ID_ANEXO" ReadOnly="True" 
                SortExpression="ID_ANEXO" />
            <asp:BoundField DataField="TITULO" HeaderText="TITULO" 
                SortExpression="TITULO" />
            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" 
                SortExpression="DESCRIPCION" />
            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" 
                SortExpression="ESTADO" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceAnexo" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT SC_ANEXO.ID_ANEXO, SC_ANEXO.TITULO, SC_ANEXO.DESCRIPCION, ESTADO.ESTADO FROM ESTADO, SC_ANEXO WHERE ESTADO.ID = SC_ANEXO.ESTADO">
    </asp:SqlDataSource>
</asp:Content>
