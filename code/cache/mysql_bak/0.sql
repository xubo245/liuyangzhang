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


INSERT INTO `xulingqb_admin_menu` VALUES ('12','0','内容管理','','','0','99','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('83','0','标签设置','','','0','100','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('84','83','新闻中心','../news/index.php?jobs=show','','0','18','3','1');
INSERT INTO `xulingqb_admin_menu` VALUES ('85','83','产品中心','index.php?lfj=module_admin&dirname=sell&file=center&job=label','','0','17','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('87','0','评论管理','','','0','7','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('88','87','产品评论','index.php?lfj=module_admin&dirname=sell&file=comment&job=list','','0','99','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('112','111','新闻分类','index.php?lfj=module_admin&dirname=news&file=sort&job=listsort&type=all','','0','-1','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('111','0','分类管理','','','0','88','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('75','12','新闻资讯','index.php?lfj=module_admin&dirname=news&file=list&job=list','','0','-1','3','1');
INSERT INTO `xulingqb_admin_menu` VALUES ('144','12','成功案例','index.php?lfj=examples&job=list','','0','0','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('145','0','功能菜单','','','0','0','-3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('119','12','职位管理','index.php?lfj=module_admin&dirname=hr&file=list&job=list','','0','89','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('120','12','求职简历','index.php?lfj=module_admin&dirname=hr&file=joinlist&job=list','','0','88','3','1');
INSERT INTO `xulingqb_admin_menu` VALUES ('117','12','产品管理','index.php?lfj=module_admin&dirname=sell&file=list&job=list','','0','99','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('118','12','意见反馈','index.php?lfj=module_admin&dirname=form&file=form_module&file=form_content&job=list&mid=1','','0','98','3','1');
INSERT INTO `xulingqb_admin_menu` VALUES ('130','111','产品分类','index.php?lfj=module_admin&dirname=sell&file=sort&job=listsort','','0','99','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('102','83','网站主页','../index.php?&ch=1&chtype=0&jobs=show','','0','19','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('143','87','新闻评论','index.php?lfj=module_admin&dirname=news&file=comment&job=list','','0','69','3','0');
INSERT INTO `xulingqb_admin_menu` VALUES ('103','83','人才招聘','index.php?lfj=module_admin&dirname=hr&file=center&job=label','','0','14','3','1');
INSERT INTO `xulingqb_admin_menu` VALUES ('132','111','职位分类','index.php?lfj=module_admin&dirname=hr&file=sort&job=listsort&yellow=0','','0','89','3','0');
INSERT INTO `xulingqb_alonepage` VALUES ('1','0','公司简介','公司简介','1314175571','0','','','','template/default/introduce.htm','','introduce.htm','','','','','219','0');
INSERT INTO `xulingqb_alonepage` VALUES ('2','0','联系我们','联系我们','1314175561','0','','','','template/default/contact.htm','','contact.htm','','','','','104','0');
INSERT INTO `xulingqb_area` VALUES ('1','0','北京市','1','18','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `xulingqb_area` VALUES ('2','0','上海市','1','19','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `xulingqb_area` VALUES ('3','0','天津市','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('4','0','重庆市','1','40','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('5','0','河北省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('6','0','山西省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('7','0','内蒙古自治区','1','12','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('8','0','辽宁省','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('9','0','吉林省','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('10','0','黑龙江省','1','13','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('11','0','江苏省','1','13','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('12','0','浙江省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('13','0','安徽省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('14','0','福建省','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('15','0','江西省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('16','0','山东省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('17','0','河南省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('18','0','湖北省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('19','0','湖南省','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('20','0','广东省','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('21','0','广西壮族自治区','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('22','0','海南省','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('23','0','四川省','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('24','0','贵州省','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('25','0','云南省','1','16','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('26','0','西藏自治区','1','7','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('27','0','陕西省','1','10','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('28','0','甘肃省','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('29','0','青海省','1','8','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('30','0','宁夏回族自治区','1','5','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('31','0','新疆维吾尔自治区','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('32','0','台湾省','1','25','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('33','0','香港特别行政区','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('34','0','澳门特别行政区','1','5','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('35','1','东城区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('36','1','西城区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('37','1','崇文区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('38','1','宣武区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('39','1','朝阳区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('40','1','丰台区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('41','1','石景山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('42','1','海淀区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('43','1','门头沟区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('44','1','房山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('45','1','通州区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('46','1','顺义区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('47','1','昌平区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('48','1','大兴区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('49','1','怀柔区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('50','1','平谷区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('51','1','密云县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('52','1','延庆县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('53','2','黄浦区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('54','2','卢湾区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('55','2','徐汇区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('56','2','长宁区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('57','2','静安区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('58','2','普陀区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('59','2','闸北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('60','2','虹口区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('61','2','杨浦区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('62','2','闵行区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('63','2','宝山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('64','2','嘉定区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('65','2','浦东新区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('66','2','金山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('67','2','松江区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('68','2','青浦区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('69','2','南汇区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('70','2','奉贤区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('71','2','崇明县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('72','3','和平区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('73','3','河东区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('74','3','河西区','2','0','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `xulingqb_area` VALUES ('75','3','南开区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('76','3','河北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('77','3','红桥区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('78','3','塘沽区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('79','3','汉沽区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('80','3','大港区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('81','3','东丽区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('82','3','西青区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('83','3','津南区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('84','3','北辰区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('85','3','武清区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('86','3','宝坻区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('87','3','宁河县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('88','3','静海县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('89','3','蓟县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('90','4','万州区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('91','4','涪陵区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('92','4','渝中区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('93','4','大渡口区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('94','4','江北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('95','4','沙坪坝区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('96','4','九龙坡区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('97','4','南岸区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('98','4','北碚区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('99','4','万盛区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('100','4','双桥区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('101','4','渝北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('102','4','巴南区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('103','4','黔江区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('104','4','长寿区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('105','4','綦江县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('106','4','潼南县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('107','4','铜梁县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('108','4','大足县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('109','4','荣昌县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('110','4','璧山县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('111','4','梁平县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('112','4','城口县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('113','4','丰都县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('114','4','垫江县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('115','4','武隆县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('116','4','忠县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('117','4','开县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('118','4','云阳县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('119','4','奉节县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('120','4','巫山县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('121','4','巫溪县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('122','4','石柱土家族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('123','4','秀山土家族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('124','4','酉阳土家族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('125','4','彭水苗族土家族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('126','4','江津市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('127','4','合川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('128','4','永川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('129','4','南川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('130','5','石家庄市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('131','5','唐山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('132','5','秦皇岛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('133','5','邯郸市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('134','5','邢台市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('135','5','保定市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('136','5','张家口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('137','5','承德市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('138','5','沧州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('139','5','廊坊市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('140','5','衡水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('141','6','太原市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('142','6','大同市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('143','6','阳泉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('144','6','长治市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('145','6','晋城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('146','6','朔州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('147','6','晋中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('148','6','运城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('149','6','忻州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('150','6','临汾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('151','6','吕梁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('152','7','呼和浩特市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('153','7','包头市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('154','7','乌海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('155','7','赤峰市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('156','7','通辽市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('157','7','鄂尔多斯市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('158','7','呼伦贝尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('159','7','巴彦淖尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('160','7','乌兰察布市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('161','7','兴安盟','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('162','7','锡林郭勒盟','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('163','7','阿拉善盟','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('164','8','沈阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('165','8','大连市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('166','8','鞍山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('167','8','抚顺市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('168','8','本溪市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('169','8','丹东市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('170','8','锦州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('171','8','营口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('172','8','阜新市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('173','8','辽阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('174','8','盘锦市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('175','8','铁岭市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('176','8','朝阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('177','8','葫芦岛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('178','9','长春市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('179','9','吉林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('180','9','四平市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('181','9','辽源市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('182','9','通化市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('183','9','白山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('184','9','松原市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('185','9','白城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('186','9','延边朝鲜族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('187','10','哈尔滨市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('188','10','齐齐哈尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('189','10','鸡西市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('190','10','鹤岗市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('191','10','双鸭山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('192','10','大庆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('193','10','伊春市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('194','10','佳木斯市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('195','10','七台河市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('196','10','牡丹江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('197','10','黑河市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('198','10','绥化市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('199','10','大兴安岭地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('200','11','南京市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('201','11','无锡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('202','11','徐州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('203','11','常州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('204','11','苏州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('205','11','南通市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('206','11','连云港市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('207','11','淮安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('208','11','盐城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('209','11','扬州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('210','11','镇江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('211','11','泰州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('212','11','宿迁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('213','12','杭州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('214','12','宁波市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('215','12','温州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('216','12','嘉兴市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('217','12','湖州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('218','12','绍兴市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('219','12','金华市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('220','12','衢州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('221','12','舟山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('222','12','台州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('223','12','丽水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('224','13','合肥市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('225','13','芜湖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('226','13','蚌埠市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('227','13','淮南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('228','13','马鞍山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('229','13','淮北市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('230','13','铜陵市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('231','13','安庆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('232','13','黄山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('233','13','滁州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('234','13','阜阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('235','13','宿州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('236','13','巢湖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('237','13','六安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('238','13','亳州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('239','13','池州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('240','13','宣城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('241','14','福州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('242','14','厦门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('243','14','莆田市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('244','14','三明市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('245','14','泉州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('246','14','漳州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('247','14','南平市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('248','14','龙岩市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('249','14','宁德市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('250','15','南昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('251','15','景德镇市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('252','15','萍乡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('253','15','九江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('254','15','新余市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('255','15','鹰潭市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('256','15','赣州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('257','15','吉安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('258','15','宜春市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('259','15','抚州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('260','15','上饶市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('261','16','济南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('262','16','青岛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('263','16','淄博市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('264','16','枣庄市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('265','16','东营市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('266','16','烟台市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('267','16','潍坊市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('268','16','济宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('269','16','泰安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('270','16','威海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('271','16','日照市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('272','16','莱芜市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('273','16','临沂市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('274','16','德州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('275','16','聊城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('276','16','滨州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('277','16','荷泽市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('278','17','郑州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('279','17','开封市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('280','17','洛阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('281','17','平顶山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('282','17','安阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('283','17','鹤壁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('284','17','新乡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('285','17','焦作市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('286','17','濮阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('287','17','许昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('288','17','漯河市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('289','17','三门峡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('290','17','南阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('291','17','商丘市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('292','17','信阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('293','17','周口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('294','17','驻马店市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('295','18','武汉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('296','18','黄石市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('297','18','十堰市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('298','18','宜昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('299','18','襄樊市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('300','18','鄂州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('301','18','荆门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('302','18','孝感市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('303','18','荆州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('304','18','黄冈市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('305','18','咸宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('306','18','随州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('307','18','恩施土家族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('308','18','仙桃市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('309','18','潜江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('310','18','天门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('311','18','神农架林区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('312','19','长沙市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('313','19','株洲市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('314','19','湘潭市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('315','19','衡阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('316','19','邵阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('317','19','岳阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('318','19','常德市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('319','19','张家界市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('320','19','益阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('321','19','郴州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('322','19','永州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('323','19','怀化市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('324','19','娄底市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('325','19','湘西土家族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('326','20','广州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('327','20','韶关市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('328','20','深圳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('329','20','珠海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('330','20','汕头市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('331','20','佛山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('332','20','江门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('333','20','湛江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('334','20','茂名市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('335','20','肇庆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('336','20','惠州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('337','20','梅州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('338','20','汕尾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('339','20','河源市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('340','20','阳江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('341','20','清远市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('342','20','东莞市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('343','20','中山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('344','20','潮州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('345','20','揭阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('346','20','云浮市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('347','21','南宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('348','21','柳州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('349','21','桂林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('350','21','梧州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('351','21','北海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('352','21','防城港市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('353','21','钦州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('354','21','贵港市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('355','21','玉林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('356','21','百色市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('357','21','贺州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('358','21','河池市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('359','21','来宾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('360','21','崇左市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('361','22','海口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('362','22','三亚市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('363','22','五指山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('364','22','琼海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('365','22','儋州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('366','22','文昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('367','22','万宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('368','22','东方市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('369','22','定安县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('370','22','屯昌县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('371','22','澄迈县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('372','22','临高县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('373','22','白沙黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('374','22','昌江黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('375','22','乐东黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('376','22','陵水黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('377','22','保亭黎族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('378','22','琼中黎族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('379','22','西沙群岛','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('380','22','南沙群岛','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('381','22','中沙群岛的岛礁及其海域','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('382','23','成都市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('383','23','自贡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('384','23','攀枝花市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('385','23','泸州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('386','23','德阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('387','23','绵阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('388','23','广元市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('389','23','遂宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('390','23','内江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('391','23','乐山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('392','23','南充市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('393','23','眉山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('394','23','宜宾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('395','23','广安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('396','23','达州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('397','23','雅安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('398','23','巴中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('399','23','资阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('400','23','阿坝藏族羌族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('401','23','甘孜藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('402','23','凉山彝族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('403','24','贵阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('404','24','六盘水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('405','24','遵义市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('406','24','安顺市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('407','24','铜仁地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('408','24','黔西南布依族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('409','24','毕节地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('410','24','黔东南苗族侗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('411','24','黔南布依族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('412','25','昆明市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('413','25','曲靖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('414','25','玉溪市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('415','25','保山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('416','25','昭通市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('417','25','丽江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('418','25','思茅市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('419','25','临沧市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('420','25','楚雄彝族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('421','25','红河哈尼族彝族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('422','25','文山壮族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('423','25','西双版纳傣族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('424','25','大理白族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('425','25','德宏傣族景颇族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('426','25','怒江傈僳族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('427','25','迪庆藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('428','26','拉萨市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('429','26','昌都地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('430','26','山南地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('431','26','日喀则地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('432','26','那曲地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('433','26','阿里地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('434','26','林芝地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('435','27','西安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('436','27','铜川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('437','27','宝鸡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('438','27','咸阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('439','27','渭南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('440','27','延安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('441','27','汉中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('442','27','榆林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('443','27','安康市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('444','27','商洛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('445','28','兰州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('446','28','嘉峪关市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('447','28','金昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('448','28','白银市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('449','28','天水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('450','28','武威市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('451','28','张掖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('452','28','平凉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('453','28','酒泉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('454','28','庆阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('455','28','定西市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('456','28','陇南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('457','28','临夏回族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('458','28','甘南藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('459','29','西宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('460','29','海东地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('461','29','海北藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('462','29','黄南藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('463','29','海南藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('464','29','果洛藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('465','29','玉树藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('466','29','海西蒙古族藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('467','30','银川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('468','30','石嘴山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('469','30','吴忠市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('470','30','固原市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('471','30','中卫市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('472','31','乌鲁木齐市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('473','31','克拉玛依市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('474','31','吐鲁番地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('475','31','哈密地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('476','31','昌吉回族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('477','31','博尔塔拉蒙古自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('478','31','巴音郭楞蒙古自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('479','31','阿克苏地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('480','31','克孜勒苏柯尔克孜自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('481','31','喀什地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('482','31','和田地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('483','31','伊犁哈萨克自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('484','31','塔城地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('485','31','阿勒泰地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('486','31','石河子市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('487','31','阿拉尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('488','31','图木舒克市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('489','31','五家渠市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('490','32','台北市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('491','32','高雄市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('492','32','基隆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('493','32','新竹市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('494','32','台中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('495','32','嘉义市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('496','32','台南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('497','32','台北县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('498','32','桃园县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('499','32','新竹县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('500','32','苗栗县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('501','32','台中县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('502','32','彰化县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('503','32','南投县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('504','32','云林县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('505','32','嘉义县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('506','32','台南县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('507','32','高雄县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('508','32','屏东县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('509','32','宜兰县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('510','32','花莲县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('511','32','台东县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('512','32','澎湖县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('513','32','金门县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('514','32','连江县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('515','33','中西区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('516','33','东区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('517','33','南区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('518','33','湾仔区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('519','33','九龙城区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('520','33','观塘区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('521','33','深水埗区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('522','33','黄大仙区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('523','33','油尖旺区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('524','33','离岛区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('525','33','葵青区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('526','33','北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('527','33','西贡区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('528','33','沙田区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('529','33','大埔区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('530','33','荃湾区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('531','33','屯门区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('532','33','元朗区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('533','34','澳门市花地玛堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('534','34','澳门市圣安多尼堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('535','34','澳门市大堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('536','34','澳门市望德堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `xulingqb_area` VALUES ('537','34','澳门市风顺堂区','2','0','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
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
INSERT INTO `xulingqb_config` VALUES ('PostNotice','<font face=SimSun>\n<p><font face=SimSun>1、如果是转载内容，请务必填写稿件来源网址及出处。<br />2、所引起的版权纠纷与法律责任由发布者承担。</font></p></font>','');
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
INSERT INTO `xulingqb_config` VALUES ('guide_word','网站首页|/|0||51|index\n公司简介|/do/alonepage.php?id=1|0||9|page1\n产品中心|/sell/|0||10|sell\n新闻中心|/news/|0||11|news\n企业招聘|/hr/|0||52|hr\n意见反馈|/form/form.php?mid=1|0||13|fom1\n成功案例|/do/examples.php|0||53|examples\n联系我们|/do/alonepage.php?id=2|0||14|page2','');
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
INSERT INTO `xulingqb_config` VALUES ('ArticleHeart','欠扁|1.gif\n支持|2.gif\n很棒|3.gif\n找骂|4.gif\n搞笑|5.gif\n软文|6.gif\n不解|7.gif\n吃惊|8.gif','');
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
INSERT INTO `xulingqb_config` VALUES ('memberNotice','欢迎大家踊跃投稿,投稿可得积分奖励!!','');
INSERT INTO `xulingqb_config` VALUES ('companyTrade','机械及行业设备\n普通机械制造\n通用零部件\n五金配件\n金属工具\n电动工具\n电子元件\n电子器件\n照明及照明器具\n安全防护设备\n包装\n造纸及纸制品\n电机、电工电器\n电工器材\n通用仪器仪表\n专用仪器仪表\n交通运输设备、零部件\n办公、文教用品\n数码、电脑及网络配件\n日常家居用品\n木材、木制品\n家具\n家用电器\n礼品、工艺美术品\n食品、饮料\n通信产品\n玩具\n印刷设备\n运动、休闲、保健用品\n鞋、帽\n服装\n日用化学品\n农用化学品\n胶粘剂\n染料、颜料、涂料和油墨\n催化剂和助剂\n库存精细化学品\n食品和饲料添加剂\n塑料\n橡胶制品\n环保、环保设备\n建筑、建材\n能源\n粮油、农制品\n金属\n医药、保健及医疗设备\n纺织\n皮革\n煤焦化产品\n日常服务\n广告服务\n教育培训\n认证\n创意设计\n物流服务\n进出口代理\n维修及安装服务\n广告、展览器材\n专业录音、放音设备\n光学摄影器材\n编辑制作设备\n播出、前端设备\n建筑、装饰业\n房地产\n安装工程\n邮电通信\n事务所、公证\n卫生、体育、社会、福利\n公共服务业\n金融、保险\n实业公司、商业贸易\n高新技术开发区\n卡类市场','');
INSERT INTO `xulingqb_config` VALUES ('miibeian_gov_cn','粤ICP备10080701号','');
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
INSERT INTO `xulingqb_config` VALUES ('close_why','网站维护当中,\n暂停访问.','');
INSERT INTO `xulingqb_config` VALUES ('web_open','1','');
INSERT INTO `xulingqb_config` VALUES ('MoneyDW','个','');
INSERT INTO `xulingqb_config` VALUES ('MoneyName','积分','');
INSERT INTO `xulingqb_config` VALUES ('UserEmailAutoPass','1','');
INSERT INTO `xulingqb_config` VALUES ('UseMoneyType','cms','');
INSERT INTO `xulingqb_config` VALUES ('BuySpacesizeMoney','50','');
INSERT INTO `xulingqb_config` VALUES ('webmail','admin@admin.com','');
INSERT INTO `xulingqb_config` VALUES ('description','建企业站就用齐博企业版','');
INSERT INTO `xulingqb_config` VALUES ('metakeywords','企业建站首选','');
INSERT INTO `xulingqb_config` VALUES ('webname','齐博企业版','');
INSERT INTO `xulingqb_config` VALUES ('hideFid','','');
INSERT INTO `xulingqb_crontab` VALUES ('2','备份数据库','0','0300','0','1292489459','inc/crontab/mysqlbak.php','','1');
INSERT INTO `xulingqb_crontab` VALUES ('3','清除CK编辑器多余的缩略图','0','0330','0','1292489510','inc/crontab/delete_ckeditor_tmp.php','','1');
INSERT INTO `xulingqb_crontab` VALUES ('4','清空附件表','0','','1296504125','0','inc/crontab/delete_table_upfile.php','','1');
INSERT INTO `xulingqb_example` VALUES ('36','3','广汽丰田','http://www.gac-toyota.com.cn/','example/1_20110824160838_MQ==.gif','','0','0','0','1314174053');
INSERT INTO `xulingqb_example` VALUES ('37','2','赛普管理咨询有限公司','http://www.chinasap.cn/','example/1_20110824160834_Mg==.gif','','0','0','0','1314174160');
INSERT INTO `xulingqb_example` VALUES ('38','2','平安保险','http://www.pingan.com/','example/1_20110824160812_Mw==.gif','','0','0','0','1314174271');
INSERT INTO `xulingqb_example` VALUES ('39','3','索尼（中国）','http://www.sony.com.cn/careers/index.html','example/1_20110824160825_NA==.gif','','0','0','0','1314174866');
INSERT INTO `xulingqb_example_sort` VALUES ('2','中小企业','0');
INSERT INTO `xulingqb_example_sort` VALUES ('3','上市公司','0');
INSERT INTO `xulingqb_form_config` VALUES ('module_close','0','');
INSERT INTO `xulingqb_form_config` VALUES ('module_id','21','');
INSERT INTO `xulingqb_form_config` VALUES ('Info_webOpen','1','');
INSERT INTO `xulingqb_form_config` VALUES ('Info_webname','意见反馈','');
INSERT INTO `xulingqb_form_config` VALUES ('module_pre','form_','');
INSERT INTO `xulingqb_form_content` VALUES ('27','','3','2','1237260673','1237260673','1','admin','','1','192.168.0.99');
INSERT INTO `xulingqb_form_content` VALUES ('25','','3','2','1237214289','1237214289','1','admin','','1','192.168.0.99');
INSERT INTO `xulingqb_form_content` VALUES ('18','','3','0','1236936110','1236936110','1','admin','','0','192.168.0.99');
INSERT INTO `xulingqb_form_content_1` VALUES ('18','1','售后客服','','222223','54325@qq.com','133444444443');
INSERT INTO `xulingqb_form_content_1` VALUES ('25','1','售后客服','hhhhhhhhhhhhhhhhhh','222223','54325@qq.com','13377777777');
INSERT INTO `xulingqb_form_content_1` VALUES ('27','1','售后客服','192.168.0.99/55 all righ\nts reserved \n京ICP备05047353号 \nPowered by PHP168','222223','54325@qq.com','13377777777');
INSERT INTO `xulingqb_form_module` VALUES ('1','意见反馈','0','','a:3:{s:8:\"field_db\";a:5:{s:10:\"advicetype\";a:14:{s:5:\"title\";s:4:\"类别\";s:10:\"field_name\";s:10:\"advicetype\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:34:\"售前客服\r\n售后客服\r\n产品质量\r\n其它\";s:10:\"form_value\";s:4:\"其它\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:9:\"orderlist\";s:2:\"10\";s:9:\"allowview\";N;}s:8:\"mobphone\";a:15:{s:5:\"title\";s:8:\"你的电话\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:25;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:5:\"email\";a:14:{s:5:\"title\";s:8:\"你的邮箱\";s:10:\"field_name\";s:5:\"email\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:7:\"content\";a:14:{s:5:\"title\";s:4:\"详情\";s:10:\"field_name\";s:7:\"content\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";s:1:\"6\";s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:8:\"你的称呼\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:11:\"listshow_db\";a:2:{s:10:\"advicetype\";s:4:\"类别\";s:8:\"truename\";s:8:\"你的称呼\";}}','','0','','0','1','处理','3');
INSERT INTO `xulingqb_form_module` VALUES ('2','在线报名','0','','a:2:{s:8:\"field_db\";a:4:{s:7:\"my_name\";a:14:{s:5:\"title\";s:4:\"姓名\";s:10:\"field_name\";s:7:\"my_name\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";i:10;s:9:\"allowview\";N;}s:8:\"my_phone\";a:14:{s:5:\"title\";s:8:\"联系电话\";s:10:\"field_name\";s:8:\"my_phone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";i:9;s:9:\"allowview\";N;}s:7:\"my_mail\";a:14:{s:5:\"title\";s:8:\"联系邮箱\";s:10:\"field_name\";s:7:\"my_mail\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"30\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:7:\"content\";a:13:{s:5:\"title\";s:8:\"附注信息\";s:10:\"field_name\";s:7:\"content\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:6:\"ieedit\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";i:-1;s:9:\"allowview\";N;}}s:7:\"is_html\";a:1:{s:7:\"content\";s:8:\"附注信息\";}}','','0','','0','0','审核','');
INSERT INTO `xulingqb_form_reply` VALUES ('6','25','3','1237255555','1','admin','<p><u>yyyyyy</u></p>\r\n<p><u>yyyyyyyy</u></p><strong>\r\n<hr width=\"100%\" color=#98fb98 SIZE=1 />\r\n</strong>','192.168.0.99');
INSERT INTO `xulingqb_form_reply` VALUES ('10','27','3','1239591974','1','admin','ffffffffffff ','192.168.0.99');
INSERT INTO `xulingqb_friendlink` VALUES ('12','0','PHPWIND官方论坛','http://www.phpwind.net/','http://www.phpwind.net/logo.gif','PHPWIND官方论坛','32','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('5','0','齐博CMS','http://www.qibosoft.com','../images/default/friendlink.gif','国内著名的CMS建站系统提供商!','40','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('16','3','华夏名网','http://www.sudu.cn/','','','0','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('17','3','动网论坛','http://www.dvbbs.net/','','动网论坛','0','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('21','2','易宝支付','http://www.yeepay.com/','friendlink/1_20090418160410_UxB8E.gif','易宝支付','39','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('25','2','站长网','http://admin5.com/','friendlink/1_20090418160400_wqpAk.gif','站长网','37','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('26','2','中国站长站','http://www.chinaz.com/','friendlink/1_20090418160432_JNCry.gif','中国站长站','38','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('27','2','WEB开发网','http://www.cncms.com.cn/','friendlink/1_20090418160451_64IKO.gif','WEB开发网','34','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('29','2','中电华通','http://www.chinaccnet.com/','','中电华通','0','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('32','2','快车下载','http://union.flashget.com/','','快车下载','0','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink` VALUES ('34','3','CNZZ','http://www.cnzz.cn/','','CNZZ','26','0','0','0','0','0','','1','0');
INSERT INTO `xulingqb_friendlink_sort` VALUES ('2','友情链接','0');
INSERT INTO `xulingqb_friendlink_sort` VALUES ('3','合作伙伴','0');
INSERT INTO `xulingqb_group` VALUES ('2','1','游客','0','0','0','a:54:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:17:\"SearchArticleType\";s:1:\"1\";s:16:\"PostArticleYzImg\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"0\";s:17:\"SetArticleKeyword\";s:1:\"0\";s:20:\"AddArticleKeywordNum\";s:0:\"\";s:21:\"AddArticleCopyfromNum\";s:0:\"\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:13:\"PostNoDelCode\";s:1:\"0\";s:7:\"SetVote\";s:1:\"0\";s:11:\"SetHtmlName\";s:1:\"0\";s:16:\"PassContributeSP\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:2:\"10\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"0\";s:15:\"buy_postauto_yz\";s:1:\"0\";s:15:\"post_pingpai_yz\";s:1:\"0\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:0:\"\";s:12:\"post_buy_num\";s:0:\"\";s:13:\"post_news_num\";s:0:\"\";s:14:\"post_photo_num\";s:0:\"\";s:11:\"post_hr_num\";s:0:\"\";s:17:\"post_zhanghui_num\";s:0:\"\";s:12:\"post_ZLG_num\";s:0:\"\";s:16:\"post_pingpai_num\";s:0:\"\";s:19:\"post_baojiadian_num\";s:0:\"\";s:19:\"post_xunjiadian_num\";s:0:\"\";s:24:\"post_info_collection_num\";s:0:\"\";}','0','');
INSERT INTO `xulingqb_group` VALUES ('3','1','超级管理员','0','0','0','a:26:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"1\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"1\";s:16:\"useHomepageStyle\";s:1:\"1\";s:21:\"view_buy_view_contact\";s:1:\"1\";s:13:\"post_sell_num\";s:3:\"999\";s:12:\"post_buy_num\";s:3:\"999\";s:13:\"post_news_num\";s:3:\"999\";s:14:\"post_photo_num\";s:3:\"999\";s:11:\"post_hr_num\";s:3:\"999\";s:17:\"post_zhanghui_num\";s:3:\"999\";s:12:\"post_ZLG_num\";s:3:\"999\";s:16:\"post_pingpai_num\";s:3:\"999\";s:19:\"post_baojiadian_num\";s:3:\"999\";s:19:\"post_xunjiadian_num\";s:3:\"999\";s:24:\"post_info_collection_num\";s:3:\"999\";s:18:\"allow_get_homepage\";s:1:\"1\";}','1','a:64:{s:13:\"center_config\";s:1:\"1\";s:8:\"user_reg\";s:1:\"1\";s:11:\"module_list\";s:1:\"1\";s:9:\"hack_list\";s:1:\"1\";s:9:\"blend_set\";s:1:\"1\";s:14:\"friendlink_mod\";s:1:\"1\";s:14:\"alonepage_list\";s:1:\"1\";s:9:\"mysql_out\";s:1:\"1\";s:10:\"mysql_into\";s:1:\"1\";s:9:\"mysql_del\";s:1:\"1\";s:9:\"mysql_sql\";s:1:\"1\";s:9:\"menu_list\";s:1:\"1\";s:14:\"adminmenu_list\";s:1:\"1\";s:15:\"membermenu_list\";s:1:\"1\";s:11:\"member_list\";s:1:\"1\";s:8:\"regfield\";s:1:\"1\";s:16:\"member_addmember\";s:1:\"1\";s:10:\"group_list\";s:1:\"1\";s:16:\"group_list_admin\";s:1:\"1\";s:9:\"group_add\";s:1:\"1\";s:10:\"alipay_set\";s:1:\"1\";s:15:\"attachment_list\";s:1:\"1\";s:9:\"area_list\";s:1:\"1\";s:10:\"upgrade_ol\";s:1:\"1\";s:12:\"message_send\";s:1:\"1\";s:9:\"mail_send\";s:1:\"1\";s:8:\"sms_send\";s:1:\"1\";s:8:\"cnzz_set\";s:1:\"1\";s:15:\"style_editstyle\";s:1:\"1\";s:13:\"template_list\";s:1:\"1\";s:15:\"logs_login_logs\";s:1:\"1\";s:18:\"logs_admin_do_logs\";s:1:\"1\";s:8:\"examples\";s:1:\"1\";s:5:\"login\";s:1:\"1\";s:7:\"crontab\";s:1:\"1\";s:25:\"Module_news_center_config\";s:1:\"1\";s:24:\"Module_news_center_label\";s:1:\"1\";s:21:\"Module_news_sort_post\";s:1:\"1\";s:16:\"Module_news_list\";s:1:\"1\";s:19:\"Module_news_comment\";s:1:\"1\";s:25:\"Module_news_sort_listsort\";s:1:\"1\";s:25:\"Module_sell_center_config\";s:1:\"1\";s:24:\"Module_sell_center_label\";s:1:\"1\";s:16:\"Module_sell_list\";s:1:\"1\";s:19:\"Module_sell_comment\";s:1:\"1\";s:16:\"Module_sell_sort\";s:1:\"1\";s:18:\"Module_sell_report\";s:1:\"1\";s:17:\"Module_sell_order\";s:1:\"1\";s:18:\"Module_sell_module\";s:1:\"1\";s:23:\"Module_hr_center_config\";s:1:\"1\";s:22:\"Module_hr_center_label\";s:1:\"1\";s:14:\"Module_hr_sort\";s:1:\"1\";s:19:\"Module_hr_list_list\";s:1:\"1\";s:18:\"Module_hr_joinlist\";s:1:\"1\";s:25:\"Module_hr_list_listmember\";s:1:\"1\";s:14:\"Module_hr_city\";s:1:\"1\";s:16:\"Module_hr_module\";s:1:\"1\";s:23:\"Module_guestbook_center\";s:1:\"1\";s:21:\"Module_guestbook_sort\";s:1:\"1\";s:24:\"Module_guestbook_content\";s:1:\"1\";s:18:\"Module_form_center\";s:1:\"1\";s:23:\"Module_form_form_module\";s:1:\"1\";s:24:\"Module_form_form_content\";s:1:\"1\";s:6:\"mymenu\";N;}');
INSERT INTO `xulingqb_group` VALUES ('8','0','普通会员','0','50','0','a:55:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:17:\"SearchArticleType\";s:1:\"1\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"1\";s:17:\"SetArticleKeyword\";s:1:\"1\";s:20:\"AddArticleKeywordNum\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:21:\"AddArticleCopyfromNum\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:17:\"CollectArticleNum\";s:2:\"30\";s:15:\"CreatSpecialNum\";s:1:\"7\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:11:\"SetHtmlName\";s:1:\"0\";s:7:\"SetVote\";s:1:\"1\";s:16:\"PassContributeSP\";s:1:\"0\";s:13:\"PostNoDelCode\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"0\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:1:\"5\";s:12:\"post_buy_num\";s:1:\"5\";s:13:\"post_news_num\";s:1:\"5\";s:14:\"post_photo_num\";s:2:\"10\";s:11:\"post_hr_num\";s:1:\"5\";s:17:\"post_zhanghui_num\";s:1:\"5\";s:12:\"post_ZLG_num\";s:1:\"0\";s:16:\"post_pingpai_num\";s:1:\"5\";s:19:\"post_baojiadian_num\";s:1:\"5\";s:19:\"post_xunjiadian_num\";s:1:\"5\";s:24:\"post_info_collection_num\";s:2:\"30\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('module_id','18','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('viewNoPassGuestBook','0','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('yzImgGuestBook','1','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('module_pre','guestbook_','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('ifOpenGuestBook','1','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('module_close','0','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('Info_webOpen','1','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('groupPassPassGuestBook','3','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('Info_webname','留言本','');
INSERT INTO `xulingqb_guestbook_config` VALUES ('GuestBookNum','20','');
INSERT INTO `xulingqb_guestbook_content` VALUES ('12','0','1','','','','','1','admin','192.168.0.99','忘记密码强制进入网站后台的方法是:修改/admin/global.php文件,查找$ForceEnter=0;把0改成1即可,强制进入网站的后台.','1','1240206881','1240206881','','');