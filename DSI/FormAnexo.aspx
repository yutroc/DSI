<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Global.Master"
    CodeBehind="FormAnexo.aspx.vb" Inherits="DSI.FormAnexo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="TituloPagina">
        <h1>
            Vista de Anexo</h1>
    </div>
    <asp:Label ID="LabelMensajes" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:FormView ID="FormViewAnexo" runat="server" DataKeyNames="ID_ANEXO" DataSourceID="SqlDataSourceAnexo">
        <EditItemTemplate>
            ID_ANEXO:
            <asp:Label ID="ID_ANEXOLabel1" runat="server" Text='<%# Eval("ID_ANEXO") %>' />
            <br />
            TITULO:
            <asp:TextBox ID="TITULOTextBox" runat="server" Text='<%# Bind("TITULO") %>' />
            <br />
            DESCRIPCION:
            <asp:TextBox ID="DESCRIPCIONTextBox" runat="server" Text='<%# Bind("DESCRIPCION") %>' />
            <br />
            ESTADO:
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" SelectedValue='<%# Bind("ESTADO") %>'>
                <asp:ListItem Value="0">Inactivo</asp:ListItem>
                <asp:ListItem Value="1">Activo</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ID_ANEXO:
            <asp:TextBox ID="ID_ANEXOTextBox" runat="server" Text='<%# Bind("ID_ANEXO") %>' />
            <br />
            TITULO:
            <asp:TextBox ID="TITULOTextBox" runat="server" Text='<%# Bind("TITULO") %>' />
            <br />
            DESCRIPCION:
            <asp:TextBox ID="DESCRIPCIONTextBox" runat="server" Text='<%# Bind("DESCRIPCION") %>' />
            <br />
            ESTADO:
            <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("ESTADO") %>'>
                <asp:ListItem Value="0">Inactivo</asp:ListItem>
                <asp:ListItem Value="1">Activo</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID_ANEXO:
            <asp:Label ID="ID_ANEXOLabel" runat="server" Text='<%# Eval("ID_ANEXO") %>' />
            <br />
            TITULO:
            <asp:Label ID="TITULOLabel" runat="server" Text='<%# Bind("TITULO") %>' />
            <br />
            DESCRIPCION:
            <asp:Label ID="DESCRIPCIONLabel" runat="server" Text='<%# Bind("DESCRIPCION") %>' />
            <br />
            ESTADO:
            <asp:Label ID="ESTADOLabel" runat="server" Text='<%# Bind("ESTADO") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                Text="Eliminar" />
            &nbsp;
            <br />
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                Text="Crear Nuevo Anexo" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceAnexo" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>"
        DeleteCommand="DELETE FROM &quot;SC_ANEXO&quot; WHERE &quot;ID_ANEXO&quot; = :ID_ANEXO"
        InsertCommand="INSERT INTO &quot;SC_ANEXO&quot; (&quot;ID_ANEXO&quot;, &quot;TITULO&quot;, &quot;DESCRIPCION&quot;, &quot;ESTADO&quot;) VALUES (:ID_ANEXO, :TITULO, :DESCRIPCION, :ESTADO)"
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" SelectCommand="SELECT * FROM &quot;SC_ANEXO&quot; WHERE (&quot;ID_ANEXO&quot; = :ID_ANEXO)"
        UpdateCommand="UPDATE &quot;SC_ANEXO&quot; SET &quot;TITULO&quot; = :TITULO, &quot;DESCRIPCION&quot; = :DESCRIPCION, &quot;ESTADO&quot; = :ESTADO WHERE &quot;ID_ANEXO&quot; = :ID_ANEXO">
        <DeleteParameters>
            <asp:Parameter Name="ID_ANEXO" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID_ANEXO" Type="Decimal" />
            <asp:Parameter Name="TITULO" Type="String" />
            <asp:Parameter Name="DESCRIPCION" Type="String" />
            <asp:Parameter Name="ESTADO" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="ID_ANEXO" SessionField="id_anexo" Type="Decimal" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TITULO" Type="String" />
            <asp:Parameter Name="DESCRIPCION" Type="String" />
            <asp:Parameter Name="ESTADO" Type="String" />
            <asp:Parameter Name="ID_ANEXO" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
