<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Global.Master"
    CodeBehind="MantenedorProducto.aspx.vb" Inherits="DSI.MantenedorProducto" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="TituloPagina">
        <h1>
            Lista de Productos</h1>
    </div>
    <h2>
        Si desea ver, eliminar o editar alguno de los productos, haga click en "seleccionar".</h2>
    
    <h3> Agregar un Producto</h3>
    Tipo de Madera
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="0">Aserrable</asp:ListItem>
        <asp:ListItem Value="1">Pulpable</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button4" runat="server" CssClass="botones" Text="Agregar" />
    <br />
    <div class="datagrid">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_PRODUCTO"
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ID_PRODUCTO" HeaderText="ID_PRODUCTO" ReadOnly="True"
                    SortExpression="ID_PRODUCTO" />
                <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                <asp:BoundField DataField="VALOR" HeaderText="VALOR" SortExpression="VALOR" />
                <asp:BoundField DataField="DIAMETRO" HeaderText="DIAMETRO" SortExpression="DIAMETRO" />
                <asp:BoundField DataField="LARGO" HeaderText="LARGO" SortExpression="LARGO" />
                <asp:BoundField DataField="VOLUMEN" HeaderText="VOLUMEN" SortExpression="VOLUMEN" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select"
                            OnClick="editar" Text="Editar"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select"
                            OnClick="borrar" Text="Eliminar"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>"
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" SelectCommand="SELECT SC_PRODUCTO.ID_PRODUCTO, SC_PRODUCTO.NOMBRE, SC_PRODUCTO.DESCRIPCION, SC_PRODUCTO.VALOR, SC_PRODUCTO_ASERRABLE.DIAMETRO, SC_PRODUCTO_ASERRABLE.LARGO, SC_PRODUCTO_PULPABLE.VOLUMEN 
FROM (SC_PRODUCTO left join SC_PRODUCTO_ASERRABLE ON SC_PRODUCTO.ID_PRODUCTO = SC_PRODUCTO_ASERRABLE.ID_PRODUCTO) left join SC_PRODUCTO_PULPABLE ON SC_PRODUCTO.ID_PRODUCTO = SC_PRODUCTO_PULPABLE.ID_PRODUCTO">
    </asp:SqlDataSource>
    <asp:FormView ID="FormViewProducto" runat="server" DataKeyNames="ID_PRODUCTO" DataSourceID="SqlDataSourceProducto">
        <EditItemTemplate>
            ID_PRODUCTO:
            <asp:Label ID="ID_PRODUCTOLabel1" runat="server" Text='<%# Eval("ID_PRODUCTO") %>' />
            <br />
            NOMBRE:
            <asp:TextBox ID="NOMBRETextBox" runat="server" Text='<%# Bind("NOMBRE") %>' />
            <br />
            DESCRIPCION:
            <asp:TextBox ID="DESCRIPCIONTextBox" runat="server" Text='<%# Bind("DESCRIPCION") %>' />
            <br />
            VALOR:
            <asp:TextBox ID="VALORTextBox" runat="server" Text='<%# Bind("VALOR") %>' />
            <br />
        </EditItemTemplate>
        <InsertItemTemplate>
            ID_PRODUCTO:
            <asp:TextBox ID="ID_PRODUCTOTextBox" runat="server" Text='<%# Bind("ID_PRODUCTO") %>' />
            <br />
            NOMBRE:
            <asp:TextBox ID="NOMBRETextBox" runat="server" Text='<%# Bind("NOMBRE") %>' />
            <br />
            DESCRIPCION:
            <asp:TextBox ID="DESCRIPCIONTextBox" runat="server" Text='<%# Bind("DESCRIPCION") %>' />
            <br />
            VALOR:
            <asp:TextBox ID="VALORTextBox" runat="server" Text='<%# Bind("VALOR") %>' />
            <br />
        </InsertItemTemplate>
        <ItemTemplate>
            ID_PRODUCTO:
            <asp:Label ID="ID_PRODUCTOLabel" runat="server" Text='<%# Eval("ID_PRODUCTO") %>' />
            <br />
            NOMBRE:
            <asp:Label ID="NOMBRELabel" runat="server" Text='<%# Bind("NOMBRE") %>' />
            <br />
            DESCRIPCION:
            <asp:Label ID="DESCRIPCIONLabel" runat="server" Text='<%# Bind("DESCRIPCION") %>' />
            <br />
            VALOR:
            <asp:Label ID="VALORLabel" runat="server" Text='<%# Bind("VALOR") %>' />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceProducto" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>"
        DeleteCommand="DELETE FROM &quot;SC_PRODUCTO&quot; WHERE &quot;ID_PRODUCTO&quot; = :ID_PRODUCTO"
        InsertCommand="INSERT INTO &quot;SC_PRODUCTO&quot; (&quot;ID_PRODUCTO&quot;, &quot;NOMBRE&quot;, &quot;DESCRIPCION&quot;, &quot;VALOR&quot;) VALUES (:ID_PRODUCTO, :NOMBRE, :DESCRIPCION, :VALOR)"
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" SelectCommand="SELECT * FROM &quot;SC_PRODUCTO&quot; WHERE (&quot;ID_PRODUCTO&quot; = :ID_PRODUCTO)"
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
            <asp:SessionParameter Name="ID_PRODUCTO" SessionField="ID_PRODUCTO" Type="Decimal" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="NOMBRE" Type="String" />
            <asp:Parameter Name="DESCRIPCION" Type="String" />
            <asp:Parameter Name="VALOR" Type="Decimal" />
            <asp:Parameter Name="ID_PRODUCTO" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormViewProductoAserrable" runat="server" DataKeyNames="ID_PRODUCTO"
        DataSourceID="SqlDataSourceProductoAserrable">
        <EditItemTemplate>
            DIAMETRO:
            <asp:TextBox ID="DIAMETROTextBox" runat="server" Text='<%# Bind("DIAMETRO") %>' />
            <br />
            LARGO:
            <asp:TextBox ID="LARGOTextBox" runat="server" Text='<%# Bind("LARGO") %>' />
            <br />
            &nbsp;
        </EditItemTemplate>
        <InsertItemTemplate>
            ID_PRODUCTO:
            <asp:TextBox ID="ID_PRODUCTOTextBox" runat="server" Text='<%# Bind("ID_PRODUCTO") %>' />
            <br />
            DIAMETRO:
            <asp:TextBox ID="DIAMETROTextBox" runat="server" Text='<%# Bind("DIAMETRO") %>' />
            <br />
            LARGO:
            <asp:TextBox ID="LARGOTextBox" runat="server" Text='<%# Bind("LARGO") %>' />
            <br />
        </InsertItemTemplate>
        <ItemTemplate>
            ID_PRODUCTO:
            <asp:Label ID="ID_PRODUCTOLabel" runat="server" Text='<%# Eval("ID_PRODUCTO") %>' />
            <br />
            DIAMETRO:
            <asp:Label ID="DIAMETROLabel" runat="server" Text='<%# Bind("DIAMETRO") %>' />
            <br />
            LARGO:
            <asp:Label ID="LARGOLabel" runat="server" Text='<%# Bind("LARGO") %>' />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceProductoAserrable" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>"
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" SelectCommand="SELECT * FROM &quot;SC_PRODUCTO_ASERRABLE&quot; WHERE (&quot;ID_PRODUCTO&quot; = :ID_PRODUCTO)"
        DeleteCommand="DELETE FROM &quot;SC_PRODUCTO_ASERRABLE&quot; WHERE &quot;ID_PRODUCTO&quot; = :ID_PRODUCTO"
        InsertCommand="INSERT INTO &quot;SC_PRODUCTO_ASERRABLE&quot; (&quot;ID_PRODUCTO&quot;, &quot;DIAMETRO&quot;, &quot;LARGO&quot;) VALUES (:ID_PRODUCTO, :DIAMETRO, :LARGO)"
        UpdateCommand="UPDATE &quot;SC_PRODUCTO_ASERRABLE&quot; SET &quot;DIAMETRO&quot; = :DIAMETRO, &quot;LARGO&quot; = :LARGO WHERE &quot;ID_PRODUCTO&quot; = :ID_PRODUCTO">
        <DeleteParameters>
            <asp:Parameter Name="ID_PRODUCTO" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID_PRODUCTO" Type="Decimal" />
            <asp:Parameter Name="DIAMETRO" Type="Decimal" />
            <asp:Parameter Name="LARGO" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="ID_PRODUCTO" SessionField="ID_PRODUCTO" Type="Decimal" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="DIAMETRO" Type="Decimal" />
            <asp:Parameter Name="LARGO" Type="Decimal" />
            <asp:Parameter Name="ID_PRODUCTO" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormViewProductoPulpable" runat="server" DataKeyNames="ID_PRODUCTO"
        DataSourceID="SqlDataSourceProductoPulpable">
        <EditItemTemplate>
            VOLUMEN:
            <asp:TextBox ID="VOLUMENTextBox" runat="server" Text='<%# Bind("VOLUMEN") %>' />
        </EditItemTemplate>
        <InsertItemTemplate>
            ID_PRODUCTO:
            <asp:TextBox ID="ID_PRODUCTOTextBox" runat="server" Text='<%# Bind("ID_PRODUCTO") %>' />
            <br />
            VOLUMEN:
            <asp:TextBox ID="VOLUMENTextBox" runat="server" Text='<%# Bind("VOLUMEN") %>' />
            <br />
        </InsertItemTemplate>
        <ItemTemplate>
            ID_PRODUCTO:
            <asp:Label ID="ID_PRODUCTOLabel" runat="server" Text='<%# Eval("ID_PRODUCTO") %>' />
            <br />
            VOLUMEN:
            <asp:Label ID="VOLUMENLabel" runat="server" Text='<%# Bind("VOLUMEN") %>' />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceProductoPulpable" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>"
        DeleteCommand="DELETE FROM &quot;SC_PRODUCTO_PULPABLE&quot; WHERE &quot;ID_PRODUCTO&quot; = :ID_PRODUCTO"
        InsertCommand="INSERT INTO &quot;SC_PRODUCTO_PULPABLE&quot; (&quot;ID_PRODUCTO&quot;, &quot;VOLUMEN&quot;) VALUES (:ID_PRODUCTO, :VOLUMEN)"
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" SelectCommand="SELECT * FROM &quot;SC_PRODUCTO_PULPABLE&quot; WHERE (&quot;ID_PRODUCTO&quot; = :ID_PRODUCTO)"
        UpdateCommand="UPDATE &quot;SC_PRODUCTO_PULPABLE&quot; SET &quot;VOLUMEN&quot; = :VOLUMEN WHERE &quot;ID_PRODUCTO&quot; = :ID_PRODUCTO">
        <DeleteParameters>
            <asp:Parameter Name="ID_PRODUCTO" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID_PRODUCTO" Type="Decimal" />
            <asp:Parameter Name="VOLUMEN" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="ID_PRODUCTO" SessionField="ID_PRODUCTO" Type="Decimal" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="VOLUMEN" Type="Decimal" />
            <asp:Parameter Name="ID_PRODUCTO" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" CssClass="botones" Text="Editar" Visible="False" />
    <asp:Button ID="Button2" runat="server" CssClass="botones" Text="Cancelar" Visible="False" />
    <br />
    <asp:Button ID="Button3" runat="server" CssClass="botones" Text="Borrar" Visible="False" />
    <asp:Button ID="Button5" runat="server" CssClass="botones" Text="Cancelar" Visible="False" />
    <br />
</asp:Content>
