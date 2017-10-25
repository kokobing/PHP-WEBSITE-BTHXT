-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2017 年 10 月 25 日 11:25
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `bthxt`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `backmenu`
-- 

CREATE TABLE `backmenu` (
  `id_backmenu` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `remark` text NOT NULL,
  `url` varchar(100) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_backmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

-- 
-- 导出表中的数据 `backmenu`
-- 

INSERT INTO `backmenu` VALUES (1, 1, '产品系统', '', 'product', 0, 1, 2, 1);
INSERT INTO `backmenu` VALUES (3, 1, '信息系统', '', 'news', 0, 1, 3, 1);
INSERT INTO `backmenu` VALUES (4, 1, '人事系统', '', 'hr', 0, 1, 4, 1);
INSERT INTO `backmenu` VALUES (5, 1, '权限系统', '', 'perm', 0, 1, 5, 1);
INSERT INTO `backmenu` VALUES (6, 1, '数据库备份', '', 'dbase', 0, 1, 6, 0);
INSERT INTO `backmenu` VALUES (9, 1, '产品管理', '', '/admin/product/product_manage.php', 1, 2, 9, 1);
INSERT INTO `backmenu` VALUES (8, 1, '产品分类', '', '/admin/product/product_dir.php', 1, 2, 8, 1);
INSERT INTO `backmenu` VALUES (47, 1, '区块管理', '', '/admin/siteset/layout.php', 44, 2, 47, 1);
INSERT INTO `backmenu` VALUES (15, 1, '信息分类', '', '/admin/news/news_dir.php', 3, 2, 15, 1);
INSERT INTO `backmenu` VALUES (16, 1, '信息管理', '', '/admin/news/news_manage.php', 3, 2, 16, 1);
INSERT INTO `backmenu` VALUES (17, 1, '员工档案', '', '/admin/hr/hr_staff.php', 4, 2, 17, 1);
INSERT INTO `backmenu` VALUES (18, 1, '考核统计', '', '/admin/hr/hr_exam.php', 4, 2, 18, 1);
INSERT INTO `backmenu` VALUES (19, 1, '招聘管理', '', '/admin/hr/hr_job.php', 4, 2, 19, 1);
INSERT INTO `backmenu` VALUES (20, 1, '系统菜单', '', '/admin/perm/perm_menu.php', 5, 2, 20, 1);
INSERT INTO `backmenu` VALUES (21, 1, '权限管理', '', '/admin/perm/perm_manage.php', 5, 2, 21, 1);
INSERT INTO `backmenu` VALUES (22, 1, '数据库备份', '', '/phpMyAdmin/', 6, 2, 22, 1);
INSERT INTO `backmenu` VALUES (48, 1, '版面管理', '', '/admin/siteset/pageset.php', 44, 2, 48, 1);
INSERT INTO `backmenu` VALUES (49, 1, '前台菜单', '', '/admin/siteset/webmenu.php', 44, 2, 49, 0);
INSERT INTO `backmenu` VALUES (39, 1, '信息回收站', '', '/admin/news/newsrecycle.php', 3, 2, 39, 1);
INSERT INTO `backmenu` VALUES (41, 1, '产品回收站', '', '/admin/product/productrecycle.php', 1, 2, 41, 1);
INSERT INTO `backmenu` VALUES (46, 1, '站点设定', '', '/admin/siteset/siteset.php', 44, 2, 46, 1);
INSERT INTO `backmenu` VALUES (44, 1, '站点管理', '', 'siteset', 0, 1, 1, 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `dept`
-- 

CREATE TABLE `dept` (
  `id_dept` int(11) NOT NULL auto_increment,
  `dept` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_dept`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

-- 
-- 导出表中的数据 `dept`
-- 

INSERT INTO `dept` VALUES (36, '111', 1);
INSERT INTO `dept` VALUES (35, 'q', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `exam`
-- 

CREATE TABLE `exam` (
  `id_exam` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `level` varchar(1) NOT NULL,
  `examdate` date NOT NULL,
  PRIMARY KEY  (`id_exam`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `exam`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `hr`
-- 

CREATE TABLE `hr` (
  `id_hr` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `sex` int(1) NOT NULL default '1',
  `birthday` date NOT NULL,
  `hrcode` varchar(10) NOT NULL,
  `dept` int(11) NOT NULL,
  `iswork` int(1) NOT NULL default '1',
  `idcard` varchar(28) NOT NULL,
  `ismarry` int(1) NOT NULL,
  `nation` varchar(30) NOT NULL,
  `native` varchar(30) NOT NULL,
  `register` varchar(60) NOT NULL,
  `inwork` date NOT NULL,
  `education` varchar(20) NOT NULL,
  `profession` varchar(20) NOT NULL,
  `school` varchar(40) NOT NULL,
  `political` varchar(20) NOT NULL,
  `post` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `address` varchar(60) NOT NULL,
  `hometel` varchar(20) NOT NULL,
  `mobi` varchar(20) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `hjqk` text NOT NULL,
  `cfqk` text NOT NULL,
  `gwbd` text NOT NULL,
  `ldht` text NOT NULL,
  `sbjn` text NOT NULL,
  `remark` text NOT NULL,
  `user` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `level` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `logindate` datetime NOT NULL,
  `loginip` varchar(16) NOT NULL,
  PRIMARY KEY  (`id_hr`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

-- 
-- 导出表中的数据 `hr`
-- 

INSERT INTO `hr` VALUES (1, 1, 'administrator', 1, '0000-00-00', '', 36, 1, '', 0, '', '', '', '2011-01-29', '', '', '', '', 9, 15, '', '', '', '', '', '', '', '', '', '', 'admin', 'admin888', 1, 1, '2011-01-29 18:08:13', '2011-02-25 22:22:35', '0000-00-00 00:00:00', '2012-06-30 08:40:59', '116.238.75.89');

-- --------------------------------------------------------

-- 
-- 表的结构 `layout`
-- 

CREATE TABLE `layout` (
  `id_layout` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `intro` text NOT NULL,
  `content` text NOT NULL,
  `openstat` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_layout`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- 导出表中的数据 `layout`
-- 

INSERT INTO `layout` VALUES (1, 1, '全局LOGO', '', '全局LOGO', '', 1);
INSERT INTO `layout` VALUES (2, 1, '中文首页视频地址', 'http://player.youku.com/player.php/sid/XMTk1ODU2NDQw/v.swf', '中文首页视频地址', '', 1);
INSERT INTO `layout` VALUES (3, 1, '中文页脚', '', '中文页脚', '<table align="center" border="0" cellpadding="0" cellspacing="0" width="95%">\r\n	<tbody>\r\n		<tr>\r\n			<td align="center" height="25">\r\n				版权所有：宁夏宝塔活性炭有限公司&nbsp;Copyright(C) 2009-2012 www.bthxt.com&nbsp;All rights reserved</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" height="25" width="95%">\r\n	<tbody>\r\n		<tr>\r\n			<td align="center" height="25">\r\n				公司地址：宁夏银川市西夏区芦花镇良渠稍村、宝塔活性炭有限公司&nbsp;电话：0951-2159268 技术：13239503950</td>\r\n		</tr>\r\n		<tr>\r\n			<td align="center" height="25">\r\n				友情链接：&nbsp; <a class="txt_ui01" href="http://www.yahoo.cn" target="_blank">雅虎</a> | <a class="txt_ui01" href="http://www.163.com" target="_blank">网易</a> | <a class="txt_ui01" href="http://www.sina.com.cn" target="_blank">新浪</a> | <a class="txt_ui01" href="http://www.sohu.com" target="_blank">搜狐</a> | <a href="http://www.sohu.com">摩托罗拉</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\n', 1);
INSERT INTO `layout` VALUES (4, 1, '英文页脚', '', '英文页脚', '<table align="center" border="0" cellpadding="0" cellspacing="0" width="95%">\r\n	<tbody>\r\n		<tr>\r\n			<td align="center" height="25">\r\n				Copyright(C) 2009-2012 www.bthxt.com&nbsp;All rights reserved</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" height="25" width="95%">\r\n	<tbody>\r\n		<tr>\r\n			<td align="center" height="25">\r\n				Address:LuhuaTown,Xixia District,YinchuanCity,Ningxia,China、NINGXIA BAOTA ACTIVATED CARBON CO.LTD<br />\r\n				Tel：0951-2159268 Tech：13239503950</td>\r\n		</tr>\r\n		<tr>\r\n			<td align="center" height="25">\r\n				Link：&nbsp; <a class="txt_ui01" href="http://www.yahoo.cn" target="_blank">Yahoo</a> | <a class="txt_ui01" href="http://www.163.com" target="_blank">Netease</a> | <a class="txt_ui01" href="http://www.sina.com.cn" target="_blank">Sina</a> | <a class="txt_ui01" href="http://www.sohu.com" target="_blank">Sohu</a> | <a href="http://www.motorola.com">Motorola</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\n', 1);
INSERT INTO `layout` VALUES (7, 1, '快速通道QQ', '', '103213715||412056013||195466313||103213715||412056013||412056013', '', 1);
INSERT INTO `layout` VALUES (8, 1, '全局-首页-合作伙伴', '', '全局-首页-合作伙伴', '', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `layoutpic`
-- 

CREATE TABLE `layoutpic` (
  `id_layoutpic` int(11) NOT NULL auto_increment,
  `id_layout` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_layoutpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `layoutpic`
-- 

INSERT INTO `layoutpic` VALUES (2, 1, 1, '', '', '', '1338943129.jpg', '', 1, 'JPG', '2012-06-06 08:38:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (3, 8, 1, '', '', 'http://www.baidu.com', '1340785265.jpg', '', 1, 'JPG', '2012-06-27 16:20:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (4, 8, 1, '', '', 'http://www.baidu.com', '1340785279.jpg', '', 1, 'JPG', '2012-06-27 16:21:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (5, 8, 1, '', '', 'http://www.baidu.com', '1340785284.jpg', '', 1, 'JPG', '2012-06-27 16:21:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (6, 8, 1, '', '', 'http://www.baidu.com', '1340785289.jpg', '', 1, 'JPG', '2012-06-27 16:21:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (7, 8, 1, '', '', 'http://www.baidu.com', '1340785294.jpg', '', 1, 'JPG', '2012-06-27 16:21:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (8, 8, 1, '', '', 'http://www.baidu.com', '1340785299.jpg', '', 1, 'JPG', '2012-06-27 16:21:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `layoutpic` VALUES (9, 8, 1, '', '', '', '1340786569.jpg', '', 1, 'JPG', '2012-06-27 16:42:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `newsdir`
-- 

CREATE TABLE `newsdir` (
  `id_newsdir` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_newsdir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

-- 
-- 导出表中的数据 `newsdir`
-- 

INSERT INTO `newsdir` VALUES (1, 0, 'News', '', 1, 0, 1, 1);
INSERT INTO `newsdir` VALUES (3, 0, 'Company News', '', 1, 1, 2, 0);
INSERT INTO `newsdir` VALUES (4, 0, 'Industry News', '', 1, 1, 2, 0);
INSERT INTO `newsdir` VALUES (5, 0, 'Product News', '', 1, 1, 2, 0);
INSERT INTO `newsdir` VALUES (19, 1, '最新公告', '', 1, 15, 2, 19);
INSERT INTO `newsdir` VALUES (16, 1, '公司新闻', '', 1, 15, 2, 16);
INSERT INTO `newsdir` VALUES (15, 1, '信息中心', '', 1, 0, 1, 15);
INSERT INTO `newsdir` VALUES (10, 0, 'Service', '', 1, 9, 2, 0);
INSERT INTO `newsdir` VALUES (11, 0, 'Tech Service', '', 0, 9, 2, 0);
INSERT INTO `newsdir` VALUES (25, 0, 'Bulletin', '', 1, 1, 2, 25);
INSERT INTO `newsdir` VALUES (17, 1, '行业新闻', '', 1, 15, 2, 17);
INSERT INTO `newsdir` VALUES (18, 1, '产品新闻', '', 1, 15, 2, 18);
INSERT INTO `newsdir` VALUES (21, 1, '案例展示', '', 1, 15, 2, 21);
INSERT INTO `newsdir` VALUES (22, 1, '人力资源', '', 1, 15, 2, 22);
INSERT INTO `newsdir` VALUES (23, 1, '留言反馈', '', 1, 0, 1, 23);
INSERT INTO `newsdir` VALUES (24, 1, '留言反馈', '', 1, 23, 2, 24);
INSERT INTO `newsdir` VALUES (26, 0, 'Technical Support', '', 0, 1, 2, 26);
INSERT INTO `newsdir` VALUES (27, 0, 'Case', '', 1, 1, 2, 27);
INSERT INTO `newsdir` VALUES (28, 0, 'HR', '', 1, 1, 2, 28);

-- --------------------------------------------------------

-- 
-- 表的结构 `newsinfo`
-- 

CREATE TABLE `newsinfo` (
  `id_newsinfo` int(11) NOT NULL auto_increment,
  `id_newsdir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `isnew` int(1) NOT NULL default '1',
  `url` varchar(255) NOT NULL,
  `newsdate` date NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_newsinfo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=99 ;

-- 
-- 导出表中的数据 `newsinfo`
-- 

INSERT INTO `newsinfo` VALUES (1, 3, 0, 1, ' This ensures a huge range of free, professional and high quality resources.', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n\r\n', '<p>Tengyan is a market leader. It&rsquo;s been awarded a CMS of the year 2007, 2008 and won a Hall of Fame Award in the 2009 being the Best Open Source PHP CMS.</p>\r\n<p>Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>', '', 1, 1, '', '2010-12-05', '2010-12-05 14:03:36', '2011-03-24 16:27:26', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (2, 3, 0, 1, 'market leader. It’s been awarded a CMS of the year 2007, 2008 and won a Hall ', 'market leader. It’s been awarded a CMS of the year 2007, 2008 and won a Hall of Fame Award in the 2009 being the Best Open Source PHP CMS.\r\n\r\n', '<p>market leader. It&rsquo;s been awarded a CMS of the year 2007, 2008 and won a Hall of Fame Award in the 2009 being the Best Open Source PHP CMS.</p>\r\n<p>Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>', '', 1, 1, '', '2010-12-05', '2010-12-05 14:03:48', '2011-03-24 16:28:02', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (3, 3, 0, 1, 'are involved in manufacturing & construction, finance, and services & leisure', 'are involved in manufacturing & construction, finance, and services & leisureare involved in manufacturing & construction, finance, and services & leisure', 'we are involved in manufacturing &amp; construction, finance, and services &amp; leisure, which includes our parent company, Hanwha Corporation. We have 50 affiliates, six of which are publicly traded, including Hanwha Chemical Corporation and Korea Life Insurance, the second largest insurance company in Korea. Hanwha Chemical Corporation recently acquired a 49.99% stake in Hanwha SolarOne, thus becoming the largest shareholder of the module manufacturer ranked 4th in the world.&nbsp;<br />\r\n<br />\r\nwe are involved in manufacturing &amp; construction, finance, and services &amp; leisure, which includes our parent company, Hanwha Corporation. We have 50 affiliates, six of which are publicly traded, including Hanwha Chemical Corporation and Korea Life Insurance, the second largest insurance company in Korea. Hanwha Chemical Corporation recently acquired a 49.99% stake in Hanwha SolarOne, thus becoming the largest shareholder of the module manufacturer ranked 4th in the world.&nbsp;<br />\r\n<br />\r\nwe are involved in manufacturing &amp; construction, finance, and services &amp; leisure, which includes our parent company, Hanwha Corporation. We have 50 affiliates, six of which are publicly traded, including Hanwha Chemical Corporation and Korea Life Insurance, the second largest insurance company in Korea. Hanwha Chemical Corporation recently acquired a 49.99% stake in Hanwha SolarOne, thus becoming the largest shareholder of the module manufacturer ranked 4th in the world.', '', 1, 1, '', '2010-12-05', '2010-12-05 14:04:03', '2011-03-24 16:41:58', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (4, 3, 0, 1, 'high-quality silicon for all its products', 'high-quality silicon for all its productshigh-quality silicon for all its productshigh-quality silicon for all its products', '&nbsp;has invested in a reliable pipeline of high-quality silicon for all its products. Through the acquisition of a highly respected silicon ingot producer and stable, worldwide partnerships that ensure a long-term ingot and wafer supply, we can leverage market fluctuations to obtain the highest quality silicon at significant savings.&nbsp;<br jquery1300955958283="132" />\r\n<br jquery1300955958283="133" />\r\nhas invested in a reliable pipeline of high-quality silicon for all its products. Through the acquisition of a highly respected silicon ingot producer and stable, worldwide partnerships that ensure a long-term ingot and wafer supply, we can leverage market fluctuations to obtain the highest quality silicon at significant savings.&nbsp;<br jquery1300955958283="132" />\r\n<br jquery1300955958283="133" />\r\nhas invested in a reliable pipeline of high-quality silicon for all its products. Through the acquisition of a highly respected silicon ingot producer and stable, worldwide partnerships that ensure a long-term ingot and wafer supply, we can leverage market fluctuations to obtain the highest quality silicon at significant savings.&nbsp;<br jquery1300955958283="132" />\r\n<br jquery1300955958283="133" />\r\nhas invested in a reliable pipeline of high-quality silicon for all its products. Through the acquisition of a highly respected silicon ingot producer and stable, worldwide partnerships that ensure a long-term ingot and wafer supply, we can leverage market fluctuations to obtain the highest quality silicon at significant savings. <br jquery1300955958283="132" />\r\n<br jquery1300955958283="133" />', '', 1, 1, '', '2010-12-05', '2010-12-05 14:04:14', '2011-03-24 16:41:01', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (5, 3, 0, 1, ' in the fabrication of integrated circuits and other micro devices', ' in the fabrication of integrated circuits and other micro devices in the fabrication of integrated circuits and other micro devices in the fabrication of integrated circuits and other micro devices', 'such as a silicon crystal, used in the fabrication of integrated circuits and other micro devices. The wafer serves as the substrate for microelectronic devices that are built in and over the wafer and undergoes many microfabrication process steps such as doping or ion implantation, etching, deposition of various materials, and photolithographic patterning. Several types of solar cells are made from such wafers. A solar wafer is a circular solar cell made from the entire wafer (rather than cutting into smaller rectangular solar cells).&nbsp;<br jquery1300955958283="124" />\r\n<br />\r\nsuch as a silicon crystal, used in the fabrication of integrated circuits and other micro devices. The wafer serves as the substrate for microelectronic devices that are built in and over the wafer and undergoes many microfabrication process steps such as doping or ion implantation, etching, deposition of various materials, and photolithographic patterning. Several types of solar cells are made from such wafers. A solar wafer is a circular solar cell made from the entire wafer (rather than cutting into smaller rectangular solar cells).&nbsp;<br jquery1300955958283="124" />\r\n<br />\r\nsuch as a silicon crystal, used in the fabrication of integrated circuits and other micro devices. The wafer serves as the substrate for microelectronic devices that are built in and over the wafer and undergoes many microfabrication process steps such as doping or ion implantation, etching, deposition of various materials, and photolithographic patterning. Several types of solar cells are made from such wafers. A solar wafer is a circular solar cell made from the entire wafer (rather than cutting into smaller rectangular solar cells). <br jquery1300955958283="124" />', '', 1, 1, '', '2010-12-05', '2010-12-05 14:04:25', '2011-03-24 16:40:25', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (6, 3, 0, 1, 'metal, that is cast into a shape that is suitable for further processing', 'An ingot is a material, usually metal, that is cast into a shape that is suitable for further processing. Non-metallic and semiconductor materials prepared in bulk may also be referred as ingots, ', 'An ingot is a material, usually metal, that is cast into a shape that is suitable for further processing. Non-metallic and semiconductor materials prepared in bulk may also be referred as ingots, particularly when they are cast by mold based methods. In the semiconductor industry, an ingot is usually a material made of silicon that is processed to produce single crystal silicon. This is then cut and polished to create wafers on which devices ranging from microprocessors to memory devices can be fabricated. <br jquery1300955958283="118" />\r\n<br jquery1300955958283="119" />\r\nAn ingot is a material, usually metal, that is cast into a shape that is suitable for further processing. Non-metallic and semiconductor materials prepared in bulk may also be referred as ingots, particularly when they are cast by mold based methods. In the semiconductor industry, an ingot is usually a material made of silicon that is processed to produce single crystal silicon. This is then cut and polished to create wafers on which devices ranging from microprocessors to memory devices can be fabricated. <br jquery1300955958283="118" />\r\n<br jquery1300955958283="119" />\r\nAn ingot is a material, usually metal, that is cast into a shape that is suitable for further processing. Non-metallic and semiconductor materials prepared in bulk may also be referred as ingots, particularly when they are cast by mold based methods. In the semiconductor industry, an ingot is usually a material made of silicon that is processed to produce single crystal silicon. This is then cut and polished to create wafers on which devices ranging from microprocessors to memory devices can be fabricated. <br jquery1300955958283="118" />\r\n<br jquery1300955958283="119" />', '', 1, 1, '', '2010-12-05', '2010-12-05 14:04:36', '2011-03-24 16:39:37', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (7, 3, 0, 1, 'Polysilicon is a material used in the manufacturing of LCD screens', 'Polysilicon is a material used in the manufacturing of LCD screensPolysilicon is a material used in the manufacturing of LCD screens', '<span jquery1300955837591="136">Polysilicon is a material used in the manufacturing of LCD screens in high-end multimedia projectors and PV cells. They offer a better contrast ratio and faster response time than TFT LCD screens<br />\r\n<br />\r\n<span jquery1300955837591="136">Polysilicon is a material used in the manufacturing of LCD screens in high-end multimedia projectors and PV cells. They offer a better contrast ratio and faster response time than TFT LCD screens<br />\r\n<br />\r\n<span jquery1300955837591="136">Polysilicon is a material used in the manufacturing of LCD screens in high-end multimedia projectors and PV cells. They offer a better contrast ratio and faster response time than TFT LCD screens<br />\r\n<br />\r\n<span jquery1300955837591="136">Polysilicon is a material used in the manufacturing of LCD screens in high-end multimedia projectors and PV cells. They offer a better contrast ratio and faster response time than TFT LCD screens</span></span></span></span>', '', 1, 1, '', '2010-12-05', '2010-12-05 14:04:47', '2011-03-24 16:39:03', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (8, 3, 0, 1, ' in Ya’an city''s industrial district, which is in Sichuan province', ' in Ya’an city''s industrial district, which is in Sichuan province in Ya’an city''s industrial district, which is in Sichuan province', '&nbsp;in Ya&rsquo;an city''s industrial district, which is in Sichuan province, China. Its has earned $34million USD in sales volume in 2009, and is staffed by 430 employees. Ya&rsquo;an Yongwang Silicon Industry Co., Ltd. started its business in 2008, annually producing 800 tons of polysilicon. It supplies its products to major Chinese solar companies such as<br />\r\n&nbsp;<br />\r\nSolarOne. Yongwang Silicon Industry Co., Ltd. one of our affiliates that produces poly-silicon, is located in Ya&rsquo;an city''s industrial district, which is in Sichuan province, China. Its has earned $34million USD in sales volume in 2009, and is staffed by 430 employees. Ya&rsquo;an Yongwang Silicon Industry Co., Ltd. started its business in 2008, annually producing 800 tons of polysilicon. It supplies its products to major Chinese solar companies such as Hanwha SolarOne.<br />\r\n<br />\r\nSolarOne. Yongwang Silicon Industry Co., Ltd. one of our affiliates that produces poly-silicon, is located in Ya&rsquo;an city''s industrial district, which is in Sichuan province, China. Its has earned $34million USD in sales volume in 2009, and is staffed by 430 employees. Ya&rsquo;an Yongwang Silicon Industry Co., Ltd. started its business in 2008, annually producing 800 tons of polysilicon. It supplies its products to major Chinese solar companies such as Hanwha SolarOne.', '', 1, 1, '', '2010-12-05', '2010-12-05 14:04:56', '2011-03-24 16:38:15', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (9, 4, 0, 1, ' Industry Co., Ltd. one of our affiliates that produces poly-silicon', ' Industry Co., Ltd. one of our affiliates that produces poly-silicon, is located in Ya’an city''s industrial district, which is in Sichuan province, China. Its has earned $34million USD in sales volume in 2009', '&nbsp;Industry Co., Ltd. one of our affiliates that produces poly-silicon, is located in Ya&rsquo;an city''s industrial district, which is in Sichuan province, China. Its has earned $34million USD in sales volume in 2009, and is staffed by 430 employees. Ya&rsquo;an Yongwang Silicon Industry Co., Ltd. started its business in 2008, annually producing 800 tons of polysilicon. It supplies its products to major Chinese solar companies such as<br />\r\n&nbsp;<br />\r\nSolarOne. Yongwang Silicon Industry Co., Ltd. one of our affiliates that produces poly-silicon, is located in Ya&rsquo;an city''s industrial district, which is in Sichuan province, China. Its has earned $34million USD in sales volume in 2009, and is staffed by 430 employees. Ya&rsquo;an Yongwang Silicon Industry Co., Ltd. started its business in 2008, annually producing 800 tons of polysilicon. It supplies its products to major Chinese solar companies such as Hanwha SolarOne.<br />\r\n<br />\r\nSolarOne. Yongwang Silicon Industry Co., Ltd. one of our affiliates that produces poly-silicon, is located in Ya&rsquo;an city''s industrial district, which is in Sichuan province, China. Its has earned $34million USD in sales volume in 2009, and is staffed by 430 employees. Ya&rsquo;an Yongwang Silicon Industry Co., Ltd. started its business in 2008, annually producing 800 tons of polysilicon. It supplies its products to major Chinese solar companies such as Hanwha SolarOne.', '', 1, 1, '', '2010-12-05', '2010-12-05 14:05:10', '2011-03-24 16:37:55', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (10, 4, 0, 1, 'develops power plant projects by utilizing its own global networks', 'develops power plant projects by utilizing its own global networks', '&nbsp;plant projects by utilizing its own global networks, which are set up for import and export business. We are also cooperating with local developers to more efficiently expand our market share. Hanwha Corporation has 9 corporate bodies and 14 branch offices in the U.S., Europe, and Japan, and we<br />\r\n&nbsp;<br />\r\nsolutions for PV power plant project development by establishing strategic alliances with local developers and making direct investments. develops power plant projects by utilizing its own global networks, which are set up for import and export business. We are also cooperating with local developers to<br />\r\n&nbsp;<br />\r\nmore efficiently expand our market share. Hanwha Corporation has 9 corporate bodies and 14 branch offices in the U.S., Europe, and Japan, and we can provide various solutions for PV power plant project development by establishing strategic alliances with local developers and making direct investments.develops power plant projects by utilizing its own global networks, which are set up for import and export business. We are also cooperating with local developers to more efficiently expand our market share. Hanwha Corporation has 9 corporate bodies and 14 branch offices in the U.S., Europe, and Japan, and we<br />\r\n&nbsp;<br />\r\ncan provide various solutions for PV power plant project development by establishing strategic alliances with local developers and making direct investments. develops power plant projects by utilizing its own global networks, which are set up for import and export business. We are also cooperating with local developers to<br />\r\n&nbsp;<br />\r\nmore efficiently expand our market share. Hanwha Corporation has 9 corporate bodies and 14 branch offices in the U.S., Europe, and Japan, and we can provide various solutions for PV power plant project development by establishing strategic alliances with local developers and making direct investments.', '', 1, 1, '', '2010-12-05', '2010-12-05 14:05:24', '2011-03-24 16:36:17', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (11, 4, 0, 1, 'by utilizing its own global networks', ' plant projects by utilizing its own global networks, which are set up for import and export business. We are also cooperating with local developers to more efficiently expand our market share. Hanwha Corporation has 9 corporate bodies and 14 branch offices in the U.S., Europe, and Japan, and we\r\n', '&nbsp;plant projects by utilizing its own global networks, which are set up for import and export business. We are also cooperating with local developers to more efficiently expand our market share. Hanwha Corporation has 9 corporate bodies and 14 branch offices in the U.S., Europe, and Japan, and we<br />\r\n&nbsp;<br />\r\ncan provide various solutions for PV power plant project development by establishing strategic alliances with local developers and making direct investments. develops power plant projects by utilizing its own global networks, which are set up for import and export business. We are also cooperating with local developers to<br />\r\n&nbsp;<br />\r\nmore efficiently expand our market share. Hanwha Corporation has 9 corporate bodies and 14 branch offices in the U.S., Europe, and Japan, and we can provide various solutions for PV power plant project development by establishing strategic alliances with local developers and making direct investments.develops power plant projects by utilizing its own global networks, which are set up for import and export business. We are also cooperating with local developers to more efficiently expand our market share. Hanwha Corporation has 9 corporate bodies and 14 branch offices in the U.S., Europe, and Japan, and we<br />\r\n&nbsp;<br />\r\ncan provide various solutions for PV power plant project development by establishing strategic alliances with local developers and making direct investments. develops power plant projects by utilizing its own global networks, which are set up for import and export business. We are also cooperating with local developers to<br />\r\n&nbsp;<br />\r\nmore efficiently expand our market share. Hanwha Corporation has 9 corporate bodies and 14 branch offices in the U.S., Europe, and Japan, and we can provide various solutions for PV power plant project development by establishing strategic alliances with local developers and making direct investments.', '', 1, 1, '', '2010-12-05', '2010-12-05 14:05:36', '2011-03-24 16:35:56', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (12, 4, 0, 1, 'develops power plant projects by utilizing its own global networks', 'develops power plant projects by utilizing its own global networks, which are set up for import and export business. We are also cooperating with local developers to more efficiently expand our market share. Hanwha Corporation has 9 corporate bodies and 14 branch offices in the U.S., Europe, and Japan, and we\r\n', 'develops power plant projects by utilizing its own global networks, which are set up for import and export business. We are also cooperating with local developers to more efficiently expand our market share. Hanwha Corporation has 9 corporate bodies and 14 branch offices in the U.S., Europe, and Japan, and we<br />\r\n&nbsp;<br />\r\ncan provide various solutions for PV power plant project development by establishing strategic alliances with local developers and making direct investments. develops power plant projects by utilizing its own global networks, which are set up for import and export business. We are also cooperating with local developers to<br />\r\n&nbsp;<br />\r\nmore efficiently expand our market share. Hanwha Corporation has 9 corporate bodies and 14 branch offices in the U.S., Europe, and Japan, and we can provide various solutions for PV power plant project development by establishing strategic alliances with local developers and making direct investments.', '', 1, 1, '', '2010-12-05', '2010-12-05 14:05:46', '2011-03-24 16:35:30', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (13, 5, 0, 1, 'no costly licensing fees or risk of vendor lock-in.', 'no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.', 'no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>', '', 1, 1, '', '2010-12-05', '2010-12-05 14:07:54', '2011-03-24 16:34:34', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (14, 5, 0, 1, 'fees or risk of vendor lock-in. It can significantly reduce total ', 'has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\n\r\nTengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n\r\nTengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions \r\n', 'massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>', '', 1, 1, '', '2010-12-05', '2010-12-05 14:08:02', '2011-03-24 16:33:58', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (15, 16, 0, 1, '业内人士预测：新一轮股市行情或在四季度展开', 'licensing fees or risk of vendor lock-in. It can significantly reduce total licensing fees or risk of vendor lock-in. It can significantly reduce total ', 'licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>', '', 1, 1, '', '2010-12-05', '2010-12-05 14:08:12', '2012-05-14 18:47:05', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (16, 17, 0, 1, '筹行情可能流产 专家建议关注小盘股投资机会', 'licensing fees or risk of vendor lock-in. It can significantly licensing fees or risk of vendor lock-in. It can significantly ', 'licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>', '', 1, 1, '', '2010-12-06', '2010-12-06 10:22:27', '2012-05-14 18:46:47', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (17, 17, 0, 1, '我们的客户在过去的几年逐步的增长。上海腾岩信息科技有限公司', 'Tengyan has become the most powerful, robust and extensible  Tengyan has become the most powerful, robust and extensible ', 'huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>', '', 1, 1, '', '2010-12-06', '2010-12-06 10:22:36', '2012-05-14 18:46:30', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (18, 16, 0, 1, '数据库、服务器租用托管业务、网站建设、营运咨询、网站空间、......', 'Tengyan has no costly licensing fees or risk of vendor lock-in.Tengyan has no costly licensing fees or risk of vendor lock-in.', '&nbsp;developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>', '', 1, 1, '', '2010-12-06', '2010-12-06 10:22:43', '2012-05-14 18:44:22', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (19, 17, 0, 1, '数据库、服务器租用托管业务、网站建设、营运咨询、......', 'risk of vendor lock-in. It can significantly reduce total project integration costsrisk of vendor lock-in. It can significantly reduce total project integration costs', 'risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>', '', 1, 1, '', '2010-12-06', '2010-12-06 10:23:05', '2012-05-14 18:44:10', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (20, 18, 0, 1, '网站空间、数据库、服务器租用托管业务、网站建设、营运咨询、管理维护等等。', 'developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.', 'developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>', '', 1, 1, '', '2010-12-06', '2010-12-06 10:23:12', '2012-02-28 16:01:35', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (21, 17, 0, 1, '如域名注册、企业邮局、邮件群发', 'This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.', 'developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>', '', 1, 1, '', '2010-12-06', '2010-12-06 10:23:18', '2012-02-28 16:01:25', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (22, 16, 0, 1, '我们的所涉及的全部服务与技术支持', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n\r\n', '<div id="inner_contentinner_right3" class="txt">\r\n<p>Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n</div>', '', 1, 1, '', '2010-12-06', '2010-12-06 10:23:24', '2012-02-28 16:01:12', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (63, 22, 0, 1, '模具设计总监', '', '<p>职位名称：模具设计总监<br />\r\n职位类型：全职<br />\r\n工作经验：3年以上<br />\r\n学历要求：本科<br />\r\n招聘人数：1名<br />\r\n发布时间：2009-12-07</p>\r\n<p>职位描述 <br />\r\n本公司即将设立上海办事处，招聘华东区销售经理一名，负责拓展华东地区业务 <br />\r\n招聘要求 <br />\r\n具有良好的销售和团队管理理念三年以上销售工作经验，一年以上销售经理经验工作责任心强，能承受较大的工作压力 <br />\r\n联 系 人：华海<br />\r\n联系电话：021-87654321<br />\r\n电子邮件：huahai@mycompany.com</p>', '', 1, 1, '', '2012-05-15', '2012-05-15 11:50:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (64, 21, 0, 1, '杭州鑫桥会展有限公司', '', '<br />\r\n<img width="680" height="523" alt="" src="/upload/other/3370672904.jpg" />', '', 1, 1, '', '2012-05-15', '2012-05-15 15:32:10', '2012-05-15 15:36:56', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (65, 21, 0, 1, 'DainLife', '', '<br />\r\n<img alt="" width="680" height="564" src="/upload/other/3370745973.jpg" />', '', 1, 1, '', '2012-05-15', '2012-05-15 17:36:37', '2012-05-15 17:37:12', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (67, 28, 0, 1, 'test hr', '', 'test hr', '', 1, 1, '', '2012-05-15', '2012-05-15 20:16:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (70, 27, 0, 1, 'DOCHEM', '', '<br />\r\n<img width="500" height="333" alt="" src="/upload/other/3374138195.jpg" />', '', 1, 1, '', '2012-05-19', '2012-05-19 15:50:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (94, 21, 0, 1, '中国电商经营网', '', '<br />\r\n<img width="500" height="333" alt="" src="/upload/other/3374226218.jpg" />', '', 1, 1, '', '2012-05-19', '2012-05-19 18:17:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (93, 21, 0, 1, '上海中西进修学院', '', '<br />\r\n<img width="500" height="333" alt="" src="/upload/other/3374225684.jpg" />', '', 1, 1, '', '2012-05-19', '2012-05-19 18:16:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (92, 21, 0, 1, '特拇斯安防', '', '<br />\r\n<img width="500" height="333" alt="" src="/upload/other/3374224871.jpg" />', '', 1, 1, '', '2012-05-19', '2012-05-19 18:15:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (91, 21, 0, 1, '凯诗达皮具', '', '<br />\r\n<img width="500" height="333" alt="" src="/upload/other/3374224039.jpg" />', '', 1, 1, '', '2012-05-19', '2012-05-19 18:13:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (90, 21, 0, 1, '上海伊澄贸易', '', '<br />\r\n<img width="500" height="333" alt="" src="/upload/other/3374223316.jpg" /><br />', '', 1, 1, '', '2012-05-19', '2012-05-19 18:12:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (89, 21, 0, 1, '广州百志灯光', '', '<br />\r\n<img width="500" height="333" alt="" src="/upload/other/3374222882.jpg" />', '', 1, 1, '', '2012-05-19', '2012-05-19 18:11:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (88, 21, 0, 1, '南京远寰科技有限公司', '', '<br />\r\n<img width="500" height="333" alt="" src="/upload/other/3374222285.jpg" /><br />', '', 1, 1, '', '2012-05-19', '2012-05-19 18:10:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (61, 22, 0, 1, '研发项目经理', '', '<p>职位名称：研发项目经理<br />\r\n职位类型：全职<br />\r\n工作经验：3年以上<br />\r\n学历要求：本科<br />\r\n招聘人数：1名<br />\r\n发布时间：2009-12-07</p>\r\n<p>职位描述 <br />\r\n本公司即将设立上海办事处，招聘华东区销售经理一名，负责拓展华东地区业务 <br />\r\n招聘要求 <br />\r\n具有良好的销售和团队管理理念三年以上销售工作经验，一年以上销售经理经验工作责任心强，能承受较大的工作压力 <br />\r\n联 系 人：华海<br />\r\n联系电话：021-87654321<br />\r\n电子邮件：huahai@mycompany.com</p>', '', 1, 1, '', '2012-05-15', '2012-05-15 11:48:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (62, 22, 0, 1, '华东区销售经理', '', '<p>职位名称：华东区销售经理<br />\r\n职位类型：全职<br />\r\n工作经验：3年以上<br />\r\n学历要求：本科<br />\r\n招聘人数：1名<br />\r\n发布时间：2009-12-07</p>\r\n<p>职位描述 <br />\r\n本公司即将设立上海办事处，招聘华东区销售经理一名，负责拓展华东地区业务 <br />\r\n招聘要求 <br />\r\n具有良好的销售和团队管理理念三年以上销售工作经验，一年以上销售经理经验工作责任心强，能承受较大的工作压力 <br />\r\n联 系 人：华海<br />\r\n联系电话：021-87654321<br />\r\n电子邮件：huahai@mycompany.com</p>', '', 1, 1, '', '2012-05-15', '2012-05-15 11:50:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (60, 16, 0, 1, '互联网技术服务范围已经涵盖互联网', '我们的所涉及的全部服务与技术支持，如域名注册、企业邮局、邮件群发、网站空间、数据库、服务器租用托管业务、网站建设、营运咨询、管理维护等等。\r\n', '我们的互联网技术服务范围已经涵盖互联网所涉及的全部服务与技术支持，如域名注册、企业邮局、邮件群发、网站空间、数据库、服务器租用托管业务、网站建设、营运咨询、管理维护等等。<br />', '', 1, 1, '', '2012-02-27', '2012-02-27 13:41:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (87, 21, 0, 1, '上海正阳电子', '', '<br />\r\n<img width="500" height="333" alt="" src="/upload/other/3374221693.jpg" />', '', 1, 1, '', '2012-05-19', '2012-05-19 18:09:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (86, 21, 0, 1, '江苏凯达集团', '', '<br />\r\n<img alt="" width="500" height="333" src="/upload/other/3374119901.jpg" />', '', 1, 1, '', '2012-05-19', '2012-05-19 15:20:03', '2012-05-19 15:20:09', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (85, 21, 0, 1, '上海帝全自动化有限公司', '', '<br />\r\n<img alt="" width="500" height="333" src="/upload/other/3374118859.jpg" />', '', 1, 1, '', '2012-05-19', '2012-05-19 15:18:25', '2012-05-19 15:19:27', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (84, 21, 0, 1, '上海钱币礼品网', '', '<br />\r\n<img alt="" width="500" height="333" src="/upload/other/3374118404.jpg" />', '', 1, 1, '', '2012-05-19', '2012-05-19 15:16:55', '2012-05-19 15:17:43', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (83, 21, 0, 1, 'DOCHEM欧企', '', '<br />\r\n<img width="500" height="333" alt="" src="/upload/other/3374117541.jpg" />', '', 1, 1, '', '2012-05-19', '2012-05-19 15:15:04', '2012-05-19 15:15:53', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (82, 21, 0, 1, 'DOCHEM中文', '', '<br />\r\n<img alt="" width="500" height="333" src="/upload/other/3374116511.jpg" />', '', 1, 1, '', '2012-05-19', '2012-05-19 15:14:16', '2012-05-19 15:14:33', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (81, 21, 0, 1, '上海蓝颜化工有限公司', '', '<br />\r\n<img alt="" width="500" height="333" src="/upload/other/3374115775.jpg" />', '', 1, 1, '', '2012-05-19', '2012-05-19 15:12:55', '2012-05-19 15:13:20', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (95, 24, 0, 1, '留言反馈:2012-05-20 03:19:05', '', 'Pls give me message include your name,crop,email...', '', 1, 1, '', '2012-05-20', '2012-05-20 11:19:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (96, 24, 0, 1, '留言反馈:2012-06-05 08:40:24', '', 'ddddd', '', 1, 1, '', '2012-06-05', '2012-06-05 16:40:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (97, 22, 0, 1, '招聘标题1', '', '招聘内容1', '', 1, 1, '', '2012-06-08', '2012-06-08 10:49:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newsinfo` VALUES (98, 24, 0, 1, '留言反馈:2012-06-30 01:13:56', '', 'Pls give me message include your name,crop,email...', '', 1, 1, '', '2012-06-30', '2012-06-30 09:13:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `newspic`
-- 

CREATE TABLE `newspic` (
  `id_newspic` int(11) NOT NULL auto_increment,
  `id_newsinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_newspic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- 
-- 导出表中的数据 `newspic`
-- 

INSERT INTO `newspic` VALUES (1, 59, 57, '', '', '', '1298517017.jpg', '', 1, 'JPG', '2011-02-24 11:10:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (2, 57, 57, '', '', '', '1298526718.jpg', '', 1, 'JPG', '2011-02-24 13:51:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (6, 53, 1, '111111', '111111111111111111', '1111111', '1300872682.jpg', '', 1, 'JPG', '2011-03-23 17:31:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (7, 53, 1, '22', '222', '22', '1300873167.jpg', '', 1, 'JPG', '2011-03-23 17:39:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (8, 64, 1, '杭州鑫桥会展有限公司', '', '', '1337067146.jpg', '', 1, 'JPG', '2012-05-15 15:32:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (9, 65, 1, 'DainLife', '', '', '1337074629.jpg', '', 1, 'JPG', '2012-05-15 17:37:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (10, 70, 1, '', '', '', '1337413825.jpg', '', 1, 'JPG', '2012-05-19 15:50:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (23, 94, 1, '', '', '', '1337422642.jpg', '', 1, 'JPG', '2012-05-19 18:17:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (22, 93, 1, '', '', '', '1337422588.jpg', '', 1, 'JPG', '2012-05-19 18:16:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (21, 92, 1, '', '', '', '1337422510.jpg', '', 1, 'JPG', '2012-05-19 18:15:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (20, 91, 1, '', '', '', '1337422432.jpg', '', 1, 'JPG', '2012-05-19 18:13:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (19, 90, 1, '', '', '', '1337422366.jpg', '', 1, 'JPG', '2012-05-19 18:12:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (18, 89, 1, '', '', '', '1337422310.jpg', '', 1, 'JPG', '2012-05-19 18:11:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (17, 88, 1, '', '', '', '1337422260.jpg', '', 1, 'JPG', '2012-05-19 18:11:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (16, 87, 1, '', '', '', '1337422189.jpg', '', 1, 'JPG', '2012-05-19 18:09:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (15, 86, 1, '', '', '', '1337412016.jpg', '', 1, 'JPG', '2012-05-19 15:20:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (14, 85, 1, '', '', '', '1337411918.jpg', '', 1, 'JPG', '2012-05-19 15:18:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (13, 84, 1, '', '', '', '1337411852.jpg', '', 1, 'JPG', '2012-05-19 15:17:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (12, 83, 1, '', '', '', '1337411733.jpg', '', 1, 'JPG', '2012-05-19 15:15:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (11, 82, 1, '', '', '', '1337411672.jpg', '', 1, 'JPG', '2012-05-19 15:14:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `newspic` VALUES (24, 81, 1, '', '', '', '1337423119.jpg', '', 1, 'JPG', '2012-05-19 18:25:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `pageset`
-- 

CREATE TABLE `pageset` (
  `id_pageset` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `pagetitle` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id_pageset`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- 
-- 导出表中的数据 `pageset`
-- 

INSERT INTO `pageset` VALUES (1, 1, '关于我们', '', '', '', '公司拥有领先的技术和经验，目前是引领该行业的先锋企业。经过不断的试验，努力的改正错误，我们的客户在过去的几年逐步的增长。上海腾岩信息科技有限公司是一家专注互联网技术服务的高新科技公司，公司成立以来已经在众多领域取得了骄人的成绩，同时我们与国际、国内众多ISP服务商、软件开发商及IT服务企业结为战略联盟和合作伙伴。\r\n', '<table border="0" cellspacing="8" cellpadding="8" width="100%">\r\n    <tbody>\r\n        <tr>\r\n            <td valign="top" width="50%" align="left">\r\n            <p><font color="#ff530a" size="3"><strong><strike><br />\r\n            </strike></strong><strike>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strike><br />\r\n            About us&nbsp;</font><br />\r\n            <font color="#5e5d5d" size="3">Leading, free open-source solution</font></p>\r\n            <p>公司拥有领先的技术和经验，目前是引领该行业的先锋企业。经过不断的试验，努力的改正错误，我们的客户在过去的几年逐步的增长。上海腾岩信息科技有限公司是一家专注互联网技术服务的高新科技公司，公司成立以来已经在众多领域取得了骄人的成绩，同时我们与国际、国内众多ISP服务商、软件开发商及IT服务企业结为战略联盟和合作伙伴。</p>\r\n            <img width="135" height="102" alt="" src="/upload/other/3371303693.gif" /><br />\r\n            <p>腾岩科技的服务范围包括：互联网基础应用、网站建设、企事业信息管理系统、数据库开发、B/S软件研发等。</p>\r\n            <p>我们的互联网技术服务范围已经涵盖互联网所涉及的全部服务与技术支持，如域名注册、企业邮局、邮件群发、网站空间、数据库、服务器租用托管业务、网站建设、营运咨询、管理维护等等。</p>\r\n            </td>\r\n            <td valign="top" width="50%" align="left">\r\n            <p><font color="#ff530a" size="3"><strong><strike>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strike><br />\r\n            </strong>Features&nbsp;</font><br />\r\n            <font color="#424242" size="3"><font color="#5e5d5d">We&nbsp; most useful and common modules.</font> </font></p>\r\n            <p>腾岩科技专注以互联网领域的信息技术服务为公司的主要发展之路,使用户在享受信息科技发展最新成果的同时不断获得最大的收益。 一个能从别人的观念来看事情，能了解别人心灵活的人，永远不必为自己的前途担心。</p>\r\n            <p>公司拥有领先的技术和经验，目前是引领该行业的先锋企业。经过不断的试验，努力的改正错误，我们的客户在过去的几年逐步的增长。上海腾岩信息科技有限公司是一家专注互联网技术服务的高新科技公司，公司成立以来已经在众多领域取得了骄人的成绩，同时我们与国际、国内众多ISP服务商、软件开发商及IT服务企业结为战略联盟和合作伙伴。</p>\r\n            <p><img width="300" height="238" alt="" src="/upload/other/3371304749.gif" /></p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>');
INSERT INTO `pageset` VALUES (2, 1, '公司荣誉', '', '', '', '', '');
INSERT INTO `pageset` VALUES (3, 1, '组织机构', '', '', '', '', '<p><br />\r\n<img width="595" height="579" alt="" src="/upload/other/3369960908.gif" /></p>');
INSERT INTO `pageset` VALUES (4, 1, '总经理致辞', '', '', '', '', '<table border="0" cellspacing="8" cellpadding="8" width="100%">\r\n    <tbody>\r\n        <tr>\r\n          <td valign="top" align="left">总经理致辞</td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="50%" align="left">公司以发展、责任为公司的核心理念，以倡导环境和谐幸福，打造最具品质的生活为不懈追求的目标。永恒的品质可以无视时间的痕迹，在品质的历程上一线之隔就可以把成功与失败更替。今天的人们，已经非常了解自我的需求，其价值不在于每天的享用，更在于永久的魅力。我们深知，只有品质才是永恒弥久的信念。<BR>\r\n              <BR>\r\n              面对激烈的市场竟争环境，始终坚持求新求变，不断发展的经营的基本思想，主动实行前瞻性的战略转变。正是凭借着一大批艰苦创业、敬业开拓、团结奋进创造出一个又一个的佳绩，形成了自己独特的文化理念和经营管理方式。专业历程，打造着中高档品牌的典范，见证了中国信息产业的发展历程，见证并推动了中国信息行业的技术成长之路。<BR>\r\n              <BR>\r\n            今天，全新的创意与永久的品质使其脱颖而出，成为时代的新偶像。品质先，创新先，共赢先。真诚希望与国内外友人依托信息科技产业,   携手共创世界的幸福明天。公司以发展、责任为公司的核心理念，以倡导环境和谐幸福，打造最具品质的生活为不懈追求的目标。永恒的品质可以无视时间的痕迹，在品质的历程上一线之隔就可以把成功与失败更替。</td>\r\n        </tr>\r\n    </tbody>\r\n</table>');
INSERT INTO `pageset` VALUES (5, 1, '企业文化', '', '', '', '', '<table border="0" cellspacing="8" cellpadding="8" width="100%">\r\n    <tbody>\r\n        <tr>\r\n          <td valign="top" align="left">腾岩企业文化</td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="50%" align="left">\r\n             自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。<BR>\r\n                <BR>\r\n                员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。<BR>\r\n                <BR>\r\n                市场：为客户降低采购成本和风险，为客户投资提供切实保障。 <BR>\r\n                <BR>\r\n                发展：追求永续发展的目标，并把它建立在客户满意的基础上。<BR>\r\n                <BR>\r\n              企业精神：自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。\r\n</td>\r\n        </tr>\r\n    </tbody>\r\n</table>');
INSERT INTO `pageset` VALUES (6, 1, '人才理念', '', '', '', '', '');
INSERT INTO `pageset` VALUES (7, 1, '发展历程', '', '', '', '', '<table border="0" cellspacing="8" cellpadding="8" width="100%">\r\n    <tbody>\r\n        <tr>\r\n          <td valign="top" align="left">我们的发展历程</td>\r\n        </tr>\r\n        <tr>\r\n            <td valign="top" width="50%" align="left">2005年2月 成立团队<BR>\r\n              2006年3月 成为商务中国最高级别代理-伙伴代理<BR>\r\n              2006年8月   成为新网互联最高级别代理-合作伙伴<BR>\r\n              2007年4月 与网宿科技股份有限公司展开合作<BR>\r\n              2008年7月   与深圳市润迅移动通信服务有限公司展开合作<BR>\r\n              2009年12月 上海腾岩科技信息有限公司成立<BR>\r\n              2010年9月   经过多年调试和完善，正式推出网站后台管理系统<BR>\r\n              2011年10月 成功代理网易 (NASDAQ: NTES)专业企业邮局<BR>\r\n              2011年11月   与慧新信息科技有限公司展开合作<BR>\r\n            2011年12月 成为香港联亚国际电讯有限公司最高级别代理-合作伙伴</td>\r\n        </tr>\r\n    </tbody>\r\n</table>');
INSERT INTO `pageset` VALUES (8, 1, '联系我们', '', '', '', '', '<table border="0" cellpadding="5" cellspacing="5" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<font size="3"><strong>宁夏宝塔活性炭有限公司</strong></font></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				地址:宁夏银川市西夏区芦花镇良渠稍村</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				电话：0951-2159268 技术：13239503950</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Skype ID：ay_851225</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\n<iframe frameborder="0" height="300" marginheight="0" marginwidth="0" scrolling="no" src="http://ditu.google.cn/maps?f=q&amp;source=s_q&amp;hl=zh-CN&amp;geocode=&amp;q=%E5%AE%81%E5%A4%8F%E9%93%B6%E5%B7%9D%E8%A5%BF%E5%A4%8F%E5%8C%BA&amp;aq=0&amp;oq=%E5%AE%81%E5%A4%8F%E9%93%B6%E5%B7%9D%E5%B8%82%E8%A5%BF%E5%A4%8F%E5%8C%BA&amp;sll=38.473482,106.177711&amp;sspn=0.201052,0.308647&amp;brcurrent=3,0x3640423f6d0e3819:0xf9a2087f490f29aa,0,0x36402d5f37324ce5:0x8d19520f477bd68c%3B5,0,0&amp;ie=UTF8&amp;hq=&amp;hnear=%E5%AE%81%E5%A4%8F%E5%9B%9E%E6%97%8F%E8%87%AA%E6%B2%BB%E5%8C%BA%E9%93%B6%E5%B7%9D%E8%A5%BF%E5%A4%8F%E5%8C%BA&amp;t=m&amp;ll=38.491219,106.150589&amp;spn=0.161232,0.479965&amp;z=11&amp;iwloc=A&amp;output=embed" width="700"></iframe><br />\r\n<small><a href="http://ditu.google.cn/maps?f=q&amp;source=embed&amp;hl=zh-CN&amp;geocode=&amp;q=%E5%AE%81%E5%A4%8F%E9%93%B6%E5%B7%9D%E8%A5%BF%E5%A4%8F%E5%8C%BA&amp;aq=0&amp;oq=%E5%AE%81%E5%A4%8F%E9%93%B6%E5%B7%9D%E5%B8%82%E8%A5%BF%E5%A4%8F%E5%8C%BA&amp;sll=38.473482,106.177711&amp;sspn=0.201052,0.308647&amp;brcurrent=3,0x3640423f6d0e3819:0xf9a2087f490f29aa,0,0x36402d5f37324ce5:0x8d19520f477bd68c%3B5,0,0&amp;ie=UTF8&amp;hq=&amp;hnear=%E5%AE%81%E5%A4%8F%E5%9B%9E%E6%97%8F%E8%87%AA%E6%B2%BB%E5%8C%BA%E9%93%B6%E5%B7%9D%E8%A5%BF%E5%A4%8F%E5%8C%BA&amp;t=m&amp;ll=38.491219,106.150589&amp;spn=0.161232,0.479965&amp;z=11&amp;iwloc=A" style="text-align: left; color: #0000ff">查看大图</a></small>');
INSERT INTO `pageset` VALUES (9, 1, 'About Us', '', '', '', 'Tengyan is a market leader. It’s been awarded a CMS of the year 2007, 2008 and won a Hall of Fame Award in the 2009 being the Best Open Source PHP CMS.\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources', '<table border="0" cellspacing="8" cellpadding="8" width="100%">\r\n    <tbody>\r\n        <tr>\r\n            <td valign="top" width="50%" align="left">\r\n            <p><font color="#ff530a" size="3"><strong><strike><br />\r\n            </strike></strong><strike>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strike><br />\r\n            About us&nbsp;</font><br />\r\n            <font color="#5e5d5d" size="3">Leading, free open-source solution</font></p>\r\n            <p>Tengyan&nbsp;is a market leader. It&rsquo;s been awarded a CMS of the year 2007, 2008 and won a Hall of Fame Award in the 2009 being the Best Open Source PHP CMS.<br />\r\n            Tengyan&nbsp;has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources</p>\r\n            <br />\r\n            <img alt="" width="110" height="100" src="/upload/other/3370829493.jpg" /><br />\r\n            <p>Tengyan&nbsp;has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions&nbsp;Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n            </td>\r\n            <td valign="top" width="50%" align="left">\r\n            <p><font color="#ff530a" size="3"><strong><strike>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strike><br />\r\n            </strong>Features&nbsp;</font><br />\r\n            <font color="#424242" size="3"><font color="#5e5d5d">We&nbsp; most useful and common modules.</font> </font></p>\r\n            <p>With Tengyan, we&acute;ve added many that we believe are essential to build modern, usable and functional websites.Create/Delete/Change content with ease. Manage page structure.Tengyan admin interface is no more problematic. Easy to navigate and straightforward admin dashboard.</p>\r\n            <p>Set up user roles and permissions. Assign Manager, Employee or Admin role with ease. Decide what content is available to whom.Support for multiple-language websites. Enjoy clean, user and search engine friendly URLs. Other SEO friendly features are inside too: Titles, Internal Link Structure, Meta Tags.There are absolutely no restriction on how your site looks like. Create very unique, custom theme.<br />\r\n            <img alt="" width="300" height="300" src="/upload/other/33708296610.jpg" /></p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>');
INSERT INTO `pageset` VALUES (10, 1, 'Honors', '', '', '', '', '<p>Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\nHonors');
INSERT INTO `pageset` VALUES (11, 1, 'Organization', '', '', '', '', 'Organization<br />\r\n<br />\r\n<p>Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>');
INSERT INTO `pageset` VALUES (12, 1, 'CEO''s Message', '', '', '', '', 'CEO&acute;s Message<br />\r\n<br />\r\n<p>Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>');
INSERT INTO `pageset` VALUES (13, 1, 'Culture', '', '', '', '', '&nbsp;Tengyan is a market leader. It&rsquo;s been awarded a CMS of the year 2007, 2008 and won a Hall of Fame Award in the 2009 being the Best Open Source PHP CMS.<br />\r\n<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n<br />\r\n<input style="margin-right: 10px" align="left" src="/upload/layout/1299904822.jpg" width="211" height="454" type="image" longdesc="undefined" />Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\nTengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n<br />\r\nTengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n<br />\r\nTengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />');
INSERT INTO `pageset` VALUES (14, 1, 'Human Resources', '', '', '', '', 'Human Resources<br />\r\n<br />\r\n<p>Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>');
INSERT INTO `pageset` VALUES (15, 1, 'Development', '', '', '', '', 'Development<br />\r\n<br />\r\n<p>Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>');
INSERT INTO `pageset` VALUES (16, 1, 'Contact us', '', '', '', '', '<table border="0" cellpadding="5" cellspacing="5" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<font size="3"><strong>NINGXIA BAOTA ACTIVATED CARBON CO.LTD</strong></font></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Address:LuhuaTown,Xixia District,YinchuanCity,Ningxia,China</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Tel:0951-2159268  Technical Support:13239503950</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Skype ID：ay_851225</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\n<iframe width="700" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://ditu.google.cn/maps?f=q&amp;source=s_q&amp;hl=zh-CN&amp;geocode=&amp;q=%E5%AE%81%E5%A4%8F%E9%93%B6%E5%B7%9D%E8%A5%BF%E5%A4%8F%E5%8C%BA&amp;aq=0&amp;oq=%E5%AE%81%E5%A4%8F%E9%93%B6%E5%B7%9D%E5%B8%82%E8%A5%BF%E5%A4%8F%E5%8C%BA&amp;sll=38.473482,106.177711&amp;sspn=0.201052,0.308647&amp;brcurrent=3,0x3640423f6d0e3819:0xf9a2087f490f29aa,0,0x36402d5f37324ce5:0x8d19520f477bd68c%3B5,0,0&amp;ie=UTF8&amp;hq=&amp;hnear=%E5%AE%81%E5%A4%8F%E5%9B%9E%E6%97%8F%E8%87%AA%E6%B2%BB%E5%8C%BA%E9%93%B6%E5%B7%9D%E8%A5%BF%E5%A4%8F%E5%8C%BA&amp;t=m&amp;ll=38.491219,106.150589&amp;spn=0.161232,0.479965&amp;z=11&amp;iwloc=A&amp;output=embed"></iframe><br /><small><a href="http://ditu.google.cn/maps?f=q&amp;source=embed&amp;hl=zh-CN&amp;geocode=&amp;q=%E5%AE%81%E5%A4%8F%E9%93%B6%E5%B7%9D%E8%A5%BF%E5%A4%8F%E5%8C%BA&amp;aq=0&amp;oq=%E5%AE%81%E5%A4%8F%E9%93%B6%E5%B7%9D%E5%B8%82%E8%A5%BF%E5%A4%8F%E5%8C%BA&amp;sll=38.473482,106.177711&amp;sspn=0.201052,0.308647&amp;brcurrent=3,0x3640423f6d0e3819:0xf9a2087f490f29aa,0,0x36402d5f37324ce5:0x8d19520f477bd68c%3B5,0,0&amp;ie=UTF8&amp;hq=&amp;hnear=%E5%AE%81%E5%A4%8F%E5%9B%9E%E6%97%8F%E8%87%AA%E6%B2%BB%E5%8C%BA%E9%93%B6%E5%B7%9D%E8%A5%BF%E5%A4%8F%E5%8C%BA&amp;t=m&amp;ll=38.491219,106.150589&amp;spn=0.161232,0.479965&amp;z=11&amp;iwloc=A" style="color:#0000FF;text-align:left">Zoom</a></small>');

-- --------------------------------------------------------

-- 
-- 表的结构 `pagesetpic`
-- 

CREATE TABLE `pagesetpic` (
  `id_pagesetpic` int(11) NOT NULL auto_increment,
  `id_pageset` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_pagesetpic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `pagesetpic`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `pavy1`
-- 

CREATE TABLE `pavy1` (
  `id_pavy1` int(11) NOT NULL auto_increment,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `product_visit` int(1) NOT NULL default '0',
  `store_visit` int(1) NOT NULL default '0',
  `news_visit` int(1) NOT NULL default '0',
  `hr_visit` int(1) NOT NULL default '0',
  `pavy_visit` int(1) NOT NULL default '0',
  `data_visit` int(1) NOT NULL default '0',
  `siteset_visit` int(1) NOT NULL default '0',
  `level` int(1) NOT NULL default '0',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  PRIMARY KEY  (`id_pavy1`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- 
-- 导出表中的数据 `pavy1`
-- 

INSERT INTO `pavy1` VALUES (28, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `pavy2`
-- 

CREATE TABLE `pavy2` (
  `id_pvay2` int(11) NOT NULL auto_increment,
  `id_hr` int(11) NOT NULL,
  `id_backmenu` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `browseprem` int(1) NOT NULL default '0',
  `addprem` int(1) NOT NULL default '0',
  `editprem` int(1) NOT NULL default '0',
  `deleprem` int(1) NOT NULL default '0',
  `display` int(1) NOT NULL default '1',
  `level` int(1) NOT NULL default '0',
  `state` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  PRIMARY KEY  (`id_pvay2`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=264 ;

-- 
-- 导出表中的数据 `pavy2`
-- 

INSERT INTO `pavy2` VALUES (246, 1, 46, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (245, 1, 41, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (244, 1, 39, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (243, 1, 22, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (242, 1, 21, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (241, 1, 20, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (240, 1, 19, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (239, 1, 18, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (238, 1, 17, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (237, 1, 16, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (236, 1, 15, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (235, 1, 47, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (234, 1, 8, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (233, 1, 9, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (263, 1, 49, 1, 0, 0, 0, 0, 1, 0, 1, '2012-02-26 20:27:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (247, 1, 48, 1, 1, 1, 1, 1, 1, 0, 1, '2011-03-09 16:42:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `post`
-- 

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL auto_increment,
  `post` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_post`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `post`
-- 

INSERT INTO `post` VALUES (1, '普通员工', 1);
INSERT INTO `post` VALUES (2, '物料收发员', 1);
INSERT INTO `post` VALUES (3, 'IQC', 1);
INSERT INTO `post` VALUES (4, '仓库主管', 1);
INSERT INTO `post` VALUES (5, '采购主管', 1);
INSERT INTO `post` VALUES (6, '销售主管', 1);
INSERT INTO `post` VALUES (7, '副总经理', 1);
INSERT INTO `post` VALUES (8, '总经理', 1);
INSERT INTO `post` VALUES (9, '网站管理员', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `productdir`
-- 

CREATE TABLE `productdir` (
  `id_proddir` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL,
  `name` varchar(50) NOT NULL default '1',
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `dirurl` varchar(50) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_proddir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

-- 
-- 导出表中的数据 `productdir`
-- 

INSERT INTO `productdir` VALUES (1, 0, 'Activated carbon for water treatment', '', 1, '', 0, 1, 1);
INSERT INTO `productdir` VALUES (2, 0, 'Activated carbon for desulfurization', '', 1, '', 0, 1, 2);
INSERT INTO `productdir` VALUES (3, 0, 'Columnar-cracked activated carbon', '', 1, '', 0, 1, 3);
INSERT INTO `productdir` VALUES (4, 0, 'PSA activated carbon', '', 1, '', 0, 1, 4);
INSERT INTO `productdir` VALUES (5, 0, 'Activated carbon for water treatment', '', 1, '', 1, 2, 5);
INSERT INTO `productdir` VALUES (6, 0, 'Columnar-cracked activated carbon', '', 1, '', 3, 2, 6);
INSERT INTO `productdir` VALUES (12, 0, 'Activated carbon for desulfurization', '', 1, '', 2, 2, 7);
INSERT INTO `productdir` VALUES (17, 0, 'PSA activated carbon', '', 1, '', 4, 2, 8);
INSERT INTO `productdir` VALUES (20, 1, '水处理活性炭', '', 1, '', 0, 1, 20);
INSERT INTO `productdir` VALUES (21, 1, '水处理活性炭', '', 1, '', 20, 2, 21);
INSERT INTO `productdir` VALUES (22, 1, '载体活性炭', '', 1, '', 0, 1, 22);
INSERT INTO `productdir` VALUES (23, 1, '脱硫活性炭', '', 1, '', 0, 1, 23);
INSERT INTO `productdir` VALUES (24, 1, '溶剂回收', '', 1, '', 0, 1, 24);
INSERT INTO `productdir` VALUES (27, 1, '溶剂回收', '', 1, '', 24, 2, 25);
INSERT INTO `productdir` VALUES (29, 1, '脱硫活性炭', '', 1, '', 23, 2, 26);
INSERT INTO `productdir` VALUES (46, 1, '煤质柱状破碎', '', 1, '', 45, 2, 27);
INSERT INTO `productdir` VALUES (45, 1, '煤质柱状破碎', '', 1, '', 0, 1, 28);
INSERT INTO `productdir` VALUES (43, 1, '粉状活性炭', '', 1, '', 0, 1, 29);
INSERT INTO `productdir` VALUES (44, 1, '粉状活性炭', '', 1, '', 43, 2, 30);
INSERT INTO `productdir` VALUES (40, 1, '空气净化', '', 1, '', 39, 2, 31);
INSERT INTO `productdir` VALUES (41, 1, '变压吸附碳', '', 1, '', 0, 1, 32);
INSERT INTO `productdir` VALUES (39, 1, '空气净化', '', 1, '', 0, 1, 33);
INSERT INTO `productdir` VALUES (30, 1, '载体活性炭', '', 1, '', 22, 2, 34);
INSERT INTO `productdir` VALUES (42, 1, '变压吸附碳', '', 1, '', 41, 2, 35);
INSERT INTO `productdir` VALUES (38, 0, '二级目录', '', 1, '', 37, 2, 38);
INSERT INTO `productdir` VALUES (47, 0, 'Carrier activated carbon', '', 1, '', 0, 1, 9);
INSERT INTO `productdir` VALUES (48, 0, 'Carrier activated carbon', '', 0, '', 1, 2, 10);
INSERT INTO `productdir` VALUES (49, 0, 'Carrier activated carbon', '', 1, '', 47, 2, 11);
INSERT INTO `productdir` VALUES (50, 0, 'Solvent Recovery activated carbon', '', 1, '', 0, 1, 12);
INSERT INTO `productdir` VALUES (51, 0, 'Solvent Recovery activated carbon', '', 1, '', 50, 2, 13);
INSERT INTO `productdir` VALUES (52, 0, 'Powered activated carbon', '', 1, '', 0, 1, 14);
INSERT INTO `productdir` VALUES (53, 0, 'Powered activated carbon', '', 1, '', 52, 2, 15);
INSERT INTO `productdir` VALUES (54, 0, 'Activated carbon for air purification', '', 1, '', 0, 1, 16);
INSERT INTO `productdir` VALUES (55, 0, 'Activated carbon for air purification', '', 1, '', 54, 2, 17);

-- --------------------------------------------------------

-- 
-- 表的结构 `productinfo`
-- 

CREATE TABLE `productinfo` (
  `id_prodinfo` int(11) NOT NULL auto_increment,
  `id_proddir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `isnew` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_prodinfo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

-- 
-- 导出表中的数据 `productinfo`
-- 

INSERT INTO `productinfo` VALUES (15, 29, 0, 1, 'costly licensing fees or risk of vendor lock-in. ', 'costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.', '<p>\r\n	Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>\r\n	Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n<p>\r\n	Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n	Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n	<br />\r\n	<img alt="" height="300" src="/upload/other/3370760292.jpg" width="300" /></p>\r\n', '', 1, 1, '2011-01-19 18:55:05', '2012-06-22 16:44:41', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (16, 44, 0, 1, 'Content Management System available today.', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\n\r\n', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\n<img alt="" height="208" src="/upload/other/3370760674.jpg" width="300" /><br />\r\n', '', 1, 1, '2011-01-19 19:12:53', '2012-06-22 16:44:31', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (17, 27, 0, 1, 'Tengyan has no costly licensing fees or risk ', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\n', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370759927.jpg" /><br />', '', 1, 1, '2011-01-19 19:17:55', '2012-05-15 17:59:49', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (18, 44, 0, 1, 'This ensures a huge range of free', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n<br />\r\n<img alt="" height="300" src="/upload/other/3370759477.jpg" width="300" /><br />\r\n', '', 1, 1, '2011-01-19 19:22:07', '2012-06-22 16:44:21', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (19, 44, 0, 1, 'It can significantly reduce total project ', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n\r\n', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n<br />\r\n<img alt="" height="220" src="/upload/other/3370759057.jpg" width="300" /><br />\r\n', '', 1, 1, '2011-01-21 14:20:11', '2012-06-22 16:44:10', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (20, 29, 0, 1, 'Tengyan has no costly licensing fees or risk of vendor lock-in.11', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\nTengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\n<img width="300" height="208" alt="" src="/upload/other/3370758706.jpg" /><br />\r\n<br />', '', 1, 1, '2011-01-21 14:23:04', '2012-05-15 17:57:48', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (21, 46, 0, 1, 'Tengyan has a massive developers community ', 'Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n\r\n', 'Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n<br />\r\n<img alt="" height="300" src="/upload/other/3370758358.jpg" width="300" />', '', 1, 1, '2011-01-21 14:30:37', '2012-06-22 16:44:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (22, 44, 0, 1, 'There are absolutely no restriction on how your site looks like.', 'Set up user roles and permissions. Assign Manager, Employee or Admin role with ease. Decide what content is available to whom.Support for multiple-language websites. Enjoy clean, user and search engine friendly URLs. Other SEO friendly features are inside too: Titles, Internal Link Structure, Meta Tags.There are absolutely no restriction on how your site looks like. Create very unique, custom theme.\r\n', 'Set up user roles and permissions. Assign Manager, Employee or Admin role with ease. Decide what content is available to whom.Support for multiple-language websites. Enjoy clean, user and search engine friendly URLs. Other SEO friendly features are inside too: Titles, Internal Link Structure, Meta Tags.There are absolutely no restriction on how your site looks like. Create very unique, custom theme.<br />\r\n<br />\r\n<img alt="" height="300" src="/upload/other/3370758007.jpg" width="300" /><br />\r\n', '', 1, 1, '2011-01-21 14:34:06', '2012-06-22 16:43:51', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (27, 21, 0, 1, '腾岩科技为您量身定做各类网站', '腾岩科技为您量身定做各类网站，会根据您的需求和您公司的特色，为您订制特色网站。\r\n\r\n网站采用的技术是PHP语言+MYSQL数据库，可在WINDOWS，LINUX，UNIX，CENTOS多种服务器上跨平台运行。\r\n', '腾岩科技为您量身定做各类网站，会根据您的需求和您公司的特色，为您订制特色网站。<br />\r\n<br />\r\n网站采用的技术是PHP语言+MYSQL数据库，可在WINDOWS，LINUX，UNIX，CENTOS多种服务器上跨平台运行。<br />\r\n<br />\r\n网站整体结构策划及企业形象设计；<br />\r\n&rarr;基础服务: 个性化主页及频道栏目设计（包含公司简介、产品介绍、用户反馈、联系我们）；<br />\r\n&rarr; 精美页面10页，超出部分按100元/页收费（产品介绍页面的产品条目不得超过50）；<br />\r\n&rarr; 网站功能：新闻管理系统、产品管理系统、后台用户管理、招聘管理系统、权限系统、数据库备份、广告管理、版面管理、支持SEO优化、每个新闻和每个产品页面可自定义SEO搜索标签、前台邮件反馈系统、支持第三方统计代码、网站防拷贝、支持GOOGLE地图。<br />\r\n<img width="300" height="208" alt="" src="/upload/other/3370756356.jpg" /><br />\r\n<br />\r\n<br />\r\n详细功能可参考我们的DEMO演示站点:<br />\r\n<a class="link_navi" href="http://demo-1.vicp.net:8080/">http://demo-1.vicp.net:8080/</a><br />\r\n<a class="link_navi" href="http://demo-2.vicp.net:8080/">http://demo-2.vicp.net:8080/</a>', '', 1, 1, '2012-02-28 14:14:26', '2012-05-15 17:53:51', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (24, 30, 0, 1, 'Tengyan has no costly licensing fees or risk of vendor lock-in', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\n', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370757421.jpg" />', '', 1, 1, '2011-01-21 14:42:10', '2012-05-15 17:55:44', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (25, 27, 0, 1, 'Tengyan is a market leader', 'Tengyan is a market leader. It’s been awarded a CMS of the year 2007, 2008 and won a Hall of Fame Award in the 2009 being the Best Open Source PHP CMS.\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources', 'Tengyan is a market leader. It&rsquo;s been awarded a CMS of the year 2007, 2008 and won a Hall of Fame Award in the 2009 being the Best Open Source PHP CMS. Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources<br />\r\n<br />\r\n<img alt="" height="220" src="/upload/other/3370757328.jpg" width="300" />', '', 1, 1, '2011-01-21 14:45:46', '2012-06-22 16:43:40', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (26, 29, 0, 1, 'Create/Delete/Change content with ease', 'With Tengyan, we''ve added many that we believe are essential to build modern, usable and functional websites.Create/Delete/Change content with ease. Manage page structure.Tengyan admin interface is no more problematic. Easy to navigate and straightforward admin dashboard.', '<p>With Tengyan, we''ve added many that we believe are essential to build modern, usable and functional websites.Create/Delete/Change content with ease. Manage page structure.Tengyan admin interface is no more problematic. Easy to navigate and straightforward admin dashboard.</p>\r\n<p>Set up user roles and permissions. Assign Manager, Employee or Admin role with ease. Decide what content is available to whom.Support for multiple-language websites. Enjoy clean, user and search engine friendly URLs. Other SEO friendly features are inside too: Titles, Internal Link Structure, Meta Tags.There are absolutely no restriction on how your site looks like. Create very unique, custom theme.<br />\r\n<br />\r\n<img width="550" height="363" alt="" src="/upload/other/3370757105.jpg" /></p>', '111', 1, 1, '2011-01-21 14:48:05', '2012-05-15 17:55:09', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (28, 28, 0, 1, '电子商务是企业上网欲实现的目标', '电子商务是企业上网欲实现的目标。B2C就是商家与顾客之间的商务活动，他也将成为电子商务的一种主要的商务形式，"B2C网上购物网站"是实现这种商务活动的电子平台。商家可以根据自己的实际情况，根据自己发展电子商务的目标；选择所需的功能系统，组成自己的电子商务网站。 \r\n', '电子商务是企业上网欲实现的目标。B2C就是商家与顾客之间的商务活动，他也将成为电子商务的一种主要的商务形式，&quot;B2C网上购物网站&quot;是实现这种商务活动的电子平台。商家可以根据自己的实际情况，根据自己发展电子商务的目标；选择所需的功能系统，组成自己的电子商务网站。&nbsp;<br />\r\n<br />\r\n标准版 基础服务： &rarr; 个性化主页及频道栏目设计（包含公司简介、公司动态、产品介绍、用户反馈、联系我们）；后台管理系统，包括人员、权限管理； &rarr; 新闻管理系统，包括新闻的发布、修改、删除、查询。 &rarr; 产品管理系统，包括产品信息的发布、修改、删除； &rarr; 会员注册及管理系统，包括会员注册、基本资料管理及为会员单独提供有价信息； &rarr; 网上商城系统，包括购物车、订单、及订单反馈（包括支付系统）。&nbsp;<br />\r\n<br />\r\n&rarr; 顶级域名一个：国际域名www.yourname.com或国内域名ww.yourname.com.cn ；维护与改版： 第二年起收取网站空间及维护费1500元（包含域名费）； 企业版 基础服务： &rarr; 个性化主页及频道栏目设计（新闻管理系统、产品管理系统、后台用户管理、招聘管理系统、权限系统、数据库备份、广告管理、版面管理、支持SEO优化、每个新闻和每个产品页面可自定义SEO搜索标签、前台邮件反馈系统、支持第三方统计代码、网站防拷贝、支持GOOGLE地图）； &rarr; 精美页面20页，首页包含FLASH动态精美效果。超出部分按100元/页收费；后台管理系统，包括人员、权限管理；&nbsp;<br />\r\n<br />\r\n&rarr; 新闻图库管理系统，包括新闻的发布、修改、删除、查询。 &rarr; 产品管理系统，包括产品信息的发布、修改、删除； &rarr; 会员注册及管理系统，包括会员注册、基本资料管理及为会员单独提供有价信息； &rarr; 网上商城系统，包括购物车、订单、及订单反馈（包括支付系统）。 &rarr; 顶级域名一个：国际域名www.yourname.com或国内域www.yourname.com.cn ；维护与改版： 第二年起收取网站空间及维护费6000元（包含域名费）；', '', 0, 1, '2012-02-28 14:17:08', '2012-02-28 14:17:31', '2012-03-10 14:57:04', 0);
INSERT INTO `productinfo` VALUES (29, 21, 0, 1, 'costly licensing fees or risk of vendor lock-in. ', 'costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.', '<p>Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370760103.jpg" /></p>', '', 1, 1, '2011-01-19 18:55:05', '2012-05-15 18:00:08', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (30, 21, 0, 1, 'Content Management System available today.', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\n\r\n', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370760451.jpg" /><br />', '', 1, 1, '2011-01-19 19:12:53', '2012-05-15 18:00:44', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (31, 21, 0, 1, 'Tengyan has no costly licensing fees or risk ', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\n', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\n<img alt="" height="220" src="/upload/other/3370760856.jpg" width="300" /><br />\r\n', '', 1, 1, '2011-01-19 19:17:55', '2012-06-22 16:43:25', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (32, 21, 0, 1, 'This ensures a huge range of free', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370759721.jpg" />', '', 1, 1, '2011-01-19 19:22:07', '2012-05-15 17:59:27', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (33, 29, 0, 1, 'It can significantly reduce total project ', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n\r\n', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370759297.jpg" /><br />\r\n<br />', '', 1, 1, '2011-01-21 14:20:11', '2012-05-15 17:58:44', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (34, 21, 0, 1, 'Tengyan has no costly licensing fees or risk of vendor lock-in.', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\nTengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\n<img width="550" height="363" alt="" src="/upload/other/33707588410.jpg" />', '', 1, 1, '2011-01-21 14:23:04', '2012-05-15 17:58:06', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (35, 29, 0, 1, 'Tengyan has a massive developers community ', 'Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n\r\n', 'Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370758263.jpg" /><br />\r\n<br />', '', 1, 1, '2011-01-21 14:30:37', '2012-05-15 17:56:59', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (36, 30, 0, 1, 'There are absolutely no restriction on how your site looks like.', 'Set up user roles and permissions. Assign Manager, Employee or Admin role with ease. Decide what content is available to whom.Support for multiple-language websites. Enjoy clean, user and search engine friendly URLs. Other SEO friendly features are inside too: Titles, Internal Link Structure, Meta Tags.There are absolutely no restriction on how your site looks like. Create very unique, custom theme.\r\n', 'Set up user roles and permissions. Assign Manager, Employee or Admin role with ease. Decide what content is available to whom.Support for multiple-language websites. Enjoy clean, user and search engine friendly URLs. Other SEO friendly features are inside too: Titles, Internal Link Structure, Meta Tags.There are absolutely no restriction on how your site looks like. Create very unique, custom theme.<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370757797.jpg" />', '', 1, 1, '2011-01-21 14:34:06', '2012-05-15 17:56:20', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (37, 5, 0, 1, 'costly licensing fees or risk of vendor lock-in. ', 'costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.', '<p>Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370760292.jpg" /></p>', '', 1, 1, '2011-01-19 18:55:05', '2012-05-15 18:00:25', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (38, 5, 0, 1, 'Content Management System available today.', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\n\r\n', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\n<img width="300" height="208" alt="" src="/upload/other/3370760674.jpg" /><br />', '', 1, 1, '2011-01-19 19:12:53', '2012-05-15 18:01:04', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (39, 5, 0, 1, 'Tengyan has no costly licensing fees or risk ', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\n', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370759927.jpg" /><br />', '', 1, 1, '2011-01-19 19:17:55', '2012-05-15 17:59:49', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (40, 6, 0, 1, 'This ensures a huge range of free', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370759477.jpg" /><br />', '', 1, 1, '2011-01-19 19:22:07', '2012-05-15 17:59:08', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (41, 6, 0, 1, 'It can significantly reduce total project ', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n\r\n', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n<br />\r\n<img width="300" height="220" alt="" src="/upload/other/3370759057.jpg" /><br />', '', 1, 1, '2011-01-21 14:20:11', '2012-05-15 17:58:22', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (42, 6, 0, 1, 'Tengyan has no costly licensing fees or risk of vendor lock-in.11', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\nTengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\n<img width="300" height="208" alt="" src="/upload/other/3370758706.jpg" /><br />\r\n<br />', '', 1, 1, '2011-01-21 14:23:04', '2012-05-15 17:57:48', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (43, 7, 0, 1, 'Tengyan has a massive developers community ', 'Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n\r\n', 'Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370758358.jpg" />', '', 1, 1, '2011-01-21 14:30:37', '2012-05-15 17:57:14', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (44, 8, 0, 1, 'There are absolutely no restriction on how your site looks like.', 'Set up user roles and permissions. Assign Manager, Employee or Admin role with ease. Decide what content is available to whom.Support for multiple-language websites. Enjoy clean, user and search engine friendly URLs. Other SEO friendly features are inside too: Titles, Internal Link Structure, Meta Tags.There are absolutely no restriction on how your site looks like. Create very unique, custom theme.\r\n', 'Set up user roles and permissions. Assign Manager, Employee or Admin role with ease. Decide what content is available to whom.Support for multiple-language websites. Enjoy clean, user and search engine friendly URLs. Other SEO friendly features are inside too: Titles, Internal Link Structure, Meta Tags.There are absolutely no restriction on how your site looks like. Create very unique, custom theme.<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370758007.jpg" /><br />', '', 1, 1, '2011-01-21 14:34:06', '2012-05-15 17:56:39', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (45, 8, 0, 1, '腾岩科技为您量身定做各类网站', '腾岩科技为您量身定做各类网站，会根据您的需求和您公司的特色，为您订制特色网站。\r\n\r\n网站采用的技术是PHP语言+MYSQL数据库，可在WINDOWS，LINUX，UNIX，CENTOS多种服务器上跨平台运行。\r\n', '腾岩科技为您量身定做各类网站，会根据您的需求和您公司的特色，为您订制特色网站。<br />\r\n<br />\r\n网站采用的技术是PHP语言+MYSQL数据库，可在WINDOWS，LINUX，UNIX，CENTOS多种服务器上跨平台运行。<br />\r\n<br />\r\n网站整体结构策划及企业形象设计；<br />\r\n&rarr;基础服务: 个性化主页及频道栏目设计（包含公司简介、产品介绍、用户反馈、联系我们）；<br />\r\n&rarr; 精美页面10页，超出部分按100元/页收费（产品介绍页面的产品条目不得超过50）；<br />\r\n&rarr; 网站功能：新闻管理系统、产品管理系统、后台用户管理、招聘管理系统、权限系统、数据库备份、广告管理、版面管理、支持SEO优化、每个新闻和每个产品页面可自定义SEO搜索标签、前台邮件反馈系统、支持第三方统计代码、网站防拷贝、支持GOOGLE地图。<br />\r\n<img width="300" height="208" alt="" src="/upload/other/3370756356.jpg" /><br />\r\n<br />\r\n<br />\r\n详细功能可参考我们的DEMO演示站点:<br />\r\n<a class="link_navi" href="http://demo-1.vicp.net:8080/">http://demo-1.vicp.net:8080/</a><br />\r\n<a class="link_navi" href="http://demo-2.vicp.net:8080/">http://demo-2.vicp.net:8080/</a>', '', 1, 1, '2012-02-28 14:14:26', '2012-05-15 17:53:51', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (46, 7, 0, 1, 'Tengyan has no costly licensing fees or risk of vendor lock-in', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\n', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370757421.jpg" />', '', 1, 1, '2011-01-21 14:42:10', '2012-05-15 17:55:44', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (47, 9, 0, 1, 'Tengyan is a market leader', 'Tengyan is a market leader. It’s been awarded a CMS of the year 2007, 2008 and won a Hall of Fame Award in the 2009 being the Best Open Source PHP CMS.\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources', 'Tengyan is a market leader. It&rsquo;s been awarded a CMS of the year 2007, 2008 and won a Hall of Fame Award in the 2009 being the Best Open Source PHP CMS. Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources<br />\r\n<br />\r\n<img width="300" height="220" alt="" src="/upload/other/3370757328.jpg" />', '', 1, 1, '2011-01-21 14:45:46', '2012-05-15 17:55:24', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (48, 9, 0, 1, 'Create/Delete/Change content with ease', 'With Tengyan, we''ve added many that we believe are essential to build modern, usable and functional websites.Create/Delete/Change content with ease. Manage page structure.Tengyan admin interface is no more problematic. Easy to navigate and straightforward admin dashboard.', '<p>With Tengyan, we''ve added many that we believe are essential to build modern, usable and functional websites.Create/Delete/Change content with ease. Manage page structure.Tengyan admin interface is no more problematic. Easy to navigate and straightforward admin dashboard.</p>\r\n<p>Set up user roles and permissions. Assign Manager, Employee or Admin role with ease. Decide what content is available to whom.Support for multiple-language websites. Enjoy clean, user and search engine friendly URLs. Other SEO friendly features are inside too: Titles, Internal Link Structure, Meta Tags.There are absolutely no restriction on how your site looks like. Create very unique, custom theme.<br />\r\n<br />\r\n<img width="550" height="363" alt="" src="/upload/other/3370757105.jpg" /></p>', '111', 1, 1, '2011-01-21 14:48:05', '2012-05-15 17:55:09', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (49, 9, 0, 1, '电子商务是企业上网欲实现的目标', '电子商务是企业上网欲实现的目标。B2C就是商家与顾客之间的商务活动，他也将成为电子商务的一种主要的商务形式，"B2C网上购物网站"是实现这种商务活动的电子平台。商家可以根据自己的实际情况，根据自己发展电子商务的目标；选择所需的功能系统，组成自己的电子商务网站。 \r\n', '电子商务是企业上网欲实现的目标。B2C就是商家与顾客之间的商务活动，他也将成为电子商务的一种主要的商务形式，&quot;B2C网上购物网站&quot;是实现这种商务活动的电子平台。商家可以根据自己的实际情况，根据自己发展电子商务的目标；选择所需的功能系统，组成自己的电子商务网站。&nbsp;<br />\r\n<br />\r\n标准版 基础服务： &rarr; 个性化主页及频道栏目设计（包含公司简介、公司动态、产品介绍、用户反馈、联系我们）；后台管理系统，包括人员、权限管理； &rarr; 新闻管理系统，包括新闻的发布、修改、删除、查询。 &rarr; 产品管理系统，包括产品信息的发布、修改、删除； &rarr; 会员注册及管理系统，包括会员注册、基本资料管理及为会员单独提供有价信息； &rarr; 网上商城系统，包括购物车、订单、及订单反馈（包括支付系统）。&nbsp;<br />\r\n<br />\r\n&rarr; 顶级域名一个：国际域名www.yourname.com或国内域名ww.yourname.com.cn ；维护与改版： 第二年起收取网站空间及维护费1500元（包含域名费）； 企业版 基础服务： &rarr; 个性化主页及频道栏目设计（新闻管理系统、产品管理系统、后台用户管理、招聘管理系统、权限系统、数据库备份、广告管理、版面管理、支持SEO优化、每个新闻和每个产品页面可自定义SEO搜索标签、前台邮件反馈系统、支持第三方统计代码、网站防拷贝、支持GOOGLE地图）； &rarr; 精美页面20页，首页包含FLASH动态精美效果。超出部分按100元/页收费；后台管理系统，包括人员、权限管理；&nbsp;<br />\r\n<br />\r\n&rarr; 新闻图库管理系统，包括新闻的发布、修改、删除、查询。 &rarr; 产品管理系统，包括产品信息的发布、修改、删除； &rarr; 会员注册及管理系统，包括会员注册、基本资料管理及为会员单独提供有价信息； &rarr; 网上商城系统，包括购物车、订单、及订单反馈（包括支付系统）。 &rarr; 顶级域名一个：国际域名www.yourname.com或国内域www.yourname.com.cn ；维护与改版： 第二年起收取网站空间及维护费6000元（包含域名费）；', '', 0, 1, '2012-02-28 14:17:08', '2012-02-28 14:17:31', '2012-03-10 14:57:04', 0);
INSERT INTO `productinfo` VALUES (50, 10, 0, 1, 'costly licensing fees or risk of vendor lock-in. ', 'costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.', '<p>Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.</p>\r\n<p>Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370760103.jpg" /></p>', '', 1, 1, '2011-01-19 18:55:05', '2012-05-15 18:00:08', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (51, 10, 0, 1, 'Content Management System available today.', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\n\r\n', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370760451.jpg" /><br />', '', 1, 1, '2011-01-19 19:12:53', '2012-05-15 18:00:44', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (52, 11, 0, 1, 'Tengyan has no costly licensing fees or risk ', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\n', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\n<img width="300" height="220" alt="" src="/upload/other/3370760856.jpg" /><br />', '', 1, 1, '2011-01-19 19:17:55', '2012-05-15 18:01:19', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (53, 12, 0, 1, 'This ensures a huge range of free', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370759721.jpg" />', '', 1, 1, '2011-01-19 19:22:07', '2012-05-15 17:59:27', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (54, 12, 0, 1, 'It can significantly reduce total project ', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n\r\n', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\nTengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370759297.jpg" /><br />\r\n<br />', '', 1, 1, '2011-01-21 14:20:11', '2012-05-15 17:58:44', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (55, 14, 0, 1, 'Tengyan has no costly licensing fees or risk of vendor lock-in.', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.', 'Tengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\nTengyan has no costly licensing fees or risk of vendor lock-in. It can significantly reduce total project integration costs.Thanks to a huge library of free extensions Tengyan has become the most powerful, robust and extensible Content Management System available today.<br />\r\n<br />\r\n<img width="550" height="363" alt="" src="/upload/other/33707588410.jpg" />', '', 1, 1, '2011-01-21 14:23:04', '2012-05-15 17:58:06', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (56, 14, 0, 1, 'Tengyan has a massive developers community ', 'Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.\r\n\r\n', 'Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.Tengyan has a massive developers community (more than 2000 members). This ensures a huge range of free, professional and high quality resources.<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370758263.jpg" /><br />\r\n<br />', '', 1, 1, '2011-01-21 14:30:37', '2012-05-15 17:56:59', '0000-00-00 00:00:00', 0);
INSERT INTO `productinfo` VALUES (57, 18, 0, 1, 'There are absolutely no restriction on how your site looks like.', 'Set up user roles and permissions. Assign Manager, Employee or Admin role with ease. Decide what content is available to whom.Support for multiple-language websites. Enjoy clean, user and search engine friendly URLs. Other SEO friendly features are inside too: Titles, Internal Link Structure, Meta Tags.There are absolutely no restriction on how your site looks like. Create very unique, custom theme.\r\n', 'Set up user roles and permissions. Assign Manager, Employee or Admin role with ease. Decide what content is available to whom.Support for multiple-language websites. Enjoy clean, user and search engine friendly URLs. Other SEO friendly features are inside too: Titles, Internal Link Structure, Meta Tags.There are absolutely no restriction on how your site looks like. Create very unique, custom theme.<br />\r\n<br />\r\n<img width="300" height="300" alt="" src="/upload/other/3370757797.jpg" />', '', 1, 1, '2011-01-21 14:34:06', '2012-05-15 17:56:20', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `productpic`
-- 

CREATE TABLE `productpic` (
  `id_prodpic` int(11) NOT NULL auto_increment,
  `id_prodinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_prodpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

-- 
-- 导出表中的数据 `productpic`
-- 

INSERT INTO `productpic` VALUES (41, 27, 1, '', '', '', '1337400044.jpg', '', 1, 'JPG', '2012-05-19 12:00:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (2, 26, 1, '', '', '', '1337051407.jpg', '', 1, 'JPG', '2012-05-15 11:10:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (3, 25, 1, '', '', '', '1337051418.jpg', '', 1, 'JPG', '2012-05-15 11:10:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (4, 24, 1, '', '', '', '1337051428.jpg', '', 1, 'JPG', '2012-05-15 11:10:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (5, 22, 1, '', '', '', '1337051438.jpg', '', 1, 'JPG', '2012-05-15 11:10:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (6, 21, 1, '', '', '', '1337051447.jpg', '', 1, 'JPG', '2012-05-15 11:10:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (7, 35, 1, '', '', '', '1337051454.jpg', '', 1, 'JPG', '2012-05-15 11:10:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (8, 20, 1, '', '', '', '1337051465.jpg', '', 1, 'JPG', '2012-05-15 11:11:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (9, 36, 1, '', '', '', '1337052215.jpg', '', 1, 'JPG', '2012-05-15 11:23:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (10, 29, 1, '', '', '', '1337052235.jpg', '', 1, 'JPG', '2012-05-15 11:23:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (11, 34, 1, '', '', '', '1337052689.jpg', '', 1, 'JPG', '2012-05-15 11:31:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (12, 19, 1, '', '', '', '1337052702.jpg', '', 1, 'JPG', '2012-05-15 11:31:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (13, 33, 1, '', '', '', '1337052715.jpg', '', 1, 'JPG', '2012-05-15 11:31:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (14, 18, 1, '', '', '', '1337052734.jpg', '', 1, 'JPG', '2012-05-15 11:32:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (15, 32, 1, '', '', '', '1337052771.jpg', '', 1, 'JPG', '2012-05-15 11:32:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (16, 17, 1, '', '', '', '1337052788.jpg', '', 1, 'JPG', '2012-05-15 11:33:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (17, 31, 1, '', '', '', '1337052802.jpg', '', 1, 'JPG', '2012-05-15 11:33:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (18, 16, 1, '', '', '', '1337052814.jpg', '', 1, 'JPG', '2012-05-15 11:33:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (19, 30, 1, '', '', '', '1337052826.jpg', '', 1, 'JPG', '2012-05-15 11:33:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (20, 15, 1, '', '', '', '1337052840.jpg', '', 1, 'JPG', '2012-05-15 11:34:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (21, 45, 1, '', '', '', '1337085148.jpg', '', 1, 'JPG', '2012-05-15 20:32:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (22, 48, 1, '', '', '', '1337085158.jpg', '', 1, 'JPG', '2012-05-15 20:32:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (23, 47, 1, '', '', '', '1337085168.jpg', '', 1, 'JPG', '2012-05-15 20:32:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (24, 46, 1, '', '', '', '1337085177.jpg', '', 1, 'JPG', '2012-05-15 20:32:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (25, 44, 1, '', '', '', '1337085187.jpg', '', 1, 'JPG', '2012-05-15 20:33:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (26, 57, 1, '', '', '', '1337085195.jpg', '', 1, 'JPG', '2012-05-15 20:33:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (27, 43, 1, '', '', '', '1337085204.jpg', '', 1, 'JPG', '2012-05-15 20:33:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (28, 56, 1, '', '', '', '1337085213.jpg', '', 1, 'JPG', '2012-05-15 20:33:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (29, 42, 1, '', '', '', '1337085221.jpg', '', 1, 'JPG', '2012-05-15 20:33:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (30, 55, 1, '', '', '', '1337085229.jpg', '', 1, 'JPG', '2012-05-15 20:33:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (31, 41, 1, '', '', '', '1337085237.jpg', '', 1, 'JPG', '2012-05-15 20:33:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (32, 54, 1, '', '', '', '1337085246.jpg', '', 1, 'JPG', '2012-05-15 20:34:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (33, 40, 1, '', '', '', '1337085253.jpg', '', 1, 'JPG', '2012-05-15 20:34:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (34, 53, 1, '', '', '', '1337085260.jpg', '', 1, 'JPG', '2012-05-15 20:34:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (35, 39, 1, '', '', '', '1337085271.jpg', '', 1, 'JPG', '2012-05-15 20:34:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (36, 52, 1, '', '', '', '1337085279.jpg', '', 1, 'JPG', '2012-05-15 20:34:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (37, 38, 1, '', '', '', '1337085288.jpg', '', 1, 'JPG', '2012-05-15 20:34:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (38, 51, 1, '', '', '', '1337085299.jpg', '', 1, 'JPG', '2012-05-15 20:34:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (39, 37, 1, '', '', '', '1337085308.jpg', '', 1, 'JPG', '2012-05-15 20:35:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (40, 50, 1, '', '', '', '1337085315.jpg', '', 1, 'JPG', '2012-05-15 20:35:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `siteset`
-- 

CREATE TABLE `siteset` (
  `id_siteset` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `otherheader` text NOT NULL,
  `iscopy` int(1) NOT NULL default '0',
  `rmailbox` varchar(50) NOT NULL,
  `smailbox` varchar(50) NOT NULL,
  `smailboxpass` varchar(50) NOT NULL,
  `icp` varchar(25) NOT NULL,
  `mapcode` text NOT NULL,
  `statistics` text NOT NULL,
  `isstyle` varchar(8) NOT NULL,
  PRIMARY KEY  (`id_siteset`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `siteset`
-- 

INSERT INTO `siteset` VALUES (1, 1, '宁夏宝塔活性炭有限公司', '宁夏宝塔活性炭有限公司', '宁夏宝塔活性炭有限公司', '', 0, '', '', '', '', '<iframe width="230" height="162" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://ditu.google.cn/maps?f=q&source=s_q&hl=zh-CN&geocode=&q=%E5%AE%81%E5%A4%8F%E5%9B%9E%E6%97%8F%E8%87%AA%E6%B2%BB%E5%8C%BA%E9%93%B6%E5%B7%9D%E8%A5%BF%E5%A4%8F%E5%8C%BA&aq=&sll=38.491555,106.15164&sspn=0.00912,0.01929&brcurrent=3,0x3640423f6d0e3819:0xf9a2087f490f29aa,0,0x36402d5f37324ce5:0x8d19520f477bd68c%3B5,0,0&ie=UTF8&hq=&hnear=%E5%AE%81%E5%A4%8F%E5%9B%9E%E6%97%8F%E8%87%AA%E6%B2%BB%E5%8C%BA%E9%93%B6%E5%B7%9D%E8%A5%BF%E5%A4%8F%E5%8C%BA&t=m&z=11&ll=38.491139,106.15037&output=embed"></iframe>', '', '');

-- --------------------------------------------------------

-- 
-- 表的结构 `title`
-- 

CREATE TABLE `title` (
  `id_title` int(11) NOT NULL auto_increment,
  `title` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- 导出表中的数据 `title`
-- 

INSERT INTO `title` VALUES (15, 'q', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `webmenu`
-- 

CREATE TABLE `webmenu` (
  `id_webmenu` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `url` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_webmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- 导出表中的数据 `webmenu`
-- 

INSERT INTO `webmenu` VALUES (1, 1, '网站首页----HOME', '/', 1, 0, 1, 8);
INSERT INTO `webmenu` VALUES (2, 1, '关于我们----About us', '/about/aboutus.php', 1, 0, 1, 7);
INSERT INTO `webmenu` VALUES (3, 1, '产品中心----Products', '/product/products.php', 1, 0, 1, 6);
INSERT INTO `webmenu` VALUES (4, 1, '新闻中心----News', '/news/news.php', 1, 0, 1, 5);
INSERT INTO `webmenu` VALUES (5, 1, '联系我们----Contact us', '/contactus/contactus.php', 1, 0, 1, 4);
INSERT INTO `webmenu` VALUES (11, 1, '公司介绍----Introduction', '/about/intro.php', 1, 2, 2, 0);
INSERT INTO `webmenu` VALUES (12, 1, '关于我们----About us', '/about/aboutus.php', 1, 2, 2, 0);
INSERT INTO `webmenu` VALUES (13, 1, '总经理致辞----CEO''s Message', '/about/ceomessage.php', 1, 2, 2, 0);
INSERT INTO `webmenu` VALUES (14, 1, '产品中心----Products', '/product/products.php', 1, 3, 2, 0);
INSERT INTO `webmenu` VALUES (15, 1, '资料下载----PDF download', '/product/productpdf.php', 1, 3, 2, 0);
INSERT INTO `webmenu` VALUES (16, 1, '我们的工厂----Our factory', '/product/ourfactory.php', 1, 3, 2, 0);
INSERT INTO `webmenu` VALUES (17, 1, '公司新闻----Company news', '/news/companynews.php', 1, 4, 2, 0);
INSERT INTO `webmenu` VALUES (18, 1, '产品新闻----Product news', '/news/productnews.php', 1, 4, 2, 0);
INSERT INTO `webmenu` VALUES (19, 1, '加入我们----Join us', '/news/joinus.php', 1, 4, 2, 0);
