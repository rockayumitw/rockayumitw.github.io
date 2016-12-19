$(document).ready(function (){
    var isIE = function(ver){
        var b = document.createElement('b')
        b.innerHTML = '<!--[if IE ' + ver + ']><i></i><![endif]-->'
        return b.getElementsByTagName('i').length === 1
    }


    //輪播用的
    $('#top_banner').slides({
        preload: true,
        preloadImage: 'images/loadingAnimation.gif',
        effect: 'slide',
        crossfade: true,
        slideSpeed: 350,
        generateNextPrev:false,
        play:4000,
        generatePagination: false
    });
    $(".banner_pic_b img").on("click",function (){
        return false;
    });
    //取消輪撥大圖的連結


    //影片  
    $(".mov_a").click(function(){
        $("#movie").show();
        $("#movie iframe").attr("src","https://www.youtube.com/embed/OOvqbe5-GgI?autoplay=1");
        $("#mask").show();
    });
    $(".mov_b").click(function(){
        $("#movie").show();
        $("#movie iframe").attr("src","https://www.youtube.com/embed/8i1F2R_tg6A?autoplay=1");
        $("#mask").show();
    });
    $(".CloseBtn").click(function(){
        $("#movie").hide();
        $("#movie iframe").attr("src", "");
        $("#mask").hide();
    });
    $("#mask").click(function(){
        $("#movie").hide();
        $("#movie iframe").attr("src", "");
        $("#mask").hide();
    });


    //白髮
    $(".white_s1").mouseenter(function(){
        $(".whitebig img").hide();
        $(".white_b1").show();
    });
    $(".white_s2").mouseenter(function(){
        $(".whitebig img").hide();
        $(".white_b2").show();
    });
    $(".white_s3").mouseenter(function(){
        $(".whitebig img").hide();
        $(".white_b3").show();
    });
    $(".white_s4").mouseenter(function(){
        $(".whitebig img").hide();
        $(".white_b4").show();
    });
    $(".white_s5").mouseenter(function(){
        $(".whitebig img").hide();
        $(".white_b5").show();
    });
    $(".white_s6").mouseenter(function(){
        $(".whitebig img").hide();
        $(".white_b6").show();
    });
    $(".white_s7").mouseenter(function(){
        $(".whitebig img").hide();
        $(".white_b7").show();
    });
    $(".white_s8").mouseenter(function(){
        $(".whitebig img").hide();
        $(".white_b8").show();
    });
    $(".horse_s1").mouseenter(function(){
        $(".horsebig img").hide();
        $(".horse_b1").show();
    });
    $(".horse_s2").mouseenter(function(){
        $(".horsebig img").hide();
        $(".horse_b2").show();
    });
    $(".horse_s3").mouseenter(function(){
        $(".horsebig img").hide();
        $(".horse_b3").show();
    });
    



});
















































