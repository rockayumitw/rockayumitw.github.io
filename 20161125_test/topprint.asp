<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!--#include virtual="/lib/cn.asp"-->
<!--#include virtual="/lib/cn2.asp"-->
<!--#include virtual="/systemlib/decode.asp"-->
<!--#include virtual="/systemlib/head_setting.asp"-->
<!--#include virtual="systemlib/md5.asp"-->
<head>
	<%if meta_data<>"" then%>
		<meta name="keywords" content="<%=meta_data%>"  />
	<%end if%>
	<%if google_code2<>"" then%>
		<meta name="google-site-verification" content="<%=google_code2%>" > 
	<%end if%>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1">
<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
<script type="text/javascript" src="/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/bootstrap/js/bootstrap.min.js"></script>
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
<link href="/bootstrap/css/bootstrap-main.css" rel="stylesheet" media="screen">
<title><%=title%></title>

<%
	'讀取後臺首頁輪播圖
    sqlh="select * from head"
    set rsh=cn.execute(Sqlh)
    head_banner=""
    
    head_banner_img=rsh("defaultBenner1")
    head_banner_img2=rsh("defaultBenner2")
    head_banner_img3=rsh("defaultBenner3")
    head_banner_img4=rsh("defaultBenner4")
    head_banner_img5=rsh("defaultBenner5")
            
    head_banner=head_banner_img &","& head_banner_img2 & "," & head_banner_img3 & "," & head_banner_img4 & "," & head_banner_img5
    benerSet=split(head_banner,",")
    head_banner=""
    
    for i=0 to uBound(benerSet)
        if benerSet(i)<>"" then
            if head_banner="" then
                head_banner="'"&benerSet(i)&"'"
            else
                head_banner=head_banner&",'"&benerSet(i)&"'"
            end if
        end if
    next
%>
<script language="javascript">
var bannerAra=[<%=head_banner%>];
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script>

