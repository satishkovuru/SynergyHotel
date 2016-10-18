<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="RoomBooking.aspx.cs" Inherits="RoomBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
		<div class="heading text-center">
			<img class="dividerline" src="img/sep.png" alt="">
			<h2>Select Your Room</h2>
            <img class="dividerline" src="img/sep.png" alt="">
	    </div>

    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="room_id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" style="margin-top:10px;" Height="636px" Width="1091px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="room_id" HeaderText="Room Number" ReadOnly="True" SortExpression="room_id" />
            <asp:BoundField DataField="roomType" HeaderText="Room Type" SortExpression="roomType" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:ImageField  DataImageUrlField="image" HeaderText="Image" ControlStyle-Width="200" ControlStyle-Height = "150" SortExpression="ProductImageThumb" >
<ControlStyle Height="100px" Width="100px"></ControlStyle>
            </asp:ImageField>
            <asp:BoundField DataField="roomDescription" HeaderText="Description" SortExpression="roomDescription" />
            <asp:TemplateField>
                    
         
    <ItemTemplate>
            
           <asp:CheckBox ID="SelectCheckBox" runat="server" 
                      AutoPostBack="False" OnCheckedChanged="SelectCheckBox_OnCheckedChanged" />
    </ItemTemplate>
</asp:TemplateField>

        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Right" BackColor="White" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
                 <br />
                 <asp:Button runat="server" onClick="AddtoCart" class="contact submit" Text="Select" />

        </center>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:z1776136ConnectionString %>" SelectCommand="SELECT [room_id], [roomType], [price], [image], [roomDescription] FROM [rooms] where roomType=@type and availability=@yes;">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="type" SessionField="RoomType" />
            <asp:Parameter DefaultValue="Yes" Name="yes" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

