<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="../js-libs/jquery.elevateZoom-3.0.8.min.js"></script>
<script src="../js-libs/eventTracking.js"></script>

<script type="text/javascript">

  //---------------------------------------------------------------------------------------\\

  // thanks for checking out my code, what do you think? let me know @ patrudman@gmail.com

  //----------------------------------------------------------------------------------------\\
  
  if (typeof jQuery == 'undefined') {
    document.write(unescape("%3Cscript src='http://www.patrickrudman/js-libs/jquery1.9.0.min.js' type='text/javascript'%3E%3C/script%3E"));
  }
</script>

<script type="text/javascript">
  $(document).ready(function () {
    // Fixes the iphone/ipad bug for resize on horizontal switch
    // http://www.blog.highub.com/mobile-2/a-fix-for-iphone-viewport-scale-bug/
    // http://adactio.com/journal/4470/ 
    if (navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i)) {
      var viewportmeta = document.querySelector('meta[name="viewport"]');

      if (viewportmeta) {
        viewportmeta.content = 'width=device-width, minimum-scale=1.0, maximum-scale=1.0';
        document.body.addEventListener('gesturestart', function () {
          viewportmeta.content = 'width=device-width, minimum-scale=0.25, maximum-scale=1.6';
        }, false);
      }
    }
  });
