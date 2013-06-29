Public Class ListadoCLienteContrato
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridViewClienteRevisaContrato.SelectedIndexChanged
        Dim idClienteRevisaContrato As Integer
        idClienteRevisaContrato = GridViewClienteRevisaContrato.SelectedDataKey.Value
        Session.Add("idClienteRevisaContrato", idClienteRevisaContrato)

        Response.Redirect("MenuClienteRevisaContrato.aspx")
    End Sub
End Class