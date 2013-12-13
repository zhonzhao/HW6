
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        SqlDataSource1.DataBind()
    End Sub
End Class
