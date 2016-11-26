<%@ Language=VBScript CodePage=950%>
<!--#include virtual="lib/cn.asp"-->
<!--#include virtual="lib/cn2.asp"-->
<!--#include virtual="lib/decode.asp"-->
<!--#include virtual="lib/head_setting.asp"-->
<!--#include virtual="remote.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=big5" />
<%if meta_data<>"" then%>
<meta name="keywords" content="<%=meta_data%>"  />
<%end if%>
<%if google_code2<>"" then%>
<meta name="google-site-verification" content="<%=google_code2%>" > 
<%end if%>
<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
<title><%=sub_title%>-<%=title%></title>
<link type="text/css" href="style1.css" rel="stylesheet">
<style type="text/css">
body{color:#<%=all_color%>; font-size:<%=all_size%>pt;	background:url(<%=all_background_img%>) <%=all_background_img_repeat%>; line-height:<%=all_line_height%>pt;}
table{color:#<%=all_color%>; font-size:<%=all_size%>pt; line-height:<%=all_line_height%>pt;}

#wrap{width:<%=width%>px; background:url(<%=wrap_bg_img%>);}

#head{width:<%=head_width%>px; height:<%=background_hight%>px; background:url(<%=background_img%>) no-repeat;}
#hd_logo{top:<%=margin_top%>px; left:<%=margin_left%>px; width:<%=logo_width%>px; height:<%=logo_height%>px; display:<%=logo_display%>;}
#hd_marquee{top:<%=marquee_top_width%>px; left:<%=marquee_left_width%>px; width:<%=marquee_width%>px; display:<%=marquee_display%>; color:#<%=marquee_color%>; font-size:<%=marquee_size%>pt;}
#aumenu{ margin-top:<%=aumenu_bottom_height%>px; margin-left:<%=aumenu_right_width%>px; font-size:<%=aumenu_size%>pt; color:#<%=aumenu_color%>;	display:<%=aumenu_display%>; width:<%=aumenu_width%>px;}
#aumenu a{color:#<%=aumenu_color%>;	font-size:<%=aumenu_size%>pt;}

#left{ width:<%=menu_left%>px; background:url(<%=left_background_img%>) <%=left_bg_repeat%>;}
#left a{font-size:<%=left_menu_font_size%>pt; color:#<%=menu_color%>;}
<%if xversion="3" then%>
#left_menu{margin-top:<%=menu_margin_top%>px; left:<%=left_menu_margin_left%>px;font-size:<%=left_menu_font_size%>pt;color:#<%=menu_color%>;display:<%=left_menu_display%>; display:none;}
<%else%>
#left_menu{margin-top:<%=menu_margin_top%>px; left:<%=left_menu_margin_left%>px;font-size:<%=left_menu_font_size%>pt;color:#<%=menu_color%>;display:<%=left_menu_display%>;}
<%end if%>

#left_login{margin-top:<%=left_login_margin_top%>px;left:<%=left_login_margin_left%>px;width:<%=left_login_width%>px; background:url(<%=left_login_bg_img%>);}
#left_vh{margin-top:<%=left_vh_margin_top%>px;left:<%=left_vh_margin_left%>px;width:<%=left_vh_width%>px;}
#left_cont{margin-top:<%=left_cont_margin_top%>px; left:<%=left_cont_margin_left%>px;display:<%=left_cont_display%>;}
#msn{left:<%=msn_margin_left%>px;display:<%=msn_display%>;}
#left_vh2{margin-top:<%=left_vh2_margin_top%>px;left:<%=left_vh2_margin_left%>px;width:<%=left_vh2_width%>px;}

#center{background:url(<%=right_background_img%>) <%=right_bg_repeat%>; width:<%=menu_right%>px;}
#sub_title{	color:#<%=page_title_color%>; font-size:<%=page_title_size%>pt; margin-top:<%=page_title_margin_top%>px; left:<%=page_title_margin_left%>px; display:<%=page_title_display%>;}
#sub_title2{color:#<%=page_title2_color%>; font-size:<%=page_title2_size%>pt; margin-top:<%=page_title2_margin_top%>px; left:<%=page_title2_margin_left%>px;	display:<%=page_title2_display%>;}
#cont{ margin-top:<%=all_margin_top%>px; left:<%=all_margin_left%>px; width:<%=cont_width%>px; font-size:<%=all_size%>pt; color:#<%=all_color%>; line-height:<%=all_line_height%>pt;}
#road{ margin-top:<%=road_margin_top%>px; left:<%=road_margin_left%>px; color:#<%=road_color%>; display:<%=road_display%>;}
#road a{color:#<%=road_color%>;	}
#banner{margin-top:<%=banner_margin_top%>px; left:<%=banner_margin_left%>px;}
 
#right{width:<%=ad_width%>px; left:<%=ad_left%>px; top:<%=ad_top%>px; color:#<%=all_color%>; font-size:<%=all_size%>pt; background:url(<%=ad_background%>) <%=ad_bg_repeat%>;}

#foot{font-size:<%=foot_size%>pt; color:#<%=foot_color%>; background:url(<%=foot_background_img%>); height:<%=foot_background_hight%>px; width:<%=width%>px;}

#connect01{	background-color:#<%=connect_color1%>;color:#<%=all_color%>;}
#connect02{	background-color:#<%=connect_color2%>;color:#<%=all_color%>;}
#guest_tb {	font-size:<%=guest_font_size%>pt; color:#<%=guest_font_color%>; background-color:#<%=guest_bgcolor%>;	}
.guest_mg_tb1{font-size:<%=guest_font_size%>pt;	color:#<%=guest_font_color%>; background-color:#<%=guest_mg_bgcolor1%>;}
.guest_mg_tb2{font-size:<%=guest_font_size%>pt;	color:#<%=guest_font_color%>; background-color:#<%=guest_mg_bgcolor2%>;}
#member_tb{	font-size:<%=all_size%>pt; color:#<%=all_color%>; }
#shop_tb{font-size:<%=shop_font_size%>pt;color:#<%=shop_font_color%>; }
.shop_tb1{font-size:<%=shop_font_size%>pt; color:#<%=shop_font_color%>; background-color:#<%=shop_bgcolor1%>;}
.shop_tb2{font-size:<%=shop_font_size%>pt; color:#<%=shop_font_color%>; background-color:#<%=shop_bgcolor2%>;}
.menu_title{color:#<%=menu_title_color%>; font-size:<%=menu_title_size%>pt;}
.menu_title A{color:#<%=menu_title_color%>; font-size:<%=menu_title_size%>pt;}
#module1{font-size:<%=all_size%>pt;	color:#<%=all_color%>; }

</style>
<script type="text/javascript" src="../Scripts/jquery-1.5.1.min.js"></script>
<script language="JavaScript" src="../js/menuCtrl.js" type="text/javascript"></script>
<link rel="stylesheet" href="../css/menu.css" type="text/css" media="screen" />
</head>
<%
   PAGE = Request.QueryString("PAGE")    ' 接收所要瀏覽的頁次
     
   IF PAGE = "" THEN
      PAGE = 1
   ELSE
      PAGE = PAGE
   END IF

%>
<body>
<!--#include virtual="expire1.asp"-->
<center>
<div id="wrap">
 <div id="head">
 	<div style="float:left; margin-top:0px; margin-left:0px;"><a href="default.asp" title="回首頁" alt="回首頁"><img src="images/logo_icon.gif" title="回首頁" alt="回首頁"></a></div>
  <%if aumenu_seat="2" then%>
  <div id="aumenu">
  		<%
		sql1="select id,title,link_url,target,img1,img2 from menu_authors where disp_opt='Y' and hid='"&hid&"' order by ser_no"
		set rs1=cn.execute(sql1)
		while not rs1.eof
		
		target=""
		
		if rs1("link_url")<>"" then
			link=rs1("link_url")
			
			if rs1("target")="Y" then
				target="target='_blank'"
			end if
			
		else
			link="index.asp?au_id="&rs1("id")
		end if
		
		if rs1("img1")<>"" then		
			if rs1("img2")<>"" then	'主選張有動畫圖
		%><a href="<%=link%>" <%=target%>><img src="<%=rs1("img1")%>" onMouseOver="this.src='<%=rs1("img2")%>'" onMouseOut="this.src='<%=rs1("img1")%>'" alt="<%=rs1("title")%>"></a><%
			else					' 主選單一張圖
		%><a href="<%=link%>" <%=target%>><img src="<%=rs1("img1")%>" alt="<%=rs1("title")%>"></a><%
			end if
		else						'主選單純文字
			authors_title=rs1("title")
			if aumenu_icon_img<>"" then
		%>
			<img src="<%=aumenu_icon_img%>" align="absmiddle" />
		<%
			end if
		%>
			<a href="<%=link%>" <%=target%> style="margin-right:<%=aumenu_link_margin_right%>px;"><%=authors_title%></a>
		<%
		end if		

		rs1.movenext
		wend
		%>
  </div>
  <%end if%>
  <div id="hd_logo">
			<%
			if right(trim(logo_img),3)<>"swf" then
			
				if logo_img<>"" then
			%>
				<a href="default.asp" title="回首頁" alt="回首頁"><img src="<%=logo_img%>" width="<%=logo_width%>" height="<%=logo_height%>" title="回首頁" alt="回首頁" /></a>
			<%
				else
			%>
				<img src="images/icon_ewalm_23.gif" title="回首頁" alt="回首頁" />
			<%
				end if
			else
			%>
			<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="<%=logo_width%>" height="<%=logo_height%>">
              <param name="movie" value="<%=logo_img%>" />
              <param name="quality" value="high" />
				<param name="wmode" value="transparent" />
              <embed src="<%=logo_img%>" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="<%=logo_width%>" height="<%=logo_height%>" wmode="transparent"></embed>
			  </object>
			<%
			end if
			%>		
  </div>
  <%if aumenu_seat="1" then%>
  <div id="aumenu">
  		<%
		sql1="select id,title,link_url,target,img1,img2 from menu_authors where disp_opt='Y' and hid='"&hid&"' order by ser_no"
		set rs1=cn.execute(sql1)
		while not rs1.eof
		
		target=""
		
		if rs1("link_url")<>"" then
			link=rs1("link_url")
			
			if rs1("link_target")="Y" then
				target="target='_blank'"
			end if
			
		else
			link="index.asp?au_id="&rs1("id")
		end if
		
		if rs1("img1")<>"" then		
			if rs1("img2")<>"" then	'主選張有動畫圖
		%><a href="<%=link%>" <%=target%>><img src="<%=rs1("img1")%>" onMouseOver="this.src='<%=rs1("img2")%>'" onMouseOut="this.src='<%=rs1("img1")%>'" alt="<%=rs1("title")%>"></a><%
			else					' 主選單一張圖
		%><a href="<%=link%>" <%=target%>><img src="<%=rs1("img1")%>" alt="<%=rs1("title")%>"></a><%
			end if
		else						'主選單純文字
			authors_title=rs1("title")
			if aumenu_icon_img<>"" then
		%>
			<img src="<%=aumenu_icon_img%>" align="absmiddle" />
		<%
			end if
		%>
			<a href="<%=link%>" <%=target%> style="margin-right:<%=aumenu_link_margin_right%>px;"><%=authors_title%></a>
		<%
		end if		

		rs1.movenext
		wend
		%>
  </div>
  <%end if%>
  <div id="hd_marquee">
		<marquee scrolldelay="<%=marquee_scrolldelay%>">
		<%
'		if crm_version="Y" then
'			sqlm="select * from marquee where disp_opt='Y' and examine='Y' order by ser_no"
'		else
			sqlm="select * from marquee where disp_opt='Y' and hid='"&hid&"' order by ser_no"
'		end if
		set rsm=cn.execute(sqlm)
		while not rsm.eof
			response.write rsm("title")&"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
		rsm.movenext
		wend
		%>
		</marquee>
  </div>
 </div>
  <%if xversion<>"5" then%>
 <div id="right"><%=HTMLDecode(ad_cont)%></div>
 <%end if%>
 <div id="left">
  <div id="left_vh2"><%=htmlDecode(left_vh2_cont)%></div>
	<%if left_login_display="Y" and left_login_seat="1" then%>
	<div id="left_login">
		<table width="<%=left_login_width%>" border="0" cellspacing="0" cellpadding="0">
		<%if left_login_head_img<>"" then%>
			<tr>
				<td><img src="<%=left_login_head_img%>" /></td>
			</tr>
		<%
		end if
		if session("member_login")<>"Y" then
		%>
				<form name="form3" action="log.asp" method="post">
                  <tr>
                    <td align="center" height="30">帳號
                    <input name="user_id" type="text" id="user_id" size="10" /></td>
                  </tr>
                  <tr>
                    <td align="center" height="30">密碼
                    <input name="user_pass" id="user_pass" type="password" size="10" /></td>
                  </tr>
                  <tr>
                    <td align="center">
					<input name="btn_s" type="button" value="登入" onClick="login();" /></td>
                  </tr>
				  <tr>
				  	<td align="right"><A href="#" style="margin-right:10px;" onClick="window.open('module17.asp','forget','height=300, width=500');">‧忘記密碼</A>&nbsp;&nbsp;<A href="#" style="margin-right:10px;" onClick="window.open('member_add.asp','add','height=550, width=600');">‧申請加入</A></td>
				  </tr>
				</form>
				<script>
					function login(){
						if (document.form3.user_id.value==""){
							alert("請輸入帳號");
							document.form3.user_id.focus();
						}
						else if (document.form3.user_pass.value==""){
							alert("請輸入密碼");
							document.form3.user_pass.focus();
						}
						else{
							document.form3.submit();
						}
					}
				</script>
		<%
		else
'		if crm_version="Y" then
'			sqlm="select id,authors_id,title from menu_sub where disp_opt='Y' and examine='Y' and use_module='12'"
'		else
			sqlm="select id,authors_id,title from menu_sub where disp_opt='Y' and use_module='12' and hid='"&hid&"'"
'		end if
			set rsm=cn.execute(sqlm)
			if not rsm.eof then
				member_url="<a href='index.asp?au_id="&rsm("authors_id")&"&sub_id="&rsm("id")&"'>"&rsm("title")&"</a>"
			end if
		%>
			<tr>
				<td align="center">
				<%=session("ch_name")%>，您好&nbsp;&nbsp;&nbsp;&nbsp;目前已登入</span><br />
				<a href="logout.asp">登出</a>&nbsp;&nbsp;<%=member_url%>
				</td>
			</tr>
		<%
		end if
		%>
        </table>	
	</div>
	<%end if%>
 <div id="left_menu">
  	<ul id="navmenu-v" style="left:<%=left_menu_margin_left%>px;">
		<%
			call getSubMenu(au_id)
			
			sub getSubMenu(id)
				sqlm2="select id,title,over_img,out_img,link_url,link_target from menu_sub where fid="&id&" and hid='1' and disp_opt='Y' order by ser_no,id"
								 
				set rsm2=cn.execute(Sqlm2)
				if not rsm2.eof then
					if id<>au_id then
						Response.Write "<ul>"
					end if
					while not rsm2.eof
						if rsm2("link_url")<>"" then
							url="<a href='"&rsm2("link_url")&"' target='"&rsm2("link_target")&"'>"
						else
							url="<a href='index.asp?au_id="&request("au_id")&"&sub_id="&rsm2("id")&"' style='font-size:"&left_menu_font_size&"pt; padding:0;'>"
						end if
						
						if rsm2("over_img")<>"" then
							if rsm2("out_img")<>"" then
								Response.Write "<li style='padding:0; width:191;'>"&url&"<img src='"&rsm2("over_img")&"' onMouseOver='this.src=&#039;"&rsm2("out_img")&"&#039;' onMouseOut='this.src=&#039;"&rsm2("over_img")&"&#039;' alt='"&rsm2("title")&"' /></a>"
							else
								Response.Write "<li style='padding:0;'>"&url&"<img src='"&rsm2("over_img")&"' alt='"&rsm2("title")&"' /></a>"
							end if
						else
							Response.Write "<li>"&url&rsm2("title")&"</a>"
						end if
						
							call getSubMenu(rsm2("id"))
						Response.Write "</li>"
						rsm2.movenext
					wend
					if id<>au_id then
						Response.Write "</ul>"
					end if
				end if
'				if id<>0 then
'					Response.Write "</ul>"
'				end if
			end sub
		%>
	</ul>
 
 <!--
		<table border="0" cellpadding="0" cellspacing="0" align="center" width="<%=left_menu_width%>">
	<%
		'顯示分類選單(II) start
'		if crm_version="Y" then
'			sqlm="select id,title,over_img,out_img,link_url,link_target from menu_sub where disp_opt='Y' and examine='Y' and authors_id='"&au_id&"' order by ser_no"		
'		else
			sqlm="select id,title,over_img,out_img,link_url,link_target from menu_sub where disp_opt='Y' and hid='"&hid&"' and fid='"&au_id&"' order by ser_no"
'		end if
		set rsm=cn.execute(Sqlm)
		while not rsm.eof
		
		if rsm("link_url")<>"" then
			url="<a href='"&rsm("link_url")&"' target='"&rsm("link_target")&"'>"
		else
			url="<a href='index.asp?au_id="&request("au_id")&"&sub_id="&rsm("id")&"' style='font-size:"&left_menu_font_size&"pt;'>"
		end if

		if rsm("over_img")<>"" then
	%>
		<tr>
			<td valign="middle">
	<%
			if rsm("out_img")<>"" then
	%>
			<%=url%><img src="<%=rsm("over_img")%>" onMouseOver="this.src='<%=rsm("out_img")%>'" onMouseOut="this.src='<%=rsm("over_img")%>'" alt="<%=rsm("title")%>" /></a>
	<%
			else
	%>
			<%=url%><img src="<%=rsm("over_img")%>" alt="<%=rsm("title")%>" /></a>
	<%
			end if
	%>
			</td>
		</tr>
		<tr>
			<td height="<%=menu_height%>"></td>
		</tr>
	<%
		else
	%>
		<tr>
			<td height="<%=left_menu_height%>" align="left" style="background:url(<%=left_menu_bg_img%>) top no-repeat;"><%if trim(menu_icon_img)<>"" then%><img src="<%=menu_icon_img%>" align="absmiddle" style="margin-left:<%=left_menu_margin_left%>px; margin-right:3px;" /><%end if%><%=url%><%=rsm("title")%></a></td>
		</tr>
		<tr>
			<td height="<%=menu_height%>"></td>
		</tr>
	<%	
		end if
		rsm.movenext
		wend
	%>
		</table>-->
 </div>
	<%if left_login_display="Y" and left_login_seat="2" then%>
	<div id="left_login">
		<table width="<%=left_login_width%>" border="0" cellspacing="0" cellpadding="0">
		<%if left_login_head_img<>"" then%>
			<tr>
				<td><img src="<%=left_login_head_img%>" /></td>
			</tr>
		<%
		end if
		if session("member_login")<>"Y" then
		%>
				<form name="form3" action="log.asp" method="post">
                  <tr>
                    <td align="center" height="30">帳號
                    <input name="user_id" type="text" id="user_id" size="10" /></td>
                  </tr>
                  <tr>
                    <td align="center" height="30">密碼
                    <input name="user_pass" id="user_pass" type="password" size="10" /></td>
                  </tr>
                  <tr>
                    <td align="center">
					<input name="btn_s" type="button" value="登入" onClick="login();" /></td>
                  </tr>
				  <tr>
				  	<td align="right"><A href="#" style="margin-right:10px;" onClick="window.open('module17.asp','forget','height=300, width=500');">‧忘記密碼</A>&nbsp;&nbsp;<A href="#" style="margin-right:10px;" onClick="window.open('member_add.asp','add','height=550, width=600');">‧申請加入</A></td>
				  </tr>
				</form>
				<script>
					function login(){
						if (document.form3.user_id.value==""){
							alert("請輸入帳號");
							document.form3.user_id.focus();
						}
						else if (document.form3.user_pass.value==""){
							alert("請輸入密碼");
							document.form3.user_pass.focus();
						}
						else{
							document.form3.submit();
						}
					}
				</script>
		<%
		else
'			if crm_version="Y" then
'				sqlm="select id,authors_id,title from menu_sub where disp_opt='Y' and examine='Y' and use_module='12'"
'			else
				sqlm="select id,authors_id,title from menu_sub where disp_opt='Y' and use_module='12' and hid='"&hid&"'"
'			end if
			set rsm=cn.execute(sqlm)
			if not rsm.eof then
				member_url="<a href='index.asp?au_id="&rsm("authors_id")&"&sub_id="&rsm("id")&"'>"&rsm("title")&"</a>"
			end if
		%>
			<tr>
				<td align="center">
				<%=session("ch_name")%>，您好&nbsp;&nbsp;&nbsp;&nbsp;目前已登入</span><br />
				<a href="logout.asp">登出</a>&nbsp;&nbsp;<%=member_url%>
				</td>
			</tr>
		<%
		end if
		%>
        </table>	
	</div>
	<%end if%>
 <div id="left_cont">
		<table cellpadding="0" cellspacing="0" border="0" align="center">
	<%
		sql9="select img1,url_link from cont where disp_opt='Y' and hid='"&hid&"' order by ser_no,id "
		set rs9=cn.execute(Sql9)
		while not rs9.eof
	%>
		<tr>
			<td valign="middle"><%if rs9("img1")<>"" then%><a href="<%=rs9("url_link")%>" target="_blank"><img src="<%=trim(rs9("img1"))%>" width="<%=left_cont_width%>" height="<%=left_cont_height%>" ></a><%else%><a href="<%=rs9("url_link")%>" target="_blank"><img src="images/pic_03.jpg" width="160" height="50" ></a><%end if%></td>
		</tr>
		<tr>
			<td height="<%=left_cont_line_height%>"></td>
		</tr>
	<%
		rs9.movenext
		wend
	%>
		</table>
 </div>
 <div id="msn">
		<table border="0" cellpadding="0" cellspacing="0">
		<%
		if msn_title_img<>"" then
		%>
			<tr>
				<td valign="middle"><img src="<%=msn_title_img%>"></td>
			</tr>
		<%
		end if
		%>
			<tr>
				<td valign="middle"><%=msn%></td>
			</tr>
		</table>
 </div>
 <div id="left_vh"><%=htmlDecode(left_vh_cont)%></div>
 </div>
 	<%
	if sub_id="" then
'		if crm_version="Y" then
'			sql1="select top 1 id from menu_sub where disp_opt='Y' and examine='Y' and authors_id='"&au_id&"' order by ser_no,id"
'		else
			sql1="select top 1 id from menu_sub where disp_opt='Y' and authors_id='"&au_id&"' and hid='"&hid&"' order by ser_no,id"
'		end if
		set rs1=cn.execute(Sql1)
		if rs1.eof then
			sub_id=""
		else
			sub_id=rs1(0)
'			if crm_version="Y" then
'				sql2="select top 1 id from menu where disp_opt='Y' and examine='Y' and sub_id='"&sub_id&"' order by ser_no,id"
'			else
				sql2="select top 1 id from menu where disp_opt='Y' and sub_id='"&sub_id&"' and hid='"&hid&"' order by ser_no,id"
'			end if
			set rs2=cn.execute(sql2)
			if not rs2.eof then
				id=rs2(0)
			end if
		end if
	end if
	%>
 <div id="center">
  <div id="road"><%=road%></div>
				<%
				'頁中區banner start
'				if crm_version="Y" then
'					sqlb="select banner_img from menu_sub where id='"&sub_id&"' and disp_opt='Y' and examine='Y'"
'				else
					sqlb="select banner_img from menu_sub where id='"&sub_id&"' and hid='"&hid&"' and disp_opt='Y'"
'				end if
				set rsb=cn.execute(sqlb)
				if not rsb.eof then
					if trim(rsb(0))<>"" then
				%>
		<div id="banner">
				<img src="<%=rsb(0)%>" />
		</div>
				<%
					end if
				end if
				
				'頁中區banner end
				%>
  <div id="sub_title">
				<%'頁中區標題start%>
				<%
'				if crm_version="Y" then
'					sql1="select * from menu_Sub where id='"&sub_id&"' and disp_opt='Y' and examine='Y'"
'				else
					sql1="select * from menu_Sub where id='"&sub_id&"' and hid='"&hid&"' and disp_opt='Y'"
'				end if
				set rs1=cn.execute(Sql1)
				if not rs1.eof then
					sub_title=rs1("title")
					sub_popular_disp = rs1("popular_disp")
					sub_popular = rs1("popular")
					use_module=rs1("use_module")
					if rs1("title2")<>"" then
						sub_title2=rs1("title2")
					end if
					sub_cont=HTMLDecode(rs1("cont"))
					member_read=rs1("member_read")					
				end if
				%>
					<%if submenu_title_img<>"" then%><img src="<%=submenu_title_img%>" align="absmiddle" /><%end if%><%=sub_title%>
				<%'頁中區標題end%>
  </div>
  <div id="sub_title2"><%=sub_title2%></div>
  <div id="cont">
				<%
				'----------------限制會員流覽start-----------------
				if member_read<>"" then
'					if crm_version="Y" then
'						sqlv="select id,authors_id from menu_sub where disp_opt='Y' and examine='Y' and use_module='12'"
'					else
						sqlv="select id,authors_id from menu_sub where disp_opt='Y' and use_module='12' and hid='"&hid&"'"
'					end if
					set rsv=cn.execute(sqlv)
					if not rsv.eof then
						login_url = "index.asp?au_id="&rsv("authors_id")&"&sub_id="&rsv("id")
					else
						login_url = "default.asp"
					end if
				
					if member_read="1" and session("vip")<>"1" and session("vip")<>"2" then						
				%>
						
						<script>
							alert("此頁面僅限會員流覽，請登入會員。");
							window.location.href="<%=login_url%>";
						</script>
				<%					
					end if
					if member_read="2" and session("vip")<>"2" then
				%>
						<script>
							alert("此頁面僅限VIP會員流覽，請登入會員。");
							window.location.href="<%=login_url%>";
						</script>
				<%					
					end if					
				end if
				'----------------限制會員流覽end-----------------
'				if crm_version="Y" then
'					sql="select * from menu where disp_opt='Y' and examine='Y' and sub_id='"&sub_id&"' order by ser_no,id desc "
'				else
					sql="select * from menu where disp_opt='Y' and sub_id='"&sub_id&"' and hid='"&hid&"' order by ser_no,id desc "
'				end if
				set rs=cn.execute(Sql)
				if rs.eof then
					sqlx = "sp_popular '"&sub_id&"','3','"&hid&"'"
					cn.execute(sqlx)	
				%>
				<%=sub_cont%>&nbsp;&nbsp;
				<%
				  	select case use_module
						case "1"	'連絡我們
				  %>
				  	<br>
					<iframe src="module1.aspx" scrolling="no" frameborder="0" width="550" height="400" allowtransparency="true"></iframe>
				  		<!--include virtual="module1.asp"-->
				  <%
						case "10"	'網站地圖
				  %>
				  		<!--#include virtual="module11.asp"-->
				  <%
						case "11"	'留言板
				  %>
				  		<!--#include virtual="module12.asp"-->
				  <%
						case "12"	'會員專區
				  %>
				  		<!--#include virtual="module13.asp"-->
				  <%
						case "13"	'購物車
				  %>
				  		<!--#include virtual="module14.asp"-->
				  <%
						case "14"	'購物資訊
				  %>
				  		<!--#include virtual="module15.asp"-->
				  <%
						case "15"	'快速訂購單
				  %>
				  		<!--#include virtual="module16.asp"-->
				  <%
						case "16"	'忘記密碼
				  %>
				  		<!--#include virtual="module17.asp"-->
				  <%
					End select
				    if sub_popular_disp="Y" then
					%><br>
						<div align="right">人氣值：<%=sub_popular%></div>
					<%
					end if
				else
					popular_disp = rs("popular_disp")
					popular = rs("popular")
					sqlx = "sp_popular '"&sub_id&"','3','"&hid&"'"
					cn.execute(sqlx)
				%>
				<%=sub_cont%>
				<%
					select case use_module
						case "1"	'快速聯絡單
				  %>
				  		<!--#include virtual="module1.asp"-->
				  <%
						case "2"	'圖文瀏覽
				  %>
				  		<!--#include virtual="module2.asp"-->
				  <%
						case "3"	'頁籤瀏覽
				  %>
				  		<!--#include virtual="module3.asp"-->
				  <%
						case "4"	'文字清單
				  %>
				  		<!--#include virtual="module4.asp"-->
				  <%
						case "5"	'資訊內頁
				  %>
				  		<!--#include virtual="module5.asp"-->
				  <%
						case "17"	'資訊內頁
				  %>
				  		<!--#include virtual="module5.asp"-->
				  <%
						case "6"	'檔案下載
				  %>
				  		<!--#include virtual="module6.asp"-->
				  <%
						case "7"	'影音播放
				  %>
				  		<!--#include virtual="module7.asp"-->
				  <%
						case "8"	'型錄樣式
				  %>
				  		<!--#include virtual="module8.asp"-->
				  <%
						case "9"	'友善連結
				  %>
				  		<!--#include virtual="module9.asp"-->
				  <%
					End select
				    if popular_disp="Y" then
						if use_module<>"2" and use_module<>"3" and use_module<>"4" and use_module<>"6" and use_module<>"9" then
					%><br>
						<div align="right">人氣值：<%=popular%></div>
					<%
						else
							if sub_popular_disp="Y" then
						%>
								<div align="right">人氣值：<%=sub_popular%></div>
						<%
							end if
						end if
					end if
				end if			
				%>
  </div>
 </div>
  <%if xversion="5" then%>
 <div id="right"><%=HTMLDecode(ad_cont)%></div>
 <%end if%>
 <div id="foot"><%=HTMLDecode(foot_text)%></div>
</div>
</center>
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
</body>

</html>
