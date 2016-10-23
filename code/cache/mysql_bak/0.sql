DROP TABLE IF EXISTS xulingqb_admin_menu;
CREATE TABLE `xulingqb_admin_menu` (
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


DROP TABLE IF EXISTS xulingqb_alonepage;
CREATE TABLE `xulingqb_alonepage` (
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_area;
CREATE TABLE `xulingqb_area` (
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


DROP TABLE IF EXISTS xulingqb_config;
CREATE TABLE `xulingqb_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_crontab;
CREATE TABLE `xulingqb_crontab` (
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


DROP TABLE IF EXISTS xulingqb_example;
CREATE TABLE `xulingqb_example` (
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


DROP TABLE IF EXISTS xulingqb_example_sort;
CREATE TABLE `xulingqb_example_sort` (
  `fid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_form_config;
CREATE TABLE `xulingqb_form_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_form_content;
CREATE TABLE `xulingqb_form_content` (
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
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_form_content_1;
CREATE TABLE `xulingqb_form_content_1` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `advicetype` varchar(30) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `truename` varchar(15) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobphone` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_form_content_2;
CREATE TABLE `xulingqb_form_content_2` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `my_name` varchar(20) NOT NULL DEFAULT '',
  `my_phone` varchar(20) NOT NULL DEFAULT '',
  `my_mail` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_form_module;
CREATE TABLE `xulingqb_form_module` (
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


DROP TABLE IF EXISTS xulingqb_form_reply;
CREATE TABLE `xulingqb_form_reply` (
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


DROP TABLE IF EXISTS xulingqb_friendlink;
CREATE TABLE `xulingqb_friendlink` (
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
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_friendlink_sort;
CREATE TABLE `xulingqb_friendlink_sort` (
  `fid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_group;
CREATE TABLE `xulingqb_group` (
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


DROP TABLE IF EXISTS xulingqb_guestbook_config;
CREATE TABLE `xulingqb_guestbook_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_guestbook_content;
CREATE TABLE `xulingqb_guestbook_content` (
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


DROP TABLE IF EXISTS xulingqb_guestbook_sort;
CREATE TABLE `xulingqb_guestbook_sort` (
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


DROP TABLE IF EXISTS xulingqb_hack;
CREATE TABLE `xulingqb_hack` (
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


DROP TABLE IF EXISTS xulingqb_hr_apply;
CREATE TABLE `xulingqb_hr_apply` (
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


DROP TABLE IF EXISTS xulingqb_hr_city;
CREATE TABLE `xulingqb_hr_city` (
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


DROP TABLE IF EXISTS xulingqb_hr_collection;
CREATE TABLE `xulingqb_hr_collection` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `memberuid` mediumint(7) NOT NULL DEFAULT '0',
  `companyuid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `memberuid` (`memberuid`),
  KEY `companyuid` (`companyuid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_hr_config;
CREATE TABLE `xulingqb_hr_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_hr_content;
CREATE TABLE `xulingqb_hr_content` (
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


DROP TABLE IF EXISTS xulingqb_hr_content_1;
CREATE TABLE `xulingqb_hr_content_1` (
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


DROP TABLE IF EXISTS xulingqb_hr_content_2;
CREATE TABLE `xulingqb_hr_content_2` (
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


DROP TABLE IF EXISTS xulingqb_hr_field;
CREATE TABLE `xulingqb_hr_field` (
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


DROP TABLE IF EXISTS xulingqb_hr_module;
CREATE TABLE `xulingqb_hr_module` (
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


DROP TABLE IF EXISTS xulingqb_hr_person;
CREATE TABLE `xulingqb_hr_person` (
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


DROP TABLE IF EXISTS xulingqb_hr_sort;
CREATE TABLE `xulingqb_hr_sort` (
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


DROP TABLE IF EXISTS xulingqb_jfabout;
CREATE TABLE `xulingqb_jfabout` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_jfsort;
CREATE TABLE `xulingqb_jfsort` (
  `fid` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_label;
CREATE TABLE `xulingqb_label` (
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


DROP TABLE IF EXISTS xulingqb_limitword;
CREATE TABLE `xulingqb_limitword` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `oldword` varchar(50) NOT NULL DEFAULT '',
  `newword` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_memberdata;
CREATE TABLE `xulingqb_memberdata` (
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


DROP TABLE IF EXISTS xulingqb_members;
CREATE TABLE `xulingqb_members` (
  `uid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_menu;
CREATE TABLE `xulingqb_menu` (
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


DROP TABLE IF EXISTS xulingqb_module;
CREATE TABLE `xulingqb_module` (
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


DROP TABLE IF EXISTS xulingqb_moneycard;
CREATE TABLE `xulingqb_moneycard` (
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


DROP TABLE IF EXISTS xulingqb_moneylog;
CREATE TABLE `xulingqb_moneylog` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `about` varchar(255) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_news_comments;
CREATE TABLE `xulingqb_news_comments` (
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


DROP TABLE IF EXISTS xulingqb_news_config;
CREATE TABLE `xulingqb_news_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_news_content;
CREATE TABLE `xulingqb_news_content` (
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


DROP TABLE IF EXISTS xulingqb_news_content_1;
CREATE TABLE `xulingqb_news_content_1` (
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


DROP TABLE IF EXISTS xulingqb_news_sort;
CREATE TABLE `xulingqb_news_sort` (
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


DROP TABLE IF EXISTS xulingqb_olpay;
CREATE TABLE `xulingqb_olpay` (
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


DROP TABLE IF EXISTS xulingqb_pm;
CREATE TABLE `xulingqb_pm` (
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


DROP TABLE IF EXISTS xulingqb_propagandize;
CREATE TABLE `xulingqb_propagandize` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `ip` bigint(11) NOT NULL DEFAULT '0',
  `day` smallint(3) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `fromurl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `day` (`day`,`uid`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_regnum;
CREATE TABLE `xulingqb_regnum` (
  `sid` varchar(8) NOT NULL DEFAULT '',
  `num` varchar(6) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `posttime` (`num`,`posttime`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS xulingqb_sell_collection;
CREATE TABLE `xulingqb_sell_collection` (
  `cid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_sell_comments;
CREATE TABLE `xulingqb_sell_comments` (
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


DROP TABLE IF EXISTS xulingqb_sell_config;
CREATE TABLE `xulingqb_sell_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_sell_content;
CREATE TABLE `xulingqb_sell_content` (
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


DROP TABLE IF EXISTS xulingqb_sell_content_1;
CREATE TABLE `xulingqb_sell_content_1` (
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


DROP TABLE IF EXISTS xulingqb_sell_content_2;
CREATE TABLE `xulingqb_sell_content_2` (
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


DROP TABLE IF EXISTS xulingqb_sell_db;
CREATE TABLE `xulingqb_sell_db` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `city_id` (`city_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_sell_field;
CREATE TABLE `xulingqb_sell_field` (
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


DROP TABLE IF EXISTS xulingqb_sell_join;
CREATE TABLE `xulingqb_sell_join` (
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


DROP TABLE IF EXISTS xulingqb_sell_module;
CREATE TABLE `xulingqb_sell_module` (
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


DROP TABLE IF EXISTS xulingqb_sell_pic;
CREATE TABLE `xulingqb_sell_pic` (
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


DROP TABLE IF EXISTS xulingqb_sell_report;
CREATE TABLE `xulingqb_sell_report` (
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


DROP TABLE IF EXISTS xulingqb_sell_sort;
CREATE TABLE `xulingqb_sell_sort` (
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


DROP TABLE IF EXISTS xulingqb_template;
CREATE TABLE `xulingqb_template` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `type` smallint(4) NOT NULL DEFAULT '0',
  `filepath` varchar(100) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_template_bak;
CREATE TABLE `xulingqb_template_bak` (
  `bid` int(7) NOT NULL AUTO_INCREMENT,
  `id` int(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `code` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS xulingqb_upfile;
CREATE TABLE `xulingqb_upfile` (
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


DROP TABLE IF EXISTS xulingqb_yzimg;
CREATE TABLE `xulingqb_yzimg` (
  `sid` varchar(8) NOT NULL DEFAULT '',
  `imgnum` varchar(6) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `posttime` (`imgnum`,`posttime`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;


INSERT INTO `xulingqb_admin_menu` VALUES ('12','0','���ݹ���','','','0','99','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('83','0','��ǩ����','','','0','100','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('84','83','��������','../news/index.php?jobs=show','','0','18','3','1');
INSERT INTO `xulingqb_admin_menu` VALUES ('85','83','��Ʒ����','index.php?lfj=module_admin&dirname=sell&file=center&job=label','','0','17','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('87','0','���۹���','','','0','7','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('88','87','��Ʒ����','index.php?lfj=module_admin&dirname=sell&file=comment&job=list','','0','99','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('112','111','���ŷ���','index.php?lfj=module_admin&dirname=news&file=sort&job=listsort&type=all','','0','-1','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('111','0','�������','','','0','88','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('75','12','������Ѷ','index.php?lfj=module_admin&dirname=news&file=list&job=list','','0','-1','3','1');
INSERT INTO `xulingqb_admin_menu` VALUES ('144','12','�ɹ�����','index.php?lfj=examples&job=list','','0','0','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('145','0','���ܲ˵�','','','0','0','-3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('119','12','ְλ����','index.php?lfj=module_admin&dirname=hr&file=list&job=list','','0','89','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('120','12','��ְ����','index.php?lfj=module_admin&dirname=hr&file=joinlist&job=list','','0','88','3','1');
INSERT INTO `xulingqb_admin_menu` VALUES ('117','12','��Ʒ����','index.php?lfj=module_admin&dirname=sell&file=list&job=list','','0','99','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('118','12','�������','index.php?lfj=module_admin&dirname=form&file=form_module&file=form_content&job=list&mid=1','','0','98','3','1');
INSERT INTO `xulingqb_admin_menu` VALUES ('130','111','��Ʒ����','index.php?lfj=module_admin&dirname=sell&file=sort&job=listsort','','0','99','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('102','83','��վ��ҳ','../index.php?&ch=1&chtype=0&jobs=show','','0','19','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('143','87','��������','index.php?lfj=module_admin&dirname=news&file=comment&job=list','','0','69','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('103','83','�˲���Ƹ','index.php?lfj=module_admin&dirname=hr&file=center&job=label','','0','14','3','1');
INSERT INTO `xulingqb_admin_menu` VALUES ('132','111','ְλ����','index.php?lfj=module_admin&dirname=hr&file=sort&job=listsort&yellow=0','','0','89','3','0');
INSERT INTO `xulingqb_alonepage` VALUES ('1','0','��˾���','��˾���','1314175571','0','','','','template/default/introduce.htm','','introduce.htm','','','','','219','0');
INSERT INTO `xulingqb_alonepage` VALUES ('2','0','��ϵ����','��ϵ����','1314175561','0','','','','template/default/contact.htm','','contact.htm','','','','','104','0');
INSERT INTO `xulingqb_area` VALUES ('1','0','������','1','18','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `xulingqb_area` VALUES ('2','0','�Ϻ���','1','19','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `xulingqb_area` VALUES ('3','0','�����','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('4','0','������','1','40','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('5','0','�ӱ�ʡ','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('6','0','ɽ��ʡ','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('7','0','���ɹ�������','1','12','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('8','0','����ʡ','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('9','0','����ʡ','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('10','0','������ʡ','1','13','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('11','0','����ʡ','1','13','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('12','0','�㽭ʡ','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('13','0','����ʡ','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('14','0','����ʡ','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('15','0','����ʡ','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('16','0','ɽ��ʡ','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('17','0','����ʡ','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('18','0','����ʡ','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('19','0','����ʡ','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('20','0','�㶫ʡ','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('21','0','����׳��������','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('22','0','����ʡ','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('23','0','�Ĵ�ʡ','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('24','0','����ʡ','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('25','0','����ʡ','1','16','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('26','0','����������','1','7','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('27','0','����ʡ','1','10','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('28','0','����ʡ','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('29','0','�ຣʡ','1','8','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('30','0','���Ļ���������','1','5','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('31','0','�½�ά���������','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('32','0','̨��ʡ','1','25','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('33','0','����ر�������','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('34','0','�����ر�������','1','5','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('35','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('36','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('37','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('38','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('39','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('40','1','��̨��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('41','1','ʯ��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('42','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('43','1','��ͷ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('44','1','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('45','1','ͨ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('46','1','˳����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('47','1','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('48','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('49','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('50','1','ƽ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('51','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('52','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('53','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('54','2','¬����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('55','2','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('56','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('57','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('58','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('59','2','բ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('60','2','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('61','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('62','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('63','2','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('64','2','�ζ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('65','2','�ֶ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('66','2','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('67','2','�ɽ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('68','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('69','2','�ϻ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('70','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('71','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('72','3','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('73','3','�Ӷ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('74','3','������','2','0','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `xulingqb_area` VALUES ('75','3','�Ͽ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('76','3','�ӱ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('77','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('78','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('79','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('80','3','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('81','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('82','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('83','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('84','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('85','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('86','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('87','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('88','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('89','3','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('90','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('91','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('92','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('93','4','��ɿ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('94','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('95','4','ɳƺ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('96','4','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('97','4','�ϰ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('98','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('99','4','��ʢ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('100','4','˫����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('101','4','�山��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('102','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('103','4','ǭ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('104','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('105','4','�뽭��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('106','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('107','4','ͭ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('108','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('109','4','�ٲ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('110','4','�ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('111','4','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('112','4','�ǿ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('113','4','�ᶼ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('114','4','�潭��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('115','4','��¡��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('116','4','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('117','4','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('118','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('119','4','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('120','4','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('121','4','��Ϫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('122','4','ʯ��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('123','4','��ɽ����������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('124','4','��������������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('125','4','��ˮ����������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('126','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('127','4','�ϴ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('128','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('129','4','�ϴ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('130','5','ʯ��ׯ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('131','5','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('132','5','�ػʵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('133','5','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('134','5','��̨��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('135','5','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('136','5','�żҿ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('137','5','�е���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('138','5','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('139','5','�ȷ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('140','5','��ˮ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('141','6','̫ԭ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('142','6','��ͬ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('143','6','��Ȫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('144','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('145','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('146','6','˷����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('147','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('148','6','�˳���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('149','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('150','6','�ٷ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('151','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('152','7','���ͺ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('153','7','��ͷ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('154','7','�ں���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('155','7','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('156','7','ͨ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('157','7','������˹��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('158','7','���ױ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('159','7','�����׶���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('160','7','�����첼��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('161','7','�˰���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('162','7','���ֹ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('163','7','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('164','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('165','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('166','8','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('167','8','��˳��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('168','8','��Ϫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('169','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('170','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('171','8','Ӫ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('172','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('173','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('174','8','�̽���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('175','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('176','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('177','8','��«����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('178','9','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('179','9','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('180','9','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('181','9','��Դ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('182','9','ͨ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('183','9','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('184','9','��ԭ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('185','9','�׳���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('186','9','�ӱ߳�����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('187','10','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('188','10','���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('189','10','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('190','10','�׸���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('191','10','˫Ѽɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('192','10','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('193','10','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('194','10','��ľ˹��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('195','10','��̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('196','10','ĵ������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('197','10','�ں���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('198','10','�绯��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('199','10','���˰������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('200','11','�Ͼ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('201','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('202','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('203','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('204','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('205','11','��ͨ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('206','11','���Ƹ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('207','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('208','11','�γ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('209','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('210','11','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('211','11','̩����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('212','11','��Ǩ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('213','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('214','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('215','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('216','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('217','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('218','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('219','12','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('220','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('221','12','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('222','12','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('223','12','��ˮ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('224','13','�Ϸ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('225','13','�ߺ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('226','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('227','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('228','13','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('229','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('230','13','ͭ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('231','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('232','13','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('233','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('234','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('235','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('236','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('237','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('238','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('239','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('240','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('241','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('242','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('243','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('244','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('245','14','Ȫ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('246','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('247','14','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('248','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('249','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('250','15','�ϲ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('251','15','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('252','15','Ƽ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('253','15','�Ž���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('254','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('255','15','ӥ̶��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('256','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('257','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('258','15','�˴���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('259','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('260','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('261','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('262','16','�ൺ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('263','16','�Ͳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('264','16','��ׯ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('265','16','��Ӫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('266','16','��̨��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('267','16','Ϋ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('268','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('269','16','̩����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('270','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('271','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('272','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('273','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('274','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('275','16','�ĳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('276','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('277','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('278','17','֣����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('279','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('280','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('281','17','ƽ��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('282','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('283','17','�ױ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('284','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('285','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('286','17','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('287','17','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('288','17','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('289','17','����Ͽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('290','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('291','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('292','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('293','17','�ܿ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('294','17','פ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('295','18','�人��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('296','18','��ʯ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('297','18','ʮ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('298','18','�˲���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('299','18','�差��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('300','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('301','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('302','18','Т����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('303','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('304','18','�Ƹ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('305','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('306','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('307','18','��ʩ����������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('308','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('309','18','Ǳ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('310','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('311','18','��ũ������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('312','19','��ɳ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('313','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('314','19','��̶��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('315','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('316','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('317','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('318','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('319','19','�żҽ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('320','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('321','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('322','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('323','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('324','19','¦����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('325','19','��������������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('326','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('327','20','�ع���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('328','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('329','20','�麣��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('330','20','��ͷ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('331','20','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('332','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('333','20','տ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('334','20','ï����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('335','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('336','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('337','20','÷����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('338','20','��β��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('339','20','��Դ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('340','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('341','20','��Զ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('342','20','��ݸ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('343','20','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('344','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('345','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('346','20','�Ƹ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('347','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('348','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('349','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('350','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('351','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('352','21','���Ǹ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('353','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('354','21','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('355','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('356','21','��ɫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('357','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('358','21','�ӳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('359','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('360','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('361','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('362','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('363','22','��ָɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('364','22','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('365','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('366','22','�Ĳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('367','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('368','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('369','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('370','22','�Ͳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('371','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('372','22','�ٸ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('373','22','��ɳ����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('374','22','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('375','22','�ֶ�����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('376','22','��ˮ����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('377','22','��ͤ��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('378','22','������������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('379','22','��ɳȺ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('380','22','��ɳȺ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('381','22','��ɳȺ���ĵ������亣��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('382','23','�ɶ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('383','23','�Թ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('384','23','��֦����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('385','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('386','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('387','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('388','23','��Ԫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('389','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('390','23','�ڽ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('391','23','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('392','23','�ϳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('393','23','üɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('394','23','�˱���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('395','23','�㰲��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('396','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('397','23','�Ű���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('398','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('399','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('400','23','���Ӳ���Ǽ��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('401','23','���β���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('402','23','��ɽ����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('403','24','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('404','24','����ˮ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('405','24','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('406','24','��˳��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('407','24','ͭ�ʵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('408','24','ǭ���ϲ���������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('409','24','�Ͻڵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('410','24','ǭ�������嶱��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('411','24','ǭ�ϲ���������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('412','25','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('413','25','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('414','25','��Ϫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('415','25','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('416','25','��ͨ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('417','25','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('418','25','˼é��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('419','25','�ٲ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('420','25','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('421','25','��ӹ���������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('422','25','��ɽ׳������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('423','25','��˫���ɴ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('424','25','�������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('425','25','�º���徰����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('426','25','ŭ��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('427','25','�������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('428','26','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('429','26','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('430','26','ɽ�ϵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('431','26','�տ������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('432','26','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('433','26','�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('434','26','��֥����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('435','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('436','27','ͭ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('437','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('438','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('439','27','μ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('440','27','�Ӱ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('441','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('442','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('443','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('444','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('445','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('446','28','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('447','28','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('448','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('449','28','��ˮ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('450','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('451','28','��Ҵ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('452','28','ƽ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('453','28','��Ȫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('454','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('455','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('456','28','¤����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('457','28','���Ļ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('458','28','���ϲ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('459','29','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('460','29','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('461','29','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('462','29','���ϲ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('463','29','���ϲ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('464','29','�������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('465','29','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('466','29','�����ɹ������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('467','30','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('468','30','ʯ��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('469','30','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('470','30','��ԭ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('471','30','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('472','31','��³ľ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('473','31','����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('474','31','��³������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('475','31','���ܵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('476','31','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('477','31','���������ɹ�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('478','31','���������ɹ�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('479','31','�����յ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('480','31','�������տ¶�����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('481','31','��ʲ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('482','31','�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('483','31','���������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('484','31','���ǵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('485','31','����̩����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('486','31','ʯ������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('487','31','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('488','31','ͼľ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('489','31','�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('490','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('491','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('492','32','��¡��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('493','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('494','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('495','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('496','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('497','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('498','32','��԰��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('499','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('500','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('501','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('502','32','�û���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('503','32','��Ͷ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('504','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('505','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('506','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('507','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('508','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('509','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('510','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('511','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('512','32','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('513','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('514','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('515','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('516','33','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('517','33','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('518','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('519','33','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('520','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('521','33','��ˮ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('522','33','�ƴ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('523','33','�ͼ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('524','33','�뵺��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('525','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('526','33','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('527','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('528','33','ɳ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('529','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('530','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('531','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('532','33','Ԫ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('533','34','�����л���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('534','34','������ʥ����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('535','34','�����д�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('536','34','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('537','34','�����з�˳����','2','0','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `xulingqb_config` VALUES ('yzImgComment','0','');
INSERT INTO `xulingqb_config` VALUES ('flashtime','0','');
INSERT INTO `xulingqb_config` VALUES ('showComment','1','');
INSERT INTO `xulingqb_config` VALUES ('forbidComment','0','');
INSERT INTO `xulingqb_config` VALUES ('showCommentRows','8','');
INSERT INTO `xulingqb_config` VALUES ('viewNoPassGuestBook','1','');
INSERT INTO `xulingqb_config` VALUES ('yzImgContribute','0','');
INSERT INTO `xulingqb_config` VALUES ('groupPassContribute','3','');
INSERT INTO `xulingqb_config` VALUES ('forbidRegName','','');
INSERT INTO `xulingqb_config` VALUES ('MaxOnlineUser','1000','');
INSERT INTO `xulingqb_config` VALUES ('groupPassShopYz','3,4','');
INSERT INTO `xulingqb_config` VALUES ('groupPassPassGuestBook','3','');
INSERT INTO `xulingqb_config` VALUES ('ifOpenGuestBook','1','');
INSERT INTO `xulingqb_config` VALUES ('yzImgGuestBook','1','');
INSERT INTO `xulingqb_config` VALUES ('ContributeFid','2','');
INSERT INTO `xulingqb_config` VALUES ('groupPassLogYz','3,4','');
INSERT INTO `xulingqb_config` VALUES ('regmoney','5','');
INSERT INTO `xulingqb_config` VALUES ('FtpName','admin','');
INSERT INTO `xulingqb_config` VALUES ('PostSortStep','2','');
INSERT INTO `xulingqb_config` VALUES ('ListSonline','2','');
INSERT INTO `xulingqb_config` VALUES ('_Notice','29weSgiaHR0cDovL3d3dy5waHAxNjguY29tL05vdGljZS8/dXJsPSR3ZWJkYlt3d3dfdXJsXSIsUEhQMTY4X1BBVEguImNhY2hlL05vdGljZS5waHAiKTs=','');
INSERT INTO `xulingqb_config` VALUES ('CommentTime','5','');
INSERT INTO `xulingqb_config` VALUES ('weburl','/','');
INSERT INTO `xulingqb_config` VALUES ('MailType','smtp','');
INSERT INTO `xulingqb_config` VALUES ('yeepay_key','ve4ets3huzxruch0tsf6nga7a2lpckm8h9p7qnefj31q49ms8bhl3qin6q0g','');
INSERT INTO `xulingqb_config` VALUES ('allowMemberCommentPass','1','');
INSERT INTO `xulingqb_config` VALUES ('AvoidGatherPre','','');
INSERT INTO `xulingqb_config` VALUES ('AvoidCopy','0','');
INSERT INTO `xulingqb_config` VALUES ('AvoidGather','0','');
INSERT INTO `xulingqb_config` VALUES ('AvoidSave','0','');
INSERT INTO `xulingqb_config` VALUES ('waterpos','7','');
INSERT INTO `xulingqb_config` VALUES ('adminPostEditType','html','');
INSERT INTO `xulingqb_config` VALUES ('article_show_step','0','');
INSERT INTO `xulingqb_config` VALUES ('ifContribute','1','');
INSERT INTO `xulingqb_config` VALUES ('allowGuestSearch','0','');
INSERT INTO `xulingqb_config` VALUES ('kill_badword','0','');
INSERT INTO `xulingqb_config` VALUES ('ShowKeywordColor','#F70968','');
INSERT INTO `xulingqb_config` VALUES ('ifShowKeyword','1','');
INSERT INTO `xulingqb_config` VALUES ('UseFtp','0','');
INSERT INTO `xulingqb_config` VALUES ('FtpWeb','','');
INSERT INTO `xulingqb_config` VALUES ('FtpPort','21','');
INSERT INTO `xulingqb_config` VALUES ('photoShowType','0','');
INSERT INTO `xulingqb_config` VALUES ('groupTime','180','');
INSERT INTO `xulingqb_config` VALUES ('allowGuestCommentPass','1','');
INSERT INTO `xulingqb_config` VALUES ('ShowMenu','0','');
INSERT INTO `xulingqb_config` VALUES ('GuestBookNum','8','');
INSERT INTO `xulingqb_config` VALUES ('ShopNormalSend','8','');
INSERT INTO `xulingqb_config` VALUES ('ShopEmsSend','25','');
INSERT INTO `xulingqb_config` VALUES ('groupUpType','1','');
INSERT INTO `xulingqb_config` VALUES ('allowDownMv','0','');
INSERT INTO `xulingqb_config` VALUES ('SPlist_filename2','listsp.php?fid-{$fid}-page-{$page}.htm','');
INSERT INTO `xulingqb_config` VALUES ('waterimg','images/default/water.gif','');
INSERT INTO `xulingqb_config` VALUES ('MailPort','25','');
INSERT INTO `xulingqb_config` VALUES ('HideNopowerPost','1','');
INSERT INTO `xulingqb_config` VALUES ('autoPlayFirstMv','1','');
INSERT INTO `xulingqb_config` VALUES ('allowGuestComment','1','');
INSERT INTO `xulingqb_config` VALUES ('PostNotice','<font face=SimSun>\n<p><font face=SimSun>1�������ת�����ݣ��������д�����Դ��ַ��������<br />2��������İ�Ȩ�����뷨�������ɷ����߳е���</font></p></font>','');
INSERT INTO `xulingqb_config` VALUES ('ListLeng','70','');
INSERT INTO `xulingqb_config` VALUES ('propagandize_jumpto','/','');
INSERT INTO `xulingqb_config` VALUES ('propagandize_LogDay','5','');
INSERT INTO `xulingqb_config` VALUES ('propagandize_close','0','');
INSERT INTO `xulingqb_config` VALUES ('propagandize_Money','2','');
INSERT INTO `xulingqb_config` VALUES ('YZ_IdcardMoney','20','');
INSERT INTO `xulingqb_config` VALUES ('EditYzEmail','0','');
INSERT INTO `xulingqb_config` VALUES ('EditYzMob','0','');
INSERT INTO `xulingqb_config` VALUES ('EditYzIdcard','0','');
INSERT INTO `xulingqb_config` VALUES ('YZ_EmailMoney','10','');
INSERT INTO `xulingqb_config` VALUES ('YZ_MobMoney','15','');
INSERT INTO `xulingqb_config` VALUES ('MailServer','smtp.163.com','');
INSERT INTO `xulingqb_config` VALUES ('sms_es_name','1','');
INSERT INTO `xulingqb_config` VALUES ('sms_wi_id','2','');
INSERT INTO `xulingqb_config` VALUES ('SPbencandy_filename2','showsp.php?fid-{$fid}-id-{$id}-page-{$page}.htm','');
INSERT INTO `xulingqb_config` VALUES ('list_filename2','list.php?fid-{$fid}-page-{$page}.htm','');
INSERT INTO `xulingqb_config` VALUES ('forbidReg','0','');
INSERT INTO `xulingqb_config` VALUES ('close_count','0','');
INSERT INTO `xulingqb_config` VALUES ('Reg_Field','a:1:{s:8:\\\\\"field_db\\\\\";a:0:{}}','');
INSERT INTO `xulingqb_config` VALUES ('guide_word','��վ��ҳ|/|0||51|index\n��˾���|/do/alonepage.php?id=1|0||9|page1\n��Ʒ����|/sell/|0||10|sell\n��������|/news/|0||11|news\n��ҵ��Ƹ|/hr/|0||52|hr\n�������|/form/form.php?mid=1|0||13|fom1\n�ɹ�����|/do/examples.php|0||53|examples\n��ϵ����|/do/alonepage.php?id=2|0||14|page2','');
INSERT INTO `xulingqb_config` VALUES ('passport_TogetherLogin','1','');
INSERT INTO `xulingqb_config` VALUES ('Listsortnameline','2','');
INSERT INTO `xulingqb_config` VALUES ('ListSonLeng','34','');
INSERT INTO `xulingqb_config` VALUES ('ListSonRows','9','');
INSERT INTO `xulingqb_config` VALUES ('JsListLeng','36','');
INSERT INTO `xulingqb_config` VALUES ('tenpay_key','fdsafds','');
INSERT INTO `xulingqb_config` VALUES ('yeepay_id','10000821064','');
INSERT INTO `xulingqb_config` VALUES ('yzNumReg','1','');
INSERT INTO `xulingqb_config` VALUES ('cache_time_js','-1','');
INSERT INTO `xulingqb_config` VALUES ('SideSortStyle','side_sort/2','');
INSERT INTO `xulingqb_config` VALUES ('SideTitleStyle','side_tpl/2','');
INSERT INTO `xulingqb_config` VALUES ('JsListRows','5','');
INSERT INTO `xulingqb_config` VALUES ('SPlist_filename','html/4special{$fid}/list{$page}.htm','');
INSERT INTO `xulingqb_config` VALUES ('SPbencandy_filename','html/5special{$fid}/show{$id}.htm','');
INSERT INTO `xulingqb_config` VALUES ('cache_time_com','-1','');
INSERT INTO `xulingqb_config` VALUES ('ArticleHeart','Ƿ��|1.gif\n֧��|2.gif\n�ܰ�|3.gif\n����|4.gif\n��Ц|5.gif\n����|6.gif\n����|7.gif\n�Ծ�|8.gif','');
INSERT INTO `xulingqb_config` VALUES ('heart_time','30','');
INSERT INTO `xulingqb_config` VALUES ('heart_noRecord','1','');
INSERT INTO `xulingqb_config` VALUES ('ForceDel','0','');
INSERT INTO `xulingqb_config` VALUES ('UseArticleDigg','0','');
INSERT INTO `xulingqb_config` VALUES ('RegYz','1','');
INSERT INTO `xulingqb_config` VALUES ('sortNUM','27','');
INSERT INTO `xulingqb_config` VALUES ('FtpPwd','admin','');
INSERT INTO `xulingqb_config` VALUES ('articleNUM','186','');
INSERT INTO `xulingqb_config` VALUES ('cache_time_like','-1','');
INSERT INTO `xulingqb_config` VALUES ('cache_time_new','-1','');
INSERT INTO `xulingqb_config` VALUES ('is_waterimg','1','');
INSERT INTO `xulingqb_config` VALUES ('passport_path','../pw7','');
INSERT INTO `xulingqb_config` VALUES ('Del_MoreUpfile','1','');
INSERT INTO `xulingqb_config` VALUES ('passport_pre','`dz7`.cdb_','');
INSERT INTO `xulingqb_config` VALUES ('gg_maps','23.12463507525006,113.41017343103886','');
INSERT INTO `xulingqb_config` VALUES ('RewriteUrl','0','');
INSERT INTO `xulingqb_config` VALUES ('gg_map_api','','');
INSERT INTO `xulingqb_config` VALUES ('label_cache_time','-1','');
INSERT INTO `xulingqb_config` VALUES ('DownLoad_readfile','1','');
INSERT INTO `xulingqb_config` VALUES ('yzImgAdminLogin','0','');
INSERT INTO `xulingqb_config` VALUES ('AutoCutFace','0','');
INSERT INTO `xulingqb_config` VALUES ('FtpDir','111','');
INSERT INTO `xulingqb_config` VALUES ('passport_type','','');
INSERT INTO `xulingqb_config` VALUES ('MakeIndexHtmlTime','0','');
INSERT INTO `xulingqb_config` VALUES ('cache_time_pic','-1','');
INSERT INTO `xulingqb_config` VALUES ('list_cache_time','0','');
INSERT INTO `xulingqb_config` VALUES ('bencandy_cache_time','0','');
INSERT INTO `xulingqb_config` VALUES ('showsp_cache_time','0','');
INSERT INTO `xulingqb_config` VALUES ('cache_time_hot','-1','');
INSERT INTO `xulingqb_config` VALUES ('RegCompany','1','');
INSERT INTO `xulingqb_config` VALUES ('limitRegTime','','');
INSERT INTO `xulingqb_config` VALUES ('pay99_id','','');
INSERT INTO `xulingqb_config` VALUES ('tenpay_id','fdsafdsa','');
INSERT INTO `xulingqb_config` VALUES ('MoneyRatio','100','');
INSERT INTO `xulingqb_config` VALUES ('Money2card','0','');
INSERT INTO `xulingqb_config` VALUES ('index_cache_time','0','');
INSERT INTO `xulingqb_config` VALUES ('waterAlpha','80','');
INSERT INTO `xulingqb_config` VALUES ('if_gdimg','1','');
INSERT INTO `xulingqb_config` VALUES ('emailOnly','1','');
INSERT INTO `xulingqb_config` VALUES ('DefaultIndexHtml','0','');
INSERT INTO `xulingqb_config` VALUES ('AutoPassCompany','1','');
INSERT INTO `xulingqb_config` VALUES ('yzImgReg','0','');
INSERT INTO `xulingqb_config` VALUES ('UseArticleHeart','1','');
INSERT INTO `xulingqb_config` VALUES ('AutoTitleNum','1','');
INSERT INTO `xulingqb_config` VALUES ('deleteArticleMoney','-1','');
INSERT INTO `xulingqb_config` VALUES ('postArticleMoney','1','');
INSERT INTO `xulingqb_config` VALUES ('comArticleMoney','3','');
INSERT INTO `xulingqb_config` VALUES ('hotArticleNum','100','');
INSERT INTO `xulingqb_config` VALUES ('newArticleTime','24','');
INSERT INTO `xulingqb_config` VALUES ('ListShowIcon','0','');
INSERT INTO `xulingqb_config` VALUES ('autoGetKeyword','0','');
INSERT INTO `xulingqb_config` VALUES ('autoGetSmallPic','1','');
INSERT INTO `xulingqb_config` VALUES ('autoCutSmallPic','1','');
INSERT INTO `xulingqb_config` VALUES ('ForbidRepeatTitle','1','');
INSERT INTO `xulingqb_config` VALUES ('viewNoPassArticle','0','');
INSERT INTO `xulingqb_config` VALUES ('ArticlePicWidth','800','');
INSERT INTO `xulingqb_config` VALUES ('ArticlePicHeight','600','');
INSERT INTO `xulingqb_config` VALUES ('ArticleDownloadDirTime','0','');
INSERT INTO `xulingqb_config` VALUES ('ArticleDownloadUseFtp','0','');
INSERT INTO `xulingqb_config` VALUES ('XunLei_ID','08311','');
INSERT INTO `xulingqb_config` VALUES ('FlashGet_ID','6370','');
INSERT INTO `xulingqb_config` VALUES ('KeepTodayCount','1','');
INSERT INTO `xulingqb_config` VALUES ('ShopOtherSend','18','');
INSERT INTO `xulingqb_config` VALUES ('ForbidShowPhpPage','0','');
INSERT INTO `xulingqb_config` VALUES ('bencandy_filename2','bencandy.php?fid-{$fid}-id-{$id}-page-{$page}.htm','');
INSERT INTO `xulingqb_config` VALUES ('MailId','lfj846@163.com','');
INSERT INTO `xulingqb_config` VALUES ('MailPw','020php168gz','');
INSERT INTO `xulingqb_config` VALUES ('alipay_transport','https','');
INSERT INTO `xulingqb_config` VALUES ('alipay_service','create_partner_trade_by_buyer','');
INSERT INTO `xulingqb_config` VALUES ('alipay_partner','','');
INSERT INTO `xulingqb_config` VALUES ('alipay_key','','');
INSERT INTO `xulingqb_config` VALUES ('alipay_id','test@test.com','');
INSERT INTO `xulingqb_config` VALUES ('pay99_key','','');
INSERT INTO `xulingqb_config` VALUES ('alipay_scale','100','');
INSERT INTO `xulingqb_config` VALUES ('NewsMakeHtml','0','');
INSERT INTO `xulingqb_config` VALUES ('list_filename','html/{$fid}/{$page}.htm','');
INSERT INTO `xulingqb_config` VALUES ('bencandy_filename','html/{$fid}-{$dirid}/{$id}-{$page}.htm','');
INSERT INTO `xulingqb_config` VALUES ('passport_url','http://dooxue.xubo245.com/xuling/bbs','');
INSERT INTO `xulingqb_config` VALUES ('FtpHost','127.0.0.1','');
INSERT INTO `xulingqb_config` VALUES ('path','/do','');
INSERT INTO `xulingqb_config` VALUES ('memberNotice','��ӭ���ӻԾͶ��,Ͷ��ɵû��ֽ���!!','');
INSERT INTO `xulingqb_config` VALUES ('companyTrade','��е����ҵ�豸\n��ͨ��е����\nͨ���㲿��\n������\n��������\n�綯����\n����Ԫ��\n��������\n��������������\n��ȫ�����豸\n��װ\n��ֽ��ֽ��Ʒ\n������繤����\n�繤����\nͨ�������Ǳ�\nר�������Ǳ�\n��ͨ�����豸���㲿��\n�칫���Ľ���Ʒ\n���롢���Լ��������\n�ճ��Ҿ���Ʒ\nľ�ġ�ľ��Ʒ\n�Ҿ�\n���õ���\n��Ʒ����������Ʒ\nʳƷ������\nͨ�Ų�Ʒ\n���\nӡˢ�豸\n�˶������С�������Ʒ\nЬ��ñ\n��װ\n���û�ѧƷ\nũ�û�ѧƷ\n��ճ��\nȾ�ϡ����ϡ�Ϳ�Ϻ���ī\n�߻���������\n��澫ϸ��ѧƷ\nʳƷ��������Ӽ�\n����\n����Ʒ\n�����������豸\n����������\n��Դ\n���͡�ũ��Ʒ\n����\nҽҩ��������ҽ���豸\n��֯\nƤ��\nú������Ʒ\n�ճ�����\n������\n������ѵ\n��֤\n�������\n��������\n�����ڴ���\nά�޼���װ����\n��桢չ������\nרҵ¼���������豸\n��ѧ��Ӱ����\n�༭�����豸\n������ǰ���豸\n������װ��ҵ\n���ز�\n��װ����\n�ʵ�ͨ��\n����������֤\n��������������ᡢ����\n��������ҵ\n���ڡ�����\nʵҵ��˾����ҵó��\n���¼���������\n�����г�','');
INSERT INTO `xulingqb_config` VALUES ('miibeian_gov_cn','��ICP��10080701��','');
INSERT INTO `xulingqb_config` VALUES ('copyright','','');
INSERT INTO `xulingqb_config` VALUES ('mymd5','96159679','');
INSERT INTO `xulingqb_config` VALUES ('updir','upload_files','');
INSERT INTO `xulingqb_config` VALUES ('mirror','http://down.qibosoft.com/other/testv6/upload_files/','');
INSERT INTO `xulingqb_config` VALUES ('cookiePre','','');
INSERT INTO `xulingqb_config` VALUES ('bokecc_id','','');
INSERT INTO `xulingqb_config` VALUES ('cookieDomain','','');
INSERT INTO `xulingqb_config` VALUES ('forbid_show_bug','1','');
INSERT INTO `xulingqb_config` VALUES ('upfileType','.rar .txt .jpg .gif .bmp .png .zip .mp3 .wma .wmv .mpeg .mpg .rm .ram .htm .doc .swf .avi .flv .sql .doc .ppt .xls .chm .pdf','');
INSERT INTO `xulingqb_config` VALUES ('upfileMaxSize','','');
INSERT INTO `xulingqb_config` VALUES ('totalSpace','100','');
INSERT INTO `xulingqb_config` VALUES ('time','0','');
INSERT INTO `xulingqb_config` VALUES ('admin_url','admin','');
INSERT INTO `xulingqb_config` VALUES ('style_member','','');
INSERT INTO `xulingqb_config` VALUES ('www_url','http://dooxue.xubo245.com/xuling','');
INSERT INTO `xulingqb_config` VALUES ('sms_es_key','2','');
INSERT INTO `xulingqb_config` VALUES ('sms_type','ccell','');
INSERT INTO `xulingqb_config` VALUES ('sms_wi_pwd','3','');
INSERT INTO `xulingqb_config` VALUES ('sms_ccell_id','82008','');
INSERT INTO `xulingqb_config` VALUES ('sms_ccell_pwd','celllxl','');
INSERT INTO `xulingqb_config` VALUES ('forbidRegIp','','');
INSERT INTO `xulingqb_config` VALUES ('reg_group','8','');
INSERT INTO `xulingqb_config` VALUES ('style','default','');
INSERT INTO `xulingqb_config` VALUES ('member_contact',' <div class=t>020-88888888</div>\n            <div class=t>020-88888888</div>\n            <div class=q>qq:123456</div>\n','');
INSERT INTO `xulingqb_config` VALUES ('close_why','��վά������,\n��ͣ����.','');
INSERT INTO `xulingqb_config` VALUES ('web_open','1','');
INSERT INTO `xulingqb_config` VALUES ('MoneyDW','��','');
INSERT INTO `xulingqb_config` VALUES ('MoneyName','����','');
INSERT INTO `xulingqb_config` VALUES ('UserEmailAutoPass','1','');
INSERT INTO `xulingqb_config` VALUES ('UseMoneyType','cms','');
INSERT INTO `xulingqb_config` VALUES ('BuySpacesizeMoney','50','');
INSERT INTO `xulingqb_config` VALUES ('webmail','admin@admin.com','');
INSERT INTO `xulingqb_config` VALUES ('description','����ҵվ�����벩��ҵ��','');
INSERT INTO `xulingqb_config` VALUES ('metakeywords','��ҵ��վ��ѡ','');
INSERT INTO `xulingqb_config` VALUES ('webname','�벩��ҵ��','');
INSERT INTO `xulingqb_config` VALUES ('hideFid','','');
INSERT INTO `xulingqb_crontab` VALUES ('2','�������ݿ�','0','0300','0','1292489459','inc/crontab/mysqlbak.php','','1');
INSERT INTO `xulingqb_crontab` VALUES ('3','���CK�༭�����������ͼ','0','0330','0','1292489510','inc/crontab/delete_ckeditor_tmp.php','','1');
INSERT INTO `xulingqb_crontab` VALUES ('4','��ո�����','0','','1296504125','0','inc/crontab/delete_table_upfile.php','','1');
INSERT INTO `xulingqb_example` VALUES ('36','3','��������','http://www.gac-toyota.com.cn/','example/1_20110824160838_MQ==.gif','','0','0','0','1314174053');
INSERT INTO `xulingqb_example` VALUES ('37','2','���չ�����ѯ���޹�˾','http://www.chinasap.cn/','example/1_20110824160834_Mg==.gif','','0','0','0','1314174160');
INSERT INTO `xulingqb_example` VALUES ('38','2','ƽ������','http://www.pingan.com/','example/1_20110824160812_Mw==.gif','','0','0','0','1314174271');
INSERT INTO `xulingqb_example` VALUES ('39','3','���ᣨ�й���','http://www.sony.com.cn/careers/index.html','example/1_20110824160825_NA==.gif','','0','0','0','1314174866');
INSERT INTO `xulingqb_example_sort` VALUES ('2','��С��ҵ','0');
INSERT INTO `xulingqb_example_sort` VALUES ('3','���й�˾','0');
INSERT INTO `xulingqb_form_config` VALUES ('module_close','0','');
INSERT INTO `xulingqb_form_config` VALUES ('module_id','21','');
INSERT INTO `xulingqb_form_config` VALUES ('Info_webOpen','1','');
INSERT INTO `xulingqb_form_config` VALUES ('Info_webname','�������','');
INSERT INTO `xulingqb_form_config` VALUES ('module_pre','form_','');
INSERT INTO `xulingqb_form_content` VALUES ('27','','3','2','1237260673','1237260673','1','admin','','1','192.168.0.99');
INSERT INTO `xulingqb_form_content` VALUES ('25','','3','2','1237214289','1237214289','1','admin','','1','192.168.0.99');
INSERT INTO `xulingqb_form_content` VALUES ('18','','3','0','1236936110','1236936110','1','admin','','0','192.168.0.99');
INSERT INTO `xulingqb_form_content_1` VALUES ('18','1','�ۺ�ͷ�','','222223','54325@qq.com','133444444443');
INSERT INTO `xulingqb_form_content_1` VALUES ('25','1','�ۺ�ͷ�','hhhhhhhhhhhhhhhhhh','222223','54325@qq.com','13377777777');
INSERT INTO `xulingqb_form_content_1` VALUES ('27','1','�ۺ�ͷ�','192.168.0.99/55 all righ\nts reserved \n��ICP��05047353�� \nPowered by PHP168','222223','54325@qq.com','13377777777');
INSERT INTO `xulingqb_form_module` VALUES ('1','�������','0','','a:3:{s:8:\"field_db\";a:5:{s:10:\"advicetype\";a:14:{s:5:\"title\";s:4:\"���\";s:10:\"field_name\";s:10:\"advicetype\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:34:\"��ǰ�ͷ�\r\n�ۺ�ͷ�\r\n��Ʒ����\r\n����\";s:10:\"form_value\";s:4:\"����\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:9:\"orderlist\";s:2:\"10\";s:9:\"allowview\";N;}s:8:\"mobphone\";a:15:{s:5:\"title\";s:8:\"��ĵ绰\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:25;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:5:\"email\";a:14:{s:5:\"title\";s:8:\"�������\";s:10:\"field_name\";s:5:\"email\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:7:\"content\";a:14:{s:5:\"title\";s:4:\"����\";s:10:\"field_name\";s:7:\"content\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";s:1:\"6\";s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:8:\"��ĳƺ�\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:11:\"listshow_db\";a:2:{s:10:\"advicetype\";s:4:\"���\";s:8:\"truename\";s:8:\"��ĳƺ�\";}}','','0','','0','1','����','3');
INSERT INTO `xulingqb_form_module` VALUES ('2','���߱���','0','','a:2:{s:8:\"field_db\";a:4:{s:7:\"my_name\";a:14:{s:5:\"title\";s:4:\"����\";s:10:\"field_name\";s:7:\"my_name\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";i:10;s:9:\"allowview\";N;}s:8:\"my_phone\";a:14:{s:5:\"title\";s:8:\"��ϵ�绰\";s:10:\"field_name\";s:8:\"my_phone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";i:9;s:9:\"allowview\";N;}s:7:\"my_mail\";a:14:{s:5:\"title\";s:8:\"��ϵ����\";s:10:\"field_name\";s:7:\"my_mail\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"30\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:7:\"content\";a:13:{s:5:\"title\";s:8:\"��ע��Ϣ\";s:10:\"field_name\";s:7:\"content\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:6:\"ieedit\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";i:-1;s:9:\"allowview\";N;}}s:7:\"is_html\";a:1:{s:7:\"content\";s:8:\"��ע��Ϣ\";}}','','0','','0','0','���','');
INSERT INTO `xulingqb_form_reply` VALUES ('6','25','3','1237255555','1','admin','<p><u>yyyyyy</u></p>\r\n<p><u>yyyyyyyy</u></p><strong>\r\n<hr width=\"100%\" color=#98fb98 SIZE=1 />\r\n</strong>','192.168.0.99');
INSERT INTO `xulingqb_form_reply` VALUES ('10','27','3','1239591974','1','admin','ffffffffffff ','192.168.0.99');
INSERT INTO `xulingqb_friendlink` VALUES ('12','0','PHPWIND�ٷ���̳','http://www.phpwind.net/','http://www.phpwind.net/logo.gif','PHPWIND�ٷ���̳','32','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('5','0','�벩CMS','http://www.qibosoft.com','../images/default/friendlink.gif','����������CMS��վϵͳ�ṩ��!','40','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('16','3','��������','http://www.sudu.cn/','','','0','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('17','3','������̳','http://www.dvbbs.net/','','������̳','0','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('21','2','�ױ�֧��','http://www.yeepay.com/','friendlink/1_20090418160410_UxB8E.gif','�ױ�֧��','39','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('25','2','վ����','http://admin5.com/','friendlink/1_20090418160400_wqpAk.gif','վ����','37','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('26','2','�й�վ��վ','http://www.chinaz.com/','friendlink/1_20090418160432_JNCry.gif','�й�վ��վ','38','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('27','2','WEB������','http://www.cncms.com.cn/','friendlink/1_20090418160451_64IKO.gif','WEB������','34','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('29','2','�е绪ͨ','http://www.chinaccnet.com/','','�е绪ͨ','0','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('32','2','�쳵����','http://union.flashget.com/','','�쳵����','0','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('34','3','CNZZ','http://www.cnzz.cn/','','CNZZ','26','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink_sort` VALUES ('2','��������','0');
INSERT INTO `xulingqb_friendlink_sort` VALUES ('3','�������','0');
INSERT INTO `xulingqb_group` VALUES ('2','1','�ο�','0','0','0','a:54:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:17:\"SearchArticleType\";s:1:\"1\";s:16:\"PostArticleYzImg\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"0\";s:17:\"SetArticleKeyword\";s:1:\"0\";s:20:\"AddArticleKeywordNum\";s:0:\"\";s:21:\"AddArticleCopyfromNum\";s:0:\"\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:13:\"PostNoDelCode\";s:1:\"0\";s:7:\"SetVote\";s:1:\"0\";s:11:\"SetHtmlName\";s:1:\"0\";s:16:\"PassContributeSP\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:2:\"10\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"0\";s:15:\"buy_postauto_yz\";s:1:\"0\";s:15:\"post_pingpai_yz\";s:1:\"0\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:0:\"\";s:12:\"post_buy_num\";s:0:\"\";s:13:\"post_news_num\";s:0:\"\";s:14:\"post_photo_num\";s:0:\"\";s:11:\"post_hr_num\";s:0:\"\";s:17:\"post_zhanghui_num\";s:0:\"\";s:12:\"post_ZLG_num\";s:0:\"\";s:16:\"post_pingpai_num\";s:0:\"\";s:19:\"post_baojiadian_num\";s:0:\"\";s:19:\"post_xunjiadian_num\";s:0:\"\";s:24:\"post_info_collection_num\";s:0:\"\";}','0','');
INSERT INTO `xulingqb_group` VALUES ('3','1','��������Ա','0','0','0','a:26:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"1\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"1\";s:16:\"useHomepageStyle\";s:1:\"1\";s:21:\"view_buy_view_contact\";s:1:\"1\";s:13:\"post_sell_num\";s:3:\"999\";s:12:\"post_buy_num\";s:3:\"999\";s:13:\"post_news_num\";s:3:\"999\";s:14:\"post_photo_num\";s:3:\"999\";s:11:\"post_hr_num\";s:3:\"999\";s:17:\"post_zhanghui_num\";s:3:\"999\";s:12:\"post_ZLG_num\";s:3:\"999\";s:16:\"post_pingpai_num\";s:3:\"999\";s:19:\"post_baojiadian_num\";s:3:\"999\";s:19:\"post_xunjiadian_num\";s:3:\"999\";s:24:\"post_info_collection_num\";s:3:\"999\";s:18:\"allow_get_homepage\";s:1:\"1\";}','1','a:64:{s:13:\"center_config\";s:1:\"1\";s:8:\"user_reg\";s:1:\"1\";s:11:\"module_list\";s:1:\"1\";s:9:\"hack_list\";s:1:\"1\";s:9:\"blend_set\";s:1:\"1\";s:14:\"friendlink_mod\";s:1:\"1\";s:14:\"alonepage_list\";s:1:\"1\";s:9:\"mysql_out\";s:1:\"1\";s:10:\"mysql_into\";s:1:\"1\";s:9:\"mysql_del\";s:1:\"1\";s:9:\"mysql_sql\";s:1:\"1\";s:9:\"menu_list\";s:1:\"1\";s:14:\"adminmenu_list\";s:1:\"1\";s:15:\"membermenu_list\";s:1:\"1\";s:11:\"member_list\";s:1:\"1\";s:8:\"regfield\";s:1:\"1\";s:16:\"member_addmember\";s:1:\"1\";s:10:\"group_list\";s:1:\"1\";s:16:\"group_list_admin\";s:1:\"1\";s:9:\"group_add\";s:1:\"1\";s:10:\"alipay_set\";s:1:\"1\";s:15:\"attachment_list\";s:1:\"1\";s:9:\"area_list\";s:1:\"1\";s:10:\"upgrade_ol\";s:1:\"1\";s:12:\"message_send\";s:1:\"1\";s:9:\"mail_send\";s:1:\"1\";s:8:\"sms_send\";s:1:\"1\";s:8:\"cnzz_set\";s:1:\"1\";s:15:\"style_editstyle\";s:1:\"1\";s:13:\"template_list\";s:1:\"1\";s:15:\"logs_login_logs\";s:1:\"1\";s:18:\"logs_admin_do_logs\";s:1:\"1\";s:8:\"examples\";s:1:\"1\";s:5:\"login\";s:1:\"1\";s:7:\"crontab\";s:1:\"1\";s:25:\"Module_news_center_config\";s:1:\"1\";s:24:\"Module_news_center_label\";s:1:\"1\";s:21:\"Module_news_sort_post\";s:1:\"1\";s:16:\"Module_news_list\";s:1:\"1\";s:19:\"Module_news_comment\";s:1:\"1\";s:25:\"Module_news_sort_listsort\";s:1:\"1\";s:25:\"Module_sell_center_config\";s:1:\"1\";s:24:\"Module_sell_center_label\";s:1:\"1\";s:16:\"Module_sell_list\";s:1:\"1\";s:19:\"Module_sell_comment\";s:1:\"1\";s:16:\"Module_sell_sort\";s:1:\"1\";s:18:\"Module_sell_report\";s:1:\"1\";s:17:\"Module_sell_order\";s:1:\"1\";s:18:\"Module_sell_module\";s:1:\"1\";s:23:\"Module_hr_center_config\";s:1:\"1\";s:22:\"Module_hr_center_label\";s:1:\"1\";s:14:\"Module_hr_sort\";s:1:\"1\";s:19:\"Module_hr_list_list\";s:1:\"1\";s:18:\"Module_hr_joinlist\";s:1:\"1\";s:25:\"Module_hr_list_listmember\";s:1:\"1\";s:14:\"Module_hr_city\";s:1:\"1\";s:16:\"Module_hr_module\";s:1:\"1\";s:23:\"Module_guestbook_center\";s:1:\"1\";s:21:\"Module_guestbook_sort\";s:1:\"1\";s:24:\"Module_guestbook_content\";s:1:\"1\";s:18:\"Module_form_center\";s:1:\"1\";s:23:\"Module_form_form_module\";s:1:\"1\";s:24:\"Module_form_form_content\";s:1:\"1\";s:6:\"mymenu\";N;}');
INSERT INTO `xulingqb_group` VALUES ('8','0','��ͨ��Ա','0','50','0','a:55:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:17:\"SearchArticleType\";s:1:\"1\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"1\";s:17:\"SetArticleKeyword\";s:1:\"1\";s:20:\"AddArticleKeywordNum\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:21:\"AddArticleCopyfromNum\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:17:\"CollectArticleNum\";s:2:\"30\";s:15:\"CreatSpecialNum\";s:1:\"7\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:11:\"SetHtmlName\";s:1:\"0\";s:7:\"SetVote\";s:1:\"1\";s:16:\"PassContributeSP\";s:1:\"0\";s:13:\"PostNoDelCode\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"0\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:1:\"5\";s:12:\"post_buy_num\";s:1:\"5\";s:13:\"post_news_num\";s:1:\"5\";s:14:\"post_photo_num\";s:2:\"10\";s:11:\"post_hr_num\";s:1:\"5\";s:17:\"post_zhanghui_num\";s:1:\"5\";s:12:\"post_ZLG_num\";s:1:\"0\";s:16:\"post_pingpai_num\";s:1:\"5\";s:19:\"post_baojiadian_num\";s:1:\"5\";s:19:\"post_xunjiadian_num\";s:1:\"5\";s:24:\"post_info_collection_num\";s:2:\"30\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('module_id','18','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('viewNoPassGuestBook','0','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('yzImgGuestBook','1','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('module_pre','guestbook_','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('ifOpenGuestBook','1','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('module_close','0','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('Info_webOpen','1','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('groupPassPassGuestBook','3','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('Info_webname','���Ա�','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('GuestBookNum','20','');
INSERT INTO `xulingqb_guestbook_content` VALUES ('12','0','1','','','','','1','admin','192.168.0.99','��������ǿ�ƽ�����վ��̨�ķ�����:�޸�/admin/global.php�ļ�,����$ForceEnter=0;��0�ĳ�1����,ǿ�ƽ�����վ�ĺ�̨.','1','1240206881','1240206881','','');