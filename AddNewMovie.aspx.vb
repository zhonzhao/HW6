
Partial Class admin_AddNewRecord
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("~/admin/Default.aspx")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("~/admin/Default.aspx")
    End Sub
End Class
