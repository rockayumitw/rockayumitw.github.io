<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!--#include virtual="/lib/cn.asp"-->
<!--#include virtual="/lib/cn2.asp"-->
<!--#include virtual="/systemlib/decode.asp"-->
<!--#include virtual="/systemlib/head_setting.asp"-->
<!--#include virtual="systemlib/md5.asp"--><head>
	<%if ico_logo<>"" and ico_logo_type="ico" then%>
        <link rel="shortcut icon" href="<%=HTMLreplace(ico_logo)%>">
    <%end if%>
	<%if meta_data<>"" then%>
		<meta name="keywords" content="<%=meta_data%>"  />
	<%end if%>
	<%if google_code2<>"" then%>
		<meta name="google-site-verification" content="<%=google_code2%>" > 
	<%end if%>
<!--<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1">


<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
<script type="text/javascript" src="/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/chg_lan.js"></script>
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
	benerSet2=split(head_banner,",")
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
			color:#fff;
			background-color:#fbf4c4;
			
	}
	body{
		background:url(/upload/whome/top_bg_03.png) no-repeat;
		background-position-x:center;
		background-position-y:-11.5%;
		}
	form{display: inline;}
	a {text-decoration:none;outline: none;color: inherit;}
	a:active {text-decoration:none;}
	a:link  {text-decoration:none;}
	a:visited {text-decoration:none;}
	a:hover {text-decoration:none; color:inherit;}
	a:focus {color:inherit;outline: 0px;}
	#wrap {margin-top: 0;}
	#head button {background-color: #d40f23;}
	#head>.container { margin:0px;margin-top: -8px;}
	#languageBar>ul {margin: 0px;margin-left: auto;width: 450px;float: none;text-align: center;padding-top: 50px;padding-bottom: 10px;}
	#languageBar>ul>li { display:inline;padding-left:5px;padding-right:5px;}
	#languageBar>ul>li>a {padding: 0px 4px;color: #fff;display: inline;}
	#languageBar .nav li:nth-child(2){margin-top:4%;}
	#languageBar .nav li:nth-child(3){margin-top:4%;}
	#languageBar .nav li:nth-child(4){margin-top:4%;}
	#languageBar>ul>li:last-child>a {border-right: 0;}
	#languageBar .navbar .nav>li {float:left;}
	.navbar .nav{margin:auto;width:850px;}
	#hd_logo {float: left; margin-right:0px;margin-top:25px;margin-bottom:5px;margin-left:29px;}
	#aumenu .nav li:nth-child(13) a{margin-top:-5%;}
	#aumenu {margin-top: 60px; margin-bottom: 20px;}
	#aumenu>ul,#aumenu>div{float:none;}
	#aumenu a,#aumenu a:hover {text-decoration:none; color:inherit;background: none;}
	#aumenu>ul {margin-right: 0;}
	#aumenu>ul>li {border-left:1px solid #fff;}
	#aumenu>ul>li:first-child{border-left:0px solid #fff;}
	#aumenu>ul>li:last-child {margin-right: 0px;border-left:0px solid #fff;margin-top:-16px;}
	#aumenu>ul>li>ul {margin-top: -1px;}
	#aumenu>ul>li:hover>ul {display: block;}
	#aumenu>ul>li>ul>li:hover {background: linear-gradient(to right,#d6abd5,#cec4ce);filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=#d6abd5, endColorstr=#cec4ce,GradientType=1 ); color:#fff;}
	#aumenu>ul>li>ul>li>a:after{border: 0;}
	#memLogin2 {display: none;}
	#au_function>div{ display:inline;}
	#abgne_fade_pic a.ad{box-shadow: 6px 12px 21px -1px rgba(143,143,143,1);}

	#banner {position: relative;margin-bottom:-3%;}
	#pointPicture {width: 100%;text-align: center; color:#7a00b9;}
	#pointPicture>a{opacity: 0.5;}
	#pointPicture>a:hover,#pointPicture>a.choice{opacity: 1;}

	#member{float:left;width: 23%;padding: 0 2%; text-align:center;}
	#login_btn{ margin-top:10px;}
	#languageBar>ul>li{padding-left:2px;}
	/*#foot a{ color:#fff; font-weight:bold;}
	#foot{ margin-top:10px;font-size: 10pt;}
	#foot_link a {color: #fff;padding: 0 10px;font-size: 11pt;border-right: 1px solid #fff;font-weight: bold;}
	#foot_link>div:last-child>span {margin-top: -3px;}
	#foot .info{margin: auto;margin-top: 25px;max-width: 100%;width: 960px;}
	#foot .addr {text-align: right;}*/

	#abgne_fade_pic {position: relative;width: 100%;height:auto; padding:0% 0% 43.5% 3%;}
	#abgne_fade_pic a.ad {
		position: absolute;	/* 讓圖片疊在一起 */
		cursor: pointer;
	}
	#abgne_fade_pic .control {position: absolute;right: 0;bottom: 15%;width: 100%;text-align: center;}
	#abgne_fade_pic .control a {
		display: inline-block;
		color: #fff;
		text-align: center;
		color: #78006E;
		font-size: 16px;
		text-decoration: none;
		opacity: 0.5;
	}
	#abgne_fade_pic .control a.on,#abgne_fade_pic .control a:hover {
		opacity: 1;
	}
	.dropdown-menu>li>a{color:#000 !important;}
	#cont .row-fluid .span5{width:22.425532%; margin-left:2%;float:left;}
	.nav>li>a{display:inline;}

	#aumenu ul li a.dropdown-toggle{padding:15px 13px !important;}
	/*#languageBar{font-size:9px;}*/
	#cont .row-fluid .span5 a:hover{background-color:#fff;opacity:.6;}
	
	/*#languageBar{margin-right:50px !important;}*/
	#languageBar{padding-right:0px;}
	##languageBar > ul > li{padding-right:36px;}
	@media (min-width: 768px) {
		#good_img>div:first-child {margin-left:0;}
	}
    @media (max-width: 1200px) {
		#aumenu>ul>li:last-child {margin-top:0px;}
		#languageBar>ul>li{left:-8%;}
		/*#hd_logo{float:none;text-align:center;margin-left:70px;}*/
		#hd_logo{float:left;/*text-align:center;*/margin-left:-9%;}
		#abgne_fade_pic {padding:0% 0% 43.5% 0%;}
		#languageBar>ul{padding-right:0px;}
		#head>.container{width: 940px;}
		#member {padding: 2%;}
		#aumenu{left:0;}
#abgne_fade_pic a.ad{width:100%;}
		
    }

    @media (max-width: 979px) {
		#aumenu>ul>li:last-child {margin-top:0px;}
		#languageBar>ul>li{left:0%;}
		#aumenu>ul {display: block;float: none;text-align: center;}
		#languageBar>ul{padding-right:0px;}
		.navbar .nav{width:100%;}
		#cont .row-fluid .span5{width:22.425532%; margin-left:2%;float:left !important;}
		/*#aumenu>ul>li>ul {border: 1px solid #ccc;border-radius: 5px;background-color: #fa*fafa;}*/
		#aumenu>ul>li>ul.dropdown-menu>li>a {border-bottom:dashed 1px #cccccc;}
		#member {padding: 5% 2%;}
		#head>.container {width: 724px;}
		
		/******/
		#foot_menu ul li{padding-left:0;width:30%;}
#bottom_cont{margin-top:12%;}
#bt_left{margin-left:auto !important; }
#foot_bottom .row-fluid .span6{width:100% !important;}
#prives{text-align:center !important;}
		/*****/
#aumenu li.dropdown.clearfix{line-height:30px;}

    }
    @media (max-width: 767px) {
		#aumenu>ul>li:last-child {margin-right: 0px;border-left:0px solid #fff;margin-top:0px;}
		#languageBar>ul>li{float:none;padding-left:0;padding-right:0;}
		#languageBar>ul{width:100%;}
		#hd_logo{float:none;text-align:center;margin-left:70px;}
		#cont .row-fluid .span5{width:47.425532%; margin-left:2%;float:left;}
		#head>.container {width: 100%; margin:0px;}
		#head {margin: 0;}
		#cont .span3{text-align:center;}
		#au_function>div {display: block;margin-bottom: 10px;}
		#banner{ margin:0px;}
		#foot .service_info, #foot .addr {text-align: center;}
		#foot .info {margin-bottom: 10px;margin-top: 0px;}
		#hd_logo{margin-left:0%;}
		#languageBar>ul{margin-bottom:0px;padding-top:0px;}
		body{background-position-y:0%;}
		#aumenu{margin-top:0px;}
		#aumenu>ul{background-color:#c6a96b;border-radius:10px;}
		#aumenu>ul>li{border-left:0px solid #fff;}
		#languageBar>ul>li{display:inline-block;}
	}

</style>
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
    <script src="//cdnjs.bootcss.com/ajax/libs/html5shiv/3.6.2/html5shiv.js"></script>
<![endif]-->
<%if Application("lockKeyRight") then%>
<!--防止使用右鍵，連 Firefox 都不行 start-->
<script type="text/javascript">
    function clickIE4() {
        if (event.button == 2) {
            return false;
        } //end if
    } //end func

    function clickNS4(e) {
        if (document.layers || document.getElementById && !document.all) {
            if (e.which == 2 || e.which == 3) {
                return false;
            } //end if
        } //end if
    } //end func

    function OnDeny() {
        if (event.ctrlKey || event.keyCode == 78 && event.ctrlKey || event.altKey || event.altKey && event.keyCode == 115) {
            return false;
        } //end if
    }

    if (document.layers) {
        document.captureEvents(Event.MOUSEDOWN);
        document.onmousedown = clickNS4;
        document.onkeydown = OnDeny();
    } else if (document.all && !document.getElementById) {
        document.onmousedown = clickIE4;
        document.onkeydown = OnDeny();
    } //end if

    document.oncontextmenu = new Function("return false");
</script>
<!--防止使用右鍵，連 Firefox 都不行 End-->
<%end if%>
</head>
<body<%if Application("lockKeyRight") then%> onselectstart="return false"<%end if%>>
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
    <div id="wrap" class="container">
	  <div id="headbox"> 
        <div id="head" class="navbar navbar-inverse navbar-fixed-top" style="position: relative; ">
        <div id ="navbar-inner">
    
        <div class="container">
        
        
        
        <div id="hd_logo">
                    <a href="default.asp"><img src="/upload/whome/logo_03_03.png"></a>
                </div>
            <!--lanBar-->
            <div id="languageBar">
                  <ul class="nav">
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
                  		
                </ul>
            </div>
            <!--lanBar END-->
              <!--選單縮小的三條線-->
                <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse" style="position: absolute;top:0;right: 0;">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!--主選單-->
                <div id="aumenu" class="nav-collapse collapse" style="font-size:12pt;">
                    <ul class="nav">
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
				</div>
                </div>
</div>
             
        <!--banner-->
        <div id="banner">
            <div id="abgne_fade_pic"> 
                <%
					j=0
					for j=0 to uBound(benerSet2)
					k=j+1
				%>
				<a href="javascript:void(0)" class="ad"><img src="<%=Replace(benerSet2(j),"'","")%>"></a>
				<%
					next
				%>
            </div> 
        </div>
         <!--banner END-->
		 </div>
		 
        <div align="center" style="margin-bottom:2%;">  
  <img src="/upload/whome/contact_03.png"  align="absmiddle" />
        </div>
        </div>
      
      
        <div id = "cont" style = "width:100%;">

                        <div class = "row-fluid">                    
						<%
							set cmd = nothing
							set cmd = server.createobject("Adodb.command")
							With cmd
								.ActiveConnection = cn
								.CommandType=1
								.NamedParameters = True
								'.CommandText = "select * from menu_sub where disp_opt='Y' and authors_id=37 order by ser_no, id"		
								.CommandText = "select * from menu_sub where disp_opt='Y' and authors_id=37 order by ser_no, id"		
							'end with	
							'set rsn=cmd.execute
							'while not rsn.eof
								'title=left(rsn("title"),22)
							'if len(rsn("title")) > 22 then
								'title=title&"..."
							'end if
							
							end with	
							set rsn=cmd.execute
							while not rsn.eof
								link=left(rsn("link_url"),22)
							if len(rsn("link_url")) > 22 then
								link=link&"..."
							end if
							
						%>

<div class = "span5" style="margin-bottom:1.5%;">


					<!--	<a href="/tw/index.asp?au_id=37&sub_id=38&id=<%=rsn("id")%>" target="_self">
							<div id ="banner_img" >  <img src=" <%=rsn("banner_img")%>" /></div>    
				</a>-->
                <a href="<%=rsn("link_url")%>" target="_self">
							 <img src=" <%=rsn("banner_img")%>" /></a>
                
              
</div>
						<%
							rsn.movenext
							wend
						%>
                          </div>
        </div>
     <div id = "fb">
        <br />
<br />
<br />
<br />
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v2.4";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="fb-page" data-adapt-container-width="true" data-hide-cover="false" data-href="https://www.facebook.com/%E4%BD%B3%E7%BE%8E%E6%A8%82-%E7%A6%8F%E5%9C%93%E5%B9%B4%E7%B3%95-%E4%B8%AD%E5%BC%8F%E8%BB%9F%E7%B3%96-%E7%89%9B%E8%BB%8B%E7%B3%96-%E6%89%8B%E5%B7%A5%E8%84%86%E9%85%A5-%E5%8D%97%E6%A3%97%E6%A0%B8%E6%A1%83%E7%B3%95-158036651024338/timeline/" data-show-facepile="true" data-show-posts="false" data-small-header="false">
	&nbsp;</div>

     
     </div>   


    

    <!--新視窗-->
  </div>
      <!--頁尾-->
 <div id="foot">
        <%=HTMLDecode(foot_text)%>
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
<script>
	(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v2.4";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script>
<!--不可以拿掉END-->
<!--自動輪播和判斷會員登入狀態-->
<script>
	//banner輪播
	$(function(){
		var $block = $('#abgne_fade_pic'), 
			$ad = $block.find('.ad'),
			showIndex = 0,			// 預設要先顯示那一張
			fadeOutSpeed = 500,	// 淡出的速度
			fadeInSpeed = 500,		// 淡入的速度
			defaultZ = 10,			// 預設的 z-index
			isHover = false,
			timer, speed = 5000;	// 計時器及輪播切換的速度
	 
		// 先把其它圖片的變成透明
		$ad.css({
			opacity: 0,
			zIndex: defaultZ - 1
		}).eq(showIndex).css({
			opacity: 1,
			zIndex: defaultZ
		});
	 
		// 組出右下的按鈕
		var str = '';
		for(var i=0;i<$ad.length;i++){
			str += '<a href="#" value="'+(i + 1)+'">●</a>';
		}
		var $controlA = $('#abgne_fade_pic').append($('<div class="control">' + str + '</div>').css('zIndex', defaultZ + 1)).find('.control a');
	 
		// 當按鈕被點選時
		// 若要變成滑鼠滑入來切換時, 可以把 click 換成 mouseover
		$controlA.click(function(){
			// 取得目前點擊的號碼
			showIndex = $(this).attr("value") * 1 - 1;
	 
			// 顯示相對應的區域並把其它區域變成透明
			$ad.eq(showIndex).stop().fadeTo(fadeInSpeed, 1, function(){
				if(!isHover){
					// 啟動計時器
					timer = setTimeout(autoClick, speed + fadeInSpeed);
				}
			}).css('zIndex', defaultZ).siblings('a').stop().fadeTo(fadeOutSpeed, 0).css('zIndex', defaultZ - 1);
			// 讓 a 加上 .on
			$(this).addClass('on').siblings().removeClass('on');
	 
			return false;
		}).focus(function(){
			$(this).blur();
		}).eq(showIndex).addClass('on');
	 
		$ad.hover(function(){
			isHover = true;
			// 停止計時器
			clearTimeout(timer);
		}, function(){
			isHover = false;
			// 啟動計時器
			timer = setTimeout(autoClick, speed);
		})
	 
		// 自動點擊下一個
		function autoClick(){
			if(isHover) return;
			showIndex = (showIndex + 1) % $controlA.length;
			$controlA.eq(showIndex).click();
		}
	 
		// 啟動計時器
		timer = setTimeout(autoClick, speed);
	});
	//商品自動輪播
	var repeat=null;
	var sta=true;
	loadAdImg();
	$(window).resize(function() {
		loadAdImg();
	});
	function loadAdImg(){
	}
	if( prodtitle.length>1 ){
		var pointPicture="";
		var play = 1;
		var playTime = 5 * 1000;
		for(i=0;i<prodtitle.length;i++){
			pointPicture+="<a href='javascript:changeImg("+(i+1)+")' onmouseover='selectImg("+(i+1)+")' onmouseout='nonSelectImg("+(i+1)+")' id='num"+(i+1)+"' class='";
			if((i+1)==1){
				pointPicture+="choice'>●</a>";
			}else{
				pointPicture+="nonChoice'>●</a>";
			}
			
		}
		document.getElementById("pointPicture").innerHTML=pointPicture;
		repeat = setInterval("changeImg(play)", 0);
	}
	if( prodtitle.length<2 ){
		$("#limite_title").html(prodtitle);
		$("#limite_img").attr("src",prodimg);
		$("#limite_link").attr("href",prodlink);
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
		if (play > prodtitle.length) {
			play = 1;
		}
		for (var i = 0; i < prodtitle.length; i++) {
			document.getElementById("num" + (i+1)).className = 'nonChoice';
		}
		document.getElementById("num" + play).className = 'choice';
		$("#limite_title").html(prodtitle[play - 1]);
		$("#limite_img").attr("src",prodimg[play - 1]);
		$("#limite_link").attr("href",prodlink[play - 1]);
		
		repeat = setInterval("changeImg(play+1)", playTime);
	}
</script>
<script>
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
    function getWindowsCont(title,view,from,ctrl,hadClose){
		console.log('intogetWindowsCont');
        $("#myModalLabel").html(title);
        if(from.toString()!=""){
            $("#windowReset").attr("onClick","document."+from+".reset();");
            $("#windowSubmit").attr("onClick",ctrl);
        }else{
            $("#windowReset").css("display","none");
            $("#windowSubmit").css("display","none");
        }
        $("#windowClose").css("display",hadClose?"initial":"none");
        $.ajax({
            url: '/tw/window/view/'+view+'.asp',
            type: "POST",
            data: {},
            dataType:"html",
            beforeSend: function(x) {
                if (x && x.overrideMimeType) {
                    x.overrideMimeType("text/html; charset=UTF-8;");
                }
            },
            success: function(result) {
            //Write your code here
				console.log('successgetWindowsCont');
                var _prodBox = $("#contentText");
				var result1 = result.replace("ValidCode.asp","/tw/ValidCode.asp");
				var result2 = result1.replace("member_save.asp","/tw/member_save.asp");
				console.log($(result2)[0]);
                $(_prodBox).empty().append($(result2));
                if(from.toString()!=""){
                    $(".submit1").css("display","initial");
                    $(".reset1").css("display","initial");
                }
                $(".loadingBox").css("display","none");
            },
            error : function (xhr, ajaxOptions, thrownError) {
                   //$("body").append(xhr.status);
                   //$("body").append(xhr.responseText );
                   alert(thrownError);
            }
        });
    }
</script>
</html>
