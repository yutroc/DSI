Public Class MenuContrato
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session.Item("idContratoClausula") Is Nothing) Then
            ' Session.Add("idContratoClausula", idContrato)
            'Response.Redirect("MenuContratoClausula.aspx")
            FormViewMenuContrato.ChangeMode(FormViewMode.Insert)
        End If
    End Sub

    Protected Sub FormView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewPageEventArgs) Handles FormViewMenuContrato.PageIndexChanging

    End Sub

    Protected Sub FormViewMenuContrato_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles FormViewMenuContrato.ItemInserted
        SqlDataSourceClienteContrato.InsertParameters("rut").DefaultValue = Session.Item("idClienteParaContrato")
        SqlDataSourceClienteContrato.InsertParameters("id_contrato").DefaultValue = Session.Item("idContratoClausula")


        ' Try
        SqlDataSourceClienteContrato.Insert()


        '  Catch ex As Exception


        ' End Try
        Response.Redirect("ListadoContratoClausula.aspx")

    End Sub

    Protected Sub FormViewMenuContrato_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdatedEventArgs) Handles FormViewMenuContrato.ItemUpdated
        Response.Redirect("MenuContratoClausula.aspx")
    End Sub

    Protected Sub SqlDataSourceClienteContrato_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSourceClienteContrato.Selecting

    End Sub
End Class