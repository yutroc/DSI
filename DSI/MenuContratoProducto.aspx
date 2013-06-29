<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Index.Master" CodeBehind="MenuContratoProducto.aspx.vb" Inherits="DSI.MenuContratoProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Selecion productos"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Ingrese parte del nombre"></asp:Label>
    <asp:TextBox ID="TextBoxBuscarProducto" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Buscar" />
    <br />
    <asp:GridView ID="GridViewProductos" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_PRODUCTO" 
        DataSourceID="SqlDataSourceProductos">
        <Columns>
            <asp:BoundField DataField="ID_PRODUCTO" HeaderText="ID_PRODUCTO" 
                ReadOnly="True" SortExpression="ID_PRODUCTO" />
            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" 
                SortExpression="NOMBRE" />
            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" 
                SortExpression="DESCRIPCION" />
            <asp:BoundField DataField="VALOR" HeaderText="VALOR" SortExpression="VALOR" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceProductos" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        DeleteCommand="DELETE FROM &quot;SC_PRODUCTO&quot; WHERE &quot;ID_PRODUCTO&quot; = :ID_PRODUCTO" 
        InsertCommand="INSERT INTO &quot;SC_PRODUCTO&quot; (&quot;ID_PRODUCTO&quot;, &quot;NOMBRE&quot;, &quot;DESCRIPCION&quot;, &quot;VALOR&quot;) VALUES (:ID_PRODUCTO, :NOMBRE, :DESCRIPCION, :VALOR)" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;SC_PRODUCTO&quot; WHERE (&quot;NOMBRE&quot; LIKE '%' || :NOMBRE || '%') ORDER BY &quot;NOMBRE&quot;" 
        UpdateCommand="UPDATE &quot;SC_PRODUCTO&quot; SET &quot;NOMBRE&quot; = :NOMBRE, &quot;DESCRIPCION&quot; = :DESCRIPCION, &quot;VALOR&quot; = :VALOR WHERE &quot;ID_PRODUCTO&quot; = :ID_PRODUCTO">
        <DeleteParameters>
            <asp:Parameter Name="ID_PRODUCTO" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID_PRODUCTO" Type="Decimal" />
            <asp:Parameter Name="NOMBRE" Type="String" />
            <asp:Parameter Name="DESCRIPCION" Type="String" />
            <asp:Parameter Name="VALOR" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBoxBuscarProducto" DefaultValue="%" 
                Name="NOMBRE" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="NOMBRE" Type="String" />
            <asp:Parameter Name="DESCRIPCION" Type="String" />
            <asp:Parameter Name="VALOR" Type="Decimal" />
            <asp:Parameter Name="ID_PRODUCTO" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label2" runat="server" Text="Productos del contrato"></asp:Label>
    <asp:Label ID="LabelMensaje" runat="server"></asp:Label>
    <asp:GridView ID="GridViewProductosParaContrato" runat="server" 
        AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
        DataKeyNames="ID_CONTRATO,ID_PRODUCTO" 
        DataSourceID="SqlDataSourceProductosParaContrato">
        <Columns>
            <asp:BoundField DataField="ID_CONTRATO" HeaderText="ID_CONTRATO" 
                ReadOnly="True" SortExpression="ID_CONTRATO" />
            <asp:BoundField DataField="ID_PRODUCTO" HeaderText="ID_PRODUCTO" 
                ReadOnly="True" SortExpression="ID_PRODUCTO" />
            <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" 
                SortExpression="CANTIDAD" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceProductosParaContrato" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        DeleteCommand="DELETE FROM &quot;SC_LIN_CONTRATO&quot; WHERE &quot;ID_CONTRATO&quot; = :ID_CONTRATO AND &quot;ID_PRODUCTO&quot; = :ID_PRODUCTO" 
        InsertCommand="INSERT INTO &quot;SC_LIN_CONTRATO&quot; (&quot;ID_CONTRATO&quot;, &quot;ID_PRODUCTO&quot;, &quot;CANTIDAD&quot;) VALUES (:ID_CONTRATO, :ID_PRODUCTO, :CANTIDAD)" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;SC_LIN_CONTRATO&quot; WHERE (&quot;ID_CONTRATO&quot; = :ID_CONTRATO) ORDER BY &quot;ID_PRODUCTO&quot;" 
        UpdateCommand="UPDATE &quot;SC_LIN_CONTRATO&quot; SET &quot;CANTIDAD&quot; = :CANTIDAD WHERE &quot;ID_CONTRATO&quot; = :ID_CONTRATO AND &quot;ID_PRODUCTO&quot; = :ID_PRODUCTO">
        <DeleteParameters>
            <asp:Parameter Name="ID_CONTRATO" Type="Decimal" />
            <asp:Parameter Name="ID_PRODUCTO" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID_CONTRATO" Type="Decimal" />
            <asp:Parameter Name="ID_PRODUCTO" Type="Decimal" />
            <asp:Parameter Name="CANTIDAD" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="ID_CONTRATO" SessionField="idUltimoContratoInsert" 
                Type="Decimal" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CANTIDAD" Type="Decimal" />
            <asp:Parameter Name="ID_CONTRATO" Type="Decimal" />
            <asp:Parameter Name="ID_PRODUCTO" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:LinkButton ID="LinkButton1" runat="server">Terminar</asp:LinkButton>
</asp:Content>
