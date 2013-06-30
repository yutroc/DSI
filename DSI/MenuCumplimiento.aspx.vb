Public Class MenuCumplimiento
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Chart1.ChartAreas(0).RecalculateAxesScale()
        Chart1.ChartAreas(0).AxisY.Maximum = 100
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim id As Integer
        id = GridView1.SelectedDataKey.Value
        Session.Add("ID_CONTRATO", id)
        Label1.Text = "DETALLE CONTRATO " + id.ToString("000000")
        Label1.Visible = True
    End Sub
End Class