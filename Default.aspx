<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
    <div class="col-md-6 col-md-offset-4 form-inline" role="form" id="search">
        <div class="form-group">
            <asp:TextBox ID="tbSearch" runat="server" CssClass="form-control" Placeholder="Search by Movie Name"></asp:TextBox>
            
        </div>
        <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn btn-default" />
    </div>
    </div>
    <div class="row">
    <asp:GridView ID="GridView1" GridLines="None" runat="server" CssClass="table table-hover" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" DataKeyNames="ID">
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Starring" HeaderText="Starring" SortExpression="Starring" />
          <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
          <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="MovieDetails.aspx?ID={0}" Text="Details" />
    </Columns>
</asp:GridView>
        </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID], [Name], [Starring], [Genre] FROM [Records]" FilterExpression="Name Like '%{0}%'">
    <FilterParameters>
        <asp:ControlParameter ControlID="tbSearch" Name="Name" PropertyName="Text" Type="String" />
    </FilterParameters>
    </asp:SqlDataSource>
</asp:Content>

