<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <section class="gallery" id="gallery">
		<div class="container">
			<div class="heading text-center">
				<img class="dividerline" src="img/sep.png" alt="">
				<h2>Room Gallery</h2>
				<img class="dividerline" src="img/sep.png" alt="">
			</div>
			
			<div id="grid-gallery" class="grid-gallery">

					<section class="grid-wrap">
						<ul class="grid">
							<li class="grid-sizer"></li><!-- for Masonry column width -->				
							<li>
								<figure>
									<img src="/Images/hotel1.jpg" alt="" style="height:180px"/>
									<figcaption><h3>Thundercats next level</h3><p>Portland nulla butcher ea XOXO, consequat Bushwick Pinterest elit twee pickled direct. </p></figcaption>
								</figure>
							</li>
							<li>
								<figure>
									<img src="/Images/hotel2.jpg" alt="" style="height:180px"/>
									<figcaption><h3>Bushwick selvage synth</h3><p>Bicycle rights flannel Shoreditch, art party laboris Bushwick sriracha.</p></figcaption>
								</figure>
							</li>
							<li>
								<figure>
									<img src="/Images/hotel3.jpg" alt="" style="height:180px"/>
									<figcaption><h3>Bottle wayfarers locavore</h3><p>Once there was a little asparagus, he was green and lonely.</p></figcaption>
								</figure>
							</li>
							<li>
								<figure>
									<img src="/Images/hotel4.jpg" alt="" style="height:180px"/>
									<figcaption><h3>Letterpress asymmetrical</h3><p>Chillwave hoodie ea gentrify aute sriracha consequat.</p></figcaption>
								</figure>
							</li>
							<li>
								<figure>
									<img src="/Images/hotel5.jpg" alt="" style="height:180px"/>
									<figcaption><h3>Vice velit chia</h3><p>Schlitz irure nulla Tonx retro 90's chia cardigan quis before they sold out. </p></figcaption>
								</figure>
							</li>
							<li>
								<figure>
									<img src="/Images/hotel6.jpg" alt="" style="height:180px"/>
									<figcaption><h3>Brunch semiotics</h3><p>Ex disrupt cray yr, butcher pour-over magna umami kitsch before they sold out commodo.</p></figcaption>
								</figure>
							</li>
							
							<li>
								<figure>
									<img src="/Images/hotel8.jpg" alt="" style="height:180px"/>
									<figcaption><h3>Brunch semiotics</h3><p>Ex disrupt cray yr, butcher pour-over magna umami kitsch before they sold out commodo.</p></figcaption>
								</figure>
							</li>
							
							<li>
								<figure>
									<img src="/Images/hotel13.jpg" alt="" style="height:180px"/>
									<figcaption><h3>Brunch semiotics</h3><p>Ex disrupt cray yr, butcher pour-over magna umami kitsch before they sold out commodo.</p></figcaption>
								</figure>
							</li>
						
						</ul>
					</section><!-- // end small images -->
					
					<section class="slideshow">
						<ul>
							<li>
								<figure>
									<img src="/Images/hotel1.jpg" alt=""/>
									<figcaption><h3>Thundercats next level</h3><p>Portland nulla butcher ea XOXO, consequat Bushwick Pinterest elit twee pickled direct trade vero. </p></figcaption>
								</figure>
							</li>
							<li>
								<figure>
									<img src="/Images/hotel2.jpg" alt=""/>
									<figcaption><h3>Bushwick selvage synth</h3><p>Bicycle rights flannel Shoreditch, art party laboris Bushwick sriracha authentic chambray hella umami sed distillery master cleanse.</p></figcaption>
								</figure>
							</li>
							<li>
								<figure>
									<img src="/Images/hotel3.jpg" alt=""/>
									<figcaption><h3>Bottle wayfarers locavore</h3><p>Once there was a little asparagus, he was green and lonely.</p></figcaption>
								</figure>
							</li>
							<li>
								<figure>
									<img src="/Images/hotel4.jpg" alt=""/>
									<figcaption><h3>Letterpress asymmetrical</h3><p>Chillwave hoodie ea gentrify aute sriracha consequat.</p></figcaption>
								</figure>
							</li>
							<li>
								<figure>
									<img src="/Images/hotel5.jpg" alt=""/>
									<figcaption><h3>Vice velit chia</h3><p>Laborum tattooed iPhone, Schlitz irure nulla Tonx retro 90's chia cardigan quis asymmetrical paleo. </p></figcaption>
								</figure>
							</li>
							<li>
								<figure>
									<img src="/Images/hotel6.jpg" alt=""/>
									<figcaption><h3>Brunch semiotics</h3><p>Ex disrupt cray yr, butcher pour-over magna umami kitsch before they sold out commodo.</p></figcaption>
								</figure>
							</li>
							
							<li>
								<figure>
									<img src="/Images/hotel8.jpg" alt=""/>
									<figcaption><h3>Brunch semiotics</h3><p>Ex disrupt cray yr, butcher pour-over magna umami kitsch before they sold out commodo.</p></figcaption>
								</figure>
							</li>
							
							<li>
								<figure>
									<img src="/Images/hotel13.jpg" alt=""/>
									<figcaption><h3>Brunch semiotics</h3><p>Ex disrupt cray yr, butcher pour-over magna umami kitsch before they sold out commodo.</p></figcaption>
								</figure>
							</li>
						</ul>
						<nav>
							<span class="icon nav-prev"></span>
							<span class="icon nav-next"></span>
							<span class="icon nav-close"></span>
						</nav>
						<div class="info-keys icon">Navigate with arrow keys</div>
					</section><!-- // end slideshow -->
					
				</div><!-- // grid-gallery -->
			</div>
	</section>
</asp:Content>


