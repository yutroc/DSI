Public Class Imprimible
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim contrato As Integer
        contrato = Session.Item("idUltimoContratoInsert")
        Session.Add("id_contrato", contrato)
    End Sub

End Class