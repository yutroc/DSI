<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Global.Master" CodeBehind="FormClausula.aspx.vb" Inherits="DSI.FormClausula" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="LabelMensajes" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:FormView ID="FormViewClausula" runat="server" DataKeyNames="ID_CLAUSULA" 
        DataSourceID="SqlDataSourceClausula">
        <EditItemTemplate>
            ID_CLAUSULA:
            <asp:Label ID="ID_CLAUSULALabel1" runat="server" 
                Text='<%# Eval("ID_CLAUSULA") %>' />
            <br />
            TITULO:
            <asp:TextBox ID="TITULOTextBox" runat="server" Text='<%# Bind("TITULO") %>' />
            <br />
            DESCRIPCION:
            <asp:TextBox ID="DESCRIPCIONTextBox" runat="server" 
                Text='<%# Bind("DESCRIPCION") %>' />
            <br />
            ESTADO:
            <asp:DropDownList ID="DropDownList1" runat="server" 
                SelectedValue='<%# Bind("ESTADO") %>'>
                <asp:ListItem Value="0">Inactivo</asp:ListItem>
                <asp:ListItem Value="1">Activo</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ID_CLAUSULA:
            <asp:TextBox ID="ID_CLAUSULATextBox" runat="server" 
                Text='<%# Bind("ID_CLAUSULA") %>' />
            <br />
            TITULO:
            <asp:TextBox ID="TITULOTextBox" runat="server" Text='<%# Bind("TITULO") %>' />
            <br />
            DESCRIPCION:
            <asp:TextBox ID="DESCRIPCIONTextBox" runat="server" 
                Text='<%# Bind("DESCRIPCION") %>' />
            <br />
            ESTADO:
            <asp:DropDownList ID="DropDownList2" runat="server" 
                SelectedValue='<%# Bind("ESTADO") %>'>
                <asp:ListItem Value="0">Inactivo</asp:ListItem>
                <asp:ListItem Value="1">Activo</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID_CLAUSULA:
            <asp:Label ID="ID_CLAUSULALabel" runat="server" 
                Text='<%# Eval("ID_CLAUSULA") %>' />
            <br />
            TITULO:
            <asp:Label ID="TITULOLabel" runat="server" Text='<%# Bind("TITULO") %>' />
            <br />
            DESCRIPCION:
            <asp:Label ID="DESCRIPCIONLabel" runat="server" 
                Text='<%# Bind("DESCRIPCION") %>' />
            <br />
            ESTADO:
            <asp:Label ID="ESTADOLabel" runat="server" Text='<%# Bind("ESTADO") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Eliminar" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="Nuevo" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceClausula" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        DeleteCommand="DELETE FROM &quot;SC_CLAUSULA&quot; WHERE &quot;ID_CLAUSULA&quot; = :ID_CLAUSULA" 
        InsertCommand="INSERT INTO &quot;SC_CLAUSULA&quot; (&quot;ID_CLAUSULA&quot;, &quot;TITULO&quot;, &quot;DESCRIPCION&quot;, &quot;ESTADO&quot;) VALUES (:ID_CLAUSULA, :TITULO, :DESCRIPCION, :ESTADO)" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;SC_CLAUSULA&quot; WHERE (&quot;ID_CLAUSULA&quot; = :ID_CLAUSULA)" 
        UpdateCommand="UPDATE &quot;SC_CLAUSULA&quot; SET &quot;TITULO&quot; = :TITULO, &quot;DESCRIPCION&quot; = :DESCRIPCION, &quot;ESTADO&quot; = :ESTADO WHERE &quot;ID_CLAUSULA&quot; = :ID_CLAUSULA">
        <DeleteParameters>
            <asp:Parameter Name="ID_CLAUSULA" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID_CLAUSULA" Type="Decimal" />
            <asp:Parameter Name="TITULO" Type="String" />
            <asp:Parameter Name="DESCRIPCION" Type="String" />
            <asp:Parameter Name="ESTADO" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="ID_CLAUSULA" SessionField="id_clausula" 
                Type="Decimal" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TITULO" Type="String" />
            <asp:Parameter Name="DESCRIPCION" Type="String" />
            <asp:Parameter Name="ESTADO" Type="String" />
            <asp:Parameter Name="ID_CLAUSULA" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
