<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<!--#include virtual="/lib/cn.asp"-->
<!--#include virtual="/lib/cn2.asp"-->
<!--#include virtual="/systemlib/decode.asp"-->
<!--#include virtual="/systemlib/head_setting.asp"-->
<!--#include virtual="systemlib/md5.asp"-->
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
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
	a {text-decoration:none;outline: none;color:#fff;}
	a:active {text-decoration:none;}
	a:link  {text-decoration:none;}
	a:visited {text-decoration:none;}
	a:hover {text-decoration:none; color:#fff;}
	a:focus {color:#fff;outline: 0px;}
	#foot{background-image:url(/upload/whome/bottom_02.png);}
	.navbar-inner .container{padding-top:0px;margin-top:-6px;margin-bottom:-6px;}
	.navbar-fixed-top, .navbar-fixed-bottom{margin-top:-10px;position:static;}
	.container .brand{margin-left:-50px;}
	.navbar-inverse .btn-navbar:hover, .navbar-inverse .btn-navbar:focus {background-color:#59812a;}
	.navbar-inverse .btn-navbar{background-color:#59812a;}
	ul, ol{list-style-type:none;margin:0 0 0 0;}
	
	#menuType .container .row-fluid .span8{margin-top:1.3%;margin-left:-7.3%}
	.navbar .brand{background:none;}
	#lan .container .row-fluid .span12{margin-left:20px;} 
	.nav>li>a:hover{color:#385611 !important;}
	.nav>li>a{color:#545454 !important;}
	.conct .container .row-fluid{background-image:url(/upload/whome/new_bg_03_03.png);background-repeat:no-repeat;background-size:contain;background-position-y:90%;}
		
		#pointPicture{
		position:relative;
		margin-top:-2%;
		padding-left:48%;
		}
	#pointPicture .nonChoice{
		color:#cfcfcf;
	}
	#pointPicture .choice{
		color:#385611;
		}
	.navbar .nav{float:none;}
	.navbar .nav>li{margin-top:3%;left:12%;}
	#aumenu>ul>li:hover>ul {display: block;}
	#aumenu>ul>li.open>a {background: none;}
	#aumenu>ul>li:hover>ul{margin-top:-10%;}
	.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus, .dropdown-submenu:hover>a, .dropdown-submenu:focus>a{background-color:#ff6d00;}
	.dropdown-menu>li>a:hover{background-image:linear-gradient(to bottom,#94aa22,#59812a);}
	#foot .container .row-fluid .span6 a{color:#b8b8b8;}
	#foot .container .row-fluid .span6 a:hover{color:#fff;}
	
	.nav-collapse.collapse{font-size:18px;color:#545454 !impoertant;}
	@media screen and (min-width:0px) and (max-width:600px){
	.container .brand{text-align:center;}
	#menuType .container .row-fluid .span8{margin-left:0 !important; margin-top:20% !important;text-align:center;display:table !important;}
	#menuType .container .row-fluid .span4{margin-left:0 !important;}
	.container .brand{width:77%;margin-left:0px !important;}
   .fb_iframe_widget{margin: 26.5% 31.5% !important;}
  
	}


    @media (max-width: 1200px) {
	#menuType .container .row-fluid .span8{margin-left:0 !important; width:100%; margin-top:-2.7% !important;}
	.container .brand {margin-left:-20px;margin-top:0px;}
	.navbar-inner .container{margin-top:5px;margin-bottom:0px;}
	.conct .container .row-fluid{background-image:none;}
	.navbar .nav{display:flex;margin-left:9%;}
	.fb_iframe_widget{margin:3.5% 4.5% !important;}
    }
    
	@media (max-width: 979px) {
	#menuType .container .row-fluid .span8{margin-left:0 !important; width:100%;display:flex;}
	
	.nav{text-align:center;}
	.navbar .nav>li{left:0%;margin-bottom:-25px;}
	.navbar .nav{display:block;margin-left:0%;}
	#au_lan_menu{margin-right:0% !important;}
	#aumenu>ul>li:hover>ul{margin-top:0;}
	#runImg{margin-top:10px !important;}
	#pointPicture{display:none;}
    }
    
	
	@media (max-width: 767px) {
	#menuType .container .row-fluid .span8{margin-left:0 !important; margin-top:12% !important;display:flex;}
	#foot .container .row-fluid .span6{text-align:center !important;}
	#lan{background-image:none;!impoartant}
	.navbar .brand{padding:0px 0px 0px;}
	#pointPicture{display:none;}
	#foot{height:80px !important;}
	#button{margin-top:-10px;}
	.fb_iframe_widget{margin:20.5% 30.5%  !important;}
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


<div id="head" class="navbar navbar-inverse navbar-fixed-top" style="margin:auto;overflow:visible">
	<div class="navbar-inner">
		<div class="container">
			<div id = "lan" >
			<div class = "container">
					<button type="button" class="btn btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse" style="margin-top:3%" >
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
					
					
					
				<div id="menuType">
                        <div style="float:left">
                           <!-- <a href="default.asp"><img id="hd_logo" class="brand" src="<%=HTMLreplace(logo_img)%>"></a>-->
                            <a href="default.asp"><img id="hd_logo" class="brand" src="/upload/whome/LOGO.png"></a>
                        </div>
						
						  <div id="languageBar" align="right">
                                        <ul class="nav" style="width:100%;">
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
                                </div><!--lanBar-->
						


					<!--主選單-->
                           <div id="topmenu" class="navbar navbar-inverse navbar-fixed-top" >
						  <!-- <div id ="aumenu" class="navbar navbar-inverse navbar-fixed-top">-->
                                <div class="navbar-inner" >
									<div class="container">
									<div id = "aumenu" class = "nav-collapse collapse" style="height:0;" >
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
										</div>
										</div>
                                </div>
								
                            </div>
			</div>	
                     
			</div>
		</div>	
	</div>

	

		
		
		
	<!--這是banner的範圍，有用到的話整段保留，要搭配最下面的script使用-->
		<div id="banner" >	
            	<div id="runImg" style="text-align:center;background-image:url(/upload/whome/banner_bg_02.png);background-repeat:no-repeat;">
                	 <img id="bannerImg" style="margin-top:16px;margin-bottom:10px;"/>
                </div>
					<div id="pointPicture" ></div>
        </div>
		
   <!--banner範圍END-->

    
    <div class = "conct" style="text-align:center;margin-top:20px">
    <div class ="container">
		<div class = "row-fluid">
		
			<div class = "span4" style="margin-top:30px"><img src="/upload/whome/sub_title_08.png"/><a href="/tw/index.asp?au_id=97&amp;sub_id=108"><img src="/upload/whome/sub_title_pic_left.png"  style="margin-top:30px;margin-bottom:30px;" /></a> </div>
		
			
			<div class = "span4"  style="margin-top:30px"><img src="/upload/whome/sub_title_10.png"/> 
            	<!--<div class = "date" style="background-color:#CCC;width:30%;margin-left:6%;text-align:left;line-height:32px">2014/07/14</div>-->
                
                  <div class = "cont" style ="text-align:left;line-height:32px;margin-top:30px">
                  <ul>
					<li>
						<%
							set cmd = nothing
							set cmd = server.createobject("Adodb.command")
							With cmd
								.ActiveConnection = cn
								.CommandType=1
								.NamedParameters = True
								.CommandText = "select top 2 * from menu where sub_id=118 and disp_opt='Y' order by ser_no, id desc"	
							end with	
							set rsn=cmd.execute
							while not rsn.eof
								news_title=left(rsn("title"),22)
							if len(rsn("title")) > 22 then
								news_title=news_title&"..."
							end if
						%>
						<a href="/tw/index.asp?au_id=98&sub_id=118&id=<%=rsn("id")%>" target="_self">
							<div id="new_date" style="background-image:url(/upload/whome/date_bg_03.png);color:#7a7a7a;line-height:25px;background-repeat:no-repeat;font-size:12px"> <%=rsn("note_date")%> </div> <div style="float:left"></div> <div id="new_con" style="color:#545454;line-height:30px;border-bottom-style:solid;border-bottom-width:thin;margin-bottom:10px;border-color:#e0e0e0"> <%=news_title%>...more</div>    
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
								.CommandText = "select top 1 * from menu where sub_id=119 and disp_opt='Y' order by ser_no, id desc"	
							end with	
							set rs2=cmd.execute
							while not rs2.eof
								news_title=left(rs2("title"),22)
							if len(rs2("title")) > 22 then
								news_title=news_title&"..."
							end if
						%>
						<a href="/tw/index.asp?au_id=98&sub_id=119&id=<%=rs2("id")%>" target="_self">
							<div id="new_date" style="background-image:url(/upload/whome/date_bg_03.png);color:#7a7a7a;line-height:25px;background-repeat:no-repeat;font-size:12px"> <%=rs2("note_date")%> </div> <div style="float:left"></div> <div id="new_con" style="color:#545454;line-height:30px;border-bottom-style:solid;border-bottom-width:thin;margin-bottom:10px;border-color:#e0e0e0"> <%=news_title%>...more</div>    
				</a>
						<%
							rs2.movenext
							wend
						%>
					</li>
				</ul>
              </div>
          </div> 
                

                
              <!--  <div class = "cont1" style ="text-align:left;line-height:32px;margin-top:30px">
                  
              </div>
          </div>-->
          
          
		  
			<div class = "span4"  style="margin-top:30px"><img src="/upload/whome/sub_title_12.png"/>
            
            <div class = "row-fluid">
            <div class = "span6" style="margin-top:30px;">
           <div class ="fb-like" style="position:absolute;margin:2.5% 3.5%" data-href="https://www.facebook.com/Gmax.Gx" data-layout="box_count" data-action="like" data-show-faces="true" data-share="false"></div><img src="upload/whome/sub_title_pic_right_01.png"  />
            </div>
             <div class = "span6" style="margin-top:30px">
            <img src="upload/whome/sub_title_pic_right_02.png"  />
            </div>
            
            </div>
            
            

<!--<img src="upload/whome/sub_title_pic_right_02.png" style="margin-top:30px;position:inherit"/>--> 
         
			</div>
		</div>	
	</div>
    </div>
	
	<!-- <div class = "span4"  style="margin-top:50px"><img src="/upload/whome/sub_title_12.png"/>
				<table width="0" border="0" align="center">
				<tr>
				<td><a href="https://www.facebook.com/pages/Rising-Time-International/978983935468414?skip_nax_wizard=true&amp;ref_type=bookmark"><img src="upload/whome/sub_title_pic_right_01.png" /></a></td>
				<td><img src="upload/whome/sub_title_pic_right_02.png"  /></td>

				</tr>
				</table>
			</div>
		</div>	
	</div>
    </div>-->
	
	
	
	
	
	
	
	
	
	

        <!--頁尾-->
      <div id="foot" style="background-image:url(/upload/whome/bottom_23.png);height:55px;color:#b8b8b8;font-size:12px">
		<div class = "container" style="height:30px">
			<div class = "row-fluid" style="height:30px;margin-top:30px">
				<div class = "span6" style="text-align:left;line-height:15px;height:30px;">
					Copyright © 2015 銓鉅星股份有限公司 
			  </div>
				<div class = "span6" style="text-align:right;line-height:15px;height:30px;">
				<a href="http://www.ether.com.tw/tw/index.asp?au_id=24&amp;sub_id=26">Designed by EtheriT</a> </div>
			</div>
			</div>
        </div>
        <!--頁尾END-->

 </div>
 </div>
 
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v2.4";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script> 


 
 
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
