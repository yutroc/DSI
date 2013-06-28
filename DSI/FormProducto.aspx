<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Global.Master" CodeBehind="FormProducto.aspx.vb" Inherits="DSI.FormProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormViewProducto" runat="server" DataKeyNames="ID_PRODUCTO" 
        DataSourceID="SqlDataSourceProducto">
        <EditItemTemplate>
            ID_PRODUCTO:
            <asp:Label ID="ID_PRODUCTOLabel1" runat="server" 
                Text='<%# Eval("ID_PRODUCTO") %>' />
            <br />
            NOMBRE:
            <asp:TextBox ID="NOMBRETextBox" runat="server" Text='<%# Bind("NOMBRE") %>' />
            <br />
            DESCRIPCION:
            <asp:TextBox ID="DESCRIPCIONTextBox" runat="server" 
                Text='<%# Bind("DESCRIPCION") %>' />
            <br />
            VALOR:
            <asp:TextBox ID="VALORTextBox" runat="server" Text='<%# Bind("VALOR") %>' />
            <br />
        </EditItemTemplate>
        <InsertItemTemplate>
            NOMBRE:
            <asp:TextBox ID="NOMBRETextBox0" runat="server" Text='<%# Bind("NOMBRE") %>' />
            <br />
            DESCRIPCION:
            <asp:TextBox ID="DESCRIPCIONTextBox0" runat="server" 
                Text='<%# Bind("DESCRIPCION") %>' />
            <br />
            VALOR:
            <asp:TextBox ID="VALORTextBox0" runat="server" Text='<%# Bind("VALOR") %>' />
            <br />
        </InsertItemTemplate>
        <ItemTemplate>
            ID_PRODUCTO:
            <asp:Label ID="ID_PRODUCTOLabel" runat="server" 
                Text='<%# Eval("ID_PRODUCTO") %>' />
            <br />
            NOMBRE:
            <asp:Label ID="NOMBRELabel" runat="server" Text='<%# Bind("NOMBRE") %>' />
            <br />
            DESCRIPCION:
            <asp:Label ID="DESCRIPCIONLabel" runat="server" 
                Text='<%# Bind("DESCRIPCION") %>' />
            <br />
            VALOR:
            <asp:Label ID="VALORLabel" runat="server" Text='<%# Bind("VALOR") %>' />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceProducto" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        DeleteCommand="DELETE FROM &quot;SC_PRODUCTO&quot; WHERE &quot;ID_PRODUCTO&quot; = :ID_PRODUCTO" 
        InsertCommand="INSERT INTO &quot;SC_PRODUCTO&quot; (&quot;ID_PRODUCTO&quot;, &quot;NOMBRE&quot;, &quot;DESCRIPCION&quot;, &quot;VALOR&quot;) VALUES (:ID_PRODUCTO, :NOMBRE, :DESCRIPCION, :VALOR)" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;SC_PRODUCTO&quot; WHERE (&quot;ID_PRODUCTO&quot; = :ID_PRODUCTO)" 
        
        
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
            <asp:SessionParameter Name="ID_PRODUCTO" SessionField="ID_PRODUCTO" 
                Type="Decimal" />
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
            <asp:TextBox ID="DIAMETROTextBox" runat="server" 
                Text='<%# Bind("DIAMETRO") %>' />
            <br />
            LARGO:
            <asp:TextBox ID="LARGOTextBox" runat="server" Text='<%# Bind("LARGO") %>' />
            <br />
            &nbsp;
        </EditItemTemplate>
        <InsertItemTemplate>
            DIAMETRO:
            <asp:TextBox ID="DIAMETROTextBox0" runat="server" 
                Text='<%# Bind("DIAMETRO") %>' />
            <br />
            LARGO:
            <asp:TextBox ID="LARGOTextBox0" runat="server" Text='<%# Bind("LARGO") %>' />
            <br />
        </InsertItemTemplate>
        <ItemTemplate>
            ID_PRODUCTO:
            <asp:Label ID="ID_PRODUCTOLabel2" runat="server" 
                Text='<%# Eval("ID_PRODUCTO") %>' />
            <br />
            DIAMETRO:
            <asp:Label ID="DIAMETROLabel" runat="server" 
                Text='<%# Bind("DIAMETRO") %>' />
            <br />
            LARGO:
            <asp:Label ID="LARGOLabel" runat="server" Text='<%# Bind("LARGO") %>' />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceProductoAserrable" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        
        SelectCommand="SELECT * FROM &quot;SC_PRODUCTO_ASERRABLE&quot; WHERE (&quot;ID_PRODUCTO&quot; = :ID_PRODUCTO)" 
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
            <asp:SessionParameter Name="ID_PRODUCTO" SessionField="ID_PRODUCTO" 
                Type="Decimal" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="DIAMETRO" Type="Decimal" />
            <asp:Parameter Name="LARGO" Type="Decimal" />
            <asp:Parameter Name="ID_PRODUCTO" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormViewProductoPulpable" runat="server" 
        DataKeyNames="ID_PRODUCTO" DataSourceID="SqlDataSourceProductoPulpable">
        <EditItemTemplate>
            VOLUMEN:
            <asp:TextBox ID="VOLUMENTextBox" runat="server" Text='<%# Bind("VOLUMEN") %>' />
        </EditItemTemplate>
        <InsertItemTemplate>
            VOLUMEN:
            <asp:TextBox ID="VOLUMENTextBox0" runat="server" 
                Text='<%# Bind("VOLUMEN") %>' />
            <br />
        </InsertItemTemplate>
        <ItemTemplate>
            ID_PRODUCTO:
            <asp:Label ID="ID_PRODUCTOLabel3" runat="server" 
                Text='<%# Eval("ID_PRODUCTO") %>' />
            <br />
            VOLUMEN:
            <asp:Label ID="VOLUMENLabel" runat="server" Text='<%# Bind("VOLUMEN") %>' />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceProductoPulpable" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        DeleteCommand="DELETE FROM &quot;SC_PRODUCTO_PULPABLE&quot; WHERE &quot;ID_PRODUCTO&quot; = :ID_PRODUCTO" 
        InsertCommand="INSERT INTO &quot;SC_PRODUCTO_PULPABLE&quot; (&quot;ID_PRODUCTO&quot;, &quot;VOLUMEN&quot;) VALUES (:ID_PRODUCTO, :VOLUMEN)" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;SC_PRODUCTO_PULPABLE&quot; WHERE (&quot;ID_PRODUCTO&quot; = :ID_PRODUCTO)" 
        UpdateCommand="UPDATE &quot;SC_PRODUCTO_PULPABLE&quot; SET &quot;VOLUMEN&quot; = :VOLUMEN WHERE &quot;ID_PRODUCTO&quot; = :ID_PRODUCTO">
        <DeleteParameters>
            <asp:Parameter Name="ID_PRODUCTO" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID_PRODUCTO" Type="Decimal" />
            <asp:Parameter Name="VOLUMEN" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="ID_PRODUCTO" SessionField="ID_PRODUCTO" 
                Type="Decimal" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="VOLUMEN" Type="Decimal" />
            <asp:Parameter Name="ID_PRODUCTO" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button6" runat="server" Text="Insertar" />
    <asp:Button ID="Button7" runat="server" Text="Cancelar" />
    <asp:SqlDataSource ID="SqlDataSourceMax" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT MAX(ID_PRODUCTO) AS EXPR1 FROM SC_PRODUCTO">
    </asp:SqlDataSource>
</asp:Content>
