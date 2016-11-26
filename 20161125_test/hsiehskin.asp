<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!--#include virtual="/lib/cn.asp"-->
<!--#include virtual="/lib/cn2.asp"-->
<!--#include virtual="/systemlib/decode.asp"-->
<!--#include virtual="/systemlib/head_setting.asp"-->
<!--#include virtual="systemlib/md5.asp"-->
<head>
<link rel="shortcut icon" href="/upload/whome/20151001100026.ico">  
	<%if meta_data<>"" then%>
		<meta name="keywords" content="<%=meta_data%>"  />
	<%end if%>
	<%if google_code2<>"" then%>
		<meta name="google-site-verification" content="<%=google_code2%>" > 
	<%end if%>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1">
<meta name="format-detection" content="telephone=no">
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
			background:url(/upload/20151104102023.jpg) ;
			/*background-attachment: fixed;*/
			background-repeat:no-repeat;
			background-position:top;
			line-height:12pt;
			background-position-y:-59px;
			background-color:#FB89AA;
			
	}
	a {text-decoration:none;outline: none;color:#fff;}
	a:active {text-decoration:none;}
	a:link  {text-decoration:none;}
	a:visited {text-decoration:none;}
	a:hover {text-decoration:none; color:#fff;}
	a:focus {color:#fff;outline: 0px;}
	ul, ol{list-style:none;margin:0 0 10px 0px;}

	
/*******/
.navbar-wrapper{ overflow:auto; overflow-x:hidden;margin-bottom:0;}
.conct .container .row-fluid .span3{width:23.5%;margin-left:8px;margin-right:8px;}
.navbar-inverse .btn-navbar, .navbar-inverse .btn-navbar:hover, .navbar-inverse .btn-navbar:focus{background-color:#c92964;}
.navbar-inverse .navbar-inner{border-bottom-style:solid;border-color:#D52266;border-width:1px;}
	.navbar-inner .container{padding-top:0px;}
	.navbar-fixed-top, .navbar-fixed-bottom{position:static;}
	.navbar-wrapper{margin-top:0px;}
	.navbar-fixed-top{position:relative;}
	.navbar .brand{ background-color:inherit;background:none;}	
	.container .brand{margin-left:-50px;}
	/*#tel_img{margin-right:-9%;}*/
	#head{height:auto;background:url(/upload/20151031113750.png) no-repeat;background-position:top;}
		#pointPicture{
		position:relative;
		margin-top:-3%;
		padding-left:48%;
		}
	#head .container{max-width:1170px;}
/*	#pointPicture .nonChoice{
		color:#FFE1C0;
	}*/
	#pointPicture .choice{
		color:#F08300;
		}
	.navbar .nav{float:none;margin:0 45px 0 0;}
	#languageBar{margin-top:-36px;float:right;margin-right:0px;}
	/*#languageBar>ul{ margin:0px;}*/
	#languageBar>ul>li>a{ padding:0px;}
	#languageBar>ul>li{padding:5px 0px; padding-right:5px;}
	#languageBar>ul>li:last-child{ padding-right:0px;}
	#languageBar>ul>li#lan_search_li{ padding-top:0px; padding-bottom:0px;}
	#languageBar a,#languageBar a:hover,#languageBar a:active{ color:#003366; font-size:9pt; text-align:center;}
	#aumenu{margin-top:6px;font-size:11pt;color:#003366;display:block;text-align:left;}
	#aumenu>ul{background-image:url(); max-width:100%;margin-left:28%;}
	#aumenu a{color:#D52266; font-size:11pt; padding:0px 5px;}
	#aumenu ul li>a:focus {background: transparent;outline : 0;}
	#aumenu>ul>li:hover>ul{ display:block;}
	#aumenu>ul>li>ul{margin-top: 0;}
	#aumenu>ul>li>ul>li {padding: 2px 0;}
	.navbar-inner .container{padding-top:0px;}
	.navbar-inverse .nav li.dropdown.open>.dropdown-toggle{background-color:inherit;}
	#aumenu .dropdown-menu>li>a{padding:0px 25px;}
	.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus, .dropdown-submenu:hover>a, .dropdown-submenu:focus>a {
					background-color:inherit; 
					background-image:url(); 
					background-repeat:no-repeat;
					background-position:left;
					filter:none;
				}
	.dropdown-submenu:focus>a {
					background-color:inherit; 
					background-image:url(); 
					background-repeat:no-repeat;
					background-position:left;
					filter:none;
				}
				#aumenu a:hover{}
	.banner{
				margin:0;
				padding:0;
				background-image:url();
				background-repeat:no-repeat;
				background-position:top;
				text-align:center;
				padding-bottom:15px;
			}
	#bannerImg{
					margin-top:0px;
					margin-left:0px;
				}
	#hd_logo{
					margin-top:-50px;
					margin-left:0px;
					display:block;
					padding:14px 0px 0px;
					/*left*/
				}
	.nav>li>a:hover, .nav>li>a:focus{background-color: transparent;}
	.dropdown-submenu:hover>.dropdown-menu {
					display:inherit;
				}
	.row{margin-left:0;}
	.navbar-inverse .btn-navbar,.navbar-inverse .btn-navbar:hover,.navbar-inverse .btn-navbar:focus {
	background-image: none;
	background-color: #c92964;
			}
			
			#pointPicture{font-size:11pt;  font-weight:bold; height:21px; line-height:14pt; overflow:hidden;}
					.nonChoice{width:15px; height:15px; cursor:pointer; float:left; text-align:center; margin-left:3px;}
				#pointPicture .nonChoice{color:#555555;}
				.choice{width:15px; height:15px; cursor:pointer; float:left; text-align:center; margin-left:3px;}
				#pointPicture .choice{color:#ffffff;}
			
			
	#foot{
				font-size:10pt;
				color:#bbbbbb;
				background:url(/upload/20151031015006.png) center top;
				background-repeat:no-repeat;
				min-height:69px;
				overflow:hidden;
				text-align: left;
				line-height: normal;
				width:100%;
			}
	#iframe {height:205px ;}
	#bannerImg{box-shadow:2px 16px 11px -10px rgba(183,23,70,0.5)}
	#new_date{background-image:url(/upload/whome/date_bg_03.png);color:#B7084F;line-height:30px;background-repeat:no-repeat;font-size:12px;margin-left:10px}
	#new_date,#scanQr{ color:#f13b92; text-shadow:1px 1px 0px #fff,1px -1px 0px #fff,-1px 1px 0px #fff,-1px -1px 0px #fff;}
    @media (max-width: 1200px) {
		.conct .container .row-fluid .span3{width:23%;margin-left:8px;margin-right:8px;}
		#iframe {height:160px ;}
	#aumenu>ul{margin-left:0%;}
	#head div div div div{margin-left:-60px !important;}
.navbar .nav>li{margin-left:-10px;}
#main>.row-fluid{width:inherit;}
#hd_logo{margin-left:0px;}
	#tel_img{margin-right:-2%;}
	}
	@media (max-width: 1200px) and (min-width: 980px) {
				#aumenu a{padding:0px 2.5px;}
				.navbar-fixed-top .container{ width:940px;}
				.serchBox>form>input[name=text]{width:50%;}
			}
    @media (max-width: 979px) {
		.conct .container .row-fluid .span3{width:23%;margin-left:6px;margin-right:6px;}
		#iframe {height:125px ;}
		#head div div div div{margin-left:0px !important;}

		
	#tel_img{margin-right:0%;}
				#head .navbar-inner{ margin:0px; padding:0px;}
				#headBox>#head{margin:0px;}
				#head .container {margin-top: 0;}
				.container{margin-top:0px !important;}
				#head .btn.btn-navbar{ margin:10px; margin-bottom:0px;}
				#pointPicture{
					display:none;
				}
				#hd_logo{
					margin-left:0px;
				}
				#aumenu{ margin-top:0px;}
				#aumenu>ul{background-image:inherit; width:inherit;float:none;text-align:center;}
				#aumenu>ul>li{text-align:center;float:none;}
				.navbar .nav>li{float:none;}
				#aumenu>ul>li>a{
					background-image:url();
					filter : alpha(opacity=60); /* IE, 0 ~ 100 */
					opacity : 0.6; /* Others, 0 ~ 1 */
				}
				#aumenu>ul>li>a:hover,#aumenu>ul>li>a:focus{
					filter : alpha(opacity=100); /* IE, 0 ~ 100 */
					opacity : 1.0; /* Others, 0 ~ 1 */
				}
				#aumenu>ul>li>ul{
					background-image:url();
					margin:0px;
				}
				#aumenu>ul>li>ul>li{
					padding:0 5px;
				}
				#aumenu>ul>li>ul.dropdown-menu>li>a{
					padding:5px 0;
					border-bottom:dashed 1px #cccccc;
				}
				#aumenu>ul>li>ul.dropdown-menu>li>a:hover,#aumenu>ul>li>ul.dropdown-menu>li>a:focus{
					background-color:#CCCCCC;}
		#languageBar {width:100%; margin-right:0px;display:table;margin:auto;text-align:center;margin-top:10px;margin-top:0px;border-top: 1px solid #ddd;border-bottom: 1px solid #ddd;padding: 0px 0;}
		#languageBar>ul>li{float:left;}
		#bannerImg{ margin-top:0px;}
		#hd_logo{margin-top:10px !important;}
