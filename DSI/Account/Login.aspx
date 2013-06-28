<%@ Page Title="Iniciar sesión" Language="vb" MasterPageFile="~/Index.Master" AutoEventWireup="false"
    CodeBehind="Login.aspx.vb" Inherits="DSI.Login" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringDSI %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionStringDSI.ProviderName %>" 
        
        SelectCommand="SELECT &quot;NOMBRE&quot; FROM &quot;SC_USUARIO&quot; WHERE ((&quot;RUT&quot; = :RUT) AND (&quot;PASSWORD&quot; = :PASSWORD))">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="RUT" SessionField="rut" 
                Type="String" />
            <asp:SessionParameter Name="PASSWORD" SessionField="password" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Login ID="LoginUser" runat="server" EnableViewState="false" RenderOuterTable="false">
        <LayoutTemplate>
            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification"
                ValidationGroup="LoginUserValidationGroup" />
            <div class="accountInfo">
                <fieldset class="login">
                    <h2>
                        Iniciar Sesión
                    </h2>
                    <p>
                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Usuario</asp:Label>
                        <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                            CssClass="failureNotification" ErrorMessage="El nombre de usuario es obligatorio."
                            ToolTip="El nombre de usuario es obligatorio." ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña</asp:Label>
                        <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                            CssClass="failureNotification" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria."
                            ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p class="submitButton">
                        <asp:Button ID="LoginButton" runat="server" cssClass="botones" 
                            CommandName="Login" Text="Iniciar sesión"
                            ValidationGroup="LoginUserValidationGroup" />
                    </p>
                </fieldset>
            </div>
        </LayoutTemplate>
    </asp:Login>
</asp:Content>
