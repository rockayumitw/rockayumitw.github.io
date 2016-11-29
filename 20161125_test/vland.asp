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
			background-color:#E1E3E2;
			
	}
	a {text-decoration:none;outline: none;color:#fff;}
	a:active {text-decoration:none;}
	a:link  {text-decoration:none;}
	a:visited {text-decoration:none;}
	a:hover {text-decoration:none; color:#fff;}
	a:focus {color:#fff;outline: 0px;}
	ul, ol{list-style:none;margin:0 0 10px 0px;}
	.navbar-fixed-top, .navbar-fixed-bottom{position:static;}
	
	#head .container{max-width:1170px;}
				
				#aumenu{
					margin-top:0px;
					font-size:11pt;
					color:#003366;
					display:block;
					text-align:left;
				}
				#aumenu>ul{background-image:url(); max-width:100%;}
				#aumenu a{color:#003366; font-size:11pt; padding:0px 30px;}
				#aumenu ul li>a:focus {background: transparent;outline : 0;}
				
				/*2015/07/21被打槍的主選單分隔圖
				#aumenu>ul>li:after{ content:url(/upload/20151105110449.png);position: absolute;top: 0;left:-0px;}
				#aumenu>ul>li:first-child:after{ content:normal;}
				*/
				/*20150721重作的分隔線圖*/
				#aumenu .clapboard{ float:left;margin-top:0px;}
				
				#aumenu>ul>li:hover>ul{ display:block;}
				#aumenu>ul>li>ul{margin-top: 0;}
				#aumenu>ul>li>ul>li {padding: 2px 0;}
				.navbar-inner .container{
					padding-top:0px;
				}
				.navbar-inverse .nav li.dropdown.open>.dropdown-toggle{background-color:inherit;}
				#aumenu .dropdown-menu>li>a{padding:0px 25px;}
				.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus, .dropdown-submenu:hover>a, .dropdown-submenu:focus>a {
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
			#foot{
				font-size:10pt;
				
				color:#bbbbbb;
				/*background:url(/upload/whome/bt_bg_03.jpg) center top;*/
				background-repeat:no-repeat;
				min-height:56px;
				overflow:hidden;
				text-align: left;
				line-height: normal;
				
			}
			#bt_menu .nav{
				width:85% !important; 
				}
			
			.row{margin-left:0;}
			.navbar-inverse .btn-navbar,.navbar-inverse .btn-navbar:hover,.navbar-inverse .btn-navbar:focus {
				background-image: none;
				background-color:#AD0026;
			}
			#pointPicture{padding:5px 1px 0px 1px; font-size:11pt; margin-top:-40px; margin-right:10px; float:right; font-weight:bold; height:21px; line-height:14pt; overflow:hidden;}
					.nonChoice{width:15px; height:15px; cursor:pointer; float:left; text-align:center; margin-left:3px; background-color:#ffffff;}
				#pointPicture .nonChoice{color:#555555;}
				.choice{width:15px; height:15px; cursor:pointer; float:left; text-align:center; margin-left:3px; background-color:#555555;}
				#pointPicture .choice{color:#ffffff;}
				#clapboard1:last-child{display:none;}
				/*#aumenu.nav-collapse.collapse ul.nav{margin-top:165px;}*/
				#cont{margin:15px;}
				.dropdown-submenu>a:after{border-style:none;}
			#cont .row-fluid .span3{margin-left:1.564103%;}	
		
				#aumenu .nav{position:absolute;margin-top:165px;left:7%;}
    @media (max-width: 1200px) {
	#aumenu .nav{display:flex;margin-top:135px;left:0%;}
				/*#aumenu.nav-collapse.collapse ul.nav{margin-top:165px;}*/
				#headBox{height:202px;}
	
	}
	@media (max-width: 1200px) and (min-width: 980px) {
				
			}
    @media (max-width: 979px) {
		#bt_menu .nav{margin-right:76px !important;}
		.container{margin-top:0px !important;}
		#aumenu .nav{position:static;display:block;margin-top:0px;}
		#clapboard1{display:none;}
		#aumenu>ul{margin-top:0px;}
		#headBox{height:auto;}
		#head{height:inherit !important;}
				#head .navbar-inner{ margin:0px; padding:0px;}
				#headBox>#head{margin:0px;}
				#headBox>.container{ margin:0px; margin-top:10px;}
				#head .container {margin-top: 0;}
				#head .btn.btn-navbar{ margin:10px; margin-bottom:0px;}
		#aumenu{ margin-top:0px;}
				#aumenu>ul{background-image:inherit; width:inherit;}
				#aumenu>ul>li{text-align:center;}
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
					background-color:#CCCCCC;
				}
				/*#languageBar{ margin-top:0px;}  4/21發現奇怪的地方，先改回瞳電腦版*/
				#languageBar { margin-right:0px;}
				
				#aumenu>ul>li:after{ content:normal;}
				#aumenu>ul>li:first-child:after{ content:normal;}
				
				#aumenu .clapboard{ display: none;}
				#languageBar{ margin-top:10px;}
				#pmenu .dropdown-menu{min-width:100%;}
				#bannerImg{ margin-top:0px;}
				.serchBox>form>input[name=text]{width:40%;}
				#foot .container{margin-top:0px;}
				#head .container{width:inherit;}
				#topmenu{display: block;}
	}
    @media (max-width: 767px) {
		body{ padding-left:10px; padding-right:10px;}
				#head button.btn.btn-navbar {position: absolute;top: 10px;right: 0px;margin: 0;}
				#menuType>a {display: block;padding-right: 40px;}
				#headBox>div {margin: 10px;}
				#aumenu{ margin-top:0px;}
				#topmenu{ margin-left:auto;margin-right:auto;}
				.banner{
					padding-left:0px;
					padding-top:0px;
					background-image:inherit;
				}
				#hd_logo{margin-left:0;}
				#cont{
					padding-right:10px;
					padding-left:10px;
					padding-top:0px;
				}
				#bannerImg{
					margin:0px;
				}
				#pmenu{
					padding-top:0px;
					margin-top:0px;
				}
				#pmenu>ul>li>ul.dropdown-menu {left: 0%;}
				.navbar-inverse .nav-collapse .navbar-form{
					border-top-color:#DADBDB;
					border-bottom-color:#DADBDB;
				}
				#foot>.row-fluid{height:inherit;}
			
				#foot{margin:auto;/*left: 0;*/width: 100%;}
				.dropdown-submenu>.dropdown-menu {position: relative;left: 0px;margin-top: 5px;margin-bottom: 20px;}
				.dropdown-submenu:hover>.dropdown-menu, .dropdown-submenu>.dropdown-menu {display: none;}
				li.dropdown-submenu.open>.dropdown-menu {display: inherit;}
				body, html {height:100%;}
				#foot div.visible-phone{ text-align: center;}
				#aumenu{margin-top:45px;}
				/*#headBox{height:250px;}
				#aumenu>ul{margin-top:45px;}
				*/