.navbar .nav>li{margin-left:0px;}
#head .container{width:inherit;}
#head div div div div{float:none !important;}
a#logo_link{display:table;text-align:center;padding-right:0px;margin:auto;padding-left:7%;}
#languageBar>ul{padding:0 10px;display:table;margin:auto;float:none;}
#left_menu{margin-left:30px;}
#tel{margin-top:0px !important;}
	.navbar .nav{padding-left:0%;}
	#tel{text-align:center !important;}
	}
    @media (max-width: 767px) {
		.conct .container .row-fluid .span3{width:100%;margin:auto;}
		#iframe {height:400px ;}
		body{ padding-left:0px; padding-right:0px;overflow-x: hidden;}
		#head button.btn.btn-navbar {position: absolute;top: 10px;right: 10px;margin: 0;}
				a#logo_link {padding-left:0%;}
				#headBox>div {margin: 0px;}
				#headBox>div>.navbar-inner{ margin:0px;}
				#languageBar {width: 100%;float: none;}
				
				#languageBar>ul>li{ padding-bottom:3px;}
				#aumenu{ margin-top:0px;}
				#topmenu{ margin-left:auto;margin-right:auto;}
				/*#headBox { margin-left:-10px; margin-right:-10px;}*/
				#headBox>.container{ margin:0px;}
				#headBox #runImg{ padding-bottom:5px;}
				.banner{
					padding-left:0px;
					padding-top:0px;
					background-image:inherit;
				}
				#bannerImg{
					margin:0px;
				}
				#hd_logo{margin-left:0; padding:8px 0;}
				#left_menu .accordion-group{margin-left:0%;}
				.dropdown-submenu:hover>.dropdown-menu, .dropdown-submenu>.dropdown-menu {display: none;}
				li.dropdown-submenu.open>.dropdown-menu {display: inherit;}
				body, html {height:100%;}
				#headBox div div div .img1{display:none;}				
				#headBox div div div .qrco{display:none;}

    }
	
	
	
	
	
