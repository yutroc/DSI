Public Class FormProducto
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim tipo_producto As Integer
        tipo_producto = Session.Item("tipo_producto")
        FormViewProducto.ChangeMode(FormViewMode.Insert)
        If tipo_producto = 0 Then
            FormViewProductoAserrable.ChangeMode(FormViewMode.Insert)
            FormViewProductoPulpable.ChangeMode(FormViewMode.ReadOnly)
        End If
        If tipo_producto = 1 Then
            FormViewProductoPulpable.ChangeMode(FormViewMode.Insert)
            FormViewProductoAserrable.ChangeMode(FormViewMode.ReadOnly)
        End If
    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Dim tipo_producto As Integer
        tipo_producto = Session.Item("tipo_producto")
        FormViewProducto.InsertItem(True)
        If tipo_producto = 0 Then
            FormViewProductoAserrable.InsertItem(True)
        End If
        If tipo_producto = 1 Then
            FormViewProductoPulpable.InsertItem(True)
        End If
        Session.Remove("ID_PRODUCTO")
        Response.Redirect("MantenedorProducto.aspx")
    End Sub

    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Session.Remove("ID_PRODUCTO")
        Response.Redirect("MantenedorProducto.aspx")
    End Sub

    Protected Sub FormViewProductoAserrable_ItemInserting(sender As Object, e As System.Web.UI.WebControls.FormViewInsertEventArgs) Handles FormViewProductoAserrable.ItemInserting
        Dim maxid As Integer
        Dim dv As DataView
        dv = CType(SqlDataSourceMax.Select(DataSourceSelectArguments.Empty), DataView)
        maxid = CType(dv.Table.Rows(0)(0), Integer)
        e.Values.Item("ID_PRODUCTO") = maxid
    End Sub

    Protected Sub FormViewProductoPulpable_ItemInserting(sender As Object, e As System.Web.UI.WebControls.FormViewInsertEventArgs) Handles FormViewProductoPulpable.ItemInserting
        Dim maxid As Integer
        Dim dv As DataView
        dv = CType(SqlDataSourceMax.Select(DataSourceSelectArguments.Empty), DataView)
        maxid = CType(dv.Table.Rows(0)(0), Integer)
        e.Values.Item("ID_PRODUCTO") = maxid
    End Sub
End Class