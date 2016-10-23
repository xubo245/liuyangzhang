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


INSERT INTO `liuyangnzhang_admin_menu` VALUES ('12','0','内容管理','','','0','99','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('83','0','标签设置','','','0','100','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('84','83','新闻中心','../news/index.php?jobs=show','','0','18','3','1');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('85','83','产品中心','index.php?lfj=module_admin&dirname=sell&file=center&job=label','','0','17','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('87','0','评论管理','','','0','7','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('88','87','产品评论','index.php?lfj=module_admin&dirname=sell&file=comment&job=list','','0','99','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('112','111','新闻分类','index.php?lfj=module_admin&dirname=news&file=sort&job=listsort&type=all','','0','-1','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('111','0','分类管理','','','0','88','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('75','12','新闻资讯','index.php?lfj=module_admin&dirname=news&file=list&job=list','','0','-1','3','1');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('144','12','成功案例','index.php?lfj=examples&job=list','','0','0','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('145','0','功能菜单','','','0','0','-3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('119','12','职位管理','index.php?lfj=module_admin&dirname=hr&file=list&job=list','','0','89','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('120','12','求职简历','index.php?lfj=module_admin&dirname=hr&file=joinlist&job=list','','0','88','3','1');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('117','12','产品管理','index.php?lfj=module_admin&dirname=sell&file=list&job=list','','0','99','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('118','12','意见反馈','index.php?lfj=module_admin&dirname=form&file=form_module&file=form_content&job=list&mid=1','','0','98','3','1');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('130','111','产品分类','index.php?lfj=module_admin&dirname=sell&file=sort&job=listsort','','0','99','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('102','83','网站主页','../index.php?&ch=1&chtype=0&jobs=show','','0','19','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('143','87','新闻评论','index.php?lfj=module_admin&dirname=news&file=comment&job=list','','0','69','3','0');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('103','83','人才招聘','index.php?lfj=module_admin&dirname=hr&file=center&job=label','','0','14','3','1');
INSERT INTO `liuyangnzhang_admin_menu` VALUES ('132','111','职位分类','index.php?lfj=module_admin&dirname=hr&file=sort&job=listsort&yellow=0','','0','89','3','0');
INSERT INTO `liuyangnzhang_alonepage` VALUES ('1','0','公司简介','公司简介','1377933924','0','','','','','','introduce.htm','','','','&nbsp; &nbsp;创建于90年代初期，从一个小型作坊式生产起步，经过长期的努力和不断地完善，使现在我们的产品远销省内外，如江西萍乡、上栗、湖南长株潭等地大中小型企业，并得到良好的评价，产品从开始的单一发展到现在的系列产品。','304','0','0');
INSERT INTO `liuyangnzhang_alonepage` VALUES ('2','0','联系我们','联系我们','1314175561','0','','','','template/default/contact.htm','','contact.htm','','','','','177','0','0');
INSERT INTO `liuyangnzhang_area` VALUES ('1','0','北京市','1','18','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `liuyangnzhang_area` VALUES ('2','0','上海市','1','19','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `liuyangnzhang_area` VALUES ('3','0','天津市','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('4','0','重庆市','1','40','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('5','0','河北省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('6','0','山西省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('7','0','内蒙古自治区','1','12','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('8','0','辽宁省','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('9','0','吉林省','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('10','0','黑龙江省','1','13','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('11','0','江苏省','1','13','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('12','0','浙江省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('13','0','安徽省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('14','0','福建省','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('15','0','江西省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('16','0','山东省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('17','0','河南省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('18','0','湖北省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('19','0','湖南省','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('20','0','广东省','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('21','0','广西壮族自治区','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('22','0','海南省','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('23','0','四川省','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('24','0','贵州省','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('25','0','云南省','1','16','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('26','0','西藏自治区','1','7','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('27','0','陕西省','1','10','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('28','0','甘肃省','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('29','0','青海省','1','8','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('30','0','宁夏回族自治区','1','5','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('31','0','新疆维吾尔自治区','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('32','0','台湾省','1','25','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('33','0','香港特别行政区','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('34','0','澳门特别行政区','1','5','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('35','1','东城区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('36','1','西城区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('37','1','崇文区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('38','1','宣武区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('39','1','朝阳区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('40','1','丰台区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('41','1','石景山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('42','1','海淀区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('43','1','门头沟区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('44','1','房山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('45','1','通州区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('46','1','顺义区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('47','1','昌平区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('48','1','大兴区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('49','1','怀柔区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('50','1','平谷区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('51','1','密云县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('52','1','延庆县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('53','2','黄浦区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('54','2','卢湾区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('55','2','徐汇区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('56','2','长宁区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('57','2','静安区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('58','2','普陀区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('59','2','闸北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('60','2','虹口区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('61','2','杨浦区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('62','2','闵行区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('63','2','宝山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('64','2','嘉定区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('65','2','浦东新区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('66','2','金山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('67','2','松江区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('68','2','青浦区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('69','2','南汇区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('70','2','奉贤区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('71','2','崇明县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('72','3','和平区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('73','3','河东区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('74','3','河西区','2','0','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `liuyangnzhang_area` VALUES ('75','3','南开区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('76','3','河北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('77','3','红桥区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('78','3','塘沽区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('79','3','汉沽区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('80','3','大港区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('81','3','东丽区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('82','3','西青区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('83','3','津南区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('84','3','北辰区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('85','3','武清区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('86','3','宝坻区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('87','3','宁河县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('88','3','静海县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('89','3','蓟县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('90','4','万州区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('91','4','涪陵区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('92','4','渝中区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('93','4','大渡口区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('94','4','江北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('95','4','沙坪坝区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('96','4','九龙坡区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('97','4','南岸区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('98','4','北碚区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('99','4','万盛区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('100','4','双桥区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('101','4','渝北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('102','4','巴南区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('103','4','黔江区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('104','4','长寿区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('105','4','綦江县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('106','4','潼南县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('107','4','铜梁县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('108','4','大足县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('109','4','荣昌县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('110','4','璧山县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('111','4','梁平县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('112','4','城口县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('113','4','丰都县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('114','4','垫江县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('115','4','武隆县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('116','4','忠县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('117','4','开县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('118','4','云阳县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('119','4','奉节县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('120','4','巫山县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('121','4','巫溪县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('122','4','石柱土家族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('123','4','秀山土家族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('124','4','酉阳土家族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('125','4','彭水苗族土家族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('126','4','江津市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('127','4','合川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('128','4','永川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('129','4','南川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('130','5','石家庄市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('131','5','唐山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('132','5','秦皇岛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('133','5','邯郸市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('134','5','邢台市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('135','5','保定市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('136','5','张家口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('137','5','承德市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('138','5','沧州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('139','5','廊坊市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('140','5','衡水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('141','6','太原市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('142','6','大同市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('143','6','阳泉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('144','6','长治市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('145','6','晋城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('146','6','朔州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('147','6','晋中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('148','6','运城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('149','6','忻州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('150','6','临汾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('151','6','吕梁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('152','7','呼和浩特市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('153','7','包头市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('154','7','乌海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('155','7','赤峰市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('156','7','通辽市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('157','7','鄂尔多斯市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('158','7','呼伦贝尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('159','7','巴彦淖尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('160','7','乌兰察布市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('161','7','兴安盟','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('162','7','锡林郭勒盟','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('163','7','阿拉善盟','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('164','8','沈阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('165','8','大连市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('166','8','鞍山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('167','8','抚顺市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('168','8','本溪市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('169','8','丹东市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('170','8','锦州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('171','8','营口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('172','8','阜新市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('173','8','辽阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('174','8','盘锦市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('175','8','铁岭市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('176','8','朝阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('177','8','葫芦岛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('178','9','长春市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('179','9','吉林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('180','9','四平市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('181','9','辽源市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('182','9','通化市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('183','9','白山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('184','9','松原市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('185','9','白城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('186','9','延边朝鲜族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('187','10','哈尔滨市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('188','10','齐齐哈尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('189','10','鸡西市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('190','10','鹤岗市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('191','10','双鸭山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('192','10','大庆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('193','10','伊春市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('194','10','佳木斯市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('195','10','七台河市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('196','10','牡丹江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('197','10','黑河市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('198','10','绥化市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('199','10','大兴安岭地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('200','11','南京市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('201','11','无锡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('202','11','徐州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('203','11','常州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('204','11','苏州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('205','11','南通市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('206','11','连云港市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('207','11','淮安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('208','11','盐城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('209','11','扬州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('210','11','镇江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('211','11','泰州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('212','11','宿迁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('213','12','杭州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('214','12','宁波市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('215','12','温州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('216','12','嘉兴市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('217','12','湖州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('218','12','绍兴市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('219','12','金华市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('220','12','衢州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('221','12','舟山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('222','12','台州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('223','12','丽水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('224','13','合肥市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('225','13','芜湖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('226','13','蚌埠市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('227','13','淮南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('228','13','马鞍山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('229','13','淮北市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('230','13','铜陵市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('231','13','安庆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('232','13','黄山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('233','13','滁州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('234','13','阜阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('235','13','宿州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('236','13','巢湖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('237','13','六安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('238','13','亳州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('239','13','池州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('240','13','宣城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('241','14','福州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('242','14','厦门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('243','14','莆田市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('244','14','三明市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('245','14','泉州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('246','14','漳州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('247','14','南平市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('248','14','龙岩市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('249','14','宁德市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('250','15','南昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('251','15','景德镇市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('252','15','萍乡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('253','15','九江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('254','15','新余市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('255','15','鹰潭市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('256','15','赣州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('257','15','吉安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('258','15','宜春市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('259','15','抚州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('260','15','上饶市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('261','16','济南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('262','16','青岛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('263','16','淄博市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('264','16','枣庄市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('265','16','东营市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('266','16','烟台市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('267','16','潍坊市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('268','16','济宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('269','16','泰安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('270','16','威海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('271','16','日照市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('272','16','莱芜市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('273','16','临沂市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('274','16','德州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('275','16','聊城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('276','16','滨州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('277','16','荷泽市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('278','17','郑州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('279','17','开封市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('280','17','洛阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('281','17','平顶山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('282','17','安阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('283','17','鹤壁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('284','17','新乡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('285','17','焦作市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('286','17','濮阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('287','17','许昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('288','17','漯河市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('289','17','三门峡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('290','17','南阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('291','17','商丘市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('292','17','信阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('293','17','周口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('294','17','驻马店市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('295','18','武汉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('296','18','黄石市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('297','18','十堰市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('298','18','宜昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('299','18','襄樊市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('300','18','鄂州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('301','18','荆门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('302','18','孝感市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('303','18','荆州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('304','18','黄冈市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('305','18','咸宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('306','18','随州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('307','18','恩施土家族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('308','18','仙桃市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('309','18','潜江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('310','18','天门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('311','18','神农架林区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('312','19','长沙市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('313','19','株洲市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('314','19','湘潭市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('315','19','衡阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('316','19','邵阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('317','19','岳阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('318','19','常德市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('319','19','张家界市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('320','19','益阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('321','19','郴州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('322','19','永州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('323','19','怀化市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('324','19','娄底市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('325','19','湘西土家族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('326','20','广州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('327','20','韶关市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('328','20','深圳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('329','20','珠海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('330','20','汕头市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('331','20','佛山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('332','20','江门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('333','20','湛江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('334','20','茂名市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('335','20','肇庆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('336','20','惠州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('337','20','梅州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('338','20','汕尾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('339','20','河源市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('340','20','阳江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('341','20','清远市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('342','20','东莞市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('343','20','中山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('344','20','潮州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('345','20','揭阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('346','20','云浮市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('347','21','南宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('348','21','柳州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('349','21','桂林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('350','21','梧州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('351','21','北海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('352','21','防城港市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('353','21','钦州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('354','21','贵港市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('355','21','玉林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('356','21','百色市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('357','21','贺州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('358','21','河池市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('359','21','来宾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('360','21','崇左市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('361','22','海口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('362','22','三亚市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('363','22','五指山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('364','22','琼海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('365','22','儋州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('366','22','文昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('367','22','万宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('368','22','东方市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('369','22','定安县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('370','22','屯昌县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('371','22','澄迈县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('372','22','临高县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('373','22','白沙黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('374','22','昌江黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('375','22','乐东黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('376','22','陵水黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('377','22','保亭黎族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('378','22','琼中黎族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('379','22','西沙群岛','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('380','22','南沙群岛','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('381','22','中沙群岛的岛礁及其海域','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('382','23','成都市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('383','23','自贡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('384','23','攀枝花市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('385','23','泸州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('386','23','德阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('387','23','绵阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('388','23','广元市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('389','23','遂宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('390','23','内江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('391','23','乐山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('392','23','南充市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('393','23','眉山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('394','23','宜宾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('395','23','广安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('396','23','达州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('397','23','雅安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('398','23','巴中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('399','23','资阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('400','23','阿坝藏族羌族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('401','23','甘孜藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('402','23','凉山彝族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('403','24','贵阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('404','24','六盘水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('405','24','遵义市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('406','24','安顺市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('407','24','铜仁地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('408','24','黔西南布依族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('409','24','毕节地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('410','24','黔东南苗族侗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('411','24','黔南布依族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('412','25','昆明市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('413','25','曲靖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('414','25','玉溪市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('415','25','保山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('416','25','昭通市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('417','25','丽江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('418','25','思茅市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('419','25','临沧市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('420','25','楚雄彝族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('421','25','红河哈尼族彝族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('422','25','文山壮族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('423','25','西双版纳傣族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('424','25','大理白族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('425','25','德宏傣族景颇族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('426','25','怒江傈僳族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('427','25','迪庆藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('428','26','拉萨市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('429','26','昌都地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('430','26','山南地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('431','26','日喀则地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('432','26','那曲地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('433','26','阿里地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('434','26','林芝地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('435','27','西安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('436','27','铜川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('437','27','宝鸡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('438','27','咸阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('439','27','渭南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('440','27','延安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('441','27','汉中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('442','27','榆林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('443','27','安康市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('444','27','商洛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('445','28','兰州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('446','28','嘉峪关市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('447','28','金昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('448','28','白银市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('449','28','天水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('450','28','武威市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('451','28','张掖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('452','28','平凉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('453','28','酒泉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('454','28','庆阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('455','28','定西市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('456','28','陇南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('457','28','临夏回族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('458','28','甘南藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('459','29','西宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('460','29','海东地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('461','29','海北藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('462','29','黄南藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('463','29','海南藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('464','29','果洛藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('465','29','玉树藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('466','29','海西蒙古族藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('467','30','银川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('468','30','石嘴山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('469','30','吴忠市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('470','30','固原市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('471','30','中卫市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('472','31','乌鲁木齐市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('473','31','克拉玛依市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('474','31','吐鲁番地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('475','31','哈密地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('476','31','昌吉回族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('477','31','博尔塔拉蒙古自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('478','31','巴音郭楞蒙古自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('479','31','阿克苏地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('480','31','克孜勒苏柯尔克孜自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('481','31','喀什地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('482','31','和田地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('483','31','伊犁哈萨克自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('484','31','塔城地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('485','31','阿勒泰地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('486','31','石河子市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('487','31','阿拉尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('488','31','图木舒克市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('489','31','五家渠市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('490','32','台北市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('491','32','高雄市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('492','32','基隆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('493','32','新竹市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('494','32','台中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('495','32','嘉义市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('496','32','台南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('497','32','台北县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('498','32','桃园县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('499','32','新竹县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('500','32','苗栗县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('501','32','台中县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('502','32','彰化县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('503','32','南投县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('504','32','云林县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('505','32','嘉义县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('506','32','台南县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('507','32','高雄县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('508','32','屏东县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('509','32','宜兰县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('510','32','花莲县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('511','32','台东县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('512','32','澎湖县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('513','32','金门县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('514','32','连江县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('515','33','中西区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('516','33','东区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('517','33','南区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('518','33','湾仔区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('519','33','九龙城区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('520','33','观塘区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('521','33','深水埗区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('522','33','黄大仙区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('523','33','油尖旺区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('524','33','离岛区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('525','33','葵青区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('526','33','北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('527','33','西贡区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('528','33','沙田区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('529','33','大埔区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('530','33','荃湾区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('531','33','屯门区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('532','33','元朗区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('533','34','澳门市花地玛堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('534','34','澳门市圣安多尼堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('535','34','澳门市大堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('536','34','澳门市望德堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_area` VALUES ('537','34','澳门市风顺堂区','2','0','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
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
INSERT INTO `liuyangnzhang_config` VALUES ('PostNotice','<font face=SimSun>\n<p><font face=SimSun>1、如果是转载内容，请务必填写稿件来源网址及出处。<br />2、所引起的版权纠纷与法律责任由发布者承担。</font></p></font>','');
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
INSERT INTO `liuyangnzhang_config` VALUES ('ArticleHeart','欠扁|1.gif\n支持|2.gif\n很棒|3.gif\n找骂|4.gif\n搞笑|5.gif\n软文|6.gif\n不解|7.gif\n吃惊|8.gif','');
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
INSERT INTO `liuyangnzhang_config` VALUES ('memberNotice','欢迎大家踊跃投稿,投稿可得积分奖励!!','');
INSERT INTO `liuyangnzhang_config` VALUES ('AutoCutFace','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('yzImgAdminLogin','0','');
INSERT INTO `liuyangnzhang_config` VALUES ('companyTrade','机械及行业设备\r\n普通机械制造\r\n通用零部件\r\n五金配件\r\n金属工具\r\n电动工具\r\n电子元件\r\n电子器件\r\n照明及照明器具\r\n安全防护设备\r\n包装\r\n造纸及纸制品\r\n电机、电工电器\r\n电工器材\r\n通用仪器仪表\r\n专用仪器仪表\r\n交通运输设备、零部件\r\n办公、文教用品\r\n数码、电脑及网络配件\r\n日常家居用品\r\n木材、木制品\r\n家具\r\n家用电器\r\n礼品、工艺美术品\r\n食品、饮料\r\n通信产品\r\n玩具\r\n印刷设备\r\n运动、休闲、保健用品\r\n鞋、帽\r\n服装\r\n日用化学品\r\n农用化学品\r\n胶粘剂\r\n染料、颜料、涂料和油墨\r\n催化剂和助剂\r\n库存精细化学品\r\n食品和饲料添加剂\r\n塑料\r\n橡胶制品\r\n环保、环保设备\r\n建筑、建材\r\n能源\r\n粮油、农制品\r\n金属\r\n医药、保健及医疗设备\r\n纺织\r\n皮革\r\n煤焦化产品\r\n日常服务\r\n广告服务\r\n教育培训\r\n认证\r\n创意设计\r\n物流服务\r\n进出口代理\r\n维修及安装服务\r\n广告、展览器材\r\n专业录音、放音设备\r\n光学摄影器材\r\n编辑制作设备\r\n播出、前端设备\r\n建筑、装饰业\r\n房地产\r\n安装工程\r\n邮电通信\r\n事务所、公证\r\n卫生、体育、社会、福利\r\n公共服务业\r\n金融、保险\r\n实业公司、商业贸易\r\n高新技术开发区\r\n卡类市场','');
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
INSERT INTO `liuyangnzhang_config` VALUES ('close_why','网站维护当中,\r\n暂停访问.','');
INSERT INTO `liuyangnzhang_config` VALUES ('web_open','1','');
INSERT INTO `liuyangnzhang_config` VALUES ('MoneyDW','个','');
INSERT INTO `liuyangnzhang_config` VALUES ('MoneyName','积分','');
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
INSERT INTO `liuyangnzhang_config` VALUES ('guide_word','网站首页|/|0||51|index\r\n公司简介|/do/alonepage.php?id=1|0||9|page1\r\n产品中心|/sell/|0||10|sell\r\n新闻中心|/news/|0||11|news\r\n企业招聘|/hr/|0||52|hr\r\n意见反馈|/form/form.php?mid=1|0||13|fom1\r\n成功案例|/do/examples.php|0||53|examples\r\n联系我们|/do/alonepage.php?id=2|0||14|page2','');
INSERT INTO `liuyangnzhang_config` VALUES ('UseMoneyType','cms','');
INSERT INTO `liuyangnzhang_config` VALUES ('description','浏阳市花江彩瓦厂 ','');
INSERT INTO `liuyangnzhang_config` VALUES ('metakeywords','浏阳市花江彩瓦厂   水泥瓦 胶水 彩瓦','');
INSERT INTO `liuyangnzhang_config` VALUES ('webname','浏阳市花江彩瓦厂 ','');
INSERT INTO `liuyangnzhang_crontab` VALUES ('2','备份数据库','0','0300','0','1292489459','inc/crontab/mysqlbak.php','','1');
INSERT INTO `liuyangnzhang_crontab` VALUES ('3','清除CK编辑器多余的缩略图','0','0330','0','1292489510','inc/crontab/delete_ckeditor_tmp.php','','1');
INSERT INTO `liuyangnzhang_crontab` VALUES ('4','清空附件表','0','','1296504125','0','inc/crontab/delete_table_upfile.php','','1');
INSERT INTO `liuyangnzhang_example_sort` VALUES ('2','中小企业','0');
INSERT INTO `liuyangnzhang_example_sort` VALUES ('3','上市公司','0');
INSERT INTO `liuyangnzhang_form_config` VALUES ('module_close','0','');
INSERT INTO `liuyangnzhang_form_config` VALUES ('module_id','21','');
INSERT INTO `liuyangnzhang_form_config` VALUES ('Info_webOpen','1','');
INSERT INTO `liuyangnzhang_form_config` VALUES ('Info_webname','意见反馈','');
INSERT INTO `liuyangnzhang_form_config` VALUES ('module_pre','form_','');
INSERT INTO `liuyangnzhang_form_content` VALUES ('27','','3','2','1237260673','1237260673','1','admin','','1','192.168.0.99');
INSERT INTO `liuyangnzhang_form_content` VALUES ('25','','3','2','1237214289','1237214289','1','admin','','1','192.168.0.99');
INSERT INTO `liuyangnzhang_form_content` VALUES ('18','','3','0','1236936110','1236936110','1','admin','','0','192.168.0.99');
INSERT INTO `liuyangnzhang_form_content` VALUES ('28','','1','1','1377934368','1377934368','1','xuling','','0','223.240.83.203');
INSERT INTO `liuyangnzhang_form_content` VALUES ('29','','2','1','1378310869','1378310869','0','','','0','118.249.104.12');
INSERT INTO `liuyangnzhang_form_content_1` VALUES ('18','1','售后客服','','222223','54325@qq.com','133444444443');
INSERT INTO `liuyangnzhang_form_content_1` VALUES ('25','1','售后客服','hhhhhhhhhhhhhhhhhh','222223','54325@qq.com','13377777777');
INSERT INTO `liuyangnzhang_form_content_1` VALUES ('27','1','售后客服','192.168.0.99/55 all righ\nts reserved \n京ICP备05047353号 \nPowered by PHP168','222223','54325@qq.com','13377777777');
INSERT INTO `liuyangnzhang_form_content_1` VALUES ('28','1','其它','123123123','张学友1231','54325@qq.com','13399999999');
INSERT INTO `liuyangnzhang_form_content_2` VALUES ('29','0','可以加盟贵公司吗？','徐钦明','13467622046','');
INSERT INTO `liuyangnzhang_form_module` VALUES ('1','意见反馈','0','','a:3:{s:8:\"field_db\";a:5:{s:10:\"advicetype\";a:14:{s:5:\"title\";s:4:\"类别\";s:10:\"field_name\";s:10:\"advicetype\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:34:\"售前客服\r\n售后客服\r\n产品质量\r\n其它\";s:10:\"form_value\";s:4:\"其它\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:9:\"orderlist\";s:2:\"10\";s:9:\"allowview\";N;}s:8:\"mobphone\";a:15:{s:5:\"title\";s:8:\"你的电话\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:25;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:5:\"email\";a:14:{s:5:\"title\";s:8:\"你的邮箱\";s:10:\"field_name\";s:5:\"email\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:7:\"content\";a:14:{s:5:\"title\";s:4:\"详情\";s:10:\"field_name\";s:7:\"content\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";s:1:\"6\";s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:8:\"你的称呼\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:11:\"listshow_db\";a:2:{s:10:\"advicetype\";s:4:\"类别\";s:8:\"truename\";s:8:\"你的称呼\";}}','','0','','0','1','处理','3');
INSERT INTO `liuyangnzhang_form_module` VALUES ('2','在线报名','0','','a:2:{s:8:\"field_db\";a:4:{s:7:\"my_name\";a:14:{s:5:\"title\";s:4:\"姓名\";s:10:\"field_name\";s:7:\"my_name\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";i:10;s:9:\"allowview\";N;}s:8:\"my_phone\";a:14:{s:5:\"title\";s:8:\"联系电话\";s:10:\"field_name\";s:8:\"my_phone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";i:9;s:9:\"allowview\";N;}s:7:\"my_mail\";a:14:{s:5:\"title\";s:8:\"联系邮箱\";s:10:\"field_name\";s:7:\"my_mail\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"30\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:7:\"content\";a:13:{s:5:\"title\";s:8:\"附注信息\";s:10:\"field_name\";s:7:\"content\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:6:\"ieedit\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";i:-1;s:9:\"allowview\";N;}}s:7:\"is_html\";a:1:{s:7:\"content\";s:8:\"附注信息\";}}','','0','','0','0','审核','');
INSERT INTO `liuyangnzhang_form_reply` VALUES ('6','25','3','1237255555','1','admin','<p><u>yyyyyy</u></p>\r\n<p><u>yyyyyyyy</u></p><strong>\r\n<hr width=\"100%\" color=#98fb98 SIZE=1 />\r\n</strong>','192.168.0.99');
INSERT INTO `liuyangnzhang_form_reply` VALUES ('10','27','3','1239591974','1','admin','ffffffffffff ','192.168.0.99');
INSERT INTO `liuyangnzhang_friendlink` VALUES ('35','2','浏阳论坛','http://bbs.lyrb.com.cn','','','1','0','0','0','0','0','','1','0');
INSERT INTO `liuyangnzhang_friendlink_sort` VALUES ('2','友情链接','0');
INSERT INTO `liuyangnzhang_friendlink_sort` VALUES ('3','合作伙伴','0');
INSERT INTO `liuyangnzhang_group` VALUES ('2','1','游客','0','0','0','a:54:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:17:\"SearchArticleType\";s:1:\"1\";s:16:\"PostArticleYzImg\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"0\";s:17:\"SetArticleKeyword\";s:1:\"0\";s:20:\"AddArticleKeywordNum\";s:0:\"\";s:21:\"AddArticleCopyfromNum\";s:0:\"\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:13:\"PostNoDelCode\";s:1:\"0\";s:7:\"SetVote\";s:1:\"0\";s:11:\"SetHtmlName\";s:1:\"0\";s:16:\"PassContributeSP\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:2:\"10\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"0\";s:15:\"buy_postauto_yz\";s:1:\"0\";s:15:\"post_pingpai_yz\";s:1:\"0\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:0:\"\";s:12:\"post_buy_num\";s:0:\"\";s:13:\"post_news_num\";s:0:\"\";s:14:\"post_photo_num\";s:0:\"\";s:11:\"post_hr_num\";s:0:\"\";s:17:\"post_zhanghui_num\";s:0:\"\";s:12:\"post_ZLG_num\";s:0:\"\";s:16:\"post_pingpai_num\";s:0:\"\";s:19:\"post_baojiadian_num\";s:0:\"\";s:19:\"post_xunjiadian_num\";s:0:\"\";s:24:\"post_info_collection_num\";s:0:\"\";}','0','');
INSERT INTO `liuyangnzhang_group` VALUES ('3','1','超级管理员','0','0','0','a:26:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"1\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"1\";s:16:\"useHomepageStyle\";s:1:\"1\";s:21:\"view_buy_view_contact\";s:1:\"1\";s:13:\"post_sell_num\";s:3:\"999\";s:12:\"post_buy_num\";s:3:\"999\";s:13:\"post_news_num\";s:3:\"999\";s:14:\"post_photo_num\";s:3:\"999\";s:11:\"post_hr_num\";s:3:\"999\";s:17:\"post_zhanghui_num\";s:3:\"999\";s:12:\"post_ZLG_num\";s:3:\"999\";s:16:\"post_pingpai_num\";s:3:\"999\";s:19:\"post_baojiadian_num\";s:3:\"999\";s:19:\"post_xunjiadian_num\";s:3:\"999\";s:24:\"post_info_collection_num\";s:3:\"999\";s:18:\"allow_get_homepage\";s:1:\"1\";}','1','a:64:{s:13:\"center_config\";s:1:\"1\";s:8:\"user_reg\";s:1:\"1\";s:11:\"module_list\";s:1:\"1\";s:9:\"hack_list\";s:1:\"1\";s:9:\"blend_set\";s:1:\"1\";s:14:\"friendlink_mod\";s:1:\"1\";s:14:\"alonepage_list\";s:1:\"1\";s:9:\"mysql_out\";s:1:\"1\";s:10:\"mysql_into\";s:1:\"1\";s:9:\"mysql_del\";s:1:\"1\";s:9:\"mysql_sql\";s:1:\"1\";s:9:\"menu_list\";s:1:\"1\";s:14:\"adminmenu_list\";s:1:\"1\";s:15:\"membermenu_list\";s:1:\"1\";s:11:\"member_list\";s:1:\"1\";s:8:\"regfield\";s:1:\"1\";s:16:\"member_addmember\";s:1:\"1\";s:10:\"group_list\";s:1:\"1\";s:16:\"group_list_admin\";s:1:\"1\";s:9:\"group_add\";s:1:\"1\";s:10:\"alipay_set\";s:1:\"1\";s:15:\"attachment_list\";s:1:\"1\";s:9:\"area_list\";s:1:\"1\";s:10:\"upgrade_ol\";s:1:\"1\";s:12:\"message_send\";s:1:\"1\";s:9:\"mail_send\";s:1:\"1\";s:8:\"sms_send\";s:1:\"1\";s:8:\"cnzz_set\";s:1:\"1\";s:15:\"style_editstyle\";s:1:\"1\";s:13:\"template_list\";s:1:\"1\";s:15:\"logs_login_logs\";s:1:\"1\";s:18:\"logs_admin_do_logs\";s:1:\"1\";s:8:\"examples\";s:1:\"1\";s:5:\"login\";s:1:\"1\";s:7:\"crontab\";s:1:\"1\";s:25:\"Module_news_center_config\";s:1:\"1\";s:24:\"Module_news_center_label\";s:1:\"1\";s:21:\"Module_news_sort_post\";s:1:\"1\";s:16:\"Module_news_list\";s:1:\"1\";s:19:\"Module_news_comment\";s:1:\"1\";s:25:\"Module_news_sort_listsort\";s:1:\"1\";s:25:\"Module_sell_center_config\";s:1:\"1\";s:24:\"Module_sell_center_label\";s:1:\"1\";s:16:\"Module_sell_list\";s:1:\"1\";s:19:\"Module_sell_comment\";s:1:\"1\";s:16:\"Module_sell_sort\";s:1:\"1\";s:18:\"Module_sell_report\";s:1:\"1\";s:17:\"Module_sell_order\";s:1:\"1\";s:18:\"Module_sell_module\";s:1:\"1\";s:23:\"Module_hr_center_config\";s:1:\"1\";s:22:\"Module_hr_center_label\";s:1:\"1\";s:14:\"Module_hr_sort\";s:1:\"1\";s:19:\"Module_hr_list_list\";s:1:\"1\";s:18:\"Module_hr_joinlist\";s:1:\"1\";s:25:\"Module_hr_list_listmember\";s:1:\"1\";s:14:\"Module_hr_city\";s:1:\"1\";s:16:\"Module_hr_module\";s:1:\"1\";s:23:\"Module_guestbook_center\";s:1:\"1\";s:21:\"Module_guestbook_sort\";s:1:\"1\";s:24:\"Module_guestbook_content\";s:1:\"1\";s:18:\"Module_form_center\";s:1:\"1\";s:23:\"Module_form_form_module\";s:1:\"1\";s:24:\"Module_form_form_content\";s:1:\"1\";s:6:\"mymenu\";N;}');
INSERT INTO `liuyangnzhang_group` VALUES ('8','0','普通会员','0','50','0','a:55:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:17:\"SearchArticleType\";s:1:\"1\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"1\";s:17:\"SetArticleKeyword\";s:1:\"1\";s:20:\"AddArticleKeywordNum\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:21:\"AddArticleCopyfromNum\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:17:\"CollectArticleNum\";s:2:\"30\";s:15:\"CreatSpecialNum\";s:1:\"7\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:11:\"SetHtmlName\";s:1:\"0\";s:7:\"SetVote\";s:1:\"1\";s:16:\"PassContributeSP\";s:1:\"0\";s:13:\"PostNoDelCode\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"0\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:1:\"5\";s:12:\"post_buy_num\";s:1:\"5\";s:13:\"post_news_num\";s:1:\"5\";s:14:\"post_photo_num\";s:2:\"10\";s:11:\"post_hr_num\";s:1:\"5\";s:17:\"post_zhanghui_num\";s:1:\"5\";s:12:\"post_ZLG_num\";s:1:\"0\";s:16:\"post_pingpai_num\";s:1:\"5\";s:19:\"post_baojiadian_num\";s:1:\"5\";s:19:\"post_xunjiadian_num\";s:1:\"5\";s:24:\"post_info_collection_num\";s:2:\"30\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('module_id','18','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('viewNoPassGuestBook','0','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('yzImgGuestBook','1','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('module_pre','guestbook_','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('ifOpenGuestBook','1','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('module_close','0','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('Info_webOpen','1','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('groupPassPassGuestBook','3','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('Info_webname','留言本','');
INSERT INTO `liuyangnzhang_guestbook_config` VALUES ('GuestBookNum','20','');
INSERT INTO `liuyangnzhang_guestbook_sort` VALUES ('1','0','发展建议','0','1','0','0','','0','0','','','','','','','0','','','','0','','','','','0','b:0;','0','0','','','0');
INSERT INTO `liuyangnzhang_guestbook_sort` VALUES ('2','0','意见投诉','0','1','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('login','用户登录插件','0','','a:3:{s:10:\"systemType\";s:6:\"齐博CMS\";s:9:\"guestcode\";s:0:\"\";}','','','','index.php?lfj=hack&hack=login&job=list','','','','0','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('alipay_set','在线充值支付管理','0','','','','','','index.php?lfj=alipay&job=list','','other','电子商务管理','9','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('upgrade_ol','系统在线升级','0','','','','','','index.php?lfj=upgrade&job=get','','other','其它功能','4','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('mail_send','邮件群发','0','','','','','','index.php?lfj=mail&job=send','','other','消息/邮件群发','2','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('message_send','站内消息群发','0','','','','','','index.php?lfj=message&job=send','','other','消息/邮件群发','3','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('sms_send','手机短信群发','0','','','','','','index.php?lfj=sms&job=send','','other','消息/邮件群发','1','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('cnzz_set','CNZZ流量统计','0','','','','','','index.php?lfj=cnzz&job=ask','','other','站外功能','3','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('moneycard_make','点卡充值管理','0','','','','','','index.php?lfj=moneycard&job=make','','other','电子商务管理','7','','1');
INSERT INTO `liuyangnzhang_hack` VALUES ('logs_login_logs','后台登录日志','0','','','','','','index.php?lfj=logs&job=login_logs','','other','日志管理','2','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('logs_admin_do_logs','后台操作日志','0','','','','','','index.php?lfj=logs&job=admin_logs','','other','日志管理','1','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('area_list','地区管理','0','','','','','','index.php?lfj=area&job=list','','other','其它功能','5','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('crontab','定时任务','0','','','','','','index.php?lfj=crontab&job=list','','other','插件大全','0','','0');
INSERT INTO `liuyangnzhang_hack` VALUES ('examples','成功案例','0','','','','','','index.php?lfj=examples&job=list','','other','成功案例','1','','0');
INSERT INTO `liuyangnzhang_hr_apply` VALUES ('2','51','1','1','1284781155');
INSERT INTO `liuyangnzhang_hr_apply` VALUES ('3','50','1','1','1284781163');
INSERT INTO `liuyangnzhang_hr_apply` VALUES ('4','53','1','1','1287207635');
INSERT INTO `liuyangnzhang_hr_apply` VALUES ('5','57','1','1','1288768897');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('1','0','北京','1','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('2','0','上海','1','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('3','0','广州','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('4','0','深圳','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('5','0','杭州','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('6','0','苏州','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('7','0','重庆','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('8','0','天津','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('9','0','成都','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('10','0','长沙','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('11','0','长春','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('12','0','大连','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('13','0','东莞','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('14','0','福州','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('15','0','桂林','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('16','0','贵阳','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('17','0','哈尔滨','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('18','0','合肥','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('19','0','海口','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('20','0','呼和浩特','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('21','0','济南','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('22','0','昆明','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('23','0','兰州','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('24','0','拉萨','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('25','0','南京','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('26','0','南昌','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('27','0','南宁','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('28','0','宁波','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('29','0','青岛','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('30','0','沈阳','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('31','0','石家庄','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('32','0','太原','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('33','0','武汉','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('34','0','乌鲁木齐','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('35','0','无锡','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('36','0','厦门','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('37','0','西安','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('38','0','西宁','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('39','0','银川','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_city` VALUES ('40','0','郑州','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_collection` VALUES ('1','1','1','1286508117');
INSERT INTO `liuyangnzhang_hr_config` VALUES ('module_id','31','');
INSERT INTO `liuyangnzhang_hr_config` VALUES ('Info_webname','人才招聘','');
INSERT INTO `liuyangnzhang_hr_config` VALUES ('module_pre','hr_','');
INSERT INTO `liuyangnzhang_hr_config` VALUES ('Info_metakeywords','高薪招聘人才','');
INSERT INTO `liuyangnzhang_hr_config` VALUES ('Info_description','有能力你就来','');
INSERT INTO `liuyangnzhang_hr_config` VALUES ('module_close','0','');
INSERT INTO `liuyangnzhang_hr_content_2` VALUES ('1','1','1','英语','25','1','张三丰','157','1','茂名学院','1982','13365874577','55651225','fdsag@ac.cn','fsda@adf.cn','大学\r\n小学','没什么','牛人一个','跳远','流水','上海','2','随时','美术设计','qb_hr_/0/1_20101102111157_hlxdx.jpg','-1');
INSERT INTO `liuyangnzhang_hr_content_2` VALUES ('2','2','14','美术','26','2','何人珠','187','2','华南理工大学','2002','15874125478','52145687','vcdsfd@dsa.cn','fdsa@dfa.cn','小学:西联小学\r\n中学:星江中学\r\n大学:北京大学','第一年,网易主编\r\n第二年,搜狐缟工','我是一个牛人哦\r\n是不是呀','踢珠\r\n打饭','没有什么,更好的.','广州','2','随时','修理工','qb_hr_/0/14_20101009111006_gfye0.jpg','1');
INSERT INTO `liuyangnzhang_hr_content_2` VALUES ('3','3','29','市场','29','1','刘太锋','175','4','华南师范大学','1999','15878745874','58745457','fdsaf@dsa.cn','25saf@dsa.cn','2001-2004年,就读于华东大学\r\n1998-2001年,就读于华东小学','在网易工作过两年','吃苦耐劳\r\n拼搏精神','市场预测\r\n市场分析','踢皮球\r\n打网球','北京','2','随时','软件销售工程师','qb_hr_/0/29_20101102111131_caqee.jpg','3');
INSERT INTO `liuyangnzhang_hr_content_2` VALUES ('4','4','27','计算机','31','1','黄斌','185','1','中山大学','2001','15987777777','254114','fds@dsa.cn','0fds@dsa.cn','1998-2000华南附小\r\n2001-2004华南师范大学','2000年在搜狐工作过\r\n2005年在新浪工作过','吃苦耐劳\r\n拼搏精神','计算机高手\r\n游戏高手','打网球\r\n游泳','上海','2','一周内','软件工程师','qb_hr_/0/27_20101102101131_m6scp.gif','4');
INSERT INTO `liuyangnzhang_hr_content_2` VALUES ('5','5','28','市场','23','2','李丽','165','4','华南大学','2001','15371111111','5478445','fds@dsa.cn','fds@dsa.cn','2001-2004华南师范院大学\r\n1998-2000年,华南附小','曾在网易工作过3年客服\r\n曾在新浪工作过5年客服','吃苦耐劳\r\n拼搏精神','客服售后服务\r\n\r\n接待客人','打球\r\n游泳','广州','1','随时','客服代表','qb_hr_/0/28_20101102111115_mn7ex.jpg','2');
INSERT INTO `liuyangnzhang_hr_content_2` VALUES ('6','6','31','市场','28','2','张春芳','164','3','外语大学','1998','15355555555','456456546','fdsafsd@dsa.cn','0fdsafsd@dsa.cn','2001-2002年在师范院校就读\r\n1998-1999年在附小就读','去年在搜狐工作过\r\n前年在新浪工作过','吃苦耐劳\r\n拼搏精神','计算机,\r\n市场销售','打网球\r\n踢足球','深圳','1','随时','技术主管','qb_hr_/0/31_20101102111115_yrnp5.jpg','-1');
INSERT INTO `liuyangnzhang_hr_content_2` VALUES ('7','7','32','美工','23','1','何小珍','168','4','美术学院','2001','15987878787','5542354','fgds@dsa.cn','21fgds@dsa.cn','2001-2003年广州美术大学\r\n1998-1999年广州华中附小','去年工作在新浪\r\n前年工作在搜狐','吃苦耐劳\r\n拼搏精神','美工设计\r\n网页设计','游泳\r\n打球','广州','1','随时','网页设计师','qb_hr_/0/32_20101102111124_jaf0y.jpg','4');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('147','2','身高','height','int','4','14','text','50','0','','','厘米','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('150','2','毕业学校','alma_mater','varchar','30','11','text','100','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('86','2','专业','speciality','varchar','50','12','text','50','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('84','2','年龄','age','int','2','17','text','50','0','','','岁','','0','1','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('151','2','毕业年份','graduate_time','varchar','10','10','text','50','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('168','2','到岗日期','worktime','varchar','20','3','text','100','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('79','2','性别','sex','int','1','18','radio','50','0','1|男\r\n2|女','1','','','0','1','1','1','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('78','2','姓名','truename','varchar','20','20','text','100','0','','','','','0','1','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('149','2','学历','school_age','int','3','13','select','0','0','1|小学\r\n2|初中\r\n3|高中\r\n4|中专\r\n5|大专\r\n6|本科\r\n7|研究生\r\n9|博士','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('152','2','手机号码','mobphone','varchar','11','9','text','100','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('153','2','QQ号码','qq','varchar','11','8','text','100','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('154','2','常用邮箱','email','varchar','50','7','text','100','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('155','2','MSN帐号','msn','varchar','50','6','text','100','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('167','2','工作年限','workyear','int','2','4','select','0','0','0|应届毕业生\r\n1|一年\r\n2|两年\r\n3|三年以上','0','','','0','1','0','1','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('166','2','期望工作城市','lifeplace','varchar','50','5','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('158','2','教育背景','education','mediumtext','0','-1','textarea','400','100','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('159','2','工作经验','work','mediumtext','0','-2','textarea','500','100','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('160','2','自我评价','introduce','mediumtext','0','-3','textarea','500','100','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('161','2','技能特长','skill','mediumtext','0','-4','textarea','500','100','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('162','2','体育爱好','interest','mediumtext','0','-5','textarea','500','100','','','','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('164','1','详情','content','mediumtext','0','-1','textarea','500','120','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('170','1','招聘人数','nums','int','5','0','text','50','0','','','人','','0','0','0','0','','','','','1','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('171','1','工作经验要求','wageyear','int','1','0','select','0','0','1|一年以上\r\n2|两年以上\r\n3|三年以上','','','','0','1','1','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('172','1','性别要求','asksex','int','1','0','radio','0','0','1|男性\r\n2|女性','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('173','1','学历要求','schoo_age','int','2','0','select','0','0','1|小学以上\r\n2|中学以上\r\n3|中专以上\r\n4|高中以上\r\n5|大专以上\r\n6|本科以上\r\n7|硕士以上\r\n8|博士以上','','','','0','1','1','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('174','1','薪水待遇','wage','int','2','0','select','0','0','-1|面议\r\n1|800~1500元\r\n2|1500~2500元\r\n3|2500~3500元\r\n4|3500元以上','','','','0','1','1','1','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('175','1','工作城市','workplace','varchar','50','10','text','150','0','','','','','1','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('176','2','期望职位','hope_job','varchar','200','21','text','300','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('177','2','相片','facephoto','varchar','100','0','onepic','0','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('178','2','期望待遇','wage','int','2','10','select','0','0','-1|面议\r\n1|800~1500元\r\n2|1500~2500元\r\n3|2500~3500元\r\n4|3500元以上','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('179','1','截止日期','time_over','varchar','20','0','text','100','0','','','','','0','1','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_field` VALUES ('180','1','工作性质','nature','int','1','0','select','0','0','1|全职\r\n2|兼职\r\n3|其它','','','','0','1','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_hr_module` VALUES ('1','0','职位模型','0','','N;','','0','0','');
INSERT INTO `liuyangnzhang_hr_module` VALUES ('2','0','简历模型','0','','a:1:{s:9:\"moduleSet\";N;}','','1','0','a:6:{s:4:\"list\";s:14:\"personlist.htm\";s:10:\"admin_list\";s:0:\"\";s:11:\"member_list\";s:0:\"\";s:4:\"show\";s:14:\"personshow.htm\";s:4:\"post\";s:10:\"person.htm\";s:6:\"search\";s:16:\"personsearch.htm\";}');
INSERT INTO `liuyangnzhang_hr_person` VALUES ('1','2','0','1314176263','1','admin','1','1','1286599134','127.0.0.1','2');
INSERT INTO `liuyangnzhang_hr_person` VALUES ('5','2','0','1288667067','28','test2','0','1','1288667652','127.0.0.1','3');
INSERT INTO `liuyangnzhang_hr_person` VALUES ('3','2','0','1288666893','29','test3','0','1','1288667652','127.0.0.1','1');
INSERT INTO `liuyangnzhang_hr_person` VALUES ('4','2','0','1288666734','27','test1','0','1','1288667650','127.0.0.1','2');
INSERT INTO `liuyangnzhang_hr_person` VALUES ('6','2','0','1288667240','31','test5','0','1','1288667653','127.0.0.1','4');
INSERT INTO `liuyangnzhang_hr_person` VALUES ('7','2','0','1288667419','32','test6','0','1','1288667654','127.0.0.1','3');
INSERT INTO `liuyangnzhang_jfabout` VALUES ('6','2','发表文章可得{$webdb[postArticleMoney]}个积分','只有审核后的文章才可得积分,没审核的文章不得积分.','0');
INSERT INTO `liuyangnzhang_jfabout` VALUES ('7','2','删除文章扣除{$webdb[deleteArticleMoney]}个积分','','0');
INSERT INTO `liuyangnzhang_jfabout` VALUES ('5','1','用户注册可得{$webdb[regmoney]}个积分','','0');
INSERT INTO `liuyangnzhang_jfabout` VALUES ('8','2','文章被设置为精华可得{$webdb[comArticleMoney]}个积分','','0');
INSERT INTO `liuyangnzhang_jfabout` VALUES ('9','1','每个点卡可兑换{$webdb[MoneyRatio]}个积分,点卡可以通过在线充值获得.','','0');
INSERT INTO `liuyangnzhang_jfsort` VALUES ('1','会员中心','0');
INSERT INTO `liuyangnzhang_jfsort` VALUES ('2','文章中心','0');
INSERT INTO `liuyangnzhang_label` VALUES ('1','','0','99','enterprise_hotline','code','0','<iframe src=\" http://m.weather.com.cn/m/pn7/weather.htm\" style=\"display:inline;margin-top:5px;\" height=\"22\" marginwidth=\"0\" marginheight=\"0\" hspace=\"0\" width=\"170\" vspace=\"0\" frameborder=\"0\" scrolling=\"no\"></iframe>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','xuling','1377933049','9','0','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('2','','0','99','enterprise_headatc','code','0','<a onclick=\"this.style.behavior=\'url(#default#homepage)\';this.setHomePage(\'http://www.qibosoft.com\');\" href=\"#\" class=\"home\">设为首页</a>\r\n<a href=\"javascript:javascript:window.external.AddFavorite(\'http://www.qibosoft.com\',\'齐博企业版\');\" class=\"fav\">加入收藏</a>\r\n<a href=\"http://www_qibosoft_com/form/form.php?mid=2\" class=\"help\">在线报名</a>\r\n<a href=\"http://www_qibosoft_com/guestbook/\" class=\"set\">访客留言</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314324703','9','0','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('3','','0','99','enterprise_menu','code','0','<li class=\"begin\"><a href=\"http://www_qibosoft_com\" class=\"ck\" onmouseover=\"SubOn(this)\">网站首页</a></li>\r\n<li><a href=\"http://www_qibosoft_com/introduce.htm\" onmouseover=\"SubOn(this)\">关于我们</a></li>\r\n<li><a href=\"#\" onmouseover=\"SubOn(this)\">产品中心</a></li>\r\n<li><a href=\"#\" onmouseover=\"SubOn(this)\">新闻中心</a></li>\r\n<li><a href=\"#\" onmouseover=\"SubOn(this)\">企业招聘</a></li>\r\n<li><a href=\"#\" onmouseover=\"SubOn(this)\">售后服务</a></li>\r\n<li><a href=\"#\" onmouseover=\"SubOn(this)\">联系我们</a></li>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302861114','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('4','','0','0','enterprise_indexslide','rollpic','0','a:7:{s:13:\"tplpart_1code\";s:0:\"\";s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"700\";s:6:\"height\";s:3:\"250\";s:6:\"picurl\";a:3:{i:1;s:49:\"http://www_qibosoft_com/images/enterprise/sl2.jpg\";i:2;s:49:\"http://www_qibosoft_com/images/enterprise/sl1.gif\";i:3;s:49:\"http://www_qibosoft_com/images/enterprise/sl3.jpg\";}s:7:\"piclink\";a:3:{i:1;s:2:\"#1\";i:2;s:2:\"#2\";i:3;s:2:\"#3\";}s:6:\"picalt\";a:3:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','xuling','1377968794','9','0','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('5','','0','0','enterprise_indexh1','code','0','<div class=\"tag\">新闻栏目</div>\r\n<div class=\"more\"><a href=\"#\" target=\"_blank\" style=\"color:#ffffff;\">更多&gt;&gt;</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314326223','9','0','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('6','','0','0','enterprise_indext1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:98:\"<div class=\"list\"><A HREF=\"$url\" target=\'_blank\' >$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:91:\" SELECT A.* FROM liuyangnzhang_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('7','','0','0','enterprise_indexh2','code','0','<div class=\"tag\">产品列表</div>\r\n<div class=\"more\"><a href=\"./sell/list.php?fid=1\" target=\"_blank\">更多&gt;&gt;</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302847643','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('8','','0','0','enterprise_indext2','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:308:\"<dl class=\"list$i\">\r\n  <dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"120\" /></a></div></dt>\r\n  <dd>\r\n  	<div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n    <div class=\"c\">$content</div>\r\n    <div class=\"to\"><a href=\"$url\" target=\"_blank\">查看详情</a></div>\r\n  </dd>\r\n</dl>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:152:\"(SELECT A.*,B.* FROM liuyangnzhang_sell_content A LEFT JOIN liuyangnzhang_sell_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('9','','0','0','enterprise_indexad1','pic','0','a:4:{s:6:\"imgurl\";s:28:\"../images/enterprise/ad1.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"280\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','1','0','1','xuling','1377967646','9','0','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('10','','0','0','enterprise_indexh5','code','0','客服中心','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('11','','0','0','enterprise_indext5','code','0','<div class=\"ct1\">\r\n  <dl class=\"tel\"><dt>全市电话服务热线</dt><dd class=\"telnum\">0731-83822863</dd></dl>\r\n  <dl class=\"answer\"><dt class=\"h\">在线咨询</dt><dd>每天 9:00-22:00</dd></dl>\r\n  <dl class=\"send\"><dt class=\"h\">在线留言</dt><dd>收到留言 我们会第一时间联系您</dd></dl>\r\n</div>\r\n<div class=\"ct2\">\r\n  <div>销售热线：13507424308（张先生）</div>\r\n  <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  15084793958（徐小姐）</div>\r\n  <div>QQ客服：&nbsp;&nbsp;1075942410</div>\r\n  <div>联系邮箱：1075942410@qq.com</div>\r\n  <div class=\"img\">售前：\r\n     <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=1075942410&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:82172882:47\" alt=\"点击这里给我发消息\" /></a>\r\n     <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=1075942410&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:27781017:47\" alt=\"点击这里给我发消息\" /></a>\r\n  </div>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','xuling','1377967723','9','0','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('12','','0','0','enterprise_indexh3','code','0','<div class=\"tag\">媒体报道</div>\r\n<div class=\"more\"><a href=\"#\" target=\"_blank\">更多&gt;&gt;</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('13','','0','0','enterprise_indexh4','code','0','<div class=\"tag\">帮助中心</div>\r\n<div class=\"more\"><a href=\"#\" target=\"_blank\">更多&gt;&gt;</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('14','','0','0','enterprise_indext3','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:98:\"<div class=\"list\"><a href=\"$url\" target=\'_blank\' >$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:221:\"<dl>\r\n  <dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"90\" /></a></div></dt>\r\n  <dd>\r\n  	<div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n    <div class=\"c\">$content</div>\r\n  </dd>\r\n</dl>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_zh_content/zh_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:155:\" SELECT A.*,R.content FROM liuyangnzhang_news_content A LEFT JOIN liuyangnzhang_news_content_1 R ON A.id=R.id  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";s:168:\" SELECT A.*,R.content FROM liuyangnzhang_news_content A LEFT JOIN liuyangnzhang_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('15','','0','0','enterprise_indext4','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:98:\"<div class=\"list\"><a href=\"$url\" target=\'_blank\' >$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:221:\"<dl>\r\n  <dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"90\" /></a></div></dt>\r\n  <dd>\r\n  	<div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n    <div class=\"c\">$content</div>\r\n  </dd>\r\n</dl>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_zh_content/zh_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.posttime\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:160:\" SELECT A.*,R.content FROM liuyangnzhang_news_content A LEFT JOIN liuyangnzhang_news_content_1 R ON A.id=R.id  WHERE A.yz=1   ORDER BY A.posttime ASC LIMIT 0,6 \";s:4:\"sql2\";s:173:\" SELECT A.*,R.content FROM liuyangnzhang_news_content A LEFT JOIN liuyangnzhang_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1 ORDER BY A.posttime ASC LIMIT 0,1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314156610','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('16','','0','0','enterprise_indexh6','code','0','成功案例','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('17','','0','0','enterprise_indext6','code','0','<div>\r\n<a href=\"#\"><img src=http://www_qibosoft_com/images/enterprise/sad1.gif></a>\r\n<a href=\"#\"><img src=http://www_qibosoft_com/images/enterprise/sad2.gif></a>\r\n</div>\r\n<div>\r\n<a href=\"#\"><img src=http://www_qibosoft_com/images/enterprise/sad3.gif></a>\r\n<a href=\"#\"><img src=http://www_qibosoft_com/images/enterprise/sad4.gif></a>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('18','','0','0','enterprise_indexh7','code','0','<div class=\"tag\">合作伙伴</div>\r\n<div class=\"more\"><a href=\"do/friendlink.php\" target=\"_blank\">更多&gt;&gt;</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314176059','9','0','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('19','','0','0','enterprise_indexad2','pic','0','a:4:{s:6:\"imgurl\";s:28:\"../images/enterprise/ad2.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"280\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','1','0','1','xuling','1377967659','9','0','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('23','','0','0','enterprise_newsh1','code','0','新闻中心','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302760243','0','20','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('25','','0','0','enterprise_newsh2','code','0','最新报道','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('26','','0','0','enterprise_newst2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:218:\"<dl>\r\n  <dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"80\" /></a></div></dt>\r\n  <dd>\r\n  <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n    <div class=\"c\">$content</div>  </dd>\r\n</dl>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:185:\" SELECT A.*,R.content FROM liuyangnzhang_news_content A LEFT JOIN liuyangnzhang_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"50\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('27','','0','0','enterprise_newsbanner','pic','0','a:4:{s:6:\"imgurl\";s:36:\"../images/enterprise/news/banner.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314325018','2','20','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('28','','0','0','enterprise_newsh1','code','0','新闻栏目','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','20','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('29','','0','0','enterprise_newsh2','code','0','最新报道','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','20','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('30','','0','0','enterprise_newst2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:218:\"<dl>\r\n  <dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"80\" /></a></div></dt>\r\n  <dd>\r\n  <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n    <div class=\"c\">$content</div>  </dd>\r\n</dl>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:189:\" SELECT A.*,R.content FROM liuyangnzhang_news_content A LEFT JOIN liuyangnzhang_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.posttime DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"40\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302767006','2','20','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('31','','0','0','enterprise_newsbanner','pic','0','a:4:{s:6:\"imgurl\";s:36:\"../images/enterprise/news/banner.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314324906','3','20','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('32','','0','0','enterprise_newsh1','code','0','新闻栏目','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','20','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('33','','0','0','enterprise_newsh2','code','0','最新报道','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','20','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('34','','0','0','enterprise_newst2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:220:\"<dl>\r\n  <dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"80\" /></a></div></dt>\r\n  <dd>\r\n  <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n    <div class=\"c\">$content</div>  </dd>\r\n</dl>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:185:\" SELECT A.*,R.content FROM liuyangnzhang_news_content A LEFT JOIN liuyangnzhang_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"50\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302833182','3','20','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('35','','0','0','enterprise_newsbanner','pic','0','a:4:{s:6:\"imgurl\";s:36:\"../images/enterprise/sell/banner.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314324794','2','34','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('37','','0','0','enterprise_newsh1','code','0','产品栏目','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','34','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('38','','0','0','enterprise_newsh2','code','0','最新产品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','34','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('39','','0','0','enterprise_newst2','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:220:\"<dl>\r\n  <dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"80\" /></a></div></dt>\r\n  <dd>\r\n  <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n    <div class=\"c\">$content</div>  </dd>\r\n</dl>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"40\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:152:\"(SELECT A.*,B.* FROM liuyangnzhang_sell_content A LEFT JOIN liuyangnzhang_sell_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','34','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('40','','0','0','enterprise_introduce1','pic','0','a:4:{s:6:\"imgurl\";s:57:\"http://www_qibosoft_com/images/enterprise/news/banner.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314325505','9','0','1','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('41','','0','0','enterprise_introduce3','code','0','<div class=\"ct1\">\r\n  <dl class=\"tel\"><dt>全国电话服务热线</dt><dd class=\"telnum\">020-28319635</dd></dl>\r\n  <dl class=\"answer\"><dt class=\"h\">在线咨询</dt><dd>周一至周五 9:00-17:30</dd></dl>\r\n  <dl class=\"send\"><dt class=\"h\">在线留言</dt><dd>我们会第一时间联系您</dd></dl>\r\n</div>\r\n<div class=\"ct2\">\r\n  <div>销售热线：020-28319635</div>\r\n  <div>联系邮箱：admin@admin.com</div>\r\n  <div>技术支持：020-28319635</div>\r\n  <div class=\"img\">售前：\r\n     <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=27781017&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:27781017:47\" alt=\"点击这里给我发消息\" />27781017</a>\r\n  </div>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302858964','9','0','1','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('43','','0','0','enterprise_introduce4','code','0','合作伙伴','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','1','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('42','','0','0','enterprise_introduce2','code','0','客服中心','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','1','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('44','','0','0','enterprise_introduce5','code','0','<div>\r\n<a href=\"#\"><img src=\"http://www_qibosoft_com/images/enterprise/sad1.gif\" width=\"95\" height=\"35\"/></a>\r\n<a href=\"#\"><img src=\"http://www_qibosoft_com/images/enterprise/sad2.gif\" width=\"95\" height=\"35\"/></a>\r\n</div>\r\n<div>\r\n<a href=\"#\"><img src=\"http://www_qibosoft_com/images/enterprise/sad3.gif\" width=\"95\" height=\"35\"/></a>\r\n<a href=\"#\"><img src=\"http://www_qibosoft_com/images/enterprise/sad4.gif\" width=\"95\" height=\"35\"/></a>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302859622','9','0','1','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('45','','0','0','enterprise_introduce6','code','0','<h3>齐博软件介绍</h3>\r\n<p>\r\n齐博软件（原PHP168-V系列）主推四大产品，分别是齐博CMS系统、齐博地方生活门户系统、齐博分类信息系统、齐博B2B电子商务系统，官方长期专注于项目分析及技术解决方案，公司人员70%以上为技术，拥有中国专业的Web应用平台技术研发团队，拥有广泛的社会影响力，为国内应用最广泛的系统之一，也是中国南方PHP领域最大的开源系统提供商。\r\n</p>\r\n<h3>发展历程</h3>\r\n<p>\r\n因发展需要，于2010年12月1更名为齐博软件，自2003年10月V1.0版本面世至今，已形成面向广大站长的V系列，以“核心+模块+插件”架构体系，成为国内高性能、模块化的开源PHP系统。涉及政府电子政务、媒体新闻门户、大型企业信息化、站群系统、电子商务B2B及企业内部OA等海量数据高端互联网应用，已为三十余万用户提供了应用平台。\r\n</p>\r\n<h3>公司团队</h3>\r\n<p>\r\n我们拥有一支经验丰富的技术队伍，团队主要成员均来自搜狐、太平洋电脑、酷六网，FOXCONN（500强）等大型网络公司及集团公司。拥有一大批精通PHP、MySQL海量数据处理经验高端技术工程师，对政府电子政务、媒体门户、企业信息化、企业OA系统和行业电子商务B2B等解决方案有丰富的项目运作实施经验，以此满足客户从简单到复杂的应用需求。\r\n</p>\r\n<h3>核心理念</h3>\r\n<p>\r\n公司以\"坚持开源、不断创新\"为核心理念，经过七年的发展，在互联网网站内容管理方面积累了丰富经验，将致力于为广大用户提供最完善互联网解决方案及互联网相关咨询、培训和技术支持服务。\r\n</p>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','1','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('46','','0','0','enterprise_contact2','code','0','客服中心','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"97\";s:5:\"div_h\";s:2:\"28\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1303108077','9','0','2','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('47','','0','0','enterprise_contact3','code','0','<div class=\"ct1\">\r\n  <dl class=\"tel\"><dt>全市电话服务热线</dt><dd class=\"telnum\">0731-83822863</dd></dl>\r\n  <dl class=\"answer\"><dt class=\"h\">在线咨询</dt><dd>每天 9:00-22:00</dd></dl>\r\n  <dl class=\"send\"><dt class=\"h\">在线留言</dt><dd>收到留言 我们会第一时间联系您</dd></dl>\r\n</div>\r\n<div class=\"ct2\">\r\n  <div>销售热线：13507424308（张先生）</div>\r\n  <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  15084793958（徐小姐）</div>\r\n  <div>QQ客服：&nbsp;&nbsp;1075942410</div>\r\n  <div>联系邮箱：1075942410@qq.com</div>\r\n  <div class=\"img\">售前：\r\n     <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=1075942410&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:82172882:47\" alt=\"点击这里给我发消息\" /></a>\r\n     <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=1075942410&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:27781017:47\" alt=\"点击这里给我发消息\" /></a>\r\n  </div>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"199\";s:5:\"div_h\";s:3:\"228\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','xuling','1377934457','9','0','2','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('48','','0','0','enterprise_contact1','pic','0','a:4:{s:6:\"imgurl\";s:36:\"../images/enterprise/news/banner.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:3:\"893\";s:5:\"div_h\";s:3:\"202\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314339788','9','0','2','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('49','','0','0','enterprise_contact6','code','0','<div class=\"ct1\">\r\n  <dl class=\"tel\"><dt>全市电话服务热线</dt><dd class=\"telnum\">0731-83822863</dd></dl>\r\n  <dl class=\"answer\"><dt class=\"h\">在线咨询</dt><dd>每天 9:00-22:00</dd></dl>\r\n  <dl class=\"send\"><dt class=\"h\">在线留言</dt><dd>收到留言 我们会第一时间联系您</dd></dl>\r\n</div>\r\n<div class=\"ct2\">\r\n  <div>销售热线：13507424308（张先生）</div>\r\n  <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  15084793958（徐小姐）</div>\r\n  <div>QQ客服：&nbsp;&nbsp;1075942410</div>\r\n  <div>联系邮箱：1075942410@qq.com</div>\r\n  <div class=\"img\">售前：\r\n     <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=1075942410&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:82172882:47\" alt=\"点击这里给我发消息\" /></a>\r\n     <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=1075942410&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:27781017:47\" alt=\"点击这里给我发消息\" /></a>\r\n  </div>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','xuling','1377934404','9','0','2','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('50','','0','0','enterprise_hrbencandy1','pic','0','a:4:{s:6:\"imgurl\";s:34:\"../images/enterprise/hr/banner.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:3:\"989\";s:5:\"div_h\";s:3:\"204\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314326030','3','31','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('52','','0','0','enterprise_hrbencandy3','code','0','<div class=\"w\">全国服务热线</div>\r\n<div class=\"tel\">020-28319635</div>\r\n<div class=\"l\"><a href=\"#\">点击查看公司介绍</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"115\";s:5:\"div_h\";s:2:\"61\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1303186048','3','31','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('53','','0','0','enterprise_hrlist1','pic','0','a:4:{s:6:\"imgurl\";s:34:\"../images/enterprise/hr/banner.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:3:\"990\";s:5:\"div_h\";s:3:\"200\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314326049','2','31','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('66','','0','0','enterprise_examples','pic','0','a:4:{s:6:\"imgurl\";s:33:\"../images/enterprise/examples.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','13','0','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('55','','0','0','enterprise_hrlist3','code','0','<div class=\"w\">全国服务热线</div>\r\n<div class=\"tel\">020-28319635</div>\r\n<div class=\"l\"><a href=\"#\">点击查看公司介绍</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"135\";s:5:\"div_h\";s:2:\"63\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1303177263','2','31','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('56','','0','0','enterprise_form1','pic','0','a:4:{s:6:\"imgurl\";s:36:\"../images/enterprise/news/banner.gif\";s:7:\"imglink\";s:23:\"http://www.qobosoft.com\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:3:\"900\";s:5:\"div_h\";s:3:\"200\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314324822','5','21','5','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('57','','0','0','enterprise_form2','code','0','客服中心','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','5','21','5','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('58','','0','0','enterprise_form3','code','0','<div class=\"ct1\">\r\n  <dl class=\"tel\"><dt>全市电话服务热线</dt><dd class=\"telnum\">0731-83822863</dd></dl>\r\n  <dl class=\"answer\"><dt class=\"h\">在线咨询</dt><dd>每天 9:00-22:00</dd></dl>\r\n  <dl class=\"send\"><dt class=\"h\">在线留言</dt><dd>收到留言 我们会第一时间联系您</dd></dl>\r\n</div>\r\n<div class=\"ct2\">\r\n  <div>销售热线：13507424308（张先生）</div>\r\n  <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  15084793958（徐小姐）</div>\r\n  <div>QQ客服：&nbsp;&nbsp;1075942410</div>\r\n  <div>联系邮箱：1075942410@qq.com</div>\r\n  <div class=\"img\">售前：\r\n     <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=1075942410&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:82172882:47\" alt=\"点击这里给我发消息\" /></a>\r\n     <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=1075942410&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:27781017:47\" alt=\"点击这里给我发消息\" /></a>\r\n  </div>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','xuling','1377934314','5','21','5','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('59','','0','0','enterprise_sellbenbanner','pic','0','a:4:{s:6:\"imgurl\";s:36:\"../images/enterprise/sell/banner.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:3:\"205\";}','a:3:{s:5:\"div_w\";s:3:\"900\";s:5:\"div_h\";s:3:\"200\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1314325047','3','34','0','0','default');
INSERT INTO `liuyangnzhang_label` VALUES ('60','','0','0','enterprise_sellbenh1','code','0','产品分类','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','34','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('61','','0','0','enterprise_sellbenh2','code','0','最新产品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','34','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('62','','0','0','enterprise_sellbent2','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:220:\"<dl>\r\n  <dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"80\" /></a></div></dt>\r\n  <dd>\r\n  <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n    <div class=\"c\">$content</div>  </dd>\r\n</dl>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"40\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:152:\"(SELECT A.*,B.* FROM liuyangnzhang_sell_content A LEFT JOIN liuyangnzhang_sell_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','34','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('63','','0','0','enterprise_sellbent3','code','0','<div style=\"font-size:18px;color:red\">\r\n  <div>\r\n    <div>\r\n      <div align=\"center\"><br /><br /><br /><br />掌柜提示：<br />\r\n          <br />\r\n        <br />\r\n        购买多件发同一个地址的 <br />\r\n        请务必使用购物车。<br />\r\n        运费模板是自动按件数累加邮费，并非实际邮费！<br />\r\n        使用购物车拍下后，我们客服会按实际邮费修改！</div>\r\n      <br />\r\n      <br />\r\n    </div>\r\n  </div>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1303359069','3','34','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('64','','0','0','enterprise_form3','code','0','<div>\r\n<a href=\"#\"><img src=\"http://www_qibosoft_com/images/enterprise/sad1.gif\" width=\"95\" height=\"35\"/></a>\r\n<a href=\"#\"><img src=\"http://www_qibosoft_com/images/enterprise/sad2.gif\" width=\"95\" height=\"35\"/></a>\r\n</div>\r\n<div>\r\n<a href=\"#\"><img src=\"http://www_qibosoft_com/images/enterprise/sad3.gif\" width=\"95\" height=\"35\"/></a>\r\n<a href=\"#\"><img src=\"http://www_qibosoft_com/images/enterprise/sad4.gif\" width=\"95\" height=\"35\"/></a>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','13','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_label` VALUES ('65','','0','0','enterprise_form2','code','0','合作伙伴','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','13','0','0','0','enterprise');
INSERT INTO `liuyangnzhang_limitword` VALUES ('1','造反','造**');
INSERT INTO `liuyangnzhang_limitword` VALUES ('2','法轮功','法**功');
INSERT INTO `liuyangnzhang_memberdata` VALUES ('1','xuling','','3','1','','1','0','','3170','0','79312533','3637342','1382094509','223.240.84.59','1253678332','127.0.0.1','1','1890-00-00','http://v7.com/upload_files/icon/1.jpg','','118','1381567710','888888','','','54325@qq.com','20','345','cvbnmmm','','13399999999','','','张学友','a:1:{s:7:\"endtime\";s:0:\"\";}','5','0','0','0');
INSERT INTO `liuyangnzhang_members` VALUES ('1','xuling','eee111761625aec899783dc522e71e8f');
INSERT INTO `liuyangnzhang_menu` VALUES ('9','0','公司简介','/do/alonepage.php?id=1','','0','0','0','0','7','page1','');
INSERT INTO `liuyangnzhang_menu` VALUES ('10','0','产品中心','/sell/','','0','0','0','0','6','sell','');
INSERT INTO `liuyangnzhang_menu` VALUES ('11','0','新闻中心','/news/','','0','0','0','0','5','news','');
INSERT INTO `liuyangnzhang_menu` VALUES ('13','0','意见反馈','/form/form.php?mid=1','','0','0','0','0','3','fom1','');
INSERT INTO `liuyangnzhang_menu` VALUES ('14','0','联系我们','/do/alonepage.php?id=2','','0','0','0','0','1','page2','');
INSERT INTO `liuyangnzhang_menu` VALUES ('52','0','企业招聘','/hr/','','0','0','0','0','4','hr','');
INSERT INTO `liuyangnzhang_menu` VALUES ('51','0','网站首页','/','','0','0','0','0','8','index','');
INSERT INTO `liuyangnzhang_menu` VALUES ('53','0','成功案例','/do/examples.php','','0','0','0','0','2','examples','');
INSERT INTO `liuyangnzhang_module` VALUES ('18','2','留言本','guestbook_','guestbook','','','','-1','','','0','0');
INSERT INTO `liuyangnzhang_module` VALUES ('21','2','万能表单','form_','form','','','','-2','','','0','0');
INSERT INTO `liuyangnzhang_module` VALUES ('20','2','文章资讯','news_','news','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','102','','','0','1');
INSERT INTO `liuyangnzhang_module` VALUES ('31','2','人才招聘','hr_','hr','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','98','','','0','1');
INSERT INTO `liuyangnzhang_module` VALUES ('34','2','产品中心','sell_','sell','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','100','','','0','1');
INSERT INTO `liuyangnzhang_moneylog` VALUES ('18','38','5','注册得分','1303378667');
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
INSERT INTO `liuyangnzhang_news_config` VALUES ('Info_description','浏阳市花江彩瓦厂 ','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('module_close','0','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('Info_metakeywords','浏阳市花江彩瓦厂   水泥瓦 胶水','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('Info_webname','浏阳市花江彩瓦厂 ','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('Info_PostCommentType','1','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('Info_PassCommentType','1','');
INSERT INTO `liuyangnzhang_news_config` VALUES ('Info_ShowCommentRows','0','');
INSERT INTO `liuyangnzhang_news_sort` VALUES ('1','0','0','新闻中心','1','2','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";}','','0','','','0','','','','','0','a:11:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:14:\"label_bencandy\";s:0:\"\";s:10:\"channelDir\";s:4:\"nnew\";s:13:\"channelDomain\";s:0:\"\";s:10:\"label_list\";s:2:\"33\";s:15:\"ListShowBigType\";s:13:\"bigsort_tpl/4\";}','','','','');
INSERT INTO `liuyangnzhang_news_sort` VALUES ('2','1','0','公司动态','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:11:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";N;s:10:\"label_list\";s:0:\"\";s:14:\"label_bencandy\";s:0:\"\";s:7:\"is_html\";N;s:11:\"field_value\";N;}','','','','');
INSERT INTO `liuyangnzhang_news_sort` VALUES ('3','1','0','行业动态','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:9:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";N;s:7:\"is_html\";N;s:11:\"field_value\";N;}','','','','');
INSERT INTO `liuyangnzhang_pm` VALUES ('4','11','','0','<font color=\"re','rebox','1','你有客户下订单了','1286873754','请尽快查看<A HREF=\'http://v7.com/buy/joinshow.php?fid=8&id=4\' target=\'_blank\'>http://v7.com/buy/joinshow.php?fid=8&id=4</A>');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('sort_layout','1,75,5#2,71,4,65#54,3#','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Info_ReportDB','非法信息\r\n虚假信息\r\n过期信息','');
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
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Info_description','浏阳市花江彩瓦厂  水泥瓦 胶水','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Info_metakeywords','浏阳市花江彩瓦厂  水泥瓦 胶水 彩瓦','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('module_close','0','');
INSERT INTO `liuyangnzhang_sell_config` VALUES ('Info_webname','浏阳市花江彩瓦厂 ','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('86','1','详细介绍','content','mediumtext','0','-1','ieeditsimp','600','250','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('159','2','期望价格','hope_price','varchar','20','18','text','50','0','','','单价','','1','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('160','2','还想了解','hope_know','varchar','255','17','checkbox','0','0','单价\r\n产品规格、型号\r\n价格条款\r\n原产地\r\n能否提供样品\r\n最小订货量\r\n交货期\r\n供货能力\r\n销售条款及附加条件\r\n包装方式\r\n质量/安全认证','单价','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('158','2','订货总量','order_num','int','6','19','text','50','0','','','','','1','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('80','1','型号','shoptype','varchar','50','6','text','10','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('142','2','补充信息','content','mediumtext','0','15','textarea','500','70','','','','','0','0','0','0','','','','','0','<br><select name=\'autoSelect\' onchange=\"changeaddContent(this);\">\r\n<option value=\'\'>(懒得打字？“快速填写”帮您忙！) </option>\r\n<option value=\'我对贵公司的产品非常感兴趣，能否发一些详细资料给我参考？\'>我对贵公司的产品非常感兴趣，能否发一些详细资料给我参考？</option> \r\n<option value=\'请您发一份比较详细的产品规格说明，谢谢！\'>请您发一份比较详细的产品规格说明，谢谢！</option> \r\n<option value=\'请问贵公司产品是否可以代理？代理条件是什么？\'>请问贵公司产品是否可以代理？代理条件是什么？</option> \r\n<option value=\'我公司有意购买此产品，可否提供此产品的报价单和最小起订量？\'>我公司有意购买此产品，可否提供此产品的报价单和最小起订量？</option> \r\n</select>\r\n<SCRIPT language=\"javascript\">\r\n            function changeaddContent(autoSelect){\r\n			 	if (autoSelect.selectedIndex !=0){			 		\r\n			 		document.getElementById(\"atc_content\").value = autoSelect[autoSelect.selectedIndex].value;\r\n					autoSelect.selectedIndex=0;\r\n			 	}\r\n				\r\n			 }\r\n	     </SCRIPT>');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('154','1','最小起订','order_min','int','7','8','text','30','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('153','1','计量单位','my_units','varchar','10','9','text','50','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('145','2','联系电话','ask_phone','varchar','20','8','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('144','2','联系人姓名','ask_username','varchar','20','9','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('146','2','联系手机','ask_mobphone','varchar','15','7','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('147','2','联系邮箱','ask_email','varchar','50','6','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('148','2','联系QQ','ask_qq','varchar','11','5','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('155','1','最大供货','order_max','varchar','7','7','text','30','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('156','1','发货期限','send_day','varchar','30','5','select','0','0','3天以内发货\r\n3-7天内发货\r\n7-10天内发货\r\n10天以上发货\r\n待商议','','','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('157','2','询价标题','ask_title','varchar','100','20','text','300','0','','','','','1','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_field` VALUES ('161','2','我希望','hope_reply','varchar','25','14','time','0','0','','','之前回复','','0','0','0','0','','','','','0','');
INSERT INTO `liuyangnzhang_sell_module` VALUES ('2','0','询价单模型','1','','','','0','0','a:4:{s:4:\"list\";s:12:\"joinlist.htm\";s:4:\"show\";s:12:\"joinshow.htm\";s:4:\"post\";s:8:\"join.htm\";s:6:\"search\";s:0:\"\";}');
INSERT INTO `liuyangnzhang_sell_module` VALUES ('1','0','产品模型','4','','','','1','0','');
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
INSERT INTO `liuyangnzhang_template` VALUES ('5','头部白板','7','template/default/none.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('6','底部白板','8','template/default/none.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('23','文章列表页(左宽右窄)','2','template/default/list.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('22','内容页(左宽右窄)','3','template/default/bencandy.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('24','主页(左宽右窄)','1','template/default/index.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('20','内容页(上下型)','3','template/default/bencandy_tpl_2.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('21','独立页','9','template/default/alonepage.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('25','专题模板一(头与底要白板)','11','template/special/showsp2.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('26','专题模板二(头与底要白板)','11','template/special/special_sport.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('27','专题模板三(头与底要白板)','11','template/special/special_car.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('28','专题模板四(头与底要白板)','11','template/special/special_finance.htm','','0');
INSERT INTO `liuyangnzhang_template` VALUES ('29','专题模板五(头与底要白板)','11','template/special/sp1.htm','','0');
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
