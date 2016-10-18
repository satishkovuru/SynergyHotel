<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CheckAvailability.aspx.cs" Inherits="CheckAvailability" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
     <section class="specialties" id="specialties">
         <div class="container">
		<div class="heading text-center">
			<img class="dividerline" src="img/sep.png" alt="">
			<h2> Check Room Availability</h2>
            <img class="dividerline" src="img/sep.png" alt="">
	    </div>
		<div class="container w960">
      <div class="row">
		 <center>
             <table>
                 <tr>
                     <td style="width: 150px">Check-In Date:</td>
                     <td style="width: 355px"><input name="name" type="text" id="datepicker" class="contact col-md-6" style="height:44px; width:250px; top: 18px; left: 0px;" placeholder="Check-In Date *">
                 </tr>
                 <tr>
                      <td style="width: 150px">Check-Out Date:</td>
                     <td style="width: 355px"><input name="name" type="text" id="datepicker1" class="contact col-md-6" style="height:44px; width:250px; top: 18px; left: 0px;" placeholder="Check-Out Date *">
                 </tr>
                 <tr>
                     <td style="width: 150px">Room Type:</td>
                     <td style="width: 355px"><asp:DropDownList class="dropdown"
                                                   style="background:#fff; border:solid 1px #ddd; color:#000;padding:15px 30px;margin-right:3%;margin-bottom:30px;outline:none;height:44px; width:250px; top: 18px; left: 0px;"
                                                   runat="server"  Height="30px" Width="250px"></asp:DropDownList></td>
                 </tr>
             </table>
             <br />
             <asp:Button ID="Button1" runat="server" class="contact submit" OnClick="Button1_Click" Text="Check Availability" />

         &nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button2" runat="server" class="contact submit" Text="Log In" OnClick="Button2_Click" />

         </center>
      </div>
    </div>
	</div>

	</section>
</asp:Content>


