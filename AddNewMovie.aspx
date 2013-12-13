<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddNewMovie.aspx.vb" Inherits="admin_AddNewRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12">
    <asp:DetailsView ID="DetailsView1" GridLines="None" CssClass="table" runat="server" AutoGenerateRows="False" DataKeyNames="RecordID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
    <Fields>
        <asp:BoundField DataField="RecordID" HeaderText="RecordID" InsertVisible="False" ReadOnly="True" SortExpression="RecordID" />
        <asp:BoundField DataField="AlbumName" HeaderText="Album Name" SortExpression="AlbumName" />
        <asp:BoundField DataField="Artist" HeaderText="Artist" SortExpression="Artist" />
        <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
        <asp:BoundField DataField="YearReleased" HeaderText="Year Released" SortExpression="YearReleased" />
        <asp:BoundField DataField="NumberOfSongs" HeaderText="Number Of Songs" SortExpression="NumberOfSongs" />
        <asp:CommandField ShowInsertButton="True" ButtonType="Button" >
        <ControlStyle CssClass="btn btn-default" />
        </asp:CommandField>
    </Fields>
</asp:DetailsView>
            </div>
        </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Records] WHERE [RecordID] = @RecordID" InsertCommand="INSERT INTO [Records] ([AlbumName], [Artist], [Genre], [YearReleased], [NumberOfSongs]) VALUES (@AlbumName, @Artist, @Genre, @YearReleased, @NumberOfSongs)" SelectCommand="SELECT [RecordID], [AlbumName], [Artist], [Genre], [YearReleased], [NumberOfSongs] FROM [Records]" UpdateCommand="UPDATE [Records] SET [AlbumName] = @AlbumName, [Artist] = @Artist, [Genre] = @Genre, [YearReleased] = @YearReleased, [NumberOfSongs] = @NumberOfSongs WHERE [RecordID] = @RecordID">
    <DeleteParameters>
        <asp:Parameter Name="RecordID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="AlbumName" Type="String" />
        <asp:Parameter Name="Artist" Type="String" />
        <asp:Parameter Name="Genre" Type="String" />
        <asp:Parameter Name="YearReleased" Type="String" />
        <asp:Parameter Name="NumberOfSongs" Type="Decimal" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="AlbumName" Type="String" />
        <asp:Parameter Name="Artist" Type="String" />
        <asp:Parameter Name="Genre" Type="String" />
        <asp:Parameter Name="YearReleased" Type="String" />
        <asp:Parameter Name="NumberOfSongs" Type="Decimal" />
        <asp:Parameter Name="RecordID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

