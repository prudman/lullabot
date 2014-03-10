<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="patrickrudman.com.index" MaintainScrollPositionOnPostBack = "true" %>
<!DOCTYPE html>

<%@ Register tagPrefix="headerJS" tagName="headerJS" src="~/controls/headerJs.ascx" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="x-ua-compatible" content="IE=Edge"/> 
    <title>patrick rudman, web designer, developer</title>
    <meta name="description" content="patrick rudman, web designer, developer" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="<%= ResolveUrl("~/stylesheets/main.css") %>" type="text/css" media="screen, handheld" />
    <link rel="stylesheet" href="<%= ResolveUrl("~/stylesheets/print.css") %>" type="text/css" media="print" />
    <headerJS:headerJS id="headerJs" runat="server" />

</head>

<body>
    <span id="top"></span>
    <form id="form1" runat="server">
    <div id="preloader"><div class="loading"></div></div>

    <header>
      <div id="navWrapper">
        <nav class="color-bg">
          <ul>
            <li class="color"><a href="#work" id="navWork" class="work">work</a> , </li>
            <li class="color"><a href="#about" id="navAbout" class="about">about</a> , </li>
            <li class="color"><a href="#contact" id="navContact" class="contact">contact</a></li>
          </ul>
        </nav>
        <div class="logoContainer">
          <a href="#top" id="logo" class="color">
          <span class="pr">pr</span>
          <span class="newColorIcon"><i class="icon-pencil"></i></span>
          <p>patrick rudman, web designer</p></a>
        </div>


        </div><!--/navWrapper-->
    </header>
 