<style type="text/css">
    /* GLOBAL STYLES
    -------------------------------------------------- */
    /* Padding below the footer and lighter body text */
	html,body{
			margin:0px 0px 0px 0px;
			font-family:微軟正黑體, Arial, 新細明體, Helvetica, sans-serif;
			font-size:11pt;
			background:none;
			color:#666;
	}
	a {text-decoration:none;outline: none;color: inherit;}
	a:active {text-decoration:none;}
	a:link  {text-decoration:none;}
	a:visited {text-decoration:none;}
	a:hover {text-decoration:none; color: inherit;}
	a:focus {color:#fff;outline: 0px;}
	#menuType .row-fluid .span6{margin-left:0px;}
    #menuType .row-fluid .span6 .navbar .brand{float:none;}
	#text{margin-top:2.5%;margin-bottom:0.4%;line-height:24px;}
	#pointPicture{position:relative;margin-top:-1.3%;padding-left:48%;}	
	#pointPicture .choice{color:#4c4c4c;}	
	#foot{margin-top:35px;text-align:center; background-color:#2d2d2d; color:#939393; font-size:10pt;background-repeat:repeat-x;padding: 30px 0;}
    p{line-height:40px;font-size:20px;}
	p.p0{font-size: 30px;line-height:30px;}
	p.p00{font-size: 15px;line-height:30px;}
	p.p1{font-size: 30px;color: #d35486;line-height:30px;}
	.navbar-inner .container{padding-top:0px;}		
	.button_01{margin-bottom:0.5%;}	
	.button_01 .row-fluid  .span2{text-align:center;padding:0% 1.5%;margin:1% -21% 2% 20.5%;float:left;}
	#head {position: relative;margin:0px;}
	#runimg{text-align:center;}
	.container .brand{margin-left:0px;}
	.navbar .brand {padding:0px 0px 10px;}
	#content{background-color:#eeeeee;}
	#content .row-fluid .span6{padding : 2% 0;}
	p.p2{font-size: 20px;color: #ffffff;line-height:25px;}
	p.p3{;font-size: 15px;color: #939393;line-height:25px;}
	p.p4{font-size: 14px;}
	p.p8{font-family: "Gill Sans MT";font-size: 30px;color: #cfe059;line-height:30px;}
	p.p9{font-size: 15px;color: #82820b;line-height:30px;}
	#content .row-fluid .span1{margin-top:18%;margin-left:-2%;margin-right:3%;}
	li{display:table;margin-top:3%;font-size:large;width:100%;line-height:40px;}
	#new{width:1000px;margin:auto;background-color:#eaeaea;margin-top:3%;margin-bottom:1%;}
		#new .row-fluid .new_pic{float:left;width:16%;}
		#new .row-fluid .new_content{float:left;height:153px;width:68%;/*margin-left:-6px;*/}
		#new .row-fluid .new_link{float:left;width:16%;}		
		#new_date{color:#a0a0a0;float:left;}
		.new_con{color:#7a7a7a;/*float:left;*/}
	#foot .container .row-fluid .span6:first-child .cont{margin-top: 50px;margin-left: 15%;}	
	#foot .container .row-fluid .span6:last-child .title{color: #fff;font-size: 16pt;line-height: normal;margin-bottom: 10px;}
	#foot .container .row-fluid .span6:last-child .cont {font-size: 11pt;line-height: 18pt;margin-bottom: 30px;}
	#foot .container>.row-fluid>.span6:last-child>div:last-child{color:#6D6D6D;font-size: 15px;margin-top: 73px;}
	#foot .container .row-fluid .span6 .aboutus{margin-left:15%;font-size: 11pt;line-height: 18pt;}
	#foot .container .row-fluid .span6:last-child{padding-left:9%;}
	@media (max-width: 1200px) {
		#new{max-width: 100%;}
		#foot .container .row-fluid .span6 .aboutus{margin-left:0%;}
		/*#foot .container .row-fluid .span6 .cont{margin-top:-28%;margin-left:-11%;}*/
		#foot .container .row-fluid .span6:first-child .cont{ margin-left:0px; }
		#new  .row-fluid .new_link{float:none;width:100%;}
		li{width:100%;}
		#pointPicture{position:relative;margin-top:-1.2%;}
	}
    @media (max-width: 979px) {
		#content   .row-fluid .span1{margin-top:19%;/*margin-left:1%;margin-right:1%;*/}
		#new{margin-left:0%;max-width: 100%;}
		#new   .row-fluid .new_pic{float:none;/*margin-left:26%*/}
		#new .row-fluid .new_content{float:none;margin-left:0%;width:auto;}
		#new .row-fluid .new_link{float: right;max-width: 20%;width: auto;margin-top: -140px;}
		#new .row-fluid .new_link img{ float:none;}
		#new .row-fluid .new_content>ul {margin-left: 20px;margin-right: 110px;}
		#foot .container .row-fluid .span6 .aboutus{margin-left:0%;}
	}
    @media (max-width: 767px) {
		#foot .container .row-fluid .span6 .cont{margin-top:5%;margin-left:3%;margin-right:3%;}
		#foot .container .row-fluid .span6 .aboutus{margin-left:3%;margin-right:3%;}
		#foot .container .row-fluid .span6 .as{margin-left:3%;margin-right:3%;}
		#text{margin-top:5.5%;margin-bottom:0.4%;}
		.button_01 .row-fluid  .span2{text-align:center;padding:0% 0%;margin:0% -10% 5% 13%;width:35%}
		#content   .row-fluid .span1{margin-top:0%;margin-left:0%;margin-right:0%;}
		#new{margin-top:5%;margin-bottom:3%;max-width: 100%;/*margin:auto;*/margin-left:0%;}
	    #new .row-fluid .new_pic{float:none;width:auto;/*margin-left:16%*/}
		#new .row-fluid .new_content{float:none;width:auto; height:auto;}
		/*#new .row-fluid .new_link{float:none;width:auto;margin-left:18%;}*/
		#foot .container .row-fluid .span6:last-child{ padding:0px;}
		#foot .span6>div {margin-left: 20px !important;margin-right: 20px !important;/* margin-bottom: 30px !important; */padding: 0 !important;}
		#new .row-fluid .new_link {width: 100%;float: none;margin: 0;text-align: right;max-width: none;}
		#new .row-fluid .new_content>ul {margin: 0 20px;}
		.new_content li>a>div {float: none;width: 100%;line-height: normal;}
		.new_content li>a>div:last-child{ margin-bottom: 10px;}
		.new_content li>a>div:nth-child(2){ display:none;}
    }
</style>
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
    <script src="//cdnjs.bootcss.com/ajax/libs/html5shiv/3.6.2/html5shiv.js"></script>
<![endif]-->
</head>
<body onload="MM_preloadImages('/upload/whome/bt_hover_03.png','/upload/whome/bt_hover_06.png','/upload/whome/bt_hover_08.png','/upload/whome/bt_hover_10.png','/upload/whome/bt_hover_08.png','/upload/whome/bt_hover_08.png','/upload/whome/bt_hover_10.png','影像/new_more_03.png','影像/bt_hover_03.png')">
<!--這是判斷會員登入用的form，沒有用掉就全部拿掉吧-->
<%if session("member_login")="Y" then%>
<form name="memEdit" id="memEdit" method="post" action="<%=SSOURL%>/MemberEdit.aspx" style="display:none;">
  <input type="hidden" name="SiteID" value="<%=h_id%>" />
    <input type="hidden" name="ReturnUrl" value="http://<%=Request.ServerVariables("HTTP_HOST")%>/tw/default.asp" />
    <input type="hidden" name="language" value="zh-tw" />
    <input type="hidden" name="MemID" value="<%=session("member_id")%>" />
	<input type="hidden" name="CheckM" value="<%=MD5(h_id&session("member_id"))%>" />
</form>
<%else%>
<form name="memAdd" id="memAdd" method="post" action="<%=SSOURL%>/Login.aspx" style="display:none;">
    <input type="hidden" name="SiteID" value="<%=h_id%>">
    <input type="hidden" name="ReturnUrl" value="http://<%=Request.ServerVariables("HTTP_HOST")%>/tw/default.asp">
    <input type="hidden" name="language" value="zh-tw">
    <input type="hidden" name="Url" value="http://<%=Request.ServerVariables("HTTP_HOST")%>">
    <input type="hidden" name="CheckM" value="<%=MD5(h_id)%>" />
</form>
<%end if%>
<!--判斷會員登入用的form END-->
<div id="head" class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <div id="menuType">
                <div class="container">
                    <div class = "row-fluid">
                        <div class = "span6">
                            <a href="start(copy).asp"><img id="hd_logo" class="brand" src="/upload/whome/logo_02.png" /></a>
                        </div>
                        <div class ="span6">
                            <img src="/upload/whome/logo2_02.png" class="brand1" id="hd_logo2" align = "right" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--這是banner的範圍，有用到的話整段保留，要搭配最下面的script使用-->
        <div id="banner">
            <div id="runImg">
                <img id="bannerImg"/>
            </div>
            <div id="pointPicture" >
            </div>
        </div>
        <!--banner範圍END--> 
    </div>
    <!--TEXT-->
    <div id="text">
        <div class="row-fluid" align="center">
            <strong><p class="p1">為什麼選擇TopPrint?</p></strong>
            <p>不僅僅是銷售，我們提供的是系統性的服務</p>
        </div>
    </div>
    <!--TEXTEND-->

    <!--button-->
    <div class="button_01" >
        <div class="row-fluid" align="center">
            <div class = "span2">
                <a href="/tw/index.asp?au_id=1" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image5','','/upload/whome/bt_hover_06.png',1)"><img src="/upload/whome/bt_nohover_06.png"  id="Image5" /></a>
            </div>
            <div class = "span2">
                <a href="/tw/index.asp?au_id=15&amp;sub_id=28" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image6','','/upload/whome/bt_hover_08.png',1)"><img src="/upload/whome/bt_nohover_08.png"  id="Image6" /></a>
            </div>
            <div class = "span2">
                <a href="/tw/index.asp?au_id=7&amp;sub_id=29" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image7','','/upload/whome/bt_hover_10.png',1)"><img src="/upload/whome/bt_nohover_10.png"  id="Image7" /></a>
            </div>
            <div class = "span2">
                <a href="/tw/index.asp?au_id=18&amp;sub_id=20" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image4','','/upload/whome/bt_hover_03.png',1)"><img src="/upload/whome/bt_nohover_03.png" id="Image4" /></a>
            </div>
        </div>  
    </div>
    <!--buttonEND-->
    <!--Content-->
    <div id="content" align = "center">
        <div class="container">
            <div class = "row-fluid">
                <div class="span5">
                    <img src="/upload/whome/new_03_at_01.png"  />
                </div>
                <div class = "span1">
                    <a href="/tw/index.asp?au_id=1&amp;sub_id=1&amp;id=11"><img src="/upload/whome/new_03_at_02.png"  id="link1"  /></a>
                </div>
                <div class="span6">
                    <img src="/upload/whome/pic_03.png" />
                </div>
            </div>
        </div>
    </div>
    <!--Content END-->
    <div id="new">
        <div class="row-fluid">
            <div class="new_pic">
                <img src="/upload/whome/new1_03.png"  align="middle" />
            </div>
            <div class="new_content" >  
                <ul>
                    <li>
                    <%
                    set cmd = nothing
                    set cmd = server.createobject("Adodb.command")
                    With cmd
                        .ActiveConnection = cn
                        .CommandType=1
                        .NamedParameters = True
                        .CommandText = "select top 3 * from menu where sub_id=6 and disp_opt='Y' order by ser_no, id desc"	
                    end with	
                    set rsn=cmd.execute
                    while not rsn.eof
                    news_title=left(rsn("title"),17)
                    if len(rsn("title")) > 17 then
                       news_title=news_title&"..."
                    end if
                    %>
                        <a href="/tw/index.asp?au_id=4&sub_id=6&id=<%=rsn("id")%>" target="_self">
                            <div id="new_date"><%=rsn("note_date")%></div>
                            <div style="float:left">&nbsp;&nbsp;&nbsp;</div>
                            <div class="new_con"><%=news_title%></div>    
                        </a>
                    <%
                    rsn.movenext
                    wend
                    %>
                    </li>
                </ul>
            </div>
            <div class="new_link">
                <a href="/tw/index.asp?au_id=4&amp;sub_id=6" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image13','','/upload/whome/new_more_03.png',0)"><img src="/upload/whome/new_more_nohover_03.png" id="Image13" align="right" /></a>
            </div>
        </div>
    </div>
	<!--NEW END -->
</div>
<!--頁尾-->
<div id="foot">
	<div class = "container">
		<div class = "row-fluid">
            <div class = "span6">
                <div class = "aboutus">
                    <div align="left">
                        <p>
                            <strong style="font-size: 23pt;color: #fff;">關於我們</strong><br />
                        </p>
                    </div>
                    <div align="left">
                        頂尖國際噴印有限公司成立於台灣台北市，我們全力投入紡織數位噴墨技術應用咨詢，技術服務以及整合方案,滿足不同應用市場需求,可以與客戶共同創造潛在的價值和開發預期的機會，確保客戶順利生產穩定優質的產品....
                        <a href="/tw/index.asp?au_id=1">More</a>
                    </div>
                </div>
            	<div class = "cont" align="left">
                    <p class="p8">
                        CONTACT INFO
                    </p>
                    <br />
                    <p class="p9">
                        <img src="/upload/whome/cont_03.png" width="26" height="24" />Tel  : +886 2 2698-2300 / +886 2 2698-2301 <br />
                        <img src="/upload/whome/cont_06.png" width="26" height="23" />Fex : +886 2 2698-2302 <br />
                        <img src="/upload/whome/cont_08.png" width="26" height="24" />Add : 新北市汐止區新台五路一段77號5樓之7B (B棟)
                    </p>
                </div>
            </div>
            <div class = "span6">
                <div align="left" class="title">
                    ‧應用開發
                </div>
                <div align="left" class="cont">
                    ．紡織數位噴印的應用與開發<br />
                    ．噴墨技術與應用<br />
                    ．噴印系統應用對照
                </div>
                <div align="left" class="title">
                    ‧服務項目
                </div>
                <div align="left" class="cont">
                    ．為什麼選擇TopPrint<br />
                    ．TopPrint全製程建構技術<br />
                    ．紡織數位整合技術服務
                </div>
                <div align="left">
                    頂尖國際噴印公司版權所有 Copyright@2015 All Rights Reserved.
                </div>
			</div>
		</div>
	</div>
</div>
<!--頁尾END-->
        
        
</body>
<!--以下script不可以拿掉-->
<%if google_code1<>"" then%>
<script type="text/javascript">
	var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
	document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
	try{
	var pageTracker = _gat._getTracker("UA-<%=google_code1%>");
	pageTracker._trackPageview();
	} catch(err) {}
</script>
<%end if%>
<!--不可以拿掉END-->
<!--自動輪播和判斷會員登入狀態-->
<script>
	//自動輪播
	var repeat=null;
	var sta=true;
	loadAdImg();
	$(window).resize(function() {
		loadAdImg();
	});
	function loadAdImg(){
	}
	if( bannerAra.length>1 ){
		var pointPicture="";
		var play = 1;
		var playTime = 7 * 1000;
		for(i=0;i<bannerAra.length;i++){
			pointPicture+="<a href='javascript:changeImg("+(i+1)+")' onmouseover='selectImg("+(i+1)+")' onmouseout='nonSelectImg("+(i+1)+")' id='num"+(i+1)+"' class='";
			if((i+1)==1){
				pointPicture+="choice'>  ●  </a>";
			}else{
				pointPicture+="nonChoice'>  ●  </a>";
			}
			
			/*if((i+1)==1){
				pointPicture+="choice'><img src='"+bannerAra[i]+"' /></a>";
			}else{
				pointPicture+="nonChoice'><img src='"+bannerAra[i]+"' /></a>";
			}*/
			
		}
		document.getElementById("pointPicture").innerHTML=pointPicture;
		repeat = setInterval("changeImg(play)", 0);
	}
	if( bannerAra.length<2 ){
		$("#bannerImg").attr("src",bannerAra);
	}
	function selectImg(no){
		document.getElementById("num" + no).className = 'choice';
	}
	function nonSelectImg(no){
		if(no!=play){
			document.getElementById("num" + no).className = 'nonChoice';
		}
	}
	function changeImg(no) {
		var str = ""
		clearInterval(repeat);
		play = no;
		if (play > bannerAra.length) {
			play = 1;
		}
		for (var i = 0; i < bannerAra.length; i++) {
			document.getElementById("num" + (i+1)).className = 'nonChoice';
		}
		document.getElementById("num" + play).className = 'choice';
		$("#bannerImg").attr("src",bannerAra[play - 1]);
		
		repeat = setInterval("changeImg(play+1)", playTime);
	}
	//判斷會員登入狀態，把設為memberLogin的連結改變成連往對應會員頁面
	$(document).ready(function(){
		<%if session("member_login")="Y" then%>
		memLogin=1
		<%else%>
		memLogin=0
		<%end if%>
		$("a[href=memberLogin]").each(function(){
			if(memLogin!=1)
				$(this).attr("href","javascript:document.memAdd.submit();");
			else
				$(this).attr("href","javascript:document.memEdit.submit();");
		});
	});
</script>
</html>
