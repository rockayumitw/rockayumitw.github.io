<%@ Page Title="" Language="C#" MasterPageFile="../edmMaster.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta name="og:description" content="星城Online主推機台類休閒遊戲平台，首創最多款獨家主題遊戲，擁有最細膩精緻的HD高畫質畫面，打造出獨一無二的萬人線上遊戲。" />
    <meta property="og:title" content="加入就送 限量300台幣點數" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="http://www.xin-stars.com/_event/event_Promotion/20150707_free300/adv.html" />
    <meta property="og:image" content="http://www.xin-stars.com/_img/mainBanner/banner20161223.jpg" />
    <meta property="og:site_name" content="星城Online" />
    <meta property="fb:app_id" content="1284382498254184" />
    <link href="../../bootstrap/Content/bootstrap.css" rel="stylesheet" />
    <script src="../../bootstrap/Scripts/jquery-1.10.2.min.js"></script>
    <link href="_css/main.css?r=201701160411" rel="stylesheet" />
    <script src="/_js/download.js?r=1010609"></script>
    <%--<script src="../../../_js/goPC.js"></script>--%>
    <script type="text/javascript">
        $(document).ready(function () {
            var aryPara = getPara(location.search);
            var medium = (aryPara["name"] != undefined && aryPara["name"] != "") ? aryPara["name"] : "XSfree300";
            var activity = "";
            if (medium == "vippush") {
                activity = (aryPara["activity"] != undefined && aryPara["activity"] != "") ? aryPara["activity"] : "";
            }
            if (medium != "" && medium.indexOf("free300") == -1 && activity == "") {
                medium += "free300";
            }

            $('#downloadBtn').mouseenter(function () {
                $('#DLbtn').attr('src', '_img/downloadBtn_hover.png');
            })
            $('#downloadBtn').mouseleave(function () {
                $('#DLbtn').attr('src', '_img/download_btn.png');
            });

            var uA = navigator.userAgent;
            if (uA.match(/iPod/) || uA.match(/iPad/) || uA.match(/iPhone/)) {
                $("#moLoAppDownload").attr("href", "https://itunes.apple.com/app/apple-store/id919043762");
                $("#moLoAppDownload").click(function () {
                  /*  if ($("#moLoAppDownload").attr("href").indexOf("http") == -1) {
                        var url = dlfun(medium, "", "", activity);
                        if (url) {
                            $("#moLoAppDownload").attr("href", url);
                            document.getElementById("moLoAppDownload").click();
                            $("#moLoAppDownload").attr("href", "");
                        }
                    }*/
                });
            }
          /*  if (uA.match(/iPod/) || uA.match(/iPad/) || uA.match(/iPhone/)) {
                $("#moLoAppDownload").click(function () {
                    if ($("#moLoAppDownload").attr("href").indexOf("http") == -1) {
                        var url = dlfun(medium, "", "", activity);
                        if (url) {
                            $("#moLoAppDownload").attr("href", url);
                            document.getElementById("moLoAppDownload").click();
                            $("#moLoAppDownload").attr("href", "");
                        }
                    }
                });
            }*/
            else if (uA.match(/Android/) || uA.match(/Windows Phone/)) {
                $('.teachGroup').fadeIn();
               
               /* bh.bind('scroll', function () { }, false);
                    var sh = this.scrollHeight;
                    var al = this.scrollTop + this.offsetHeight;*/
                if ($(window).scrollTop(0)) {
                    $('html').bind('click', function () {
                        $("#moLoAppDownload").attr("href", getAPK(medium, "", "", activity));
                    }); 
                  }
            }
            else {
                $("#moLoAppDownload").attr("href", getEXE(medium, activity));
            }
            $('#closeTeach').click(function () {
                $('.teachGroup').fadeOut();
            });
            $('#homeURL').attr('href', location.protocol + '//' + location.host + '/mobileHD/');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

   <div id="downloadBtn">
         <a style="height:200px" id="moLoAppDownload" href="#" title="按此下載" target="_self" onclick="ga('send','event','xinstars', 'free300', 'dlxinstar')" ></a>
    </div>
   

    <div id="teach" class="teachGroup">
        <div id="closeTeach">
            <div>x</div>
        </div>
        <img src="_img/xinStarDownload.gif?r=20170116" />
    </div>
    <div id="mask" class="teachGroup"> </div>
   
    


    <div id="topLink">
        <div class="links">
            <div id="link_home"><a id="homeURL" href="#" title="home" >
                <img src="_img/bt_btn.png?r=20170116" style="width:100%" /></a></div>
            <div id="link_fb"><a href="https://www.facebook.com/xinstars?fref=ts" title="星城粉絲團" target="_blank" >
                <img src="_img/fb_btn.png?r=20170116" style="width:100%" />
                </a>
            </div>
        </div>
    </div>

    <div id="dMainPhone">
        <div class="part1">
            <img class="img-responsive" src="_img/m_1.jpg?r=201701160358" style="width:100%"/>
 
        </div>
        <div class="part2">
             <div class="clickmeBtn"><a href="http://www.xin-stars.com/Serv_FAQ03.aspx" target="_blank"><img src="_img/btn_blank_03.png" style="width:45%" /></a></div>
             <img class="img-responsive" src="_img/m_2.jpg?r=201701160358" style="width:100%" />
             
               <!-- <img style="margin:0 auto;width:80%;" class="img-responsive" src="_img/download_btn.png?r=20161223" />-->
           <!-- <img class="img-responsive" src="_img/m_2.jpg?r=20170110" style="width:100%"/>-->
            
        </div>
        <div class="part3">
            
            <img class="img-responsive" src="_img/m_3.jpg?r=201701160358" style="width:100%" />
        </div>
        <div class="part4">
            <img class="img-responsive" src="_img/m_4.jpg?r=201701160358" style="width:100%"/>
        </div>
        <div class="part5">
            <img class="img-responsive" src="_img/m_5.jpg?r=201701160358" style="width:100%"/>
        </div>
   



    </div>
</asp:Content>