<%----WORK--------------------------------------------------------------------------------------------------%>
    
    <section id="work">
      <h1 class="color">work, <span class="tagline">some new stuff, and some old stuff that still holds up.</span></h1>
      <figure>
        <a class="thumb" id="thumbCIEEStudy">
          <div class="figcaption">           
            <h2 class="title">ciee study abroad, <span class="date">2012</span></h2>
            <h3 class="description">designer, developer, project manager</h3>
          </div>
          <img src="images/study324x246.jpg" alt="ciee study abroad" />
        </a>     
      </figure>
      <div class="details Study">
           <div class="leftCol"> 
            <h2 class="title">ciee study abroad, <span class="date">2012</span></h2>
            <h3 class="description">designer, developer, project manager</h3>
              <div class="image">
                <img id="zoomStudy" src='images/studySnap480x360.jpg' data-zoom-image="images/studySnapLarge1158x869.jpg" alt="ciee study abroad"/>
              </div>
              <p>Clean, simple, and featuring the latest in responsive web design, this site was built to make navigating more than 140 study abroad programs intuitive and engaging.</p>
              <p>As lead web designer, I began by designing the site mobile first with an emphasis on content and user experience. As project manager, I successfully oversaw a team of designers, developers, and freelancers, in order to meet every deadline and deliver a product that exceeded expectations.</p>
              <p>The site was recognized for excellence in web design at the <a href="http://adclubofmaine.com/broderson_awards/" target="_blank" id="linkStudyBrody" class="external hover">2013 Broderson Awards</a>.</p>
              <div class="buttons">
                <a href="http://www.ciee.org/study-abroad/" id="btnVisitCIEEStudy" target="_blank" class="button visit color-bg">visit</a>
                <a class="button close">close</a>
              </div>
            </div>            
        </div><!--details-->   
        
        <figure>
        <a class="thumb" id="thumbCIEEHomepage">
          <div class="figcaption">           
            <h2 class="title">ciee homepage, <span class="date">2013</span></h2>
            <h3 class="description">creative &amp; project manager</h3>
          </div>
          <img src="images/org324x246.jpg" alt="ciee homepage"/>
        </a>     
      </figure>
      <div class="details Org">
           <div class="leftCol"> 
            <h2 class="title">ciee homepage, <span class="date">2013</span></h2>
            <h3 class="description">creative &amp; project manager</h3>
              <div class="image">
                <img id="zoomOrg" src='images/orgSnap480x360.jpg' data-zoom-image="images/orgSnapLarge1158x869.jpg" alt="ciee homepage"/>
              </div>
              <p>Showcasing some of the latest web technologies and trends, the CIEE corporate homepage features stunning images, intuitive navigation, and dynamic content transitions.</p>
              <p>As both the creative and project manager, I worked to drive design, challenged developers to engineer creative solutions, fought for approvals, and defended decisions, all while meeting every deadline. </p>
              <div class="buttons">
                <a href="http://www.ciee.org/" id="btnVisitCIEEHomepage" target="_blank" class="button visit color-bg">visit</a>
                <a class="button close">close</a>
              </div>
            </div>            
        </div><!--details-->

        <figure>
        <a class="thumb" id="thumbMCC">
          <div class="figcaption">           
            <h2 class="title">newcastle square rentals, <span class="date">2014</span></h2>
            <h3 class="description">designer, developer</h3>
          </div>
          <img src="images/mcc324x246.jpg" alt="maine coast cottages" />
        </a>     
      </figure>
      <div class="details MCC">
           <div class="leftCol"> 
            <h2 class="title">newcastle square rentals, <span class="date">2014</span></h2>
            <h3 class="description">designer, developer</h3>
              <div class="image">
                <img id="zoomMCC" src='images/mccSnap480x360.jpg' data-zoom-image="images/mccSnapLarge1158x869.jpg" alt="maine coast cottages"/>
              </div>
              <p>Slated for launch in spring 2014, this website redesign also involved a complete brand overhaul. From logo creation to color palette, I designed Newcastle’s website to be engaging, professional, and most importantly, simple.</p>
              <p>Its minimalist design gives users a simple way to access information on any device, while maintaining its aesthetic appeal.</p>
              <div class="buttons single">
                <%--<a href="#" target="_blank" id="btnVisitMCC" class="button visit color-bg">visit</a>--%>
                <a class="button close">close</a>
              </div>
            </div>            
        </div><!--details-->

        <figure>
        <a class="thumb" id="thumbHaltof">
          <div class="figcaption">           
            <h2 class="title">mark haltof, <span class="date">2011</span></h2>
            <h3 class="description">designer, developer</h3>
          </div>
          <img src="images/haltof324x246.jpg" alt="mark haltof"/>
        </a>     
      </figure>
      <div class="details Haltof">
           <div class="leftCol"> 
            <h2 class="title">mark haltof, <span class="date">2011</span></h2>
            <h3 class="description">designer, developer</h3>
              <div class="image">
                <img id="zoomHaltof" src='images/haltofSnap480x360.jpg' data-zoom-image="images/haltofSnapLarge1158x869.jpg" alt="mark haltof"/>
              </div>
              <p>Designed to replicate the experience of walking through a gallery, Mark’s interactive, online studio was truly a collaborative effort. As a freelancer, Mark and I worked to establish his goals of the redesign as well as the look and feel he wanted to achieve. The result is a unique design that showcases his collection of stunning work without distracting from it. Preloaded images and smart code give this image-heavy website a quick load time for a better user experience.</p>
              <div class="buttons">
                <a href="http://www.markhaltof.com" id="btnVisitHaltof" target="_blank" class="button visit color-bg">visit</a>
                <a class="button close">close</a>
              </div>
            </div>            
        </div><!--details-->

      <figure>
        <a class="thumb" id="thumbHometown">
          <div class="figcaption">           
            <h2 class="title">ciee hometown usa, <span class="date">2012</span></h2>
            <h3 class="description">designer, developer</h3>
          </div>
          <img src="images/hometown324x246.jpg" alt="ciee hometown usa" />
        </a>     
      </figure>
      <div class="details Hometown">
           <div class="leftCol"> 
            <h2 class="title">ciee hometown usa, <span class="date">2012</span></h2>
            <h3 class="description">designer, developer</h3>
              <div class="image">
                <img id="zoomHometown" src='images/hometownSnap480x360.jpg' data-zoom-image="images/hometownSnapLarge1158x869.jpg" alt="ciee hometown usa"/>
              </div>
              <p>My first site created using responsive web design back in 2012, this site's target audience was international students looking to improve their English language skills at a U.S.-based summer camp. Designed to have a fun, camp-like feel, I hand-created custom vector graphics, used bold slab-serif typefaces, and crafted a color palette of earth tones contrasted by bright corporate colors.</p>

              <p>The CIEE Hometown USA program was terminated in 2013, but if you'd like to take a closer look at the former site, please <a href="#contact" id="linkHometownContact" class="hover">contact me</a>.</p>
              <div class="buttons single">
                <a class="button close">close</a>
              </div>
            </div>            
        </div><!--details--> 
       
        <figure>
        <a class="thumb" id="thumbCIEETeach">
          <div class="figcaption">           
            <h2 class="title">ciee teach abroad, <span class="date">2010</span></h2>
            <h3 class="description">designer, developer</h3>
          </div>
          <img src="images/teach324x246.jpg" alt="ciee teach abroad" />
        </a>     
      </figure>
      <div class="details Teach">
           <div class="leftCol"> 
            <h2 class="title">ciee teach abroad, <span class="date">2010</span></h2>
            <h3 class="description">designer, developer</h3>
              <div class="image">
                <img id="zoomTeach" src='images/teachSnap480x360.jpg' data-zoom-image="images/teachSnapLarge1158x869.jpg" alt="ciee teach abroad"/>
              </div>
              <p>Created over three years ago, this site is “an oldie but a goody.” It showcases each CIEE Teach Abroad program location by incorporating unique country-specific design elements and content. At the center of each one is a comprehensive multimedia section that includes photos, videos, blogs, and stories from former participants.</p>
              <p>This site was recognized for excellence in web design at the <a href="http://www.brodersons.com/" class="external hover" target="_blank" id="linkTeachBrody">2011 Broderson Awards</a>.</p>
              <div class="buttons">
                <a href="http://www.ciee.org/teach/" id="btnVisitCIEETeach" target="_blank" class="button visit color-bg">visit</a>
                <a class="button close">close</a>
              </div>
            </div>            
        </div><!--details-->

     
      <figure>
        <a class="thumb" id="thumbFEL">
          <div class="figcaption">           
            <h2 class="title">freedom energy logistics, <span class="date">2012</span></h2>
            <h3 class="description">designer, developer</h3>
          </div>
          <img src="images/fel324x246.jpg" alt="freedom energy logistics" />
        </a>     
      </figure>
      <div class="details FEL">
           <div class="leftCol"> 
            <h2 class="title">freedom energy logistics, <span class="date">2012</span></h2>
            <h3 class="description">designer, developer</h3>
              <div class="image">
                <img id="zoomFEL" src='images/felSnap480x360.jpg' data-zoom-image="images/felSnapLarge1158x869.jpg" alt="freedom energy logisitics"/>
              </div>
              <p>Using the guidelines set forth by their brand charter, I designed this website with a very specific look and feel. The combination of yellows and large images mixes well with the neutral background tones and works to highlight navigation, testimonials, and positive press.</p>
              <p>Freedom Energy Logistics’ brand was well-established and the site reflects an ability to accommodate their product while bringing my own creative and technical skills to bear.</p>
              <div class="buttons">
                <a href="http://www.felpower.com/" id="btnVisitFEL" target="_blank" class="button visit color-bg">visit</a>
                <a class="button close">close</a>
              </div>
            </div>            
        </div><!--details-->


      <figure>
        <a class="thumb" id="thumbSmashedOrange">
          <div class="figcaption">           
            <h2 class="title">smashed orange, <span class="date">2014</span></h2>
            <h3 class="description">designer, developer</h3>
          </div>
          <img src="images/smashedOrange324x246.jpg" alt="smashed orange" />
        </a>     
      </figure>
      <div class="details SmashedOrange">
           <div class="leftCol"> 
            <h2 class="title">smashed orange, <span class="date">2014</span></h2>
            <h3 class="description">designer, developer</h3>
              <div class="image">
                <img id="zoomSmashedOrange" src='images/smashedOrangeSnap480x360.jpg' data-zoom-image="images/smashedOrangeSnapLarge1158x869.jpg" alt="smashed orange"/>
              </div>
              <p>Currently under development, smashed orange is a small web design company I'm currently building with a colleague. We handle everything from custom websites and back-end databases, to brand identity and strategic plans. This site is slated for launch in late spring 2014.</p>
              <p>Fun fact: Walking down the streets of Portland struggling to find a name for our business, we passed a smashed piece of fruit on the sidewalk. </p>
              <div class="buttons single">
                <a class="button close">close</a>
              </div>
            </div>            
        </div><!--details-->

      <figure>
        <a class="thumb" id="thumbLogos">
          <div class="figcaption">           
            <h2 class="title">brand identities, <span class="date">2000's</span></h2>
            <h3 class="description">designer</h3>
          </div>
          <img src="images/logos324x246.jpg" alt="logos" />
        </a>     
      </figure>
      <div class="details Logos">
           <div class="leftCol"> 
            <h2 class="title">brand identities, <span class="date">2000's</span></h2>
            <h3 class="description">designer</h3>
              <div class="image">
                <img id="zoomLogos" src='images/logosSnap480x360.jpg' data-zoom-image="images/logosSnapLarge1158x869.jpg" alt="logos"/>
              </div>
              <p>Logos are at the heart of any good brand. When I have the opportunity to create a new logo for a company or refresh an existing one, I always start with research: What does the company stand for, how are their products used, who is their audience?</p>
             <p>By asking these questions and doing this work, the creative process becomes simple and the end result is a professional, identifiable mark on which you can build a brand. </p>
              <div class="buttons single">
                <a class="button close">close</a>
              </div>
            </div>            
        </div><!--details-->

    </section><!--/work-->

