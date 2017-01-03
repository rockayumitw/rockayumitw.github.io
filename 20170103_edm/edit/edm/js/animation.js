$(document).ready(function (){
    /*$(window).load(function(){*/
/*$(function(){*/
    
   /* var isChrome = !!window.chrome && !!window.chrome.webstore;
    var isFirefox = typeof InstallTrigger !== 'undefined';
    var isSafari = Object.prototype.toString.call(window.HTMLElement).indexOf('Constructor') > 0;
    var isOpera = (!!window.opr && !!opr.addons) || !!window.opera || navigator.userAgent.indexOf(' OPR/') >= 0;
    var isIE = false || !!document.documentMode;*/

   

    var isIE = function(ver){
        var b = document.createElement('b')
        b.innerHTML = '<!--[if IE ' + ver + ']><i></i><![endif]-->'
        return b.getElementsByTagName('i').length === 1
        alert(isIE(ver));
    }

    if(isIE(8)||isIE(9)) {
        $('img').each(function() {
            if($(this).attr('src').indexOf('.png') != -1) {
                $(this).css({
                    'filter': 'progid:DXImageTransform.Microsoft.AlphaImageLoader(src="' +
                    $(this).attr('src') +
                    '", sizingMethod="scale");'
                });
            }
        });
    }


 if(isIE(8)){
       /* stopAnimation();*/
        ani_opacity();
        $('.part, .title-bg, .title-h1, .title-p1, .title-p2, title-h2').show();
/*setTimeout(titleA,1800); 
        setTimeout(partB,50);   */
         }



        if(isIE(9)){ 
            ani_opacity();
            setTimeout(partA,50);
            setTimeout(titleA,1800);  
        }


        
    

        /*function stopAnimation()
        {
        $('.part, .title-bg, .title-h1, .title-p1, .title-p2, title-h2').css("-webkit-animation", "none");
        $('.part, .title-bg, .title-h1, .title-p1, .title-p2, title-h2').css("-moz-animation", "none");
        $('.part, .title-bg, .title-h1, .title-p1, .title-p2, title-h2').css("-ms-animation", "none");
        $('.part, .title-bg, .title-h1, .title-p1, .title-p2, title-h2').css("animation", "none");
        }*/



        function ani_opacity(){
            $('.part, .title-bg, .title-h1, .title-p1, .title-p2, title-h2').hide();
            $('.part').css("opacity","0");
            $('.title-bg').css("opacity","0");
            $('.title-h1').css("opacity","0");
            $('.title-p1').css("opacity","0");
            $('.title-p2').css("opacity","0");
            $('.title-h2').css("opacity","0");  
        }

        function partB(){
                $('.part').css({width:'0px',height:'0px',left:'949px',top:'450px',opacity:'0',display:'block'});
                $('.part>img').css({width:'92.5%'});
                $('.part').animate({width:'994px',height:'851px',left:'749px',top:'0px',opacity:'1' ,display:'block'},2000);
        

                $('.title-bg').css({width:'0px',height:'0px',left:'794px',top:'480px',opacity:'0'});
                $('.title-bg>img').css('width','100%');
                $('.title-bg').animate({width:'994px',height:'485px',left:'292px',top:'80px',opacity:'1'},2000);


                $('.title-h1').css({width:'0px',height:'0px',left:'794px',top:'480px',opacity:'0'});
                $('.title-h1>img').css('width','100%');
                $('.title-h1').animate({width:'707px',height:'334px',left:'435px',top:'122px',opacity:'1'},2000);

                $('.title-p1').css({width:'0px',height:'0px',left:'690px',top:'450px',opacity:'0'});
                $('.title-p1>img').css('width','100%');
                $('.title-p1').animate({width:'649px',height:'158px',left:'640px',top:'402px',opacity:'1'},2000);


                $('.title-p2').css({width:'0px',height:'0px',left:'590px',top:'450px',opacity:'0'});
                $('.title-p2>img').css('width','100%');         
                $('.title-p2').animate({width:'642px',height:'150px',left:'640px',top:'576px',opacity:'1'},2000);
        }



       
          
        function partA(){            
            $('.part').animate({transform:'scale(.1)', left:'500', opacity:'0'},50);
            $('.part').animate({transform:'scale(1)', left:'749',opacity:'1'},2000);
            $(".title-bg").animate({transform:'scale(.1)', opacity:'0',top:'200', left:'292'},50);
            $(".title-bg").animate({transform:'scale(1)', opacity:'1',top:'80', left:'292'},2000);
            $('.title-h1').animate({transform:'scale(.1)', top:'270',opacity:'0', left:'435'},50);
            $('.title-h1').animate({transform:'scale(1)', top:'122',opacity:'1', left:'435'},2000);
            $('.title-p1').animate({transform:'scale(.1)', top:'380',opacity:'0', left:'400'},50);
            $('.title-p1').animate({transform:'scale(1)', top:'402',opacity:'1', left:'640'},2000);
            $('.title-p2').animate({transform:'scale(.1)', top:'380',opacity:'0', left:'300'},50);
            $('.title-p2').animate({transform:'scale(1)', top:'576',opacity:'1', left:'640'},2000);  
        }
        function titleA(){            
            $(".title-h2").animate({opacity:'0',top:'74', left:'-321'},50);
            $(".title-h2").animate({opacity:'1',top:'74', left:'336'},800);   
        }
  
});