</script>

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-29535932-2']);
  _gaq.push(['_trackPageview']);

  (function () {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

    <script type="text/javascript">

      x = ''; // postback variable

      function postback() { //updates a variable to check for postback
        x = 1;
        $(".loading").hide(); // hides preload on before it has a chance
      }

      $(document).ready(function () {

        //-------------------------------load/misc----------------------------------

        $(window).load(function () { //check it see when entire site is loaded

          if (x == 1) { // check postback variable
            skills(); // animates skills
            $('body').css('margin-top', '0');
            $("#preloader").hide(); //hides preloader
            $('html,body').scrollTop($('#contactForm').position().top - 130); // jumps to position
          }

          readCookie('userColor');  //calls color cookie on load

          //loader

          $(".loading").delay(500).fadeOut(); // once loaded, fades out spinner
          $("#preloader").delay(800).fadeOut("slow"); //fades out covering div
          $('body').delay(400).animate({ 'margin-top': '0' }).show();
        });

        winScrollTop = $(window).scrollTop();
        winWidth = $(window).width(); //Checks width on load - Initalily I use this for the changecolor function, now I test for a css media query change.  Check at end to see if this call is still nescessary

        whereAmI(); // sets nav current

        //gets window scroll on scroll
        $(window).scroll(function () {
          winScrollTop = $(window).scrollTop();
          backToTop(); //shows/hides back to top

          if ($('.skillContainer').css('opacity') === '0') { //check to make sure animates hasn't already ran
            skillsScroll(); //run skills function when '.skillContainer' is visible in viewport
          }

          if (winWidth > 768) { //checks to make sure we arent mobile 
            stickyNav();
            whereAmI();
          }
          else {
            $('.sticky').remove(); //make sure there is no sticky nav on mobile
          }
        });

        // gets window size on resize
        $(window).resize(function () {
          winWidth = $(window).width();
          changeColor(); //makes sure the right colors are selected
        });

        //-----------------------section scrolling -----------------------------------

        $('a[href*=#]:not([href=#])').on('click', function () {
          if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '')
              || location.hostname == this.hostname) {
            var target = $(this.hash);
            var section = $(this).attr('href');
            target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');

            if ((section == '#top') && (winScrollTop == 0)) { //if already at top do nothing
              return false;
            }

            if (target.length) {
              if (section == '#work' || winWidth <= 768) {  // if work or mobile dont offset as more to compensate for header
                $('html,body').animate({
                  scrollTop: target.offset().top
                }, 800);
                return false;
              }
              else {
                $('html,body').animate({
                  scrollTop: target.offset().top - 80
                }, 800);
                return false;
              }
            }
          }

        });


        //-------------------------------clone sticky nav------------------------------------
        function stickyNav() {
          if (winScrollTop > 150) {
            if ($('.sticky').get(0)) { //sticky exists
              return false;
            }
            else { //sticky does not exist
              $('header').clone(true).addClass('sticky color-bg').insertAfter('header'); //duplicates header and events and appends
              $('.sticky').animate({ top: '0' }); //header is off canvas in CSS
              $('.sticky').css('background-color', currentColor);
            }
          }
          else { //below 175
            if ($('.sticky').get(0)) { //sticky exists
              $('.sticky').animate({ top: '-4em' }, 300, 'linear',
                function () {
                  $('.sticky').remove();
                }); //removes sticky header after animation
            }
          }
        }

        //-----------------auto switches nav current---------------------
        function whereAmI() {
          workDistance = $('#work').offset().top - 80; //gets distance from top
          aboutDistance = $('#about').offset().top - 90;
          contactDistance = $('#contact').offset().top - 90;

          $('.current').removeClass('current'); //kills currents before adding them
          if (winScrollTop < aboutDistance) {  //checks if the window is scroll between these distances
            $('.work').addClass('current');
          }
          else if (winScrollTop >= aboutDistance && winScrollTop < contactDistance) {
            $('.about').addClass('current');
          }
          else if (winScrollTop >= contactDistance) {
            $('.contact').addClass('current');
          }
        }

        //---------------------------back to top-------------------------------
        function backToTop() {
          if (winScrollTop > 150) {
            $('.top').fadeIn();
          }
          else {
            $('.top').fadeOut();
          }
        }

        //-------------------------------color changer------------------------------------
        var colors = [
             '#d43c5a', //red
             '#d46a3c', // orange
             '#d4ab3c', // yellow
             '#3cd48e', // green
             '#3c87d4', // blue
             '#d43ca4', // purple
        ];

        counter = 0; // runs through the array
        currentColor = '';

        function colorCounter() { //increments counter to run through array
          counter = (counter + 1) % colors.length; // the % resets the counter to 0 when it reaches the end of the array
          currentColor = colors[counter]; //sets current color
          createCookie('userColor', currentColor, 2); //create cookie to save user color
        }

        function changeColor() {
          if ($(window).width() < 752) { //768 - 15(average scrollbar)
            $('.color').css('color', currentColor); //all
            $('nav .color, .color a').css('color', '#FFFFFF'); //nav only
            $('.color-bg').css('background-color', currentColor);
            $('.sticky').remove(); //Removes sticky nav if user resizes to < 768
          }
          else {
            $('.color, .color a').css('color', currentColor); //all
            $('.color-bg').css('background-color', currentColor); //sets all color-bgs
            $('nav.color-bg').css('background-color', 'transparent');
          }
          //all   
          $('.borderColor').css('border-color', currentColor);


          $('.hover')
          .on('mouseenter', function () {
            $(this).css({ 'color': currentColor, 'border-color': currentColor });
          })
          .on('mouseleave', function () {
            $(this).css({ 'color': '#959595', 'border-color': '#959595' });
          })

        }


         $('a#logo') //logo hover and click
           .on('mouseenter', function () {
             $('.newColorIcon').stop(true, true).fadeIn('fast'); //stops animation on opposite
             //$('.newColor').animate({ 'visibility': 'visible' }, 500);//stops animation on opposite
             //$('.newColor').css('visibility', 'visible');
           })
           .on('mouseleave', function () {
             $('.newColorIcon').stop(true, true).fadeOut('fast');
           })
           .on('click', function () {
             colorCounter();
             changeColor();
             if ($('.sticky').get(0)) { //if sticky nav exists
               $('.sticky').css('background-color', currentColor);
             }
           });


        //---Sets Cookie---------------

        // www.quirksmode.org/js/cookies.html

        function createCookie(name, value, days) {
          if (days) { //checks for days
            var date = new Date();
            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
            var expires = "; expires=" + date.toGMTString(); //sets expires to days
          }
          else var expires = ""; // if no days is set, it never expires
          document.cookie = name + "=" + value + expires + "; path=/"; //name, value, expires, / = patrickrudman.com
        }

        c = ''; //cookie value
        
        function readCookie(name) {
          var nameEQ = name + "="; //Name EQuals
          var ca = document.cookie.split(';'); // ca = array containing all cookies slip by ;
          for (var i = 0; i < ca.length; i++) { //runs through cookies/array
            var c = ca[i]; //sets c to cookie to be checked
            while (c.charAt(0) == ' ') c = c.substring(1, c.length); //if first character is a space, remove it until you find one that isnt.
            if (c.indexOf(nameEQ) == 0) { //check it see if we found the cookie
              c = c.substring(nameEQ.length, c.length); //we did - set the variable
            };

            //if (c == '')  { //if no cookie exists or doesnt start with #, get first color in array
            if (c.substring(0, 1) != "#") {  //if no cookie exists or doesnt start with #, get first color in array.  Doesnt start with is catch all.
              currentColor = colors[0];
              changeColor(); //set color
            }
            else {
              currentColor = c; // sets color from cookie
              changeColor();
              return false; //Stops cookie loop on server
            }
          }
          return null;
        }

        //-------------------------------work section------------------------------------

        scrollBarLocation = ''; // opposite of scrollbar when figure is clicked
        workHeight = ''; //where the position scrollbar when details show
        activeImage = '';  //active variable for zoom plugin

        $('figure')
          .on('mouseenter', function () {
            $('.figcaption', this).slideDown();
          })
          .on('mouseleave', function () {
            $('.figcaption', this).stop().slideUp(); //stops multiple mouseovers
          })
          .on('click', function () {
            scrollBarLocation = winScrollTop; //Gets Distance from top for body position fixed
            $(this).addClass('focus');  //adds class to figure
            activeImage = $('.focus').next().attr('class'); // Gets .details class for zoom
            activeImage = activeImage ? activeImage.split(' ').slice(-1)[0] : ''; // splits class to get last class if not undefined

            if ($('#work').css('position') === 'relative') {  //Checks for 768 media query - Tablet +
              workHeight = $('#work').offset().top
              //$('#work').css('min-height', ($('#work').height())); //gets/sets height of work div
            }
            else { //mobile
              workHeight = $('#work').offset().top + 200
              //$('#work').css('min-height', ($(this).height())); //gets/sets height of details div
            }

            $('html,body').animate({ //animates to top of details
              scrollTop: workHeight
            }, 500, function () {
              $('figure').fadeOut(function () {  //fades out
                $('.focus').next().fadeIn('800', function () { //waits for animation to be done
                  $('figure').removeClass('focus'); //removes class
                  imageZoom(activeImage); //calls Zoom Plugin :(
                }); //fadeIn
              }); // fadeOut
            }); //animate   
          }) //figure on.click

        // gets window size on resize
        $(window).resize(function () {
          if ($('.zoomWindowContainer').length) //if zoom container exists
          {
            imageZoom(activeImage); //re runs zoom plugin on resize
          }
        });


        // Zoom Plugin :(
        function imageZoom(active) { //passes in class
          $('#zoom' + active).elevateZoom({
            zoomType: "inner",
            cursor: "url(../images/cursor40x40.png), auto",
            zoomWindowFadeIn: 750,
            zoomWindowFadeOut: 700
          });
        }


        $('.close').on('click', function () {
          $('.details').hide();
          $('.zoomContainer').remove();  //Removes Zoom Divs created by plugin 
          $('figure').fadeIn(function () {

            if ($('#work').css('position') !== 'relative') {  //Checks for 768 media query - Tablet +
              if (scrollBarLocation < workHeight) { //this is silly, makes sure the scroll bar doesnt go above details
                return false;
              }
              else {
                $('html,body').stop().animate({ scrollTop: scrollBarLocation }, 500); //returns scroll bar to original location
                return false;
              }
            }
          }); //fadeIn
        }) //close


        //-------------------------------about section------------------------------------

        //skills animation

        //percentages
        photoshop = '85';
        illustrator = '75';
        html = '90';
        css = '90';
        jquery = '75';

        function skills() {
          $('.skillContainer').animate({ 'opacity': '1' }, 500, function () { //fades skills in
            $('.percentBar').animate({ 'margin-left': '0' }, 1100); //slides bars in from left
            percent(html, '.html .percent'); //runs functions with parameters
            percent(css, '.css .percent');
            percent(photoshop, '.photoshop .percent');
            percent(illustrator, '.illustrator .percent');
            percent(jquery, '.jquery .percent');
          });

        } //skills

        function percent(percentage, div) {
          $({ countNum: $(div).text() }).animate({ countNum: percentage }, { //gets div text (0) and sets it to percentage
            duration: 1000,
            easing: 'linear',
            step: function () {
              $(div).text(Math.floor(this.countNum) + '%');  //counts up by 1s
            },
            complete: function () {
              $(div).text(this.countNum + '%'); //makes sure the final number is percentage
            }
          });
        }

        function skillsScroll() { //basically does some math to see if skillContainer is visible on page and in viewport
          viewportWidth = $(window).width(),
          viewportHeight = $(window).height(),
          documentScrollTop = $(document).scrollTop(),

          elementOffset = $('.skillContainer').offset(),
          elementHeight = $('.skillContainer').height(),
          elementWidth = $('.skillContainer').width(),

          minTop = documentScrollTop,
          maxTop = documentScrollTop + viewportHeight + 100; //offsets by 100 to say element is half visible

          if ((elementOffset.top > minTop && elementOffset.top + elementHeight < maxTop)) {
            skills(); //calls skills function
          }
        }

      }); //end of doc ready
    </script>