<%----ABOUT--------------------------------------------------------------------------------------------------%>

    <section id="about">
      <h1 class="color">about, <span class="tagline">a little bit about what I do, and how I do it</span></h1>
      <p>I’m Patrick and I design and develop websites in Portland Maine.</p>
      <p>From building furniture to repairing old motorcycles, I've always been curious about creating new things and fixing old ones. It’s that curiosity that first drew me to web design, but since then it’s grown into something far greater. Creating websites is more than my profession, it’s something I genuinely love doing. And for the past 10 years that’s what I’ve done.</p>
      <p>Over that time I’ve had the opportunity to handle many aspects of the web design business—whether it be managing operations, invoicing, or brand audits, and while those skills are an important part of what I do, my true passion lies in the design and the code of the websites I make. </p>
      <p>Beginning with a sketch, my goal is always the same: to craft a smart, intuitive design, that’s as functional as it is attractive. Using the latest technologies and hand-written code, the result is a fast, responsive, fully optimized site that offers a matchless user experience.</p>
      <p>If you want to learn more about what I do or what we could build together, please <a href="#contact" id="linkAboutContact" class="hover">contact me</a>.</p>


      <h2>technical proficiencies,</h2>
      <div class="skillContainer">
        <div class="skill photoshop">
          <h3>photoshop</h3>
            <div class="percentBar color-bg"></div>
            <div class="percent color">0%</div>
        </div><!--/photoshop-->

        <div class="skill illustrator">
          <h3>illustrator</h3>
            <div class="percentBar color-bg"></div>
            <div class="percent color">0%</div>
        </div><!--/illustrator-->

        <div class="skill html">
          <h3>html(5)</h3>
            <div class="percentBar color-bg"></div>
            <div class="percent color">0%</div>
        </div><!--/html-->

        <div class="skill css">
          <h3>css(3)</h3>
            <div class="percentBar color-bg"></div>
            <div class="percent color">0%</div>
        </div><!--/css-->

        <div class="skill jquery">
          <h3>jquery</h3>
            <div class="percentBar color-bg"></div>
            <div class="percent color">0%</div>
        </div><!--/jquery-->


      </div><!--/skills-->

    </section><!--/about-->

