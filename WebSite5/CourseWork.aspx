<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseWork.aspx.cs" Inherits="CourseWork" %>

<!DOCTYPE html>

<HTML>
	<HEAD>
		<META http-equiv="Content-Type" content="text/html; charset=Windows-1251">
		<TITLE>
			Телятникова Мария
		</TITLE>
		<LINK href="style.css" rel="stylesheet" type="text/css">
		<LINK href="media-queries.css" rel="stylesheet" type="text/css">
		
		<!-- html5.js for IE less THan 9 -->
		<!--[if lt IE 9]>
		<SCRIPT src="http://html5shim.googlecode.com/svn/TRunk/html5.js"></SCRIPT>
		<![endif]-->

		<!-- css3-mediaqueries.js for IE less THan 9 -->
		<!--[if lt IE 9]>
		<SCRIPT src="http://css3-mediaqueries-js.googlecode.com/svn/TRunk/css3-mediaqueries.js"></SCRIPT>
		<![endif]-->
		
	</HEAD>
	
	<BODY>
		<DIV id="Main">
			<HEADER id="header">
				<IMG id="site-logo" src="design/images/2.gif" alt="">

				<NAV>
					<UL id="Menu" class="clearfix">
						<LI>
							<A href="Default.aspx">
								Главная
							</A>
						</LI>
						<LI>
							<A href="CourseWork.aspx">
								Курсовая работа
							</A>
						</LI>
						<LI>
							<A href="Gallery.aspx">
								Фотогалерея
							</A> 
						</LI>
						<LI>
							<A href="GuestBook.aspx">
								Гостевая книга
							</A> 
						</LI>
					</UL>
				</NAV>
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
					
						<TD colspan=2 class="headers">
							Визуализатор сортировок на кончных автоматах <BR>
							(платформа .Net)
						</TD>
						
					<TR>
						<TH>
							<A href=coursework2/00.html target="_blank">
								Текст защиты
							</A>
						</TH>
						<TD>
							&nbsp;
						</TD>
					<TR>
						<TH>
							<A href="https://www.dropbox.com/s/t4ihxo2cdew8p7b/Visualizer.exe?dl=0">
								Скачать визуализатор
							</A>
						</TH>
					<TR>
						<TD>
							<IMG src="design/images/17.png" alt="">
						</TD>
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
	</BODY>
</HTML>