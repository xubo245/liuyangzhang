DROP TABLE IF EXISTS liuyangnzhang_admin_menu;
CREATE TABLE `liuyangnzhang_admin_menu` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `linkurl` varchar(150) NOT NULL DEFAULT '',
  `color` varchar(15) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `groupid` mediumint(5) NOT NULL DEFAULT '0',
  `iftier` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_alonepage;
CREATE TABLE `liuyangnzhang_alonepage` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `style` varchar(15) NOT NULL DEFAULT '',
  `tpl_head` varchar(50) NOT NULL DEFAULT '',
  `tpl_main` varchar(50) NOT NULL DEFAULT '',
  `tpl_foot` varchar(50) NOT NULL DEFAULT '',
  `filename` varchar(100) DEFAULT NULL,
  `filepath` varchar(30) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `hits` int(7) NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) NOT NULL DEFAULT '0',
  `ifclose` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_area;
CREATE TABLE `liuyangnzhang_area` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM AUTO_INCREMENT=538 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_config;
CREATE TABLE `liuyangnzhang_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_crontab;
CREATE TABLE `liuyangnzhang_crontab` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `minutetime` mediumint(4) NOT NULL DEFAULT '0',
  `daytime` varchar(4) NOT NULL DEFAULT '0',
  `whiletime` int(10) NOT NULL DEFAULT '0',
  `lasttime` int(10) NOT NULL DEFAULT '0',
  `filepath` varchar(50) NOT NULL DEFAULT '',
  `about` text NOT NULL,
  `ifstop` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ifstop` (`ifstop`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_example;
CREATE TABLE `liuyangnzhang_example` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` int(7) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(150) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `list` int(10) NOT NULL DEFAULT '0',
  `ifhide` tinyint(1) NOT NULL DEFAULT '0',
  `hits` tinyint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `yz` (`ifhide`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_example_sort;
CREATE TABLE `liuyangnzhang_example_sort` (
  `fid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_form_config;
CREATE TABLE `liuyangnzhang_form_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_form_content;
CREATE TABLE `liuyangnzhang_form_content` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` varchar(10) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `hits` (`hits`,`yz`),
  KEY `list` (`list`,`yz`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_form_content_1;
CREATE TABLE `liuyangnzhang_form_content_1` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `advicetype` varchar(30) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `truename` varchar(15) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobphone` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_form_content_2;
CREATE TABLE `liuyangnzhang_form_content_2` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `my_name` varchar(20) NOT NULL DEFAULT '',
  `my_phone` varchar(20) NOT NULL DEFAULT '',
  `my_mail` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_form_module;
CREATE TABLE `liuyangnzhang_form_module` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `style` varchar(50) NOT NULL DEFAULT '',
  `config` mediumtext NOT NULL,
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `about` text NOT NULL,
  `usetitle` tinyint(1) NOT NULL DEFAULT '0',
  `repeatpost` tinyint(1) NOT NULL DEFAULT '0',
  `statename` varchar(30) NOT NULL DEFAULT '',
  `allowview` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_form_reply;
CREATE TABLE `liuyangnzhang_form_reply` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `mid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_friendlink;
CREATE TABLE `liuyangnzhang_friendlink` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` int(7) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(150) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `ifhide` tinyint(1) NOT NULL DEFAULT '0',
  `iswordlink` tinyint(1) DEFAULT NULL,
  `hits` tinyint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` int(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '1',
  `endtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `yz` (`yz`,`endtime`,`ifhide`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_friendlink_sort;
CREATE TABLE `liuyangnzhang_friendlink_sort` (
  `fid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_group;
CREATE TABLE `liuyangnzhang_group` (
  `gid` smallint(4) NOT NULL AUTO_INCREMENT,
  `gptype` tinyint(1) NOT NULL DEFAULT '0',
  `grouptitle` varchar(50) NOT NULL DEFAULT '',
  `levelnum` mediumint(7) NOT NULL DEFAULT '0',
  `totalspace` int(10) NOT NULL DEFAULT '0',
  `allowsearch` tinyint(1) NOT NULL DEFAULT '0',
  `powerdb` text NOT NULL,
  `allowadmin` tinyint(1) NOT NULL DEFAULT '0',
  `allowadmindb` text,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_guestbook_config;
CREATE TABLE `liuyangnzhang_guestbook_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_guestbook_content;
CREATE TABLE `liuyangnzhang_guestbook_content` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `ico` tinyint(2) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `oicq` varchar(11) DEFAULT NULL,
  `weburl` varchar(150) NOT NULL DEFAULT '',
  `blogurl` varchar(150) NOT NULL DEFAULT '',
  `uid` int(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `reply` text NOT NULL,
  `mobphone` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_guestbook_sort;
CREATE TABLE `liuyangnzhang_guestbook_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metatitle` varchar(250) NOT NULL DEFAULT '',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL DEFAULT '0',
  `contents` mediumint(4) NOT NULL DEFAULT '0',
  `tableid` varchar(30) NOT NULL DEFAULT '',
  `dir_name` varchar(50) NOT NULL DEFAULT '',
  `ifcolor` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_hack;
CREATE TABLE `liuyangnzhang_hack` (
  `keywords` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `author` varchar(30) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `htmlcode` text NOT NULL,
  `hackfile` text NOT NULL,
  `hacksqltable` text NOT NULL,
  `adminurl` varchar(150) NOT NULL DEFAULT '',
  `about` text NOT NULL,
  `class1` varchar(30) NOT NULL DEFAULT '',
  `class2` varchar(30) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `linkname` text NOT NULL,
  `isbiz` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_hr_apply;
CREATE TABLE `liuyangnzhang_hr_apply` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `cid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `join_id` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `join_id` (`join_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_hr_city;
CREATE TABLE `liuyangnzhang_hr_city` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_hr_collection;
CREATE TABLE `liuyangnzhang_hr_collection` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `memberuid` mediumint(7) NOT NULL DEFAULT '0',
  `companyuid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `memberuid` (`memberuid`),
  KEY `companyuid` (`companyuid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_hr_config;
CREATE TABLE `liuyangnzhang_hr_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_hr_content;
CREATE TABLE `liuyangnzhang_hr_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `fname` varchar(50) NOT NULL DEFAULT '',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `comments` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` varchar(10) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(150) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `yzer` varchar(30) NOT NULL DEFAULT '',
  `yztime` int(10) NOT NULL DEFAULT '0',
  `levels` tinyint(2) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lastfid` mediumint(7) NOT NULL DEFAULT '0',
  `editer` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `lastview` int(10) NOT NULL DEFAULT '0',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `list` (`list`,`fid`,`yz`),
  KEY `hits` (`hits`),
  KEY `city_id` (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_hr_content_1;
CREATE TABLE `liuyangnzhang_hr_content_1` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `nums` int(5) NOT NULL DEFAULT '0',
  `wageyear` tinyint(1) NOT NULL DEFAULT '0',
  `asksex` tinyint(1) NOT NULL DEFAULT '0',
  `schoo_age` tinyint(2) NOT NULL DEFAULT '0',
  `wage` tinyint(2) NOT NULL DEFAULT '0',
  `workplace` varchar(50) NOT NULL DEFAULT '',
  `time_over` varchar(20) NOT NULL DEFAULT '',
  `nature` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `wageyear` (`wageyear`),
  KEY `schoo_age` (`schoo_age`),
  KEY `wage` (`wage`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_hr_content_2;
CREATE TABLE `liuyangnzhang_hr_content_2` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `speciality` varchar(50) NOT NULL DEFAULT '',
  `age` tinyint(2) NOT NULL DEFAULT '0',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `height` int(4) NOT NULL DEFAULT '0',
  `school_age` tinyint(3) NOT NULL DEFAULT '0',
  `alma_mater` varchar(30) NOT NULL DEFAULT '',
  `graduate_time` varchar(10) NOT NULL DEFAULT '',
  `mobphone` varchar(11) NOT NULL DEFAULT '',
  `qq` varchar(11) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `msn` varchar(50) NOT NULL DEFAULT '',
  `education` mediumtext NOT NULL,
  `work` mediumtext NOT NULL,
  `introduce` mediumtext NOT NULL,
  `skill` mediumtext NOT NULL,
  `interest` mediumtext NOT NULL,
  `lifeplace` varchar(50) NOT NULL DEFAULT '',
  `workyear` tinyint(2) NOT NULL DEFAULT '0',
  `worktime` varchar(20) NOT NULL DEFAULT '',
  `hope_job` varchar(200) NOT NULL DEFAULT '',
  `facephoto` varchar(100) NOT NULL DEFAULT '',
  `wage` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sex` (`sex`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_hr_field;
CREATE TABLE `liuyangnzhang_hr_field` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `mid` mediumint(5) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `field_name` varchar(30) NOT NULL DEFAULT '',
  `field_type` varchar(15) NOT NULL DEFAULT '',
  `field_leng` smallint(3) NOT NULL DEFAULT '0',
  `orderlist` int(10) NOT NULL DEFAULT '0',
  `form_type` varchar(15) NOT NULL DEFAULT '',
  `field_inputwidth` smallint(3) DEFAULT NULL,
  `field_inputheight` smallint(3) NOT NULL DEFAULT '0',
  `form_set` text NOT NULL,
  `form_value` text NOT NULL,
  `form_units` varchar(30) NOT NULL DEFAULT '',
  `form_title` text NOT NULL,
  `mustfill` tinyint(1) NOT NULL DEFAULT '0',
  `listshow` tinyint(1) NOT NULL DEFAULT '0',
  `listfilter` tinyint(1) DEFAULT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '0',
  `allowview` varchar(255) NOT NULL DEFAULT '',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `js_check` text NOT NULL,
  `js_checkmsg` varchar(255) NOT NULL DEFAULT '',
  `classid` mediumint(7) NOT NULL DEFAULT '0',
  `form_js` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=181 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_hr_module;
CREATE TABLE `liuyangnzhang_hr_module` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `sort_id` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `style` varchar(50) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `config2` text NOT NULL,
  `comment_type` tinyint(1) NOT NULL DEFAULT '0',
  `ifdp` tinyint(1) NOT NULL DEFAULT '0',
  `template` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_hr_person;
CREATE TABLE `liuyangnzhang_hr_person` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `levels` tinyint(1) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `yz` (`yz`,`mid`),
  KEY `city_id` (`city_id`),
  KEY `uid` (`uid`),
  KEY `levels` (`levels`),
  KEY `posttime` (`posttime`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_hr_sort;
CREATE TABLE `liuyangnzhang_hr_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metatitle` varchar(250) NOT NULL DEFAULT '',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL DEFAULT '0',
  `contents` mediumint(4) NOT NULL DEFAULT '0',
  `tableid` varchar(30) NOT NULL DEFAULT '',
  `dir_name` varchar(50) NOT NULL DEFAULT '',
  `ifcolor` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_jfabout;
CREATE TABLE `liuyangnzhang_jfabout` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_jfsort;
CREATE TABLE `liuyangnzhang_jfsort` (
  `fid` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_label;
CREATE TABLE `liuyangnzhang_label` (
  `lid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `ch` smallint(4) NOT NULL DEFAULT '0',
  `chtype` tinyint(2) NOT NULL DEFAULT '0',
  `tag` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `typesystem` tinyint(1) NOT NULL DEFAULT '0',
  `code` text NOT NULL,
  `divcode` text,
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `js_time` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `pagetype` tinyint(3) NOT NULL DEFAULT '0',
  `module` mediumint(6) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `if_js` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`lid`),
  KEY `ch` (`ch`,`pagetype`,`module`,`fid`,`chtype`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_limitword;
CREATE TABLE `liuyangnzhang_limitword` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `oldword` varchar(50) NOT NULL DEFAULT '',
  `newword` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_memberdata;
CREATE TABLE `liuyangnzhang_memberdata` (
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `question` varchar(32) NOT NULL DEFAULT '',
  `groupid` smallint(4) NOT NULL DEFAULT '0',
  `grouptype` tinyint(1) NOT NULL DEFAULT '0',
  `groups` varchar(255) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `newpm` tinyint(1) NOT NULL DEFAULT '0',
  `medals` varchar(255) NOT NULL DEFAULT '',
  `money` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `totalspace` bigint(13) NOT NULL DEFAULT '0',
  `usespace` bigint(13) NOT NULL DEFAULT '0',
  `oltime` int(10) NOT NULL DEFAULT '0',
  `lastvist` int(10) NOT NULL DEFAULT '0',
  `lastip` varchar(15) NOT NULL DEFAULT '',
  `regdate` int(10) NOT NULL DEFAULT '0',
  `regip` varchar(15) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `bday` date NOT NULL DEFAULT '0000-00-00',
  `icon` varchar(150) NOT NULL DEFAULT '',
  `introduce` text NOT NULL,
  `hits` int(7) NOT NULL DEFAULT '0',
  `lastview` int(10) NOT NULL DEFAULT '0',
  `oicq` varchar(11) NOT NULL DEFAULT '',
  `msn` varchar(50) NOT NULL DEFAULT '',
  `homepage` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `provinceid` mediumint(6) NOT NULL DEFAULT '0',
  `cityid` mediumint(7) NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `postalcode` varchar(6) NOT NULL DEFAULT '',
  `mobphone` varchar(12) NOT NULL DEFAULT '',
  `telephone` varchar(25) NOT NULL DEFAULT '',
  `idcard` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `moneycard` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `email_yz` tinyint(1) NOT NULL DEFAULT '0',
  `mob_yz` tinyint(1) NOT NULL DEFAULT '0',
  `idcard_yz` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `groups` (`groups`),
  KEY `sex` (`sex`,`bday`,`cityid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_members;
CREATE TABLE `liuyangnzhang_members` (
  `uid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_menu;
CREATE TABLE `liuyangnzhang_menu` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL DEFAULT '',
  `linkurl` varchar(150) NOT NULL DEFAULT '',
  `color` varchar(15) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `moduleid` tinyint(2) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `ckname` varchar(15) NOT NULL DEFAULT '',
  `extend` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_module;
CREATE TABLE `liuyangnzhang_module` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `pre` varchar(20) NOT NULL DEFAULT '',
  `dirname` varchar(30) NOT NULL DEFAULT '',
  `domain` varchar(100) NOT NULL DEFAULT '',
  `admindir` varchar(20) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `list` mediumint(5) NOT NULL DEFAULT '0',
  `admingroup` varchar(150) NOT NULL DEFAULT '',
  `adminmember` text NOT NULL,
  `ifclose` tinyint(1) NOT NULL DEFAULT '0',
  `ifsys` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_moneycard;
CREATE TABLE `liuyangnzhang_moneycard` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `moneyrmb` int(7) NOT NULL DEFAULT '0',
  `moneycard` int(7) NOT NULL DEFAULT '0',
  `ifsell` tinyint(1) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_moneylog;
CREATE TABLE `liuyangnzhang_moneylog` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `about` varchar(255) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_news_comments;
CREATE TABLE `liuyangnzhang_news_comments` (
  `cid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `cuid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `ifcom` tinyint(1) NOT NULL DEFAULT '0',
  `agree` mediumint(5) NOT NULL DEFAULT '0',
  `disagree` mediumint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `aid` (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `ifcom` (`ifcom`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_news_config;
CREATE TABLE `liuyangnzhang_news_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_news_content;
CREATE TABLE `liuyangnzhang_news_content` (
  `id` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL DEFAULT '',
  `smalltitle` varchar(100) NOT NULL DEFAULT '',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(5) NOT NULL DEFAULT '0',
  `fname` varchar(50) NOT NULL DEFAULT '',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `pages` smallint(4) NOT NULL DEFAULT '0',
  `comments` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `copyfrom` varchar(100) NOT NULL DEFAULT '',
  `copyfromurl` varchar(150) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `fonttype` tinyint(1) NOT NULL DEFAULT '0',
  `picurl` varchar(150) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `yzer` varchar(30) NOT NULL DEFAULT '',
  `yztime` int(10) NOT NULL DEFAULT '0',
  `levels` tinyint(2) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `iframeurl` varchar(150) NOT NULL DEFAULT '',
  `style` varchar(15) NOT NULL DEFAULT '',
  `template` varchar(255) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lastfid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `buyuser` text NOT NULL,
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `allowdown` varchar(150) NOT NULL DEFAULT '',
  `allowview` varchar(150) NOT NULL DEFAULT '',
  `editer` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `lastview` int(10) NOT NULL DEFAULT '0',
  `digg_num` mediumint(7) NOT NULL DEFAULT '0',
  `digg_time` int(10) NOT NULL DEFAULT '0',
  `forbidcomment` tinyint(1) NOT NULL DEFAULT '0',
  `ifvote` tinyint(1) NOT NULL DEFAULT '0',
  `heart` varchar(255) NOT NULL DEFAULT '',
  `htmlname` varchar(100) NOT NULL DEFAULT '',
  `city_id` int(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `hits` (`hits`,`yz`,`fid`,`ispic`),
  KEY `list` (`list`,`yz`,`fid`,`ispic`),
  KEY `ispic` (`ispic`),
  KEY `uid` (`uid`),
  KEY `levels` (`levels`),
  KEY `digg_num` (`digg_num`),
  KEY `digg_time` (`digg_time`),
  KEY `mid` (`mid`),
  KEY `posttime` (`yz`,`posttime`,`fid`,`ispic`)
) ENGINE=MyISAM AUTO_INCREMENT=1118 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_news_content_1;
CREATE TABLE `liuyangnzhang_news_content_1` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `subhead` varchar(150) NOT NULL DEFAULT '',
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `topic` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `orderid` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `aid` (`id`,`topic`)
) ENGINE=MyISAM AUTO_INCREMENT=1126 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_news_sort;
CREATE TABLE `liuyangnzhang_news_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `list_html` varchar(255) NOT NULL DEFAULT '',
  `bencandy_html` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(150) NOT NULL DEFAULT '',
  `domain_dir` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`),
  KEY `fmid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_olpay;
CREATE TABLE `liuyangnzhang_olpay` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) NOT NULL DEFAULT '0',
  `numcode` varchar(32) NOT NULL DEFAULT '',
  `money` varchar(15) NOT NULL DEFAULT '0',
  `ifpay` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `paytype` tinyint(3) NOT NULL DEFAULT '0',
  `moduleid` mediumint(5) NOT NULL DEFAULT '0',
  `formid` mediumint(5) NOT NULL DEFAULT '0',
  `banktype` varchar(15) NOT NULL DEFAULT '',
  `articleid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `numcode` (`numcode`),
  KEY `paytype` (`paytype`),
  KEY `formid` (`formid`),
  KEY `articleid` (`articleid`),
  KEY `moduleid` (`moduleid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_pm;
CREATE TABLE `liuyangnzhang_pm` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `touid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `togroups` varchar(80) NOT NULL DEFAULT '',
  `fromuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `type` enum('rebox','sebox','public') NOT NULL DEFAULT 'rebox',
  `ifnew` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(130) NOT NULL DEFAULT '',
  `mdate` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `touid` (`touid`),
  KEY `fromuid` (`fromuid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_propagandize;
CREATE TABLE `liuyangnzhang_propagandize` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `ip` bigint(11) NOT NULL DEFAULT '0',
  `day` smallint(3) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `fromurl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `day` (`day`,`uid`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_regnum;
CREATE TABLE `liuyangnzhang_regnum` (
  `sid` varchar(8) NOT NULL DEFAULT '',
  `num` varchar(6) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `posttime` (`num`,`posttime`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS liuyangnzhang_sell_collection;
CREATE TABLE `liuyangnzhang_sell_collection` (
  `cid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_sell_comments;
CREATE TABLE `liuyangnzhang_sell_comments` (
  `cid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `cuid` int(7) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `flowers` smallint(4) NOT NULL DEFAULT '0',
  `egg` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_sell_config;
CREATE TABLE `liuyangnzhang_sell_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_sell_content;
CREATE TABLE `liuyangnzhang_sell_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `fname` varchar(50) NOT NULL DEFAULT '',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `comments` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` varchar(10) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `picurl` varchar(150) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `levels` tinyint(2) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lastfid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `lastview` int(10) NOT NULL DEFAULT '0',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  `picnum` smallint(4) NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `ispic` (`ispic`),
  KEY `city_id` (`city_id`),
  KEY `list` (`list`,`fid`,`city_id`,`yz`),
  KEY `hits` (`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_sell_content_1;
CREATE TABLE `liuyangnzhang_sell_content_1` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `shoptype` varchar(50) NOT NULL DEFAULT '',
  `my_units` varchar(10) NOT NULL DEFAULT '',
  `order_min` int(7) NOT NULL DEFAULT '0',
  `order_max` varchar(7) NOT NULL DEFAULT '',
  `send_day` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_sell_content_2;
CREATE TABLE `liuyangnzhang_sell_content_2` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `ask_username` varchar(20) NOT NULL DEFAULT '',
  `ask_phone` varchar(20) NOT NULL DEFAULT '',
  `ask_mobphone` varchar(15) NOT NULL DEFAULT '',
  `ask_email` varchar(50) NOT NULL DEFAULT '',
  `ask_qq` varchar(11) NOT NULL DEFAULT '',
  `ask_title` varchar(100) NOT NULL DEFAULT '',
  `order_num` int(6) NOT NULL DEFAULT '0',
  `hope_price` varchar(20) NOT NULL DEFAULT '',
  `hope_know` varchar(255) NOT NULL DEFAULT '',
  `hope_reply` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_sell_db;
CREATE TABLE `liuyangnzhang_sell_db` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `city_id` (`city_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_sell_field;
CREATE TABLE `liuyangnzhang_sell_field` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `mid` mediumint(5) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `field_name` varchar(30) NOT NULL DEFAULT '',
  `field_type` varchar(15) NOT NULL DEFAULT '',
  `field_leng` smallint(3) NOT NULL DEFAULT '0',
  `orderlist` int(10) NOT NULL DEFAULT '0',
  `form_type` varchar(15) NOT NULL DEFAULT '',
  `field_inputwidth` smallint(3) DEFAULT NULL,
  `field_inputheight` smallint(3) NOT NULL DEFAULT '0',
  `form_set` text NOT NULL,
  `form_value` text NOT NULL,
  `form_units` varchar(255) NOT NULL DEFAULT '',
  `form_title` text NOT NULL,
  `mustfill` tinyint(1) NOT NULL DEFAULT '0',
  `listshow` tinyint(1) NOT NULL DEFAULT '0',
  `listfilter` tinyint(1) DEFAULT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '0',
  `allowview` varchar(255) NOT NULL DEFAULT '',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `js_check` text NOT NULL,
  `js_checkmsg` varchar(255) NOT NULL DEFAULT '',
  `classid` mediumint(7) NOT NULL DEFAULT '0',
  `form_js` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_sell_join;
CREATE TABLE `liuyangnzhang_sell_join` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `cid` mediumint(7) NOT NULL DEFAULT '0',
  `cuid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `fid` (`fid`,`cid`),
  KEY `yz` (`yz`,`fid`,`mid`,`cid`),
  KEY `cuid` (`cuid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_sell_module;
CREATE TABLE `liuyangnzhang_sell_module` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `sort_id` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `style` varchar(50) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `config2` text NOT NULL,
  `comment_type` tinyint(1) NOT NULL DEFAULT '0',
  `ifdp` tinyint(1) NOT NULL DEFAULT '0',
  `template` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_sell_pic;
CREATE TABLE `liuyangnzhang_sell_pic` (
  `pid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `imgurl` varchar(150) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `id` (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_sell_report;
CREATE TABLE `liuyangnzhang_sell_report` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `onlineip` varchar(15) NOT NULL DEFAULT '',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `iftrue` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_sell_sort;
CREATE TABLE `liuyangnzhang_sell_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metatitle` varchar(250) NOT NULL DEFAULT '',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL DEFAULT '0',
  `contents` mediumint(4) NOT NULL DEFAULT '0',
  `tableid` varchar(30) NOT NULL DEFAULT '',
  `dir_name` varchar(50) NOT NULL DEFAULT '',
  `ifcolor` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_template;
CREATE TABLE `liuyangnzhang_template` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `type` smallint(4) NOT NULL DEFAULT '0',
  `filepath` varchar(100) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_template_bak;
CREATE TABLE `liuyangnzhang_template_bak` (
  `bid` int(7) NOT NULL AUTO_INCREMENT,
  `id` int(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `code` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_upfile;
CREATE TABLE `liuyangnzhang_upfile` (
  `up_id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `module_id` smallint(4) NOT NULL DEFAULT '0',
  `ids` varchar(255) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `filename` varchar(100) NOT NULL DEFAULT '',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `if_tmp` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`up_id`),
  KEY `filename` (`filename`),
  KEY `if_tmp` (`if_tmp`),
  KEY `posttime` (`posttime`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_yzimg;
CREATE TABLE `liuyangnzhang_yzimg` (
  `sid` varchar(8) NOT NULL DEFAULT '',
  `imgnum` varchar(6) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `posttime` (`imgnum`,`posttime`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;


INSERT INTO `liuyangnzhang_admin_menu` VALUES ('12','0','���ݹ���','','','0','99','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('83','0','��ǩ����','','','0','100','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('84','83','��������','../news/index.php?jobs=show','','0','18','3','1');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('85','83','��Ʒ����','index.php?lfj=module_admin&dirname=sell&file=center&job=label','','0','17','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('87','0','���۹���','','','0','7','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('88','87','��Ʒ����','index.php?lfj=module_admin&dirname=sell&file=comment&job=list','','0','99','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('112','111','���ŷ���','index.php?lfj=module_admin&dirname=news&file=sort&job=listsort&type=all','','0','-1','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('111','0','�������','','','0','88','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('75','12','������Ѷ','index.php?lfj=module_admin&dirname=news&file=list&job=list','','0','-1','3','1');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('144','12','�ɹ�����','index.php?lfj=examples&job=list','','0','0','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('145','0','���ܲ˵�','','','0','0','-3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('119','12','ְλ����','index.php?lfj=module_admin&dirname=hr&file=list&job=list','','0','89','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('120','12','��ְ����','index.php?lfj=module_admin&dirname=hr&file=joinlist&job=list','','0','88','3','1');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('117','12','��Ʒ����','index.php?lfj=module_admin&dirname=sell&file=list&job=list','','0','99','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('118','12','�������','index.php?lfj=module_admin&dirname=form&file=form_module&file=form_content&job=list&mid=1','','0','98','3','1');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('130','111','��Ʒ����','index.php?lfj=module_admin&dirname=sell&file=sort&job=listsort','','0','99','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('102','83','��վ��ҳ','../index.php?&ch=1&chtype=0&jobs=show','','0','19','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('143','87','��������','index.php?lfj=module_admin&dirname=news&file=comment&job=list','','0','69','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('103','83','�˲���Ƹ','index.php?lfj=module_admin&dirname=hr&file=center&job=label','','0','14','3','1');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('132','111','ְλ����','index.php?lfj=module_admin&dirname=hr&file=sort&job=listsort&yellow=0','','0','89','3','0');
INSERT INTO `liuyangnzhang_alonepage` VALUES ('1','0','��˾���','��˾���','1377933924','0','','','','','','introduce.htm','','','','&nbsp; &nbsp;������90������ڣ���һ��С������ʽ�����𲽣��������ڵ�Ŭ���Ͳ��ϵ����ƣ�ʹ�������ǵĲ�ƷԶ��ʡ���⣬�罭��Ƽ�硢���������ϳ���̶�ȵش���С����ҵ�����õ����õ����ۣ���Ʒ�ӿ�ʼ�ĵ�һ��չ�����ڵ�ϵ�в�Ʒ��','304','0','0');
INSERT INTO `liuyangnzhang_alonepage` VALUES ('2','0','��ϵ����','��ϵ����','1314175561','0','','','','template/default/contact.htm','','contact.htm','','','','','177','0','0');
INSERT INTO `liuyangnzhang_area` VALUES ('1','0','������','1','18','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `liuyangnzhang_area` VALUES ('2','0','�Ϻ���','1','19','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `liuyangnzhang_area` VALUES ('3','0','�����','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('4','0','������','1','40','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('5','0','�ӱ�ʡ','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('6','0','ɽ��ʡ','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('7','0','���ɹ�������','1','12','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('8','0','����ʡ','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('9','0','����ʡ','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('10','0','������ʡ','1','13','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('11','0','����ʡ','1','13','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('12','0','�㽭ʡ','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('13','0','����ʡ','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('14','0','����ʡ','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('15','0','����ʡ','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('16','0','ɽ��ʡ','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('17','0','����ʡ','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('18','0','����ʡ','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('19','0','����ʡ','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('20','0','�㶫ʡ','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('21','0','����׳��������','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('22','0','����ʡ','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('23','0','�Ĵ�ʡ','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('24','0','����ʡ','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('25','0','����ʡ','1','16','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('26','0','����������','1','7','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('27','0','����ʡ','1','10','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('28','0','����ʡ','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('29','0','�ຣʡ','1','8','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('30','0','���Ļ���������','1','5','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('31','0','�½�ά���������','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('32','0','̨��ʡ','1','25','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('33','0','����ر�������','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('34','0','�����ر�������','1','5','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('35','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('36','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('37','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('38','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('39','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('40','1','��̨��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('41','1','ʯ��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('42','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('43','1','��ͷ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('44','1','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('45','1','ͨ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('46','1','˳����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('47','1','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('48','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('49','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('50','1','ƽ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('51','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('52','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('53','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('54','2','¬����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('55','2','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('56','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('57','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('58','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('59','2','բ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('60','2','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('61','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('62','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('63','2','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('64','2','�ζ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('65','2','�ֶ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('66','2','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('67','2','�ɽ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('68','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('69','2','�ϻ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('70','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('71','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('72','3','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('73','3','�Ӷ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('74','3','������','2','0','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `liuyangnzhang_area` VALUES ('75','3','�Ͽ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('76','3','�ӱ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('77','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('78','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('79','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('80','3','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('81','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('82','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('83','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('84','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('85','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('86','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('87','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('88','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('89','3','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('90','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('91','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('92','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('93','4','��ɿ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('94','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('95','4','ɳƺ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('96','4','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('97','4','�ϰ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('98','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('99','4','��ʢ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('100','4','˫����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('101','4','�山��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('102','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('103','4','ǭ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('104','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('105','4','�뽭��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('106','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('107','4','ͭ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('108','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('109','4','�ٲ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('110','4','�ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('111','4','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('112','4','�ǿ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('113','4','�ᶼ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('114','4','�潭��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('115','4','��¡��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('116','4','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('117','4','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('118','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('119','4','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('120','4','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('121','4','��Ϫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('122','4','ʯ��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('123','4','��ɽ����������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('124','4','��������������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('125','4','��ˮ����������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('126','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('127','4','�ϴ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('128','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('129','4','�ϴ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('130','5','ʯ��ׯ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('131','5','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('132','5','�ػʵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('133','5','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('134','5','��̨��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('135','5','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('136','5','�żҿ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('137','5','�е���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('138','5','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('139','5','�ȷ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('140','5','��ˮ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('141','6','̫ԭ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('142','6','��ͬ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('143','6','��Ȫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('144','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('145','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('146','6','˷����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('147','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('148','6','�˳���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('149','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('150','6','�ٷ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('151','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('152','7','���ͺ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('153','7','��ͷ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('154','7','�ں���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('155','7','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('156','7','ͨ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('157','7','������˹��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('158','7','���ױ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('159','7','�����׶���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('160','7','�����첼��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('161','7','�˰���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('162','7','���ֹ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('163','7','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('164','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('165','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('166','8','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('167','8','��˳��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('168','8','��Ϫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('169','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('170','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('171','8','Ӫ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('172','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('173','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('174','8','�̽���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('175','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('176','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('177','8','��«����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('178','9','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('179','9','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('180','9','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('181','9','��Դ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('182','9','ͨ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('183','9','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('184','9','��ԭ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('185','9','�׳���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('186','9','�ӱ߳�����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('187','10','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('188','10','���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('189','10','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('190','10','�׸���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('191','10','˫Ѽɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('192','10','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('193','10','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('194','10','��ľ˹��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('195','10','��̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('196','10','ĵ������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('197','10','�ں���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('198','10','�绯��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('199','10','���˰������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('200','11','�Ͼ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('201','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('202','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('203','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('204','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('205','11','��ͨ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('206','11','���Ƹ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('207','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('208','11','�γ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('209','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('210','11','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('211','11','̩����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('212','11','��Ǩ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('213','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('214','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('215','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('216','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('217','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('218','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('219','12','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('220','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('221','12','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('222','12','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('223','12','��ˮ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('224','13','�Ϸ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('225','13','�ߺ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('226','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('227','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('228','13','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('229','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('230','13','ͭ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('231','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('232','13','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('233','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('234','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('235','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('236','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('237','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('238','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('239','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('240','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('241','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('242','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('243','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('244','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('245','14','Ȫ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('246','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('247','14','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('248','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('249','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('250','15','�ϲ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('251','15','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('252','15','Ƽ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('253','15','�Ž���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('254','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('255','15','ӥ̶��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('256','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('257','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('258','15','�˴���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('259','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('260','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('261','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('262','16','�ൺ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('263','16','�Ͳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('264','16','��ׯ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('265','16','��Ӫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('266','16','��̨��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('267','16','Ϋ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('268','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('269','16','̩����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('270','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('271','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('272','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('273','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('274','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('275','16','�ĳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('276','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('277','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('278','17','֣����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('279','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('280','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('281','17','ƽ��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('282','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('283','17','�ױ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('284','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('285','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('286','17','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('287','17','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('288','17','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('289','17','����Ͽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('290','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('291','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('292','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('293','17','�ܿ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('294','17','פ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('295','18','�人��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('296','18','��ʯ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('297','18','ʮ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('298','18','�˲���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('299','18','�差��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('300','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('301','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('302','18','Т����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('303','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('304','18','�Ƹ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('305','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('306','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('307','18','��ʩ����������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('308','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('309','18','Ǳ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('310','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('311','18','��ũ������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('312','19','��ɳ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('313','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('314','19','��̶��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('315','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('316','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('317','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('318','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('319','19','�żҽ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('320','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('321','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('322','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('323','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('324','19','¦����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('325','19','��������������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('326','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('327','20','�ع���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('328','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('329','20','�麣��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('330','20','��ͷ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('331','20','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('332','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('333','20','տ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('334','20','ï����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('335','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('336','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('337','20','÷����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('338','20','��β��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('339','20','��Դ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('340','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('341','20','��Զ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('342','20','��ݸ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('343','20','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('344','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('345','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('346','20','�Ƹ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('347','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('348','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('349','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('350','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('351','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('352','21','���Ǹ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('353','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('354','21','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('355','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('356','21','��ɫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('357','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('358','21','�ӳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('359','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('360','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('361','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('362','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('363','22','��ָɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('364','22','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('365','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('366','22','�Ĳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('367','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('368','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('369','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('370','22','�Ͳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('371','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('372','22','�ٸ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('373','22','��ɳ����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('374','22','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('375','22','�ֶ�����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('376','22','��ˮ����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('377','22','��ͤ��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('378','22','������������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('379','22','��ɳȺ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('380','22','��ɳȺ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('381','22','��ɳȺ���ĵ������亣��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('382','23','�ɶ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('383','23','�Թ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('384','23','��֦����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('385','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('386','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('387','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('388','23','��Ԫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('389','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('390','23','�ڽ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('391','23','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('392','23','�ϳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('393','23','üɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('394','23','�˱���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('395','23','�㰲��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('396','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('397','23','�Ű���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('398','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('399','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('400','23','���Ӳ���Ǽ��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('401','23','���β���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('402','23','��ɽ����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('403','24','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('404','24','����ˮ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('405','24','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('406','24','��˳��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('407','24','ͭ�ʵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('408','24','ǭ���ϲ���������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('409','24','�Ͻڵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('410','24','ǭ�������嶱��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('411','24','ǭ�ϲ���������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('412','25','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('413','25','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('414','25','��Ϫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('415','25','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('416','25','��ͨ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('417','25','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('418','25','˼é��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('419','25','�ٲ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('420','25','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('421','25','��ӹ���������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('422','25','��ɽ׳������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('423','25','��˫���ɴ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('424','25','�������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('425','25','�º���徰����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('426','25','ŭ��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('427','25','�������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('428','26','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('429','26','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('430','26','ɽ�ϵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('431','26','�տ������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('432','26','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('433','26','�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('434','26','��֥����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('435','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('436','27','ͭ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('437','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('438','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('439','27','μ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('440','27','�Ӱ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('441','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('442','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('443','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('444','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('445','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('446','28','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('447','28','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('448','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('449','28','��ˮ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('450','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('451','28','��Ҵ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('452','28','ƽ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('453','28','��Ȫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('454','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('455','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('456','28','¤����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('457','28','���Ļ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('458','28','���ϲ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('459','29','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('460','29','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('461','29','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('462','29','���ϲ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('463','29','���ϲ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('464','29','�������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('465','29','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('466','29','�����ɹ������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('467','30','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('468','30','ʯ��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('469','30','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('470','30','��ԭ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('471','30','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('472','31','��³ľ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('473','31','����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('474','31','��³������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('475','31','���ܵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('476','31','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('477','31','���������ɹ�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('478','31','���������ɹ�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('479','31','�����յ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('480','31','�������տ¶�����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('481','31','��ʲ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('482','31','�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('483','31','���������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('484','31','���ǵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('485','31','����̩����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('486','31','ʯ������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('487','31','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('488','31','ͼľ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('489','31','�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('490','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('491','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('492','32','��¡��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('493','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('494','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('495','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('496','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('497','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('498','32','��԰��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('499','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('500','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('501','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('502','32','�û���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('503','32','��Ͷ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('504','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('505','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('506','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('507','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('508','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('509','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('510','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('511','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('512','32','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('513','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('514','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('515','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('516','33','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('517','33','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('518','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('519','33','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('520','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('521','33','��ˮ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('522','33','�ƴ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('523','33','�ͼ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('524','33','�뵺��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('525','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('526','33','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('527','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('528','33','ɳ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('529','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('530','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('531','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('532','33','Ԫ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('533','34','�����л���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('534','34','������ʥ����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('535','34','�����д�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('536','34','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('537','34','�����з�˳����','2','0','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `liuyangnzhang_config` VALUES ('yzImgComment','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('flashtime','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('showComment','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('forbidComment','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('showCommentRows','8','');
INSERT INTO `liuyangnzhang_config` VALUES ('viewNoPassGuestBook','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('yzImgContribute','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('groupPassContribute','3','');
INSERT INTO `liuyangnzhang_config` VALUES ('forbidRegName','','');
INSERT INTO `liuyangnzhang_config` VALUES ('MaxOnlineUser','1000','');
INSERT INTO `liuyangnzhang_config` VALUES ('groupPassShopYz','3,4','');
INSERT INTO `liuyangnzhang_config` VALUES ('groupPassPassGuestBook','3','');
INSERT INTO `liuyangnzhang_config` VALUES ('ifOpenGuestBook','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('yzImgGuestBook','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('ContributeFid','2','');
INSERT INTO `liuyangnzhang_config` VALUES ('groupPassLogYz','3,4','');
INSERT INTO `liuyangnzhang_config` VALUES ('yzNumReg','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('FtpName','admin','');
INSERT INTO `liuyangnzhang_config` VALUES ('PostSortStep','2','');
INSERT INTO `liuyangnzhang_config` VALUES ('ListSonline','2','');
INSERT INTO `liuyangnzhang_config` VALUES ('_Notice','29weSgiaHR0cDovL3d3dy5waHAxNjguY29tL05vdGljZS8/dXJsPSR3ZWJkYlt3d3dfdXJsXSIsUEhQMTY4X1BBVEguImNhY2hlL05vdGljZS5waHAiKTs=','');
INSERT INTO `liuyangnzhang_config` VALUES ('CommentTime','5','');
INSERT INTO `liuyangnzhang_config` VALUES ('weburl','/','');
INSERT INTO `liuyangnzhang_config` VALUES ('MailType','smtp','');
INSERT INTO `liuyangnzhang_config` VALUES ('yeepay_id','','');
INSERT INTO `liuyangnzhang_config` VALUES ('yeepay_key','','');
INSERT INTO `liuyangnzhang_config` VALUES ('allowMemberCommentPass','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('AvoidGatherPre','','');
INSERT INTO `liuyangnzhang_config` VALUES ('AvoidCopy','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('AvoidGather','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('AvoidSave','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('if_gdimg','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('adminPostEditType','html','');
INSERT INTO `liuyangnzhang_config` VALUES ('article_show_step','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('ifContribute','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('allowGuestSearch','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('kill_badword','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('ShowKeywordColor','#F70968','');
INSERT INTO `liuyangnzhang_config` VALUES ('ifShowKeyword','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('UseFtp','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('FtpWeb','','');
INSERT INTO `liuyangnzhang_config` VALUES ('FtpPort','21','');
INSERT INTO `liuyangnzhang_config` VALUES ('photoShowType','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('groupTime','180','');
INSERT INTO `liuyangnzhang_config` VALUES ('allowGuestCommentPass','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('ShowMenu','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('GuestBookNum','8','');
INSERT INTO `liuyangnzhang_config` VALUES ('ShopNormalSend','8','');
INSERT INTO `liuyangnzhang_config` VALUES ('ShopEmsSend','25','');
INSERT INTO `liuyangnzhang_config` VALUES ('groupUpType','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('allowDownMv','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('SPlist_filename2','listsp.php?fid-{$fid}-page-{$page}.htm','');
INSERT INTO `liuyangnzhang_config` VALUES ('is_waterimg','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('MailPort','25','');
INSERT INTO `liuyangnzhang_config` VALUES ('HideNopowerPost','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('autoPlayFirstMv','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('allowGuestComment','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('PostNotice','<font face=SimSun>\n<p><font face=SimSun>1�������ת�����ݣ��������д�����Դ��ַ��������<br />2��������İ�Ȩ�����뷨�������ɷ����߳е���</font></p></font>','');
INSERT INTO `liuyangnzhang_config` VALUES ('ListLeng','70','');
INSERT INTO `liuyangnzhang_config` VALUES ('propagandize_jumpto','/','');
INSERT INTO `liuyangnzhang_config` VALUES ('propagandize_LogDay','5','');
INSERT INTO `liuyangnzhang_config` VALUES ('propagandize_close','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('propagandize_Money','2','');
INSERT INTO `liuyangnzhang_config` VALUES ('YZ_IdcardMoney','20','');
INSERT INTO `liuyangnzhang_config` VALUES ('EditYzEmail','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('EditYzMob','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('EditYzIdcard','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('YZ_EmailMoney','10','');
INSERT INTO `liuyangnzhang_config` VALUES ('YZ_MobMoney','15','');
INSERT INTO `liuyangnzhang_config` VALUES ('MailServer','smtp.163.com','');
INSERT INTO `liuyangnzhang_config` VALUES ('sms_es_name','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('sms_wi_id','2','');
INSERT INTO `liuyangnzhang_config` VALUES ('SPbencandy_filename2','showsp.php?fid-{$fid}-id-{$id}-page-{$page}.htm','');
INSERT INTO `liuyangnzhang_config` VALUES ('list_filename2','list.php?fid-{$fid}-page-{$page}.htm','');
INSERT INTO `liuyangnzhang_config` VALUES ('RegYz','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('close_count','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('Reg_Field','a:1:{s:8:\\\\\"field_db\\\\\";a:0:{}}','');
INSERT INTO `liuyangnzhang_config` VALUES ('passport_TogetherLogin','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('Listsortnameline','2','');
INSERT INTO `liuyangnzhang_config` VALUES ('ListSonLeng','34','');
INSERT INTO `liuyangnzhang_config` VALUES ('ListSonRows','9','');
INSERT INTO `liuyangnzhang_config` VALUES ('JsListLeng','36','');
INSERT INTO `liuyangnzhang_config` VALUES ('tenpay_key','','');
INSERT INTO `liuyangnzhang_config` VALUES ('tenpay_id','','');
INSERT INTO `liuyangnzhang_config` VALUES ('forbidReg','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('cache_time_js','-1','');
INSERT INTO `liuyangnzhang_config` VALUES ('SideSortStyle','side_sort/2','');
INSERT INTO `liuyangnzhang_config` VALUES ('SideTitleStyle','side_tpl/2','');
INSERT INTO `liuyangnzhang_config` VALUES ('JsListRows','5','');
INSERT INTO `liuyangnzhang_config` VALUES ('SPlist_filename','html/4special{$fid}/list{$page}.htm','');
INSERT INTO `liuyangnzhang_config` VALUES ('SPbencandy_filename','html/5special{$fid}/show{$id}.htm','');
INSERT INTO `liuyangnzhang_config` VALUES ('cache_time_com','-1','');
INSERT INTO `liuyangnzhang_config` VALUES ('ArticleHeart','Ƿ��|1.gif\n֧��|2.gif\n�ܰ�|3.gif\n����|4.gif\n��Ц|5.gif\n����|6.gif\n����|7.gif\n�Ծ�|8.gif','');
INSERT INTO `liuyangnzhang_config` VALUES ('heart_time','30','');
INSERT INTO `liuyangnzhang_config` VALUES ('heart_noRecord','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('ForceDel','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('UseArticleDigg','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('YzImg_voice','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('sortNUM','27','');
INSERT INTO `liuyangnzhang_config` VALUES ('FtpPwd','admin','');
INSERT INTO `liuyangnzhang_config` VALUES ('articleNUM','186','');
INSERT INTO `liuyangnzhang_config` VALUES ('cache_time_like','-1','');
INSERT INTO `liuyangnzhang_config` VALUES ('cache_time_new','-1','');
INSERT INTO `liuyangnzhang_config` VALUES ('waterAlpha','80','');
INSERT INTO `liuyangnzhang_config` VALUES ('passport_path','../pw7','');
INSERT INTO `liuyangnzhang_config` VALUES ('Del_MoreUpfile','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('passport_pre','`dz7`.cdb_','');
INSERT INTO `liuyangnzhang_config` VALUES ('hideFid','','');
INSERT INTO `liuyangnzhang_config` VALUES ('gg_maps','23.12463507525006,113.41017343103886','');
INSERT INTO `liuyangnzhang_config` VALUES ('gg_map_api','','');
INSERT INTO `liuyangnzhang_config` VALUES ('RewriteUrl','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('FtpDir','111','');
INSERT INTO `liuyangnzhang_config` VALUES ('passport_type','','');
INSERT INTO `liuyangnzhang_config` VALUES ('MakeIndexHtmlTime','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('cache_time_pic','-1','');
INSERT INTO `liuyangnzhang_config` VALUES ('list_cache_time','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('bencandy_cache_time','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('showsp_cache_time','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('cache_time_hot','-1','');
INSERT INTO `liuyangnzhang_config` VALUES ('RegCompany','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('forbidRegIp','','');
INSERT INTO `liuyangnzhang_config` VALUES ('pay99_id','','');
INSERT INTO `liuyangnzhang_config` VALUES ('alipay_id','','');
INSERT INTO `liuyangnzhang_config` VALUES ('MoneyRatio','100','');
INSERT INTO `liuyangnzhang_config` VALUES ('Money2card','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('index_cache_time','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('waterimg','images/default/water.gif','');
INSERT INTO `liuyangnzhang_config` VALUES ('emailOnly','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('DefaultIndexHtml','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('AutoPassCompany','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('limitRegTime','','');
INSERT INTO `liuyangnzhang_config` VALUES ('UseArticleHeart','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('AutoTitleNum','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('deleteArticleMoney','-1','');
INSERT INTO `liuyangnzhang_config` VALUES ('postArticleMoney','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('comArticleMoney','3','');
INSERT INTO `liuyangnzhang_config` VALUES ('hotArticleNum','100','');
INSERT INTO `liuyangnzhang_config` VALUES ('newArticleTime','24','');
INSERT INTO `liuyangnzhang_config` VALUES ('ListShowIcon','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('autoGetKeyword','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('autoGetSmallPic','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('autoCutSmallPic','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('ForbidRepeatTitle','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('viewNoPassArticle','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('ArticlePicWidth','800','');
INSERT INTO `liuyangnzhang_config` VALUES ('ArticlePicHeight','600','');
INSERT INTO `liuyangnzhang_config` VALUES ('ArticleDownloadDirTime','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('ArticleDownloadUseFtp','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('XunLei_ID','08311','');
INSERT INTO `liuyangnzhang_config` VALUES ('FlashGet_ID','6370','');
INSERT INTO `liuyangnzhang_config` VALUES ('KeepTodayCount','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('ShopOtherSend','18','');
INSERT INTO `liuyangnzhang_config` VALUES ('ForbidShowPhpPage','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('bencandy_filename2','bencandy.php?fid-{$fid}-id-{$id}-page-{$page}.htm','');
INSERT INTO `liuyangnzhang_config` VALUES ('MailId','lfj846@163.com','');
INSERT INTO `liuyangnzhang_config` VALUES ('MailPw','020php168gz','');
INSERT INTO `liuyangnzhang_config` VALUES ('alipay_key','','');
INSERT INTO `liuyangnzhang_config` VALUES ('alipay_partner','','');
INSERT INTO `liuyangnzhang_config` VALUES ('alipay_service','create_partner_trade_by_buyer','');
INSERT INTO `liuyangnzhang_config` VALUES ('pay99_key','','');
INSERT INTO `liuyangnzhang_config` VALUES ('alipay_transport','https','');
INSERT INTO `liuyangnzhang_config` VALUES ('NewsMakeHtml','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('list_filename','html/{$fid}/{$page}.htm','');
INSERT INTO `liuyangnzhang_config` VALUES ('bencandy_filename','html/{$fid}-{$dirid}/{$id}-{$page}.htm','');
INSERT INTO `liuyangnzhang_config` VALUES ('passport_url','http://www.liuyangzhang.com/bbs','');
INSERT INTO `liuyangnzhang_config` VALUES ('FtpHost','127.0.0.1','');
INSERT INTO `liuyangnzhang_config` VALUES ('path','/do','');
INSERT INTO `liuyangnzhang_config` VALUES ('label_cache_time','-1','');
INSERT INTO `liuyangnzhang_config` VALUES ('DownLoad_readfile','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('memberNotice','��ӭ���ӻԾͶ��,Ͷ��ɵû��ֽ���!!','');
INSERT INTO `liuyangnzhang_config` VALUES ('AutoCutFace','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('yzImgAdminLogin','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('companyTrade','��е����ҵ�豸\r\n��ͨ��е����\r\nͨ���㲿��\r\n������\r\n��������\r\n�綯����\r\n����Ԫ��\r\n��������\r\n��������������\r\n��ȫ�����豸\r\n��װ\r\n��ֽ��ֽ��Ʒ\r\n������繤����\r\n�繤����\r\nͨ�������Ǳ�\r\nר�������Ǳ�\r\n��ͨ�����豸���㲿��\r\n�칫���Ľ���Ʒ\r\n���롢���Լ��������\r\n�ճ��Ҿ���Ʒ\r\nľ�ġ�ľ��Ʒ\r\n�Ҿ�\r\n���õ���\r\n��Ʒ����������Ʒ\r\nʳƷ������\r\nͨ�Ų�Ʒ\r\n���\r\nӡˢ�豸\r\n�˶������С�������Ʒ\r\nЬ��ñ\r\n��װ\r\n���û�ѧƷ\r\nũ�û�ѧƷ\r\n��ճ��\r\nȾ�ϡ����ϡ�Ϳ�Ϻ���ī\r\n�߻���������\r\n��澫ϸ��ѧƷ\r\nʳƷ��������Ӽ�\r\n����\r\n����Ʒ\r\n�����������豸\r\n����������\r\n��Դ\r\n���͡�ũ��Ʒ\r\n����\r\nҽҩ��������ҽ���豸\r\n��֯\r\nƤ��\r\nú������Ʒ\r\n�ճ�����\r\n������\r\n������ѵ\r\n��֤\r\n�������\r\n��������\r\n�����ڴ���\r\nά�޼���װ����\r\n��桢չ������\r\nרҵ¼���������豸\r\n��ѧ��Ӱ����\r\n�༭�����豸\r\n������ǰ���豸\r\n������װ��ҵ\r\n���ز�\r\n��װ����\r\n�ʵ�ͨ��\r\n����������֤\r\n��������������ᡢ����\r\n��������ҵ\r\n���ڡ�����\r\nʵҵ��˾����ҵó��\r\n���¼���������\r\n�����г�','');
INSERT INTO `liuyangnzhang_config` VALUES ('mymd5','65432687','');
INSERT INTO `liuyangnzhang_config` VALUES ('copyright','','');
INSERT INTO `liuyangnzhang_config` VALUES ('miibeian_gov_cn','','');
INSERT INTO `liuyangnzhang_config` VALUES ('bokecc_id','','');
INSERT INTO `liuyangnzhang_config` VALUES ('cookiePre','','');
INSERT INTO `liuyangnzhang_config` VALUES ('sms_es_key','2','');
INSERT INTO `liuyangnzhang_config` VALUES ('sms_type','ccell','');
INSERT INTO `liuyangnzhang_config` VALUES ('sms_wi_pwd','3','');
INSERT INTO `liuyangnzhang_config` VALUES ('sms_ccell_id','82008','');
INSERT INTO `liuyangnzhang_config` VALUES ('sms_ccell_pwd','celllxl','');
INSERT INTO `liuyangnzhang_config` VALUES ('regmoney','5','');
INSERT INTO `liuyangnzhang_config` VALUES ('yzImgReg','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('cookieDomain','','');
INSERT INTO `liuyangnzhang_config` VALUES ('member_contact',' <div class=t>020-88888888</div>\n            <div class=t>020-88888888</div>\n            <div class=q>qq:123456</div>\n','');
INSERT INTO `liuyangnzhang_config` VALUES ('forbid_show_bug','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('updir','upload_files','');
INSERT INTO `liuyangnzhang_config` VALUES ('mirror','http://down.qibosoft.com/other/testv6/upload_files/','');
INSERT INTO `liuyangnzhang_config` VALUES ('upfileType','.rar .txt .jpg .gif .bmp .png .zip .mp3 .wma .wmv .mpeg .mpg .rm .ram .htm .doc .swf .avi .flv .sql .doc .ppt .xls .chm .pdf','');
INSERT INTO `liuyangnzhang_config` VALUES ('upfileMaxSize','1024','');
INSERT INTO `liuyangnzhang_config` VALUES ('totalSpace','10','');
INSERT INTO `liuyangnzhang_config` VALUES ('time','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('admin_url','admin','');
INSERT INTO `liuyangnzhang_config` VALUES ('www_url','http://www.liuyangzhang.com','');
INSERT INTO `liuyangnzhang_config` VALUES ('style_member','default','');
INSERT INTO `liuyangnzhang_config` VALUES ('style','default','');
INSERT INTO `liuyangnzhang_config` VALUES ('close_why','��վά������,\r\n��ͣ����.','');
INSERT INTO `liuyangnzhang_config` VALUES ('web_open','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('MoneyDW','��','');
INSERT INTO `liuyangnzhang_config` VALUES ('MoneyName','����','');
INSERT INTO `liuyangnzhang_config` VALUES ('UserEmailAutoPass','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('BuySpacesizeMoney','50','');
INSERT INTO `liuyangnzhang_config` VALUES ('webmail','601450868@qq.com','');
INSERT INTO `liuyangnzhang_config` VALUES ('waterpos','7','');
INSERT INTO `liuyangnzhang_config` VALUES ('alipay_scale','100','');
INSERT INTO `liuyangnzhang_config` VALUES ('reg_group','8','');
INSERT INTO `liuyangnzhang_config` VALUES ('QQ_login','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('QQ_appid','','');
INSERT INTO `liuyangnzhang_config` VALUES ('QQ_appkey','','');
INSERT INTO `liuyangnzhang_config` VALUES ('QQ_QBappid','','');
INSERT INTO `liuyangnzhang_config` VALUES ('QQ_QBappkey','','');
INSERT INTO `liuyangnzhang_config` VALUES ('QQ_logintime','','');
INSERT INTO `liuyangnzhang_config` VALUES ('guide_word','��վ��ҳ|/|0||51|index\r\n��˾���|/do/alonepage.php?id=1|0||9|page1\r\n��Ʒ����|/sell/|0||10|sell\r\n��������|/news/|0||11|news\r\n��ҵ��Ƹ|/hr/|0||52|hr\r\n�������|/form/form.php?mid=1|0||13|fom1\r\n�ɹ�����|/do/examples.php|0||53|examples\r\n��ϵ����|/do/alonepage.php?id=2|0||14|page2','');
INSERT INTO `liuyangnzhang_config` VALUES ('UseMoneyType','cms','');
INSERT INTO `liuyangnzhang_config` VALUES ('description','����л������߳� ','');
INSERT INTO `liuyangnzhang_config` VALUES ('metakeywords','����л������߳�   ˮ���� ��ˮ ����','');
INSERT INTO `liuyangnzhang_config` VALUES ('webname','����л������߳� ','');
INSERT INTO `liuyangnzhang_crontab` VALUES ('2','�������ݿ�','0','0300','0','1292489459','inc/crontab/mysqlbak.php','','1');
INSERT INTO `liuyangnzhang_crontab` VALUES ('3','���CK�༭�����������ͼ','0','0330','0','1292489510','inc/crontab/delete_ckeditor_tmp.php','','1');
INSERT INTO `liuyangnzhang_crontab` VALUES ('4','��ո�����','0','','1296504125','0','inc/crontab/delete_table_upfile.php','','1');
INSERT INTO `liuyangnzhang_example_sort` VALUES ('2','��С��ҵ','0');
INSERT INTO `liuyangnzhang_example_sort` VALUES ('3','���й�˾','0');
INSERT INTO `liuyangnzhang_form_config` VALUES ('module_close','0','');
INSERT INTO `liuyangnzhang_form_config` VALUES ('module_id','21','');
INSERT INTO `liuyangnzhang_form_config` VALUES ('Info_webOpen','1','');
INSERT INTO `liuyangnzhang_form_config` VALUES ('Info_webname','�������','');
INSERT INTO `liuyangnzhang_form_config` VALUES ('module_pre','form_','');
INSERT INTO `liuyangnzhang_form_content` VALUES ('27','','3','2','1237260673','1237260673','1','admin','','1','192.168.0.99');
INSERT INTO `liuyangnzhang_form_content` VALUES ('25','','3','2','1237214289','1237214289','1','admin','','1','192.168.0.99');
INSERT INTO `liuyangnzhang_form_content` VALUES ('18','','3','0','1236936110','1236936110','1','admin','','0','192.168.0.99');
INSERT INTO `liuyangnzhang_form_content` VALUES ('28','','1','1','1377934368','1377934368','1','xuling','','0','223.240.83.203');
INSERT INTO `liuyangnzhang_form_content` VALUES ('29','','2','1','1378310869','1378310869','0','','','0','118.249.104.12');
INSERT INTO `liuyangnzhang_form_content_1` VALUES ('18','1','�ۺ�ͷ�','','222223','54325@qq.com','133444444443');
INSERT INTO `liuyangnzhang_form_content_1` VALUES ('25','1','�ۺ�ͷ�','hhhhhhhhhhhhhhhhhh','222223','54325@qq.com','13377777777');
INSERT INTO `liuyangnzhang_form_content_1` VALUES ('27','1','�ۺ�ͷ�','192.168.0.99/55 all righ\nts reserved \n��ICP��05047353�� \nPowered by PHP168','222223','54325@qq.com','13377777777');
INSERT INTO `liuyangnzhang_form_content_1` VALUES ('28','1','����','123123123','��ѧ��1231','54325@qq.com','13399999999');
INSERT INTO `liuyangnzhang_form_content_2` VALUES ('29','0','���Լ��˹�˾��','������','13467622046','');
INSERT INTO `liuyangnzhang_form_module` VALUES ('1','�������','0','','a:3:{s:8:\"field_db\";a:5:{s:10:\"advicetype\";a:14:{s:5:\"title\";s:4:\"���\";s:10:\"field_name\";s:10:\"advicetype\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:34:\"��ǰ�ͷ�\r\n�ۺ�ͷ�\r\n��Ʒ����\r\n����\";s:10:\"form_value\";s:4:\"����\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:9:\"orderlist\";s:2:\"10\";s:9:\"allowview\";N;}s:8:\"mobphone\";a:15:{s:5:\"title\";s:8:\"��ĵ绰\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:25;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:5:\"email\";a:14:{s:5:\"title\";s:8:\"�������\";s:10:\"field_name\";s:5:\"email\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:7:\"content\";a:14:{s:5:\"title\";s:4:\"����\";s:10:\"field_name\";s:7:\"content\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";s:1:\"6\";s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:8:\"��ĳƺ�\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:11:\"listshow_db\";a:2:{s:10:\"advicetype\";s:4:\"���\";s:8:\"truename\";s:8:\"��ĳƺ�\";}}','','0','','0','1','����','3');
INSERT INTO `liuyangnzhang_form_module` VALUES ('2','���߱���','0','','a:2:{s:8:\"field_db\";a:4:{s:7:\"my_name\";a:14:{s:5:\"title\";s:4:\"����\";s:10:\"field_name\";s:7:\"my_name\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";i:10;s:9:\"allowview\";N;}s:8:\"my_phone\";a:14:{s:5:\"title\";s:8:\"��ϵ�绰\";s:10:\"field_name\";s:8:\"my_phone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";i:9;s:9:\"allowview\";N;}s:7:\"my_mail\";a:14:{s:5:\"title\";s:8:\"��ϵ����\";s:10:\"field_name\";s:7:\"my_mail\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"30\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:7:\"content\";a:13:{s:5:\"title\";s:8:\"��ע��Ϣ\";s:10:\"field_name\";s:7:\"content\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:6:\"ieedit\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";i:-1;s:9:\"allowview\";N;}}s:7:\"is_html\";a:1:{s:7:\"content\";s:8:\"��ע��Ϣ\";}}','','0','','0','0','���','');
INSERT INTO `liuyangnzhang_form_reply` VALUES ('6','25','3','1237255555','1','admin','<p><u>yyyyyy</u></p>\r\n<p><u>yyyyyyyy</u></p><strong>\r\n<hr width=\"100%\" color=#98fb98 SIZE=1 />\r\n</strong>','192.168.0.99');
INSERT INTO `liuyangnzhang_form_reply` VALUES ('10','27','3','1239591974','1','admin','ffffffffffff ','192.168.0.99');
INSERT INTO `liuyangnzhang_friendlink` VALUES ('35','2','�����̳','http://bbs.lyrb.com.cn','','','1','0','0','0','0','0','','1','0');
INSERT INTO `liuyangnzhang_friendlink_sort` VALUES ('2','��������','0');
INSERT INTO `liuyangnzhang_friendlink_sort` VALUES ('3','�������','0');
INSERT INTO `liuyangnzhang_group` VALUES ('2','1','�ο�','0','0','0','a:54:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:17:\"SearchArticleType\";s:1:\"1\";s:16:\"PostArticleYzImg\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"0\";s:17:\"SetArticleKeyword\";s:1:\"0\";s:20:\"AddArticleKeywordNum\";s:0:\"\";s:21:\"AddArticleCopyfromNum\";s:0:\"\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:13:\"PostNoDelCode\";s:1:\"0\";s:7:\"SetVote\";s:1:\"0\";s:11:\"SetHtmlName\";s:1:\"0\";s:16:\"PassContributeSP\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:2:\"10\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"0\";s:15:\"buy_postauto_yz\";s:1:\"0\";s:15:\"post_pingpai_yz\";s:1:\"0\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:0:\"\";s:12:\"post_buy_num\";s:0:\"\";s:13:\"post_news_num\";s:0:\"\";s:14:\"post_photo_num\";s:0:\"\";s:11:\"post_hr_num\";s:0:\"\";s:17:\"post_zhanghui_num\";s:0:\"\";s:12:\"post_ZLG_num\";s:0:\"\";s:16:\"post_pingpai_num\";s:0:\"\";s:19:\"post_baojiadian_num\";s:0:\"\";s:19:\"post_xunjiadian_num\";s:0:\"\";s:24:\"post_info_collection_num\";s:0:\"\";}','0','');
INSERT INTO `liuyangnzhang_group` VALUES ('3','1','��������Ա','0','0','0','a:26:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"1\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"1\";s:16:\"useHomepageStyle\";s:1:\"1\";s:21:\"view_buy_view_contact\";s:1:\"1\";s:13:\"post_sell_num\";s:3:\"999\";s:12:\"post_buy_num\";s:3:\"999\";s:13:\"post_news_num\";s:3:\"999\";s:14:\"post_photo_num\";s:3:\"999\";s:11:\"post_hr_num\";s:3:\"999\";s:17:\"post_zhanghui_num\";s:3:\"999\";s:12:\"post_ZLG_num\";s:3:\"999\";s:16:\"post_pingpai_num\";s:3:\"999\";s:19:\"post_baojiadian_num\";s:3:\"999\";s:19:\"post_xunjiadian_num\";s:3:\"999\";s:24:\"post_info_collection_num\";s:3:\"999\";s:18:\"allow_get_homepage\";s:1:\"1\";}','1','a:64:{s:13:\"center_config\";s:1:\"1\";s:8:\"user_reg\";s:1:\"1\";s:11:\"module_list\";s:1:\"1\";s:9:\"hack_list\";s:1:\"1\";s:9:\"blend_set\";s:1:\"1\";s:14:\"friendlink_mod\";s:1:\"1\";s:14:\"alonepage_list\";s:1:\"1\";s:9:\"mysql_out\";s:1:\"1\";s:10:\"mysql_into\";s:1:\"1\";s:9:\"mysql_del\";s:1:\"1\";s:9:\"mysql_sql\";s:1:\"1\";s:9:\"menu_list\";s:1:\"1\";s:14:\"adminmenu_list\";s:1:\"1\";s:15:\"membermenu_list\";s:1:\"1\";s:11:\"member_list\";s:1:\"1\";s:8:\"regfield\";s:1:\"1\";s:16:\"member_addmember\";s:1:\"1\";s:10:\"group_list\";s:1:\"1\";s:16:\"group_list_admin\";s:1:\"1\";s:9:\"group_add\";s:1:\"1\";s:10:\"alipay_set\";s:1:\"1\";s:15:\"attachment_list\";s:1:\"1\";s:9:\"area_list\";s:1:\"1\";s:10:\"upgrade_ol\";s:1:\"1\";s:12:\"message_send\";s:1:\"1\";s:9:\"mail_send\";s:1:\"1\";s:8:\"sms_send\";s:1:\"1\";s:8:\"cnzz_set\";s:1:\"1\";s:15:\"style_editstyle\";s:1:\"1\";s:13:\"template_list\";s:1:\"1\";s:15:\"logs_login_logs\";s:1:\"1\";s:18:\"logs_admin_do_logs\";s:1:\"1\";s:8:\"examples\";s:1:\"1\";s:5:\"login\";s:1:\"1\";s:7:\"crontab\";s:1:\"1\";s:25:\"Module_news_center_config\";s:1:\"1\";s:24:\"Module_news_center_label\";s:1:\"1\";s:21:\"Module_news_sort_post\";s:1:\"1\";s:16:\"Module_news_list\";s:1:\"1\";s:19:\"Module_news_comment\";s:1:\"1\";s:25:\"Module_news_sort_listsort\";s:1:\"1\";s:25:\"Module_sell_center_config\";s:1:\"1\";s:24:\"Module_sell_center_label\";s:1:\"1\";s:16:\"Module_sell_list\";s:1:\"1\";s:19:\"Module_sell_comment\";s:1:\"1\";s:16:\"Module_sell_sort\";s:1:\"1\";s:18:\"Module_sell_report\";s:1:\"1\";s:17:\"Module_sell_order\";s:1:\"1\";s:18:\"Module_sell_module\";s:1:\"1\";s:23:\"Module_hr_center_config\";s:1:\"1\";s:22:\"Module_hr_center_label\";s:1:\"1\";s:14:\"Module_hr_sort\";s:1:\"1\";s:19:\"Module_hr_list_list\";s:1:\"1\";s:18:\"Module_hr_joinlist\";s:1:\"1\";s:25:\"Module_hr_list_listmember\";s:1:\"1\";s:14:\"Module_hr_city\";s:1:\"1\";s:16:\"Module_hr_module\";s:1:\"1\";s:23:\"Module_guestbook_center\";s:1:\"1\";s:21:\"Module_guestbook_sort\";s:1:\"1\";s:24:\"Module_guestbook_content\";s:1:\"1\";s:18:\"Module_form_center\";s:1:\"1\";s:23:\"Module_form_form_module\";s:1:\"1\";s:24:\"Module_form_form_content\";s:1:\"1\";s:6:\"mymenu\";N;}');
INSERT INTO `liuyangnzhang_group` VALUES ('8','0','��ͨ��Ա','0','50','0','a:55:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:17:\"SearchArticleType\";s:1:\"1\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"1\";s:17:\"SetArticleKeyword\";s:1:\"1\";s:20:\"AddArticleKeywordNum\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:21:\"AddArticleCopyfromNum\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:17:\"CollectArticleNum\";s:2:\"30\";s:15:\"CreatSpecialNum\";s:1:\"7\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:11:\"SetHtmlName\";s:1:\"0\";s:7:\"SetVote\";s:1:\"1\";s:16:\"PassContributeSP\";s:1:\"0\";s:13:\"PostNoDelCode\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"0\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:1:\"5\";s:12:\"post_buy_num\";s:1:\"5\";s:13:\"post_news_num\";s:1:\"5\";s:14:\"post_photo_num\";s:2:\"10\";s:11:\"post_hr_num\";s:1:\"5\";s:17:\"post_zhanghui_num\";s:1:\"5\";s:12:\"post_ZLG_num\";s:1:\"0\";s:16:\"post_pingpai_num\";s:1:\"5\";s:19:\"post_baojiadian_num\";s:1:\"5\";s:19:\"post_xunjiadian_num\";s:1:\"5\";s:24:\"post_info_collection_num\";s:2:\"30\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('module_id','18','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('viewNoPassGuestBook','0','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('yzImgGuestBook','1','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('module_pre','guestbook_','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('ifOpenGuestBook','1','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('module_close','0','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('Info_webOpen','1','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('groupPassPassGuestBook','3','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('Info_webname','���Ա�','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('GuestBookNum','20','');
INSERT INTO `liuyangnzhang_guestbook_sort` VALUES ('1','0','��չ����','0','1','0','0','','0','0','','','','','','','0','','','','0','','','','','0','b:0;','0','0','','','0');
INSERT INTO `liuyangnzhang_guestbook_sort` VALUES ('2','0','���Ͷ��','0','1','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('login','�û���¼���','0','','a:3:{s:10:\"systemType\";s:6:\"�벩CMS\";s:9:\"guestcode\";s:0:\"\";}','','','','index.php?lfj=hack&hack=login&job=list','','','','0','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('alipay_set','���߳�ֵ֧������','0','','','','','','index.php?lfj=alipay&job=list','','other','�����������','9','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('upgrade_ol','ϵͳ��������','0','','','','','','index.php?lfj=upgrade&job=get','','other','��������','4','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('mail_send','�ʼ�Ⱥ��','0','','','','','','index.php?lfj=mail&job=send','','other','��Ϣ/�ʼ�Ⱥ��','2','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('message_send','վ����ϢȺ��','0','','','','','','index.php?lfj=message&job=send','','other','��Ϣ/�ʼ�Ⱥ��','3','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('sms_send','�ֻ�����Ⱥ��','0','','','','','','index.php?lfj=sms&job=send','','other','��Ϣ/�ʼ�Ⱥ��','1','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('cnzz_set','CNZZ����ͳ��','0','','','','','','index.php?lfj=cnzz&job=ask','','other','վ�⹦��','3','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('moneycard_make','�㿨��ֵ����','0','','','','','','index.php?lfj=moneycard&job=make','','other','�����������','7','','1');
INSERT INTO `liuyangnzhang_hack` VALUES ('logs_login_logs','��̨��¼��־','0','','','','','','index.php?lfj=logs&job=login_logs','','other','��־����','2','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('logs_admin_do_logs','��̨������־','0','','','','','','index.php?lfj=logs&job=admin_logs','','other','��־����','1','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('area_list','��������','0','','','','','','index.php?lfj=area&job=list','','other','��������','5','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('crontab','��ʱ����','0','','','','','','index.php?lfj=crontab&job=list','','other','�����ȫ','0','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('examples','�ɹ�����','0','','','','','','index.php?lfj=examples&job=list','','other','�ɹ�����','1','','0');
INSERT INTO `liuyangnzhang_hr_apply` VALUES ('2','51','1','1','1284781155');
INSERT INTO `liuyangnzhang_hr_apply` VALUES ('3','50','1','1','1284781163');
INSERT INTO `liuyangnzhang_hr_apply` VALUES ('4','53','1','1','1287207635');
INSERT INTO `liuyangnzhang_hr_apply` VALUES ('5','57','1','1','1288768897');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('1','0','����','1','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('2','0','�Ϻ�','1','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('3','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('4','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('5','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('6','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('7','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('8','0','���','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('9','0','�ɶ�','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('10','0','��ɳ','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('11','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('12','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('13','0','��ݸ','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('14','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('15','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('16','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('17','0','������','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('18','0','�Ϸ�','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('19','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('20','0','���ͺ���','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('21','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('22','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('23','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('24','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('25','0','�Ͼ�','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('26','0','�ϲ�','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('27','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('28','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('29','0','�ൺ','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('30','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('31','0','ʯ��ׯ','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('32','0','̫ԭ','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('33','0','�人','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('34','0','��³ľ��','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('35','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('36','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('37','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('38','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('39','0','����','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('40','0','֣��','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_collection` VALUES ('1','1','1','1286508117');
INSERT INTO `liuyangnzhang_hr_config` VALUES ('module_id','31','');
INSERT INTO `liuyangnzhang_hr_config` VALUES ('Info_webname','�˲���Ƹ','');
INSERT INTO `liuyangnzhang_hr_config` VALUES ('module_pre','hr_','');
INSERT INTO `liuyangnzhang_hr_config` VALUES ('Info_metakeywords','��н��Ƹ�˲�','');
INSERT INTO `liuyangnzhang_hr_config` VALUES ('Info_description','�����������','');
INSERT INTO `liuyangnzhang_hr_config` VALUES ('module_close','0','');
INSERT INTO `liuyangnzhang_hr_content_2` VALUES ('1','1','1','Ӣ��','25','1','������','157','1','ï��ѧԺ','1982','13365874577','55651225','fdsag@ac.cn','fsda@adf.cn','��ѧ\r\nСѧ','ûʲô','ţ��һ��','��Զ','��ˮ','�Ϻ�','2','��ʱ','�������','qb_hr_/0/1_20101102111157_hlxdx.jpg','-1');
INSERT INTO `liuyangnzhang_hr_content_2` VALUES ('2','2','14','����','26','2','������','187','2','��������ѧ','2002','15874125478','52145687','vcdsfd@dsa.cn','fdsa@dfa.cn','Сѧ:����Сѧ\r\n��ѧ:�ǽ���ѧ\r\n��ѧ:������ѧ','��һ��,��������\r\n�ڶ���,�Ѻ��ɹ�','����һ��ţ��Ŷ\r\n�ǲ���ѽ','����\r\n��','û��ʲô,���õ�.','����','2','��ʱ','����','qb_hr_/0/14_20101009111006_gfye0.jpg','1');
INSERT INTO `liuyangnzhang_hr_content_2` VALUES ('3','3','29','�г�','29','1','��̫��','175','4','����ʦ����ѧ','1999','15878745874','58745457','fdsaf@dsa.cn','25saf@dsa.cn','2001-2004��,�Ͷ��ڻ�����ѧ\r\n1998-2001��,�Ͷ��ڻ���Сѧ','�����׹���������','�Կ�����\r\nƴ������','�г�Ԥ��\r\n�г�����','��Ƥ��\r\n������','����','2','��ʱ','������۹���ʦ','qb_hr_/0/29_20101102111131_caqee.jpg','3');
INSERT INTO `liuyangnzhang_hr_content_2` VALUES ('4','4','27','�����','31','1','�Ʊ�','185','1','��ɽ��ѧ','2001','15987777777','254114','fds@dsa.cn','0fds@dsa.cn','1998-2000���ϸ�С\r\n2001-2004����ʦ����ѧ','2000�����Ѻ�������\r\n2005�������˹�����','�Կ�����\r\nƴ������','���������\r\n��Ϸ����','������\r\n��Ӿ','�Ϻ�','2','һ����','�������ʦ','qb_hr_/0/27_20101102101131_m6scp.gif','4');
INSERT INTO `liuyangnzhang_hr_content_2` VALUES ('5','5','28','�г�','23','2','����','165','4','���ϴ�ѧ','2001','15371111111','5478445','fds@dsa.cn','fds@dsa.cn','2001-2004����ʦ��Ժ��ѧ\r\n1998-2000��,���ϸ�С','�������׹�����3��ͷ�\r\n�������˹�����5��ͷ�','�Կ�����\r\nƴ������','�ͷ��ۺ����\r\n\r\n�Ӵ�����','����\r\n��Ӿ','����','1','��ʱ','�ͷ�����','qb_hr_/0/28_20101102111115_mn7ex.jpg','2');
INSERT INTO `liuyangnzhang_hr_content_2` VALUES ('6','6','31','�г�','28','2','�Ŵ���','164','3','�����ѧ','1998','15355555555','456456546','fdsafsd@dsa.cn','0fdsafsd@dsa.cn','2001-2002����ʦ��ԺУ�Ͷ�\r\n1998-1999���ڸ�С�Ͷ�','ȥ�����Ѻ�������\r\nǰ�������˹�����','�Կ�����\r\nƴ������','�����,\r\n�г�����','������\r\n������','����','1','��ʱ','��������','qb_hr_/0/31_20101102111115_yrnp5.jpg','-1');
INSERT INTO `liuyangnzhang_hr_content_2` VALUES ('7','7','32','����','23','1','��С��','168','4','����ѧԺ','2001','15987878787','5542354','fgds@dsa.cn','21fgds@dsa.cn','2001-2003�����������ѧ\r\n1998-1999����ݻ��и�С','ȥ�깤��������\r\nǰ�깤�����Ѻ�','�Կ�����\r\nƴ������','�������\r\n��ҳ���','��Ӿ\r\n����','����','1','��ʱ','��ҳ���ʦ','qb_hr_/0/32_20101102111124_jaf0y.jpg','4');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('147','2','���','height','int','4','14','text','50','0','','','����','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('150','2','��ҵѧУ','alma_mater','varchar','30','11','text','100','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('86','2','רҵ','speciality','varchar','50','12','text','50','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('84','2','����','age','int','2','17','text','50','0','','','��','','0','1','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('151','2','��ҵ���','graduate_time','varchar','10','10','text','50','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('168','2','��������','worktime','varchar','20','3','text','100','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('79','2','�Ա�','sex','int','1','18','radio','50','0','1|��\r\n2|Ů','1','','','0','1','1','1','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('78','2','����','truename','varchar','20','20','text','100','0','','','','','0','1','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('149','2','ѧ��','school_age','int','3','13','select','0','0','1|Сѧ\r\n2|����\r\n3|����\r\n4|��ר\r\n5|��ר\r\n6|����\r\n7|�о���\r\n9|��ʿ','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('152','2','�ֻ�����','mobphone','varchar','11','9','text','100','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('153','2','QQ����','qq','varchar','11','8','text','100','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('154','2','��������','email','varchar','50','7','text','100','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('155','2','MSN�ʺ�','msn','varchar','50','6','text','100','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('167','2','��������','workyear','int','2','4','select','0','0','0|Ӧ���ҵ��\r\n1|һ��\r\n2|����\r\n3|��������','0','','','0','1','0','1','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('166','2','������������','lifeplace','varchar','50','5','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('158','2','��������','education','mediumtext','0','-1','textarea','400','100','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('159','2','��������','work','mediumtext','0','-2','textarea','500','100','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('160','2','��������','introduce','mediumtext','0','-3','textarea','500','100','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('161','2','�����س�','skill','mediumtext','0','-4','textarea','500','100','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('162','2','��������','interest','mediumtext','0','-5','textarea','500','100','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('164','1','����','content','mediumtext','0','-1','textarea','500','120','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('170','1','��Ƹ����','nums','int','5','0','text','50','0','','','��','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('171','1','��������Ҫ��','wageyear','int','1','0','select','0','0','1|һ������\r\n2|��������\r\n3|��������','','','','0','1','1','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('172','1','�Ա�Ҫ��','asksex','int','1','0','radio','0','0','1|����\r\n2|Ů��','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('173','1','ѧ��Ҫ��','schoo_age','int','2','0','select','0','0','1|Сѧ����\r\n2|��ѧ����\r\n3|��ר����\r\n4|��������\r\n5|��ר����\r\n6|��������\r\n7|˶ʿ����\r\n8|��ʿ����','','','','0','1','1','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('174','1','нˮ����','wage','int','2','0','select','0','0','-1|����\r\n1|800~1500Ԫ\r\n2|1500~2500Ԫ\r\n3|2500~3500Ԫ\r\n4|3500Ԫ����','','','','0','1','1','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('175','1','��������','workplace','varchar','50','10','text','150','0','','','','','1','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('176','2','����ְλ','hope_job','varchar','200','21','text','300','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('177','2','��Ƭ','facephoto','varchar','100','0','onepic','0','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('178','2','��������','wage','int','2','10','select','0','0','-1|����\r\n1|800~1500Ԫ\r\n2|1500~2500Ԫ\r\n3|2500~3500Ԫ\r\n4|3500Ԫ����','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('179','1','��ֹ����','time_over','varchar','20','0','text','100','0','','','','','0','1','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('180','1','��������','nature','int','1','0','select','0','0','1|ȫְ\r\n2|��ְ\r\n3|����','','','','0','1','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_module` VALUES ('1','0','ְλģ��','0','','N;','','0','0','');
INSERT INTO `liuyangnzhang_hr_module` VALUES ('2','0','����ģ��','0','','a:1:{s:9:\"moduleSet\";N;}','','1','0','a:6:{s:4:\"list\";s:14:\"personlist.htm\";s:10:\"admin_list\";s:0:\"\";s:11:\"member_list\";s:0:\"\";s:4:\"show\";s:14:\"personshow.htm\";s:4:\"post\";s:10:\"person.htm\";s:6:\"search\";s:16:\"personsearch.htm\";}');
INSERT INTO `liuyangnzhang_hr_person` VALUES ('1','2','0','1314176263','1','admin','1','1','1286599134','127.0.0.1','2');
INSERT INTO `liuyangnzhang_hr_person` VALUES ('5','2','0','1288667067','28','test2','0','1','1288667652','127.0.0.1','3');
INSERT INTO `liuyangnzhang_hr_person` VALUES ('3','2','0','1288666893','29','test3','0','1','1288667652','127.0.0.1','1');
INSERT INTO `liuyangnzhang_hr_person` VALUES ('4','2','0','1288666734','27','test1','0','1','1288667650','127.0.0.1','2');
INSERT INTO `liuyangnzhang_hr_person` VALUES ('6','2','0','1288667240','31','test5','0','1','1288667653','127.0.0.1','4');
INSERT INTO `liuyangnzhang_hr_person` VALUES ('7','2','0','1288667419','32','test6','0','1','1288667654','127.0.0.1','3');
INSERT INTO `liuyangnzhang_jfabout` VALUES ('6','2','�������¿ɵ�{$webdb[postArticleMoney]}������','ֻ����˺�����²ſɵû���,û��˵����²��û���.','0');
INSERT INTO `liuyangnzhang_jfabout` VALUES ('7','2','ɾ�����¿۳�{$webdb[deleteArticleMoney]}������','','0');
INSERT INTO `liuyangnzhang_jfabout` VALUES ('5','1','�û�ע��ɵ�{$webdb[regmoney]}������','','0');
INSERT INTO `liuyangnzhang_jfabout` VALUES ('8','2','���±�����Ϊ�����ɵ�{$webdb[comArticleMoney]}������','','0');
INSERT INTO `liuyangnzhang_jfabout` VALUES ('9','1','ÿ���㿨�ɶһ�{$webdb[MoneyRatio]}������,�㿨����ͨ�����߳�ֵ���.','','0');
INSERT INTO `liuyangnzhang_jfsort` VALUES ('1','��Ա����','0');
INSERT INTO `liuyangnzhang_jfsort` VALUES ('2','��������','0');
INSERT INTO `liuyangnzhang_label` VALUES ('1','','0','99','enterprise_hotline','code','0','<iframe src=\" http://m.weather.com.cn/m/pn7/weather.htm\" style=\"display:inline;margin-top:5px;\" height=\"22\" marginwidth=\"0\" marginheight=\"0\" hspace=\"0\" width=\"170\" vspace=\"0\" frameborder=\"0\" scrolling=\"no\"></iframe>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','xuling','1377933049','9','0','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('2','','0','99','enterprise_headatc','code','0','<a onclick=\"this.style.behavior=\'url(#default#homepage)\';this.setHomePage(\'http://www.qibosoft.com\');\" href=\"#\" class=\"home\">��Ϊ��ҳ</a>\r\n<a href=\"javascript:javascript:window.external.AddFavorite(\'http://www.qibosoft.com\',\'�벩��ҵ��\');\" class=\"fav\">�����ղ�</a>\r\n<a href=\"http://www_qibosoft_com/form/form.php?mid=2\" class=\"help\">���߱���</a>\r\n<a href=\"http://www_qibosoft_com/guestbook/\" class=\"set\">�ÿ�����</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314324703','9','0','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('3','','0','99','enterprise_menu','code','0','<li class=\"begin\"><a href=\"http://www_qibosoft_com\" class=\"ck\" onmouseover=\"SubOn(this)\">��վ��ҳ</a></li>\r\n<li><a href=\"http://www_qibosoft_com/introduce.htm\" onmouseover=\"SubOn(this)\">��������</a></li>\r\n<li><a href=\"#\" onmouseover=\"SubOn(this)\">��Ʒ����</a></li>\r\n<li><a href=\"#\" onmouseover=\"SubOn(this)\">��������</a></li>\r\n<li><a href=\"#\" onmouseover=\"SubOn(this)\">��ҵ��Ƹ</a></li>\r\n<li><a href=\"#\" onmouseover=\"SubOn(this)\">�ۺ����</a></li>\r\n<li><a href=\"#\" onmouseover=\"SubOn(this)\">��ϵ����</a></li>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302861114','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('4','','0','0','enterprise_indexslide','rollpic','0','a:7:{s:13:\"tplpart_1code\";s:0:\"\";s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"700\";s:6:\"height\";s:3:\"250\";s:6:\"picurl\";a:3:{i:1;s:49:\"http://www_qibosoft_com/images/enterprise/sl2.jpg\";i:2;s:49:\"http://www_qibosoft_com/images/enterprise/sl1.gif\";i:3;s:49:\"http://www_qibosoft_com/images/enterprise/sl3.jpg\";}s:7:\"piclink\";a:3:{i:1;s:2:\"#1\";i:2;s:2:\"#2\";i:3;s:2:\"#3\";}s:6:\"picalt\";a:3:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','xuling','1377968794','9','0','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('5','','0','0','enterprise_indexh1','code','0','<div class=\"tag\">������Ŀ</div>\r\n<div class=\"more\"><a href=\"#\" target=\"_blank\" style=\"color:#ffffff;\">����&gt;&gt;</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314326223','9','0','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('6','','0','0','enterprise_indext1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:98:\"<div class=\"list\"><A HREF=\"$url\" target=\'_blank\' >$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:91:\" SELECT A.* FROM liuyangnzhang_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('7','','0','0','enterprise_indexh2','code','0','<div class=\"tag\">��Ʒ�б�</div>\r\n<div class=\"more\"><a href=\"./sell/list.php?fid=1\" target=\"_blank\">����&gt;&gt;</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302847643','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('8','','0','0','enterprise_indext2','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:308:\"<dl class=\"list$i\">\r\n  <dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"120\" /></a></div></dt>\r\n  <dd>\r\n  	<div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n    <div class=\"c\">$content</div>\r\n    <div class=\"to\"><a href=\"$url\" target=\"_blank\">�鿴����</a></div>\r\n  </dd>\r\n</dl>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:152:\"(SELECT A.*,B.* FROM liuyangnzhang_sell_content A LEFT JOIN liuyangnzhang_sell_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('9','','0','0','enterprise_indexad1','pic','0','a:4:{s:6:\"imgurl\";s:28:\"../images/enterprise/ad1.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"280\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','1','0','1','xuling','1377967646','9','0','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('10','','0','0','enterprise_indexh5','code','0','�ͷ�����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('11','','0','0','enterprise_indext5','code','0','<div class=\"ct1\">\r\n  <dl class=\"tel\"><dt>ȫ�е绰��������</dt><dd class=\"telnum\">0731-83822863</dd></dl>\r\n  <dl class=\"answer\"><dt class=\"h\">������ѯ</dt><dd>ÿ�� 9:00-22:00</dd></dl>\r\n  <dl class=\"send\"><dt class=\"h\">��������</dt><dd>�յ����� ���ǻ��һʱ����ϵ��</dd></dl>\r\n</div>\r\n<div class=\"ct2\">\r\n  <div>�������ߣ�13507424308����������</div>\r\n  <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  15084793958����С�㣩</div>\r\n  <div>QQ�ͷ���&nbsp;&nbsp;1075942410</div>\r\n  <div>��ϵ���䣺1075942410@qq.com</div>\r\n  <div class=\"img\">��ǰ��\r\n     <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=1075942410&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:82172882:47\" alt=\"���������ҷ���Ϣ\" /></a>\r\n     <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=1075942410&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:27781017:47\" alt=\"���������ҷ���Ϣ\" /></a>\r\n  </div>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','xuling','1377967723','9','0','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('12','','0','0','enterprise_indexh3','code','0','<div class=\"tag\">ý�屨��</div>\r\n<div class=\"more\"><a href=\"#\" target=\"_blank\">����&gt;&gt;</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('13','','0','0','enterprise_indexh4','code','0','<div class=\"tag\">��������</div>\r\n<div class=\"more\"><a href=\"#\" target=\"_blank\">����&gt;&gt;</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('14','','0','0','enterprise_indext3','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:98:\"<div class=\"list\"><a href=\"$url\" target=\'_blank\' >$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:221:\"<dl>\r\n  <dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"90\" /></a></div></dt>\r\n  <dd>\r\n  	<div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n    <div class=\"c\">$content</div>\r\n  </dd>\r\n</dl>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_zh_content/zh_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:155:\" SELECT A.*,R.content FROM liuyangnzhang_news_content A LEFT JOIN liuyangnzhang_news_content_1 R ON A.id=R.id  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";s:168:\" SELECT A.*,R.content FROM liuyangnzhang_news_content A LEFT JOIN liuyangnzhang_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('15','','0','0','enterprise_indext4','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:98:\"<div class=\"list\"><a href=\"$url\" target=\'_blank\' >$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:221:\"<dl>\r\n  <dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"90\" /></a></div></dt>\r\n  <dd>\r\n  	<div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n    <div class=\"c\">$content</div>\r\n  </dd>\r\n</dl>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_zh_content/zh_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.posttime\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:160:\" SELECT A.*,R.content FROM liuyangnzhang_news_content A LEFT JOIN liuyangnzhang_news_content_1 R ON A.id=R.id  WHERE A.yz=1   ORDER BY A.posttime ASC LIMIT 0,6 \";s:4:\"sql2\";s:173:\" SELECT A.*,R.content FROM liuyangnzhang_news_content A LEFT JOIN liuyangnzhang_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1 ORDER BY A.posttime ASC LIMIT 0,1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314156610','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('16','','0','0','enterprise_indexh6','code','0','�ɹ�����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('17','','0','0','enterprise_indext6','code','0','<div>\r\n<a href=\"#\"><img src=http://www_qibosoft_com/images/enterprise/sad1.gif></a>\r\n<a href=\"#\"><img src=http://www_qibosoft_com/images/enterprise/sad2.gif></a>\r\n</div>\r\n<div>\r\n<a href=\"#\"><img src=http://www_qibosoft_com/images/enterprise/sad3.gif></a>\r\n<a href=\"#\"><img src=http://www_qibosoft_com/images/enterprise/sad4.gif></a>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('18','','0','0','enterprise_indexh7','code','0','<div class=\"tag\">�������</div>\r\n<div class=\"more\"><a href=\"do/friendlink.php\" target=\"_blank\">����&gt;&gt;</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314176059','9','0','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('19','','0','0','enterprise_indexad2','pic','0','a:4:{s:6:\"imgurl\";s:28:\"../images/enterprise/ad2.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"280\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','1','0','1','xuling','1377967659','9','0','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('23','','0','0','enterprise_newsh1','code','0','��������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302760243','0','20','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('25','','0','0','enterprise_newsh2','code','0','���±���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('26','','0','0','enterprise_newst2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:218:\"<dl>\r\n  <dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"80\" /></a></div></dt>\r\n  <dd>\r\n  <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n    <div class=\"c\">$content</div>  </dd>\r\n</dl>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:185:\" SELECT A.*,R.content FROM liuyangnzhang_news_content A LEFT JOIN liuyangnzhang_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"50\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('27','','0','0','enterprise_newsbanner','pic','0','a:4:{s:6:\"imgurl\";s:36:\"../images/enterprise/news/banner.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314325018','2','20','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('28','','0','0','enterprise_newsh1','code','0','������Ŀ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','20','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('29','','0','0','enterprise_newsh2','code','0','���±���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','20','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('30','','0','0','enterprise_newst2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:218:\"<dl>\r\n  <dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"80\" /></a></div></dt>\r\n  <dd>\r\n  <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n    <div class=\"c\">$content</div>  </dd>\r\n</dl>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:189:\" SELECT A.*,R.content FROM liuyangnzhang_news_content A LEFT JOIN liuyangnzhang_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.posttime DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"40\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302767006','2','20','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('31','','0','0','enterprise_newsbanner','pic','0','a:4:{s:6:\"imgurl\";s:36:\"../images/enterprise/news/banner.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314324906','3','20','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('32','','0','0','enterprise_newsh1','code','0','������Ŀ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','20','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('33','','0','0','enterprise_newsh2','code','0','���±���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','20','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('34','','0','0','enterprise_newst2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:220:\"<dl>\r\n  <dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"80\" /></a></div></dt>\r\n  <dd>\r\n  <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n    <div class=\"c\">$content</div>  </dd>\r\n</dl>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:185:\" SELECT A.*,R.content FROM liuyangnzhang_news_content A LEFT JOIN liuyangnzhang_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"50\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302833182','3','20','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('35','','0','0','enterprise_newsbanner','pic','0','a:4:{s:6:\"imgurl\";s:36:\"../images/enterprise/sell/banner.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314324794','2','34','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('37','','0','0','enterprise_newsh1','code','0','��Ʒ��Ŀ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','34','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('38','','0','0','enterprise_newsh2','code','0','���²�Ʒ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','34','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('39','','0','0','enterprise_newst2','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:220:\"<dl>\r\n  <dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"80\" /></a></div></dt>\r\n  <dd>\r\n  <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n    <div class=\"c\">$content</div>  </dd>\r\n</dl>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"40\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:152:\"(SELECT A.*,B.* FROM liuyangnzhang_sell_content A LEFT JOIN liuyangnzhang_sell_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','34','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('40','','0','0','enterprise_introduce1','pic','0','a:4:{s:6:\"imgurl\";s:57:\"http://www_qibosoft_com/images/enterprise/news/banner.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314325505','9','0','1','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('41','','0','0','enterprise_introduce3','code','0','<div class=\"ct1\">\r\n  <dl class=\"tel\"><dt>ȫ���绰��������</dt><dd class=\"telnum\">020-28319635</dd></dl>\r\n  <dl class=\"answer\"><dt class=\"h\">������ѯ</dt><dd>��һ������ 9:00-17:30</dd></dl>\r\n  <dl class=\"send\"><dt class=\"h\">��������</dt><dd>���ǻ��һʱ����ϵ��</dd></dl>\r\n</div>\r\n<div class=\"ct2\">\r\n  <div>�������ߣ�020-28319635</div>\r\n  <div>��ϵ���䣺admin@admin.com</div>\r\n  <div>����֧�֣�020-28319635</div>\r\n  <div class=\"img\">��ǰ��\r\n     <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=27781017&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:27781017:47\" alt=\"���������ҷ���Ϣ\" />27781017</a>\r\n  </div>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302858964','9','0','1','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('43','','0','0','enterprise_introduce4','code','0','�������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','1','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('42','','0','0','enterprise_introduce2','code','0','�ͷ�����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','1','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('44','','0','0','enterprise_introduce5','code','0','<div>\r\n<a href=\"#\"><img src=\"http://www_qibosoft_com/images/enterprise/sad1.gif\" width=\"95\" height=\"35\"/></a>\r\n<a href=\"#\"><img src=\"http://www_qibosoft_com/images/enterprise/sad2.gif\" width=\"95\" height=\"35\"/></a>\r\n</div>\r\n<div>\r\n<a href=\"#\"><img src=\"http://www_qibosoft_com/images/enterprise/sad3.gif\" width=\"95\" height=\"35\"/></a>\r\n<a href=\"#\"><img src=\"http://www_qibosoft_com/images/enterprise/sad4.gif\" width=\"95\" height=\"35\"/></a>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302859622','9','0','1','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('45','','0','0','enterprise_introduce6','code','0','<h3>�벩�������</h3>\r\n<p>\r\n�벩�����ԭPHP168-Vϵ�У������Ĵ��Ʒ���ֱ����벩CMSϵͳ���벩�ط������Ż�ϵͳ���벩������Ϣϵͳ���벩B2B��������ϵͳ���ٷ�����רע����Ŀ���������������������˾��Ա70%����Ϊ������ӵ���й�רҵ��WebӦ��ƽ̨�����з��Ŷӣ�ӵ�й㷺�����Ӱ������Ϊ����Ӧ����㷺��ϵͳ֮һ��Ҳ���й��Ϸ�PHP�������Ŀ�Դϵͳ�ṩ�̡�\r\n</p>\r\n<h3>��չ����</h3>\r\n<p>\r\n��չ��Ҫ����2010��12��1����Ϊ�벩�������2003��10��V1.0�汾�����������γ�������վ����Vϵ�У��ԡ�����+ģ��+������ܹ���ϵ����Ϊ���ڸ����ܡ�ģ�黯�Ŀ�ԴPHPϵͳ���漰������������ý�������Ż���������ҵ��Ϣ����վȺϵͳ����������B2B����ҵ�ڲ�OA�Ⱥ������ݸ߶˻�����Ӧ�ã���Ϊ��ʮ�����û��ṩ��Ӧ��ƽ̨��\r\n</p>\r\n<h3>��˾�Ŷ�</h3>\r\n<p>\r\n����ӵ��һ֧����ḻ�ļ������飬�Ŷ���Ҫ��Ա�������Ѻ���̫ƽ����ԡ���������FOXCONN��500ǿ���ȴ������繫˾�����Ź�˾��ӵ��һ������ͨPHP��MySQL�������ݴ�����߶˼�������ʦ����������������ý���Ż�����ҵ��Ϣ������ҵOAϵͳ����ҵ��������B2B�Ƚ�������зḻ����Ŀ����ʵʩ���飬�Դ�����ͻ��Ӽ򵥵����ӵ�Ӧ������\r\n</p>\r\n<h3>��������</h3>\r\n<p>\r\n��˾��\"��ֿ�Դ�����ϴ���\"Ϊ���������������ķ�չ���ڻ�������վ���ݹ���������˷ḻ���飬��������Ϊ����û��ṩ�����ƻ�������������������������ѯ����ѵ�ͼ���֧�ַ���\r\n</p>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','1','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('46','','0','0','enterprise_contact2','code','0','�ͷ�����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"97\";s:5:\"div_h\";s:2:\"28\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1303108077','9','0','2','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('47','','0','0','enterprise_contact3','code','0','<div class=\"ct1\">\r\n  <dl class=\"tel\"><dt>ȫ�е绰��������</dt><dd class=\"telnum\">0731-83822863</dd></dl>\r\n  <dl class=\"answer\"><dt class=\"h\">������ѯ</dt><dd>ÿ�� 9:00-22:00</dd></dl>\r\n  <dl class=\"send\"><dt class=\"h\">��������</dt><dd>�յ����� ���ǻ��һʱ����ϵ��</dd></dl>\r\n</div>\r\n<div class=\"ct2\">\r\n  <div>�������ߣ�13507424308����������</div>\r\n  <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  15084793958����С�㣩</div>\r\n  <div>QQ�ͷ���&nbsp;&nbsp;1075942410</div>\r\n  <div>��ϵ���䣺1075942410@qq.com</div>\r\n  <div class=\"img\">��ǰ��\r\n     <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=1075942410&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:82172882:47\" alt=\"���������ҷ���Ϣ\" /></a>\r\n     <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=1075942410&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:27781017:47\" alt=\"���������ҷ���Ϣ\" /></a>\r\n  </div>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"199\";s:5:\"div_h\";s:3:\"228\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','xuling','1377934457','9','0','2','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('48','','0','0','enterprise_contact1','pic','0','a:4:{s:6:\"imgurl\";s:36:\"../images/enterprise/news/banner.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:3:\"893\";s:5:\"div_h\";s:3:\"202\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314339788','9','0','2','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('49','','0','0','enterprise_contact6','code','0','<div class=\"ct1\">\r\n  <dl class=\"tel\"><dt>ȫ�е绰��������</dt><dd class=\"telnum\">0731-83822863</dd></dl>\r\n  <dl class=\"answer\"><dt class=\"h\">������ѯ</dt><dd>ÿ�� 9:00-22:00</dd></dl>\r\n  <dl class=\"send\"><dt class=\"h\">��������</dt><dd>�յ����� ���ǻ��һʱ����ϵ��</dd></dl>\r\n</div>\r\n<div class=\"ct2\">\r\n  <div>�������ߣ�13507424308����������</div>\r\n  <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  15084793958����С�㣩</div>\r\n  <div>QQ�ͷ���&nbsp;&nbsp;1075942410</div>\r\n  <div>��ϵ���䣺1075942410@qq.com</div>\r\n  <div class=\"img\">��ǰ��\r\n     <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=1075942410&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:82172882:47\" alt=\"���������ҷ���Ϣ\" /></a>\r\n     <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=1075942410&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:27781017:47\" alt=\"���������ҷ���Ϣ\" /></a>\r\n  </div>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','xuling','1377934404','9','0','2','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('50','','0','0','enterprise_hrbencandy1','pic','0','a:4:{s:6:\"imgurl\";s:34:\"../images/enterprise/hr/banner.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:3:\"989\";s:5:\"div_h\";s:3:\"204\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314326030','3','31','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('52','','0','0','enterprise_hrbencandy3','code','0','<div class=\"w\">ȫ����������</div>\r\n<div class=\"tel\">020-28319635</div>\r\n<div class=\"l\"><a href=\"#\">����鿴��˾����</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"115\";s:5:\"div_h\";s:2:\"61\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1303186048','3','31','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('53','','0','0','enterprise_hrlist1','pic','0','a:4:{s:6:\"imgurl\";s:34:\"../images/enterprise/hr/banner.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:3:\"990\";s:5:\"div_h\";s:3:\"200\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314326049','2','31','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('66','','0','0','enterprise_examples','pic','0','a:4:{s:6:\"imgurl\";s:33:\"../images/enterprise/examples.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','13','0','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('55','','0','0','enterprise_hrlist3','code','0','<div class=\"w\">ȫ����������</div>\r\n<div class=\"tel\">020-28319635</div>\r\n<div class=\"l\"><a href=\"#\">����鿴��˾����</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"135\";s:5:\"div_h\";s:2:\"63\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1303177263','2','31','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('56','','0','0','enterprise_form1','pic','0','a:4:{s:6:\"imgurl\";s:36:\"../images/enterprise/news/banner.gif\";s:7:\"imglink\";s:23:\"http://www.qobosoft.com\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:3:\"900\";s:5:\"div_h\";s:3:\"200\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314324822','5','21','5','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('57','','0','0','enterprise_form2','code','0','�ͷ�����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','5','21','5','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('58','','0','0','enterprise_form3','code','0','<div class=\"ct1\">\r\n  <dl class=\"tel\"><dt>ȫ�е绰��������</dt><dd class=\"telnum\">0731-83822863</dd></dl>\r\n  <dl class=\"answer\"><dt class=\"h\">������ѯ</dt><dd>ÿ�� 9:00-22:00</dd></dl>\r\n  <dl class=\"send\"><dt class=\"h\">��������</dt><dd>�յ����� ���ǻ��һʱ����ϵ��</dd></dl>\r\n</div>\r\n<div class=\"ct2\">\r\n  <div>�������ߣ�13507424308����������</div>\r\n  <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  15084793958����С�㣩</div>\r\n  <div>QQ�ͷ���&nbsp;&nbsp;1075942410</div>\r\n  <div>��ϵ���䣺1075942410@qq.com</div>\r\n  <div class=\"img\">��ǰ��\r\n     <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=1075942410&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:82172882:47\" alt=\"���������ҷ���Ϣ\" /></a>\r\n     <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=1075942410&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:27781017:47\" alt=\"���������ҷ���Ϣ\" /></a>\r\n  </div>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','xuling','1377934314','5','21','5','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('59','','0','0','enterprise_sellbenbanner','pic','0','a:4:{s:6:\"imgurl\";s:36:\"../images/enterprise/sell/banner.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:3:\"900\";s:5:\"div_h\";s:3:\"200\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314325047','3','34','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('60','','0','0','enterprise_sellbenh1','code','0','��Ʒ����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','34','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('61','','0','0','enterprise_sellbenh2','code','0','���²�Ʒ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','34','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('62','','0','0','enterprise_sellbent2','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:220:\"<dl>\r\n  <dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"80\" /></a></div></dt>\r\n  <dd>\r\n  <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n    <div class=\"c\">$content</div>  </dd>\r\n</dl>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"40\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:152:\"(SELECT A.*,B.* FROM liuyangnzhang_sell_content A LEFT JOIN liuyangnzhang_sell_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','34','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('63','','0','0','enterprise_sellbent3','code','0','<div style=\"font-size:18px;color:red\">\r\n  <div>\r\n    <div>\r\n      <div align=\"center\"><br /><br /><br /><br />�ƹ���ʾ��<br />\r\n          <br />\r\n        <br />\r\n        ��������ͬһ����ַ�� <br />\r\n        �����ʹ�ù��ﳵ��<br />\r\n        �˷�ģ�����Զ��������ۼ��ʷѣ�����ʵ���ʷѣ�<br />\r\n        ʹ�ù��ﳵ���º����ǿͷ��ᰴʵ���ʷ��޸ģ�</div>\r\n      <br />\r\n      <br />\r\n    </div>\r\n  </div>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1303359069','3','34','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('64','','0','0','enterprise_form3','code','0','<div>\r\n<a href=\"#\"><img src=\"http://www_qibosoft_com/images/enterprise/sad1.gif\" width=\"95\" height=\"35\"/></a>\r\n<a href=\"#\"><img src=\"http://www_qibosoft_com/images/enterprise/sad2.gif\" width=\"95\" height=\"35\"/></a>\r\n</div>\r\n<div>\r\n<a href=\"#\"><img src=\"http://www_qibosoft_com/images/enterprise/sad3.gif\" width=\"95\" height=\"35\"/></a>\r\n<a href=\"#\"><img src=\"http://www_qibosoft_com/images/enterprise/sad4.gif\" width=\"95\" height=\"35\"/></a>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','13','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('65','','0','0','enterprise_form2','code','0','�������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','13','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_limitword` VALUES ('1','�췴','��**');
INSERT INTO `liuyangnzhang_limitword` VALUES ('2','���ֹ�','��**��');
INSERT INTO `liuyangnzhang_memberdata` VALUES ('1','xuling','','3','1','','1','0','','3170','0','79312533','3637342','1382094509','223.240.84.59','1253678332','127.0.0.1','1','1890-00-00','http://v7.com/upload_files/icon/1.jpg','','118','1381567710','888888','','','54325@qq.com','20','345','cvbnmmm','','13399999999','','','��ѧ��','a:1:{s:7:\"endtime\";s:0:\"\";}','5','0','0','0');
INSERT INTO `liuyangnzhang_members` VALUES ('1','xuling','eee111761625aec899783dc522e71e8f');
INSERT INTO `liuyangnzhang_menu` VALUES ('9','0','��˾���','/do/alonepage.php?id=1','','0','0','0','0','7','page1','');
INSERT INTO `liuyangnzhang_menu` VALUES ('10','0','��Ʒ����','/sell/','','0','0','0','0','6','sell','');
INSERT INTO `liuyangnzhang_menu` VALUES ('11','0','��������','/news/','','0','0','0','0','5','news','');
INSERT INTO `liuyangnzhang_menu` VALUES ('13','0','�������','/form/form.php?mid=1','','0','0','0','0','3','fom1','');
INSERT INTO `liuyangnzhang_menu` VALUES ('14','0','��ϵ����','/do/alonepage.php?id=2','','0','0','0','0','1','page2','');
INSERT INTO `liuyangnzhang_menu` VALUES ('52','0','��ҵ��Ƹ','/hr/','','0','0','0','0','4','hr','');
INSERT INTO `liuyangnzhang_menu` VALUES ('51','0','��վ��ҳ','/','','0','0','0','0','8','index','');
INSERT INTO `liuyangnzhang_menu` VALUES ('53','0','�ɹ�����','/do/examples.php','','0','0','0','0','2','examples','');
INSERT INTO `liuyangnzhang_module` VALUES ('18','2','���Ա�','guestbook_','guestbook','','','','-1','','','0','0');
INSERT INTO `liuyangnzhang_module` VALUES ('21','2','���ܱ�','form_','form','','','','-2','','','0','0');
INSERT INTO `liuyangnzhang_module` VALUES ('20','2','������Ѷ','news_','news','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','102','','','0','1');
INSERT INTO `liuyangnzhang_module` VALUES ('31','2','�˲���Ƹ','hr_','hr','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','98','','','0','1');
INSERT INTO `liuyangnzhang_module` VALUES ('34','2','��Ʒ����','sell_','sell','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','100','','','0','1');
INSERT INTO `liuyangnzhang_moneylog` VALUES ('18','38','5','ע��÷�','1303378667');
INSERT INTO `liuyangnzhang_news_config` VALUES ('module_id','20','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('module_pre','news_','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('Info_webOpen','1','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('Info_adminfen','','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('GroupPostjumpurl','3,4','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('GroupPostIframe','3,4','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('GroupPostYZ','3','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('UseArea','0','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('Info_forbidOutPost','0','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('Info_closeWhy','','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('Info_GroupPostYZ','3','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('allowGroupPost','3','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('Info_description','����л������߳� ','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('module_close','0','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('Info_metakeywords','����л������߳�   ˮ���� ��ˮ','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('Info_webname','����л������߳� ','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('Info_PostCommentType','1','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('Info_PassCommentType','1','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('Info_ShowCommentRows','0','');
INSERT INTO `liuyangnzhang_news_sort` VALUES ('1','0','0','��������','1','2','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";}','','0','','','0','','','','','0','a:11:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:14:\"label_bencandy\";s:0:\"\";s:10:\"channelDir\";s:4:\"nnew\";s:13:\"channelDomain\";s:0:\"\";s:10:\"label_list\";s:2:\"33\";s:15:\"ListShowBigType\";s:13:\"bigsort_tpl/4\";}','','','','');
INSERT INTO `liuyangnzhang_news_sort` VALUES ('2','1','0','��˾��̬','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:11:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";N;s:10:\"label_list\";s:0:\"\";s:14:\"label_bencandy\";s:0:\"\";s:7:\"is_html\";N;s:11:\"field_value\";N;}','','','','');
INSERT INTO `liuyangnzhang_news_sort` VALUES ('3','1','0','��ҵ��̬','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:9:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";N;s:7:\"is_html\";N;s:11:\"field_value\";N;}','','','','');
INSERT INTO `liuyangnzhang_pm` VALUES ('4','11','','0','<font color=\"re','rebox','1','���пͻ��¶�����','1286873754','�뾡��鿴<A HREF=\'http://v7.com/buy/joinshow.php?fid=8&id=4\' target=\'_blank\'>http://v7.com/buy/joinshow.php?fid=8&id=4</A>');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('sort_layout','1,75,5#2,71,4,65#54,3#','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Info_ReportDB','�Ƿ���Ϣ\r\n�����Ϣ\r\n������Ϣ','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('order_send_mail','1','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Info_index_cache','','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Info_list_cache','','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Info_TopMoney','20','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Info_TopDay','15','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Info_TopNum','8','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('order_send_msg','1','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('UpdatePostTime','1','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('showNoPassComment','0','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Info_webOpen','1','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Info_ShowNoYz','1','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Info_TopColor','#FF0000','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('module_id','34','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Info_HYpost','0','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('PostInfoMoney','10','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Info_allowGuesSearch','1','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Index_listsortnum','20','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('module_pre','sell_','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Info_description','����л������߳�  ˮ���� ��ˮ','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Info_metakeywords','����л������߳�  ˮ���� ��ˮ ����','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('module_close','0','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Info_webname','����л������߳� ','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('86','1','��ϸ����','content','mediumtext','0','-1','ieeditsimp','600','250','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('159','2','�����۸�','hope_price','varchar','20','18','text','50','0','','','����','','1','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('160','2','�����˽�','hope_know','varchar','255','17','checkbox','0','0','����\r\n��Ʒ����ͺ�\r\n�۸�����\r\nԭ����\r\n�ܷ��ṩ��Ʒ\r\n��С������\r\n������\r\n��������\r\n���������������\r\n��װ��ʽ\r\n����/��ȫ��֤','����','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('158','2','��������','order_num','int','6','19','text','50','0','','','','','1','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('80','1','�ͺ�','shoptype','varchar','50','6','text','10','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('142','2','������Ϣ','content','mediumtext','0','15','textarea','500','70','','','','','0','0','0','0','','','','','0','<br><select name=\'autoSelect\' onchange=\"changeaddContent(this);\">\r\n<option value=\'\'>(���ô��֣���������д������æ��) </option>\r\n<option value=\'�ҶԹ�˾�Ĳ�Ʒ�ǳ�����Ȥ���ܷ�һЩ��ϸ���ϸ��Ҳο���\'>�ҶԹ�˾�Ĳ�Ʒ�ǳ�����Ȥ���ܷ�һЩ��ϸ���ϸ��Ҳο���</option> \r\n<option value=\'������һ�ݱȽ���ϸ�Ĳ�Ʒ���˵����лл��\'>������һ�ݱȽ���ϸ�Ĳ�Ʒ���˵����лл��</option> \r\n<option value=\'���ʹ�˾��Ʒ�Ƿ���Դ�������������ʲô��\'>���ʹ�˾��Ʒ�Ƿ���Դ�������������ʲô��</option> \r\n<option value=\'�ҹ�˾���⹺��˲�Ʒ���ɷ��ṩ�˲�Ʒ�ı��۵�����С������\'>�ҹ�˾���⹺��˲�Ʒ���ɷ��ṩ�˲�Ʒ�ı��۵�����С������</option> \r\n</select>\r\n<SCRIPT language=\"javascript\">\r\n            function changeaddContent(autoSelect){\r\n			 	if (autoSelect.selectedIndex !=0){			 		\r\n			 		document.getElementById(\"atc_content\").value = autoSelect[autoSelect.selectedIndex].value;\r\n					autoSelect.selectedIndex=0;\r\n			 	}\r\n				\r\n			 }\r\n	     </SCRIPT>');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('154','1','��С��','order_min','int','7','8','text','30','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('153','1','������λ','my_units','varchar','10','9','text','50','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('145','2','��ϵ�绰','ask_phone','varchar','20','8','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('144','2','��ϵ������','ask_username','varchar','20','9','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('146','2','��ϵ�ֻ�','ask_mobphone','varchar','15','7','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('147','2','��ϵ����','ask_email','varchar','50','6','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('148','2','��ϵQQ','ask_qq','varchar','11','5','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('155','1','��󹩻�','order_max','varchar','7','7','text','30','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('156','1','��������','send_day','varchar','30','5','select','0','0','3�����ڷ���\r\n3-7���ڷ���\r\n7-10���ڷ���\r\n10�����Ϸ���\r\n������','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('157','2','ѯ�۱���','ask_title','varchar','100','20','text','300','0','','','','','1','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('161','2','��ϣ��','hope_reply','varchar','25','14','time','0','0','','','֮ǰ�ظ�','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_module` VALUES ('2','0','ѯ�۵�ģ��','1','','','','0','0','a:4:{s:4:\"list\";s:12:\"joinlist.htm\";s:4:\"show\";s:12:\"joinshow.htm\";s:4:\"post\";s:8:\"join.htm\";s:6:\"search\";s:0:\"\";}');
INSERT INTO `liuyangnzhang_sell_module` VALUES ('1','0','��Ʒģ��','4','','','','1','0','');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('1','13','4','0','1','0','http://image2.suning.cn/content/catentries/00000000010138/000000000101384093/fullimage/000000000101384093_1f.jpg','');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('2','14','4','0','1','0','http://www.22shop.com/UploadFile/GoodsPIC/Droid-2-Global-1.jpg','');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('3','15','4','0','1','0','http://www.22shop.com/UploadFile/GoodsPIC/Apple%20iPad%202-2.jpg','');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('4','16','4','0','1','0','http://img1.gtimg.com/digi/pics/hv1/9/108/759/49381524.jpg','');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('5','17','4','0','1','0','http://img1.gtimg.com/digi/pics/hv1/211/106/759/49381216.jpg','');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('6','18','4','0','1','0','http://img1.gtimg.com/digi/pics/hv1/105/223/755/49150845.jpg','');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('7','19','4','0','1','0','http://img1.gtimg.com/digi/pics/hv1/227/197/756/49209362.jpg','');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('8','20','5','0','1','0','http://img.139shop.com/NewFile/201011/2010112914475993462.jpg','');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('9','21','6','0','1','0','http://img.139shop.com/NewFile/201012/201012111501981325.jpg','');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('10','22','7','0','1','0','http://2d.zol-img.com.cn/product/55_280x210/837/celzKnMh8Op96.jpg','');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('11','23','4','0','1','0','http://img1.gtimg.com/digi/pics/hv1/213/173/759/49398303.jpg','');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('12','24','4','0','1','0','http://img1.gtimg.com/digi/pics/hv1/87/160/759/49394862.jpg','');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('13','25','4','0','1','0','http://img1.gtimg.com/digi/pics/hv1/121/105/759/49380871.jpg','');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('14','26','4','0','1','0','http://img1.gtimg.com/digi/pics/hv1/223/102/759/49380208.jpg','');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('15','27','4','0','1','0','http://img1.gtimg.com/digi/pics/hv1/141/100/759/49379616.jpg','');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('16','28','4','0','1','0','http://img1.gtimg.com/digi/pics/hv1/170/192/758/49338080.jpg','');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('17','29','4','0','1','0','http://img1.gtimg.com/digi/pics/hv1/118/146/758/49326298.jpg','1');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('18','29','4','0','1','0','http://wwwimg.dospy.com/judge/market/meizu/2011-03-28/6d6cb0cc877903dcf1fa5dc50899111f.jpg','2');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('19','29','4','0','1','0','http://wwwimg.dospy.com/judge/market/meizu/2011-03-25/e520e2b1fca44408bc0b3dc6a1501f76.jpg','3');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('20','29','4','0','1','0','http://wwwimg.dospy.com/judge/market/meizu/2011-03-25/9adb04a6f95ad622acae5097182d2899.jpg','4');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('21','29','4','0','1','0','http://img.hexun.com/2011-03-24/128175252.jpg','5');
INSERT INTO `liuyangnzhang_sell_pic` VALUES ('22','29','4','0','1','0','http://img1.gtimg.com/digi/pics/hv1/119/146/758/49326299.jpg','6');
INSERT INTO `liuyangnzhang_template` VALUES ('5','ͷ���װ�','7','template/default/none.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('6','�ײ��װ�','8','template/default/none.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('23','�����б�ҳ(�����խ)','2','template/default/list.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('22','����ҳ(�����խ)','3','template/default/bencandy.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('24','��ҳ(�����խ)','1','template/default/index.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('20','����ҳ(������)','3','template/default/bencandy_tpl_2.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('21','����ҳ','9','template/default/alonepage.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('25','ר��ģ��һ(ͷ���Ҫ�װ�)','11','template/special/showsp2.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('26','ר��ģ���(ͷ���Ҫ�װ�)','11','template/special/special_sport.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('27','ר��ģ����(ͷ���Ҫ�װ�)','11','template/special/special_car.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('28','ר��ģ����(ͷ���Ҫ�װ�)','11','template/special/special_finance.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('29','ר��ģ����(ͷ���Ҫ�װ�)','11','template/special/sp1.htm','','0');
INSERT INTO `liuyangnzhang_upfile` VALUES ('1','0','0','0','1','1288596433','label','tmp-1_20101101151113_py1p5.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('2','0','0','0','1','1288596447','label','tmp-1_20101101151127_oithk.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('3','0','0','0','1','1288596463','label','tmp-1_20101101151143_i8ntn.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('4','0','0','0','1','1288596637','label','tmp-1_20101101151137_uz2b6.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('5','0','0','0','1','1288596679','label','tmp-1_20101101151119_r2bof.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('6','0','0','0','1','1288597685','label','tmp-1_20101101151105_uweny.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('7','0','0','0','1','1288597707','label','tmp-1_20101101151127_9qmry.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('8','0','0','0','1','1288597725','label','tmp-1_20101101151145_j8xam.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('9','0','0','0','1','1288597744','label','tmp-1_20101101151104_vhrhb.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('10','0','0','0','1','1288597763','label','tmp-1_20101101151123_ziop3.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('11','0','0','0','1','1288597783','label','tmp-1_20101101151143_rycrk.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('12','0','0','0','1','1288597808','label','tmp-1_20101101151108_c1twt.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('13','0','0','0','1','1288597823','label','tmp-1_20101101151123_nk0jo.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('14','0','0','0','1','1288598456','label','tmp-1_20101101161156_ltkko.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('15','0','0','0','1','1288599538','label','tmp-1_20101101161158_o5dl5.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('16','0','0','0','1','1288599937','label','tmp-1_20101101161137_qampc.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('17','0','0','0','1','1288600089','label','tmp-1_20101101161109_wqdn9.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('18','0','0','0','1','1288600236','label','tmp-1_20101101161136_h08af.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('19','0','0','0','1','1288600418','label','tmp-1_20101101161138_mbysz.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('20','0','0','0','1','1288600580','label','tmp-1_20101101161120_kchzq.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('21','0','0','0','1','1288617144','qb_showroom_/0','tmp-1_20101101211124_ewwhb.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('22','0','0','0','1','1288660211','homepage/logo/1/','tmp-1_20101102091111_ybuoq.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('23','0','0','0','27','1288661741','homepage/logo/1/','tmp-27_20101102091141_e1uuj.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('24','0','0','0','28','1288662180','homepage/logo/1/','tmp-28_20101102091100_6jeu7.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('25','0','0','0','29','1288662327','homepage/logo/1/','tmp-29_20101102091127_bcl6e.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('26','0','0','0','30','1288662567','homepage/logo/1/','tmp-30_20101102091127_ibn2r.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('27','0','0','0','31','1288662786','homepage/logo/1/','tmp-31_20101102091106_ijzou.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('28','0','0','0','32','1288662947','homepage/logo/1/','tmp-32_20101102091147_9pqhn.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('29','0','0','0','33','1288663129','homepage/logo/1/','tmp-33_20101102091149_ofqqf.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('30','0','0','0','34','1288663299','homepage/logo/1/','tmp-34_20101102101139_apfdl.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('31','0','0','0','35','1288663462','homepage/logo/1/','tmp-35_20101102101122_jvufs.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('32','0','0','0','36','1288663617','homepage/logo/1/','tmp-36_20101102101157_jugc3.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('33','0','0','0','37','1288663816','homepage/logo/1/','tmp-37_20101102101116_xmwaa.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('34','0','0','0','1','1288665085','label','tmp-1_20101102101125_x0cdr.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('35','0','0','0','27','1288666650','qb_hr_/0','tmp-27_20101102101130_flozo.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('36','0','0','0','27','1288666651','qb_hr_/0','tmp-27_20101102101131_m6scp.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('37','0','0','0','1','1288666857','qb_hr_/0','tmp-1_20101102111157_hlxdx.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('38','0','0','0','29','1288666891','qb_hr_/0','tmp-29_20101102111131_caqee.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('39','0','0','0','28','1288666995','qb_hr_/0','tmp-28_20101102111115_mn7ex.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('40','0','0','0','31','1288667175','qb_hr_/0','tmp-31_20101102111115_yrnp5.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('41','0','0','0','32','1288667364','qb_hr_/0','tmp-32_20101102111124_jaf0y.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('42','0','0','0','1','1314155854','qb_news_/3','tmp-1_20110824110834_Mg==.jpg','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('43','0','0','0','1','1314156540','qb_news_/2','tmp-1_20110824110800_MiVCOCVCMSVCMSVCRQ==.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('44','0','0','0','1','1314173918','friendlink','tmp-1_20110824160838_MQ==.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('45','0','0','0','1','1314174154','example','tmp-1_20110824160834_Mg==.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('46','0','0','0','1','1314174192','example','tmp-1_20110824160812_Mw==.gif','1','1');
INSERT INTO `liuyangnzhang_upfile` VALUES ('47','0','0','0','1','1314174865','example','tmp-1_20110824160825_NA==.gif','1','1');
INSERT INTO `liuyangnzhang_yzimg` VALUES ('ij0hlxom','2xpB','1381567486');
