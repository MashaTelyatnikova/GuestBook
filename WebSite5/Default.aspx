<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html>

<HTML>
	<HEAD>
		<META http-equiv="Content-Type" content="text/html; charset=utf-8">
		<TITLE>
			Телятникова Мария
		</TITLE>
		<LINK href="style.css" rel="stylesheet" type="text/css">
		<LINK href="guest.css" rel="stylesheet" type="text/css">
		<LINK href="media_queries.css" rel="stylesheet" type="text/css">
		<SCRIPT src = "guestbook.js" language = "JavaScript" type = "text/javascript"></SCRIPT>
		<!-- html5.js for IE less THan 9 -->
		<!--[if lt IE 9]>
		<SCRIPT src="http://html5shim.googlecode.com/svn/TRunk/html5.js"></SCRIPT>
		<![endif]-->

		<!-- css3-mediaqueries.js for IE less THan 9 -->
		<!--[if lt IE 9]>
		<SCRIPT src="http://css3-mediaqueries-js.googlecode.com/svn/TRunk/css3-mediaqueries.js"></SCRIPT>
		<![endif]-->
		
	</HEAD>
	
	<BODY >
	<form id="Form1" runat="server">
		<DIV id="Main">
			<HEADER id="header">

				<IMG id="site-logo" src="design/images/2.gif" alt="">

		
			</HEADER>
	
			<DIV id="ContentPage">
				<TABLE id="TableContentsLayout">
					<TR>
						<TD colspan=2>
							<ARTICLE id="TopContent" class="clearfix">
								<FIGURE id="TopContentImage"> 
									<IMG src="design/images/papertop.jpg" alt=""> 
								</FIGURE>			
							</ARTICLE>
						</TD>
					<TR>
						<TD>
							&nbsp;
						</TD>
						<TD>
							&nbsp;
						</TD>
					<TR>
						<TH colspan=2 style="text-align:center;color:navy">
							Гостевая книга
						</TH>
					<TR>
						<TD colspan=2 style="text-align:left;">
								<div style="text-align: center;">
								 <asp:LinkButton ID="LinkButton1" PostBackUrl="#win2" class="button button-red" Text="Комментировать" OnClick="ChangeCaptcha" runat="server"/>
								</div>
								<p></p>
								<a href="#x" class="overlay" id="win2"></a>
								<div class="popup">
								    <asp:TextBox ID="captcha" runat="server"/>
								    <asp:ImageButton ID="ImageButton1"  ImageUrl="design/images/update.png" OnClick="ChangeCaptcha" runat="server"/> 
									
									<br>
									<figcaption style="font-size:30px;">
										Введите число с картинки
									</figcaption>
									<figure>
									    <asp:TextBox ID="tt" runat="server"/>
									</figure>
									
									<br>
									<figcaption style="font-size:30px;">
										Комментарий
									</figcaption>
                                    <asp:TextBox ID="comment" runat="server"/>
									<br>
									<figcaption style="font-size:30px;">
										Ваше имя
									</figcaption>
                                     <asp:TextBox ID="in_name" runat="server"/>
									<br>
									<br>
                                    <asp:Button ID="checker" Text="Отправить комментарий" OnClick="SendComment" runat="server"/>
									<a class="close" title="Закрыть" href="#close"></a>
								</div>
                                
                           
						</TD>
                        <TR>
                            <TD>
                                <asp:Table ID="table" runat="server" HorizontalAlign="left" CellPadding="1" CellSpacing="0">
                                    
                                </asp:Table>
                            </TD>
                        </TR>
				</TABLE>
			</DIV>
	
			<ASIDE id="sidebar">
				<SECTION class="SidebarName">
					<H1>
						Любимые языки программирования
					</H1>
				</SECTION>
				<SECTION id="SidebarRightMenu">
					<UL>
						<LI>
							<A href="c_sharp.html">
								C#
							</A>
						</LI>
						<LI>
							<A href="c_plus_plus.html">
								C++
							</A>
						</LI>
						<LI>
							<A href="perl.html">
								Perl
							</A> 
						</LI>
						<LI>
							<A href="python.html">
								Python
							</A>
						</LI>
					</UL>
				</SECTION>
				<SECTION class="SidebarName">
					<H1>
						Новости
					</H1>
				</SECTION>
				<SECTION id="SidebarNews" class="clearfix">
					
					<SCRIPT type="text/javaSCRIPT" src="http://news.yandex.ru/common.js"></SCRIPT>
					<SCRIPT type="text/javaSCRIPT">m_index = false;</SCRIPT>
					<SCRIPT type="text/javaSCRIPT" src="http://news.yandex.ru/computers3.js"></SCRIPT>
					<SCRIPT type="text/javaSCRIPT">
					    var str = '';
					    if ((aObj = eval('m_computers')) && (aObj.length > 0)) {
					        aObj.sort(compareTime);
					        for (var j = 0; j < aObj.length; j++) {
					            str += '<DIV>' + aObj[j].date + '&nbsp;' + aObj[j].time + '<br>'
									+ '<span class=yandex_news_title><a target="_blank" href="' + aObj[j].url + '">' +
									aObj[j].title + '</a></span></DIV><DIV class=yandex_annotation>' + '</DIV><br>';
					        }

					        str += '<DIV class=yandex_allnews><a href="http://news.yandex.ru" target="_blank">Все новости на ' +
									update_time + ' мск  &gt;&gt;</a><br><br></DIV>';

					        document.write(str);
					    }
					</SCRIPT>
				</SECTION>
			</ASIDE>	
			
			<FOOTER id="footer">
				<P>
					&copy; 2014 Masha Telyatnikova. All rights reserved.
				</P>
			</FOOTER>
		</DIV>
        </form>
	</BODY>
</HTML>
