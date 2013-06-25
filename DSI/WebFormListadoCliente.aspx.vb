Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridViewCliente_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridViewCliente.SelectedIndexChanged
        Dim idCliente As Integer
        idCliente = GridViewCliente.SelectedDataKey.Value
        Session.Add("idCliente", idCliente)


        Response.Redirect("MenuCliente.aspx")

    End Sub

    Protected Sub LinkButtonCrearCliente_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButtonCrearCliente.Click
        Session.Remove("idCliente")
        Response.Redirect("MenuCliente.aspx")
    End Sub
End Class