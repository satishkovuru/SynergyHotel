<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ManageRooms_AL.aspx.cs" Inherits="ManageRooms_AL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <div>
    <center>
        <table style="width: 513px; height: 302px; margin-top:100px">
            <tr>
                
                 <td style="width: 270px">RoomType</td>
                    <td><asp:DropDownList id="type" runat="server" DataSourceID="SqlDataSource1" DataTextField="roomType" DataValueField="roomType"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:z1776136ConnectionString %>" SelectCommand="SELECT [roomType] FROM [roomtype]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 270px">Price</td><td><asp:TextBox ID="Price" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
               <td style="width: 270px">Image </td> <td><asp:FileUpload ID="ImageUpload" runat="server" /></td>
            </tr>

            <tr>
                <td style="width: 270px">Description</td><td><asp:TextBox ID="Description" runat="server"></asp:TextBox></td>
            </tr>
           
        </table>
        <asp:Button runat="server" class="contact submit"  onClick="Button1_Click" Text="Add New Room"></asp:Button>
    </center>
</div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label Id="id1" runat="server" Text="Label"></asp:Label>

</asp:Content>


