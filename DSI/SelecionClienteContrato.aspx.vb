Public Class SelecionClienteContrato
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridViewClienteParaContrato.SelectedIndexChanged
        Dim idClienteParaContrato As Integer
        idClienteParaContrato = GridViewClienteParaContrato.SelectedDataKey.Value
        Session.Add("idClienteParaContrato", idClienteParaContrato)
        Session.Remove("idContratoClausula")
        Response.Redirect("MenuContrato.aspx")

    End Sub

    Protected Sub SqlDataSourceClienteParaContrato_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSourceClienteParaContrato.Selecting

    End Sub
End Class