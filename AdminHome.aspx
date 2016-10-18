<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <section class="AdminHome" id="AdminHome">
         <div class="container">
		<div class="heading text-center">
			<img class="dividerline" src="img/sep.png" alt="">
			<h2>Synergy Hotels</h2>
            <img class="dividerline" src="img/sep.png" alt="">
	    </div>
		<div class="container w960">
      <div class="row">
		 <center>

                 <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="false" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                  <asp:ListItem Value="RoomAvailability">Room Availability</asp:ListItem>
                 <asp:ListItem Value="CustomerInfo">Customer Information</asp:ListItem>
                 <asp:ListItem Value="EmployeeInfo">Employee Information</asp:ListItem>
                 <asp:ListItem Value="AddNewRoom">Add New Room</asp:ListItem>
                 
    </asp:CheckBoxList>


        
                 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>


        
             <br />
             <asp:Button ID="Button1" class="contact submit" runat="server" OnClick="Button1_Click" Text="Continue" />
         </center>
      </div>
    </div>
	</div>

	</section>
</asp:Content>


