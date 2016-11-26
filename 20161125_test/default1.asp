<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ Language=VBScript CodePage=950%>
<!--#include virtual="lib/cn.asp"-->
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
<title><%=title%></title>
<style type="text/css">
	body{margin:0px 0px 0px 0px; font-family:新細明體, Arial, Helvetica, sans-serif; background:url(/whome/big-bg.jpg) repeat-x;}
	img{border:none;}
	div{/*margin-left:90px;*/ font-size:10pt; padding:0px;}
	a{text-decoration:none; color:#727171; line-height:15pt; padding:0px; margin:0px;}
	td{ font-size:10pt;}
	td a{color:#7A6A56;}
	/*#info, #color_btn, #links{display: block;}*/
	#info .left, #info .center, #info .right{float:left;}
	#info .left .cont1>div{ background: url(../whome/info_li_bg_02.png) no-repeat left bottom;padding: 10px 0;padding-left: 30px;height:20px;}
	/*#info>.left .cont1>div:last-child, #info>.left .cont2>div:last-child, #info>.left .cont3>div:last-child{background:none;}*/
	#info .left .cont2>div{ background: url(../whome/info_li_bg_02.png) no-repeat left bottom;padding: 10px 0;padding-left: 30px;height:20px;}
	#info .left .cont3>div{ background: url(../whome/info_li_bg_02.png) no-repeat left bottom;padding: 10px 0;padding-left: 30px;height:20px;}
	.left .cont1 .date{width:17%;display: inline-table;}
	.left .cont1 .branch{width:12%;display: inline-table;}
	.left .cont1 .cont{width:65%;display: inline-table;}
	.left .cont2 .date{width:17%;display: inline-table;}
	.left .cont2 .branch{width:12%;display: inline-table;}
	.left .cont2 .cont{width:65%;display: inline-table;}
	.left .cont3 .date{width:17%;display: inline-table;}
	.left .cont3 .branch{width:12%;display: inline-table;}
	.left .cont3 .cont{width:65%;display: inline-table;}
	#info .center .cont1>div { background: url(../whome/info_li_bg_03.png) no-repeat left bottom;padding: 16px 0 4px;padding-left: 53px;}
	#info .center .cont2>div { background: url(../whome/info_li_bg_03.png) no-repeat left bottom;padding: 16px 0 4px;padding-left: 53px;}
	#info .center .cont3>div { background: url(../whome/info_li_bg_03.png) no-repeat left bottom;padding: 16px 0 4px;padding-left: 53px;}
	/*#info>.center .cont1>div:last-child, #info>.center .cont2>div:last-child, #info>.center .cont3>div:last-child{background:none;}*/
	#links td{text-align:center; width: 1004px;}
	#links img {margin: 15px 4px;}
	td.right>div>a>img {padding-bottom: 1px;}
	#logo_link {width: 600px;height: 80px;position: absolute;top: 11px;left: 50%;margin-left: -485px;}
	#info .right img {padding: 3px 0px;}
</style>
</head>

<body>

<table cellpadding="0" cellspacing="0" border="0" width="1004" align="center" style="background: #fff; width:1004px; max-width:1004px;">
	<tr>
		<td height="98" align="right" valign="top" background="../whome/bg_laiyi_01.png"><div style="width:130px; margin-top:40px; text-align:left;margin-right: 12px;"><a href="welcome.asp" style="color:#898989; font-size:9pt;">回首頁</a> | <a href="http://163.24.65.10/site/" target="_blank" style="color:#898989; font-size:9pt;">舊網站連結</a></div><a href="/tw/welcome.asp"><div id="logo_link"></div></a></td>
	</tr>
	<tr>
		<td colspan="2"><a href="index.asp?au_id=1"><img src="../whome/btn_02.png" border="0" onMouseOver="this.src='../whome/btn_over_02.png'" onMouseOut="this.src='../whome/btn_02.png'" /></a><a href="index.asp?au_id=2"><img src="../whome/btn_03.png" border="0" onMouseOver="this.src='../whome/btn_over_03.png'" onMouseOut="this.src='../whome/btn_03.png'" /></a><a href="index.asp?au_id=3"><img src="../whome/btn_04.png" border="0" onMouseOver="this.src='../whome/btn_over_04.png'" onMouseOut="this.src='../whome/btn_04.png'" /></a><a href="index.asp?au_id=4"><img src="../whome/btn_05.png" border="0" onMouseOver="this.src='../whome/btn_over_05.png'" onMouseOut="this.src='../whome/btn_05.png'" /></a><a href="index.asp?au_id=5"><img src="../whome/btn_06.png" border="0" onMouseOver="this.src='../whome/btn_over_06.png'" onMouseOut="this.src='../whome/btn_06.png'" /></a><a href="index.asp?au_id=6"><img src="../whome/btn_07.png" border="0" onMouseOver="this.src='../whome/btn_over_07.png'" onMouseOut="this.src='../whome/btn_07.png'" /></a><a href="index.asp?au_id=7"><img src="../whome/btn_08.png" border="0" onMouseOver="this.src='../whome/btn_over_08.png'" onMouseOut="this.src='../whome/btn_08.png'" /></a></td>
	</tr>
	<tr>
		<td align="center" style="background:url(/whome/banner_01.png) center no-repeat;" height="327"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="980" height="327" style="margin-top:9px;">
          <param name="movie" value="../whome/banner.swf">
          <param name="quality" value="high">
          <embed src="../whome/banner.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="980" height="327" style="margin-top:9px;"></embed>
	    </object></td>
	</tr>
	<tr>
		<td background="../whome/bg_laiyi_02.png" height="53" valign="middle" align="center">
		<marquee scrolldelay="200" style="color:#942829; font-size:10pt; margin-top:10px;width: 854px;">
		<%
		sql="select title from marquee where disp_opt='Y' order by ser_no"
		set rs=cn.execute(sql)
		while not rs.eof
			response.write rs(0)&"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"		
		rs.movenext
		wend
		%>
		</marquee>
		</td>
	</tr>
    <!--20141023新增-->
    
	<tr id="info">
    	<td valign="top">
        	<div class="left">
                <div style="width:492px;">
                    <div class="title1">
                        <a href="index.asp?au_id=145&sub_id=124"><img src="../whome/info_02.png"></a>
                    </div>
                    <div class="cont1">
                    <%
                    sql="select top 5 sub_id,id,title,note_date,orga,ser_no from menu where sub_id in (select id from menu_sub where title='常駐公告') and disp_opt='Y' order by ser_no,note_date desc,id desc"
                    set rs=cn.execute(sql)
                    while not rs.eof
                    %>
                        <div>
                            <span class="date" style="color:#7A6A56;">
                                ‧ <%=rs("note_date")%> 
                            </span>
                            <span class="branch" style="color:#717071;">
                                <%=rs("orga")%>
                            </span>
                            <span class="cont" style="color:#231815;">
                                <A href="index.asp?au_id=2&sub_id=<%=rs("sub_id")%>&id=<%=rs("id")%>"><%=left(rs("title"),24)%></A>
                            </span>
                        </div>
                    <%
                    rs.movenext
                    wend
                    %>
                    </div>
                    <div class="title2">
                        <a href="index.asp?au_id=145&sub_id=125"><img src="../whome/info_09.png"></a>
                    </div>
                    <div class="cont2">
                    <%
                    sql="select top 5 sub_id,id,title,note_date,orga from menu where sub_id in (select id from menu_sub where title='行政公告') and disp_opt='Y' order by ser_no,note_date desc"
                    set rs=cn.execute(sql)
                    while not rs.eof
                    %>
                        <div>
                            <span class="date" style="color:#7A6A56;">
                                ‧ <%=rs("note_date")%> 
                            </span>
                            <span class="branch" style="color:#717071;">
                                <%=rs("orga")%>
                            </span>
                            <span class="cont" style="color:#231815;">
                                <A href="index.asp?au_id=2&sub_id=<%=rs("sub_id")%>&id=<%=rs("id")%>"><%=left(rs("title"),24)%></A>
                            </span>
                        </div>
                    <%
                    rs.movenext
                    wend
                    %>
                    </div>
                    <div class="title3">
                        <a href="index.asp?au_id=145&sub_id=126"><img src="../whome/info_20.png"></a>
                    </div>
                    <div class="cont3">
                    <%
                    sql="select top 5 sub_id,id,title,note_date,orga from menu where sub_id in (select id from menu_sub where title='研習公告') and disp_opt='Y' order by ser_no,note_date desc"
                    set rs=cn.execute(sql)
                    while not rs.eof
                    %>
                        <div>
                            <span class="date" style="color:#7A6A56;">
                                ‧ <%=rs("note_date")%> 
                            </span>
                            <span class="branch" style="color:#717071;">
                                <%=rs("orga")%>
                            </span>
                            <span class="cont" style="color:#231815;">
                                <A href="index.asp?au_id=2&sub_id=<%=rs("sub_id")%>&id=<%=rs("id")%>"><%=left(rs("title"),24)%></A>
                            </span>
                        </div>
                    <%
                    rs.movenext
                    wend
                    %>
                    </div>
                    <img src="../whome/info_26.png">
                </div>
            </div>
        	<div class="center">
                <div style="width:298px;">
                    <div class="title1">
                        <a href="index.asp?au_id=154&sub_id=128"><img src="../whome/info_03.png"></a>
                    </div>                    
                    <div class="cont1">
                        <%
                        sql="select top 5 sub_id,id,title from menu where sub_id='128' and disp_opt='Y' order by ser_no,note_date desc"
                        set rs=cn.execute(sql)
                        while not rs.eof
                        %>
                        <div>
                            <span style="color:#231815;">
                                <a href="index.asp?au_id=154&sub_id=128&id=<%=rs("id")%>" style="color:#000000;"><%=left(rs("title"),16)%></a>
                            </span>
                        </div>
                        <%
                        rs.movenext
                        wend
                        %>
                    </div>
                    <div class="title2">
                      <a href="index.asp?au_id=154&sub_id=129"><img src="../whome/info_10.png"></a>
                    </div>
                    <div class="cont2">
                        <%
                        sql="select top 5 sub_id,id,title from menu where sub_id='129' and disp_opt='Y' order by ser_no,note_date desc"
                        set rs=cn.execute(sql)
                        while not rs.eof
                        %>
                        <div>
                            <span style="color:#231815;">
                                <a href="index.asp?au_id=154&sub_id=129&id=<%=rs("id")%>" style="color:#000000;"><%=left(rs("title"),16)%></a>
                            </span>
                        </div>
                        <%
                        rs.movenext
                        wend
                        %>
                    </div>
                    <div class="title3">
                      <a href="index.asp?au_id=154&sub_id=130"><img src="../whome/info_21.png"></a>
                    </div>
                    <div class="cont3">
                        <%
                        sql="select top 5 sub_id,id,title from menu where sub_id='130' and disp_opt='Y' order by ser_no,note_date desc"
                        set rs=cn.execute(sql)
                        while not rs.eof
                        %>
                        <div>
                            <span style="color:#231815;">
                                <a href="index.asp?au_id=154&sub_id=130&id=<%=rs("id")%>" style="color:#000000;"><%=left(rs("title"),16)%></a>
                            </span>
                        </div>
                        <%
                        rs.movenext
                        wend
                        %>
                    </div>
                    <img src="../whome/info_27.png">
                </div>
            </div>
        	<div class="right">
                <div style=" width:214px;">
                    <a href="index.asp?au_id=146"><img src="../whome/right_btn_03.png" /></a>
                    <a href="index.asp?au_id=147"><img src="../whome/right_btn_04.png" /></a>
                    <a href="index.asp?au_id=148"><img src="../whome/right_btn_05.png" /></a>
                    <a href="index.asp?au_id=149"><img src="../whome/right_btn_06.png" /></a>
                    <a href="index.asp?au_id=150&sub_id=113"><img src="../whome/right_btn_07.png" /></a>
                    <a href="index.asp?au_id=2&sub_id=19"><img src="../whome/right_btn_08.png" /></a>
                    <a href="index.asp?au_id=214&sub_id=215"><img src="../whome/right_btn_09.png" /></a>
                    <a href="index.asp?au_id=204&sub_id=205"><img src="../whome/right_btn_10.png" /></a>
                    <a href="index.asp?au_id=173&sub_id=179"><img src="../whome/right_btn_11.png" /></a>
                    <a href="index.asp?au_id=211&sub_id=212"><img src="../whome/right_btn_12.png" /></a>
                </div>
            </div>
		</td>
    </tr>
	<tr id="color_btn">
    	<td>
            <div style="float:left; width:251px;">
                <div style=" width:234px; height:174px; background:url(../whome/color_btn_bg_03.jpg) no-repeat; margin:auto; padding-top:60px; cursor:pointer;" onclick="javascript:location.href='index.asp?au_id=145&sub_id=251'">
                    <div style=" width:215px; height:165px; margin:auto;">
                        <%
                        sql="select media_link from menu where sub_id in (158,144,247,248,249,250) and disp_opt='Y' order by ser_no, id desc"
                        set rs=cn.execute(sql)
                        if not rs.eof then
							videoStr=HtmlDecode(rs(0))
							videoStr=HTMLDecode(replace(videoStr,"330","215"))
							videoStr=HTMLDecode(replace(videoStr,"248","165"))
                            response.write videoStr
                        else
                            response.write "<img src='../whome/color_btn_03.jpg'>"
                        end if
                        %>
                        <script>
							console.log('<%response.write HtmlDecode(rs(0))%>');
                        </script>
                    </div>
                </div>
            </div>
            <div style="float:left; width:251px;">
                <div style=" width:234px; height:174px; background:url(../whome/color_btn_bg_05.jpg) no-repeat; margin:auto; padding-top:60px;">
                    <div style=" width:215px; height:165px; margin:auto;">
                        <%
                        sql="select top 1 img1 from menu where sub_id in (47,58,69,91,227,231,136,143,245,246) and img1<>'' and disp_opt='Y' order by id desc"
                        set rs=cn.execute(sql)
                        if not rs.eof then
                            photoimg=rs(0)
                        else
                            photoimg="../whome/color_btn_05.jpg"
                        end if
                        %>
                        <a href="index.asp?au_id=145&sub_id=223"><img src="<%=photoimg%>" width="215" height="165"></a>
                    </div>
                </div>
            </div>
            <div style="float:left; width:251px;">
                <div style=" width:234px; height:174px; background:url(../whome/color_btn_bg_07.jpg) no-repeat; margin:auto; padding-top:60px;">
                    <div style=" width:215px; height:165px; margin:auto;">
                        <%
                        sql="select top 1 img1 from menu where sub_id=143 and img1<>'' and disp_opt='Y' order by ser_no, id desc"
                        set rs=cn.execute(sql)
                        if not rs.eof then
                            photoimg=rs(0)
                        else
                            photoimg="../whome/color_btn_07.jpg"
                        end if
                        %>
                        <a href="index.asp?au_id=153"><img src="<%=photoimg%>" width="215" height="165"></a>
                    </div>
                </div>
            </div>
            <div style="float:left; width:251px;">
                <div style=" width:234px; height:174px; background:url(../whome/color_btn_bg_09.jpg) no-repeat; margin:auto; padding-top:60px;">
                    <div style=" width:215px; height:165px; margin:auto;">
                        <%
                        sql="select top 1 img1 from menu where sub_id=136 and img1<>'' and disp_opt='Y' order by ser_no, id desc"
                        set rs=cn.execute(sql)
                        if not rs.eof then
                            photoimg=rs(0)
                        else
                            photoimg="../whome/color_btn_09.jpg"
                        end if
                        %>
                        <a href="index.asp?au_id=152"><img src="<%=photoimg%>" width="215" height="165"></a>
                    </div>
                </div>
            </div>
        </td>
    </tr>
    <tr id="links">
    	<td><%
			sql9="select img1,url_link from cont where disp_opt='Y' and hid='"&hid&"' order by ser_no,id "
			set rs9=cn.execute(Sql9)
			while not rs9.eof
		%><%if rs9("img1")<>"" then%><a href="<%=rs9("url_link")%>" target="_blank"><img src="<%=trim(rs9("img1"))%>" width="155" height="65" style="border:#ffffff solid 2px;" ></a><%else%><a href="<%=rs9("url_link")%>" target="_blank"><img src="images/pic_03.jpg" width="155" height="65" ></a><%end if%><%
		rs9.movenext
		wend
		%></td>
    </tr>
    <tr id="fb">
    	<td>
    		<!--<iframe src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fpages%2F%25E4%25BE%2586%25E7%25BE%25A9%25E9%25AB%2598%25E4%25B8%25AD%25E5%25B9%25B8%25E7%25A6%258F%25E5%25AE%25B6%25E5%259C%2592%2F321924764490082%3Ffref%3Dts&amp;width=1004&amp;height=290&amp;colorscheme=light&amp;show_faces=true&amp;header=true&amp;stream=false&amp;show_border=true" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:1004px; height:290px;" allowTransparency="true"></iframe>-->
            <iframe src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fpages%2F%25E5%25B1%258F%25E6%259D%25B1%25E7%25B8%25A3%25E7%25AB%258B%25E4%25BE%2586%25E7%25BE%25A9%25E9%25AB%2598%25E4%25B8%25AD%25E5%25AE%2598%25E7%25B6%25B2%2F741165165956218&amp;width=1004&amp;height=290&amp;colorscheme=light&amp;show_faces=true&amp;header=true&amp;stream=false&amp;show_border=true" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:1004px; height:290px;" allowTransparency="true"></iframe>
        </td>
    </tr>
    
    <!--20141023修改END-->
	<tr>
		<td height="64" background="../whome/bg_laiyi_footer_34.png" align="center" valign="middle" style="color:#9FA0A0; font-size:9pt;">Copyright &copy; 2014<br />校址/Address：92241屏東縣來義鄉古樓村中正路147號 電話/TEL： (08)7850086 傳真/FAX： (08)7850175 網管Webmaster：cjkuei@ms.lyhs.ptc.edu.tw</td>
	</tr>
</table>

<map name="Map">
  <area shape="rect" coords="14,13,29,23" href="more">
</map>
</body>
</html>
