<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <div class="banner row" id="banner">		
		<div class="parallax text-center" style="background-image: url(/Images/hotel10.jpg); margin-top: 68px; height: 862px">
			<div class="parallax-pattern-overlay">
				<div class="container text-center" style="height:839px; padding-top:170px;">
					<a href="#"><img id="site-title" class=" wow fadeInDown" wow-data-delay="0.0s" wow-data-duration="0.9s" src="img/logo.png" alt="logo"/></a>
					<h2 class="intro wow zoomIn" wow-data-delay="0.4s" wow-data-duration="0.9s">Synergy Hotels</h2>
				</div>
			</div>
		</div>
	</div>

    <!--about us-->
    <section class="aboutus" id="aboutus">
	<div class="container">
		<div class="heading text-center">
			<img class="dividerline" src="img/sep.png" alt="">
			<h2>About Synergy Hotels</h2>
			<img class="dividerline" src="img/sep.png" alt="">
			<h3>Have you ever felt worried that your party will not raise up to your guest expectations? In design, vertical rhythm is the structure that guides a reader's eye through the content. Good vertical rhythm makes a layout more balanced and beautiful and its content more readable. The time signature in sheet music visually depicts a song's rhythm, while for us, the lines of the baseline grid depict the rhythm of our content and give us guidelines.</h3>
		</div>			
		<div class="row">
			<div class="col-md-6">
				<div class="papers text-center">
					<img src="/Images/hotel11.jpg" alt=""><br/>
					<h4 class="notopmarg nobotmarg">John Vandeley</h4>
					<p>
						Have you ever felt worried that your party will not raise up to your guest expectations? In design, vertical rhythm is the structure that guides a reader's eye through the content. Good vertical rhythm makes a layout more balanced and beautiful and its content more readable. The time signature in sheet music visually depicts a song's rhythm, while for us, the lines of the baseline grid depict the rhythm of our content and give us guidelines.
					</p>
				</div>
			</div>
			<div class="col-md-6">
				<div class="papers text-center">
					<img src="/Images/hotel12.jpg" alt=""><h4 class="notopmarg nobotmarg">Stephanie Hellen</h4>
					<p>
						Have you ever felt worried that your party will not raise up to your guest expectations? In design, vertical rhythm is the structure that guides a reader's eye through the content. Good vertical rhythm makes a layout more balanced and beautiful and its content more readable. The time signature in sheet music visually depicts a song's rhythm, while for us, the lines of the baseline grid depict the rhythm of our content and give us guidelines.
					</p>
				</div>
			</div>
		</div>
	</div>
	</section>

    <!--write to us-->
    <section class="contact" id="contact">
	<div class="container">
		<div class="heading">
				<img class="dividerline" src="img/sep.png" alt="">
				<h2>Wtite To Us</h2>
				<img class="dividerline" src="img/sep.png" alt="">
		</div>
	</div>
	 <div class="container w960">
      <div class="row">
		
       <form method="post" action="contact.php" id="contactform1">
          <input name="name" type="text" class="contact col-md-6" placeholder="Your Name *" >
          <input name="email" type="email" class="contact noMarr col-md-6" placeholder="E-mail address *" >
          <textarea name="comment" class="contact col-md-12" placeholder="Message *"></textarea>
          <input type="submit" id="submit" class="contact submit" value="Send message">
        </form>
      </div>
    </div>
	</section>

    <!--footer-->
    <section class="footer" id="footer">
	
	<div class="container">
		<ul>
			<li><a href="#"><i class="fa fa-twitter"></i></a></li>
			<li><a href="#"><i class="fa fa-facebook"></i></a></li>
			<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
			<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
			<li><a href="#"><i class="fa fa-flickr"></i></a></li>
		</ul>
		<p>
			&copy; 2015 Copyright Your Website<br>
			 Theme by <a href="http://www.wowthemes.net">WowThemes.Net</a>
		</p>
	</div>
	</section>
</asp:Content>

