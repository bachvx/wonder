$(document).ready(function(){     


    $('#slideBanner').owlCarousel({ 
        items: 1,
        loop:true,  
        nav: false,
        dots: true,
        autoplay: true,  
    }); 
    $('#slideBannerMobile').owlCarousel({ 
        items: 1,
        loop:true,  
        nav: false,
        dots: true,
        autoplay: true,  
    }); 
    $('#bannerGallery').owlCarousel({ 
        items: 1,
        loop:true,  
        nav: false,
        dots: true,
        autoplay: true,  
    }); 
    $('#videoSlide').owlCarousel({  
        loop:true,  
        margin: 30,  
        autoplay: true,
        responsiveClass:true,
        navText:[
        '<i class="fas fa-chevron-left"></i>',
        '<i class="fas fa-chevron-right"></i>'
        ],
        responsive:{
            0:{
                items:1,  
                nav: false,
                dots: true
            },
            600:{
                items:2,  
                nav: false,
                dots: false
            },
            1000:{
                items:3,  
                nav: true,
                dots: false
            }
        }   
    });  
    $('#logoFooter').owlCarousel({  
        loop:true,   
        nav: true,
        dots: false,
        autoplay: true,
        margin: 0,
        responsiveClass:true,
        navText:[
        '<i class="fas fa-chevron-left"></i>',
        '<i class="fas fa-chevron-right"></i>'
        ],
        responsive:{
            0:{
                items:3,  
                nav: true,
                dots: false
            },
            768:{
                items:3,  
                nav: true,
                dots: false
            },
            1000:{
                items:3,  
                nav: true,
                dots: false
            }
        }   
    });  

    $('#resortSlider').owlCarousel({  
        loop:true,  
        margin: 30,  
        autoplay: true,
        responsiveClass:true,
        navText:[
        '<i class="fas fa-chevron-left"></i>',
        '<i class="fas fa-chevron-right"></i>'
        ],
        responsive:{
            0:{
                items:1,  
                nav: false,
                dots: true
            },
            600:{
                items:1,  
                nav: false,
                dots: false
            },
            1000:{
                items:2,  
                nav: true,
                dots: false
            }
        }   
    });  

    $('#slideSukien').owlCarousel({ 
        items: 2,
        margin: 14,
        loop:true,  
        nav: false,
        dots: true,
        autoplay: true,  
    }); 

    $('#phankhuSlide').owlCarousel({  
        loop:true,   
        dots: false,
        nav: true,
        margin:0,
        autoplay: true, 
        responsiveClass:true,
        navText:[
        '<i class="fas fa-long-arrow-alt-left"></i>',
        '<i class="fas fa-long-arrow-alt-right"></i>'
        ],
        responsive:{
            0:{
                items:1,  
                nav: false
            },
            768:{
                items:3, 
                nav: false
            },
            1000:{
                items:4,  
                nav: true 
            }
        } 
    });

    $('#slideRelax').owlCarousel({  
        loop:true,   
        dots: false,
        nav: true,
        margin:10,
        autoplay: true, 
        responsiveClass:true,
        navText:[
        '<i class="fas fa-long-arrow-alt-left"></i>',
        '<i class="fas fa-long-arrow-alt-right"></i>'
        ],
        responsive:{
            0:{
                items:1,  
                nav: false
            },
            600:{
                items:1,  
                nav: false
            },
            1000:{
                items:2,  
                nav: true

            }
        } 
    });

    $('#productSlide').owlCarousel({  
        loop:true,   
        dots: false,
        nav: true,
        margin:20,
        autoplay: true, 
        responsiveClass:true,
        navText:[
        '<i class="fas fa-chevron-left"></i>',
        '<i class="fas fa-chevron-right"></i>'
        ],
        responsive:{
            0:{
                items:1,  
                nav: true
            },
            600:{
                items:2,  
                nav: true
            },
            1000:{
                items:3,  
                nav: true

            }
        } 
    });
    $('#productSlide_second').owlCarousel({  
        loop:true,   
        dots: false,
        nav: true,
        margin:20,
        autoplay: true, 
        responsiveClass:true,
        navText:[
        '<i class="fas fa-chevron-left"></i>',
        '<i class="fas fa-chevron-right"></i>'
        ],
        responsive:{
            0:{
                items:1,  
                nav: false
            },
            600:{
                items:2,  
                nav: false
            },
            1000:{
                items:3,  
                nav: true

            }
        } 
    });

    $('#dulichSlide').owlCarousel({  
        loop:true,   
        dots: false,
        nav: true,
        margin:0,
        autoplay: true, 
        responsiveClass:true,
        navText:[
        '<i class="fas fa-long-arrow-alt-left"></i>',
        '<i class="fas fa-long-arrow-alt-right"></i>'
        ],
        responsive:{
            0:{
                items:1,    
                nav: false,
                stagePadding: 20,
                loop:true,
                margin:10
            },
            768:{
                items:3,    
                nav: false
            },
            1000:{
                items:4,  
                nav: true

            }
        } 
    });
     

    $('#hottrendSlide').owlCarousel({  
        loop:true,   
        dots: false,
        autoplay: true, 
        responsiveClass:true,
        navText:[
        // '<i class="fas fa-long-arrow-alt-left"></i>',
        // '<i class="fas fa-long-arrow-alt-right"></i>'
        '<i class="fas fa-chevron-left"></i>',
        '<i class="fas fa-chevron-right"></i>'
        ],
        responsive:{
            0:{
                items:1,   
                nav: false,
                stagePadding: 20,
                loop:true,
                margin:10
            },
            768:{
                items:1, 
                margin:20,
                nav: false
            },
            1000:{
                items:3, 
                margin:30,
                nav: true

            }
        } 
    });

    $('a', $('.b-header .b-header__menu .b-header__menu-navbar ul li')).click(function () {
      var id = $(this).attr('href');
      $('html, body').animate({scrollTop: $(id).offset().top - 0}, 700);  
      return false;
    }); 


    $(".b-header .b-header__menu .navbar .navbar-toggler").click(function () {
        var parent = $(this).parent().parent().parent().parent();
        if ($(parent).hasClass("active")) {
            $(parent).removeClass("active");
            $('.collapse' ).addClass('show');
            $('.b-header').css("background" , "#007580"); 
            $('.b-header .navbar').css('justify-content' , 'space-between');
            $('.b-header .navbar .navbar-toggler').css({"right":"0", "left":"auto"}); 
        } else { 
            $('.b-header.active').removeClass('active');
            $(parent).addClass("active"); 
            $('.collapse' ).removeClass('show');
            $('.b-header').css("background" , "transparent"); 
            $('.b-header .navbar').css('justify-content' , 'center');
            $('.b-header .navbar .navbar-toggler').css({"left":"15px", "right":"auto"}); 
        }
        return false;
    }); 


    
}); 


 