<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <section class="login" id="login">
         <div class="container">
		<div class="heading text-center">
			<img class="dividerline" src="img/sep.png" alt="">
			<h2> Register Here</h2>
            <img class="dividerline" src="img/sep.png" alt="">
	    </div>
		<div class="container w960">
      <div class="row">
		 <center>
             <table>
                 <tr>
                     <td style="width: 150px">First Name</td>
                     <td style="width: 355px"><input name="name" type="text" class="contact col-md-6" style="height:44px; width:250px; top: 18px; left: 0px;" placeholder="First Name *">
                 </tr>
                 <tr>
                      <td style="width: 150px">Last Name</td>
                     <td style="width: 355px"><input name="name" type="text" class="contact col-md-6" style="height:44px; width:250px; top: 18px; left: 0px;" placeholder="Last Name *">
                 </tr>
                 <tr>
                     <td style="width: 150px">Email</td>
                     <td style="width: 355px"><input name="name" type="text" class="contact col-md-6" style="height:44px; width:250px; top: 18px; left: 0px;" placeholder="Email *">
                 </tr>
                 <tr>
                      <td style="width: 150px">Phone Number</td>
                     <td style="width: 355px"><input name="name" type="text" class="contact col-md-6" style="height:44px; width:250px; top: 18px; left: 0px;" placeholder="Phone Number *">
                 </tr>
                 <tr>
                      <td style="width: 150px">Create Password</td>
                     <td style="width: 355px"><input name="name" type="password" class="contact col-md-6" style="height:44px; width:250px; top: 18px; left: 0px;">
                 </tr>
             </table>
             
             <br />
             <asp:Button ID="Button2" class="contact submit" runat="server" Text="Register" OnClick="Button2_Click" />
         </center>
      </div>
    </div>
	</div>

	</section>
</asp:Content>



