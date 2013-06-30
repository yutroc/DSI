Public Class ReporteCumplimiento
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Chart1.ChartAreas(0).RecalculateAxesScale()
        Chart1.ChartAreas(0).AxisY.Maximum = 100
    End Sub

End Class