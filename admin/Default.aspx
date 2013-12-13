<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-6 col-md-offset-4 form-inline" role="form" id="search">
            <div class="form-group">
                <label class="sr-only">Search by Album Name:</label>
                <asp:TextBox ID="tbSearch" runat="server" CssClass="form-control" Placeholder="Search by Album Name"></asp:TextBox>
            
            </div>
            <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn btn-default" />
        </div>
    </div>
    <div class="row">
    <asp:GridView ID="GridView1" GridLines="None" CssClass="table-hover table"  runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="RecordID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="RecordID" HeaderText="RecordID" InsertVisible="False" ReadOnly="True" SortExpression="RecordID" Visible="False" />
            <asp:BoundField DataField="AlbumName" HeaderText="Album Name" SortExpression="AlbumName" />
            <asp:BoundField DataField="Artist" HeaderText="Artist" SortExpression="Artist" />
            <asp:HyperLinkField DataNavigateUrlFields="RecordID" DataNavigateUrlFormatString="RecordDetails.aspx?RecordID={0}" Text="View Record"/>
        </Columns>
    </asp:GridView>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [RecordID], [AlbumName], [Artist] FROM [Records]" FilterExpression="AlbumName Like '%{0}%'">
    <FilterParameters>
        <asp:ControlParameter ControlID="tbSearch" Name="AlbumName" PropertyName="Text" Type="String" />
    </FilterParameters>
    </asp:SqlDataSource>
</asp:Content>

