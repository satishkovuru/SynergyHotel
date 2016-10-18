<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <section class="login" id="login">
         <div class="container">
		<div class="heading text-center">
			<img class="dividerline" src="img/sep.png" alt="">
			<h2> Log In</h2>
            <img class="dividerline" src="img/sep.png" alt="">
	    </div>
		<div class="container w960">
      <div class="row">
              <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
		 <center>
             <table>
                 <tr>
                     <td style="width: 150px">User Name</td>
                     <td style="width: 355px"> <asp:TextBox Id="UserName" runat="server" class="contact col-md-6" style="height:44px; width:250px; top: 18px; left: 0px;"></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="text-danger" ErrorMessage="The user name field is required." ForeColor="Red" />

                         </tr>
                 <tr>
                      <td style="width: 150px">Password</td>
                     <td style="width: 355px"><asp:TextBox Id="Password" type="password" runat="server" class="contact col-md-6" style="height:44px; width:250px; top: 18px; left: 0px;"></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The user name field is required." ForeColor="Red" />

                         </tr>
             </table>
             <br />
             <asp:Button ID="Button1" class="contact submit" runat="server" OnClick="Button1_Click" Text="Log In" />
         </center>
      </div>
    </div>
	</div>

	</section>
</asp:Content>


