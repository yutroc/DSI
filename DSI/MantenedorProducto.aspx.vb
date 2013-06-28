Public Class MantenedorProducto
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim id_producto As Integer
        id_producto = GridView1.SelectedDataKey.Value
        Session.Add("ID_PRODUCTO", id_producto)
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'SqlDataSourceProducto.Insert()
        'SqlDataSourceProductoAserrable.Insert()
        FormViewProducto.UpdateItem(True)
        FormViewProductoAserrable.UpdateItem(True)
        FormViewProductoPulpable.UpdateItem(True)
        Session.Remove("ID_PRODUCTO")
        Response.Redirect("MantenedorProducto.aspx")
        Button1.Visible = False
        Button2.Visible = False
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Session.Remove("ID_PRODUCTO")
        Response.Redirect("MantenedorProducto.aspx")
    End Sub

    Protected Sub borrar(sender As Object, e As EventArgs)
        'Dim id_producto As Integer
        'id_producto = GridView1.SelectedDataKey.Value
        'Session.Add("ID_PRODUCTO", id_producto)
        'SqlDataSourceProductoAserrable.DeleteParameters.Add("ID_PRODUCTO", Session.Item("ID_PRODUCTO"))
        'SqlDataSourceProductoAserrable.Delete()
        'SqlDataSourceProducto.DeleteParameters.Add("ID_PRODUCTO", Session.Item("ID_PRODUCTO"))
        'SqlDataSourceProducto.Delete()
        'FormViewProducto.DeleteItem()
        'FormViewProductoAserrable.DeleteItem()
        'Session.Remove("ID_PRODUCTO")
        'Response.Redirect("MantenedorProducto.aspx")

        FormViewProducto.ChangeMode(FormViewMode.ReadOnly)
        FormViewProductoAserrable.ChangeMode(FormViewMode.ReadOnly)
        Button3.Visible = True
        Button5.Visible = True

    End Sub

    Protected Sub editar(sender As Object, e As EventArgs)
        'Dim id_producto As Integer
        'id_producto = GridView1.SelectedDataKey.Value
        'Session.Add("ID_PRODUCTO", id_producto)
        FormViewProducto.ChangeMode(FormViewMode.Edit)
        FormViewProductoAserrable.ChangeMode(FormViewMode.Edit)
        FormViewProductoPulpable.ChangeMode(FormViewMode.Edit)
        Button1.Visible = True
        Button2.Visible = True
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        FormViewProductoAserrable.DeleteItem()
        FormViewProductoPulpable.DeleteItem()
        FormViewProducto.DeleteItem()
        Session.Remove("ID_PRODUCTO")
        Response.Redirect("MantenedorProducto.aspx")
        Button3.Visible = False
        Button5.Visible = False
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Session.Remove("ID_PRODUCTO")
        Response.Redirect("MantenedorProducto.aspx")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim tipo_producto As Integer
        tipo_producto = DropDownList1.SelectedItem.Value
        Session.Add("tipo_producto", tipo_producto)
        'FormViewProducto.ChangeMode(FormViewMode.Insert)
        'If tipo_producto = 0 Then
        '    FormViewProductoAserrable.ChangeMode(FormViewMode.Insert)
        '    FormViewProductoPulpable.ChangeMode(FormViewMode.ReadOnly)
        'End If
        'If tipo_producto = 1 Then
        '    FormViewProductoPulpable.ChangeMode(FormViewMode.Insert)
        '    FormViewProductoAserrable.ChangeMode(FormViewMode.ReadOnly)
        'End If
        'Debug.WriteLine(tipo_producto)
        'Button6.Visible = True
        'Button7.Visible = True
        Response.Redirect("FormProducto.aspx")
    End Sub
End Class