</style>
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
    <script src="//cdnjs.bootcss.com/ajax/libs/html5shiv/3.6.2/html5shiv.js"></script>
<![endif]-->
</head>
<body>
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


<div id="wrap" class="navbar-wrapper">
	<div id="headBox"> 
		<div id="head" class="navbar navbar-inverse navbar-fixed-top" style="height: inherit;">
        	<div class="navbar-inner"><!-----navbar-inner----->
            	<div class="container"><!----container---->
               	 <!--選單縮小的三條線-->
					<button type="button" class="btn btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
                 <!--選單縮小的三條線 end-->
                 
                 <!--語言列選單-->
                 <div><!---div框架--->
                 <div style="float:left"> <!--hd_logo-->
					<a id="logo_link" href="http://hsiehskin.ezsale.tw/tw/default.asp" style="cursor: pointer;"><img id="hd_logo" class="brand" src="/upload/whome/logo.png" style="zoom: 1;"></a>
				</div><!--hd_logo end-->
                <div id="menuType"><!--menuType-->
                	<div id="languageBar"><!--languageBar-->
                		 <ul class="nav" > <!--nav-->
                                            <%
                                                set cmd=nothing
                                                set cmd = server.createobject("Adodb.command")
                                                With cmd
                                                    .ActiveConnection = cn
                                                    .CommandType=1
                                                    .NamedParameters = True
                                                    .CommandText = "select id,title,link_url,target,img1,img2,use_module from menu_authors where (disp_opt='Y' or disp_opt='Q') and lanBar='Y' order by ser_no"	
                                                end with
                                                set rs1=cmd.execute			
                                                while not rs1.eof
                                                    set cmd=nothing
                                                    set cmd = server.createobject("Adodb.command")
                                                    With cmd
                                                        .ActiveConnection = cn
                                                        .CommandType=1
                                                        .NamedParameters = True
                                                        .CommandText = "select count(*) from menu_sub where (disp_opt='Y' or disp_opt='Q') and authors_id=?"	
                                                        .Parameters.append .CreateParameter("authors_id",2,1,,rs1("id"))
                                                    end with
                                                    set rscount=cmd.execute
                                                    
                                                    target=""
                                                    link=""
                                                    if rs1("link_url")<>"" then
                                                        link=rs1("link_url")
                                                        if rs1("target")="_blank" then
                                                            target="_blank"
                                                        else
                                                            target="_self"
                                                        end if
                                                    else
                                                        if rscount(0)=1 then
                                                            set cmd=nothing
                                                            set cmd = server.createobject("Adodb.command")
                                                            With cmd
                                                                .ActiveConnection = cn
                                                                .CommandType=1
                                                                .NamedParameters = True
                                                                .CommandText = "select id,title,link_url,link_target,use_module from menu_sub where (disp_opt='Y' or disp_opt='Q') and authors_id=? order by ser_no"	
                                                                .Parameters.append .CreateParameter("authors_id",2,1,,rs1("id"))
                                                            end with
                                                            set rsm=cmd.execute
                                                            if rsm("use_module")="10" then
                                                                link="/tw/index.asp?au_id="&rs1("id")&"&sub_id="&rsm("id")
                                                            else
                                                                link="/tw/index.asp?au_id="&rs1("id")&"&sub_id="&rsm("id")
                                                            end if
                                                        else
                                                            if rs1("use_module")="10" then
                                                                link="/tw/index.asp?au_id="&rs1("id")&"&sub_id="&rs1("id")
                                                            else
                                                                link="/tw/index.asp?au_id="&rs1("id")
                                                            end if
                                                        end if
                                                    end if
                                                    if rs1("img1")<>"" then
                                                        if rs1("img2")<>"" then
                                                            mouseover=rs1("img2")
                                                        else
                                                            mouseover=rs1("img1")
                                                        end if
                                                        menuImgDisp="initial"
                                                    else
                                                        menuImgDisp="none"
                                                    end if
                                                    authors_title=rs1("title")
                                            %>
                                                <li class="dropdown clearfix">
                                                    <a href="<%=HTMLreplace(link)%>" class="dropdown-toggle" target="<%=target%>"><img src="<%=HTMLreplace(rs1("img1"))%>" style="display:<%=HTMLreplace(menuImgDisp)%>; cursor:pointer; "  onMouseOver="this.src='<%=HTMLreplace(mouseover)%>'" onMouseOut="this.src='<%=HTMLreplace(rs1("img1"))%>'" />
                                                        <%if menuImgDisp="none" then%>
                                                            <%if aumenu_icon_img<>"" then%>
                                                                <img src="<%=HTMLreplace(aumenu_icon_img)%>" align="absmiddle" />
                                                            <%end if%>
                                                            <%=HTMLreplace(authors_title)%>
                                                        <%end if%>
                                                    </a>
                                                </li>
                                            <%
                                                    rs1.movenext
                                                wend
                                            %>
                                        </ul> <!--nav end-->
                	</div><!--languageBar end-->
                    
                     <!--tel-->
                  <div id = "tel" style="text-align:right;margin-top:35px;position:relative;z-index:3;"><a href="tel:(02)29203497"><img src = "/upload/whome/tel.png" id="tel_img"></a>
                        	
                   </div>
                  <!--tel end-->
                    
                    
                </div><!--menuType end-->
                  <!--語言列選單 end-->
                 
                  
                 <!--主選單-->
                 <div id="aumenu" class="nav-collapse collapse" style="height: 0px;"><!--aumenu-->
                 	<ul class="nav" style="width:100%;">
                                    <%
                                        sql1="disp_opt='Y' "
                                        if aumenu_seat<>2 then
                                            sql1=sql1&"and lanBar<>'Y' "
                                        end if
                                        
                                        set cmd=nothing
                                        set cmd = server.createobject("Adodb.command")
                                        With cmd
                                            .ActiveConnection = cn
                                            .CommandType=1
                                            .NamedParameters = True
                                            .CommandText = "select id,title,link_url,target,img1,img2 from menu_authors where "&sql1&" order by ser_no"	
                                        end with
                                        set rs1=cmd.execute			
                                        while not rs1.eof
                                            if rs1("img1")<>"" then
                                                if rs1("img2")<>"" then
                                                    mouseover=rs1("img2")
                                                else
                                                    mouseover=rs1("img1")
                                                end if
                                                menuImgDisp="initial"
                                            else
                                                menuImgDisp="none"
                                            end if
                                            authors_title=rs1("title")
                                            
                                            set cmd=nothing
                                            set cmd = server.createobject("Adodb.command")
                                            With cmd
                                                .ActiveConnection = cn
                                                .CommandType=1
                                                .NamedParameters = True
                                                .CommandText = "select id,title,link_url,link_target from menu_sub where disp_opt='Y' and authors_id=? order by ser_no"	
                                                .Parameters.append .CreateParameter("authors_id",2,1,,rs1("id"))
                                            end with
                                            set rsm=cmd.execute			
                                
                                
                                            set cmd=nothing
                                            set cmd = server.createobject("Adodb.command")
                                            With cmd
                                                .ActiveConnection = cn
                                                .CommandType=1
                                                .NamedParameters = True
                                                .CommandText = "select count(*) from menu_sub where disp_opt='Y' and authors_id=?"	
                                                .Parameters.append .CreateParameter("authors_id",2,1,,rs1("id"))
                                            end with
                                            set rscount=cmd.execute			
                                            target=""
                                            link=""
                                            if rs1("target")="_blank" then
                                                target="_blank"
                                            else
                                                target="_self"
                                            end if
                                            if not rsm.eof then
                                                link="#"
                                                if not rscount.eof then
                                                    if rscount(0)=1 then
                                                        if rs1("link_url")="" then
                                                            link="/tw/index.asp?au_id="&rs1("id")&"&sub_id="&rsm("id")
                                                        end if
                                                    end if
                                                    if rs1("link_url")<>"" then
                                                        link=rs1("link_url")
                                                    end if
                                                end if
                                            else
                                                if rs1("link_url")<>"" then
                                                    link=rs1("link_url")
                                                else
                                                    link="/tw/index.asp?au_id="&rs1("id")
                                                end if
                                            end if
                                    %>
                                        <li class="dropdown clearfix">
                                            <a href="<%=HTMLreplace(link)%>"<%if not rsm.eof and link="#" then%> class="dropdown-toggle" data-toggle="dropdown"<%end if%><%if menuImgDisp="none" then%> style="padding:15px 20px;"<%end if%> target="<%=target%>"><img src="<%=HTMLreplace(rs1("img1"))%>" style="display:<%=HTMLreplace(menuImgDisp)%>;" onMouseOver="this.src='<%=HTMLreplace(mouseover)%>'" onMouseOut="this.src='<%=HTMLreplace(rs1("img1"))%>'" />
                                                <%if menuImgDisp="none" then%>
                                                    <%if aumenu_icon_img<>"" then%>
                                                        <img src="<%=HTMLreplace(aumenu_icon_img)%>" align="absmiddle" />
                                                    <%end if%>
                                                    <%=HTMLreplace(authors_title)%>
                                                <%end if%>
                                            </a>
                                            <%
                                                if not rsm.eof and link="#" then
                                            %>
                                            <!--第二層子選單-->
                                                    <ul class="dropdown-menu">
                                            <%
                                                    while not rsm.eof
                                                        if rsm("link_url")<>"" then
                                                            link=rsm("link_url")
                                                            if rsm("link_target")="Y" then
                                                                target="target='_blank'"
                                                            end if
                                                        else
                                                            link="/tw/index.asp?au_id="&rs1("id")&"&sub_id="&rsm("id")
                                                        end if
                                            %>
                                                        <li><a href="<%=HTMLreplace(link)%>" target="<%=HTMLreplace(target)%>" style="cursor:pointer;"><%=HTMLreplace(rsm("title"))%></a></li>
                                            <%
                                                        rsm.movenext
                                                    wend
                                            %>
                                                    </ul>
                                            <%
                                                end if
                                            %>
                                        </li>
                                    <%
                                            rs1.movenext
                                        wend
                                    %>
                                </ul>
                 
                 
                 
                 </div><!--aumenu end-->
                 <!--主選單 end-->
 
                 </div><!--div end--->
           	  </div><!----container end---->
            </div><!----navbar-inner end---->
        </div><!----head end---->
        <!--banner-->
        
        
        <div class="container" id="bannerCont"> <!--bannerCont-->
			<div class="row"><!--row-->
				<div id="runImg" class="span12 banner"> <!--runImg-->
					 <img id="bannerImg"/>
                     		<div id="pointPicture" ></div>	
				</div><!--runImg end-->
	
			</div><!--row end-->
		</div><!--bannerCont end-->
		
        <!--下方內容-->
         <div class = "conct" style="text-align:center;"><!--conct-->
         	 <div class ="container"><!--container-->
         		<div class = "row-fluid"><!--row-fluid-->
         			<!--最新消息-->
					<div class = "span3" style="margin-top:15px"><img src="/upload/whome/sub_title_12.png"/>
			
            			 <div class = "cont" style ="text-align:left;line-height:32px;">
                   <ul>
					<li>
						<%
							set cmd = nothing
							set cmd = server.createobject("Adodb.command")
							With cmd
								.ActiveConnection = cn
								.CommandType=1
								.NamedParameters = True
								.CommandText = "select top 1 * from menu where sub_id=19 and disp_opt='Y' order by ser_no, id desc"		
							end with	
							set rsn=cmd.execute
							while not rsn.eof
								news_title=left(rsn("title"),22)
							
							if len(rsn("title")) > 22 then
								news_title=news_title&"..."
							
							end if
							
						%>
						<a href="/tw/index.asp?au_id=10&sub_id=19&id=<%=rsn("id")%>" target="_self">
							<div id ="new_img" style="margin-left:1%;text-align:center;margin:auto;margin-top:10px;">  <img src=" <%=rsn("img1")%>" />   </div>
                            <div id="new_date"> <%=rsn("note_date")%> </div> 
                            <div style="float:left"></div> 
                        <div id="new_con" style="color:#B7084F;line-height:20px;margin-left:10px"> <%=news_title%></div>    
				</a>
						<%
							rsn.movenext
							wend
						%>
					</li>
				</ul>            
              </div>
		</div>
         <!--最新消息END-->
		
		 <!--美容專區-->
			<div class = "span3"  style="margin-top:15px">
			
            	<div class = "img0"><!--img-->
                <img src="/upload/whome/sub_title_14.png"/> 
                <ul>
					<li>
            			<%
							set cmd = nothing
							set cmd = server.createobject("Adodb.command")
							With cmd
								.ActiveConnection = cn
								.CommandType=1
								.NamedParameters = True		
								'.CommandText = "select top 1 * from menu where sub_id=27 and disp_opt='Y' order by ser_no, id desc"		
								.CommandText = "select * from menu_sub where id=27"									
							end with	
							set rsn2=cmd.execute
							while not rsn2.eof
								link=left(rsn2("weblink2"),22)
							if len(rsn2("weblink2")) > 22 then
								link=link&"..."
							end if
							
						%>
                        
                        <div class = "span5" style="width:100%;margin-top:10px;"><!--span5-->

                            <a href=" <%=rsn2("weblink2")%>">
							 <img src=" <%=rsn2("logo_img2")%>" /></a>

					</div><!--span5-->
						<%
							rsn2.movenext
							wend
						%>
                   	</li>
				</ul>    

            	</div><!--img end-->
                
                <div class = "button_img1" style=" margin-top:15px; font-size:16px;"> <a href="/tw/index.asp?au_id=11"> <p style="color:#B7084F;">&nbsp;</p>
                  <p style="color:#B7084F;">了解更多 </p>
                </a>
            	</div>
			
		</div>	<!--span3 end-->
       	<!--美容專區END-->
        
        <!--MAP-->
        <div class = "span3" style="margin-top:15px">
       		 <div class = "img0" >
            		<img src="upload/whome/sub_title_16.png"  />
            	</div>
                
             <div id = "map_title" style="margin-top:10px;">    
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4299.9209841222655!2d121.51843996069925!3d25.007313877415786!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442a9e8e7216cfd%3A0x33038f2b49f80a0e!2zMjM05paw5YyX5biC5rC45ZKM5Y2A56aP5ZKM6LevMjU2LTHomZ8!5e0!3m2!1szh-TW!2stw!4v1446383882253" width="100%" frameborder="0" style="border:0" id="iframe" allowfullscreen></iframe>
             </div>
             <div class ="map_text">
             	<p style="color:#B7084F; font-size:12px;margin-top:5px;text-align:left;">&nbsp;</p>
             
             	<p style="color:#B7084F;font-size:16px;text-align:center;">新北市永和區福和路256-1號</p>
             </div>
                
        </div>
        <!--MAP END-->
        
        <!--QRCODE-->
        <div class = "span3" style="margin-top:15px">
        		<div class = "img1">
            		<img src="upload/whome/sub_title_18.png"  />
            	</div>
                
            <div class = "qrco">
            		<img src="upload/whome/ind_28.png" style="margin-top:20px;"  />
                    <div class = "qrco_text">
                    	<p id="scanQr" style="font-size:12px;margin-top:10px">即刻掃描QRCode </p>
                		<p style="color:#B7084F; font-size:16px;">診所資訊帶著走 </p>
                    </div>
            	</div>
                
        </div>
        <!--QRCODE END-->

                    
                    
         		</div><!--row-fluid end-->
         	</div><!--container end-->
         </div><!--conctend-->
        <!--下方內容 end-->
        
        
          <!--foot-->
   <div id="foot" style="margin-top:20px;">
        <%=HTMLDecode(foot_text)%>
    </div>
          <!--foot end-->

        
	</div><!----headbox end---->
</div><!----wrap end---->
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
			
			$("#runImg").css("background",bannerAra[play - 1]);
			$("#bannerImg").fadeOut('slow', function() {
			
						document.getElementById("num" + play).className = 'choice';
			$("#bannerImg").attr("src",bannerAra[play - 1]);
                  $("#bannerImg").fadeIn('slow');
				  
              });
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
