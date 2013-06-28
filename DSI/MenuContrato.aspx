<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="MenuContrato.aspx.vb" Inherits="DSI.MenuContrato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormViewMenuContrato" runat="server" 
        DataKeyNames="ID_CONTRATO" DataSourceID="SqlDataSourceMenuContrato">
        <EditItemTemplate>
            ID_CONTRATO:
            <asp:Label ID="ID_CONTRATOLabel1" runat="server" 
                Text='<%# Eval("ID_CONTRATO") %>' />
            <br />
            FC_CREACION:
            <asp:TextBox ID="FC_CREACIONTextBox" runat="server" 
                Text='<%# Bind("FC_CREACION") %>' />
            <br />
            FC_INICIO:
            <asp:TextBox ID="FC_INICIOTextBox" runat="server" 
                Text='<%# Bind("FC_INICIO") %>' />
            <br />
            FC_TERMINO:
            <asp:TextBox ID="FC_TERMINOTextBox" runat="server" 
                Text='<%# Bind("FC_TERMINO") %>' />
            <br />
            ESTADO_VIGENCIA:
            <asp:TextBox ID="ESTADO_VIGENCIATextBox" runat="server" 
                Text='<%# Bind("ESTADO_VIGENCIA") %>' />
            <br />
            VALOR_TOTAL:
            <asp:TextBox ID="VALOR_TOTALTextBox" runat="server" 
                Text='<%# Bind("VALOR_TOTAL") %>' />
            <br />
            ID_TIPO_CONTRATO:
            <asp:TextBox ID="ID_TIPO_CONTRATOTextBox" runat="server" 
                Text='<%# Bind("ID_TIPO_CONTRATO") %>' />
            <br />
            RUT:
            <asp:TextBox ID="RUTTextBox" runat="server" Text='<%# Bind("RUT") %>' />
            <br />
            U_ORIGEN:
            <asp:TextBox ID="U_ORIGENTextBox" runat="server" 
                Text='<%# Bind("U_ORIGEN") %>' />
            <br />
            U_DESTINO:
            <asp:TextBox ID="U_DESTINOTextBox" runat="server" 
                Text='<%# Bind("U_DESTINO") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <br />
            FC_CREACION:
            <asp:TextBox ID="FC_CREACIONTextBox" runat="server" 
                Text='<%# Bind("FC_CREACION") %>' />
            <br />
            FC_INICIO:
            <asp:TextBox ID="FC_INICIOTextBox" runat="server" 
                Text='<%# Bind("FC_INICIO") %>' />
            <br />
            FC_TERMINO:
            <asp:TextBox ID="FC_TERMINOTextBox" runat="server" 
                Text='<%# Bind("FC_TERMINO") %>' />
            <br />
            ESTADO_VIGENCIA:
            <asp:TextBox ID="ESTADO_VIGENCIATextBox" runat="server" 
                Text='<%# Bind("ESTADO_VIGENCIA") %>' />
            <br />
            VALOR_TOTAL:
            <asp:TextBox ID="VALOR_TOTALTextBox" runat="server" 
                Text='<%# Bind("VALOR_TOTAL") %>' />
            <br />
            ID_TIPO_CONTRATO:
            <asp:TextBox ID="ID_TIPO_CONTRATOTextBox" runat="server" 
                Text='<%# Bind("ID_TIPO_CONTRATO") %>' />
            <br />
            RUT:
            <asp:TextBox ID="RUTTextBox" runat="server" Text='<%# Bind("RUT") %>' />
            <br />
            U_ORIGEN:
            <asp:TextBox ID="U_ORIGENTextBox" runat="server" 
                Text='<%# Bind("U_ORIGEN") %>' />
            <br />
            U_DESTINO:
            <asp:TextBox ID="U_DESTINOTextBox" runat="server" 
                Text='<%# Bind("U_DESTINO") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insertar" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID_CONTRATO:
            <asp:Label ID="ID_CONTRATOLabel" runat="server" 
                Text='<%# Eval("ID_CONTRATO") %>' />
            <br />
            FC_CREACION:
            <asp:Label ID="FC_CREACIONLabel" runat="server" 
                Text='<%# Bind("FC_CREACION") %>' />
            <br />
            FC_INICIO:
            <asp:Label ID="FC_INICIOLabel" runat="server" Text='<%# Bind("FC_INICIO") %>' />
            <br />
            FC_TERMINO:
            <asp:Label ID="FC_TERMINOLabel" runat="server" 
                Text='<%# Bind("FC_TERMINO") %>' />
            <br />
            ESTADO_VIGENCIA:
            <asp:Label ID="ESTADO_VIGENCIALabel" runat="server" 
                Text='<%# Bind("ESTADO_VIGENCIA") %>' />
            <br />
            VALOR_TOTAL:
            <asp:Label ID="VALOR_TOTALLabel" runat="server" 
                Text='<%# Bind("VALOR_TOTAL") %>' />
            <br />
            ID_TIPO_CONTRATO:
            <asp:Label ID="ID_TIPO_CONTRATOLabel" runat="server" 
                Text='<%# Bind("ID_TIPO_CONTRATO") %>' />
            <br />
            RUT:
            <asp:Label ID="RUTLabel" runat="server" Text='<%# Bind("RUT") %>' />
            <br />
            U_ORIGEN:
            <asp:Label ID="U_ORIGENLabel" runat="server" Text='<%# Bind("U_ORIGEN") %>' />
            <br />
            U_DESTINO:
            <asp:Label ID="U_DESTINOLabel" runat="server" Text='<%# Bind("U_DESTINO") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Editar" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Eliminar" />
            &nbsp;
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceClienteContrato" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        DeleteCommand="DELETE FROM &quot;SC_CLIENTE_CONTRATO&quot; WHERE &quot;RUT&quot; = :RUT AND &quot;ID_CONTRATO&quot; = :ID_CONTRATO" 
        InsertCommand="INSERT INTO &quot;SC_CLIENTE_CONTRATO&quot; (&quot;RUT&quot;, &quot;ID_CONTRATO&quot;) VALUES (:RUT, :ID_CONTRATO)" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;SC_CLIENTE_CONTRATO&quot;">
        <DeleteParameters>
            <asp:Parameter Name="RUT" Type="String" />
            <asp:Parameter Name="ID_CONTRATO" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RUT" Type="String" />
            <asp:Parameter Name="ID_CONTRATO" Type="Decimal" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceMenuContrato" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        DeleteCommand="DELETE FROM &quot;SC_CONTRATO&quot; WHERE &quot;ID_CONTRATO&quot; = :ID_CONTRATO" 
        InsertCommand="INSERT INTO &quot;SC_CONTRATO&quot; (&quot;ID_CONTRATO&quot;, &quot;FC_CREACION&quot;, &quot;FC_INICIO&quot;, &quot;FC_TERMINO&quot;, &quot;ESTADO_VIGENCIA&quot;, &quot;VALOR_TOTAL&quot;, &quot;ID_TIPO_CONTRATO&quot;, &quot;RUT&quot;, &quot;U_ORIGEN&quot;, &quot;U_DESTINO&quot;) VALUES (:ID_CONTRATO, :FC_CREACION, :FC_INICIO, :FC_TERMINO, :ESTADO_VIGENCIA, :VALOR_TOTAL, :ID_TIPO_CONTRATO, :RUT, :U_ORIGEN, :U_DESTINO)" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;SC_CONTRATO&quot; WHERE (&quot;ID_CONTRATO&quot; = :ID_CONTRATO)" 
        UpdateCommand="UPDATE &quot;SC_CONTRATO&quot; SET &quot;FC_CREACION&quot; = :FC_CREACION, &quot;FC_INICIO&quot; = :FC_INICIO, &quot;FC_TERMINO&quot; = :FC_TERMINO, &quot;ESTADO_VIGENCIA&quot; = :ESTADO_VIGENCIA, &quot;VALOR_TOTAL&quot; = :VALOR_TOTAL, &quot;ID_TIPO_CONTRATO&quot; = :ID_TIPO_CONTRATO, &quot;RUT&quot; = :RUT, &quot;U_ORIGEN&quot; = :U_ORIGEN, &quot;U_DESTINO&quot; = :U_DESTINO WHERE &quot;ID_CONTRATO&quot; = :ID_CONTRATO">
        <DeleteParameters>
            <asp:Parameter Name="ID_CONTRATO" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID_CONTRATO" Type="Decimal" />
            <asp:Parameter Name="FC_CREACION" Type="String" />
            <asp:Parameter Name="FC_INICIO" Type="String" />
            <asp:Parameter Name="FC_TERMINO" Type="String" />
            <asp:Parameter Name="ESTADO_VIGENCIA" Type="String" />
            <asp:Parameter Name="VALOR_TOTAL" Type="Decimal" />
            <asp:Parameter Name="ID_TIPO_CONTRATO" Type="Decimal" />
            <asp:Parameter Name="RUT" Type="String" />
            <asp:Parameter Name="U_ORIGEN" Type="Decimal" />
            <asp:Parameter Name="U_DESTINO" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="ID_CONTRATO" SessionField="idContratoClausula" 
                Type="Decimal" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="FC_CREACION" Type="String" />
            <asp:Parameter Name="FC_INICIO" Type="String" />
            <asp:Parameter Name="FC_TERMINO" Type="String" />
            <asp:Parameter Name="ESTADO_VIGENCIA" Type="String" />
            <asp:Parameter Name="VALOR_TOTAL" Type="Decimal" />
            <asp:Parameter Name="ID_TIPO_CONTRATO" Type="Decimal" />
            <asp:Parameter Name="RUT" Type="String" />
            <asp:Parameter Name="U_ORIGEN" Type="Decimal" />
            <asp:Parameter Name="U_DESTINO" Type="Decimal" />
            <asp:Parameter Name="ID_CONTRATO" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
