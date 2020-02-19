$(function ($) {
    "use strict";


    $(document).ready(function () {

        $(function(){

            var url = window.location.href,
                urlRegExp = new RegExp(url.replace(/\/$/,'') + "$");
            
            // now grab every link from the navigation
            $('.core-nav-list li a').each(function(){
                // and test its normalized href against the url pathname regexp
                if(url == this.href){
                    $(this).addClass('active');
                }
            });

        });

     /*------addClass/removeClass categories-------*/
        var w = window.innerWidth;

        if(w > 991) {
     /*categories slideToggle*/
    $(".categories_title").on("mouseover", function() {
        $(this).addClass('active');
        $('.categories_menu_inner').stop().slideDown('medium');
    }); 


        /*------addClass/removeClass categories-------*/
        $(".categories_menu_inner > ul > li").on("mouseover", function() {
            $(this).find('.link-area a').toggleClass('open').parent().parent().find('.categories_mega_menu, categorie_sub').addClass('open');
            $(this).siblings().find('.categories_mega_menu, .categorie_sub').removeClass('open');
        });




  $(document).on('mouseover', function(e) 
  {
      var container = $(".categories_menu_inner, .categories_mega_menu, .categories_title");

      // if the target of the click isn't the container nor a descendant of the container
      if (!container.is(e.target) && container.has(e.target).length === 0) 
      {
        $('.categories_menu_inner').stop().slideUp('medium');
        $('.categories_mega_menu, .categorie_sub').removeClass('open');
         $(".categories_mega_menu").removeClass('open');
         $(".categories_title").removeClass('active');
      }
  });



        }




     /*------addClass/removeClass categories-------*/


        if(w <= 991)
        {
    $(".categories_title").on("click", function() {
        $(this).toggleClass('active');
        $('.categories_menu_inner').stop().slideToggle('medium');
    }); 

        /*------addClass/removeClass categories-------*/
        $(".categories_menu_inner > ul > li").on("click", function() {
            $(this).find('.link-area a').toggleClass('open').parent().parent().find('.categories_mega_menu, categorie_sub').toggleClass('open');
            $(this).siblings().find('.categories_mega_menu, .categorie_sub').removeClass('open');
        });




        }

     /*------addClass/removeClass categories-------*/




    $('nav').coreNavigation({
        menuPosition: "right",
        container: false,
        dropdownEvent: 'hover',
        onOpenDropdown: function(){
            console.log('open');
        },
        onCloseDropdown: function(){
            console.log('close');
        }
    });

    $('#example').DataTable({
        "paging":   true,
        "ordering": true,
        "info":     true
    });


    //   magnific popup activation
    $('.video-play-btn').magnificPopup({
        type: 'video'
    });





if(w <= 991 )

{

  $(document).on('mouseover', function(e) 
  {
      var container = $(".xzoom-preview");

      // if the target of the click isn't the container nor a descendant of the container
      if (!container.is(e.target) && container.has(e.target).length === 0) 
      {
        $(".xzoom-preview").css('display','none');
      }
  });

}


});





});