<%----CONTACT-------------------------------------------------------------------------------------------------%>

    <section id="contact">
      <h1 class="color">contact, <span class="tagline">interested in working together? let's see what we can do.</span></h1>
      
      <div id="contactForm" runat="server">
              <div class="textBoxDiv"><!--First Name-->
		            <label>name, <span class="requiredField color">*</span></label>
                <asp:TextBox runat="server" CssClass="borderColor" ID="name" CausesValidation="true" MaxLength="50" />
                <asp:RequiredFieldValidator ID="rfvName" ForeColor="#d43c5a" CssClass="formError color" ErrorMessage="you forgot to enter your name" SetFocusOnError="true" ControlToValidate="name" runat="server" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="regExpName" ForeColor="#d43c5a" CssClass="formError color" SetFocusOnError="true" runat="server" ErrorMessage="sorry, unsupported characters" ControlToValidate="name" ValidationExpression="[a-zA-Z0-9\s\'\,\-]{1,50}" Display="Dynamic" />
	            </div>

              <div class="textBoxDiv"><!--Email-->
                <label>email, <span class="requiredField color">*</span></label>
                <asp:TextBox runat="server" CssClass="borderColor" ID="email_address" CausesValidation="true" MaxLength="50" />            
                <asp:RequiredFieldValidator ID="rfvEmail" ForeColor="#d43c5a" CssClass="formError color" ErrorMessage="you forgot to enter your email" SetFocusOnError="true" ControlToValidate="email_address" runat="server" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="regExpEmail" ForeColor="#d43c5a" CssClass="formError color" SetFocusOnError="true" runat="server" ErrorMessage="this isn't real...sorry" ControlToValidate="email_address" ValidationExpression="^[-+.\w]{1,64}@[-.\w]{1,64}\.[-.\w]{2,6}$" Display="Dynamic" />
              </div>
             
              <div class="textBoxDiv">
                <label>message, <span class="requiredField color">*</span></label>
                <asp:TextBox TextMode="MultiLine" CssClass="borderColor" runat="server" Rows="6" Wrap="true" ID="message" CausesValidation="true" />
                
                <asp:RequiredFieldValidator ID="rfvMessage" ForeColor="#d43c5a" CssClass="formError color" ErrorMessage="you forgot to enter your message" SetFocusOnError="true" ControlToValidate="message" runat="server" Display="Dynamic" />

                <asp:RegularExpressionValidator ID="rfvRegxMessage" ForeColor="#d43c5a" CssClass="formError color" SetFocusOnError="true" runat="server" ErrorMessage="sorry, unsupported characters" ControlToValidate="message" ValidationExpression="[a-zA-Z0-9\s\'\,\!\;\)\(\*\&\-\#\.\@\/]{1,250}" Display="Dynamic" />
              </div>
          
	            <div class="submitButtonDiv">
                <asp:Button Enabled="true" CssClass="button color-bg" runat="server" ID="btnSubmit" Text="send" OnClick="btnSubmit_Click"  />
	            </div>

      </div><!--/form-->
      
      <div class="info">
        <h2>patrick rudman</h2>
        <p><a href="mailto:patrudman@gmail.com" id="mailtoEmail" class="hover">patrudman@gmail.com</a><br />
        <%--<a href="#" class="hover">resume</a>--%></p>
        
        <p><a href="http://www.linkedin.com/in/patrickrudman" target="_blank" id="btnLinkedIn" class="icon color"><i class="icon icon-linkedin-sign"></i></a></p>
        
      </div><!--/info-->

    </section><!--/contact-->

    <footer>
      <div class="footerContainer">
        <p class="copyright">&copy;</p>
        <p>2014 - all rights reserved.</p>
        <p>site designed & built by patrick rudman.</p>
      </div>
    </footer>

    <a href="#top" id="btnTop" class="top color"><i class="icon-angle-up"></i></a>

    </form>
</body>
</html>