/*#aumenu>ul{margin-top:-86px}
#aumenu>ul{left:5%;}*/
		

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

                <div id="menuType"><!--menuType-->

                </div>

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
                                            .CommandText = "select clapboard from head where hid in (select id from useFrame)"  
											end with
											set rsBoard=cmd.execute
	
											
										
										
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
                                        <img src="<%=rsBoard("clapboard")%>" / id="clapboard1" style="float:left;"> 
                                    <%
                                            rs1.movenext
                                        wend
                                    %>
                                </ul>
                 
                 <div class="banner2"><!--banner2-->
                    	<img src = "/upload/whome/banner01_02.jpg">
                    </div><!--banner2 end-->
                 
                 </div><!--aumenu end-->
                 <!--主選單 end-->
 
                 </div><!--div end--->
           	  </div><!----container end---->
            </div><!----navbar-inner end---->
        </div><!----head end---->
        <!--banner-->
        
        <div id = "main"><!--main-->
        	<div class="container" id="bannerCont" style="background-color:#EFEFEF;box-shadow:0px 0px 5px 0px #7F7F7F;"> <!--bannerCont-->
            	<div id ="cont" style="background-color:#fff;"><!--cont-->
            	<div class = "row-fluid" style="border-style:solid;border-color:#cecece;border-width:thin;"><!--row-fluid-->
                	<div class ="span9"><!--span7-->
                   			<div class="runImg" > <!--runImg-->
								 <img id="bannerImg"/>
                     			<div id="pointPicture" ></div>	
                           
						</div><!--runImg end-->
                    </div><!--span7 end-->
                	<div class = "span3">
                  
                      <div class = "new_img"><!--new-->
                			<img src="/upload/whome/news_03.png">
                       </div><!--new end-->  
                     	<div class = "new_text"><!--new_text-->
                      	<ul>
                        <li>
						<%
							set cmd = nothing
							set cmd = server.createobject("Adodb.command")
							With cmd
								.ActiveConnection = cn
								.CommandType=1
								.NamedParameters = True
								.CommandText = "select top 3 * from menu where sub_id=5 and disp_opt='Y' order by ser_no, id desc"	
							end with	
							set rsn=cmd.execute
							while not rsn.eof
								news_title=left(rsn("title"),18)
							if len(rsn("title")) > 18 then
								news_title=news_title&"..."
							end if
						%>
						<a href="/tw/index.asp?au_id=4&sub_id=5&id=<%=rsn("id")%>" target="_self">
							<!--<div id="new_date" style="background-image:url(/upload/whome/date_bg_03.png);color:#7a7a7a;line-height:25px;background-repeat:no-repeat;font-size:12px"> <%=rsn("note_date")%> </div> <div style="float:left"></div>--> <div id="new_con" style="color:#545454;line-height:30px;border-bottom-style:solid;border-bottom-width:thin;margin-bottom:10px;border-color:#e0e0e0"> <%=news_title%>...</div>    
				</a>
    
						<%
							rsn.movenext
							wend
						%>
					</li>
				</ul>
                        
                    
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
							set rs2=cmd.execute
							while not rs2.eof
								news_title=left(rs2("title"),18)
							if len(rs2("title")) > 18 then
								news_title=news_title&"..."
							end if
						%>
						<a href="/tw/index.asp?au_id=4&sub_id=6&id=<%=rs2("id")%>" target="_self">
							<!--<div id="new_date" style="background-image:url(/upload/whome/date_bg_03.png);color:#7a7a7a;line-height:25px;background-repeat:no-repeat;font-size:12px"> <%=rs2("note_date")%> </div> <div style="float:left"></div>--> <div id="new_con" style="color:#545454;line-height:30px;border-bottom-style:solid;border-bottom-width:thin;margin-bottom:10px;border-color:#e0e0e0"> <%=news_title%>...</div>    
				</a>
    
						<%
							rs2.movenext
							wend
						%>
					</li>
				</ul>    
                   
                        
                      </div>
                     	<div align="right"><!--new_end-->
  						More
                        </div>
                	</div><!--span4 end-->
            	</div><!--row-fluid end-->
                
            </div><!--cont end-->
            </div><!--bannerCont end-->
		</div><!--main end-->
        
        
          <!--foot-->
   <div id="foot" >
   		<div class = "container" style="background-color:#EFEFEF; box-shadow:0px 0px 5px 0px #7F7F7F""> <!--container-->
        	<%=HTMLDecode(foot_text)%>
        </div><!--container end-->
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
