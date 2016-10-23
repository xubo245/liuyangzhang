DROP TABLE IF EXISTS espcms_admin_member;
CREATE TABLE `espcms_admin_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `intotime` int(11) NOT NULL,
  `intime` int(11) NOT NULL,
  `outtime` int(11) NOT NULL,
  `ipadd` int(15) NOT NULL,
  `hit` int(10) unsigned DEFAULT '0',
  `powergroup` tinyint(4) NOT NULL DEFAULT '1',
  `inputclassid` tinyint(1) NOT NULL DEFAULT '1',
  `isclass` tinyint(1) NOT NULL DEFAULT '1',
  `isremote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_admin_powergroup;
CREATE TABLE `espcms_admin_powergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `powername` varchar(150) NOT NULL,
  `powerlist` text NOT NULL,
  `delclass` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_advert;
CREATE TABLE `espcms_advert` (
  `adid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `atid` int(11) unsigned NOT NULL DEFAULT '0',
  `lng` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `adtype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `click` int(11) unsigned NOT NULL DEFAULT '0',
  `istime` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `gotoid` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `adid` (`adid`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_advert_type;
CREATE TABLE `espcms_advert_type` (
  `atid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL DEFAULT '',
  `adtypename` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `width` int(4) unsigned NOT NULL DEFAULT '0',
  `height` int(4) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `iscode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isxml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `xmltemplatefile` varchar(200) NOT NULL,
  `xmlfile` varchar(200) NOT NULL,
  `xmlpath` varchar(200) NOT NULL,
  UNIQUE KEY `adid` (`atid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_album_file;
CREATE TABLE `espcms_album_file` (
  `afid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `amid` int(11) unsigned NOT NULL DEFAULT '0',
  `fiid` int(11) unsigned NOT NULL DEFAULT '0',
  `filetitle` varchar(200) NOT NULL DEFAULT '',
  `filedes` text NOT NULL,
  `filename` varchar(200) NOT NULL,
  `filepath` varchar(200) NOT NULL,
  `iswidth` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `picid` (`afid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_album_images;
CREATE TABLE `espcms_album_images` (
  `amid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `pic` varchar(200) NOT NULL,
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `istop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `amid` (`amid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_bbs;
CREATE TABLE `espcms_bbs` (
  `bid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `btid` int(11) unsigned NOT NULL DEFAULT '0',
  `upbid` int(11) unsigned NOT NULL DEFAULT '0',
  `adminid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(150) NOT NULL,
  `qq` varchar(11) NOT NULL DEFAULT '0',
  `msn` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `replynum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `retime` int(11) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `istop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ipadd` varchar(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_bbs_typelist;
CREATE TABLE `espcms_bbs_typelist` (
  `btid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '50',
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `typename` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `purview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ispage` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `pagemax` smallint(3) unsigned NOT NULL DEFAULT '10',
  `listmax` smallint(3) unsigned NOT NULL DEFAULT '10',
  `isaddclass` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ismail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `putmail` varchar(100) NOT NULL,
  `mailcode` varchar(100) NOT NULL,
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isseccode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `inputtime` int(5) unsigned NOT NULL DEFAULT '0',
  `iswap` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `istemplates` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `templates` varchar(100) NOT NULL,
  PRIMARY KEY (`btid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_calling;
CREATE TABLE `espcms_calling` (
  `cid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '50',
  `lng` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `style` tinyint(1) unsigned NOT NULL,
  `name` varchar(200) NOT NULL,
  `code` text NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_city;
CREATE TABLE `espcms_city` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cityname` varchar(120) NOT NULL,
  `regiontype` tinyint(1) NOT NULL DEFAULT '2',
  `agencyid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `regiontype` (`regiontype`),
  KEY `agencyid` (`agencyid`)
) ENGINE=MyISAM AUTO_INCREMENT=3409 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_config;
CREATE TABLE `espcms_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(3) unsigned NOT NULL DEFAULT '50',
  `valname` varchar(30) NOT NULL,
  `content` varchar(200) NOT NULL DEFAULT '',
  `str` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `valtype` varchar(10) NOT NULL,
  `bottonname` varchar(200) NOT NULL,
  `groupid` smallint(3) unsigned NOT NULL DEFAULT '0',
  `isline` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isselect` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_document;
CREATE TABLE `espcms_document` (
  `did` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '50',
  `mid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid` int(11) unsigned NOT NULL DEFAULT '0',
  `extid` varchar(200) NOT NULL,
  `sid` int(11) unsigned NOT NULL DEFAULT '0',
  `fgid` int(8) unsigned NOT NULL DEFAULT '0',
  `linkdid` varchar(100) NOT NULL,
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ismess` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isorder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ktid` int(6) unsigned NOT NULL DEFAULT '0',
  `purview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `istemplates` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isbase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` varchar(100) NOT NULL,
  `tsn` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL,
  `longtitle` varchar(200) NOT NULL,
  `color` varchar(8) NOT NULL,
  `author` char(20) NOT NULL,
  `source` char(30) NOT NULL,
  `pic` varchar(200) NOT NULL,
  `tags` varchar(250) NOT NULL,
  `keywords` varchar(220) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `summary` text NOT NULL,
  `link` varchar(250) NOT NULL,
  `oprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `click` smallint(6) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `uptime` int(11) unsigned NOT NULL DEFAULT '0',
  `template` varchar(100) NOT NULL,
  `filename` varchar(100) NOT NULL DEFAULT '',
  `filepath` varchar(200) NOT NULL,
  `filepage` smallint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`did`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_document_album;
CREATE TABLE `espcms_document_album` (
  `daid` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL,
  `picname` varchar(200) NOT NULL DEFAULT '',
  `filedes` text NOT NULL,
  `picfile` varchar(150) NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`daid`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_document_attr;
CREATE TABLE `espcms_document_attr` (
  `datid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL DEFAULT '0',
  `downloadurl` varchar(250) NOT NULL,
  `jobnum` varchar(250) NOT NULL,
  PRIMARY KEY (`datid`,`did`),
  UNIQUE KEY `daid` (`datid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_document_content;
CREATE TABLE `espcms_document_content` (
  `dcid` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`dcid`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_document_label;
CREATE TABLE `espcms_document_label` (
  `dlid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL,
  `mid` int(11) NOT NULL DEFAULT '0',
  `labelname` varchar(100) NOT NULL,
  PRIMARY KEY (`dlid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_document_message;
CREATE TABLE `espcms_document_message` (
  `dmid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `adminid` int(11) unsigned NOT NULL DEFAULT '0',
  `ipadd` varchar(11) NOT NULL DEFAULT '0',
  `lng` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `recontent` text NOT NULL,
  `isreply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `retime` int(11) unsigned NOT NULL DEFAULT '0',
  `support` int(7) unsigned NOT NULL DEFAULT '0',
  `oppose` int(7) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `dmid` (`dmid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_enquiry;
CREATE TABLE `espcms_enquiry` (
  `eid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `enquirysn` varchar(50) NOT NULL,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `linkman` varchar(100) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `editresult` text NOT NULL,
  UNIQUE KEY `eid` (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_enquiry_info;
CREATE TABLE `espcms_enquiry_info` (
  `eiid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eid` int(11) unsigned NOT NULL DEFAULT '0',
  `did` int(11) unsigned NOT NULL DEFAULT '0',
  `tsn` varchar(50) NOT NULL,
  `title` varchar(250) NOT NULL,
  `amount` int(8) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  UNIQUE KEY `eiid` (`eiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_filename;
CREATE TABLE `espcms_filename` (
  `fiid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL DEFAULT '',
  `filetitle` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) NOT NULL DEFAULT '',
  `filetype` varchar(50) NOT NULL DEFAULT 'img',
  `filepath` varchar(200) NOT NULL DEFAULT '',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `iswidth` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `picid` (`fiid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_form_attr;
CREATE TABLE `espcms_form_attr` (
  `faid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fgid` int(11) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(6) NOT NULL DEFAULT '50',
  `typename` varchar(200) NOT NULL DEFAULT '',
  `typeremark` varchar(200) NOT NULL,
  `attrname` varchar(150) NOT NULL DEFAULT '',
  `inputtype` varchar(20) NOT NULL DEFAULT 'string',
  `attrvalue` text NOT NULL,
  `validatetext` varchar(150) NOT NULL DEFAULT '',
  `attrsize` smallint(3) NOT NULL DEFAULT '20',
  `attrrow` smallint(3) NOT NULL DEFAULT '10',
  `attrlenther` smallint(3) NOT NULL DEFAULT '50',
  `isclass` tinyint(1) NOT NULL DEFAULT '1',
  `isvalidate` tinyint(1) NOT NULL DEFAULT '0',
  `isline` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`faid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_form_group;
CREATE TABLE `espcms_form_group` (
  `fgid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '50',
  `lng` varchar(50) NOT NULL DEFAULT '',
  `formgroupname` varchar(200) NOT NULL DEFAULT '',
  `formcode` varchar(80) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `successtext` text NOT NULL,
  `template` varchar(150) NOT NULL,
  `emailatt` varchar(100) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isseccode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ismail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `mailcode` varchar(100) NOT NULL,
  `putmail` varchar(100) NOT NULL,
  `inputtime` int(5) unsigned NOT NULL DEFAULT '300',
  `purview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fgid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_form_value;
CREATE TABLE `espcms_form_value` (
  `fvid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fgid` int(11) unsigned NOT NULL DEFAULT '0',
  `did` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `retime` int(11) unsigned NOT NULL DEFAULT '0',
  `ipadd` varchar(11) NOT NULL DEFAULT '0',
  `isreply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `recontent` text NOT NULL,
  PRIMARY KEY (`fvid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_keylink;
CREATE TABLE `espcms_keylink` (
  `kid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `pid` int(11) unsigned NOT NULL DEFAULT '50',
  `mid` int(11) unsigned NOT NULL DEFAULT '0',
  `tid` int(11) unsigned NOT NULL DEFAULT '0',
  `hit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keywordname` varchar(200) NOT NULL DEFAULT '',
  `linkurl` varchar(220) NOT NULL DEFAULT '',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `istop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isreplace` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`kid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_keylink_type;
CREATE TABLE `espcms_keylink_type` (
  `ktid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lng` varchar(20) NOT NULL,
  `mid` int(11) unsigned NOT NULL DEFAULT '0',
  `tid` int(11) unsigned NOT NULL DEFAULT '0',
  `keytypename` varchar(200) NOT NULL DEFAULT '',
  `keyworklist` text NOT NULL,
  `description` text NOT NULL,
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  UNIQUE KEY `ktid` (`ktid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_lng;
CREATE TABLE `espcms_lng` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `lng` varchar(50) NOT NULL DEFAULT '',
  `lngtitle` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `lockin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `iswap` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isopen` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isuptype` tinyint(1) unsigned NOT NULL,
  `ispack` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `packname` varchar(100) NOT NULL,
  `sitename` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `copyright` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_lngpack;
CREATE TABLE `espcms_lngpack` (
  `lpid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) NOT NULL DEFAULT '50',
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `title` varchar(150) NOT NULL,
  `keycode` varchar(50) NOT NULL DEFAULT '',
  `langstr` text NOT NULL,
  `lockin` tinyint(1) NOT NULL DEFAULT '1',
  `typeid` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`lpid`)
) ENGINE=MyISAM AUTO_INCREMENT=660 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_logs;
CREATE TABLE `espcms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `onlineip` int(15) NOT NULL,
  `addtime` int(11) NOT NULL,
  `actions` varchar(150) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_mailinvite_list;
CREATE TABLE `espcms_mailinvite_list` (
  `mlvlid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mlvid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email` varchar(200) NOT NULL,
  `tel` varchar(80) NOT NULL,
  `address` varchar(200) NOT NULL,
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `mlimid` (`mlvlid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_mailinvite_type;
CREATE TABLE `espcms_mailinvite_type` (
  `mlvid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `title` varchar(200) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `purview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mlvid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_mailsend;
CREATE TABLE `espcms_mailsend` (
  `msid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `title` varchar(200) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `sendhow` int(10) unsigned NOT NULL DEFAULT '0',
  `sendtime` int(11) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_mailsend_log;
CREATE TABLE `espcms_mailsend_log` (
  `mlid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `msid` int(11) unsigned NOT NULL DEFAULT '0',
  `sendmail` text NOT NULL,
  `sendtime` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `mlid` (`mlid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_member;
CREATE TABLE `espcms_member` (
  `userid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `question` varchar(250) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` int(11) unsigned NOT NULL DEFAULT '0',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `zipcode` varchar(20) NOT NULL DEFAULT '0',
  `tel` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `qq` int(11) unsigned NOT NULL DEFAULT '0',
  `msn` varchar(150) NOT NULL,
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `visitcount` smallint(6) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(11) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(11) unsigned NOT NULL DEFAULT '0',
  `mcid` smallint(2) unsigned NOT NULL DEFAULT '1',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_member_attr;
CREATE TABLE `espcms_member_attr` (
  `maid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL DEFAULT '',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '50',
  `typename` varchar(150) NOT NULL DEFAULT '',
  `typeremark` varchar(200) NOT NULL,
  `attrname` varchar(150) NOT NULL DEFAULT '',
  `inputtype` varchar(20) NOT NULL DEFAULT 'string',
  `attrvalue` text NOT NULL,
  `validatetext` varchar(150) NOT NULL DEFAULT '',
  `attrsize` smallint(3) unsigned NOT NULL DEFAULT '20',
  `attrrow` smallint(3) unsigned NOT NULL DEFAULT '10',
  `attrlenther` smallint(3) unsigned NOT NULL DEFAULT '50',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isvalidate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isline` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`maid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_member_class;
CREATE TABLE `espcms_member_class` (
  `mcid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rankname` varchar(150) NOT NULL,
  `isinter` tinyint(1) NOT NULL DEFAULT '0',
  `integra` int(11) NOT NULL DEFAULT '100',
  `isclass` tinyint(1) NOT NULL DEFAULT '1',
  `lockin` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mcid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_member_value;
CREATE TABLE `espcms_member_value` (
  `mvid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mvid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_menubotton;
CREATE TABLE `espcms_menubotton` (
  `mbid` int(11) NOT NULL AUTO_INCREMENT,
  `lng` varchar(10) NOT NULL DEFAULT 'cn',
  `pid` int(10) NOT NULL,
  `linkealias` varchar(25) NOT NULL,
  `menuname` varchar(150) NOT NULL,
  `typeid` smallint(6) NOT NULL,
  `typename` varchar(100) NOT NULL,
  `typeclass` varchar(10) NOT NULL,
  `isclass` tinyint(1) NOT NULL DEFAULT '1',
  `islockin` tinyint(1) NOT NULL DEFAULT '0',
  `pic` varchar(100) NOT NULL,
  `urllink` varchar(200) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`mbid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_menulink;
CREATE TABLE `espcms_menulink` (
  `mlid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '50',
  `type` smallint(6) unsigned NOT NULL DEFAULT '0',
  `topmlid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `menuname` varchar(100) NOT NULL DEFAULT '',
  `linkurl` varchar(200) NOT NULL DEFAULT '',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `loadfun` varchar(30) NOT NULL,
  `classname` varchar(50) NOT NULL,
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mlid`)
) ENGINE=MyISAM AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_model;
CREATE TABLE `espcms_model` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `modelname` varchar(150) NOT NULL,
  `pagemax` smallint(3) unsigned NOT NULL DEFAULT '20',
  `pagesylte` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lockin` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isbase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `istsn` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isalbum` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isextid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `issid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isfgid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `islinkdid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isorder` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ismessage` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ispurview` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_model_att;
CREATE TABLE `espcms_model_att` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typename` varchar(100) NOT NULL DEFAULT '',
  `typeremark` varchar(200) NOT NULL DEFAULT '',
  `attrname` varchar(100) NOT NULL DEFAULT '',
  `inputtype` varchar(15) NOT NULL DEFAULT 'string',
  `attrvalue` text NOT NULL,
  `attrsize` smallint(3) unsigned NOT NULL DEFAULT '20',
  `attrrow` smallint(3) unsigned NOT NULL DEFAULT '5',
  `attrlenther` smallint(3) unsigned NOT NULL DEFAULT '50',
  `isvalidate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `validatetext` varchar(150) NOT NULL DEFAULT '',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lockin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islockin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_order;
CREATE TABLE `espcms_order` (
  `oid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ordersn` varchar(50) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordertype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `osid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `opid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `shippingsn` varchar(15) NOT NULL DEFAULT '0',
  `paysn` varchar(15) NOT NULL DEFAULT '0',
  `consignee` varchar(50) NOT NULL,
  `country` smallint(5) NOT NULL DEFAULT '1',
  `province` smallint(5) NOT NULL DEFAULT '0',
  `city` smallint(5) NOT NULL DEFAULT '0',
  `district` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sendtime` varchar(50) NOT NULL,
  `invpayee` varchar(100) NOT NULL,
  `invcontent` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `treatnote` text NOT NULL,
  `paytime` int(11) NOT NULL DEFAULT '0',
  `shippingtime` int(11) NOT NULL DEFAULT '0',
  `productmoney` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shippingmoney` decimal(10,2) NOT NULL DEFAULT '0.00',
  `paymoney` decimal(10,2) NOT NULL DEFAULT '0.00',
  `orderamount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `integral` int(10) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`),
  UNIQUE KEY `ordersn` (`ordersn`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_order_info;
CREATE TABLE `espcms_order_info` (
  `oiid` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(10) unsigned NOT NULL,
  `did` int(10) unsigned NOT NULL,
  `tsn` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `oprice` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `bprice` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `countprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` smallint(6) unsigned NOT NULL,
  `inventory` int(10) unsigned NOT NULL,
  PRIMARY KEY (`oiid`),
  KEY `orderid` (`oid`),
  KEY `productid` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_order_pay;
CREATE TABLE `espcms_order_pay` (
  `opid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '50',
  `payname` varchar(150) NOT NULL,
  `paycontent` text NOT NULL,
  `paycode` varchar(20) NOT NULL,
  `payis` smallint(5) NOT NULL DEFAULT '0',
  `payplugver` varchar(20) NOT NULL DEFAULT '1.0',
  `pluglist` text NOT NULL,
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`opid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_order_payreceipt;
CREATE TABLE `espcms_order_payreceipt` (
  `oprid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oid` int(11) NOT NULL DEFAULT '0',
  `opid` int(11) NOT NULL DEFAULT '0',
  `paysn` varchar(100) NOT NULL DEFAULT '0',
  `ordersn` varchar(100) NOT NULL DEFAULT '0',
  `orderamount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bankaccount` varchar(100) NOT NULL DEFAULT '',
  `bankname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `isclass` tinyint(1) NOT NULL DEFAULT '1',
  `paytime` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oprid`),
  KEY `ordersn` (`ordersn`),
  KEY `orderid` (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_order_shipping;
CREATE TABLE `espcms_order_shipping` (
  `osid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL DEFAULT '50',
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `markup` int(10) NOT NULL,
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `iscash` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isinsure` tinyint(1) NOT NULL DEFAULT '0',
  `insureper` smallint(6) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`osid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_order_shipreceipt;
CREATE TABLE `espcms_order_shipreceipt` (
  `osrid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oid` int(11) NOT NULL DEFAULT '0',
  `osid` int(11) NOT NULL DEFAULT '0',
  `shippingsn` varchar(20) NOT NULL DEFAULT '0',
  `ordersn` varchar(20) NOT NULL DEFAULT '0',
  `shippingmoney` decimal(10,2) NOT NULL,
  `username` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `userid` int(11) NOT NULL,
  `isclass` tinyint(1) NOT NULL DEFAULT '1',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`osrid`),
  KEY `ordersn` (`ordersn`),
  KEY `orderid` (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_site;
CREATE TABLE `espcms_site` (
  `slid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '50',
  `sitename` varchar(100) NOT NULL,
  `sitehttp` varchar(100) NOT NULL,
  `sitedir` varchar(30) NOT NULL DEFAULT 'adminsoft',
  `sitecode` varchar(100) NOT NULL,
  `siteip` varchar(50) NOT NULL,
  `adminusername` varchar(50) NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `slid` (`slid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_skin;
CREATE TABLE `espcms_skin` (
  `skid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `code` varchar(20) NOT NULL,
  `lockin` tinyint(1) NOT NULL DEFAULT '0',
  `isclass` tinyint(1) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`skid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_subjectlist;
CREATE TABLE `espcms_subjectlist` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `subjectname` varchar(150) NOT NULL,
  `keywords` varchar(80) NOT NULL,
  `description` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `subpic` varchar(200) NOT NULL DEFAULT '',
  `dirname` varbinary(150) NOT NULL DEFAULT '',
  `purview` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `styleid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `iswap` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `waptempalte` varchar(100) NOT NULL,
  `indextemplates` varchar(100) NOT NULL,
  `template` varchar(100) NOT NULL,
  `filenamestyle` varchar(100) NOT NULL,
  `dirpath` varchar(200) NOT NULL,
  `pagemax` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_templates;
CREATE TABLE `espcms_templates` (
  `tmid` int(11) NOT NULL AUTO_INCREMENT,
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `templatename` varchar(200) NOT NULL,
  `templatecode` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL DEFAULT '',
  `templatecontent` text NOT NULL,
  `pic` varchar(50) NOT NULL DEFAULT '',
  `typeclass` varchar(15) NOT NULL DEFAULT '',
  `styleclass` tinyint(1) NOT NULL,
  `lockin` tinyint(1) NOT NULL DEFAULT '1',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`tmid`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS espcms_typelist;
CREATE TABLE `espcms_typelist` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '50',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `topid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `upid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `exmid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linkid` int(11) unsigned NOT NULL DEFAULT '0',
  `gotoid` int(11) unsigned NOT NULL DEFAULT '0',
  `lng` varchar(50) NOT NULL DEFAULT 'cn',
  `typename` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `keywords` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(180) NOT NULL,
  `typepic` varchar(200) NOT NULL,
  `dirname` varchar(50) NOT NULL DEFAULT '',
  `purview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isaccessory` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ispart` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `styleid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pageclass` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `indextemplates` varchar(100) NOT NULL,
  `template` varchar(100) NOT NULL,
  `readtemplate` varchar(100) NOT NULL,
  `filenamestyle` varchar(100) NOT NULL DEFAULT '',
  `readnamestyle` varchar(100) NOT NULL,
  `isline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `gotoline` int(11) unsigned NOT NULL DEFAULT '0',
  `typeurl` varchar(200) NOT NULL,
  `dirpath` varchar(150) NOT NULL,
  `iswap` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `waptempalte` varchar(100) NOT NULL,
  `wapreadtemplate` varchar(100) NOT NULL,
  `pagemax` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(15) unsigned NOT NULL DEFAULT '0',
  `isorderby` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordertype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS kc_admin;
CREATE TABLE `kc_admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` char(12) NOT NULL,
  `adminpass` char(32) NOT NULL,
  `adminlevel` text NOT NULL,
  `adminlanguage` char(30) NOT NULL,
  `admineditor` char(100) DEFAULT NULL,
  `admincount` smallint(6) NOT NULL DEFAULT '0',
  `adminmode` tinyint(1) NOT NULL DEFAULT '1',
  `adminskins` char(50) NOT NULL DEFAULT 'default',
  `adminlogin` char(100) DEFAULT NULL,
  `siteurl` char(100) DEFAULT NULL,
  `isdelete` tinyint(1) NOT NULL DEFAULT '0',
  `admindate` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`adminid`),
  UNIQUE KEY `adminname` (`adminname`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king__article;
CREATE TABLE `king__article` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `kid1` int(11) NOT NULL DEFAULT '0',
  `ncount` int(11) NOT NULL DEFAULT '1',
  `listid` int(11) NOT NULL DEFAULT '0',
  `ktitle` varchar(100) DEFAULT NULL,
  `ksubtitle` varchar(20) DEFAULT NULL,
  `nsublength` tinyint(2) NOT NULL DEFAULT '0',
  `norder` int(11) NOT NULL DEFAULT '0',
  `isstar` tinyint(1) NOT NULL DEFAULT '0',
  `ndate` int(10) NOT NULL DEFAULT '0',
  `nlastdate` int(10) NOT NULL DEFAULT '0',
  `kkeywords` varchar(100) DEFAULT NULL,
  `ktag` varchar(100) DEFAULT NULL,
  `kdescription` varchar(255) DEFAULT NULL,
  `kimage` varchar(255) DEFAULT NULL,
  `kcontent` text,
  `kpath` varchar(255) NOT NULL,
  `nshow` tinyint(1) NOT NULL DEFAULT '1',
  `nhead` tinyint(1) NOT NULL DEFAULT '0',
  `ncommend` tinyint(1) NOT NULL DEFAULT '0',
  `nup` tinyint(1) NOT NULL DEFAULT '0',
  `nfocus` tinyint(1) NOT NULL DEFAULT '0',
  `nhot` tinyint(1) NOT NULL DEFAULT '0',
  `nprice` double NOT NULL DEFAULT '0',
  `nweight` int(11) NOT NULL DEFAULT '0',
  `nnumber` int(10) NOT NULL DEFAULT '0',
  `nbuy` int(10) NOT NULL DEFAULT '0',
  `ncomment` int(11) NOT NULL DEFAULT '0',
  `krelate` varchar(255) DEFAULT NULL,
  `ndigg1` int(11) NOT NULL DEFAULT '0',
  `ndigg0` int(11) NOT NULL DEFAULT '0',
  `ndigg` int(11) NOT NULL DEFAULT '1',
  `nfavorite` int(11) NOT NULL DEFAULT '0',
  `nhit` int(11) NOT NULL DEFAULT '0',
  `nhitlate` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `ulock` tinyint(1) NOT NULL DEFAULT '0',
  `adminid` int(11) NOT NULL DEFAULT '0',
  `isok` tinyint(1) NOT NULL DEFAULT '0',
  `nip` int(10) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `nattrib` text,
  `k_author` varchar(30) DEFAULT NULL,
  `k_source` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kid`),
  UNIQUE KEY `kpath` (`kpath`),
  KEY `kid1` (`kid1`),
  KEY `aid` (`aid`),
  KEY `nshow` (`nshow`),
  KEY `nhead` (`nhead`),
  KEY `nfocus` (`nfocus`),
  KEY `nhot` (`nhot`),
  KEY `userid` (`userid`),
  KEY `adminid` (`adminid`),
  KEY `ndigg` (`ndigg`),
  KEY `listid` (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king__bbs;
CREATE TABLE `king__bbs` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `kid1` int(11) NOT NULL DEFAULT '0',
  `ncount` int(11) NOT NULL DEFAULT '1',
  `listid` int(11) NOT NULL DEFAULT '0',
  `ktitle` varchar(100) DEFAULT NULL,
  `ksubtitle` varchar(20) DEFAULT NULL,
  `nsublength` tinyint(2) NOT NULL DEFAULT '0',
  `norder` int(11) NOT NULL DEFAULT '0',
  `isstar` tinyint(1) NOT NULL DEFAULT '0',
  `ndate` int(10) NOT NULL DEFAULT '0',
  `nlastdate` int(10) NOT NULL DEFAULT '0',
  `kkeywords` varchar(100) DEFAULT NULL,
  `ktag` varchar(100) DEFAULT NULL,
  `kdescription` varchar(255) DEFAULT NULL,
  `kimage` varchar(255) DEFAULT NULL,
  `kcontent` text,
  `kpath` varchar(255) NOT NULL,
  `nshow` tinyint(1) NOT NULL DEFAULT '1',
  `nhead` tinyint(1) NOT NULL DEFAULT '0',
  `ncommend` tinyint(1) NOT NULL DEFAULT '0',
  `nup` tinyint(1) NOT NULL DEFAULT '0',
  `nfocus` tinyint(1) NOT NULL DEFAULT '0',
  `nhot` tinyint(1) NOT NULL DEFAULT '0',
  `nprice` double NOT NULL DEFAULT '0',
  `nweight` int(11) NOT NULL DEFAULT '0',
  `nnumber` int(10) NOT NULL DEFAULT '0',
  `nbuy` int(10) NOT NULL DEFAULT '0',
  `ncomment` int(11) NOT NULL DEFAULT '0',
  `krelate` varchar(255) DEFAULT NULL,
  `ndigg1` int(11) NOT NULL DEFAULT '0',
  `ndigg0` int(11) NOT NULL DEFAULT '0',
  `ndigg` int(11) NOT NULL DEFAULT '1',
  `nfavorite` int(11) NOT NULL DEFAULT '0',
  `nhit` int(11) NOT NULL DEFAULT '0',
  `nhitlate` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `ulock` tinyint(1) NOT NULL DEFAULT '0',
  `adminid` int(11) NOT NULL DEFAULT '0',
  `isok` tinyint(1) NOT NULL DEFAULT '0',
  `nip` int(10) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `nattrib` text,
  PRIMARY KEY (`kid`),
  UNIQUE KEY `kpath` (`kpath`),
  KEY `kid1` (`kid1`),
  KEY `aid` (`aid`),
  KEY `nshow` (`nshow`),
  KEY `nhead` (`nhead`),
  KEY `nfocus` (`nfocus`),
  KEY `nhot` (`nhot`),
  KEY `userid` (`userid`),
  KEY `adminid` (`adminid`),
  KEY `ndigg` (`ndigg`),
  KEY `listid` (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king__product;
CREATE TABLE `king__product` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `kid1` int(11) NOT NULL DEFAULT '0',
  `ncount` int(11) NOT NULL DEFAULT '1',
  `listid` int(11) NOT NULL DEFAULT '0',
  `ktitle` varchar(100) DEFAULT NULL,
  `ksubtitle` varchar(20) DEFAULT NULL,
  `nsublength` tinyint(2) NOT NULL DEFAULT '0',
  `norder` int(11) NOT NULL DEFAULT '0',
  `isstar` tinyint(1) NOT NULL DEFAULT '0',
  `ndate` int(10) NOT NULL DEFAULT '0',
  `nlastdate` int(10) NOT NULL DEFAULT '0',
  `kkeywords` varchar(100) DEFAULT NULL,
  `ktag` varchar(100) DEFAULT NULL,
  `kdescription` varchar(255) DEFAULT NULL,
  `kimage` varchar(255) DEFAULT NULL,
  `kcontent` text,
  `kpath` varchar(255) NOT NULL,
  `nshow` tinyint(1) NOT NULL DEFAULT '1',
  `nhead` tinyint(1) NOT NULL DEFAULT '0',
  `ncommend` tinyint(1) NOT NULL DEFAULT '0',
  `nup` tinyint(1) NOT NULL DEFAULT '0',
  `nfocus` tinyint(1) NOT NULL DEFAULT '0',
  `nhot` tinyint(1) NOT NULL DEFAULT '0',
  `nprice` double NOT NULL DEFAULT '0',
  `nweight` int(11) NOT NULL DEFAULT '0',
  `nnumber` int(10) NOT NULL DEFAULT '0',
  `nbuy` int(10) NOT NULL DEFAULT '0',
  `ncomment` int(11) NOT NULL DEFAULT '0',
  `krelate` varchar(255) DEFAULT NULL,
  `ndigg1` int(11) NOT NULL DEFAULT '0',
  `ndigg0` int(11) NOT NULL DEFAULT '0',
  `ndigg` int(11) NOT NULL DEFAULT '1',
  `nfavorite` int(11) NOT NULL DEFAULT '0',
  `nhit` int(11) NOT NULL DEFAULT '0',
  `nhitlate` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `ulock` tinyint(1) NOT NULL DEFAULT '0',
  `adminid` int(11) NOT NULL DEFAULT '0',
  `isok` tinyint(1) NOT NULL DEFAULT '0',
  `nip` int(10) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `nattrib` text,
  `k_Serial` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kid`),
  UNIQUE KEY `kpath` (`kpath`),
  KEY `kid1` (`kid1`),
  KEY `aid` (`aid`),
  KEY `nshow` (`nshow`),
  KEY `nhead` (`nhead`),
  KEY `nfocus` (`nfocus`),
  KEY `nhot` (`nhot`),
  KEY `userid` (`userid`),
  KEY `adminid` (`adminid`),
  KEY `ndigg` (`ndigg`),
  KEY `listid` (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king__shop;
CREATE TABLE `king__shop` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `kid1` int(11) NOT NULL DEFAULT '0',
  `ncount` int(11) NOT NULL DEFAULT '1',
  `listid` int(11) NOT NULL DEFAULT '0',
  `ktitle` varchar(100) DEFAULT NULL,
  `ksubtitle` varchar(20) DEFAULT NULL,
  `nsublength` tinyint(2) NOT NULL DEFAULT '0',
  `norder` int(11) NOT NULL DEFAULT '0',
  `isstar` tinyint(1) NOT NULL DEFAULT '0',
  `ndate` int(10) NOT NULL DEFAULT '0',
  `nlastdate` int(10) NOT NULL DEFAULT '0',
  `kkeywords` varchar(100) DEFAULT NULL,
  `ktag` varchar(100) DEFAULT NULL,
  `kdescription` varchar(255) DEFAULT NULL,
  `kimage` varchar(255) DEFAULT NULL,
  `kcontent` text,
  `kpath` varchar(255) NOT NULL,
  `nshow` tinyint(1) NOT NULL DEFAULT '1',
  `nhead` tinyint(1) NOT NULL DEFAULT '0',
  `ncommend` tinyint(1) NOT NULL DEFAULT '0',
  `nup` tinyint(1) NOT NULL DEFAULT '0',
  `nfocus` tinyint(1) NOT NULL DEFAULT '0',
  `nhot` tinyint(1) NOT NULL DEFAULT '0',
  `nprice` double NOT NULL DEFAULT '0',
  `nweight` int(11) NOT NULL DEFAULT '0',
  `nnumber` int(10) NOT NULL DEFAULT '0',
  `nbuy` int(10) NOT NULL DEFAULT '0',
  `ncomment` int(11) NOT NULL DEFAULT '0',
  `krelate` varchar(255) DEFAULT NULL,
  `ndigg1` int(11) NOT NULL DEFAULT '0',
  `ndigg0` int(11) NOT NULL DEFAULT '0',
  `ndigg` int(11) NOT NULL DEFAULT '1',
  `nfavorite` int(11) NOT NULL DEFAULT '0',
  `nhit` int(11) NOT NULL DEFAULT '0',
  `nhitlate` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `ulock` tinyint(1) NOT NULL DEFAULT '0',
  `adminid` int(11) NOT NULL DEFAULT '0',
  `isok` tinyint(1) NOT NULL DEFAULT '0',
  `nip` int(10) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `nattrib` text,
  `k_Market` varchar(11) DEFAULT NULL,
  `k_Serial` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kid`),
  UNIQUE KEY `kpath` (`kpath`),
  KEY `kid1` (`kid1`),
  KEY `aid` (`aid`),
  KEY `nshow` (`nshow`),
  KEY `nhead` (`nhead`),
  KEY `nfocus` (`nfocus`),
  KEY `nhot` (`nhot`),
  KEY `userid` (`userid`),
  KEY `adminid` (`adminid`),
  KEY `ndigg` (`ndigg`),
  KEY `listid` (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_bot;
CREATE TABLE `king_bot` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `kname` char(30) NOT NULL,
  `kmark` char(255) NOT NULL,
  `ncount` int(11) NOT NULL DEFAULT '0',
  `nlastdate` int(10) NOT NULL DEFAULT '0',
  `ndate` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_comment;
CREATE TABLE `king_comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `kid` int(11) NOT NULL DEFAULT '0',
  `modelid` int(11) NOT NULL DEFAULT '0',
  `username` char(12) DEFAULT NULL,
  `kcontent` text,
  `nip` int(10) NOT NULL DEFAULT '0',
  `ndate` int(10) NOT NULL DEFAULT '0',
  `isshow` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `kid` (`kid`),
  KEY `modelid` (`modelid`),
  KEY `isshow` (`isshow`),
  KEY `ndate` (`ndate`),
  KEY `nip` (`nip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_conn;
CREATE TABLE `king_conn` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `kname` char(50) NOT NULL,
  `ksign` char(32) DEFAULT NULL,
  `urlpath` char(255) NOT NULL,
  `connid` int(11) NOT NULL DEFAULT '0',
  `norder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kid`),
  KEY `connid` (`connid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_event;
CREATE TABLE `king_event` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `ntype` int(6) NOT NULL,
  `kmsg` text,
  `kfile` char(100) NOT NULL,
  `kurl` char(255) DEFAULT NULL,
  `nline` int(5) NOT NULL DEFAULT '0',
  `ndate` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_express;
CREATE TABLE `king_express` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `kname` char(50) DEFAULT NULL,
  `nsprice` int(11) NOT NULL DEFAULT '0',
  `niprice` int(11) NOT NULL DEFAULT '0',
  `kremark` text,
  `norder` int(11) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `kaddress` char(255) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_favorite;
CREATE TABLE `king_favorite` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `kid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `listid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  KEY `kid` (`kid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_field;
CREATE TABLE `king_field` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `modelid` int(11) NOT NULL DEFAULT '0',
  `kid1` int(11) NOT NULL DEFAULT '0',
  `istitle` tinyint(1) NOT NULL DEFAULT '0',
  `norder` int(11) NOT NULL DEFAULT '0',
  `ktitle` char(100) NOT NULL,
  `kfield` char(30) NOT NULL,
  `ntype` tinyint(2) NOT NULL DEFAULT '0',
  `issearch` tinyint(1) NOT NULL DEFAULT '0',
  `nvalidate` tinyint(2) NOT NULL DEFAULT '0',
  `nsizemin` int(11) NOT NULL DEFAULT '0',
  `nsizemax` int(11) NOT NULL DEFAULT '0',
  `kdefault` char(255) DEFAULT NULL,
  `koption` text,
  `nstylewidth` int(11) NOT NULL DEFAULT '0',
  `nstyleheight` int(11) NOT NULL DEFAULT '0',
  `isadmin1` tinyint(1) NOT NULL DEFAULT '1',
  `isadmin2` tinyint(1) NOT NULL DEFAULT '1',
  `isuser1` tinyint(1) NOT NULL DEFAULT '1',
  `isuser2` tinyint(1) NOT NULL DEFAULT '1',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `isrelate` tinyint(1) NOT NULL DEFAULT '0',
  `khelp` text,
  `nupfile` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kid`),
  KEY `modelid` (`modelid`),
  KEY `ntype` (`ntype`),
  KEY `isadmin1` (`isadmin1`),
  KEY `isadmin2` (`isadmin2`),
  KEY `isuser1` (`isuser1`),
  KEY `isuser2` (`isuser2`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_list;
CREATE TABLE `king_list` (
  `listid` int(11) NOT NULL AUTO_INCREMENT,
  `listid1` int(11) NOT NULL DEFAULT '0',
  `modelid` int(11) NOT NULL DEFAULT '0',
  `siteid` int(11) NOT NULL DEFAULT '1',
  `norder` int(11) NOT NULL DEFAULT '0',
  `ncount` int(11) NOT NULL DEFAULT '0',
  `ncountall` int(11) NOT NULL DEFAULT '0',
  `ktitle` char(100) NOT NULL,
  `klistname` char(100) NOT NULL,
  `kkeywords` char(100) DEFAULT NULL,
  `kdescription` char(255) DEFAULT NULL,
  `kimage` char(255) DEFAULT NULL,
  `isblank` tinyint(1) NOT NULL DEFAULT '0',
  `iscontent` tinyint(1) NOT NULL DEFAULT '0',
  `kcontent` text,
  `klistpath` char(255) DEFAULT NULL,
  `ktemplatelist1` char(255) DEFAULT NULL,
  `ktemplatelist2` char(255) DEFAULT NULL,
  `nlistnumber` tinyint(3) NOT NULL DEFAULT '20',
  `kpathmode` char(255) DEFAULT NULL,
  `ktemplatepage1` char(255) DEFAULT NULL,
  `ktemplatepage2` char(255) DEFAULT NULL,
  `npagenumber` tinyint(3) NOT NULL DEFAULT '1',
  `ispublish1` tinyint(1) NOT NULL DEFAULT '0',
  `ispublish2` tinyint(1) NOT NULL DEFAULT '0',
  `norder1` int(11) NOT NULL DEFAULT '0',
  `norder3` int(11) NOT NULL DEFAULT '0',
  `norder4` int(11) NOT NULL DEFAULT '0',
  `norder5` int(11) NOT NULL DEFAULT '0',
  `nupdatelist` int(10) NOT NULL DEFAULT '0',
  `nupdatepage` int(10) NOT NULL DEFAULT '0',
  `isexist` tinyint(1) NOT NULL DEFAULT '0',
  `nlist` tinyint(1) NOT NULL DEFAULT '0',
  `npage` tinyint(1) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `ismenu1` tinyint(1) NOT NULL DEFAULT '0',
  `ismenu2` tinyint(1) NOT NULL DEFAULT '0',
  `ismenu3` tinyint(1) NOT NULL DEFAULT '0',
  `ismenu4` tinyint(1) NOT NULL DEFAULT '0',
  `ismenu5` tinyint(1) NOT NULL DEFAULT '0',
  `ismap` tinyint(1) NOT NULL DEFAULT '0',
  `klanguage` char(30) DEFAULT NULL,
  `gidpublish` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`listid`),
  KEY `listid1` (`listid1`),
  KEY `modelid` (`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_list_editor;
CREATE TABLE `king_list_editor` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `issub` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kid`),
  KEY `listid` (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_lnk;
CREATE TABLE `king_lnk` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `kname` char(20) DEFAULT NULL,
  `ktitle` char(100) DEFAULT NULL,
  `kpath` char(100) DEFAULT NULL,
  `konclick` char(255) DEFAULT NULL,
  `adminid` int(11) NOT NULL DEFAULT '0',
  `kimage` char(100) DEFAULT NULL,
  `isblank` tinyint(1) NOT NULL DEFAULT '0',
  `norder` int(11) NOT NULL DEFAULT '0',
  `isflo` tinyint(1) NOT NULL DEFAULT '0',
  `ntop` smallint(4) NOT NULL DEFAULT '50',
  `nleft` smallint(4) NOT NULL DEFAULT '300',
  PRIMARY KEY (`kid`),
  KEY `adminid` (`adminid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_log;
CREATE TABLE `king_log` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` char(12) NOT NULL,
  `nip` int(10) NOT NULL DEFAULT '0',
  `nlog` tinyint(2) NOT NULL DEFAULT '0',
  `ktext` char(100) DEFAULT NULL,
  `ndate` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_message;
CREATE TABLE `king_message` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` char(12) NOT NULL,
  `kmsg` char(100) NOT NULL,
  `ndate` int(10) NOT NULL DEFAULT '0',
  `adminid` int(11) NOT NULL DEFAULT '0',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  `klink` char(100) DEFAULT NULL,
  PRIMARY KEY (`kid`),
  KEY `adminid` (`adminid`),
  KEY `issys` (`issys`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_model;
CREATE TABLE `king_model` (
  `modelid` int(11) NOT NULL AUTO_INCREMENT,
  `modelname` char(50) NOT NULL,
  `modeltable` char(50) NOT NULL,
  `norder` int(11) NOT NULL DEFAULT '0',
  `klanguage` char(30) DEFAULT NULL,
  `issearch` tinyint(1) NOT NULL DEFAULT '0',
  `klistorder` char(255) DEFAULT NULL,
  `kpageorder` char(255) DEFAULT NULL,
  `nlocktime` int(11) NOT NULL DEFAULT '0',
  `nshowtime` int(11) NOT NULL DEFAULT '0',
  `ispublish1` tinyint(1) NOT NULL DEFAULT '0',
  `ispublish2` tinyint(1) NOT NULL DEFAULT '0',
  `nlistnumber` int(11) NOT NULL DEFAULT '20',
  `npagenumber` int(11) NOT NULL DEFAULT '1',
  `ktemplatepublish` char(255) DEFAULT NULL,
  `ktemplatesearch` char(255) DEFAULT NULL,
  `isid` tinyint(1) NOT NULL DEFAULT '0',
  `ktemplatecomment` char(255) DEFAULT NULL,
  `ncommentnumber` int(11) NOT NULL DEFAULT '20',
  PRIMARY KEY (`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_module;
CREATE TABLE `king_module` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `kid1` int(11) NOT NULL DEFAULT '0',
  `kname` char(50) NOT NULL,
  `kpath` char(50) NOT NULL,
  `islock` tinyint(1) NOT NULL DEFAULT '0',
  `kdb` text,
  `ndate` int(10) NOT NULL DEFAULT '0',
  `ndbver` smallint(3) NOT NULL DEFAULT '100',
  `norder` int(11) NOT NULL DEFAULT '0',
  `nshow` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`kid`),
  KEY `islock` (`islock`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_orders;
CREATE TABLE `king_orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `ono` char(16) NOT NULL,
  `nstatus` tinyint(2) NOT NULL DEFAULT '2',
  `kname` varchar(30) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `kcontent` text,
  `nnumber` int(11) NOT NULL DEFAULT '0',
  `nip` int(10) NOT NULL DEFAULT '0',
  `ndate` int(10) NOT NULL DEFAULT '0',
  `npaydate` int(10) NOT NULL DEFAULT '0',
  `nsenddate` int(10) NOT NULL DEFAULT '0',
  `eid` int(11) NOT NULL DEFAULT '0',
  `expressnumber` char(30) DEFAULT NULL,
  `realname` char(30) NOT NULL,
  `useraddress` char(250) DEFAULT NULL,
  `userpost` char(10) DEFAULT NULL,
  `usertel` char(30) DEFAULT NULL,
  `usermail` char(32) DEFAULT NULL,
  `kremark` text,
  `kfeedback` char(255) DEFAULT NULL,
  `ntotal` double NOT NULL DEFAULT '0',
  `nexpress` double NOT NULL DEFAULT '0',
  `nweight` int(11) NOT NULL DEFAULT '0',
  `paymethod` varchar(32) DEFAULT NULL,
  `tid` varchar(32) DEFAULT NULL,
  `buyer_id` varchar(65) DEFAULT NULL,
  `seller` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_portal_log;
CREATE TABLE `king_portal_log` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `ktag` char(100) NOT NULL,
  `kimage` char(255) DEFAULT NULL,
  `kkeywords` char(120) DEFAULT NULL,
  `kdescription` char(255) DEFAULT NULL,
  `kcolor` char(7) NOT NULL,
  `nsize` tinyint(2) NOT NULL DEFAULT '12',
  `isbold` tinyint(1) NOT NULL DEFAULT '0',
  `nhit` int(11) NOT NULL DEFAULT '0',
  `nhitlate` int(11) NOT NULL DEFAULT '0',
  `iscommend` tinyint(1) NOT NULL DEFAULT '0',
  `norder` int(11) NOT NULL DEFAULT '0',
  `ktemplate1` char(255) DEFAULT NULL,
  `ktemplate2` char(255) DEFAULT NULL,
  PRIMARY KEY (`kid`),
  UNIQUE KEY `ktag` (`ktag`),
  KEY `iscommend` (`iscommend`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_site;
CREATE TABLE `king_site` (
  `siteid` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` char(100) NOT NULL,
  `siteurl` char(100) DEFAULT NULL,
  PRIMARY KEY (`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_system;
CREATE TABLE `king_system` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(6) NOT NULL DEFAULT '0',
  `isshow` tinyint(1) NOT NULL DEFAULT '1',
  `issys` tinyint(1) NOT NULL DEFAULT '1',
  `kname` char(50) NOT NULL,
  `norder` int(11) NOT NULL DEFAULT '0',
  `kmodule` char(50) NOT NULL,
  `kvalue` text,
  `ntype` tinyint(1) NOT NULL DEFAULT '0',
  `nvalidate` tinyint(1) NOT NULL DEFAULT '0',
  `nsizemin` int(8) NOT NULL DEFAULT '0',
  `nsizemax` int(8) NOT NULL DEFAULT '0',
  `koption` text,
  `nstylewidth` smallint(4) NOT NULL DEFAULT '0',
  `nstyleheight` smallint(4) NOT NULL DEFAULT '0',
  `khelp` char(100) DEFAULT NULL,
  PRIMARY KEY (`kid`),
  UNIQUE KEY `kname` (`kname`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_system_caption;
CREATE TABLE `king_system_caption` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `kpath` char(100) NOT NULL,
  `kmodule` char(50) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_tag;
CREATE TABLE `king_tag` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `ktag` char(100) NOT NULL,
  `kimage` char(255) DEFAULT NULL,
  `kkeywords` char(120) DEFAULT NULL,
  `kdescription` char(255) DEFAULT NULL,
  `kcolor` char(7) NOT NULL,
  `nsize` tinyint(2) NOT NULL DEFAULT '12',
  `isbold` tinyint(1) NOT NULL DEFAULT '0',
  `nhit` int(11) NOT NULL DEFAULT '0',
  `nhitlate` int(11) NOT NULL DEFAULT '0',
  `iscommend` tinyint(1) NOT NULL DEFAULT '0',
  `norder` int(11) NOT NULL DEFAULT '0',
  `ktemplate1` char(255) DEFAULT NULL,
  `ktemplate2` char(255) DEFAULT NULL,
  PRIMARY KEY (`kid`),
  UNIQUE KEY `ktag` (`ktag`),
  KEY `iscommend` (`iscommend`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_upfile;
CREATE TABLE `king_upfile` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `kpath` char(255) NOT NULL,
  `ndate` int(10) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `adminid` int(11) NOT NULL DEFAULT '0',
  `ntype` tinyint(1) NOT NULL DEFAULT '0',
  `ktitle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kid`),
  KEY `userid` (`userid`),
  KEY `adminid` (`adminid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_user;
CREATE TABLE `king_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(15) NOT NULL,
  `gid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `userpass` char(32) NOT NULL,
  `usermail` char(32) NOT NULL,
  `userask` char(30) DEFAULT NULL,
  `useranswer` char(16) DEFAULT NULL,
  `userhead` char(255) DEFAULT NULL,
  `userpoint` int(11) NOT NULL DEFAULT '0',
  `regip` int(10) NOT NULL DEFAULT '0',
  `regdate` int(10) NOT NULL DEFAULT '0',
  `lastloginip` int(10) NOT NULL DEFAULT '0',
  `isdelete` tinyint(1) NOT NULL DEFAULT '0',
  `islock` tinyint(1) NOT NULL DEFAULT '0',
  `lastlogindate` int(10) NOT NULL DEFAULT '0',
  `ksalt` char(6) DEFAULT NULL,
  `nickname` varchar(15) DEFAULT NULL,
  `realname` char(30) DEFAULT NULL,
  `usertel` char(30) DEFAULT NULL,
  `useraddress` char(250) DEFAULT NULL,
  `userpost` char(10) DEFAULT NULL,
  `kremark` text,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  KEY `islock` (`islock`),
  KEY `gid` (`gid`),
  KEY `isdelete` (`isdelete`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS king_usergroup;
CREATE TABLE `king_usergroup` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `kname` char(30) NOT NULL,
  `norder` int(11) NOT NULL DEFAULT '0',
  `kaccess` text,
  `kremark` varchar(255) DEFAULT NULL,
  `kmenu` text,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


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
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=gbk;


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
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=gbk;


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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=gbk;


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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;


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
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=gbk;


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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=gbk;


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
) ENGINE=MyISAM AUTO_INCREMENT=1121 DEFAULT CHARSET=gbk;


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
) ENGINE=MyISAM AUTO_INCREMENT=1129 DEFAULT CHARSET=gbk;


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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;


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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;


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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=gbk;


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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=gbk;


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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;


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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=gbk;


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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;


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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=gbk;


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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=gbk;


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
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangnzhang_yzimg;
CREATE TABLE `liuyangnzhang_yzimg` (
  `sid` varchar(8) NOT NULL DEFAULT '',
  `imgnum` varchar(6) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `posttime` (`imgnum`,`posttime`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS liuyangzhangqb_admin_menu;
CREATE TABLE `liuyangzhangqb_admin_menu` (
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


DROP TABLE IF EXISTS liuyangzhangqb_alonepage;
CREATE TABLE `liuyangzhangqb_alonepage` (
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


DROP TABLE IF EXISTS liuyangzhangqb_area;
CREATE TABLE `liuyangzhangqb_area` (
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


DROP TABLE IF EXISTS liuyangzhangqb_config;
CREATE TABLE `liuyangzhangqb_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_crontab;
CREATE TABLE `liuyangzhangqb_crontab` (
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


DROP TABLE IF EXISTS liuyangzhangqb_example;
CREATE TABLE `liuyangzhangqb_example` (
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


DROP TABLE IF EXISTS liuyangzhangqb_example_sort;
CREATE TABLE `liuyangzhangqb_example_sort` (
  `fid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_form_config;
CREATE TABLE `liuyangzhangqb_form_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_form_content;
CREATE TABLE `liuyangzhangqb_form_content` (
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


DROP TABLE IF EXISTS liuyangzhangqb_form_content_1;
CREATE TABLE `liuyangzhangqb_form_content_1` (
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


DROP TABLE IF EXISTS liuyangzhangqb_form_content_2;
CREATE TABLE `liuyangzhangqb_form_content_2` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `my_name` varchar(20) NOT NULL DEFAULT '',
  `my_phone` varchar(20) NOT NULL DEFAULT '',
  `my_mail` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_form_module;
CREATE TABLE `liuyangzhangqb_form_module` (
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


DROP TABLE IF EXISTS liuyangzhangqb_form_reply;
CREATE TABLE `liuyangzhangqb_form_reply` (
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


DROP TABLE IF EXISTS liuyangzhangqb_friendlink;
CREATE TABLE `liuyangzhangqb_friendlink` (
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


DROP TABLE IF EXISTS liuyangzhangqb_friendlink_sort;
CREATE TABLE `liuyangzhangqb_friendlink_sort` (
  `fid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_group;
CREATE TABLE `liuyangzhangqb_group` (
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


DROP TABLE IF EXISTS liuyangzhangqb_guestbook_config;
CREATE TABLE `liuyangzhangqb_guestbook_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_guestbook_content;
CREATE TABLE `liuyangzhangqb_guestbook_content` (
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


DROP TABLE IF EXISTS liuyangzhangqb_guestbook_sort;
CREATE TABLE `liuyangzhangqb_guestbook_sort` (
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


DROP TABLE IF EXISTS liuyangzhangqb_hack;
CREATE TABLE `liuyangzhangqb_hack` (
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


DROP TABLE IF EXISTS liuyangzhangqb_hr_apply;
CREATE TABLE `liuyangzhangqb_hr_apply` (
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


DROP TABLE IF EXISTS liuyangzhangqb_hr_city;
CREATE TABLE `liuyangzhangqb_hr_city` (
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


DROP TABLE IF EXISTS liuyangzhangqb_hr_collection;
CREATE TABLE `liuyangzhangqb_hr_collection` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `memberuid` mediumint(7) NOT NULL DEFAULT '0',
  `companyuid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `memberuid` (`memberuid`),
  KEY `companyuid` (`companyuid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_hr_config;
CREATE TABLE `liuyangzhangqb_hr_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_hr_content;
CREATE TABLE `liuyangzhangqb_hr_content` (
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


DROP TABLE IF EXISTS liuyangzhangqb_hr_content_1;
CREATE TABLE `liuyangzhangqb_hr_content_1` (
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


DROP TABLE IF EXISTS liuyangzhangqb_hr_content_2;
CREATE TABLE `liuyangzhangqb_hr_content_2` (
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


DROP TABLE IF EXISTS liuyangzhangqb_hr_field;
CREATE TABLE `liuyangzhangqb_hr_field` (
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


DROP TABLE IF EXISTS liuyangzhangqb_hr_module;
CREATE TABLE `liuyangzhangqb_hr_module` (
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


DROP TABLE IF EXISTS liuyangzhangqb_hr_person;
CREATE TABLE `liuyangzhangqb_hr_person` (
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


DROP TABLE IF EXISTS liuyangzhangqb_hr_sort;
CREATE TABLE `liuyangzhangqb_hr_sort` (
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


DROP TABLE IF EXISTS liuyangzhangqb_jfabout;
CREATE TABLE `liuyangzhangqb_jfabout` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_jfsort;
CREATE TABLE `liuyangzhangqb_jfsort` (
  `fid` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_label;
CREATE TABLE `liuyangzhangqb_label` (
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


DROP TABLE IF EXISTS liuyangzhangqb_limitword;
CREATE TABLE `liuyangzhangqb_limitword` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `oldword` varchar(50) NOT NULL DEFAULT '',
  `newword` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_memberdata;
CREATE TABLE `liuyangzhangqb_memberdata` (
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


DROP TABLE IF EXISTS liuyangzhangqb_members;
CREATE TABLE `liuyangzhangqb_members` (
  `uid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_menu;
CREATE TABLE `liuyangzhangqb_menu` (
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


DROP TABLE IF EXISTS liuyangzhangqb_module;
CREATE TABLE `liuyangzhangqb_module` (
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


DROP TABLE IF EXISTS liuyangzhangqb_moneycard;
CREATE TABLE `liuyangzhangqb_moneycard` (
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


DROP TABLE IF EXISTS liuyangzhangqb_moneylog;
CREATE TABLE `liuyangzhangqb_moneylog` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `about` varchar(255) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_news_comments;
CREATE TABLE `liuyangzhangqb_news_comments` (
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


DROP TABLE IF EXISTS liuyangzhangqb_news_config;
CREATE TABLE `liuyangzhangqb_news_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_news_content;
CREATE TABLE `liuyangzhangqb_news_content` (
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


DROP TABLE IF EXISTS liuyangzhangqb_news_content_1;
CREATE TABLE `liuyangzhangqb_news_content_1` (
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


DROP TABLE IF EXISTS liuyangzhangqb_news_sort;
CREATE TABLE `liuyangzhangqb_news_sort` (
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


DROP TABLE IF EXISTS liuyangzhangqb_olpay;
CREATE TABLE `liuyangzhangqb_olpay` (
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


DROP TABLE IF EXISTS liuyangzhangqb_pm;
CREATE TABLE `liuyangzhangqb_pm` (
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


DROP TABLE IF EXISTS liuyangzhangqb_propagandize;
CREATE TABLE `liuyangzhangqb_propagandize` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `ip` bigint(11) NOT NULL DEFAULT '0',
  `day` smallint(3) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `fromurl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `day` (`day`,`uid`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_regnum;
CREATE TABLE `liuyangzhangqb_regnum` (
  `sid` varchar(8) NOT NULL DEFAULT '',
  `num` varchar(6) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `posttime` (`num`,`posttime`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS liuyangzhangqb_sell_collection;
CREATE TABLE `liuyangzhangqb_sell_collection` (
  `cid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_sell_comments;
CREATE TABLE `liuyangzhangqb_sell_comments` (
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


DROP TABLE IF EXISTS liuyangzhangqb_sell_config;
CREATE TABLE `liuyangzhangqb_sell_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_sell_content;
CREATE TABLE `liuyangzhangqb_sell_content` (
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


DROP TABLE IF EXISTS liuyangzhangqb_sell_content_1;
CREATE TABLE `liuyangzhangqb_sell_content_1` (
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


DROP TABLE IF EXISTS liuyangzhangqb_sell_content_2;
CREATE TABLE `liuyangzhangqb_sell_content_2` (
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


DROP TABLE IF EXISTS liuyangzhangqb_sell_db;
CREATE TABLE `liuyangzhangqb_sell_db` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `city_id` (`city_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_sell_field;
CREATE TABLE `liuyangzhangqb_sell_field` (
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


DROP TABLE IF EXISTS liuyangzhangqb_sell_join;
CREATE TABLE `liuyangzhangqb_sell_join` (
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


DROP TABLE IF EXISTS liuyangzhangqb_sell_module;
CREATE TABLE `liuyangzhangqb_sell_module` (
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


DROP TABLE IF EXISTS liuyangzhangqb_sell_pic;
CREATE TABLE `liuyangzhangqb_sell_pic` (
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


DROP TABLE IF EXISTS liuyangzhangqb_sell_report;
CREATE TABLE `liuyangzhangqb_sell_report` (
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


DROP TABLE IF EXISTS liuyangzhangqb_sell_sort;
CREATE TABLE `liuyangzhangqb_sell_sort` (
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


DROP TABLE IF EXISTS liuyangzhangqb_template;
CREATE TABLE `liuyangzhangqb_template` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `type` smallint(4) NOT NULL DEFAULT '0',
  `filepath` varchar(100) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_template_bak;
CREATE TABLE `liuyangzhangqb_template_bak` (
  `bid` int(7) NOT NULL AUTO_INCREMENT,
  `id` int(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `code` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS liuyangzhangqb_upfile;
CREATE TABLE `liuyangzhangqb_upfile` (
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


DROP TABLE IF EXISTS liuyangzhangqb_yzimg;
CREATE TABLE `liuyangzhangqb_yzimg` (
  `sid` varchar(8) NOT NULL DEFAULT '',
  `imgnum` varchar(6) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `posttime` (`imgnum`,`posttime`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;


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


INSERT INTO `espcms_admin_member` VALUES ('1','admin','fd89391a37e3d955074af43b651e3dfe','admin','1','1373815632','1374074179','1373815632','2147483647','3','1','1','1','0');
INSERT INTO `espcms_admin_powergroup` VALUES ('1','ϵͳ������','all','1');
INSERT INTO `espcms_advert` VALUES ('1','50','1','cn','EarcLink-�������ۺ�Ӧ��������','upfile/2011/08/19/20110819230346_958.jpg','http://www.earclink.com','','1','0','0','1314633600','1314633600','1314710440','1','1','0');
INSERT INTO `espcms_advert` VALUES ('2','50','1','cn','EarcLink-�������ۺ�Ӧ��������','upfile/2011/08/19/20110819230342_671.jpg','http://www.earclink.com','','1','0','0','1314633600','1314633600','1314710454','1','1','0');
INSERT INTO `espcms_advert` VALUES ('3','50','1','cn','EarcLink-�������ۺ�Ӧ��������','upfile/2011/08/19/20110819230338_165.jpg','http://www.earclink.com','','1','0','0','1314633600','1314633600','1314710465','1','1','0');
INSERT INTO `espcms_advert` VALUES ('4','50','2','cn','Earclink','','http://www.earclink.com','','3','0','0','1314633600','1314633600','1314715346','1','1','0');
INSERT INTO `espcms_advert` VALUES ('5','50','2','cn','��������','','http://www.earclink.com','','3','0','0','1314633600','1314633600','1314715361','1','1','0');
INSERT INTO `espcms_advert` VALUES ('6','50','2','cn','KUBCMS','','http://www.kubcms.com','','3','0','0','1314633600','1314633600','1314715383','1','1','0');
INSERT INTO `espcms_advert` VALUES ('7','50','2','cn','��˼ESPCMS��ҵ��վ����ϵͳ','','http://www.espcms.com','','3','0','0','1314633600','1314633600','1314715502','1','1','0');
INSERT INTO `espcms_advert` VALUES ('8','50','2','cn','��˼ESPCMS','','http://www.espcms.net','','3','0','0','1314633600','1314633600','1314715513','1','1','0');
INSERT INTO `espcms_advert` VALUES ('9','50','2','cn','ESPCMS','','http://www.ecisp.cn','','3','0','0','1314633600','1314633600','1314715521','1','1','0');
INSERT INTO `espcms_advert` VALUES ('10','50','2','cn','ESPCMS������̳','','http://bbs.ecisp.cn','','3','0','0','1314633600','1314633600','1314715546','1','1','0');
INSERT INTO `espcms_advert` VALUES ('11','50','2','cn','KUBCMS�Ჩ�Ż�����ϵͳ','','http://www.kubcms.com','','3','0','0','1314633600','1314633600','1314715565','1','1','0');
INSERT INTO `espcms_advert` VALUES ('12','50','2','cn','ESPCMS��ʾƽ̨','','http://www.easysitepm.com','','3','0','0','1314633600','1314633600','1314715587','1','1','0');
INSERT INTO `espcms_advert` VALUES ('16','50','4','en','EarcLink','','http://www.earclink.com','','3','0','0','1314633600','1314633600','1314718036','1','1','0');
INSERT INTO `espcms_advert` VALUES ('17','50','4','en','ESPCMS','','http://www.espcms.com','','3','0','0','1314633600','1314633600','1314718067','1','1','0');
INSERT INTO `espcms_advert` VALUES ('14','50','3','en','EARCLINK�������','upfile/2011/08/19/20110819230342_671.jpg','http://www.earclink.com','','1','0','0','1314633600','1314633600','1314717553','1','1','0');
INSERT INTO `espcms_advert` VALUES ('15','50','3','en','EARCLINK�������','upfile/2011/08/19/20110819230338_165.jpg','http://www.earclink.com','','1','0','0','1314633600','1314633600','1314717568','1','1','0');
INSERT INTO `espcms_advert` VALUES ('18','50','4','en','KUBCMS','','http://www.kubcms.com','','3','0','0','1314633600','1314633600','1314718079','1','1','0');
INSERT INTO `espcms_advert` VALUES ('19','50','4','en','YUNSYS','','http://www.yunsys.com','','3','0','0','1314633600','1314633600','1314718089','1','1','0');
INSERT INTO `espcms_advert` VALUES ('20','50','4','en','EasysitePM','','http://www.easysitepm.com','','3','0','0','1314633600','1314633600','1314718101','1','1','0');
INSERT INTO `espcms_advert` VALUES ('21','50','4','en','AbeBooks','','http://www.abebooks.com/','','3','0','0','1314633600','1314633600','1314718130','1','1','0');
INSERT INTO `espcms_advert` VALUES ('22','50','4','en','AmazonWireless','','http://wireless.amazon.com/','','3','0','0','1314633600','1314633600','1314718156','1','1','0');
INSERT INTO `espcms_advert` VALUES ('23','50','4','en','Askville','','http://www.audible.com/','','3','0','0','1314633600','1314633600','1314718205','1','1','0');
INSERT INTO `espcms_advert` VALUES ('24','50','4','en','Warehouse Deals','','http://www.amazon.com/b/ref=footer_wrhsdls?ie=UTF8&amp;node=1267877011','','3','0','0','1314633600','1314633600','1314718247','1','1','0');
INSERT INTO `espcms_advert_type` VALUES ('1','cn','��ҳ�õ�Ƭ���','','942','254','1','0','0','','','');
INSERT INTO `espcms_advert_type` VALUES ('2','cn','��ҳ��������','','0','0','1','0','0','','','');
INSERT INTO `espcms_advert_type` VALUES ('3','en','��ҳ�ֻ����','','0','0','1','0','0','','','');
INSERT INTO `espcms_advert_type` VALUES ('4','en','��ҳ������������','','0','0','1','0','0','','','');
INSERT INTO `espcms_album_file` VALUES ('1','1','2','20110830220714_201.jpg','','20110830220714_201.jpg','upfile/2011/08/30/','1','1314713234');
INSERT INTO `espcms_album_file` VALUES ('2','1','3','20110830220718_580.jpg','','20110830220718_580.jpg','upfile/2011/08/30/','1','1314713238');
INSERT INTO `espcms_album_file` VALUES ('3','1','4','20110830220721_977.jpg','','20110830220721_977.jpg','upfile/2011/08/30/','1','1314713241');
INSERT INTO `espcms_album_file` VALUES ('4','1','5','20110830221115_303.jpg','','20110830221115_303.jpg','upfile/2011/08/30/','2','1314713475');
INSERT INTO `espcms_album_file` VALUES ('5','1','6','20110830221119_107.jpg','','20110830221119_107.jpg','upfile/2011/08/30/','2','1314713479');
INSERT INTO `espcms_album_file` VALUES ('6','1','7','20110830221123_939.jpg','','20110830221123_939.jpg','upfile/2011/08/30/','2','1314713483');
INSERT INTO `espcms_album_file` VALUES ('7','1','8','20110830221811_509.jpg','','20110830221811_509.jpg','upfile/2011/08/30/','2','1314713891');
INSERT INTO `espcms_album_file` VALUES ('8','1','9','20110830221819_399.jpg','','20110830221819_399.jpg','upfile/2011/08/30/','2','1314713899');
INSERT INTO `espcms_album_file` VALUES ('9','1','10','20110830222415_540.jpg','','20110830222415_540.jpg','upfile/2011/08/30/','2','1314714255');
INSERT INTO `espcms_album_file` VALUES ('10','1','11','20110830222428_951.jpg','','20110830222428_951.jpg','upfile/2011/08/30/','2','1314714268');
INSERT INTO `espcms_album_file` VALUES ('11','1','12','20110830222837_953.jpg','','20110830222837_953.jpg','upfile/2011/08/30/','2','1314714517');
INSERT INTO `espcms_album_file` VALUES ('12','1','13','20110830222841_197.jpg','','20110830222841_197.jpg','upfile/2011/08/30/','2','1314714521');
INSERT INTO `espcms_album_images` VALUES ('1','50','cn','��Ʒ���','','','1314713220','1','0');
INSERT INTO `espcms_bbs_typelist` VALUES ('1','50','cn','��������','','0','1','1','1314710341','10','5','0','0','','','1','0','0','1','0','message_center');
INSERT INTO `espcms_calling` VALUES ('1','50','cn','1','0','ESPCMS��Ȩ��ѯ','&lt;a target=&quot;_blank&quot; href=&quot;http://wpa.qq.com/msgrd?v=3&amp;uin=6326420&amp;site=qq&amp;menu=yes&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://wpa.qq.com/pa?p=2:6326420:41 &amp;r=0.15196556923910975&quot; alt=&quot;���������ҷ���Ϣ&quot; title=&quot;���������ҷ���Ϣ&quot;&gt;&lt;/a&gt;','1314721346','1');
INSERT INTO `espcms_calling` VALUES ('2','50','en','1','0','Authorized Consulting','&lt;a target=&quot;_blank&quot; href=&quot;http://wpa.qq.com/msgrd?v=3&amp;uin=6326420&amp;site=qq&amp;menu=yes&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://wpa.qq.com/pa?p=2:6326420:41&quot; alt=&quot;���������ҷ���Ϣ&quot; title=&quot;���������ҷ���Ϣ&quot;&gt;&lt;/a&gt;','1314721945','1');
INSERT INTO `espcms_city` VALUES ('1','0','�й�','0','0');
INSERT INTO `espcms_city` VALUES ('2','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('3','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('4','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('5','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('6','1','�㶫','1','0');
INSERT INTO `espcms_city` VALUES ('7','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('8','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('9','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('10','1','�ӱ�','1','0');
INSERT INTO `espcms_city` VALUES ('11','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('12','1','������','1','0');
INSERT INTO `espcms_city` VALUES ('13','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('14','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('15','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('16','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('17','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('18','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('19','1','���ɹ�','1','0');
INSERT INTO `espcms_city` VALUES ('20','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('21','1','�ຣ','1','0');
INSERT INTO `espcms_city` VALUES ('22','1','ɽ��','1','0');
INSERT INTO `espcms_city` VALUES ('23','1','ɽ��','1','0');
INSERT INTO `espcms_city` VALUES ('24','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('25','1','�Ϻ�','1','0');
INSERT INTO `espcms_city` VALUES ('26','1','�Ĵ�','1','0');
INSERT INTO `espcms_city` VALUES ('27','1','���','1','0');
INSERT INTO `espcms_city` VALUES ('28','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('29','1','�½�','1','0');
INSERT INTO `espcms_city` VALUES ('30','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('31','1','�㽭','1','0');
INSERT INTO `espcms_city` VALUES ('32','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('33','1','���','1','0');
INSERT INTO `espcms_city` VALUES ('34','1','����','1','0');
INSERT INTO `espcms_city` VALUES ('35','1','̨��','1','0');
INSERT INTO `espcms_city` VALUES ('36','3','����','2','0');
INSERT INTO `espcms_city` VALUES ('37','3','����','2','0');
INSERT INTO `espcms_city` VALUES ('38','3','����','2','0');
INSERT INTO `espcms_city` VALUES ('39','3','����','2','0');
INSERT INTO `espcms_city` VALUES ('40','3','����','2','0');
INSERT INTO `espcms_city` VALUES ('41','3','����','2','0');
INSERT INTO `espcms_city` VALUES ('42','3','����','2','0');
INSERT INTO `espcms_city` VALUES ('43','3','����','2','0');
INSERT INTO `espcms_city` VALUES ('44','3','��ɽ','2','0');
INSERT INTO `espcms_city` VALUES ('45','3','����','2','0');
INSERT INTO `espcms_city` VALUES ('46','3','��ɽ','2','0');
INSERT INTO `espcms_city` VALUES ('47','3','����','2','0');
INSERT INTO `espcms_city` VALUES ('48','3','ͭ��','2','0');
INSERT INTO `espcms_city` VALUES ('49','3','�ߺ�','2','0');
INSERT INTO `espcms_city` VALUES ('50','3','����','2','0');
INSERT INTO `espcms_city` VALUES ('51','3','����','2','0');
INSERT INTO `espcms_city` VALUES ('52','2','����','2','0');
INSERT INTO `espcms_city` VALUES ('53','4','����','2','0');
INSERT INTO `espcms_city` VALUES ('54','4','����','2','0');
INSERT INTO `espcms_city` VALUES ('55','4','��ƽ','2','0');
INSERT INTO `espcms_city` VALUES ('56','4','����','2','0');
INSERT INTO `espcms_city` VALUES ('57','4','����','2','0');
INSERT INTO `espcms_city` VALUES ('58','4','Ȫ��','2','0');
INSERT INTO `espcms_city` VALUES ('59','4','����','2','0');
INSERT INTO `espcms_city` VALUES ('60','4','����','2','0');
INSERT INTO `espcms_city` VALUES ('61','4','����','2','0');
INSERT INTO `espcms_city` VALUES ('62','5','����','2','0');
INSERT INTO `espcms_city` VALUES ('63','5','����','2','0');
INSERT INTO `espcms_city` VALUES ('64','5','����','2','0');
INSERT INTO `espcms_city` VALUES ('65','5','����','2','0');
INSERT INTO `espcms_city` VALUES ('66','5','������','2','0');
INSERT INTO `espcms_city` VALUES ('67','5','���','2','0');
INSERT INTO `espcms_city` VALUES ('68','5','��Ȫ','2','0');
INSERT INTO `espcms_city` VALUES ('69','5','����','2','0');
INSERT INTO `espcms_city` VALUES ('70','5','¤��','2','0');
INSERT INTO `espcms_city` VALUES ('71','5','ƽ��','2','0');
INSERT INTO `espcms_city` VALUES ('72','5','����','2','0');
INSERT INTO `espcms_city` VALUES ('73','5','��ˮ','2','0');
INSERT INTO `espcms_city` VALUES ('74','5','����','2','0');
INSERT INTO `espcms_city` VALUES ('75','5','��Ҵ','2','0');
INSERT INTO `espcms_city` VALUES ('76','6','����','2','0');
INSERT INTO `espcms_city` VALUES ('77','6','����','2','0');
INSERT INTO `espcms_city` VALUES ('78','6','����','2','0');
INSERT INTO `espcms_city` VALUES ('79','6','��ݸ','2','0');
INSERT INTO `espcms_city` VALUES ('80','6','��ɽ','2','0');
INSERT INTO `espcms_city` VALUES ('81','6','��Դ','2','0');
INSERT INTO `espcms_city` VALUES ('82','6','����','2','0');
INSERT INTO `espcms_city` VALUES ('83','6','����','2','0');
INSERT INTO `espcms_city` VALUES ('84','6','����','2','0');
INSERT INTO `espcms_city` VALUES ('85','6','ï��','2','0');
INSERT INTO `espcms_city` VALUES ('86','6','÷��','2','0');
INSERT INTO `espcms_city` VALUES ('87','6','��Զ','2','0');
INSERT INTO `espcms_city` VALUES ('88','6','��ͷ','2','0');
INSERT INTO `espcms_city` VALUES ('89','6','��β','2','0');
INSERT INTO `espcms_city` VALUES ('90','6','�ع�','2','0');
INSERT INTO `espcms_city` VALUES ('91','6','����','2','0');
INSERT INTO `espcms_city` VALUES ('92','6','�Ƹ�','2','0');
INSERT INTO `espcms_city` VALUES ('93','6','տ��','2','0');
INSERT INTO `espcms_city` VALUES ('94','6','����','2','0');
INSERT INTO `espcms_city` VALUES ('95','6','��ɽ','2','0');
INSERT INTO `espcms_city` VALUES ('96','6','�麣','2','0');
INSERT INTO `espcms_city` VALUES ('97','7','����','2','0');
INSERT INTO `espcms_city` VALUES ('98','7','����','2','0');
INSERT INTO `espcms_city` VALUES ('99','7','��ɫ','2','0');
INSERT INTO `espcms_city` VALUES ('100','7','����','2','0');
INSERT INTO `espcms_city` VALUES ('101','7','����','2','0');
INSERT INTO `espcms_city` VALUES ('102','7','���Ǹ�','2','0');
INSERT INTO `espcms_city` VALUES ('103','7','���','2','0');
INSERT INTO `espcms_city` VALUES ('104','7','�ӳ�','2','0');
INSERT INTO `espcms_city` VALUES ('105','7','����','2','0');
INSERT INTO `espcms_city` VALUES ('106','7','����','2','0');
INSERT INTO `espcms_city` VALUES ('107','7','����','2','0');
INSERT INTO `espcms_city` VALUES ('108','7','����','2','0');
INSERT INTO `espcms_city` VALUES ('109','7','����','2','0');
INSERT INTO `espcms_city` VALUES ('110','7','����','2','0');
INSERT INTO `espcms_city` VALUES ('111','8','����','2','0');
INSERT INTO `espcms_city` VALUES ('112','8','��˳','2','0');
INSERT INTO `espcms_city` VALUES ('113','8','�Ͻ�','2','0');
INSERT INTO `espcms_city` VALUES ('114','8','����ˮ','2','0');
INSERT INTO `espcms_city` VALUES ('115','8','ǭ����','2','0');
INSERT INTO `espcms_city` VALUES ('116','8','ǭ��','2','0');
INSERT INTO `espcms_city` VALUES ('117','8','ǭ����','2','0');
INSERT INTO `espcms_city` VALUES ('118','8','ͭ��','2','0');
INSERT INTO `espcms_city` VALUES ('119','8','����','2','0');
INSERT INTO `espcms_city` VALUES ('120','9','����','2','0');
INSERT INTO `espcms_city` VALUES ('121','9','����','2','0');
INSERT INTO `espcms_city` VALUES ('122','9','��ɳ','2','0');
INSERT INTO `espcms_city` VALUES ('123','9','��ͤ','2','0');
INSERT INTO `espcms_city` VALUES ('124','9','����','2','0');
INSERT INTO `espcms_city` VALUES ('125','9','������','2','0');
INSERT INTO `espcms_city` VALUES ('126','9','������','2','0');
INSERT INTO `espcms_city` VALUES ('127','9','����','2','0');
INSERT INTO `espcms_city` VALUES ('128','9','�ֶ�','2','0');
INSERT INTO `espcms_city` VALUES ('129','9','�ٸ���','2','0');
INSERT INTO `espcms_city` VALUES ('130','9','��ˮ','2','0');
INSERT INTO `espcms_city` VALUES ('131','9','��','2','0');
INSERT INTO `espcms_city` VALUES ('132','9','����','2','0');
INSERT INTO `espcms_city` VALUES ('133','9','�Ͳ���','2','0');
INSERT INTO `espcms_city` VALUES ('134','9','����','2','0');
INSERT INTO `espcms_city` VALUES ('135','9','�Ĳ�','2','0');
INSERT INTO `espcms_city` VALUES ('136','9','��ָɽ','2','0');
INSERT INTO `espcms_city` VALUES ('137','9','����','2','0');
INSERT INTO `espcms_city` VALUES ('138','10','ʯ��ׯ','2','0');
INSERT INTO `espcms_city` VALUES ('139','10','����','2','0');
INSERT INTO `espcms_city` VALUES ('140','10','����','2','0');
INSERT INTO `espcms_city` VALUES ('141','10','�е�','2','0');
INSERT INTO `espcms_city` VALUES ('142','10','����','2','0');
INSERT INTO `espcms_city` VALUES ('143','10','��ˮ','2','0');
INSERT INTO `espcms_city` VALUES ('144','10','�ȷ�','2','0');
INSERT INTO `espcms_city` VALUES ('145','10','�ػʵ�','2','0');
INSERT INTO `espcms_city` VALUES ('146','10','��ɽ','2','0');
INSERT INTO `espcms_city` VALUES ('147','10','��̨','2','0');
INSERT INTO `espcms_city` VALUES ('148','10','�żҿ�','2','0');
INSERT INTO `espcms_city` VALUES ('149','11','֣��','2','0');
INSERT INTO `espcms_city` VALUES ('150','11','����','2','0');
INSERT INTO `espcms_city` VALUES ('151','11','����','2','0');
INSERT INTO `espcms_city` VALUES ('152','11','����','2','0');
INSERT INTO `espcms_city` VALUES ('153','11','�ױ�','2','0');
INSERT INTO `espcms_city` VALUES ('154','11','��Դ','2','0');
INSERT INTO `espcms_city` VALUES ('155','11','����','2','0');
INSERT INTO `espcms_city` VALUES ('156','11','����','2','0');
INSERT INTO `espcms_city` VALUES ('157','11','ƽ��ɽ','2','0');
INSERT INTO `espcms_city` VALUES ('158','11','����Ͽ','2','0');
INSERT INTO `espcms_city` VALUES ('159','11','����','2','0');
INSERT INTO `espcms_city` VALUES ('160','11','����','2','0');
INSERT INTO `espcms_city` VALUES ('161','11','����','2','0');
INSERT INTO `espcms_city` VALUES ('162','11','���','2','0');
INSERT INTO `espcms_city` VALUES ('163','11','�ܿ�','2','0');
INSERT INTO `espcms_city` VALUES ('164','11','פ���','2','0');
INSERT INTO `espcms_city` VALUES ('165','11','���','2','0');
INSERT INTO `espcms_city` VALUES ('166','11','���','2','0');
INSERT INTO `espcms_city` VALUES ('167','12','������','2','0');
INSERT INTO `espcms_city` VALUES ('168','12','����','2','0');
INSERT INTO `espcms_city` VALUES ('169','12','���˰���','2','0');
INSERT INTO `espcms_city` VALUES ('170','12','�׸�','2','0');
INSERT INTO `espcms_city` VALUES ('171','12','�ں�','2','0');
INSERT INTO `espcms_city` VALUES ('172','12','����','2','0');
INSERT INTO `espcms_city` VALUES ('173','12','��ľ˹','2','0');
INSERT INTO `espcms_city` VALUES ('174','12','ĵ����','2','0');
INSERT INTO `espcms_city` VALUES ('175','12','��̨��','2','0');
INSERT INTO `espcms_city` VALUES ('176','12','�������','2','0');
INSERT INTO `espcms_city` VALUES ('177','12','˫Ѽɽ','2','0');
INSERT INTO `espcms_city` VALUES ('178','12','�绯','2','0');
INSERT INTO `espcms_city` VALUES ('179','12','����','2','0');
INSERT INTO `espcms_city` VALUES ('180','13','�人','2','0');
INSERT INTO `espcms_city` VALUES ('181','13','����','2','0');
INSERT INTO `espcms_city` VALUES ('182','13','����','2','0');
INSERT INTO `espcms_city` VALUES ('183','13','�Ƹ�','2','0');
INSERT INTO `espcms_city` VALUES ('184','13','��ʯ','2','0');
INSERT INTO `espcms_city` VALUES ('185','13','����','2','0');
INSERT INTO `espcms_city` VALUES ('186','13','����','2','0');
INSERT INTO `espcms_city` VALUES ('187','13','Ǳ��','2','0');
INSERT INTO `espcms_city` VALUES ('188','13','��ũ������','2','0');
INSERT INTO `espcms_city` VALUES ('189','13','ʮ��','2','0');
INSERT INTO `espcms_city` VALUES ('190','13','����','2','0');
INSERT INTO `espcms_city` VALUES ('191','13','����','2','0');
INSERT INTO `espcms_city` VALUES ('192','13','����','2','0');
INSERT INTO `espcms_city` VALUES ('193','13','�差','2','0');
INSERT INTO `espcms_city` VALUES ('194','13','Т��','2','0');
INSERT INTO `espcms_city` VALUES ('195','13','�˲�','2','0');
INSERT INTO `espcms_city` VALUES ('196','13','��ʩ','2','0');
INSERT INTO `espcms_city` VALUES ('197','14','��ɳ','2','0');
INSERT INTO `espcms_city` VALUES ('198','14','�żҽ�','2','0');
INSERT INTO `espcms_city` VALUES ('199','14','����','2','0');
INSERT INTO `espcms_city` VALUES ('200','14','����','2','0');
INSERT INTO `espcms_city` VALUES ('201','14','����','2','0');
INSERT INTO `espcms_city` VALUES ('202','14','����','2','0');
INSERT INTO `espcms_city` VALUES ('203','14','¦��','2','0');
INSERT INTO `espcms_city` VALUES ('204','14','����','2','0');
INSERT INTO `espcms_city` VALUES ('205','14','��̶','2','0');
INSERT INTO `espcms_city` VALUES ('206','14','����','2','0');
INSERT INTO `espcms_city` VALUES ('207','14','����','2','0');
INSERT INTO `espcms_city` VALUES ('208','14','����','2','0');
INSERT INTO `espcms_city` VALUES ('209','14','����','2','0');
INSERT INTO `espcms_city` VALUES ('210','14','����','2','0');
INSERT INTO `espcms_city` VALUES ('211','15','����','2','0');
INSERT INTO `espcms_city` VALUES ('212','15','����','2','0');
INSERT INTO `espcms_city` VALUES ('213','15','�׳�','2','0');
INSERT INTO `espcms_city` VALUES ('214','15','��ɽ','2','0');
INSERT INTO `espcms_city` VALUES ('215','15','��Դ','2','0');
INSERT INTO `espcms_city` VALUES ('216','15','��ƽ','2','0');
INSERT INTO `espcms_city` VALUES ('217','15','��ԭ','2','0');
INSERT INTO `espcms_city` VALUES ('218','15','ͨ��','2','0');
INSERT INTO `espcms_city` VALUES ('219','15','�ӱ�','2','0');
INSERT INTO `espcms_city` VALUES ('220','16','�Ͼ�','2','0');
INSERT INTO `espcms_city` VALUES ('221','16','����','2','0');
INSERT INTO `espcms_city` VALUES ('222','16','����','2','0');
INSERT INTO `espcms_city` VALUES ('223','16','����','2','0');
INSERT INTO `espcms_city` VALUES ('224','16','����','2','0');
INSERT INTO `espcms_city` VALUES ('225','16','���Ƹ�','2','0');
INSERT INTO `espcms_city` VALUES ('226','16','��ͨ','2','0');
INSERT INTO `espcms_city` VALUES ('227','16','��Ǩ','2','0');
INSERT INTO `espcms_city` VALUES ('228','16','̩��','2','0');
INSERT INTO `espcms_city` VALUES ('229','16','����','2','0');
INSERT INTO `espcms_city` VALUES ('230','16','�γ�','2','0');
INSERT INTO `espcms_city` VALUES ('231','16','����','2','0');
INSERT INTO `espcms_city` VALUES ('232','16','��','2','0');
INSERT INTO `espcms_city` VALUES ('233','17','�ϲ�','2','0');
INSERT INTO `espcms_city` VALUES ('234','17','����','2','0');
INSERT INTO `espcms_city` VALUES ('235','17','����','2','0');
INSERT INTO `espcms_city` VALUES ('236','17','����','2','0');
INSERT INTO `espcms_city` VALUES ('237','17','������','2','0');
INSERT INTO `espcms_city` VALUES ('238','17','�Ž�','2','0');
INSERT INTO `espcms_city` VALUES ('239','17','Ƽ��','2','0');
INSERT INTO `espcms_city` VALUES ('240','17','����','2','0');
INSERT INTO `espcms_city` VALUES ('241','17','����','2','0');
INSERT INTO `espcms_city` VALUES ('242','17','�˴�','2','0');
INSERT INTO `espcms_city` VALUES ('243','17','ӥ̶','2','0');
INSERT INTO `espcms_city` VALUES ('244','18','����','2','0');
INSERT INTO `espcms_city` VALUES ('245','18','����','2','0');
INSERT INTO `espcms_city` VALUES ('246','18','��ɽ','2','0');
INSERT INTO `espcms_city` VALUES ('247','18','��Ϫ','2','0');
INSERT INTO `espcms_city` VALUES ('248','18','����','2','0');
INSERT INTO `espcms_city` VALUES ('249','18','����','2','0');
INSERT INTO `espcms_city` VALUES ('250','18','��˳','2','0');
INSERT INTO `espcms_city` VALUES ('251','18','����','2','0');
INSERT INTO `espcms_city` VALUES ('252','18','��«��','2','0');
INSERT INTO `espcms_city` VALUES ('253','18','����','2','0');
INSERT INTO `espcms_city` VALUES ('254','18','����','2','0');
INSERT INTO `espcms_city` VALUES ('255','18','�̽�','2','0');
INSERT INTO `espcms_city` VALUES ('256','18','����','2','0');
INSERT INTO `espcms_city` VALUES ('257','18','Ӫ��','2','0');
INSERT INTO `espcms_city` VALUES ('258','19','���ͺ���','2','0');
INSERT INTO `espcms_city` VALUES ('259','19','��������','2','0');
INSERT INTO `espcms_city` VALUES ('260','19','�����׶���','2','0');
INSERT INTO `espcms_city` VALUES ('261','19','��ͷ','2','0');
INSERT INTO `espcms_city` VALUES ('262','19','���','2','0');
INSERT INTO `espcms_city` VALUES ('263','19','������˹','2','0');
INSERT INTO `espcms_city` VALUES ('264','19','���ױ���','2','0');
INSERT INTO `espcms_city` VALUES ('265','19','ͨ��','2','0');
INSERT INTO `espcms_city` VALUES ('266','19','�ں�','2','0');
INSERT INTO `espcms_city` VALUES ('267','19','�����첼��','2','0');
INSERT INTO `espcms_city` VALUES ('268','19','���ֹ�����','2','0');
INSERT INTO `espcms_city` VALUES ('269','19','�˰���','2','0');
INSERT INTO `espcms_city` VALUES ('270','20','����','2','0');
INSERT INTO `espcms_city` VALUES ('271','20','��ԭ','2','0');
INSERT INTO `espcms_city` VALUES ('272','20','ʯ��ɽ','2','0');
INSERT INTO `espcms_city` VALUES ('273','20','����','2','0');
INSERT INTO `espcms_city` VALUES ('274','20','����','2','0');
INSERT INTO `espcms_city` VALUES ('275','21','����','2','0');
INSERT INTO `espcms_city` VALUES ('276','21','����','2','0');
INSERT INTO `espcms_city` VALUES ('277','21','����','2','0');
INSERT INTO `espcms_city` VALUES ('278','21','����','2','0');
INSERT INTO `espcms_city` VALUES ('279','21','����','2','0');
INSERT INTO `espcms_city` VALUES ('280','21','����','2','0');
INSERT INTO `espcms_city` VALUES ('281','21','����','2','0');
INSERT INTO `espcms_city` VALUES ('282','21','����','2','0');
INSERT INTO `espcms_city` VALUES ('283','22','����','2','0');
INSERT INTO `espcms_city` VALUES ('284','22','�ൺ','2','0');
INSERT INTO `espcms_city` VALUES ('285','22','����','2','0');
INSERT INTO `espcms_city` VALUES ('286','22','����','2','0');
INSERT INTO `espcms_city` VALUES ('287','22','��Ӫ','2','0');
INSERT INTO `espcms_city` VALUES ('288','22','����','2','0');
INSERT INTO `espcms_city` VALUES ('289','22','����','2','0');
INSERT INTO `espcms_city` VALUES ('290','22','����','2','0');
INSERT INTO `espcms_city` VALUES ('291','22','�ĳ�','2','0');
INSERT INTO `espcms_city` VALUES ('292','22','����','2','0');
INSERT INTO `espcms_city` VALUES ('293','22','����','2','0');
INSERT INTO `espcms_city` VALUES ('294','22','̩��','2','0');
INSERT INTO `espcms_city` VALUES ('295','22','����','2','0');
INSERT INTO `espcms_city` VALUES ('296','22','Ϋ��','2','0');
INSERT INTO `espcms_city` VALUES ('297','22','��̨','2','0');
INSERT INTO `espcms_city` VALUES ('298','22','��ׯ','2','0');
INSERT INTO `espcms_city` VALUES ('299','22','�Ͳ�','2','0');
INSERT INTO `espcms_city` VALUES ('300','23','̫ԭ','2','0');
INSERT INTO `espcms_city` VALUES ('301','23','����','2','0');
INSERT INTO `espcms_city` VALUES ('302','23','��ͬ','2','0');
INSERT INTO `espcms_city` VALUES ('303','23','����','2','0');
INSERT INTO `espcms_city` VALUES ('304','23','����','2','0');
INSERT INTO `espcms_city` VALUES ('305','23','�ٷ�','2','0');
INSERT INTO `espcms_city` VALUES ('306','23','����','2','0');
INSERT INTO `espcms_city` VALUES ('307','23','˷��','2','0');
INSERT INTO `espcms_city` VALUES ('308','23','����','2','0');
INSERT INTO `espcms_city` VALUES ('309','23','��Ȫ','2','0');
INSERT INTO `espcms_city` VALUES ('310','23','�˳�','2','0');
INSERT INTO `espcms_city` VALUES ('311','24','����','2','0');
INSERT INTO `espcms_city` VALUES ('312','24','����','2','0');
INSERT INTO `espcms_city` VALUES ('313','24','����','2','0');
INSERT INTO `espcms_city` VALUES ('314','24','����','2','0');
INSERT INTO `espcms_city` VALUES ('315','24','����','2','0');
INSERT INTO `espcms_city` VALUES ('316','24','ͭ��','2','0');
INSERT INTO `espcms_city` VALUES ('317','24','μ��','2','0');
INSERT INTO `espcms_city` VALUES ('318','24','����','2','0');
INSERT INTO `espcms_city` VALUES ('319','24','�Ӱ�','2','0');
INSERT INTO `espcms_city` VALUES ('320','24','����','2','0');
INSERT INTO `espcms_city` VALUES ('321','25','�Ϻ�','2','0');
INSERT INTO `espcms_city` VALUES ('322','26','�ɶ�','2','0');
INSERT INTO `espcms_city` VALUES ('323','26','����','2','0');
INSERT INTO `espcms_city` VALUES ('324','26','����','2','0');
INSERT INTO `espcms_city` VALUES ('325','26','����','2','0');
INSERT INTO `espcms_city` VALUES ('326','26','����','2','0');
INSERT INTO `espcms_city` VALUES ('327','26','����','2','0');
INSERT INTO `espcms_city` VALUES ('328','26','����','2','0');
INSERT INTO `espcms_city` VALUES ('329','26','�㰲','2','0');
INSERT INTO `espcms_city` VALUES ('330','26','��Ԫ','2','0');
INSERT INTO `espcms_city` VALUES ('331','26','��ɽ','2','0');
INSERT INTO `espcms_city` VALUES ('332','26','��ɽ','2','0');
INSERT INTO `espcms_city` VALUES ('333','26','üɽ','2','0');
INSERT INTO `espcms_city` VALUES ('334','26','�ϳ�','2','0');
INSERT INTO `espcms_city` VALUES ('335','26','�ڽ�','2','0');
INSERT INTO `espcms_city` VALUES ('336','26','��֦��','2','0');
INSERT INTO `espcms_city` VALUES ('337','26','����','2','0');
INSERT INTO `espcms_city` VALUES ('338','26','�Ű�','2','0');
INSERT INTO `espcms_city` VALUES ('339','26','�˱�','2','0');
INSERT INTO `espcms_city` VALUES ('340','26','����','2','0');
INSERT INTO `espcms_city` VALUES ('341','26','�Թ�','2','0');
INSERT INTO `espcms_city` VALUES ('342','26','����','2','0');
INSERT INTO `espcms_city` VALUES ('343','27','���','2','0');
INSERT INTO `espcms_city` VALUES ('344','28','����','2','0');
INSERT INTO `espcms_city` VALUES ('345','28','����','2','0');
INSERT INTO `espcms_city` VALUES ('346','28','����','2','0');
INSERT INTO `espcms_city` VALUES ('347','28','��֥','2','0');
INSERT INTO `espcms_city` VALUES ('348','28','����','2','0');
INSERT INTO `espcms_city` VALUES ('349','28','�տ���','2','0');
INSERT INTO `espcms_city` VALUES ('350','28','ɽ��','2','0');
INSERT INTO `espcms_city` VALUES ('351','29','��³ľ��','2','0');
INSERT INTO `espcms_city` VALUES ('352','29','������','2','0');
INSERT INTO `espcms_city` VALUES ('353','29','������','2','0');
INSERT INTO `espcms_city` VALUES ('354','29','��������','2','0');
INSERT INTO `espcms_city` VALUES ('355','29','��������','2','0');
INSERT INTO `espcms_city` VALUES ('356','29','����','2','0');
INSERT INTO `espcms_city` VALUES ('357','29','����','2','0');
INSERT INTO `espcms_city` VALUES ('358','29','����','2','0');
INSERT INTO `espcms_city` VALUES ('359','29','��ʲ','2','0');
INSERT INTO `espcms_city` VALUES ('360','29','��������','2','0');
INSERT INTO `espcms_city` VALUES ('361','29','��������','2','0');
INSERT INTO `espcms_city` VALUES ('362','29','ʯ����','2','0');
INSERT INTO `espcms_city` VALUES ('363','29','ͼľ���','2','0');
INSERT INTO `espcms_city` VALUES ('364','29','��³��','2','0');
INSERT INTO `espcms_city` VALUES ('365','29','�����','2','0');
INSERT INTO `espcms_city` VALUES ('366','29','����','2','0');
INSERT INTO `espcms_city` VALUES ('367','30','����','2','0');
INSERT INTO `espcms_city` VALUES ('368','30','ŭ��','2','0');
INSERT INTO `espcms_city` VALUES ('369','30','�ն�','2','0');
INSERT INTO `espcms_city` VALUES ('370','30','����','2','0');
INSERT INTO `espcms_city` VALUES ('371','30','��ɽ','2','0');
INSERT INTO `espcms_city` VALUES ('372','30','����','2','0');
INSERT INTO `espcms_city` VALUES ('373','30','����','2','0');
INSERT INTO `espcms_city` VALUES ('374','30','�º�','2','0');
INSERT INTO `espcms_city` VALUES ('375','30','����','2','0');
INSERT INTO `espcms_city` VALUES ('376','30','���','2','0');
INSERT INTO `espcms_city` VALUES ('377','30','�ٲ�','2','0');
INSERT INTO `espcms_city` VALUES ('378','30','����','2','0');
INSERT INTO `espcms_city` VALUES ('379','30','��ɽ','2','0');
INSERT INTO `espcms_city` VALUES ('380','30','��˫����','2','0');
INSERT INTO `espcms_city` VALUES ('381','30','��Ϫ','2','0');
INSERT INTO `espcms_city` VALUES ('382','30','��ͨ','2','0');
INSERT INTO `espcms_city` VALUES ('383','31','����','2','0');
INSERT INTO `espcms_city` VALUES ('384','31','����','2','0');
INSERT INTO `espcms_city` VALUES ('385','31','����','2','0');
INSERT INTO `espcms_city` VALUES ('386','31','��','2','0');
INSERT INTO `espcms_city` VALUES ('387','31','��ˮ','2','0');
INSERT INTO `espcms_city` VALUES ('388','31','����','2','0');
INSERT INTO `espcms_city` VALUES ('389','31','����','2','0');
INSERT INTO `espcms_city` VALUES ('390','31','̨��','2','0');
INSERT INTO `espcms_city` VALUES ('391','31','����','2','0');
INSERT INTO `espcms_city` VALUES ('392','31','��ɽ','2','0');
INSERT INTO `espcms_city` VALUES ('393','31','����','2','0');
INSERT INTO `espcms_city` VALUES ('394','32','����','2','0');
INSERT INTO `espcms_city` VALUES ('395','33','���','2','0');
INSERT INTO `espcms_city` VALUES ('396','34','����','2','0');
INSERT INTO `espcms_city` VALUES ('397','35','̨��','2','0');
INSERT INTO `espcms_city` VALUES ('398','36','ӭ����','3','0');
INSERT INTO `espcms_city` VALUES ('399','36','�����','3','0');
INSERT INTO `espcms_city` VALUES ('400','36','������','3','0');
INSERT INTO `espcms_city` VALUES ('401','36','ͩ����','3','0');
INSERT INTO `espcms_city` VALUES ('402','36','������','3','0');
INSERT INTO `espcms_city` VALUES ('403','36','������','3','0');
INSERT INTO `espcms_city` VALUES ('404','36','Ǳɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('405','36','̫����','3','0');
INSERT INTO `espcms_city` VALUES ('406','36','������','3','0');
INSERT INTO `espcms_city` VALUES ('407','36','������','3','0');
INSERT INTO `espcms_city` VALUES ('408','36','������','3','0');
INSERT INTO `espcms_city` VALUES ('409','37','������','3','0');
INSERT INTO `espcms_city` VALUES ('410','37','������','3','0');
INSERT INTO `espcms_city` VALUES ('411','37','������','3','0');
INSERT INTO `espcms_city` VALUES ('412','37','����','3','0');
INSERT INTO `espcms_city` VALUES ('413','37','��Զ��','3','0');
INSERT INTO `espcms_city` VALUES ('414','37','�����','3','0');
INSERT INTO `espcms_city` VALUES ('415','37','������','3','0');
INSERT INTO `espcms_city` VALUES ('416','38','�ӳ���','3','0');
INSERT INTO `espcms_city` VALUES ('417','38','®����','3','0');
INSERT INTO `espcms_city` VALUES ('418','38','��Ϊ��','3','0');
INSERT INTO `espcms_city` VALUES ('419','38','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('420','38','����','3','0');
INSERT INTO `espcms_city` VALUES ('421','39','�����','3','0');
INSERT INTO `espcms_city` VALUES ('422','39','������','3','0');
INSERT INTO `espcms_city` VALUES ('423','39','ʯ̨��','3','0');
INSERT INTO `espcms_city` VALUES ('424','39','������','3','0');
INSERT INTO `espcms_city` VALUES ('425','40','������','3','0');
INSERT INTO `espcms_city` VALUES ('426','40','������','3','0');
INSERT INTO `espcms_city` VALUES ('427','40','�쳤��','3','0');
INSERT INTO `espcms_city` VALUES ('428','40','������','3','0');
INSERT INTO `espcms_city` VALUES ('429','40','������','3','0');
INSERT INTO `espcms_city` VALUES ('430','40','ȫ����','3','0');
INSERT INTO `espcms_city` VALUES ('431','40','��Զ��','3','0');
INSERT INTO `espcms_city` VALUES ('432','40','������','3','0');
INSERT INTO `espcms_city` VALUES ('433','41','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('434','41','���Ӻ���','3','0');
INSERT INTO `espcms_city` VALUES ('435','41','�����','3','0');
INSERT INTO `espcms_city` VALUES ('436','41','������','3','0');
INSERT INTO `espcms_city` VALUES ('437','41','�����','3','0');
INSERT INTO `espcms_city` VALUES ('438','41','򣶫��','3','0');
INSERT INTO `espcms_city` VALUES ('439','41','�Ȫ��','3','0');
INSERT INTO `espcms_city` VALUES ('440','41','������','3','0');
INSERT INTO `espcms_city` VALUES ('441','41','��Ȫ��','3','0');
INSERT INTO `espcms_city` VALUES ('442','41','̫����','3','0');
INSERT INTO `espcms_city` VALUES ('443','41','������','3','0');
INSERT INTO `espcms_city` VALUES ('444','41','ӱ����','3','0');
INSERT INTO `espcms_city` VALUES ('445','42','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('446','42','�ż���','3','0');
INSERT INTO `espcms_city` VALUES ('447','42','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('448','42','�Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('449','43','�������','3','0');
INSERT INTO `espcms_city` VALUES ('450','43','��ͨ��','3','0');
INSERT INTO `espcms_city` VALUES ('451','43','л�Ҽ���','3','0');
INSERT INTO `espcms_city` VALUES ('452','43','�˹�ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('453','43','�˼���','3','0');
INSERT INTO `espcms_city` VALUES ('454','43','��̨��','3','0');
INSERT INTO `espcms_city` VALUES ('455','44','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('456','44','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('457','44','������','3','0');
INSERT INTO `espcms_city` VALUES ('458','44','���','3','0');
INSERT INTO `espcms_city` VALUES ('459','44','������','3','0');
INSERT INTO `espcms_city` VALUES ('460','44','����','3','0');
INSERT INTO `espcms_city` VALUES ('461','44','������','3','0');
INSERT INTO `espcms_city` VALUES ('462','45','����','3','0');
INSERT INTO `espcms_city` VALUES ('463','45','ԣ����','3','0');
INSERT INTO `espcms_city` VALUES ('464','45','����','3','0');
INSERT INTO `espcms_city` VALUES ('465','45','������','3','0');
INSERT INTO `espcms_city` VALUES ('466','45','�����','3','0');
INSERT INTO `espcms_city` VALUES ('467','45','��կ��','3','0');
INSERT INTO `espcms_city` VALUES ('468','45','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('469','46','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('470','46','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('471','46','���ׯ��','3','0');
INSERT INTO `espcms_city` VALUES ('472','46','��Ϳ��','3','0');
INSERT INTO `espcms_city` VALUES ('473','47','������','3','0');
INSERT INTO `espcms_city` VALUES ('474','47','�ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('475','47','����','3','0');
INSERT INTO `espcms_city` VALUES ('476','47','�����','3','0');
INSERT INTO `espcms_city` VALUES ('477','47','����','3','0');
INSERT INTO `espcms_city` VALUES ('478','48','ͭ��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('479','48','ʨ��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('480','48','����','3','0');
INSERT INTO `espcms_city` VALUES ('481','48','ͭ����','3','0');
INSERT INTO `espcms_city` VALUES ('482','49','������','3','0');
INSERT INTO `espcms_city` VALUES ('483','49','߮����','3','0');
INSERT INTO `espcms_city` VALUES ('484','49','𯽭��','3','0');
INSERT INTO `espcms_city` VALUES ('485','49','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('486','49','�ߺ���','3','0');
INSERT INTO `espcms_city` VALUES ('487','49','������','3','0');
INSERT INTO `espcms_city` VALUES ('488','49','������','3','0');
INSERT INTO `espcms_city` VALUES ('489','50','������','3','0');
INSERT INTO `espcms_city` VALUES ('490','50','������','3','0');
INSERT INTO `espcms_city` VALUES ('491','50','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('492','50','�����','3','0');
INSERT INTO `espcms_city` VALUES ('493','50','����','3','0');
INSERT INTO `espcms_city` VALUES ('494','50','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('495','50','캵���','3','0');
INSERT INTO `espcms_city` VALUES ('496','51','������','3','0');
INSERT INTO `espcms_city` VALUES ('497','51','�ɳ���','3','0');
INSERT INTO `espcms_city` VALUES ('498','51','������','3','0');
INSERT INTO `espcms_city` VALUES ('499','51','�۳���','3','0');
INSERT INTO `espcms_city` VALUES ('500','52','������','3','0');
INSERT INTO `espcms_city` VALUES ('501','52','������','3','0');
INSERT INTO `espcms_city` VALUES ('502','52','������','3','0');
INSERT INTO `espcms_city` VALUES ('503','52','������','3','0');
INSERT INTO `espcms_city` VALUES ('504','52','������','3','0');
INSERT INTO `espcms_city` VALUES ('505','52','������','3','0');
INSERT INTO `espcms_city` VALUES ('506','52','��̨��','3','0');
INSERT INTO `espcms_city` VALUES ('507','52','ʯ��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('508','52','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('509','52','��ͷ����','3','0');
INSERT INTO `espcms_city` VALUES ('510','52','ͨ����','3','0');
INSERT INTO `espcms_city` VALUES ('511','52','˳����','3','0');
INSERT INTO `espcms_city` VALUES ('512','52','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('513','52','������','3','0');
INSERT INTO `espcms_city` VALUES ('514','52','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('515','52','������','3','0');
INSERT INTO `espcms_city` VALUES ('516','52','������','3','0');
INSERT INTO `espcms_city` VALUES ('517','52','������','3','0');
INSERT INTO `espcms_city` VALUES ('518','53','��¥��','3','0');
INSERT INTO `espcms_city` VALUES ('519','53','̨����','3','0');
INSERT INTO `espcms_city` VALUES ('520','53','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('521','53','��β��','3','0');
INSERT INTO `espcms_city` VALUES ('522','53','������','3','0');
INSERT INTO `espcms_city` VALUES ('523','53','������','3','0');
INSERT INTO `espcms_city` VALUES ('524','53','������','3','0');
INSERT INTO `espcms_city` VALUES ('525','53','������','3','0');
INSERT INTO `espcms_city` VALUES ('526','53','������','3','0');
INSERT INTO `espcms_city` VALUES ('527','53','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('528','53','������','3','0');
INSERT INTO `espcms_city` VALUES ('529','53','��̩��','3','0');
INSERT INTO `espcms_city` VALUES ('530','53','ƽ̶��','3','0');
INSERT INTO `espcms_city` VALUES ('531','54','������','3','0');
INSERT INTO `espcms_city` VALUES ('532','54','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('533','54','��͡��','3','0');
INSERT INTO `espcms_city` VALUES ('534','54','������','3','0');
INSERT INTO `espcms_city` VALUES ('535','54','�Ϻ���','3','0');
INSERT INTO `espcms_city` VALUES ('536','54','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('537','54','������','3','0');
INSERT INTO `espcms_city` VALUES ('538','55','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('539','55','������','3','0');
INSERT INTO `espcms_city` VALUES ('540','55','����ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('541','55','�����','3','0');
INSERT INTO `espcms_city` VALUES ('542','55','������','3','0');
INSERT INTO `espcms_city` VALUES ('543','55','˳����','3','0');
INSERT INTO `espcms_city` VALUES ('544','55','�ֳ���','3','0');
INSERT INTO `espcms_city` VALUES ('545','55','������','3','0');
INSERT INTO `espcms_city` VALUES ('546','55','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('547','55','������','3','0');
INSERT INTO `espcms_city` VALUES ('548','56','������','3','0');
INSERT INTO `espcms_city` VALUES ('549','56','������','3','0');
INSERT INTO `espcms_city` VALUES ('550','56','������','3','0');
INSERT INTO `espcms_city` VALUES ('551','56','ϼ����','3','0');
INSERT INTO `espcms_city` VALUES ('552','56','������','3','0');
INSERT INTO `espcms_city` VALUES ('553','56','������','3','0');
INSERT INTO `espcms_city` VALUES ('554','56','������','3','0');
INSERT INTO `espcms_city` VALUES ('555','56','������','3','0');
INSERT INTO `espcms_city` VALUES ('556','56','������','3','0');
INSERT INTO `espcms_city` VALUES ('557','57','������','3','0');
INSERT INTO `espcms_city` VALUES ('558','57','������','3','0');
INSERT INTO `espcms_city` VALUES ('559','57','�����','3','0');
INSERT INTO `espcms_city` VALUES ('560','57','������','3','0');
INSERT INTO `espcms_city` VALUES ('561','57','������','3','0');
INSERT INTO `espcms_city` VALUES ('562','58','�����','3','0');
INSERT INTO `espcms_city` VALUES ('563','58','������','3','0');
INSERT INTO `espcms_city` VALUES ('564','58','�彭��','3','0');
INSERT INTO `espcms_city` VALUES ('565','58','���������','3','0');
INSERT INTO `espcms_city` VALUES ('566','58','Ȫ����','3','0');
INSERT INTO `espcms_city` VALUES ('567','58','ʯʨ��','3','0');
INSERT INTO `espcms_city` VALUES ('568','58','������','3','0');
INSERT INTO `espcms_city` VALUES ('569','58','�ϰ���','3','0');
INSERT INTO `espcms_city` VALUES ('570','58','�ݰ���','3','0');
INSERT INTO `espcms_city` VALUES ('571','58','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('572','58','������','3','0');
INSERT INTO `espcms_city` VALUES ('573','58','�»���','3','0');
INSERT INTO `espcms_city` VALUES ('574','58','������','3','0');
INSERT INTO `espcms_city` VALUES ('575','59','÷����','3','0');
INSERT INTO `espcms_city` VALUES ('576','59','��Ԫ��','3','0');
INSERT INTO `espcms_city` VALUES ('577','59','������','3','0');
INSERT INTO `espcms_city` VALUES ('578','59','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('579','59','������','3','0');
INSERT INTO `espcms_city` VALUES ('580','59','������','3','0');
INSERT INTO `espcms_city` VALUES ('581','59','������','3','0');
INSERT INTO `espcms_city` VALUES ('582','59','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('583','59','ɳ��','3','0');
INSERT INTO `espcms_city` VALUES ('584','59','������','3','0');
INSERT INTO `espcms_city` VALUES ('585','59','̩����','3','0');
INSERT INTO `espcms_city` VALUES ('586','59','������','3','0');
INSERT INTO `espcms_city` VALUES ('587','60','˼����','3','0');
INSERT INTO `espcms_city` VALUES ('588','60','������','3','0');
INSERT INTO `espcms_city` VALUES ('589','60','������','3','0');
INSERT INTO `espcms_city` VALUES ('590','60','������','3','0');
INSERT INTO `espcms_city` VALUES ('591','60','ͬ����','3','0');
INSERT INTO `espcms_city` VALUES ('592','60','�谲��','3','0');
INSERT INTO `espcms_city` VALUES ('593','61','ܼ����','3','0');
INSERT INTO `espcms_city` VALUES ('594','61','������','3','0');
INSERT INTO `espcms_city` VALUES ('595','61','������','3','0');
INSERT INTO `espcms_city` VALUES ('596','61','������','3','0');
INSERT INTO `espcms_city` VALUES ('597','61','������','3','0');
INSERT INTO `espcms_city` VALUES ('598','61','گ����','3','0');
INSERT INTO `espcms_city` VALUES ('599','61','��̩��','3','0');
INSERT INTO `espcms_city` VALUES ('600','61','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('601','61','�Ͼ���','3','0');
INSERT INTO `espcms_city` VALUES ('602','61','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('603','61','������','3','0');
INSERT INTO `espcms_city` VALUES ('604','62','������','3','0');
INSERT INTO `espcms_city` VALUES ('605','62','�ǹ���','3','0');
INSERT INTO `espcms_city` VALUES ('606','62','�������','3','0');
INSERT INTO `espcms_city` VALUES ('607','62','������','3','0');
INSERT INTO `espcms_city` VALUES ('608','62','������','3','0');
INSERT INTO `espcms_city` VALUES ('609','62','�����','3','0');
INSERT INTO `espcms_city` VALUES ('610','62','������','3','0');
INSERT INTO `espcms_city` VALUES ('611','62','������','3','0');
INSERT INTO `espcms_city` VALUES ('612','63','������','3','0');
INSERT INTO `espcms_city` VALUES ('613','63','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('614','63','������','3','0');
INSERT INTO `espcms_city` VALUES ('615','63','��̩��','3','0');
INSERT INTO `espcms_city` VALUES ('616','63','��Զ��','3','0');
INSERT INTO `espcms_city` VALUES ('617','64','�����','3','0');
INSERT INTO `espcms_city` VALUES ('618','64','¤����','3','0');
INSERT INTO `espcms_city` VALUES ('619','64','ͨμ��','3','0');
INSERT INTO `espcms_city` VALUES ('620','64','μԴ��','3','0');
INSERT INTO `espcms_city` VALUES ('621','64','����','3','0');
INSERT INTO `espcms_city` VALUES ('622','64','���','3','0');
INSERT INTO `espcms_city` VALUES ('623','64','������','3','0');
INSERT INTO `espcms_city` VALUES ('624','64','������','3','0');
INSERT INTO `espcms_city` VALUES ('625','65','������','3','0');
INSERT INTO `espcms_city` VALUES ('626','65','��̶��','3','0');
INSERT INTO `espcms_city` VALUES ('627','65','׿����','3','0');
INSERT INTO `espcms_city` VALUES ('628','65','������','3','0');
INSERT INTO `espcms_city` VALUES ('629','65','������','3','0');
INSERT INTO `espcms_city` VALUES ('630','65','������','3','0');
INSERT INTO `espcms_city` VALUES ('631','65','µ����','3','0');
INSERT INTO `espcms_city` VALUES ('632','65','�ĺ���','3','0');
INSERT INTO `espcms_city` VALUES ('633','66','��������','3','0');
INSERT INTO `espcms_city` VALUES ('634','67','����','3','0');
INSERT INTO `espcms_city` VALUES ('635','67','������','3','0');
INSERT INTO `espcms_city` VALUES ('636','68','������','3','0');
INSERT INTO `espcms_city` VALUES ('637','68','������','3','0');
INSERT INTO `espcms_city` VALUES ('638','68','�ػ���','3','0');
INSERT INTO `espcms_city` VALUES ('639','68','������','3','0');
INSERT INTO `espcms_city` VALUES ('640','68','������','3','0');
INSERT INTO `espcms_city` VALUES ('641','68','�౱','3','0');
INSERT INTO `espcms_city` VALUES ('642','68','������','3','0');
INSERT INTO `espcms_city` VALUES ('643','69','������','3','0');
INSERT INTO `espcms_city` VALUES ('644','69','������','3','0');
INSERT INTO `espcms_city` VALUES ('645','69','������','3','0');
INSERT INTO `espcms_city` VALUES ('646','69','������','3','0');
INSERT INTO `espcms_city` VALUES ('647','69','�����','3','0');
INSERT INTO `espcms_city` VALUES ('648','69','������','3','0');
INSERT INTO `espcms_city` VALUES ('649','69','������������','3','0');
INSERT INTO `espcms_city` VALUES ('650','69','��ʯɽ','3','0');
INSERT INTO `espcms_city` VALUES ('651','70','����','3','0');
INSERT INTO `espcms_city` VALUES ('652','70','����','3','0');
INSERT INTO `espcms_city` VALUES ('653','70','����','3','0');
INSERT INTO `espcms_city` VALUES ('654','70','����','3','0');
INSERT INTO `espcms_city` VALUES ('655','70','������','3','0');
INSERT INTO `espcms_city` VALUES ('656','70','����','3','0');
INSERT INTO `espcms_city` VALUES ('657','70','������','3','0');
INSERT INTO `espcms_city` VALUES ('658','70','崲���','3','0');
INSERT INTO `espcms_city` VALUES ('659','70','�䶼��','3','0');
INSERT INTO `espcms_city` VALUES ('660','71','������','3','0');
INSERT INTO `espcms_city` VALUES ('661','71','��ͤ��','3','0');
INSERT INTO `espcms_city` VALUES ('662','71','������','3','0');
INSERT INTO `espcms_city` VALUES ('663','71','��̨��','3','0');
INSERT INTO `espcms_city` VALUES ('664','71','�����','3','0');
INSERT INTO `espcms_city` VALUES ('665','71','ׯ����','3','0');
INSERT INTO `espcms_city` VALUES ('666','71','������','3','0');
INSERT INTO `espcms_city` VALUES ('667','72','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('668','72','������','3','0');
INSERT INTO `espcms_city` VALUES ('669','72','����','3','0');
INSERT INTO `espcms_city` VALUES ('670','72','����','3','0');
INSERT INTO `espcms_city` VALUES ('671','72','�����','3','0');
INSERT INTO `espcms_city` VALUES ('672','72','������','3','0');
INSERT INTO `espcms_city` VALUES ('673','72','��ԭ��','3','0');
INSERT INTO `espcms_city` VALUES ('674','72','������','3','0');
INSERT INTO `espcms_city` VALUES ('675','73','�ʹ���','3','0');
INSERT INTO `espcms_city` VALUES ('676','73','�ذ���','3','0');
INSERT INTO `espcms_city` VALUES ('677','73','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('678','73','������','3','0');
INSERT INTO `espcms_city` VALUES ('679','73','�����','3','0');
INSERT INTO `espcms_city` VALUES ('680','73','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('681','73','�żҴ�','3','0');
INSERT INTO `espcms_city` VALUES ('682','74','������','3','0');
INSERT INTO `espcms_city` VALUES ('683','74','������','3','0');
INSERT INTO `espcms_city` VALUES ('684','74','��ף','3','0');
INSERT INTO `espcms_city` VALUES ('685','74','������','3','0');
INSERT INTO `espcms_city` VALUES ('686','75','��̨��','3','0');
INSERT INTO `espcms_city` VALUES ('687','75','������','3','0');
INSERT INTO `espcms_city` VALUES ('688','75','������','3','0');
INSERT INTO `espcms_city` VALUES ('689','75','ɽ����','3','0');
INSERT INTO `espcms_city` VALUES ('690','75','����','3','0');
INSERT INTO `espcms_city` VALUES ('691','75','������','3','0');
INSERT INTO `espcms_city` VALUES ('692','76','�ӻ���','3','0');
INSERT INTO `espcms_city` VALUES ('693','76','�����','3','0');
INSERT INTO `espcms_city` VALUES ('694','76','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('695','76','������','3','0');
INSERT INTO `espcms_city` VALUES ('696','76','������','3','0');
INSERT INTO `espcms_city` VALUES ('697','76','������','3','0');
INSERT INTO `espcms_city` VALUES ('698','76','Խ����','3','0');
INSERT INTO `espcms_city` VALUES ('699','76','������','3','0');
INSERT INTO `espcms_city` VALUES ('700','76','��خ��','3','0');
INSERT INTO `espcms_city` VALUES ('701','76','������','3','0');
INSERT INTO `espcms_city` VALUES ('702','76','������','3','0');
INSERT INTO `espcms_city` VALUES ('703','76','�ӻ���','3','0');
INSERT INTO `espcms_city` VALUES ('704','76','�н�','3','0');
INSERT INTO `espcms_city` VALUES ('705','77','������','3','0');
INSERT INTO `espcms_city` VALUES ('706','77','�޺���','3','0');
INSERT INTO `espcms_city` VALUES ('707','77','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('708','77','������','3','0');
INSERT INTO `espcms_city` VALUES ('709','77','������','3','0');
INSERT INTO `espcms_city` VALUES ('710','77','������','3','0');
INSERT INTO `espcms_city` VALUES ('711','78','������','3','0');
INSERT INTO `espcms_city` VALUES ('712','78','������','3','0');
INSERT INTO `espcms_city` VALUES ('713','78','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('714','79','�ϳ���','3','0');
INSERT INTO `espcms_city` VALUES ('715','79','������','3','0');
INSERT INTO `espcms_city` VALUES ('716','79','����','3','0');
INSERT INTO `espcms_city` VALUES ('717','79','ݸ����','3','0');
INSERT INTO `espcms_city` VALUES ('718','79','ʯ����','3','0');
INSERT INTO `espcms_city` VALUES ('719','79','������','3','0');
INSERT INTO `espcms_city` VALUES ('720','79','��ӿ��','3','0');
INSERT INTO `espcms_city` VALUES ('721','79','������','3','0');
INSERT INTO `espcms_city` VALUES ('722','79','ʯ����','3','0');
INSERT INTO `espcms_city` VALUES ('723','79','ɳ����','3','0');
INSERT INTO `espcms_city` VALUES ('724','79','��ţ����','3','0');
INSERT INTO `espcms_city` VALUES ('725','79','��÷��','3','0');
INSERT INTO `espcms_city` VALUES ('726','79','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('727','79','弲���','3','0');
INSERT INTO `espcms_city` VALUES ('728','79','����ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('729','79','������','3','0');
INSERT INTO `espcms_city` VALUES ('730','79','�ƽ���','3','0');
INSERT INTO `espcms_city` VALUES ('731','79','��ľͷ','3','0');
INSERT INTO `espcms_city` VALUES ('732','79','�����','3','0');
INSERT INTO `espcms_city` VALUES ('733','79','������','3','0');
INSERT INTO `espcms_city` VALUES ('734','79','л����','3','0');
INSERT INTO `espcms_city` VALUES ('735','79','�����','3','0');
INSERT INTO `espcms_city` VALUES ('736','79','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('737','79','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('738','79','��ͷ��','3','0');
INSERT INTO `espcms_city` VALUES ('739','79','������','3','0');
INSERT INTO `espcms_city` VALUES ('740','79','������','3','0');
INSERT INTO `espcms_city` VALUES ('741','79','��ʯ��','3','0');
INSERT INTO `espcms_city` VALUES ('742','79','ʯ����','3','0');
INSERT INTO `espcms_city` VALUES ('743','79','������','3','0');
INSERT INTO `espcms_city` VALUES ('744','79','������','3','0');
INSERT INTO `espcms_city` VALUES ('745','79','�߈���','3','0');
INSERT INTO `espcms_city` VALUES ('746','80','������','3','0');
INSERT INTO `espcms_city` VALUES ('747','80','�Ϻ���','3','0');
INSERT INTO `espcms_city` VALUES ('748','80','˳����','3','0');
INSERT INTO `espcms_city` VALUES ('749','80','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('750','80','������','3','0');
INSERT INTO `espcms_city` VALUES ('751','81','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('752','81','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('753','81','Դ����','3','0');
INSERT INTO `espcms_city` VALUES ('754','81','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('755','81','������','3','0');
INSERT INTO `espcms_city` VALUES ('756','81','�Ͻ���','3','0');
INSERT INTO `espcms_city` VALUES ('757','82','������','3','0');
INSERT INTO `espcms_city` VALUES ('758','82','�ݳ���','3','0');
INSERT INTO `espcms_city` VALUES ('759','82','������','3','0');
INSERT INTO `espcms_city` VALUES ('760','82','������','3','0');
INSERT INTO `espcms_city` VALUES ('761','82','�ݶ���','3','0');
INSERT INTO `espcms_city` VALUES ('762','82','������','3','0');
INSERT INTO `espcms_city` VALUES ('763','83','������','3','0');
INSERT INTO `espcms_city` VALUES ('764','83','���','3','0');
INSERT INTO `espcms_city` VALUES ('765','83','�»���','3','0');
INSERT INTO `espcms_city` VALUES ('766','83','̨ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('767','83','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('768','83','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('769','83','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('770','84','�ų���','3','0');
INSERT INTO `espcms_city` VALUES ('771','84','������','3','0');
INSERT INTO `espcms_city` VALUES ('772','84','�Ҷ���','3','0');
INSERT INTO `espcms_city` VALUES ('773','84','������','3','0');
INSERT INTO `espcms_city` VALUES ('774','84','������','3','0');
INSERT INTO `espcms_city` VALUES ('775','85','ï����','3','0');
INSERT INTO `espcms_city` VALUES ('776','85','ï����','3','0');
INSERT INTO `espcms_city` VALUES ('777','85','������','3','0');
INSERT INTO `espcms_city` VALUES ('778','85','������','3','0');
INSERT INTO `espcms_city` VALUES ('779','85','������','3','0');
INSERT INTO `espcms_city` VALUES ('780','85','�����','3','0');
INSERT INTO `espcms_city` VALUES ('781','86','÷��','3','0');
INSERT INTO `espcms_city` VALUES ('782','86','÷����','3','0');
INSERT INTO `espcms_city` VALUES ('783','86','������','3','0');
INSERT INTO `espcms_city` VALUES ('784','86','������','3','0');
INSERT INTO `espcms_city` VALUES ('785','86','��˳��','3','0');
INSERT INTO `espcms_city` VALUES ('786','86','�廪��','3','0');
INSERT INTO `espcms_city` VALUES ('787','86','ƽԶ��','3','0');
INSERT INTO `espcms_city` VALUES ('788','86','������','3','0');
INSERT INTO `espcms_city` VALUES ('789','87','�����','3','0');
INSERT INTO `espcms_city` VALUES ('790','87','Ӣ����','3','0');
INSERT INTO `espcms_city` VALUES ('791','87','������','3','0');
INSERT INTO `espcms_city` VALUES ('792','87','�����','3','0');
INSERT INTO `espcms_city` VALUES ('793','87','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('794','87','������','3','0');
INSERT INTO `espcms_city` VALUES ('795','87','��ɽ','3','0');
INSERT INTO `espcms_city` VALUES ('796','87','����','3','0');
INSERT INTO `espcms_city` VALUES ('797','88','�ϰ���','3','0');
INSERT INTO `espcms_city` VALUES ('798','88','������','3','0');
INSERT INTO `espcms_city` VALUES ('799','88','�κ���','3','0');
INSERT INTO `espcms_city` VALUES ('800','88','������','3','0');
INSERT INTO `espcms_city` VALUES ('801','88','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('802','88','婽���','3','0');
INSERT INTO `espcms_city` VALUES ('803','88','������','3','0');
INSERT INTO `espcms_city` VALUES ('804','89','����','3','0');
INSERT INTO `espcms_city` VALUES ('805','89','½����','3','0');
INSERT INTO `espcms_city` VALUES ('806','89','������','3','0');
INSERT INTO `espcms_city` VALUES ('807','89','½����','3','0');
INSERT INTO `espcms_city` VALUES ('808','90','������','3','0');
INSERT INTO `espcms_city` VALUES ('809','90','䥽���','3','0');
INSERT INTO `espcms_city` VALUES ('810','90','�佭��','3','0');
INSERT INTO `espcms_city` VALUES ('811','90','������','3','0');
INSERT INTO `espcms_city` VALUES ('812','90','�ֲ���','3','0');
INSERT INTO `espcms_city` VALUES ('813','90','������','3','0');
INSERT INTO `espcms_city` VALUES ('814','90','ʼ����','3','0');
INSERT INTO `espcms_city` VALUES ('815','90','�ʻ���','3','0');
INSERT INTO `espcms_city` VALUES ('816','90','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('817','90','�·���','3','0');
INSERT INTO `espcms_city` VALUES ('818','90','��Դ','3','0');
INSERT INTO `espcms_city` VALUES ('819','91','������','3','0');
INSERT INTO `espcms_city` VALUES ('820','91','������','3','0');
INSERT INTO `espcms_city` VALUES ('821','91','������','3','0');
INSERT INTO `espcms_city` VALUES ('822','91','������','3','0');
INSERT INTO `espcms_city` VALUES ('823','92','�Ƴ���','3','0');
INSERT INTO `espcms_city` VALUES ('824','92','�޶���','3','0');
INSERT INTO `espcms_city` VALUES ('825','92','������','3','0');
INSERT INTO `espcms_city` VALUES ('826','92','������','3','0');
INSERT INTO `espcms_city` VALUES ('827','92','�ư���','3','0');
INSERT INTO `espcms_city` VALUES ('828','93','�࿲��','3','0');
INSERT INTO `espcms_city` VALUES ('829','93','ϼɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('830','93','��ͷ��','3','0');
INSERT INTO `espcms_city` VALUES ('831','93','������','3','0');
INSERT INTO `espcms_city` VALUES ('832','93','������','3','0');
INSERT INTO `espcms_city` VALUES ('833','93','������','3','0');
INSERT INTO `espcms_city` VALUES ('834','93','�⴨��','3','0');
INSERT INTO `espcms_city` VALUES ('835','93','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('836','93','������','3','0');
INSERT INTO `espcms_city` VALUES ('837','94','������','3','0');
INSERT INTO `espcms_city` VALUES ('838','94','��Ҫ��','3','0');
INSERT INTO `espcms_city` VALUES ('839','94','�Ļ���','3','0');
INSERT INTO `espcms_city` VALUES ('840','94','������','3','0');
INSERT INTO `espcms_city` VALUES ('841','94','������','3','0');
INSERT INTO `espcms_city` VALUES ('842','94','�⿪��','3','0');
INSERT INTO `espcms_city` VALUES ('843','94','������','3','0');
INSERT INTO `espcms_city` VALUES ('844','95','ʯֵ᪽�','3','0');
INSERT INTO `espcms_city` VALUES ('845','95','�����ֵ�','3','0');
INSERT INTO `espcms_city` VALUES ('846','95','�����ֵ�','3','0');
INSERT INTO `espcms_city` VALUES ('847','95','���ǽֵ�','3','0');
INSERT INTO `espcms_city` VALUES ('848','95','��ɽ�۽ֵ�','3','0');
INSERT INTO `espcms_city` VALUES ('849','95','���ɽ�ֵ�','3','0');
INSERT INTO `espcms_city` VALUES ('850','96','������','3','0');
INSERT INTO `espcms_city` VALUES ('851','96','������','3','0');
INSERT INTO `espcms_city` VALUES ('852','96','������','3','0');
INSERT INTO `espcms_city` VALUES ('853','97','������','3','0');
INSERT INTO `espcms_city` VALUES ('854','97','������','3','0');
INSERT INTO `espcms_city` VALUES ('855','97','������','3','0');
INSERT INTO `espcms_city` VALUES ('856','97','������','3','0');
INSERT INTO `espcms_city` VALUES ('857','97','��������','3','0');
INSERT INTO `espcms_city` VALUES ('858','97','������','3','0');
INSERT INTO `espcms_city` VALUES ('859','97','������','3','0');
INSERT INTO `espcms_city` VALUES ('860','97','¡����','3','0');
INSERT INTO `espcms_city` VALUES ('861','97','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('862','97','������','3','0');
INSERT INTO `espcms_city` VALUES ('863','97','������','3','0');
INSERT INTO `espcms_city` VALUES ('864','97','����','3','0');
INSERT INTO `espcms_city` VALUES ('865','98','�����','3','0');
INSERT INTO `espcms_city` VALUES ('866','98','������','3','0');
INSERT INTO `espcms_city` VALUES ('867','98','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('868','98','������','3','0');
INSERT INTO `espcms_city` VALUES ('869','98','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('870','98','��˷��','3','0');
INSERT INTO `espcms_city` VALUES ('871','98','�ٹ���','3','0');
INSERT INTO `espcms_city` VALUES ('872','98','�鴨��','3','0');
INSERT INTO `espcms_city` VALUES ('873','98','ȫ����','3','0');
INSERT INTO `espcms_city` VALUES ('874','98','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('875','98','�˰���','3','0');
INSERT INTO `espcms_city` VALUES ('876','98','������','3','0');
INSERT INTO `espcms_city` VALUES ('877','98','������','3','0');
INSERT INTO `espcms_city` VALUES ('878','98','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('879','98','������','3','0');
INSERT INTO `espcms_city` VALUES ('880','98','��ʤ','3','0');
INSERT INTO `espcms_city` VALUES ('881','98','����','3','0');
INSERT INTO `espcms_city` VALUES ('882','99','�ҽ���','3','0');
INSERT INTO `espcms_city` VALUES ('883','99','������','3','0');
INSERT INTO `espcms_city` VALUES ('884','99','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('885','99','������','3','0');
INSERT INTO `espcms_city` VALUES ('886','99','��ҵ��','3','0');
INSERT INTO `espcms_city` VALUES ('887','99','�±���','3','0');
INSERT INTO `espcms_city` VALUES ('888','99','������','3','0');
INSERT INTO `espcms_city` VALUES ('889','99','������','3','0');
INSERT INTO `espcms_city` VALUES ('890','99','������','3','0');
INSERT INTO `espcms_city` VALUES ('891','99','�ﶫ��','3','0');
INSERT INTO `espcms_city` VALUES ('892','99','������','3','0');
INSERT INTO `espcms_city` VALUES ('893','99','¡��','3','0');
INSERT INTO `espcms_city` VALUES ('894','100','������','3','0');
INSERT INTO `espcms_city` VALUES ('895','100','������','3','0');
INSERT INTO `espcms_city` VALUES ('896','100','��ɽ����','3','0');
INSERT INTO `espcms_city` VALUES ('897','100','������','3','0');
INSERT INTO `espcms_city` VALUES ('898','101','������','3','0');
INSERT INTO `espcms_city` VALUES ('899','101','ƾ����','3','0');
INSERT INTO `espcms_city` VALUES ('900','101','������','3','0');
INSERT INTO `espcms_city` VALUES ('901','101','������','3','0');
INSERT INTO `espcms_city` VALUES ('902','101','������','3','0');
INSERT INTO `espcms_city` VALUES ('903','101','������','3','0');
INSERT INTO `espcms_city` VALUES ('904','101','�����','3','0');
INSERT INTO `espcms_city` VALUES ('905','102','�ۿ���','3','0');
INSERT INTO `espcms_city` VALUES ('906','102','������','3','0');
INSERT INTO `espcms_city` VALUES ('907','102','������','3','0');
INSERT INTO `espcms_city` VALUES ('908','102','��˼��','3','0');
INSERT INTO `espcms_city` VALUES ('909','103','�۱���','3','0');
INSERT INTO `espcms_city` VALUES ('910','103','������','3','0');
INSERT INTO `espcms_city` VALUES ('911','103','������','3','0');
INSERT INTO `espcms_city` VALUES ('912','103','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('913','103','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('914','104','��ǽ���','3','0');
INSERT INTO `espcms_city` VALUES ('915','104','������','3','0');
INSERT INTO `espcms_city` VALUES ('916','104','�����','3','0');
INSERT INTO `espcms_city` VALUES ('917','104','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('918','104','�ϵ���','3','0');
INSERT INTO `espcms_city` VALUES ('919','104','������','3','0');
INSERT INTO `espcms_city` VALUES ('920','104','����','3','0');
INSERT INTO `espcms_city` VALUES ('921','104','�޳�','3','0');
INSERT INTO `espcms_city` VALUES ('922','104','����','3','0');
INSERT INTO `espcms_city` VALUES ('923','104','����','3','0');
INSERT INTO `espcms_city` VALUES ('924','104','��','3','0');
INSERT INTO `espcms_city` VALUES ('925','105','�˲���','3','0');
INSERT INTO `espcms_city` VALUES ('926','105','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('927','105','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('928','105','����','3','0');
INSERT INTO `espcms_city` VALUES ('929','106','�˱���','3','0');
INSERT INTO `espcms_city` VALUES ('930','106','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('931','106','������','3','0');
INSERT INTO `espcms_city` VALUES ('932','106','������','3','0');
INSERT INTO `espcms_city` VALUES ('933','106','�ó���','3','0');
INSERT INTO `espcms_city` VALUES ('934','106','����','3','0');
INSERT INTO `espcms_city` VALUES ('935','107','������','3','0');
INSERT INTO `espcms_city` VALUES ('936','107','�����','3','0');
INSERT INTO `espcms_city` VALUES ('937','107','������','3','0');
INSERT INTO `espcms_city` VALUES ('938','107','������','3','0');
INSERT INTO `espcms_city` VALUES ('939','107','������','3','0');
INSERT INTO `espcms_city` VALUES ('940','107','������','3','0');
INSERT INTO `espcms_city` VALUES ('941','107','¹կ��','3','0');
INSERT INTO `espcms_city` VALUES ('942','107','�ڰ���','3','0');
INSERT INTO `espcms_city` VALUES ('943','107','��ˮ','3','0');
INSERT INTO `espcms_city` VALUES ('944','107','����','3','0');
INSERT INTO `espcms_city` VALUES ('945','108','������','3','0');
INSERT INTO `espcms_city` VALUES ('946','108','�ձ���','3','0');
INSERT INTO `espcms_city` VALUES ('947','108','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('948','108','�ֱ���','3','0');
INSERT INTO `espcms_city` VALUES ('949','109','������','3','0');
INSERT INTO `espcms_city` VALUES ('950','109','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('951','109','������','3','0');
INSERT INTO `espcms_city` VALUES ('952','109','�Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('953','109','������','3','0');
INSERT INTO `espcms_city` VALUES ('954','109','����','3','0');
INSERT INTO `espcms_city` VALUES ('955','109','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('956','110','������','3','0');
INSERT INTO `espcms_city` VALUES ('957','110','������','3','0');
INSERT INTO `espcms_city` VALUES ('958','110','����','3','0');
INSERT INTO `espcms_city` VALUES ('959','110','½����','3','0');
INSERT INTO `espcms_city` VALUES ('960','110','������','3','0');
INSERT INTO `espcms_city` VALUES ('961','110','��ҵ��','3','0');
INSERT INTO `espcms_city` VALUES ('962','111','������','3','0');
INSERT INTO `espcms_city` VALUES ('963','111','������','3','0');
INSERT INTO `espcms_city` VALUES ('964','111','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('965','111','�ڵ���','3','0');
INSERT INTO `espcms_city` VALUES ('966','111','������','3','0');
INSERT INTO `espcms_city` VALUES ('967','111','С����','3','0');
INSERT INTO `espcms_city` VALUES ('968','111','��������','3','0');
INSERT INTO `espcms_city` VALUES ('969','111','����԰��','3','0');
INSERT INTO `espcms_city` VALUES ('970','111','������','3','0');
INSERT INTO `espcms_city` VALUES ('971','111','������','3','0');
INSERT INTO `espcms_city` VALUES ('972','111','������','3','0');
INSERT INTO `espcms_city` VALUES ('973','111','Ϣ����','3','0');
INSERT INTO `espcms_city` VALUES ('974','112','������','3','0');
INSERT INTO `espcms_city` VALUES ('975','112','����','3','0');
INSERT INTO `espcms_city` VALUES ('976','112','����','3','0');
INSERT INTO `espcms_city` VALUES ('977','112','����','3','0');
INSERT INTO `espcms_city` VALUES ('978','112','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('979','112','�ն���','3','0');
INSERT INTO `espcms_city` VALUES ('980','113','�Ͻ���','3','0');
INSERT INTO `espcms_city` VALUES ('981','113','����','3','0');
INSERT INTO `espcms_city` VALUES ('982','113','ǭ����','3','0');
INSERT INTO `espcms_city` VALUES ('983','113','��ɳ��','3','0');
INSERT INTO `espcms_city` VALUES ('984','113','֯����','3','0');
INSERT INTO `espcms_city` VALUES ('985','113','��Ӻ��','3','0');
INSERT INTO `espcms_city` VALUES ('986','113','������','3','0');
INSERT INTO `espcms_city` VALUES ('987','113','����','3','0');
INSERT INTO `espcms_city` VALUES ('988','114','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('989','114','��֦����','3','0');
INSERT INTO `espcms_city` VALUES ('990','114','ˮ����','3','0');
INSERT INTO `espcms_city` VALUES ('991','114','����','3','0');
INSERT INTO `espcms_city` VALUES ('992','115','������','3','0');
INSERT INTO `espcms_city` VALUES ('993','115','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('994','115','ʩ����','3','0');
INSERT INTO `espcms_city` VALUES ('995','115','������','3','0');
INSERT INTO `espcms_city` VALUES ('996','115','��Զ��','3','0');
INSERT INTO `espcms_city` VALUES ('997','115','᯹���','3','0');
INSERT INTO `espcms_city` VALUES ('998','115','������','3','0');
INSERT INTO `espcms_city` VALUES ('999','115','������','3','0');
INSERT INTO `espcms_city` VALUES ('1000','115','������','3','0');
INSERT INTO `espcms_city` VALUES ('1001','115','̨����','3','0');
INSERT INTO `espcms_city` VALUES ('1002','115','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1003','115','�Ž���','3','0');
INSERT INTO `espcms_city` VALUES ('1004','115','�ӽ���','3','0');
INSERT INTO `espcms_city` VALUES ('1005','115','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1006','115','�齭��','3','0');
INSERT INTO `espcms_city` VALUES ('1007','115','��կ��','3','0');
INSERT INTO `espcms_city` VALUES ('1008','116','������','3','0');
INSERT INTO `espcms_city` VALUES ('1009','116','��Ȫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1010','116','����','3','0');
INSERT INTO `espcms_city` VALUES ('1011','116','����','3','0');
INSERT INTO `espcms_city` VALUES ('1012','116','�Ͱ���','3','0');
INSERT INTO `espcms_city` VALUES ('1013','116','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1014','116','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('1015','116','�޵���','3','0');
INSERT INTO `espcms_city` VALUES ('1016','116','��˳��','3','0');
INSERT INTO `espcms_city` VALUES ('1017','116','������','3','0');
INSERT INTO `espcms_city` VALUES ('1018','116','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('1019','116','����','3','0');
INSERT INTO `espcms_city` VALUES ('1020','117','������','3','0');
INSERT INTO `espcms_city` VALUES ('1021','117','������','3','0');
INSERT INTO `espcms_city` VALUES ('1022','117','�հ���','3','0');
INSERT INTO `espcms_city` VALUES ('1023','117','��¡��','3','0');
INSERT INTO `espcms_city` VALUES ('1024','117','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1025','117','������','3','0');
INSERT INTO `espcms_city` VALUES ('1026','117','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1027','117','������','3','0');
INSERT INTO `espcms_city` VALUES ('1028','118','ͭ����','3','0');
INSERT INTO `espcms_city` VALUES ('1029','118','������','3','0');
INSERT INTO `espcms_city` VALUES ('1030','118','ʯ����','3','0');
INSERT INTO `espcms_city` VALUES ('1031','118','˼����','3','0');
INSERT INTO `espcms_city` VALUES ('1032','118','�½���','3','0');
INSERT INTO `espcms_city` VALUES ('1033','118','����','3','0');
INSERT INTO `espcms_city` VALUES ('1034','118','ӡ��','3','0');
INSERT INTO `espcms_city` VALUES ('1035','118','�غ�','3','0');
INSERT INTO `espcms_city` VALUES ('1036','118','����','3','0');
INSERT INTO `espcms_city` VALUES ('1037','118','��ɽ����','3','0');
INSERT INTO `espcms_city` VALUES ('1038','119','�컨����','3','0');
INSERT INTO `espcms_city` VALUES ('1039','119','����','3','0');
INSERT INTO `espcms_city` VALUES ('1040','119','������','3','0');
INSERT INTO `espcms_city` VALUES ('1041','119','�㴨��','3','0');
INSERT INTO `espcms_city` VALUES ('1042','119','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('1043','119','�ʻ���','3','0');
INSERT INTO `espcms_city` VALUES ('1044','119','������','3','0');
INSERT INTO `espcms_city` VALUES ('1045','119','ͩ����','3','0');
INSERT INTO `espcms_city` VALUES ('1046','119','������','3','0');
INSERT INTO `espcms_city` VALUES ('1047','119','������','3','0');
INSERT INTO `espcms_city` VALUES ('1048','119','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1049','119','��̶��','3','0');
INSERT INTO `espcms_city` VALUES ('1050','119','������','3','0');
INSERT INTO `espcms_city` VALUES ('1051','119','ϰˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('1052','119','����','3','0');
INSERT INTO `espcms_city` VALUES ('1053','119','��','3','0');
INSERT INTO `espcms_city` VALUES ('1054','120','��Ӣ��','3','0');
INSERT INTO `espcms_city` VALUES ('1055','120','������','3','0');
INSERT INTO `espcms_city` VALUES ('1056','120','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1057','120','������','3','0');
INSERT INTO `espcms_city` VALUES ('1058','137','����','3','0');
INSERT INTO `espcms_city` VALUES ('1059','137','���ֿ�����','3','0');
INSERT INTO `espcms_city` VALUES ('1060','137','�Ǵ���','3','0');
INSERT INTO `espcms_city` VALUES ('1061','137','������','3','0');
INSERT INTO `espcms_city` VALUES ('1062','137','������','3','0');
INSERT INTO `espcms_city` VALUES ('1063','137','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1064','137','�к���','3','0');
INSERT INTO `espcms_city` VALUES ('1065','137','������','3','0');
INSERT INTO `espcms_city` VALUES ('1066','137','�Ϸ���','3','0');
INSERT INTO `espcms_city` VALUES ('1067','137','������','3','0');
INSERT INTO `espcms_city` VALUES ('1068','137','������','3','0');
INSERT INTO `espcms_city` VALUES ('1069','137','������','3','0');
INSERT INTO `espcms_city` VALUES ('1070','137','��ͷ��','3','0');
INSERT INTO `espcms_city` VALUES ('1071','137','������','3','0');
INSERT INTO `espcms_city` VALUES ('1072','137','������','3','0');
INSERT INTO `espcms_city` VALUES ('1073','137','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1074','137','ľ����','3','0');
INSERT INTO `espcms_city` VALUES ('1075','137','������','3','0');
INSERT INTO `espcms_city` VALUES ('1076','137','������','3','0');
INSERT INTO `espcms_city` VALUES ('1077','137','����','3','0');
INSERT INTO `espcms_city` VALUES ('1078','138','������','3','0');
INSERT INTO `espcms_city` VALUES ('1079','138','�Ŷ���','3','0');
INSERT INTO `espcms_city` VALUES ('1080','138','������','3','0');
INSERT INTO `espcms_city` VALUES ('1081','138','�»���','3','0');
INSERT INTO `espcms_city` VALUES ('1082','138','ԣ����','3','0');
INSERT INTO `espcms_city` VALUES ('1083','138','�������','3','0');
INSERT INTO `espcms_city` VALUES ('1084','138','������','3','0');
INSERT INTO `espcms_city` VALUES ('1085','138','������','3','0');
INSERT INTO `espcms_city` VALUES ('1086','138','޻����','3','0');
INSERT INTO `espcms_city` VALUES ('1087','138','������','3','0');
INSERT INTO `espcms_city` VALUES ('1088','138','������','3','0');
INSERT INTO `espcms_city` VALUES ('1089','138','¹Ȫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1090','138','������','3','0');
INSERT INTO `espcms_city` VALUES ('1091','138','������','3','0');
INSERT INTO `espcms_city` VALUES ('1092','138','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1093','138','������','3','0');
INSERT INTO `espcms_city` VALUES ('1094','138','������','3','0');
INSERT INTO `espcms_city` VALUES ('1095','138','������','3','0');
INSERT INTO `espcms_city` VALUES ('1096','138','������','3','0');
INSERT INTO `espcms_city` VALUES ('1097','138','�޻���','3','0');
INSERT INTO `espcms_city` VALUES ('1098','138','�޼���','3','0');
INSERT INTO `espcms_city` VALUES ('1099','138','ƽɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1100','138','Ԫ����','3','0');
INSERT INTO `espcms_city` VALUES ('1101','138','����','3','0');
INSERT INTO `espcms_city` VALUES ('1102','139','������','3','0');
INSERT INTO `espcms_city` VALUES ('1103','139','������','3','0');
INSERT INTO `espcms_city` VALUES ('1104','139','������','3','0');
INSERT INTO `espcms_city` VALUES ('1105','139','������','3','0');
INSERT INTO `espcms_city` VALUES ('1106','139','������','3','0');
INSERT INTO `espcms_city` VALUES ('1107','139','������','3','0');
INSERT INTO `espcms_city` VALUES ('1108','139','�߱�����','3','0');
INSERT INTO `espcms_city` VALUES ('1109','139','������','3','0');
INSERT INTO `espcms_city` VALUES ('1110','139','��Է��','3','0');
INSERT INTO `espcms_city` VALUES ('1111','139','�ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('1112','139','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1113','139','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('1114','139','������','3','0');
INSERT INTO `espcms_city` VALUES ('1115','139','����','3','0');
INSERT INTO `espcms_city` VALUES ('1116','139','������','3','0');
INSERT INTO `espcms_city` VALUES ('1117','139','�ݳ���','3','0');
INSERT INTO `espcms_city` VALUES ('1118','139','�Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('1119','139','������','3','0');
INSERT INTO `espcms_city` VALUES ('1120','139','������','3','0');
INSERT INTO `espcms_city` VALUES ('1121','139','����','3','0');
INSERT INTO `espcms_city` VALUES ('1122','139','������','3','0');
INSERT INTO `espcms_city` VALUES ('1123','139','���','3','0');
INSERT INTO `espcms_city` VALUES ('1124','139','˳ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1125','139','��Ұ��','3','0');
INSERT INTO `espcms_city` VALUES ('1126','139','����','3','0');
INSERT INTO `espcms_city` VALUES ('1127','140','�˺���','3','0');
INSERT INTO `espcms_city` VALUES ('1128','140','�»���','3','0');
INSERT INTO `espcms_city` VALUES ('1129','140','��ͷ��','3','0');
INSERT INTO `espcms_city` VALUES ('1130','140','������','3','0');
INSERT INTO `espcms_city` VALUES ('1131','140','������','3','0');
INSERT INTO `espcms_city` VALUES ('1132','140','�Ӽ���','3','0');
INSERT INTO `espcms_city` VALUES ('1133','140','����','3','0');
INSERT INTO `espcms_city` VALUES ('1134','140','����','3','0');
INSERT INTO `espcms_city` VALUES ('1135','140','������','3','0');
INSERT INTO `espcms_city` VALUES ('1136','140','������','3','0');
INSERT INTO `espcms_city` VALUES ('1137','140','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1138','140','������','3','0');
INSERT INTO `espcms_city` VALUES ('1139','140','��Ƥ��','3','0');
INSERT INTO `espcms_city` VALUES ('1140','140','������','3','0');
INSERT INTO `espcms_city` VALUES ('1141','140','����','3','0');
INSERT INTO `espcms_city` VALUES ('1142','140','�ϴ�','3','0');
INSERT INTO `espcms_city` VALUES ('1143','141','˫����','3','0');
INSERT INTO `espcms_city` VALUES ('1144','141','˫����','3','0');
INSERT INTO `espcms_city` VALUES ('1145','141','ӥ��Ӫ�ӿ���','3','0');
INSERT INTO `espcms_city` VALUES ('1146','141','�е���','3','0');
INSERT INTO `espcms_city` VALUES ('1147','141','��¡��','3','0');
INSERT INTO `espcms_city` VALUES ('1148','141','ƽȪ��','3','0');
INSERT INTO `espcms_city` VALUES ('1149','141','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1150','141','¡����','3','0');
INSERT INTO `espcms_city` VALUES ('1151','141','����','3','0');
INSERT INTO `espcms_city` VALUES ('1152','141','���','3','0');
INSERT INTO `espcms_city` VALUES ('1153','141','Χ��','3','0');
INSERT INTO `espcms_city` VALUES ('1154','142','��̨��','3','0');
INSERT INTO `espcms_city` VALUES ('1155','142','������','3','0');
INSERT INTO `espcms_city` VALUES ('1156','142','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1157','142','������','3','0');
INSERT INTO `espcms_city` VALUES ('1158','142','�䰲��','3','0');
INSERT INTO `espcms_city` VALUES ('1159','142','������','3','0');
INSERT INTO `espcms_city` VALUES ('1160','142','������','3','0');
INSERT INTO `espcms_city` VALUES ('1161','142','�ɰ���','3','0');
INSERT INTO `espcms_city` VALUES ('1162','142','������','3','0');
INSERT INTO `espcms_city` VALUES ('1163','142','����','3','0');
INSERT INTO `espcms_city` VALUES ('1164','142','����','3','0');
INSERT INTO `espcms_city` VALUES ('1165','142','������','3','0');
INSERT INTO `espcms_city` VALUES ('1166','142','������','3','0');
INSERT INTO `espcms_city` VALUES ('1167','142','����','3','0');
INSERT INTO `espcms_city` VALUES ('1168','142','������','3','0');
INSERT INTO `espcms_city` VALUES ('1169','142','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1170','142','������','3','0');
INSERT INTO `espcms_city` VALUES ('1171','142','κ��','3','0');
INSERT INTO `espcms_city` VALUES ('1172','142','������','3','0');
INSERT INTO `espcms_city` VALUES ('1173','143','�ҳ���','3','0');
INSERT INTO `espcms_city` VALUES ('1174','143','������','3','0');
INSERT INTO `espcms_city` VALUES ('1175','143','������','3','0');
INSERT INTO `espcms_city` VALUES ('1176','143','��ǿ��','3','0');
INSERT INTO `espcms_city` VALUES ('1177','143','������','3','0');
INSERT INTO `espcms_city` VALUES ('1178','143','��ǿ��','3','0');
INSERT INTO `espcms_city` VALUES ('1179','143','������','3','0');
INSERT INTO `espcms_city` VALUES ('1180','143','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1181','143','�ʳ���','3','0');
INSERT INTO `espcms_city` VALUES ('1182','143','����','3','0');
INSERT INTO `espcms_city` VALUES ('1183','143','������','3','0');
INSERT INTO `espcms_city` VALUES ('1184','144','������','3','0');
INSERT INTO `espcms_city` VALUES ('1185','144','������','3','0');
INSERT INTO `espcms_city` VALUES ('1186','144','������','3','0');
INSERT INTO `espcms_city` VALUES ('1187','144','������','3','0');
INSERT INTO `espcms_city` VALUES ('1188','144','�̰���','3','0');
INSERT INTO `espcms_city` VALUES ('1189','144','������','3','0');
INSERT INTO `espcms_city` VALUES ('1190','144','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1191','144','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1192','144','�İ���','3','0');
INSERT INTO `espcms_city` VALUES ('1193','144','��','3','0');
INSERT INTO `espcms_city` VALUES ('1194','145','������','3','0');
INSERT INTO `espcms_city` VALUES ('1195','145','ɽ������','3','0');
INSERT INTO `espcms_city` VALUES ('1196','145','��������','3','0');
INSERT INTO `espcms_city` VALUES ('1197','145','������','3','0');
INSERT INTO `espcms_city` VALUES ('1198','145','������','3','0');
INSERT INTO `espcms_city` VALUES ('1199','145','¬����','3','0');
INSERT INTO `espcms_city` VALUES ('1200','145','����','3','0');
INSERT INTO `espcms_city` VALUES ('1201','146','·����','3','0');
INSERT INTO `espcms_city` VALUES ('1202','146','·����','3','0');
INSERT INTO `espcms_city` VALUES ('1203','146','��ұ��','3','0');
INSERT INTO `espcms_city` VALUES ('1204','146','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1205','146','������','3','0');
INSERT INTO `espcms_city` VALUES ('1206','146','������','3','0');
INSERT INTO `espcms_city` VALUES ('1207','146','����','3','0');
INSERT INTO `espcms_city` VALUES ('1208','146','Ǩ����','3','0');
INSERT INTO `espcms_city` VALUES ('1209','146','����','3','0');
INSERT INTO `espcms_city` VALUES ('1210','146','������','3','0');
INSERT INTO `espcms_city` VALUES ('1211','146','��ͤ��','3','0');
INSERT INTO `espcms_city` VALUES ('1212','146','Ǩ����','3','0');
INSERT INTO `espcms_city` VALUES ('1213','146','������','3','0');
INSERT INTO `espcms_city` VALUES ('1214','146','�ƺ���','3','0');
INSERT INTO `espcms_city` VALUES ('1215','147','�Ŷ���','3','0');
INSERT INTO `espcms_city` VALUES ('1216','147','������','3','0');
INSERT INTO `espcms_city` VALUES ('1217','147','�Ϲ���','3','0');
INSERT INTO `espcms_city` VALUES ('1218','147','ɳ����','3','0');
INSERT INTO `espcms_city` VALUES ('1219','147','��̨��','3','0');
INSERT INTO `espcms_city` VALUES ('1220','147','�ٳ���','3','0');
INSERT INTO `espcms_city` VALUES ('1221','147','������','3','0');
INSERT INTO `espcms_city` VALUES ('1222','147','������','3','0');
INSERT INTO `espcms_city` VALUES ('1223','147','¡Ң��','3','0');
INSERT INTO `espcms_city` VALUES ('1224','147','����','3','0');
INSERT INTO `espcms_city` VALUES ('1225','147','�Ϻ���','3','0');
INSERT INTO `espcms_city` VALUES ('1226','147','������','3','0');
INSERT INTO `espcms_city` VALUES ('1227','147','��¹��','3','0');
INSERT INTO `espcms_city` VALUES ('1228','147','�º���','3','0');
INSERT INTO `espcms_city` VALUES ('1229','147','������','3','0');
INSERT INTO `espcms_city` VALUES ('1230','147','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('1231','147','����','3','0');
INSERT INTO `espcms_city` VALUES ('1232','147','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1233','147','������','3','0');
INSERT INTO `espcms_city` VALUES ('1234','148','������','3','0');
INSERT INTO `espcms_city` VALUES ('1235','148','�Ŷ���','3','0');
INSERT INTO `espcms_city` VALUES ('1236','148','������','3','0');
INSERT INTO `espcms_city` VALUES ('1237','148','�»�԰��','3','0');
INSERT INTO `espcms_city` VALUES ('1238','148','������','3','0');
INSERT INTO `espcms_city` VALUES ('1239','148','�ű���','3','0');
INSERT INTO `espcms_city` VALUES ('1240','148','������','3','0');
INSERT INTO `espcms_city` VALUES ('1241','148','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('1242','148','������','3','0');
INSERT INTO `espcms_city` VALUES ('1243','148','ε��','3','0');
INSERT INTO `espcms_city` VALUES ('1244','148','��ԭ��','3','0');
INSERT INTO `espcms_city` VALUES ('1245','148','������','3','0');
INSERT INTO `espcms_city` VALUES ('1246','148','��ȫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1247','148','������','3','0');
INSERT INTO `espcms_city` VALUES ('1248','148','��¹��','3','0');
INSERT INTO `espcms_city` VALUES ('1249','148','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1250','148','������','3','0');
INSERT INTO `espcms_city` VALUES ('1251','149','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('1252','149','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1253','149','������','3','0');
INSERT INTO `espcms_city` VALUES ('1254','149','�ܳ���','3','0');
INSERT INTO `espcms_city` VALUES ('1255','149','��ԭ��','3','0');
INSERT INTO `espcms_city` VALUES ('1256','149','�Ͻ���','3','0');
INSERT INTO `espcms_city` VALUES ('1257','149','�ݼ���','3','0');
INSERT INTO `espcms_city` VALUES ('1258','149','֣������','3','0');
INSERT INTO `espcms_city` VALUES ('1259','149','���ü���������','3','0');
INSERT INTO `espcms_city` VALUES ('1260','149','���¿�����','3','0');
INSERT INTO `espcms_city` VALUES ('1261','149','���ڼӹ���','3','0');
INSERT INTO `espcms_city` VALUES ('1262','149','������','3','0');
INSERT INTO `espcms_city` VALUES ('1263','149','������','3','0');
INSERT INTO `espcms_city` VALUES ('1264','149','������','3','0');
INSERT INTO `espcms_city` VALUES ('1265','149','��֣��','3','0');
INSERT INTO `espcms_city` VALUES ('1266','149','�Ƿ���','3','0');
INSERT INTO `espcms_city` VALUES ('1267','149','��Ĳ��','3','0');
INSERT INTO `espcms_city` VALUES ('1268','150','������','3','0');
INSERT INTO `espcms_city` VALUES ('1269','150','�ϳ���','3','0');
INSERT INTO `espcms_city` VALUES ('1270','150','������','3','0');
INSERT INTO `espcms_city` VALUES ('1271','150','�e�ӻ�����','3','0');
INSERT INTO `espcms_city` VALUES ('1272','150','������','3','0');
INSERT INTO `espcms_city` VALUES ('1273','150','������','3','0');
INSERT INTO `espcms_city` VALUES ('1274','150','��ʦ��','3','0');
INSERT INTO `espcms_city` VALUES ('1275','150','�Ͻ���','3','0');
INSERT INTO `espcms_city` VALUES ('1276','150','�°���','3','0');
INSERT INTO `espcms_city` VALUES ('1277','150','�ﴨ��','3','0');
INSERT INTO `espcms_city` VALUES ('1278','150','����','3','0');
INSERT INTO `espcms_city` VALUES ('1279','150','������','3','0');
INSERT INTO `espcms_city` VALUES ('1280','150','������','3','0');
INSERT INTO `espcms_city` VALUES ('1281','150','������','3','0');
INSERT INTO `espcms_city` VALUES ('1282','150','������','3','0');
INSERT INTO `espcms_city` VALUES ('1283','151','��¥��','3','0');
INSERT INTO `espcms_city` VALUES ('1284','151','��ͤ��','3','0');
INSERT INTO `espcms_city` VALUES ('1285','151','˳�ӻ�����','3','0');
INSERT INTO `espcms_city` VALUES ('1286','151','������','3','0');
INSERT INTO `espcms_city` VALUES ('1287','151','����̨��','3','0');
INSERT INTO `espcms_city` VALUES ('1288','151','���','3','0');
INSERT INTO `espcms_city` VALUES ('1289','151','ͨ����','3','0');
INSERT INTO `espcms_city` VALUES ('1290','151','ξ����','3','0');
INSERT INTO `espcms_city` VALUES ('1291','151','������','3','0');
INSERT INTO `espcms_city` VALUES ('1292','151','������','3','0');
INSERT INTO `espcms_city` VALUES ('1293','152','������','3','0');
INSERT INTO `espcms_city` VALUES ('1294','152','�ķ���','3','0');
INSERT INTO `espcms_city` VALUES ('1295','152','����','3','0');
INSERT INTO `espcms_city` VALUES ('1296','152','������','3','0');
INSERT INTO `espcms_city` VALUES ('1297','152','������','3','0');
INSERT INTO `espcms_city` VALUES ('1298','152','������','3','0');
INSERT INTO `espcms_city` VALUES ('1299','152','������','3','0');
INSERT INTO `espcms_city` VALUES ('1300','152','����','3','0');
INSERT INTO `espcms_city` VALUES ('1301','152','�ڻ���','3','0');
INSERT INTO `espcms_city` VALUES ('1302','153','俱���','3','0');
INSERT INTO `espcms_city` VALUES ('1303','153','ɽ����','3','0');
INSERT INTO `espcms_city` VALUES ('1304','153','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1305','153','����','3','0');
INSERT INTO `espcms_city` VALUES ('1306','153','���','3','0');
INSERT INTO `espcms_city` VALUES ('1307','154','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('1308','155','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1309','155','��վ��','3','0');
INSERT INTO `espcms_city` VALUES ('1310','155','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1311','155','ɽ����','3','0');
INSERT INTO `espcms_city` VALUES ('1312','155','������','3','0');
INSERT INTO `espcms_city` VALUES ('1313','155','������','3','0');
INSERT INTO `espcms_city` VALUES ('1314','155','������','3','0');
INSERT INTO `espcms_city` VALUES ('1315','155','������','3','0');
INSERT INTO `espcms_city` VALUES ('1316','155','������','3','0');
INSERT INTO `espcms_city` VALUES ('1317','155','����','3','0');
INSERT INTO `espcms_city` VALUES ('1318','156','������','3','0');
INSERT INTO `espcms_city` VALUES ('1319','156','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1320','156','������','3','0');
INSERT INTO `espcms_city` VALUES ('1321','156','������','3','0');
INSERT INTO `espcms_city` VALUES ('1322','156','������','3','0');
INSERT INTO `espcms_city` VALUES ('1323','156','��Ͽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1324','156','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1325','156','������','3','0');
INSERT INTO `espcms_city` VALUES ('1326','156','������','3','0');
INSERT INTO `espcms_city` VALUES ('1327','156','������','3','0');
INSERT INTO `espcms_city` VALUES ('1328','156','�ƺ���','3','0');
INSERT INTO `espcms_city` VALUES ('1329','156','��Ұ��','3','0');
INSERT INTO `espcms_city` VALUES ('1330','156','ͩ����','3','0');
INSERT INTO `espcms_city` VALUES ('1331','157','�»���','3','0');
INSERT INTO `espcms_city` VALUES ('1332','157','������','3','0');
INSERT INTO `espcms_city` VALUES ('1333','157','տ����','3','0');
INSERT INTO `espcms_city` VALUES ('1334','157','ʯ����','3','0');
INSERT INTO `espcms_city` VALUES ('1335','157','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1336','157','������','3','0');
INSERT INTO `espcms_city` VALUES ('1337','157','������','3','0');
INSERT INTO `espcms_city` VALUES ('1338','157','Ҷ��','3','0');
INSERT INTO `espcms_city` VALUES ('1339','157','³ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1340','157','ۣ��','3','0');
INSERT INTO `espcms_city` VALUES ('1341','158','������','3','0');
INSERT INTO `espcms_city` VALUES ('1342','158','������','3','0');
INSERT INTO `espcms_city` VALUES ('1343','158','�鱦��','3','0');
INSERT INTO `espcms_city` VALUES ('1344','158','�ų���','3','0');
INSERT INTO `espcms_city` VALUES ('1345','158','����','3','0');
INSERT INTO `espcms_city` VALUES ('1346','158','¬����','3','0');
INSERT INTO `espcms_city` VALUES ('1347','159','��԰��','3','0');
INSERT INTO `espcms_city` VALUES ('1348','159','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1349','159','������','3','0');
INSERT INTO `espcms_city` VALUES ('1350','159','��Ȩ��','3','0');
INSERT INTO `espcms_city` VALUES ('1351','159','���','3','0');
INSERT INTO `espcms_city` VALUES ('1352','159','������','3','0');
INSERT INTO `espcms_city` VALUES ('1353','159','�ݳ���','3','0');
INSERT INTO `espcms_city` VALUES ('1354','159','�ϳ���','3','0');
INSERT INTO `espcms_city` VALUES ('1355','159','������','3','0');
INSERT INTO `espcms_city` VALUES ('1356','160','������','3','0');
INSERT INTO `espcms_city` VALUES ('1357','160','������','3','0');
INSERT INTO `espcms_city` VALUES ('1358','160','��Ȫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1359','160','��Ұ��','3','0');
INSERT INTO `espcms_city` VALUES ('1360','160','������','3','0');
INSERT INTO `espcms_city` VALUES ('1361','160','������','3','0');
INSERT INTO `espcms_city` VALUES ('1362','160','������','3','0');
INSERT INTO `espcms_city` VALUES ('1363','160','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1364','160','ԭ����','3','0');
INSERT INTO `espcms_city` VALUES ('1365','160','�ӽ���','3','0');
INSERT INTO `espcms_city` VALUES ('1366','160','������','3','0');
INSERT INTO `espcms_city` VALUES ('1367','160','��ԫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1368','161','������','3','0');
INSERT INTO `espcms_city` VALUES ('1369','161','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('1370','161','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1371','161','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1372','161','����','3','0');
INSERT INTO `espcms_city` VALUES ('1373','161','�̳���','3','0');
INSERT INTO `espcms_city` VALUES ('1374','161','��ʼ��','3','0');
INSERT INTO `espcms_city` VALUES ('1375','161','�괨��','3','0');
INSERT INTO `espcms_city` VALUES ('1376','161','������','3','0');
INSERT INTO `espcms_city` VALUES ('1377','161','Ϣ��','3','0');
INSERT INTO `espcms_city` VALUES ('1378','162','κ����','3','0');
INSERT INTO `espcms_city` VALUES ('1379','162','������','3','0');
INSERT INTO `espcms_city` VALUES ('1380','162','������','3','0');
INSERT INTO `espcms_city` VALUES ('1381','162','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1382','162','۳����','3','0');
INSERT INTO `espcms_city` VALUES ('1383','162','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1384','163','������','3','0');
INSERT INTO `espcms_city` VALUES ('1385','163','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1386','163','������','3','0');
INSERT INTO `espcms_city` VALUES ('1387','163','������','3','0');
INSERT INTO `espcms_city` VALUES ('1388','163','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('1389','163','������','3','0');
INSERT INTO `espcms_city` VALUES ('1390','163','������','3','0');
INSERT INTO `espcms_city` VALUES ('1391','163','������','3','0');
INSERT INTO `espcms_city` VALUES ('1392','163','̫����','3','0');
INSERT INTO `espcms_city` VALUES ('1393','163','¹����','3','0');
INSERT INTO `espcms_city` VALUES ('1394','164','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1395','164','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1396','164','�ϲ���','3','0');
INSERT INTO `espcms_city` VALUES ('1397','164','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('1398','164','������','3','0');
INSERT INTO `espcms_city` VALUES ('1399','164','ȷɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1400','164','������','3','0');
INSERT INTO `espcms_city` VALUES ('1401','164','������','3','0');
INSERT INTO `espcms_city` VALUES ('1402','164','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1403','164','�²���','3','0');
INSERT INTO `espcms_city` VALUES ('1404','165','۱����','3','0');
INSERT INTO `espcms_city` VALUES ('1405','165','Դ����','3','0');
INSERT INTO `espcms_city` VALUES ('1406','165','������','3','0');
INSERT INTO `espcms_city` VALUES ('1407','165','������','3','0');
INSERT INTO `espcms_city` VALUES ('1408','165','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1409','166','������','3','0');
INSERT INTO `espcms_city` VALUES ('1410','166','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1411','166','������','3','0');
INSERT INTO `espcms_city` VALUES ('1412','166','����','3','0');
INSERT INTO `espcms_city` VALUES ('1413','166','̨ǰ��','3','0');
INSERT INTO `espcms_city` VALUES ('1414','166','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1415','167','������','3','0');
INSERT INTO `espcms_city` VALUES ('1416','167','�ϸ���','3','0');
INSERT INTO `espcms_city` VALUES ('1417','167','������','3','0');
INSERT INTO `espcms_city` VALUES ('1418','167','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('1419','167','�㷻��','3','0');
INSERT INTO `espcms_city` VALUES ('1420','167','̫ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1421','167','������','3','0');
INSERT INTO `espcms_city` VALUES ('1422','167','������','3','0');
INSERT INTO `espcms_city` VALUES ('1423','167','������','3','0');
INSERT INTO `espcms_city` VALUES ('1424','167','�ɱ���','3','0');
INSERT INTO `espcms_city` VALUES ('1425','167','��־��','3','0');
INSERT INTO `espcms_city` VALUES ('1426','167','˫����','3','0');
INSERT INTO `espcms_city` VALUES ('1427','167','�峣��','3','0');
INSERT INTO `espcms_city` VALUES ('1428','167','������','3','0');
INSERT INTO `espcms_city` VALUES ('1429','167','����','3','0');
INSERT INTO `espcms_city` VALUES ('1430','167','������','3','0');
INSERT INTO `espcms_city` VALUES ('1431','167','������','3','0');
INSERT INTO `espcms_city` VALUES ('1432','167','ͨ����','3','0');
INSERT INTO `espcms_city` VALUES ('1433','167','ľ����','3','0');
INSERT INTO `espcms_city` VALUES ('1434','167','������','3','0');
INSERT INTO `espcms_city` VALUES ('1435','168','����ͼ��','3','0');
INSERT INTO `espcms_city` VALUES ('1436','168','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1437','168','������','3','0');
INSERT INTO `espcms_city` VALUES ('1438','168','�ú�·��','3','0');
INSERT INTO `espcms_city` VALUES ('1439','168','��ͬ��','3','0');
INSERT INTO `espcms_city` VALUES ('1440','168','������','3','0');
INSERT INTO `espcms_city` VALUES ('1441','168','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('1442','168','�ֵ���','3','0');
INSERT INTO `espcms_city` VALUES ('1443','168','�Ŷ�����','3','0');
INSERT INTO `espcms_city` VALUES ('1444','169','������','3','0');
INSERT INTO `espcms_city` VALUES ('1445','169','Į����','3','0');
INSERT INTO `espcms_city` VALUES ('1446','169','������','3','0');
INSERT INTO `espcms_city` VALUES ('1447','170','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1448','170','��ũ��','3','0');
INSERT INTO `espcms_city` VALUES ('1449','170','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1450','170','�˰���','3','0');
INSERT INTO `espcms_city` VALUES ('1451','170','������','3','0');
INSERT INTO `espcms_city` VALUES ('1452','170','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1453','170','�ܱ���','3','0');
INSERT INTO `espcms_city` VALUES ('1454','170','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1455','171','������','3','0');
INSERT INTO `espcms_city` VALUES ('1456','171','���������','3','0');
INSERT INTO `espcms_city` VALUES ('1457','171','������','3','0');
INSERT INTO `espcms_city` VALUES ('1458','171','�۽���','3','0');
INSERT INTO `espcms_city` VALUES ('1459','171','ѷ����','3','0');
INSERT INTO `espcms_city` VALUES ('1460','171','������','3','0');
INSERT INTO `espcms_city` VALUES ('1461','172','������','3','0');
INSERT INTO `espcms_city` VALUES ('1462','172','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1463','172','���Ӻ���','3','0');
INSERT INTO `espcms_city` VALUES ('1464','172','�ε���','3','0');
INSERT INTO `espcms_city` VALUES ('1465','172','������','3','0');
INSERT INTO `espcms_city` VALUES ('1466','172','������','3','0');
INSERT INTO `espcms_city` VALUES ('1467','172','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1468','172','������','3','0');
INSERT INTO `espcms_city` VALUES ('1469','173','ǰ����','3','0');
INSERT INTO `espcms_city` VALUES ('1470','173','����','3','0');
INSERT INTO `espcms_city` VALUES ('1471','173','������','3','0');
INSERT INTO `espcms_city` VALUES ('1472','173','������','3','0');
INSERT INTO `espcms_city` VALUES ('1473','173','ͬ����','3','0');
INSERT INTO `espcms_city` VALUES ('1474','173','������','3','0');
INSERT INTO `espcms_city` VALUES ('1475','173','������','3','0');
INSERT INTO `espcms_city` VALUES ('1476','173','�봨��','3','0');
INSERT INTO `espcms_city` VALUES ('1477','173','��ԭ��','3','0');
INSERT INTO `espcms_city` VALUES ('1478','173','��Զ��','3','0');
INSERT INTO `espcms_city` VALUES ('1479','174','������','3','0');
INSERT INTO `espcms_city` VALUES ('1480','174','������','3','0');
INSERT INTO `espcms_city` VALUES ('1481','174','������','3','0');
INSERT INTO `espcms_city` VALUES ('1482','174','������','3','0');
INSERT INTO `espcms_city` VALUES ('1483','174','��Һ���','3','0');
INSERT INTO `espcms_city` VALUES ('1484','174','������','3','0');
INSERT INTO `espcms_city` VALUES ('1485','174','������','3','0');
INSERT INTO `espcms_city` VALUES ('1486','174','������','3','0');
INSERT INTO `espcms_city` VALUES ('1487','174','������','3','0');
INSERT INTO `espcms_city` VALUES ('1488','174','�ֿ���','3','0');
INSERT INTO `espcms_city` VALUES ('1489','175','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1490','175','������','3','0');
INSERT INTO `espcms_city` VALUES ('1491','175','���Ӻ���','3','0');
INSERT INTO `espcms_city` VALUES ('1492','175','������','3','0');
INSERT INTO `espcms_city` VALUES ('1493','176','��ɳ��','3','0');
INSERT INTO `espcms_city` VALUES ('1494','176','����Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1495','176','������','3','0');
INSERT INTO `espcms_city` VALUES ('1496','176','������','3','0');
INSERT INTO `espcms_city` VALUES ('1497','176','����������','3','0');
INSERT INTO `espcms_city` VALUES ('1498','176','����ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1499','176','÷��˹���Ӷ���','3','0');
INSERT INTO `espcms_city` VALUES ('1500','176','ګ����','3','0');
INSERT INTO `espcms_city` VALUES ('1501','176','������','3','0');
INSERT INTO `espcms_city` VALUES ('1502','176','������','3','0');
INSERT INTO `espcms_city` VALUES ('1503','176','̩����','3','0');
INSERT INTO `espcms_city` VALUES ('1504','176','������','3','0');
INSERT INTO `espcms_city` VALUES ('1505','176','��ԣ��','3','0');
INSERT INTO `espcms_city` VALUES ('1506','176','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1507','176','�˶���','3','0');
INSERT INTO `espcms_city` VALUES ('1508','176','��Ȫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1509','177','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1510','177','�붫��','3','0');
INSERT INTO `espcms_city` VALUES ('1511','177','�ķ�̨��','3','0');
INSERT INTO `espcms_city` VALUES ('1512','177','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1513','177','������','3','0');
INSERT INTO `espcms_city` VALUES ('1514','177','������','3','0');
INSERT INTO `espcms_city` VALUES ('1515','177','������','3','0');
INSERT INTO `espcms_city` VALUES ('1516','177','�ĺ���','3','0');
INSERT INTO `espcms_city` VALUES ('1517','178','������','3','0');
INSERT INTO `espcms_city` VALUES ('1518','178','������','3','0');
INSERT INTO `espcms_city` VALUES ('1519','178','�ض���','3','0');
INSERT INTO `espcms_city` VALUES ('1520','178','������','3','0');
INSERT INTO `espcms_city` VALUES ('1521','178','������','3','0');
INSERT INTO `espcms_city` VALUES ('1522','178','������','3','0');
INSERT INTO `espcms_city` VALUES ('1523','178','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1524','178','�찲��','3','0');
INSERT INTO `espcms_city` VALUES ('1525','178','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('1526','178','������','3','0');
INSERT INTO `espcms_city` VALUES ('1527','179','������','3','0');
INSERT INTO `espcms_city` VALUES ('1528','179','������','3','0');
INSERT INTO `espcms_city` VALUES ('1529','179','�ϲ���','3','0');
INSERT INTO `espcms_city` VALUES ('1530','179','��ɽ����','3','0');
INSERT INTO `espcms_city` VALUES ('1531','179','������','3','0');
INSERT INTO `espcms_city` VALUES ('1532','179','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1533','179','�������','3','0');
INSERT INTO `espcms_city` VALUES ('1534','179','������','3','0');
INSERT INTO `espcms_city` VALUES ('1535','179','�Ѻ���','3','0');
INSERT INTO `espcms_city` VALUES ('1536','179','�ϸ�����','3','0');
INSERT INTO `espcms_city` VALUES ('1537','179','��Ӫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1538','179','������','3','0');
INSERT INTO `espcms_city` VALUES ('1539','179','������','3','0');
INSERT INTO `espcms_city` VALUES ('1540','179','��������','3','0');
INSERT INTO `espcms_city` VALUES ('1541','179','��������','3','0');
INSERT INTO `espcms_city` VALUES ('1542','179','������','3','0');
INSERT INTO `espcms_city` VALUES ('1543','179','������','3','0');
INSERT INTO `espcms_city` VALUES ('1544','180','������','3','0');
INSERT INTO `espcms_city` VALUES ('1545','180','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1546','180','������','3','0');
INSERT INTO `espcms_city` VALUES ('1547','180','�~����','3','0');
INSERT INTO `espcms_city` VALUES ('1548','180','������','3','0');
INSERT INTO `espcms_city` VALUES ('1549','180','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1550','180','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1551','180','��������','3','0');
INSERT INTO `espcms_city` VALUES ('1552','180','������','3','0');
INSERT INTO `espcms_city` VALUES ('1553','180','�̵���','3','0');
INSERT INTO `espcms_city` VALUES ('1554','180','������','3','0');
INSERT INTO `espcms_city` VALUES ('1555','180','������','3','0');
INSERT INTO `espcms_city` VALUES ('1556','180','������','3','0');
INSERT INTO `espcms_city` VALUES ('1557','180','���ÿ�����','3','0');
INSERT INTO `espcms_city` VALUES ('1558','181','������','3','0');
INSERT INTO `espcms_city` VALUES ('1559','182','������','3','0');
INSERT INTO `espcms_city` VALUES ('1560','182','������','3','0');
INSERT INTO `espcms_city` VALUES ('1561','182','���Ӻ���','3','0');
INSERT INTO `espcms_city` VALUES ('1562','183','������','3','0');
INSERT INTO `espcms_city` VALUES ('1563','183','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1564','183','��Ѩ��','3','0');
INSERT INTO `espcms_city` VALUES ('1565','183','�ŷ���','3','0');
INSERT INTO `espcms_city` VALUES ('1566','183','�찲��','3','0');
INSERT INTO `espcms_city` VALUES ('1567','183','������','3','0');
INSERT INTO `espcms_city` VALUES ('1568','183','Ӣɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1569','183','�ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('1570','183','ޭ����','3','0');
INSERT INTO `espcms_city` VALUES ('1571','183','��÷��','3','0');
INSERT INTO `espcms_city` VALUES ('1572','184','��ʯ����','3','0');
INSERT INTO `espcms_city` VALUES ('1573','184','����ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1574','184','��½��','3','0');
INSERT INTO `espcms_city` VALUES ('1575','184','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1576','184','��ұ��','3','0');
INSERT INTO `espcms_city` VALUES ('1577','184','������','3','0');
INSERT INTO `espcms_city` VALUES ('1578','185','������','3','0');
INSERT INTO `espcms_city` VALUES ('1579','185','�޵���','3','0');
INSERT INTO `espcms_city` VALUES ('1580','185','������','3','0');
INSERT INTO `espcms_city` VALUES ('1581','185','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1582','185','ɳ����','3','0');
INSERT INTO `espcms_city` VALUES ('1583','186','ɳ����','3','0');
INSERT INTO `espcms_city` VALUES ('1584','186','������','3','0');
INSERT INTO `espcms_city` VALUES ('1585','186','ʯ����','3','0');
INSERT INTO `espcms_city` VALUES ('1586','186','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1587','186','������','3','0');
INSERT INTO `espcms_city` VALUES ('1588','186','������','3','0');
INSERT INTO `espcms_city` VALUES ('1589','186','������','3','0');
INSERT INTO `espcms_city` VALUES ('1590','186','������','3','0');
INSERT INTO `espcms_city` VALUES ('1591','187','Ǳ����','3','0');
INSERT INTO `espcms_city` VALUES ('1592','188','��ũ������','3','0');
INSERT INTO `espcms_city` VALUES ('1593','189','������','3','0');
INSERT INTO `espcms_city` VALUES ('1594','189','é����','3','0');
INSERT INTO `espcms_city` VALUES ('1595','189','��������','3','0');
INSERT INTO `espcms_city` VALUES ('1596','189','����','3','0');
INSERT INTO `espcms_city` VALUES ('1597','189','������','3','0');
INSERT INTO `espcms_city` VALUES ('1598','189','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1599','189','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1600','189','����','3','0');
INSERT INTO `espcms_city` VALUES ('1601','190','������','3','0');
INSERT INTO `espcms_city` VALUES ('1602','190','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('1603','191','������','3','0');
INSERT INTO `espcms_city` VALUES ('1604','192','�̰���','3','0');
INSERT INTO `espcms_city` VALUES ('1605','192','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1606','192','������','3','0');
INSERT INTO `espcms_city` VALUES ('1607','192','ͨ����','3','0');
INSERT INTO `espcms_city` VALUES ('1608','192','������','3','0');
INSERT INTO `espcms_city` VALUES ('1609','192','ͨɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1610','193','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1611','193','������','3','0');
INSERT INTO `espcms_city` VALUES ('1612','193','������','3','0');
INSERT INTO `espcms_city` VALUES ('1613','193','�Ϻӿ���','3','0');
INSERT INTO `espcms_city` VALUES ('1614','193','������','3','0');
INSERT INTO `espcms_city` VALUES ('1615','193','�˳���','3','0');
INSERT INTO `espcms_city` VALUES ('1616','193','������','3','0');
INSERT INTO `espcms_city` VALUES ('1617','193','�ȳ���','3','0');
INSERT INTO `espcms_city` VALUES ('1618','193','������','3','0');
INSERT INTO `espcms_city` VALUES ('1619','194','Т����','3','0');
INSERT INTO `espcms_city` VALUES ('1620','194','Ӧ����','3','0');
INSERT INTO `espcms_city` VALUES ('1621','194','��½��','3','0');
INSERT INTO `espcms_city` VALUES ('1622','194','������','3','0');
INSERT INTO `espcms_city` VALUES ('1623','194','Т����','3','0');
INSERT INTO `espcms_city` VALUES ('1624','194','������','3','0');
INSERT INTO `espcms_city` VALUES ('1625','194','������','3','0');
INSERT INTO `espcms_city` VALUES ('1626','195','����','3','0');
INSERT INTO `espcms_city` VALUES ('1627','195','���','3','0');
INSERT INTO `espcms_city` VALUES ('1628','195','������','3','0');
INSERT INTO `espcms_city` VALUES ('1629','195','��Ҹ���','3','0');
INSERT INTO `espcms_city` VALUES ('1630','195','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1631','195','�Vͤ��','3','0');
INSERT INTO `espcms_city` VALUES ('1632','195','������','3','0');
INSERT INTO `espcms_city` VALUES ('1633','195','�˶���','3','0');
INSERT INTO `espcms_city` VALUES ('1634','195','������','3','0');
INSERT INTO `espcms_city` VALUES ('1635','195','֦����','3','0');
INSERT INTO `espcms_city` VALUES ('1636','195','Զ����','3','0');
INSERT INTO `espcms_city` VALUES ('1637','195','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1638','195','������','3','0');
INSERT INTO `espcms_city` VALUES ('1639','196','��ʩ��','3','0');
INSERT INTO `espcms_city` VALUES ('1640','196','������','3','0');
INSERT INTO `espcms_city` VALUES ('1641','196','��ʼ��','3','0');
INSERT INTO `espcms_city` VALUES ('1642','196','�Ͷ���','3','0');
INSERT INTO `espcms_city` VALUES ('1643','196','������','3','0');
INSERT INTO `espcms_city` VALUES ('1644','196','�̷���','3','0');
INSERT INTO `espcms_city` VALUES ('1645','196','������','3','0');
INSERT INTO `espcms_city` VALUES ('1646','196','�׷���','3','0');
INSERT INTO `espcms_city` VALUES ('1647','197','��´��','3','0');
INSERT INTO `espcms_city` VALUES ('1648','197','ܽ����','3','0');
INSERT INTO `espcms_city` VALUES ('1649','197','������','3','0');
INSERT INTO `espcms_city` VALUES ('1650','197','������','3','0');
INSERT INTO `espcms_city` VALUES ('1651','197','�껨��','3','0');
INSERT INTO `espcms_city` VALUES ('1652','197','������','3','0');
INSERT INTO `espcms_city` VALUES ('1653','197','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1654','197','��ɳ��','3','0');
INSERT INTO `espcms_city` VALUES ('1655','197','������','3','0');
INSERT INTO `espcms_city` VALUES ('1656','197','������','3','0');
INSERT INTO `espcms_city` VALUES ('1657','198','������','3','0');
INSERT INTO `espcms_city` VALUES ('1658','198','����Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('1659','198','������','3','0');
INSERT INTO `espcms_city` VALUES ('1660','198','ɣֲ��','3','0');
INSERT INTO `espcms_city` VALUES ('1661','199','������','3','0');
INSERT INTO `espcms_city` VALUES ('1662','199','������','3','0');
INSERT INTO `espcms_city` VALUES ('1663','199','������','3','0');
INSERT INTO `espcms_city` VALUES ('1664','199','������','3','0');
INSERT INTO `espcms_city` VALUES ('1665','199','������','3','0');
INSERT INTO `espcms_city` VALUES ('1666','199','���','3','0');
INSERT INTO `espcms_city` VALUES ('1667','199','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1668','199','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('1669','199','ʯ����','3','0');
INSERT INTO `espcms_city` VALUES ('1670','200','������','3','0');
INSERT INTO `espcms_city` VALUES ('1671','200','������','3','0');
INSERT INTO `espcms_city` VALUES ('1672','200','������','3','0');
INSERT INTO `espcms_city` VALUES ('1673','200','������','3','0');
INSERT INTO `espcms_city` VALUES ('1674','200','������','3','0');
INSERT INTO `espcms_city` VALUES ('1675','200','������','3','0');
INSERT INTO `espcms_city` VALUES ('1676','200','�κ���','3','0');
INSERT INTO `espcms_city` VALUES ('1677','200','������','3','0');
INSERT INTO `espcms_city` VALUES ('1678','200','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1679','200','����','3','0');
INSERT INTO `espcms_city` VALUES ('1680','200','������','3','0');
INSERT INTO `espcms_city` VALUES ('1681','201','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1682','201','������','3','0');
INSERT INTO `espcms_city` VALUES ('1683','201','ʯ����','3','0');
INSERT INTO `espcms_city` VALUES ('1684','201','������','3','0');
INSERT INTO `espcms_city` VALUES ('1685','201','������','3','0');
INSERT INTO `espcms_city` VALUES ('1686','201','������','3','0');
INSERT INTO `espcms_city` VALUES ('1687','201','������','3','0');
INSERT INTO `espcms_city` VALUES ('1688','201','������','3','0');
INSERT INTO `espcms_city` VALUES ('1689','201','������','3','0');
INSERT INTO `espcms_city` VALUES ('1690','201','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1691','201','�ⶫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1692','201','���','3','0');
INSERT INTO `espcms_city` VALUES ('1693','202','�׳���','3','0');
INSERT INTO `espcms_city` VALUES ('1694','202','����','3','0');
INSERT INTO `espcms_city` VALUES ('1695','202','����','3','0');
INSERT INTO `espcms_city` VALUES ('1696','202','ͨ��','3','0');
INSERT INTO `espcms_city` VALUES ('1697','202','�»�','3','0');
INSERT INTO `espcms_city` VALUES ('1698','202','�ƽ�','3','0');
INSERT INTO `espcms_city` VALUES ('1699','202','������','3','0');
INSERT INTO `espcms_city` VALUES ('1700','202','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1701','202','������','3','0');
INSERT INTO `espcms_city` VALUES ('1702','202','�з���','3','0');
INSERT INTO `espcms_city` VALUES ('1703','202','��ͬ��','3','0');
INSERT INTO `espcms_city` VALUES ('1704','202','�齭��','3','0');
INSERT INTO `espcms_city` VALUES ('1705','203','¦����','3','0');
INSERT INTO `espcms_city` VALUES ('1706','203','��ˮ����','3','0');
INSERT INTO `espcms_city` VALUES ('1707','203','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('1708','203','˫����','3','0');
INSERT INTO `espcms_city` VALUES ('1709','203','�»���','3','0');
INSERT INTO `espcms_city` VALUES ('1710','204','�ǲ�','3','0');
INSERT INTO `espcms_city` VALUES ('1711','204','˫����','3','0');
INSERT INTO `espcms_city` VALUES ('1712','204','������','3','0');
INSERT INTO `espcms_city` VALUES ('1713','204','������','3','0');
INSERT INTO `espcms_city` VALUES ('1714','204','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1715','204','�۶���','3','0');
INSERT INTO `espcms_city` VALUES ('1716','204','������','3','0');
INSERT INTO `espcms_city` VALUES ('1717','204','������','3','0');
INSERT INTO `espcms_city` VALUES ('1718','204','¡����','3','0');
INSERT INTO `espcms_city` VALUES ('1719','204','������','3','0');
INSERT INTO `espcms_city` VALUES ('1720','204','������','3','0');
INSERT INTO `espcms_city` VALUES ('1721','204','������','3','0');
INSERT INTO `espcms_city` VALUES ('1722','205','������','3','0');
INSERT INTO `espcms_city` VALUES ('1723','205','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1724','205','������','3','0');
INSERT INTO `espcms_city` VALUES ('1725','205','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1726','205','��̶��','3','0');
INSERT INTO `espcms_city` VALUES ('1727','206','������','3','0');
INSERT INTO `espcms_city` VALUES ('1728','206','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1729','206','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1730','206','��ԫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1731','206','������','3','0');
INSERT INTO `espcms_city` VALUES ('1732','206','������','3','0');
INSERT INTO `espcms_city` VALUES ('1733','206','��˳��','3','0');
INSERT INTO `espcms_city` VALUES ('1734','206','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1735','207','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1736','207','������','3','0');
INSERT INTO `espcms_city` VALUES ('1737','207','�佭��','3','0');
INSERT INTO `espcms_city` VALUES ('1738','207','����','3','0');
INSERT INTO `espcms_city` VALUES ('1739','207','�ҽ���','3','0');
INSERT INTO `espcms_city` VALUES ('1740','207','������','3','0');
INSERT INTO `espcms_city` VALUES ('1741','208','����','3','0');
INSERT INTO `espcms_city` VALUES ('1742','208','��ˮ̲��','3','0');
INSERT INTO `espcms_city` VALUES ('1743','208','������','3','0');
INSERT INTO `espcms_city` VALUES ('1744','208','������','3','0');
INSERT INTO `espcms_city` VALUES ('1745','208','������','3','0');
INSERT INTO `espcms_city` VALUES ('1746','208','˫����','3','0');
INSERT INTO `espcms_city` VALUES ('1747','208','����','3','0');
INSERT INTO `espcms_city` VALUES ('1748','208','������','3','0');
INSERT INTO `espcms_city` VALUES ('1749','208','��Զ��','3','0');
INSERT INTO `espcms_city` VALUES ('1750','208','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1751','208','������','3','0');
INSERT INTO `espcms_city` VALUES ('1752','209','����¥��','3','0');
INSERT INTO `espcms_city` VALUES ('1753','209','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1754','209','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1755','209','������','3','0');
INSERT INTO `espcms_city` VALUES ('1756','209','������','3','0');
INSERT INTO `espcms_city` VALUES ('1757','209','������','3','0');
INSERT INTO `espcms_city` VALUES ('1758','209','������','3','0');
INSERT INTO `espcms_city` VALUES ('1759','209','������','3','0');
INSERT INTO `espcms_city` VALUES ('1760','209','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('1761','210','��Ԫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1762','210','������','3','0');
INSERT INTO `espcms_city` VALUES ('1763','210','«����','3','0');
INSERT INTO `espcms_city` VALUES ('1764','210','ʯ����','3','0');
INSERT INTO `espcms_city` VALUES ('1765','210','������','3','0');
INSERT INTO `espcms_city` VALUES ('1766','210','������','3','0');
INSERT INTO `espcms_city` VALUES ('1767','210','����','3','0');
INSERT INTO `espcms_city` VALUES ('1768','210','������','3','0');
INSERT INTO `espcms_city` VALUES ('1769','210','������','3','0');
INSERT INTO `espcms_city` VALUES ('1770','211','������','3','0');
INSERT INTO `espcms_city` VALUES ('1771','211','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1772','211','������','3','0');
INSERT INTO `espcms_city` VALUES ('1773','211','�Ϲ���','3','0');
INSERT INTO `espcms_city` VALUES ('1774','211','��԰��','3','0');
INSERT INTO `espcms_city` VALUES ('1775','211','˫����','3','0');
INSERT INTO `espcms_city` VALUES ('1776','211','����̶������','3','0');
INSERT INTO `espcms_city` VALUES ('1777','211','���¼���������','3','0');
INSERT INTO `espcms_city` VALUES ('1778','211','���ü���������','3','0');
INSERT INTO `espcms_city` VALUES ('1779','211','������ҵ������','3','0');
INSERT INTO `espcms_city` VALUES ('1780','211','�»���','3','0');
INSERT INTO `espcms_city` VALUES ('1781','211','��̨��','3','0');
INSERT INTO `espcms_city` VALUES ('1782','211','������','3','0');
INSERT INTO `espcms_city` VALUES ('1783','211','ũ����','3','0');
INSERT INTO `espcms_city` VALUES ('1784','212','��Ӫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1785','212','������','3','0');
INSERT INTO `espcms_city` VALUES ('1786','212','��̶��','3','0');
INSERT INTO `espcms_city` VALUES ('1787','212','������','3','0');
INSERT INTO `espcms_city` VALUES ('1788','212','�Ժ���','3','0');
INSERT INTO `espcms_city` VALUES ('1789','212','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1790','212','������','3','0');
INSERT INTO `espcms_city` VALUES ('1791','212','��ʯ��','3','0');
INSERT INTO `espcms_city` VALUES ('1792','212','������','3','0');
INSERT INTO `espcms_city` VALUES ('1793','213','䬱���','3','0');
INSERT INTO `espcms_city` VALUES ('1794','213','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1795','213','����','3','0');
INSERT INTO `espcms_city` VALUES ('1796','213','������','3','0');
INSERT INTO `espcms_city` VALUES ('1797','213','ͨ����','3','0');
INSERT INTO `espcms_city` VALUES ('1798','214','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('1799','214','�˵�����','3','0');
INSERT INTO `espcms_city` VALUES ('1800','214','����','3','0');
INSERT INTO `espcms_city` VALUES ('1801','214','�ٽ���','3','0');
INSERT INTO `espcms_city` VALUES ('1802','214','������','3','0');
INSERT INTO `espcms_city` VALUES ('1803','214','������','3','0');
INSERT INTO `espcms_city` VALUES ('1804','215','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1805','215','������','3','0');
INSERT INTO `espcms_city` VALUES ('1806','215','������','3','0');
INSERT INTO `espcms_city` VALUES ('1807','215','������','3','0');
INSERT INTO `espcms_city` VALUES ('1808','216','������','3','0');
INSERT INTO `espcms_city` VALUES ('1809','216','������','3','0');
INSERT INTO `espcms_city` VALUES ('1810','216','��ͨ','3','0');
INSERT INTO `espcms_city` VALUES ('1811','216','��������','3','0');
INSERT INTO `espcms_city` VALUES ('1812','216','˫����','3','0');
INSERT INTO `espcms_city` VALUES ('1813','216','������','3','0');
INSERT INTO `espcms_city` VALUES ('1814','217','ǰ������˹','3','0');
INSERT INTO `espcms_city` VALUES ('1815','217','������','3','0');
INSERT INTO `espcms_city` VALUES ('1816','217','������','3','0');
INSERT INTO `espcms_city` VALUES ('1817','217','Ǭ����','3','0');
INSERT INTO `espcms_city` VALUES ('1818','217','������','3','0');
INSERT INTO `espcms_city` VALUES ('1819','218','������','3','0');
INSERT INTO `espcms_city` VALUES ('1820','218','��������','3','0');
INSERT INTO `espcms_city` VALUES ('1821','218','÷�ӿ���','3','0');
INSERT INTO `espcms_city` VALUES ('1822','218','������','3','0');
INSERT INTO `espcms_city` VALUES ('1823','218','ͨ����','3','0');
INSERT INTO `espcms_city` VALUES ('1824','218','������','3','0');
INSERT INTO `espcms_city` VALUES ('1825','218','������','3','0');
INSERT INTO `espcms_city` VALUES ('1826','219','�Ӽ���','3','0');
INSERT INTO `espcms_city` VALUES ('1827','219','ͼ����','3','0');
INSERT INTO `espcms_city` VALUES ('1828','219','�ػ���','3','0');
INSERT INTO `espcms_city` VALUES ('1829','219','������','3','0');
INSERT INTO `espcms_city` VALUES ('1830','219','������','3','0');
INSERT INTO `espcms_city` VALUES ('1831','219','������','3','0');
INSERT INTO `espcms_city` VALUES ('1832','219','��ͼ��','3','0');
INSERT INTO `espcms_city` VALUES ('1833','219','������','3','0');
INSERT INTO `espcms_city` VALUES ('1834','220','������','3','0');
INSERT INTO `espcms_city` VALUES ('1835','220','��¥��','3','0');
INSERT INTO `espcms_city` VALUES ('1836','220','������','3','0');
INSERT INTO `espcms_city` VALUES ('1837','220','������','3','0');
INSERT INTO `espcms_city` VALUES ('1838','220','�ػ���','3','0');
INSERT INTO `espcms_city` VALUES ('1839','220','�껨̨��','3','0');
INSERT INTO `espcms_city` VALUES ('1840','220','�¹���','3','0');
INSERT INTO `espcms_city` VALUES ('1841','220','��ϼ��','3','0');
INSERT INTO `espcms_city` VALUES ('1842','220','�ֿ���','3','0');
INSERT INTO `espcms_city` VALUES ('1843','220','������','3','0');
INSERT INTO `espcms_city` VALUES ('1844','220','������','3','0');
INSERT INTO `espcms_city` VALUES ('1845','220','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('1846','220','�ߴ���','3','0');
INSERT INTO `espcms_city` VALUES ('1847','221','������','3','0');
INSERT INTO `espcms_city` VALUES ('1848','221','������','3','0');
INSERT INTO `espcms_city` VALUES ('1849','221','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('1850','221','������','3','0');
INSERT INTO `espcms_city` VALUES ('1851','221','������','3','0');
INSERT INTO `espcms_city` VALUES ('1852','221','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1853','221','԰��','3','0');
INSERT INTO `espcms_city` VALUES ('1854','221','����','3','0');
INSERT INTO `espcms_city` VALUES ('1855','221','������','3','0');
INSERT INTO `espcms_city` VALUES ('1856','221','�żҸ���','3','0');
INSERT INTO `espcms_city` VALUES ('1857','221','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1858','221','�ͳ���','3','0');
INSERT INTO `espcms_city` VALUES ('1859','221','������','3','0');
INSERT INTO `espcms_city` VALUES ('1860','221','½����','3','0');
INSERT INTO `espcms_city` VALUES ('1861','221','������','3','0');
INSERT INTO `espcms_city` VALUES ('1862','221','��ɽ����','3','0');
INSERT INTO `espcms_city` VALUES ('1863','221','������','3','0');
INSERT INTO `espcms_city` VALUES ('1864','221','��ׯ��','3','0');
INSERT INTO `espcms_city` VALUES ('1865','221','ǧ����','3','0');
INSERT INTO `espcms_city` VALUES ('1866','221','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1867','221','������','3','0');
INSERT INTO `espcms_city` VALUES ('1868','221','�⽭��','3','0');
INSERT INTO `espcms_city` VALUES ('1869','221','̫����','3','0');
INSERT INTO `espcms_city` VALUES ('1870','222','�簲��','3','0');
INSERT INTO `espcms_city` VALUES ('1871','222','������','3','0');
INSERT INTO `espcms_city` VALUES ('1872','222','�ϳ���','3','0');
INSERT INTO `espcms_city` VALUES ('1873','222','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1874','222','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1875','222','������','3','0');
INSERT INTO `espcms_city` VALUES ('1876','222','����','3','0');
INSERT INTO `espcms_city` VALUES ('1877','222','������','3','0');
INSERT INTO `espcms_city` VALUES ('1878','222','������','3','0');
INSERT INTO `espcms_city` VALUES ('1879','223','������','3','0');
INSERT INTO `espcms_city` VALUES ('1880','223','��¥��','3','0');
INSERT INTO `espcms_city` VALUES ('1881','223','��������','3','0');
INSERT INTO `espcms_city` VALUES ('1882','223','����','3','0');
INSERT INTO `espcms_city` VALUES ('1883','223','�±���','3','0');
INSERT INTO `espcms_city` VALUES ('1884','223','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1885','223','������','3','0');
INSERT INTO `espcms_city` VALUES ('1886','223','��̳��','3','0');
INSERT INTO `espcms_city` VALUES ('1887','224','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1888','224','������','3','0');
INSERT INTO `espcms_city` VALUES ('1889','224','������','3','0');
INSERT INTO `espcms_city` VALUES ('1890','224','������','3','0');
INSERT INTO `espcms_city` VALUES ('1891','224','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('1892','224','������','3','0');
INSERT INTO `espcms_city` VALUES ('1893','224','������','3','0');
INSERT INTO `espcms_city` VALUES ('1894','224','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1895','225','������','3','0');
INSERT INTO `espcms_city` VALUES ('1896','225','������','3','0');
INSERT INTO `espcms_city` VALUES ('1897','225','������','3','0');
INSERT INTO `espcms_city` VALUES ('1898','225','������','3','0');
INSERT INTO `espcms_city` VALUES ('1899','225','������','3','0');
INSERT INTO `espcms_city` VALUES ('1900','225','������','3','0');
INSERT INTO `espcms_city` VALUES ('1901','225','������','3','0');
INSERT INTO `espcms_city` VALUES ('1902','226','�紨��','3','0');
INSERT INTO `espcms_city` VALUES ('1903','226','��բ��','3','0');
INSERT INTO `espcms_city` VALUES ('1904','226','���ÿ�����','3','0');
INSERT INTO `espcms_city` VALUES ('1905','226','������','3','0');
INSERT INTO `espcms_city` VALUES ('1906','226','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1907','226','ͨ����','3','0');
INSERT INTO `espcms_city` VALUES ('1908','226','������','3','0');
INSERT INTO `espcms_city` VALUES ('1909','226','������','3','0');
INSERT INTO `espcms_city` VALUES ('1910','226','�綫��','3','0');
INSERT INTO `espcms_city` VALUES ('1911','227','�޳���','3','0');
INSERT INTO `espcms_city` VALUES ('1912','227','��ԥ��','3','0');
INSERT INTO `espcms_city` VALUES ('1913','227','��ԥ��','3','0');
INSERT INTO `espcms_city` VALUES ('1914','227','������','3','0');
INSERT INTO `espcms_city` VALUES ('1915','227','������','3','0');
INSERT INTO `espcms_city` VALUES ('1916','227','������','3','0');
INSERT INTO `espcms_city` VALUES ('1917','228','������','3','0');
INSERT INTO `espcms_city` VALUES ('1918','228','�߸���','3','0');
INSERT INTO `espcms_city` VALUES ('1919','228','�˻���','3','0');
INSERT INTO `espcms_city` VALUES ('1920','228','������','3','0');
INSERT INTO `espcms_city` VALUES ('1921','228','̩����','3','0');
INSERT INTO `espcms_city` VALUES ('1922','228','������','3','0');
INSERT INTO `espcms_city` VALUES ('1923','229','������','3','0');
INSERT INTO `espcms_city` VALUES ('1924','229','��¥��','3','0');
INSERT INTO `espcms_city` VALUES ('1925','229','������','3','0');
INSERT INTO `espcms_city` VALUES ('1926','229','������','3','0');
INSERT INTO `espcms_city` VALUES ('1927','229','Ȫɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1928','229','������','3','0');
INSERT INTO `espcms_city` VALUES ('1929','229','������','3','0');
INSERT INTO `espcms_city` VALUES ('1930','229','����','3','0');
INSERT INTO `espcms_city` VALUES ('1931','229','����','3','0');
INSERT INTO `espcms_city` VALUES ('1932','229','ͭɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1933','229','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1934','230','����','3','0');
INSERT INTO `espcms_city` VALUES ('1935','230','ͤ����','3','0');
INSERT INTO `espcms_city` VALUES ('1936','230','�ζ���','3','0');
INSERT INTO `espcms_city` VALUES ('1937','230','�ζ���','3','0');
INSERT INTO `espcms_city` VALUES ('1938','230','��̨��','3','0');
INSERT INTO `espcms_city` VALUES ('1939','230','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1940','230','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('1941','230','������','3','0');
INSERT INTO `espcms_city` VALUES ('1942','230','������','3','0');
INSERT INTO `espcms_city` VALUES ('1943','230','������','3','0');
INSERT INTO `espcms_city` VALUES ('1944','230','������','3','0');
INSERT INTO `espcms_city` VALUES ('1945','231','������','3','0');
INSERT INTO `espcms_city` VALUES ('1946','231','ά����','3','0');
INSERT INTO `espcms_city` VALUES ('1947','231','������','3','0');
INSERT INTO `espcms_city` VALUES ('1948','231','������','3','0');
INSERT INTO `espcms_city` VALUES ('1949','231','������','3','0');
INSERT INTO `espcms_city` VALUES ('1950','231','������','3','0');
INSERT INTO `espcms_city` VALUES ('1951','231','��Ӧ��','3','0');
INSERT INTO `espcms_city` VALUES ('1952','232','������','3','0');
INSERT INTO `espcms_city` VALUES ('1953','232','������','3','0');
INSERT INTO `espcms_city` VALUES ('1954','232','��ͽ��','3','0');
INSERT INTO `espcms_city` VALUES ('1955','232','������','3','0');
INSERT INTO `espcms_city` VALUES ('1956','232','������','3','0');
INSERT INTO `espcms_city` VALUES ('1957','232','������','3','0');
INSERT INTO `espcms_city` VALUES ('1958','233','������','3','0');
INSERT INTO `espcms_city` VALUES ('1959','233','������','3','0');
INSERT INTO `espcms_city` VALUES ('1960','233','��������','3','0');
INSERT INTO `espcms_city` VALUES ('1961','233','������','3','0');
INSERT INTO `espcms_city` VALUES ('1962','233','��ɽ����','3','0');
INSERT INTO `espcms_city` VALUES ('1963','233','���̲����','3','0');
INSERT INTO `espcms_city` VALUES ('1964','233','������','3','0');
INSERT INTO `espcms_city` VALUES ('1965','233','������','3','0');
INSERT INTO `espcms_city` VALUES ('1966','233','�ϲ���','3','0');
INSERT INTO `espcms_city` VALUES ('1967','233','�½���','3','0');
INSERT INTO `espcms_city` VALUES ('1968','233','������','3','0');
INSERT INTO `espcms_city` VALUES ('1969','233','������','3','0');
INSERT INTO `espcms_city` VALUES ('1970','234','�ٴ���','3','0');
INSERT INTO `espcms_city` VALUES ('1971','234','�ϳ���','3','0');
INSERT INTO `espcms_city` VALUES ('1972','234','�质��','3','0');
INSERT INTO `espcms_city` VALUES ('1973','234','�Ϸ���','3','0');
INSERT INTO `espcms_city` VALUES ('1974','234','������','3','0');
INSERT INTO `espcms_city` VALUES ('1975','234','�ְ���','3','0');
INSERT INTO `espcms_city` VALUES ('1976','234','�˻���','3','0');
INSERT INTO `espcms_city` VALUES ('1977','234','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1978','234','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('1979','234','������','3','0');
INSERT INTO `espcms_city` VALUES ('1980','234','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1981','235','�¹���','3','0');
INSERT INTO `espcms_city` VALUES ('1982','235','�ڶ���','3','0');
INSERT INTO `espcms_city` VALUES ('1983','235','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1984','235','�Ͽ���','3','0');
INSERT INTO `espcms_city` VALUES ('1985','235','����','3','0');
INSERT INTO `espcms_city` VALUES ('1986','235','�ŷ���','3','0');
INSERT INTO `espcms_city` VALUES ('1987','235','������','3','0');
INSERT INTO `espcms_city` VALUES ('1988','235','������','3','0');
INSERT INTO `espcms_city` VALUES ('1989','235','������','3','0');
INSERT INTO `espcms_city` VALUES ('1990','235','��Զ��','3','0');
INSERT INTO `espcms_city` VALUES ('1991','235','������','3','0');
INSERT INTO `espcms_city` VALUES ('1992','235','������','3','0');
INSERT INTO `espcms_city` VALUES ('1993','235','ȫ����','3','0');
INSERT INTO `espcms_city` VALUES ('1994','235','������','3','0');
INSERT INTO `espcms_city` VALUES ('1995','235','�˹���','3','0');
INSERT INTO `espcms_city` VALUES ('1996','235','�����','3','0');
INSERT INTO `espcms_city` VALUES ('1997','235','Ѱ����','3','0');
INSERT INTO `espcms_city` VALUES ('1998','235','ʯ����','3','0');
INSERT INTO `espcms_city` VALUES ('1999','236','������','3','0');
INSERT INTO `espcms_city` VALUES ('2000','236','������','3','0');
INSERT INTO `espcms_city` VALUES ('2001','236','��ԭ��','3','0');
INSERT INTO `espcms_city` VALUES ('2002','236','����ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2003','236','������','3','0');
INSERT INTO `espcms_city` VALUES ('2004','236','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('2005','236','Ͽ����','3','0');
INSERT INTO `espcms_city` VALUES ('2006','236','�¸���','3','0');
INSERT INTO `espcms_city` VALUES ('2007','236','������','3','0');
INSERT INTO `espcms_city` VALUES ('2008','236','̩����','3','0');
INSERT INTO `espcms_city` VALUES ('2009','236','�촨��','3','0');
INSERT INTO `espcms_city` VALUES ('2010','236','����','3','0');
INSERT INTO `espcms_city` VALUES ('2011','236','������','3','0');
INSERT INTO `espcms_city` VALUES ('2012','237','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2013','237','������','3','0');
INSERT INTO `espcms_city` VALUES ('2014','237','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2015','237','������','3','0');
INSERT INTO `espcms_city` VALUES ('2016','238','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2017','238','®ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2018','238','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2019','238','�Ž���','3','0');
INSERT INTO `espcms_city` VALUES ('2020','238','������','3','0');
INSERT INTO `espcms_city` VALUES ('2021','238','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('2022','238','������','3','0');
INSERT INTO `espcms_city` VALUES ('2023','238','�°���','3','0');
INSERT INTO `espcms_city` VALUES ('2024','238','������','3','0');
INSERT INTO `espcms_city` VALUES ('2025','238','������','3','0');
INSERT INTO `espcms_city` VALUES ('2026','238','������','3','0');
INSERT INTO `espcms_city` VALUES ('2027','238','������','3','0');
INSERT INTO `espcms_city` VALUES ('2028','239','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('2029','239','�涫��','3','0');
INSERT INTO `espcms_city` VALUES ('2030','239','������','3','0');
INSERT INTO `espcms_city` VALUES ('2031','239','«Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('2032','239','������','3','0');
INSERT INTO `espcms_city` VALUES ('2033','240','������','3','0');
INSERT INTO `espcms_city` VALUES ('2034','240','������','3','0');
INSERT INTO `espcms_city` VALUES ('2035','240','������','3','0');
INSERT INTO `espcms_city` VALUES ('2036','240','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2037','240','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2038','240','Ǧɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2039','240','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2040','240','߮����','3','0');
INSERT INTO `espcms_city` VALUES ('2041','240','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2042','240','������','3','0');
INSERT INTO `espcms_city` VALUES ('2043','240','������','3','0');
INSERT INTO `espcms_city` VALUES ('2044','240','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('2045','241','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('2046','241','������','3','0');
INSERT INTO `espcms_city` VALUES ('2047','242','Ԭ����','3','0');
INSERT INTO `espcms_city` VALUES ('2048','242','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2049','242','������','3','0');
INSERT INTO `espcms_city` VALUES ('2050','242','�߰���','3','0');
INSERT INTO `espcms_city` VALUES ('2051','242','������','3','0');
INSERT INTO `espcms_city` VALUES ('2052','242','������','3','0');
INSERT INTO `espcms_city` VALUES ('2053','242','�ϸ���','3','0');
INSERT INTO `espcms_city` VALUES ('2054','242','�˷���','3','0');
INSERT INTO `espcms_city` VALUES ('2055','242','������','3','0');
INSERT INTO `espcms_city` VALUES ('2056','242','ͭ����','3','0');
INSERT INTO `espcms_city` VALUES ('2057','243','�º���','3','0');
INSERT INTO `espcms_city` VALUES ('2058','243','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('2059','243','�཭��','3','0');
INSERT INTO `espcms_city` VALUES ('2060','244','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2061','244','�ʹ���','3','0');
INSERT INTO `espcms_city` VALUES ('2062','244','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2063','244','����','3','0');
INSERT INTO `espcms_city` VALUES ('2064','244','������','3','0');
INSERT INTO `espcms_city` VALUES ('2065','244','�ռ�����','3','0');
INSERT INTO `espcms_city` VALUES ('2066','244','������','3','0');
INSERT INTO `espcms_city` VALUES ('2067','244','������','3','0');
INSERT INTO `espcms_city` VALUES ('2068','244','�ں���','3','0');
INSERT INTO `espcms_city` VALUES ('2069','244','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2070','244','������','3','0');
INSERT INTO `espcms_city` VALUES ('2071','244','������','3','0');
INSERT INTO `espcms_city` VALUES ('2072','244','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2073','244','������','3','0');
INSERT INTO `espcms_city` VALUES ('2074','245','������','3','0');
INSERT INTO `espcms_city` VALUES ('2075','245','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2076','245','ɳ�ӿ���','3','0');
INSERT INTO `espcms_city` VALUES ('2077','245','�ʾ�����','3','0');
INSERT INTO `espcms_city` VALUES ('2078','245','��˳����','3','0');
INSERT INTO `espcms_city` VALUES ('2079','245','������','3','0');
INSERT INTO `espcms_city` VALUES ('2080','245','������','3','0');
INSERT INTO `espcms_city` VALUES ('2081','245','�߷�����','3','0');
INSERT INTO `espcms_city` VALUES ('2082','245','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2083','245','ׯ����','3','0');
INSERT INTO `espcms_city` VALUES ('2084','245','������','3','0');
INSERT INTO `espcms_city` VALUES ('2085','246','������','3','0');
INSERT INTO `espcms_city` VALUES ('2086','246','������','3','0');
INSERT INTO `espcms_city` VALUES ('2087','246','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2088','246','ǧɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2089','246','���','3','0');
INSERT INTO `espcms_city` VALUES ('2090','246','������','3','0');
INSERT INTO `espcms_city` VALUES ('2091','246','̨����','3','0');
INSERT INTO `espcms_city` VALUES ('2092','247','��Ϫ','3','0');
INSERT INTO `espcms_city` VALUES ('2093','247','ƽɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2094','247','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2095','247','Ϫ����','3','0');
INSERT INTO `espcms_city` VALUES ('2096','247','�Ϸ���','3','0');
INSERT INTO `espcms_city` VALUES ('2097','247','����','3','0');
INSERT INTO `espcms_city` VALUES ('2098','248','˫����','3','0');
INSERT INTO `espcms_city` VALUES ('2099','248','������','3','0');
INSERT INTO `espcms_city` VALUES ('2100','248','�����������ɹ���������','3','0');
INSERT INTO `espcms_city` VALUES ('2101','248','��Ʊ��','3','0');
INSERT INTO `espcms_city` VALUES ('2102','248','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('2103','248','������','3','0');
INSERT INTO `espcms_city` VALUES ('2104','248','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2105','249','������','3','0');
INSERT INTO `espcms_city` VALUES ('2106','249','Ԫ����','3','0');
INSERT INTO `espcms_city` VALUES ('2107','249','����','3','0');
INSERT INTO `espcms_city` VALUES ('2108','249','���','3','0');
INSERT INTO `espcms_city` VALUES ('2109','249','������','3','0');
INSERT INTO `espcms_city` VALUES ('2110','249','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2111','250','˳����','3','0');
INSERT INTO `espcms_city` VALUES ('2112','250','�¸���','3','0');
INSERT INTO `espcms_city` VALUES ('2113','250','������','3','0');
INSERT INTO `espcms_city` VALUES ('2114','250','������','3','0');
INSERT INTO `espcms_city` VALUES ('2115','250','��ԭ','3','0');
INSERT INTO `espcms_city` VALUES ('2116','250','�±�','3','0');
INSERT INTO `espcms_city` VALUES ('2117','250','��˳��','3','0');
INSERT INTO `espcms_city` VALUES ('2118','251','����','3','0');
INSERT INTO `espcms_city` VALUES ('2119','251','������','3','0');
INSERT INTO `espcms_city` VALUES ('2120','251','������','3','0');
INSERT INTO `espcms_city` VALUES ('2121','251','̫ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2122','251','�������','3','0');
INSERT INTO `espcms_city` VALUES ('2123','251','ϸ����','3','0');
INSERT INTO `espcms_city` VALUES ('2124','251','������','3','0');
INSERT INTO `espcms_city` VALUES ('2125','252','������','3','0');
INSERT INTO `espcms_city` VALUES ('2126','252','��Ʊ��','3','0');
INSERT INTO `espcms_city` VALUES ('2127','252','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2128','252','�˳���','3','0');
INSERT INTO `espcms_city` VALUES ('2129','252','������','3','0');
INSERT INTO `espcms_city` VALUES ('2130','252','������','3','0');
INSERT INTO `espcms_city` VALUES ('2131','253','̫����','3','0');
INSERT INTO `espcms_city` VALUES ('2132','253','������','3','0');
INSERT INTO `espcms_city` VALUES ('2133','253','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2134','253','�躣��','3','0');
INSERT INTO `espcms_city` VALUES ('2135','253','������','3','0');
INSERT INTO `espcms_city` VALUES ('2136','253','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2137','253','����','3','0');
INSERT INTO `espcms_city` VALUES ('2138','254','������','3','0');
INSERT INTO `espcms_city` VALUES ('2139','254','��ʥ��','3','0');
INSERT INTO `espcms_city` VALUES ('2140','254','��ΰ��','3','0');
INSERT INTO `espcms_city` VALUES ('2141','254','̫�Ӻ���','3','0');
INSERT INTO `espcms_city` VALUES ('2142','254','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2143','254','������','3','0');
INSERT INTO `espcms_city` VALUES ('2144','254','������','3','0');
INSERT INTO `espcms_city` VALUES ('2145','255','˫̨����','3','0');
INSERT INTO `espcms_city` VALUES ('2146','255','��¡̨��','3','0');
INSERT INTO `espcms_city` VALUES ('2147','255','������','3','0');
INSERT INTO `espcms_city` VALUES ('2148','255','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2149','256','������','3','0');
INSERT INTO `espcms_city` VALUES ('2150','256','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2151','256','����ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2152','256','��ԭ��','3','0');
INSERT INTO `espcms_city` VALUES ('2153','256','������','3','0');
INSERT INTO `espcms_city` VALUES ('2154','256','������','3','0');
INSERT INTO `espcms_city` VALUES ('2155','256','��ͼ��','3','0');
INSERT INTO `espcms_city` VALUES ('2156','257','վǰ��','3','0');
INSERT INTO `espcms_city` VALUES ('2157','257','������','3','0');
INSERT INTO `espcms_city` VALUES ('2158','257','����Ȧ��','3','0');
INSERT INTO `espcms_city` VALUES ('2159','257','�ϱ���','3','0');
INSERT INTO `espcms_city` VALUES ('2160','257','������','3','0');
INSERT INTO `espcms_city` VALUES ('2161','257','��ʯ����','3','0');
INSERT INTO `espcms_city` VALUES ('2162','258','������','3','0');
INSERT INTO `espcms_city` VALUES ('2163','258','��Ȫ��','3','0');
INSERT INTO `espcms_city` VALUES ('2164','258','�³���','3','0');
INSERT INTO `espcms_city` VALUES ('2165','258','������','3','0');
INSERT INTO `espcms_city` VALUES ('2166','258','��ˮ����','3','0');
INSERT INTO `espcms_city` VALUES ('2167','258','��Ĭ������','3','0');
INSERT INTO `espcms_city` VALUES ('2168','258','�п�����','3','0');
INSERT INTO `espcms_city` VALUES ('2169','258','���ָ����','3','0');
INSERT INTO `espcms_city` VALUES ('2170','258','�䴨��','3','0');
INSERT INTO `espcms_city` VALUES ('2171','259','����������','3','0');
INSERT INTO `espcms_city` VALUES ('2172','259','����������','3','0');
INSERT INTO `espcms_city` VALUES ('2173','259','�������','3','0');
INSERT INTO `espcms_city` VALUES ('2174','260','�ٺ���','3','0');
INSERT INTO `espcms_city` VALUES ('2175','260','��ԭ��','3','0');
INSERT INTO `espcms_city` VALUES ('2176','260','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2177','260','������ǰ��','3','0');
INSERT INTO `espcms_city` VALUES ('2178','260','����������','3','0');
INSERT INTO `espcms_city` VALUES ('2179','260','�����غ���','3','0');
INSERT INTO `espcms_city` VALUES ('2180','260','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2181','261','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2182','261','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2183','261','������','3','0');
INSERT INTO `espcms_city` VALUES ('2184','261','��ԭ��','3','0');
INSERT INTO `espcms_city` VALUES ('2185','261','ʯ����','3','0');
INSERT INTO `espcms_city` VALUES ('2186','261','���ƿ���','3','0');
INSERT INTO `espcms_city` VALUES ('2187','261','��Ĭ������','3','0');
INSERT INTO `espcms_city` VALUES ('2188','261','������','3','0');
INSERT INTO `espcms_city` VALUES ('2189','261','�����ï����������','3','0');
INSERT INTO `espcms_city` VALUES ('2190','262','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2191','262','Ԫ��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2192','262','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2193','262','��³�ƶ�����','3','0');
INSERT INTO `espcms_city` VALUES ('2194','262','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2195','262','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2196','262','������','3','0');
INSERT INTO `espcms_city` VALUES ('2197','262','��ʲ������','3','0');
INSERT INTO `espcms_city` VALUES ('2198','262','��ţ����','3','0');
INSERT INTO `espcms_city` VALUES ('2199','262','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2200','262','������','3','0');
INSERT INTO `espcms_city` VALUES ('2201','262','������','3','0');
INSERT INTO `espcms_city` VALUES ('2202','263','��ʤ��','3','0');
INSERT INTO `espcms_city` VALUES ('2203','263','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2204','263','׼�����','3','0');
INSERT INTO `espcms_city` VALUES ('2205','263','���п�ǰ��','3','0');
INSERT INTO `espcms_city` VALUES ('2206','263','���п���','3','0');
INSERT INTO `espcms_city` VALUES ('2207','263','������','3','0');
INSERT INTO `espcms_city` VALUES ('2208','263','������','3','0');
INSERT INTO `espcms_city` VALUES ('2209','263','���������','3','0');
INSERT INTO `espcms_city` VALUES ('2210','264','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2211','264','Ī������','3','0');
INSERT INTO `espcms_city` VALUES ('2212','264','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2213','264','����ʯ��','3','0');
INSERT INTO `espcms_city` VALUES ('2214','264','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2215','264','���������','3','0');
INSERT INTO `espcms_city` VALUES ('2216','264','������','3','0');
INSERT INTO `espcms_city` VALUES ('2217','264','������','3','0');
INSERT INTO `espcms_city` VALUES ('2218','264','���״�������','3','0');
INSERT INTO `espcms_city` VALUES ('2219','264','���¿���������','3','0');
INSERT INTO `espcms_city` VALUES ('2220','264','�°Ͷ�����','3','0');
INSERT INTO `espcms_city` VALUES ('2221','264','�°Ͷ�������','3','0');
INSERT INTO `espcms_city` VALUES ('2222','264','�°Ͷ�������','3','0');
INSERT INTO `espcms_city` VALUES ('2223','265','�ƶ�����','3','0');
INSERT INTO `espcms_city` VALUES ('2224','265','���ֹ�����','3','0');
INSERT INTO `espcms_city` VALUES ('2225','265','�ƶ�����������','3','0');
INSERT INTO `espcms_city` VALUES ('2226','265','�ƶ����������','3','0');
INSERT INTO `espcms_city` VALUES ('2227','265','��³��','3','0');
INSERT INTO `espcms_city` VALUES ('2228','265','������','3','0');
INSERT INTO `espcms_city` VALUES ('2229','265','������','3','0');
INSERT INTO `espcms_city` VALUES ('2230','265','��³����','3','0');
INSERT INTO `espcms_city` VALUES ('2231','266','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2232','266','�ڴ���','3','0');
INSERT INTO `espcms_city` VALUES ('2233','266','������','3','0');
INSERT INTO `espcms_city` VALUES ('2234','267','������','3','0');
INSERT INTO `espcms_city` VALUES ('2235','267','������','3','0');
INSERT INTO `espcms_city` VALUES ('2236','267','������','3','0');
INSERT INTO `espcms_city` VALUES ('2237','267','׿����','3','0');
INSERT INTO `espcms_city` VALUES ('2238','267','�̶���','3','0');
INSERT INTO `espcms_city` VALUES ('2239','267','�˺���','3','0');
INSERT INTO `espcms_city` VALUES ('2240','267','������','3','0');
INSERT INTO `espcms_city` VALUES ('2241','267','���������ǰ��','3','0');
INSERT INTO `espcms_city` VALUES ('2242','267','�������������','3','0');
INSERT INTO `espcms_city` VALUES ('2243','267','������������','3','0');
INSERT INTO `espcms_city` VALUES ('2244','267','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2245','268','����������','3','0');
INSERT INTO `espcms_city` VALUES ('2246','268','���ֺ�����','3','0');
INSERT INTO `espcms_city` VALUES ('2247','268','���͸���','3','0');
INSERT INTO `espcms_city` VALUES ('2248','268','����������','3','0');
INSERT INTO `espcms_city` VALUES ('2249','268','����������','3','0');
INSERT INTO `espcms_city` VALUES ('2250','268','������������','3','0');
INSERT INTO `espcms_city` VALUES ('2251','268','������������','3','0');
INSERT INTO `espcms_city` VALUES ('2252','268','̫������','3','0');
INSERT INTO `espcms_city` VALUES ('2253','268','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2254','268','�������','3','0');
INSERT INTO `espcms_city` VALUES ('2255','268','������','3','0');
INSERT INTO `espcms_city` VALUES ('2256','268','������','3','0');
INSERT INTO `espcms_city` VALUES ('2257','269','����������','3','0');
INSERT INTO `espcms_city` VALUES ('2258','269','����ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2259','269','�ƶ�������ǰ��','3','0');
INSERT INTO `espcms_city` VALUES ('2260','269','�ƶ�����������','3','0');
INSERT INTO `espcms_city` VALUES ('2261','269','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2262','269','ͻȪ��','3','0');
INSERT INTO `espcms_city` VALUES ('2263','270','������','3','0');
INSERT INTO `espcms_city` VALUES ('2264','270','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2265','270','������','3','0');
INSERT INTO `espcms_city` VALUES ('2266','270','������','3','0');
INSERT INTO `espcms_city` VALUES ('2267','270','������','3','0');
INSERT INTO `espcms_city` VALUES ('2268','270','������','3','0');
INSERT INTO `espcms_city` VALUES ('2269','271','ԭ����','3','0');
INSERT INTO `espcms_city` VALUES ('2270','271','��ԭ��','3','0');
INSERT INTO `espcms_city` VALUES ('2271','271','������','3','0');
INSERT INTO `espcms_city` VALUES ('2272','271','¡����','3','0');
INSERT INTO `espcms_city` VALUES ('2273','271','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('2274','271','������','3','0');
INSERT INTO `espcms_city` VALUES ('2275','272','��ũ��','3','0');
INSERT INTO `espcms_city` VALUES ('2276','272','�������','3','0');
INSERT INTO `espcms_city` VALUES ('2277','272','��ũ��','3','0');
INSERT INTO `espcms_city` VALUES ('2278','272','������','3','0');
INSERT INTO `espcms_city` VALUES ('2279','272','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('2280','273','��ͨ��','3','0');
INSERT INTO `espcms_city` VALUES ('2281','273','������','3','0');
INSERT INTO `espcms_city` VALUES ('2282','273','��ͭϿ��','3','0');
INSERT INTO `espcms_city` VALUES ('2283','273','������','3','0');
INSERT INTO `espcms_city` VALUES ('2284','273','�γ���','3','0');
INSERT INTO `espcms_city` VALUES ('2285','273','ͬ����','3','0');
INSERT INTO `espcms_city` VALUES ('2286','274','ɳ��ͷ��','3','0');
INSERT INTO `espcms_city` VALUES ('2287','274','��ԭ��','3','0');
INSERT INTO `espcms_city` VALUES ('2288','274','������','3','0');
INSERT INTO `espcms_city` VALUES ('2289','275','������','3','0');
INSERT INTO `espcms_city` VALUES ('2290','275','�Ƕ���','3','0');
INSERT INTO `espcms_city` VALUES ('2291','275','������','3','0');
INSERT INTO `espcms_city` VALUES ('2292','275','�Ǳ���','3','0');
INSERT INTO `espcms_city` VALUES ('2293','275','������','3','0');
INSERT INTO `espcms_city` VALUES ('2294','275','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('2295','275','��ͨ','3','0');
INSERT INTO `espcms_city` VALUES ('2296','276','������','3','0');
INSERT INTO `espcms_city` VALUES ('2297','276','������','3','0');
INSERT INTO `espcms_city` VALUES ('2298','276','�ʵ���','3','0');
INSERT INTO `espcms_city` VALUES ('2299','276','������','3','0');
INSERT INTO `espcms_city` VALUES ('2300','276','������','3','0');
INSERT INTO `espcms_city` VALUES ('2301','276','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2302','277','������','3','0');
INSERT INTO `espcms_city` VALUES ('2303','277','������','3','0');
INSERT INTO `espcms_city` VALUES ('2304','277','�ղ���','3','0');
INSERT INTO `espcms_city` VALUES ('2305','277','��Դ','3','0');
INSERT INTO `espcms_city` VALUES ('2306','278','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('2307','278','�ֶ���','3','0');
INSERT INTO `espcms_city` VALUES ('2308','278','���','3','0');
INSERT INTO `espcms_city` VALUES ('2309','278','����','3','0');
INSERT INTO `espcms_city` VALUES ('2310','278','��¡','3','0');
INSERT INTO `espcms_city` VALUES ('2311','278','ѭ��','3','0');
INSERT INTO `espcms_city` VALUES ('2312','279','������','3','0');
INSERT INTO `espcms_city` VALUES ('2313','279','ͬ����','3','0');
INSERT INTO `espcms_city` VALUES ('2314','279','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2315','279','�˺���','3','0');
INSERT INTO `espcms_city` VALUES ('2316','279','������','3','0');
INSERT INTO `espcms_city` VALUES ('2317','280','�������','3','0');
INSERT INTO `espcms_city` VALUES ('2318','280','���ľ��','3','0');
INSERT INTO `espcms_city` VALUES ('2319','280','������','3','0');
INSERT INTO `espcms_city` VALUES ('2320','280','������','3','0');
INSERT INTO `espcms_city` VALUES ('2321','280','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2322','281','ͬ����','3','0');
INSERT INTO `espcms_city` VALUES ('2323','281','������','3','0');
INSERT INTO `espcms_city` VALUES ('2324','281','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2325','281','�����ɹ���������','3','0');
INSERT INTO `espcms_city` VALUES ('2326','282','������','3','0');
INSERT INTO `espcms_city` VALUES ('2327','282','�Ӷ���','3','0');
INSERT INTO `espcms_city` VALUES ('2328','282','�ƶ���','3','0');
INSERT INTO `espcms_city` VALUES ('2329','282','�ζ���','3','0');
INSERT INTO `espcms_city` VALUES ('2330','282','��ǫ��','3','0');
INSERT INTO `espcms_city` VALUES ('2331','282','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2332','283','������','3','0');
INSERT INTO `espcms_city` VALUES ('2333','283','������','3','0');
INSERT INTO `espcms_city` VALUES ('2334','283','������','3','0');
INSERT INTO `espcms_city` VALUES ('2335','283','������','3','0');
INSERT INTO `espcms_city` VALUES ('2336','283','������','3','0');
INSERT INTO `espcms_city` VALUES ('2337','283','������','3','0');
INSERT INTO `espcms_city` VALUES ('2338','283','������','3','0');
INSERT INTO `espcms_city` VALUES ('2339','283','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('2340','283','������','3','0');
INSERT INTO `espcms_city` VALUES ('2341','283','�̺���','3','0');
INSERT INTO `espcms_city` VALUES ('2342','284','������','3','0');
INSERT INTO `espcms_city` VALUES ('2343','284','�б���','3','0');
INSERT INTO `espcms_city` VALUES ('2344','284','������','3','0');
INSERT INTO `espcms_city` VALUES ('2345','284','�ķ���','3','0');
INSERT INTO `espcms_city` VALUES ('2346','284','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2347','284','�Ƶ���','3','0');
INSERT INTO `espcms_city` VALUES ('2348','284','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2349','284','������','3','0');
INSERT INTO `espcms_city` VALUES ('2350','284','��ī��','3','0');
INSERT INTO `espcms_city` VALUES ('2351','284','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('2352','284','������','3','0');
INSERT INTO `espcms_city` VALUES ('2353','284','������','3','0');
INSERT INTO `espcms_city` VALUES ('2354','285','������','3','0');
INSERT INTO `espcms_city` VALUES ('2355','285','������','3','0');
INSERT INTO `espcms_city` VALUES ('2356','285','������','3','0');
INSERT INTO `espcms_city` VALUES ('2357','285','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2358','285','մ����','3','0');
INSERT INTO `espcms_city` VALUES ('2359','285','������','3','0');
INSERT INTO `espcms_city` VALUES ('2360','285','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2361','286','�³���','3','0');
INSERT INTO `espcms_city` VALUES ('2362','286','����','3','0');
INSERT INTO `espcms_city` VALUES ('2363','286','������','3','0');
INSERT INTO `espcms_city` VALUES ('2364','286','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2365','286','������','3','0');
INSERT INTO `espcms_city` VALUES ('2366','286','������','3','0');
INSERT INTO `espcms_city` VALUES ('2367','286','������','3','0');
INSERT INTO `espcms_city` VALUES ('2368','286','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2369','286','ƽԭ��','3','0');
INSERT INTO `espcms_city` VALUES ('2370','286','�Ľ���','3','0');
INSERT INTO `espcms_city` VALUES ('2371','286','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2372','287','��Ӫ��','3','0');
INSERT INTO `espcms_city` VALUES ('2373','287','�ӿ���','3','0');
INSERT INTO `espcms_city` VALUES ('2374','287','������','3','0');
INSERT INTO `espcms_city` VALUES ('2375','287','������','3','0');
INSERT INTO `espcms_city` VALUES ('2376','287','������','3','0');
INSERT INTO `espcms_city` VALUES ('2377','288','ĵ����','3','0');
INSERT INTO `espcms_city` VALUES ('2378','288','����','3','0');
INSERT INTO `espcms_city` VALUES ('2379','288','����','3','0');
INSERT INTO `espcms_city` VALUES ('2380','288','������','3','0');
INSERT INTO `espcms_city` VALUES ('2381','288','��Ұ��','3','0');
INSERT INTO `espcms_city` VALUES ('2382','288','۩����','3','0');
INSERT INTO `espcms_city` VALUES ('2383','288','۲����','3','0');
INSERT INTO `espcms_city` VALUES ('2384','288','������','3','0');
INSERT INTO `espcms_city` VALUES ('2385','288','������','3','0');
INSERT INTO `espcms_city` VALUES ('2386','289','������','3','0');
INSERT INTO `espcms_city` VALUES ('2387','289','�γ���','3','0');
INSERT INTO `espcms_city` VALUES ('2388','289','������','3','0');
INSERT INTO `espcms_city` VALUES ('2389','289','������','3','0');
INSERT INTO `espcms_city` VALUES ('2390','289','�޳���','3','0');
INSERT INTO `espcms_city` VALUES ('2391','289','΢ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2392','289','��̨��','3','0');
INSERT INTO `espcms_city` VALUES ('2393','289','������','3','0');
INSERT INTO `espcms_city` VALUES ('2394','289','������','3','0');
INSERT INTO `espcms_city` VALUES ('2395','289','������','3','0');
INSERT INTO `espcms_city` VALUES ('2396','289','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('2397','289','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2398','290','������','3','0');
INSERT INTO `espcms_city` VALUES ('2399','290','�ֳ���','3','0');
INSERT INTO `espcms_city` VALUES ('2400','291','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2401','291','������','3','0');
INSERT INTO `espcms_city` VALUES ('2402','291','������','3','0');
INSERT INTO `espcms_city` VALUES ('2403','291','ݷ��','3','0');
INSERT INTO `espcms_city` VALUES ('2404','291','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2405','291','������','3','0');
INSERT INTO `espcms_city` VALUES ('2406','291','����','3','0');
INSERT INTO `espcms_city` VALUES ('2407','291','������','3','0');
INSERT INTO `espcms_city` VALUES ('2408','292','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2409','292','��ׯ��','3','0');
INSERT INTO `espcms_city` VALUES ('2410','292','�Ӷ���','3','0');
INSERT INTO `espcms_city` VALUES ('2411','292','������','3','0');
INSERT INTO `espcms_city` VALUES ('2412','292','۰����','3','0');
INSERT INTO `espcms_city` VALUES ('2413','292','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('2414','292','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2415','292','����','3','0');
INSERT INTO `espcms_city` VALUES ('2416','292','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('2417','292','������','3','0');
INSERT INTO `espcms_city` VALUES ('2418','292','������','3','0');
INSERT INTO `espcms_city` VALUES ('2419','292','������','3','0');
INSERT INTO `espcms_city` VALUES ('2420','293','������','3','0');
INSERT INTO `espcms_city` VALUES ('2421','293','�ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2422','293','������','3','0');
INSERT INTO `espcms_city` VALUES ('2423','293','����','3','0');
INSERT INTO `espcms_city` VALUES ('2424','294','̩ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2425','294','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2426','294','��̩��','3','0');
INSERT INTO `espcms_city` VALUES ('2427','294','�ʳ���','3','0');
INSERT INTO `espcms_city` VALUES ('2428','294','������','3','0');
INSERT INTO `espcms_city` VALUES ('2429','294','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2430','295','�ٳ���','3','0');
INSERT INTO `espcms_city` VALUES ('2431','295','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2432','295','������','3','0');
INSERT INTO `espcms_city` VALUES ('2433','295','�ĵ���','3','0');
INSERT INTO `espcms_city` VALUES ('2434','296','Ϋ����','3','0');
INSERT INTO `espcms_city` VALUES ('2435','296','��ͤ��','3','0');
INSERT INTO `espcms_city` VALUES ('2436','296','������','3','0');
INSERT INTO `espcms_city` VALUES ('2437','296','������','3','0');
INSERT INTO `espcms_city` VALUES ('2438','296','������','3','0');
INSERT INTO `espcms_city` VALUES ('2439','296','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2440','296','�ٹ���','3','0');
INSERT INTO `espcms_city` VALUES ('2441','296','������','3','0');
INSERT INTO `espcms_city` VALUES ('2442','296','������','3','0');
INSERT INTO `espcms_city` VALUES ('2443','296','������','3','0');
INSERT INTO `espcms_city` VALUES ('2444','296','������','3','0');
INSERT INTO `espcms_city` VALUES ('2445','296','������','3','0');
INSERT INTO `espcms_city` VALUES ('2446','297','֥���','3','0');
INSERT INTO `espcms_city` VALUES ('2447','297','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2448','297','Ĳƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2449','297','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2450','297','������','3','0');
INSERT INTO `espcms_city` VALUES ('2451','297','������','3','0');
INSERT INTO `espcms_city` VALUES ('2452','297','������','3','0');
INSERT INTO `espcms_city` VALUES ('2453','297','������','3','0');
INSERT INTO `espcms_city` VALUES ('2454','297','������','3','0');
INSERT INTO `espcms_city` VALUES ('2455','297','��Զ��','3','0');
INSERT INTO `espcms_city` VALUES ('2456','297','��ϼ��','3','0');
INSERT INTO `espcms_city` VALUES ('2457','297','������','3','0');
INSERT INTO `espcms_city` VALUES ('2458','297','������','3','0');
INSERT INTO `espcms_city` VALUES ('2459','298','������','3','0');
INSERT INTO `espcms_city` VALUES ('2460','298','ɽͤ��','3','0');
INSERT INTO `espcms_city` VALUES ('2461','298','ỳ���','3','0');
INSERT INTO `espcms_city` VALUES ('2462','298','̨��ׯ��','3','0');
INSERT INTO `espcms_city` VALUES ('2463','298','Ѧ����','3','0');
INSERT INTO `espcms_city` VALUES ('2464','298','������','3','0');
INSERT INTO `espcms_city` VALUES ('2465','299','�ŵ���','3','0');
INSERT INTO `espcms_city` VALUES ('2466','299','������','3','0');
INSERT INTO `espcms_city` VALUES ('2467','299','�ʹ���','3','0');
INSERT INTO `espcms_city` VALUES ('2468','299','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2469','299','�ܴ���','3','0');
INSERT INTO `espcms_city` VALUES ('2470','299','��̨��','3','0');
INSERT INTO `espcms_city` VALUES ('2471','299','������','3','0');
INSERT INTO `espcms_city` VALUES ('2472','299','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('2473','300','�ӻ�����','3','0');
INSERT INTO `espcms_city` VALUES ('2474','300','С����','3','0');
INSERT INTO `espcms_city` VALUES ('2475','300','ӭ����','3','0');
INSERT INTO `espcms_city` VALUES ('2476','300','���ƺ��','3','0');
INSERT INTO `espcms_city` VALUES ('2477','300','�������','3','0');
INSERT INTO `espcms_city` VALUES ('2478','300','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('2479','300','���¿�����','3','0');
INSERT INTO `espcms_city` VALUES ('2480','300','��Ӫ���ÿ�����','3','0');
INSERT INTO `espcms_city` VALUES ('2481','300','���ü���������','3','0');
INSERT INTO `espcms_city` VALUES ('2482','300','������','3','0');
INSERT INTO `espcms_city` VALUES ('2483','300','������','3','0');
INSERT INTO `espcms_city` VALUES ('2484','300','¦����','3','0');
INSERT INTO `espcms_city` VALUES ('2485','300','�Ž���','3','0');
INSERT INTO `espcms_city` VALUES ('2486','301','����','3','0');
INSERT INTO `espcms_city` VALUES ('2487','301','����','3','0');
INSERT INTO `espcms_city` VALUES ('2488','301','����','3','0');
INSERT INTO `espcms_city` VALUES ('2489','301','º����','3','0');
INSERT INTO `espcms_city` VALUES ('2490','301','������','3','0');
INSERT INTO `espcms_city` VALUES ('2491','301','��ԫ��','3','0');
INSERT INTO `espcms_city` VALUES ('2492','301','������','3','0');
INSERT INTO `espcms_city` VALUES ('2493','301','ƽ˳��','3','0');
INSERT INTO `espcms_city` VALUES ('2494','301','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2495','301','������','3','0');
INSERT INTO `espcms_city` VALUES ('2496','301','������','3','0');
INSERT INTO `espcms_city` VALUES ('2497','301','������','3','0');
INSERT INTO `espcms_city` VALUES ('2498','301','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('2499','302','����','3','0');
INSERT INTO `espcms_city` VALUES ('2500','302','����','3','0');
INSERT INTO `espcms_city` VALUES ('2501','302','�Ͻ���','3','0');
INSERT INTO `espcms_city` VALUES ('2502','302','������','3','0');
INSERT INTO `espcms_city` VALUES ('2503','302','������','3','0');
INSERT INTO `espcms_city` VALUES ('2504','302','������','3','0');
INSERT INTO `espcms_city` VALUES ('2505','302','������','3','0');
INSERT INTO `espcms_city` VALUES ('2506','302','������','3','0');
INSERT INTO `espcms_city` VALUES ('2507','302','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('2508','302','������','3','0');
INSERT INTO `espcms_city` VALUES ('2509','302','��ͬ��','3','0');
INSERT INTO `espcms_city` VALUES ('2510','303','����','3','0');
INSERT INTO `espcms_city` VALUES ('2511','303','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2512','303','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('2513','303','������','3','0');
INSERT INTO `espcms_city` VALUES ('2514','303','�괨��','3','0');
INSERT INTO `espcms_city` VALUES ('2515','303','������','3','0');
INSERT INTO `espcms_city` VALUES ('2516','304','�ܴ���','3','0');
INSERT INTO `espcms_city` VALUES ('2517','304','������','3','0');
INSERT INTO `espcms_city` VALUES ('2518','304','������','3','0');
INSERT INTO `espcms_city` VALUES ('2519','304','��Ȩ��','3','0');
INSERT INTO `espcms_city` VALUES ('2520','304','��˳��','3','0');
INSERT INTO `espcms_city` VALUES ('2521','304','������','3','0');
INSERT INTO `espcms_city` VALUES ('2522','304','������','3','0');
INSERT INTO `espcms_city` VALUES ('2523','304','̫����','3','0');
INSERT INTO `espcms_city` VALUES ('2524','304','����','3','0');
INSERT INTO `espcms_city` VALUES ('2525','304','ƽң��','3','0');
INSERT INTO `espcms_city` VALUES ('2526','304','��ʯ��','3','0');
INSERT INTO `espcms_city` VALUES ('2527','305','Ң����','3','0');
INSERT INTO `espcms_city` VALUES ('2528','305','������','3','0');
INSERT INTO `espcms_city` VALUES ('2529','305','������','3','0');
INSERT INTO `espcms_city` VALUES ('2530','305','������','3','0');
INSERT INTO `espcms_city` VALUES ('2531','305','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2532','305','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2533','305','�鶴��','3','0');
INSERT INTO `espcms_city` VALUES ('2534','305','����','3','0');
INSERT INTO `espcms_city` VALUES ('2535','305','������','3','0');
INSERT INTO `espcms_city` VALUES ('2536','305','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2537','305','����','3','0');
INSERT INTO `espcms_city` VALUES ('2538','305','������','3','0');
INSERT INTO `espcms_city` VALUES ('2539','305','������','3','0');
INSERT INTO `espcms_city` VALUES ('2540','305','����','3','0');
INSERT INTO `espcms_city` VALUES ('2541','305','������','3','0');
INSERT INTO `espcms_city` VALUES ('2542','305','����','3','0');
INSERT INTO `espcms_city` VALUES ('2543','305','������','3','0');
INSERT INTO `espcms_city` VALUES ('2544','306','��ʯ��','3','0');
INSERT INTO `espcms_city` VALUES ('2545','306','��ʯ��','3','0');
INSERT INTO `espcms_city` VALUES ('2546','306','Т����','3','0');
INSERT INTO `espcms_city` VALUES ('2547','306','������','3','0');
INSERT INTO `espcms_city` VALUES ('2548','306','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('2549','306','������','3','0');
INSERT INTO `espcms_city` VALUES ('2550','306','����','3','0');
INSERT INTO `espcms_city` VALUES ('2551','306','����','3','0');
INSERT INTO `espcms_city` VALUES ('2552','306','������','3','0');
INSERT INTO `espcms_city` VALUES ('2553','306','ʯ¥��','3','0');
INSERT INTO `espcms_city` VALUES ('2554','306','���','3','0');
INSERT INTO `espcms_city` VALUES ('2555','306','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2556','306','������','3','0');
INSERT INTO `espcms_city` VALUES ('2557','306','������','3','0');
INSERT INTO `espcms_city` VALUES ('2558','307','˷����','3','0');
INSERT INTO `espcms_city` VALUES ('2559','307','ƽ³��','3','0');
INSERT INTO `espcms_city` VALUES ('2560','307','ɽ����','3','0');
INSERT INTO `espcms_city` VALUES ('2561','307','Ӧ��','3','0');
INSERT INTO `espcms_city` VALUES ('2562','307','������','3','0');
INSERT INTO `espcms_city` VALUES ('2563','307','������','3','0');
INSERT INTO `espcms_city` VALUES ('2564','308','�ø���','3','0');
INSERT INTO `espcms_city` VALUES ('2565','308','ԭƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2566','308','������','3','0');
INSERT INTO `espcms_city` VALUES ('2567','308','��̨��','3','0');
INSERT INTO `espcms_city` VALUES ('2568','308','����','3','0');
INSERT INTO `espcms_city` VALUES ('2569','308','������','3','0');
INSERT INTO `espcms_city` VALUES ('2570','308','������','3','0');
INSERT INTO `espcms_city` VALUES ('2571','308','������','3','0');
INSERT INTO `espcms_city` VALUES ('2572','308','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2573','308','��կ��','3','0');
INSERT INTO `espcms_city` VALUES ('2574','308','����','3','0');
INSERT INTO `espcms_city` VALUES ('2575','308','������','3','0');
INSERT INTO `espcms_city` VALUES ('2576','308','������','3','0');
INSERT INTO `espcms_city` VALUES ('2577','308','ƫ����','3','0');
INSERT INTO `espcms_city` VALUES ('2578','309','����','3','0');
INSERT INTO `espcms_city` VALUES ('2579','309','����','3','0');
INSERT INTO `espcms_city` VALUES ('2580','309','����','3','0');
INSERT INTO `espcms_city` VALUES ('2581','309','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('2582','309','����','3','0');
INSERT INTO `espcms_city` VALUES ('2583','310','�κ���','3','0');
INSERT INTO `espcms_city` VALUES ('2584','310','������','3','0');
INSERT INTO `espcms_city` VALUES ('2585','310','�ӽ���','3','0');
INSERT INTO `espcms_city` VALUES ('2586','310','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2587','310','������','3','0');
INSERT INTO `espcms_city` VALUES ('2588','310','��ϲ��','3','0');
INSERT INTO `espcms_city` VALUES ('2589','310','�ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2590','310','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2591','310','���','3','0');
INSERT INTO `espcms_city` VALUES ('2592','310','ԫ����','3','0');
INSERT INTO `espcms_city` VALUES ('2593','310','����','3','0');
INSERT INTO `espcms_city` VALUES ('2594','310','ƽ½��','3','0');
INSERT INTO `espcms_city` VALUES ('2595','310','�ǳ���','3','0');
INSERT INTO `espcms_city` VALUES ('2596','311','������','3','0');
INSERT INTO `espcms_city` VALUES ('2597','311','�³���','3','0');
INSERT INTO `espcms_city` VALUES ('2598','311','������','3','0');
INSERT INTO `espcms_city` VALUES ('2599','311','������','3','0');
INSERT INTO `espcms_city` VALUES ('2600','311','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2601','311','δ����','3','0');
INSERT INTO `espcms_city` VALUES ('2602','311','������','3','0');
INSERT INTO `espcms_city` VALUES ('2603','311','������','3','0');
INSERT INTO `espcms_city` VALUES ('2604','311','������','3','0');
INSERT INTO `espcms_city` VALUES ('2605','311','������','3','0');
INSERT INTO `espcms_city` VALUES ('2606','311','������','3','0');
INSERT INTO `espcms_city` VALUES ('2607','311','����','3','0');
INSERT INTO `espcms_city` VALUES ('2608','311','������','3','0');
INSERT INTO `espcms_city` VALUES ('2609','312','������','3','0');
INSERT INTO `espcms_city` VALUES ('2610','312','������','3','0');
INSERT INTO `espcms_city` VALUES ('2611','312','ʯȪ��','3','0');
INSERT INTO `espcms_city` VALUES ('2612','312','������','3','0');
INSERT INTO `espcms_city` VALUES ('2613','312','������','3','0');
INSERT INTO `espcms_city` VALUES ('2614','312','᰸���','3','0');
INSERT INTO `espcms_city` VALUES ('2615','312','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('2616','312','��ƺ��','3','0');
INSERT INTO `espcms_city` VALUES ('2617','312','Ѯ����','3','0');
INSERT INTO `espcms_city` VALUES ('2618','312','�׺���','3','0');
INSERT INTO `espcms_city` VALUES ('2619','313','�²���','3','0');
INSERT INTO `espcms_city` VALUES ('2620','313','μ����','3','0');
INSERT INTO `espcms_city` VALUES ('2621','313','��̨��','3','0');
INSERT INTO `espcms_city` VALUES ('2622','313','������','3','0');
INSERT INTO `espcms_city` VALUES ('2623','313','�ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2624','313','������','3','0');
INSERT INTO `espcms_city` VALUES ('2625','313','ü��','3','0');
INSERT INTO `espcms_city` VALUES ('2626','313','¤��','3','0');
INSERT INTO `espcms_city` VALUES ('2627','313','ǧ����','3','0');
INSERT INTO `espcms_city` VALUES ('2628','313','������','3','0');
INSERT INTO `espcms_city` VALUES ('2629','313','����','3','0');
INSERT INTO `espcms_city` VALUES ('2630','313','̫����','3','0');
INSERT INTO `espcms_city` VALUES ('2631','314','��̨��','3','0');
INSERT INTO `espcms_city` VALUES ('2632','314','��֣��','3','0');
INSERT INTO `espcms_city` VALUES ('2633','314','�ǹ���','3','0');
INSERT INTO `espcms_city` VALUES ('2634','314','����','3','0');
INSERT INTO `espcms_city` VALUES ('2635','314','������','3','0');
INSERT INTO `espcms_city` VALUES ('2636','314','����','3','0');
INSERT INTO `espcms_city` VALUES ('2637','314','��ǿ��','3','0');
INSERT INTO `espcms_city` VALUES ('2638','314','������','3','0');
INSERT INTO `espcms_city` VALUES ('2639','314','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2640','314','������','3','0');
INSERT INTO `espcms_city` VALUES ('2641','314','��ƺ��','3','0');
INSERT INTO `espcms_city` VALUES ('2642','315','������','3','0');
INSERT INTO `espcms_city` VALUES ('2643','315','������','3','0');
INSERT INTO `espcms_city` VALUES ('2644','315','������','3','0');
INSERT INTO `espcms_city` VALUES ('2645','315','������','3','0');
INSERT INTO `espcms_city` VALUES ('2646','315','ɽ����','3','0');
INSERT INTO `espcms_city` VALUES ('2647','315','����','3','0');
INSERT INTO `espcms_city` VALUES ('2648','315','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('2649','316','ҫ����','3','0');
INSERT INTO `espcms_city` VALUES ('2650','316','������','3','0');
INSERT INTO `espcms_city` VALUES ('2651','316','ӡ̨��','3','0');
INSERT INTO `espcms_city` VALUES ('2652','316','�˾���','3','0');
INSERT INTO `espcms_city` VALUES ('2653','317','��μ��','3','0');
INSERT INTO `espcms_city` VALUES ('2654','317','������','3','0');
INSERT INTO `espcms_city` VALUES ('2655','317','������','3','0');
INSERT INTO `espcms_city` VALUES ('2656','317','����','3','0');
INSERT INTO `espcms_city` VALUES ('2657','317','������','3','0');
INSERT INTO `espcms_city` VALUES ('2658','317','������','3','0');
INSERT INTO `espcms_city` VALUES ('2659','317','������','3','0');
INSERT INTO `espcms_city` VALUES ('2660','317','�γ���','3','0');
INSERT INTO `espcms_city` VALUES ('2661','317','�ѳ���','3','0');
INSERT INTO `espcms_city` VALUES ('2662','317','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('2663','317','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2664','318','�ض���','3','0');
INSERT INTO `espcms_city` VALUES ('2665','318','μ����','3','0');
INSERT INTO `espcms_city` VALUES ('2666','318','������','3','0');
INSERT INTO `espcms_city` VALUES ('2667','318','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2668','318','��ԭ��','3','0');
INSERT INTO `espcms_city` VALUES ('2669','318','������','3','0');
INSERT INTO `espcms_city` VALUES ('2670','318','Ǭ��','3','0');
INSERT INTO `espcms_city` VALUES ('2671','318','��Ȫ��','3','0');
INSERT INTO `espcms_city` VALUES ('2672','318','������','3','0');
INSERT INTO `espcms_city` VALUES ('2673','318','����','3','0');
INSERT INTO `espcms_city` VALUES ('2674','318','������','3','0');
INSERT INTO `espcms_city` VALUES ('2675','318','Ѯ����','3','0');
INSERT INTO `espcms_city` VALUES ('2676','318','������','3','0');
INSERT INTO `espcms_city` VALUES ('2677','318','�书��','3','0');
INSERT INTO `espcms_city` VALUES ('2678','319','������','3','0');
INSERT INTO `espcms_city` VALUES ('2679','319','������','3','0');
INSERT INTO `espcms_city` VALUES ('2680','319','�ӳ���','3','0');
INSERT INTO `espcms_city` VALUES ('2681','319','�Ӵ���','3','0');
INSERT INTO `espcms_city` VALUES ('2682','319','�ӳ���','3','0');
INSERT INTO `espcms_city` VALUES ('2683','319','������','3','0');
INSERT INTO `espcms_city` VALUES ('2684','319','־����','3','0');
INSERT INTO `espcms_city` VALUES ('2685','319','��Ȫ��','3','0');
INSERT INTO `espcms_city` VALUES ('2686','319','����','3','0');
INSERT INTO `espcms_city` VALUES ('2687','319','�崨��','3','0');
INSERT INTO `espcms_city` VALUES ('2688','319','�˴���','3','0');
INSERT INTO `espcms_city` VALUES ('2689','319','������','3','0');
INSERT INTO `espcms_city` VALUES ('2690','319','������','3','0');
INSERT INTO `espcms_city` VALUES ('2691','320','������','3','0');
INSERT INTO `espcms_city` VALUES ('2692','320','��ľ��','3','0');
INSERT INTO `espcms_city` VALUES ('2693','320','������','3','0');
INSERT INTO `espcms_city` VALUES ('2694','320','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2695','320','������','3','0');
INSERT INTO `espcms_city` VALUES ('2696','320','������','3','0');
INSERT INTO `espcms_city` VALUES ('2697','320','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2698','320','��֬��','3','0');
INSERT INTO `espcms_city` VALUES ('2699','320','����','3','0');
INSERT INTO `espcms_city` VALUES ('2700','320','�Ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2701','320','�彧��','3','0');
INSERT INTO `espcms_city` VALUES ('2702','320','������','3','0');
INSERT INTO `espcms_city` VALUES ('2703','321','������','3','0');
INSERT INTO `espcms_city` VALUES ('2704','321','բ����','3','0');
INSERT INTO `espcms_city` VALUES ('2705','321','������','3','0');
INSERT INTO `espcms_city` VALUES ('2706','321','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2707','321','�ֶ�����','3','0');
INSERT INTO `espcms_city` VALUES ('2708','321','������','3','0');
INSERT INTO `espcms_city` VALUES ('2709','321','������','3','0');
INSERT INTO `espcms_city` VALUES ('2710','321','������','3','0');
INSERT INTO `espcms_city` VALUES ('2711','321','¬����','3','0');
INSERT INTO `espcms_city` VALUES ('2712','321','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2713','321','������','3','0');
INSERT INTO `espcms_city` VALUES ('2714','321','�ϻ���','3','0');
INSERT INTO `espcms_city` VALUES ('2715','321','�ɽ���','3','0');
INSERT INTO `espcms_city` VALUES ('2716','321','�ζ���','3','0');
INSERT INTO `espcms_city` VALUES ('2717','321','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2718','321','������','3','0');
INSERT INTO `espcms_city` VALUES ('2719','321','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2720','321','������','3','0');
INSERT INTO `espcms_city` VALUES ('2721','321','������','3','0');
INSERT INTO `espcms_city` VALUES ('2722','322','������','3','0');
INSERT INTO `espcms_city` VALUES ('2723','322','������','3','0');
INSERT INTO `espcms_city` VALUES ('2724','322','��ţ��','3','0');
INSERT INTO `espcms_city` VALUES ('2725','322','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2726','322','�ɻ���','3','0');
INSERT INTO `espcms_city` VALUES ('2727','322','��Ȫ����','3','0');
INSERT INTO `espcms_city` VALUES ('2728','322','��׽���','3','0');
INSERT INTO `espcms_city` VALUES ('2729','322','�¶���','3','0');
INSERT INTO `espcms_city` VALUES ('2730','322','�½���','3','0');
INSERT INTO `espcms_city` VALUES ('2731','322','������','3','0');
INSERT INTO `espcms_city` VALUES ('2732','322','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2733','322','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2734','322','������','3','0');
INSERT INTO `espcms_city` VALUES ('2735','322','������','3','0');
INSERT INTO `espcms_city` VALUES ('2736','322','������','3','0');
INSERT INTO `espcms_city` VALUES ('2737','322','������','3','0');
INSERT INTO `espcms_city` VALUES ('2738','322','˫����','3','0');
INSERT INTO `espcms_city` VALUES ('2739','322','ۯ��','3','0');
INSERT INTO `espcms_city` VALUES ('2740','322','������','3','0');
INSERT INTO `espcms_city` VALUES ('2741','322','�ѽ���','3','0');
INSERT INTO `espcms_city` VALUES ('2742','322','�½���','3','0');
INSERT INTO `espcms_city` VALUES ('2743','322','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2744','322','������','3','0');
INSERT INTO `espcms_city` VALUES ('2745','322','������','3','0');
INSERT INTO `espcms_city` VALUES ('2746','322','������','3','0');
INSERT INTO `espcms_city` VALUES ('2747','322','������','3','0');
INSERT INTO `espcms_city` VALUES ('2748','322','˫����','3','0');
INSERT INTO `espcms_city` VALUES ('2749','322','ۯ��','3','0');
INSERT INTO `espcms_city` VALUES ('2750','322','������','3','0');
INSERT INTO `espcms_city` VALUES ('2751','322','�ѽ���','3','0');
INSERT INTO `espcms_city` VALUES ('2752','322','�½���','3','0');
INSERT INTO `espcms_city` VALUES ('2753','323','������','3','0');
INSERT INTO `espcms_city` VALUES ('2754','323','������','3','0');
INSERT INTO `espcms_city` VALUES ('2755','323','������','3','0');
INSERT INTO `espcms_city` VALUES ('2756','323','��ͤ��','3','0');
INSERT INTO `espcms_city` VALUES ('2757','323','��̨��','3','0');
INSERT INTO `espcms_city` VALUES ('2758','323','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('2759','323','����','3','0');
INSERT INTO `espcms_city` VALUES ('2760','323','������','3','0');
INSERT INTO `espcms_city` VALUES ('2761','323','������','3','0');
INSERT INTO `espcms_city` VALUES ('2762','324','�������','3','0');
INSERT INTO `espcms_city` VALUES ('2763','324','�봨��','3','0');
INSERT INTO `espcms_city` VALUES ('2764','324','����','3','0');
INSERT INTO `espcms_city` VALUES ('2765','324','ï��','3','0');
INSERT INTO `espcms_city` VALUES ('2766','324','������','3','0');
INSERT INTO `espcms_city` VALUES ('2767','324','��կ����','3','0');
INSERT INTO `espcms_city` VALUES ('2768','324','����','3','0');
INSERT INTO `espcms_city` VALUES ('2769','324','С����','3','0');
INSERT INTO `espcms_city` VALUES ('2770','324','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('2771','324','������','3','0');
INSERT INTO `espcms_city` VALUES ('2772','324','������','3','0');
INSERT INTO `espcms_city` VALUES ('2773','324','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2774','324','��ԭ��','3','0');
INSERT INTO `espcms_city` VALUES ('2775','325','������','3','0');
INSERT INTO `espcms_city` VALUES ('2776','325','ͨ����','3','0');
INSERT INTO `espcms_city` VALUES ('2777','325','�Ͻ���','3','0');
INSERT INTO `espcms_city` VALUES ('2778','325','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('2779','326','ͨ����','3','0');
INSERT INTO `espcms_city` VALUES ('2780','326','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('2781','326','����','3','0');
INSERT INTO `espcms_city` VALUES ('2782','326','������','3','0');
INSERT INTO `espcms_city` VALUES ('2783','326','������','3','0');
INSERT INTO `espcms_city` VALUES ('2784','326','������','3','0');
INSERT INTO `espcms_city` VALUES ('2785','326','����','3','0');
INSERT INTO `espcms_city` VALUES ('2786','327','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2787','327','�㺺��','3','0');
INSERT INTO `espcms_city` VALUES ('2788','327','ʲ����','3','0');
INSERT INTO `espcms_city` VALUES ('2789','327','������','3','0');
INSERT INTO `espcms_city` VALUES ('2790','327','�޽���','3','0');
INSERT INTO `espcms_city` VALUES ('2791','327','�н���','3','0');
INSERT INTO `espcms_city` VALUES ('2792','328','������','3','0');
INSERT INTO `espcms_city` VALUES ('2793','328','������','3','0');
INSERT INTO `espcms_city` VALUES ('2794','328','����','3','0');
INSERT INTO `espcms_city` VALUES ('2795','328','¯����','3','0');
INSERT INTO `espcms_city` VALUES ('2796','328','������','3','0');
INSERT INTO `espcms_city` VALUES ('2797','328','������','3','0');
INSERT INTO `espcms_city` VALUES ('2798','328','�Ž���','3','0');
INSERT INTO `espcms_city` VALUES ('2799','328','������','3','0');
INSERT INTO `espcms_city` VALUES ('2800','328','������','3','0');
INSERT INTO `espcms_city` VALUES ('2801','328','������','3','0');
INSERT INTO `espcms_city` VALUES ('2802','328','������','3','0');
INSERT INTO `espcms_city` VALUES ('2803','328','�¸���','3','0');
INSERT INTO `espcms_city` VALUES ('2804','328','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2805','328','ʯ����','3','0');
INSERT INTO `espcms_city` VALUES ('2806','328','������','3','0');
INSERT INTO `espcms_city` VALUES ('2807','328','ɫ����','3','0');
INSERT INTO `espcms_city` VALUES ('2808','328','������','3','0');
INSERT INTO `espcms_city` VALUES ('2809','328','������','3','0');
INSERT INTO `espcms_city` VALUES ('2810','329','�㰲��','3','0');
INSERT INTO `espcms_city` VALUES ('2811','329','������','3','0');
INSERT INTO `espcms_city` VALUES ('2812','329','������','3','0');
INSERT INTO `espcms_city` VALUES ('2813','329','��ʤ��','3','0');
INSERT INTO `espcms_city` VALUES ('2814','329','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('2815','330','������','3','0');
INSERT INTO `espcms_city` VALUES ('2816','330','Ԫ����','3','0');
INSERT INTO `espcms_city` VALUES ('2817','330','������','3','0');
INSERT INTO `espcms_city` VALUES ('2818','330','������','3','0');
INSERT INTO `espcms_city` VALUES ('2819','330','�ന��','3','0');
INSERT INTO `espcms_city` VALUES ('2820','330','������','3','0');
INSERT INTO `espcms_city` VALUES ('2821','330','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('2822','331','��üɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2823','331','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2824','331','��Ϊ��','3','0');
INSERT INTO `espcms_city` VALUES ('2825','331','������','3','0');
INSERT INTO `espcms_city` VALUES ('2826','331','�н���','3','0');
INSERT INTO `espcms_city` VALUES ('2827','331','�崨��','3','0');
INSERT INTO `espcms_city` VALUES ('2828','331','���','3','0');
INSERT INTO `espcms_city` VALUES ('2829','331','���','3','0');
INSERT INTO `espcms_city` VALUES ('2830','332','������','3','0');
INSERT INTO `espcms_city` VALUES ('2831','332','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('2832','332','�²���','3','0');
INSERT INTO `espcms_city` VALUES ('2833','332','������','3','0');
INSERT INTO `espcms_city` VALUES ('2834','332','�ᶫ��','3','0');
INSERT INTO `espcms_city` VALUES ('2835','332','������','3','0');
INSERT INTO `espcms_city` VALUES ('2836','332','�ո���','3','0');
INSERT INTO `espcms_city` VALUES ('2837','332','������','3','0');
INSERT INTO `espcms_city` VALUES ('2838','332','������','3','0');
INSERT INTO `espcms_city` VALUES ('2839','332','�Ѿ���','3','0');
INSERT INTO `espcms_city` VALUES ('2840','332','ϲ����','3','0');
INSERT INTO `espcms_city` VALUES ('2841','332','������','3','0');
INSERT INTO `espcms_city` VALUES ('2842','332','Խ����','3','0');
INSERT INTO `espcms_city` VALUES ('2843','332','������','3','0');
INSERT INTO `espcms_city` VALUES ('2844','332','������','3','0');
INSERT INTO `espcms_city` VALUES ('2845','332','�ײ���','3','0');
INSERT INTO `espcms_city` VALUES ('2846','332','ľ��','3','0');
INSERT INTO `espcms_city` VALUES ('2847','333','������','3','0');
INSERT INTO `espcms_city` VALUES ('2848','333','������','3','0');
INSERT INTO `espcms_city` VALUES ('2849','333','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2850','333','������','3','0');
INSERT INTO `espcms_city` VALUES ('2851','333','������','3','0');
INSERT INTO `espcms_city` VALUES ('2852','333','������','3','0');
INSERT INTO `espcms_city` VALUES ('2853','334','������','3','0');
INSERT INTO `espcms_city` VALUES ('2854','334','�ϲ���','3','0');
INSERT INTO `espcms_city` VALUES ('2855','334','Ӫɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2856','334','���','3','0');
INSERT INTO `espcms_city` VALUES ('2857','334','��¤��','3','0');
INSERT INTO `espcms_city` VALUES ('2858','334','˳����','3','0');
INSERT INTO `espcms_city` VALUES ('2859','334','��ƺ��','3','0');
INSERT INTO `espcms_city` VALUES ('2860','334','������','3','0');
INSERT INTO `espcms_city` VALUES ('2861','334','������','3','0');
INSERT INTO `espcms_city` VALUES ('2862','335','������','3','0');
INSERT INTO `espcms_city` VALUES ('2863','335','������','3','0');
INSERT INTO `espcms_city` VALUES ('2864','335','��Զ��','3','0');
INSERT INTO `espcms_city` VALUES ('2865','335','������','3','0');
INSERT INTO `espcms_city` VALUES ('2866','335','¡����','3','0');
INSERT INTO `espcms_city` VALUES ('2867','336','��  ��','3','0');
INSERT INTO `espcms_city` VALUES ('2868','336','��  ��','3','0');
INSERT INTO `espcms_city` VALUES ('2869','336','�ʺ���','3','0');
INSERT INTO `espcms_city` VALUES ('2870','336','������','3','0');
INSERT INTO `espcms_city` VALUES ('2871','336','�α���','3','0');
INSERT INTO `espcms_city` VALUES ('2872','337','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2873','337','������','3','0');
INSERT INTO `espcms_city` VALUES ('2874','337','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('2875','337','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2876','337','��Ӣ��','3','0');
INSERT INTO `espcms_city` VALUES ('2877','338','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2878','338','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2879','338','������','3','0');
INSERT INTO `espcms_city` VALUES ('2880','338','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('2881','338','ʯ����','3','0');
INSERT INTO `espcms_city` VALUES ('2882','338','��ȫ��','3','0');
INSERT INTO `espcms_city` VALUES ('2883','338','«ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2884','338','������','3','0');
INSERT INTO `espcms_city` VALUES ('2885','339','������','3','0');
INSERT INTO `espcms_city` VALUES ('2886','339','�˱���','3','0');
INSERT INTO `espcms_city` VALUES ('2887','339','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('2888','339','������','3','0');
INSERT INTO `espcms_city` VALUES ('2889','339','������','3','0');
INSERT INTO `espcms_city` VALUES ('2890','339','����','3','0');
INSERT INTO `espcms_city` VALUES ('2891','339','����','3','0');
INSERT INTO `espcms_city` VALUES ('2892','339','������','3','0');
INSERT INTO `espcms_city` VALUES ('2893','339','������','3','0');
INSERT INTO `espcms_city` VALUES ('2894','339','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2895','340','�㽭��','3','0');
INSERT INTO `espcms_city` VALUES ('2896','340','������','3','0');
INSERT INTO `espcms_city` VALUES ('2897','340','������','3','0');
INSERT INTO `espcms_city` VALUES ('2898','340','������','3','0');
INSERT INTO `espcms_city` VALUES ('2899','341','����','3','0');
INSERT INTO `espcms_city` VALUES ('2900','341','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2901','341','������','3','0');
INSERT INTO `espcms_city` VALUES ('2902','341','��̲��','3','0');
INSERT INTO `espcms_city` VALUES ('2903','341','����','3','0');
INSERT INTO `espcms_city` VALUES ('2904','341','��˳��','3','0');
INSERT INTO `espcms_city` VALUES ('2905','342','������','3','0');
INSERT INTO `espcms_city` VALUES ('2906','342','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('2907','342','����̶��','3','0');
INSERT INTO `espcms_city` VALUES ('2908','342','����','3','0');
INSERT INTO `espcms_city` VALUES ('2909','342','�Ͻ���','3','0');
INSERT INTO `espcms_city` VALUES ('2910','342','������','3','0');
INSERT INTO `espcms_city` VALUES ('2911','342','������','3','0');
INSERT INTO `espcms_city` VALUES ('2912','343','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('2913','343','������','3','0');
INSERT INTO `espcms_city` VALUES ('2914','343','�Ͽ���','3','0');
INSERT INTO `espcms_city` VALUES ('2915','343','�ӱ���','3','0');
INSERT INTO `espcms_city` VALUES ('2916','343','�Ӷ���','3','0');
INSERT INTO `espcms_city` VALUES ('2917','343','������','3','0');
INSERT INTO `espcms_city` VALUES ('2918','343','������','3','0');
INSERT INTO `espcms_city` VALUES ('2919','343','������','3','0');
INSERT INTO `espcms_city` VALUES ('2920','343','������','3','0');
INSERT INTO `espcms_city` VALUES ('2921','343','������','3','0');
INSERT INTO `espcms_city` VALUES ('2922','343','������','3','0');
INSERT INTO `espcms_city` VALUES ('2923','343','������','3','0');
INSERT INTO `espcms_city` VALUES ('2924','343','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2925','343','������','3','0');
INSERT INTO `espcms_city` VALUES ('2926','343','������','3','0');
INSERT INTO `espcms_city` VALUES ('2927','343','���ÿ�����','3','0');
INSERT INTO `espcms_city` VALUES ('2928','343','������','3','0');
INSERT INTO `espcms_city` VALUES ('2929','343','������','3','0');
INSERT INTO `espcms_city` VALUES ('2930','343','����','3','0');
INSERT INTO `espcms_city` VALUES ('2931','344','�ǹ���','3','0');
INSERT INTO `espcms_city` VALUES ('2932','344','������','3','0');
INSERT INTO `espcms_city` VALUES ('2933','344','������','3','0');
INSERT INTO `espcms_city` VALUES ('2934','344','��ľ��','3','0');
INSERT INTO `espcms_city` VALUES ('2935','344','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('2936','344','����������','3','0');
INSERT INTO `espcms_city` VALUES ('2937','344','������','3','0');
INSERT INTO `espcms_city` VALUES ('2938','344','ī�񹤿���','3','0');
INSERT INTO `espcms_city` VALUES ('2939','345','������','3','0');
INSERT INTO `espcms_city` VALUES ('2940','345','������','3','0');
INSERT INTO `espcms_city` VALUES ('2941','345','������','3','0');
INSERT INTO `espcms_city` VALUES ('2942','345','������','3','0');
INSERT INTO `espcms_city` VALUES ('2943','345','�Ｊ��','3','0');
INSERT INTO `espcms_city` VALUES ('2944','345','������','3','0');
INSERT INTO `espcms_city` VALUES ('2945','345','������','3','0');
INSERT INTO `espcms_city` VALUES ('2946','346','������','3','0');
INSERT INTO `espcms_city` VALUES ('2947','346','������','3','0');
INSERT INTO `espcms_city` VALUES ('2948','346','������','3','0');
INSERT INTO `espcms_city` VALUES ('2949','346','��������','3','0');
INSERT INTO `espcms_city` VALUES ('2950','346','������','3','0');
INSERT INTO `espcms_city` VALUES ('2951','346','������','3','0');
INSERT INTO `espcms_city` VALUES ('2952','346','������','3','0');
INSERT INTO `espcms_city` VALUES ('2953','346','����','3','0');
INSERT INTO `espcms_city` VALUES ('2954','346','â����','3','0');
INSERT INTO `espcms_city` VALUES ('2955','346','��¡��','3','0');
INSERT INTO `espcms_city` VALUES ('2956','346','�߰���','3','0');
INSERT INTO `espcms_city` VALUES ('2957','347','��֥��','3','0');
INSERT INTO `espcms_city` VALUES ('2958','347','����������','3','0');
INSERT INTO `espcms_city` VALUES ('2959','347','������','3','0');
INSERT INTO `espcms_city` VALUES ('2960','347','ī����','3','0');
INSERT INTO `espcms_city` VALUES ('2961','347','������','3','0');
INSERT INTO `espcms_city` VALUES ('2962','347','������','3','0');
INSERT INTO `espcms_city` VALUES ('2963','347','����','3','0');
INSERT INTO `espcms_city` VALUES ('2964','348','������','3','0');
INSERT INTO `espcms_city` VALUES ('2965','348','������','3','0');
INSERT INTO `espcms_city` VALUES ('2966','348','������','3','0');
INSERT INTO `espcms_city` VALUES ('2967','348','������','3','0');
INSERT INTO `espcms_city` VALUES ('2968','348','������','3','0');
INSERT INTO `espcms_city` VALUES ('2969','348','������','3','0');
INSERT INTO `espcms_city` VALUES ('2970','348','����','3','0');
INSERT INTO `espcms_city` VALUES ('2971','348','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2972','348','������','3','0');
INSERT INTO `espcms_city` VALUES ('2973','348','������','3','0');
INSERT INTO `espcms_city` VALUES ('2974','349','�տ�����','3','0');
INSERT INTO `espcms_city` VALUES ('2975','349','��ľ����','3','0');
INSERT INTO `espcms_city` VALUES ('2976','349','������','3','0');
INSERT INTO `espcms_city` VALUES ('2977','349','������','3','0');
INSERT INTO `espcms_city` VALUES ('2978','349','������','3','0');
INSERT INTO `espcms_city` VALUES ('2979','349','������','3','0');
INSERT INTO `espcms_city` VALUES ('2980','349','������','3','0');
INSERT INTO `espcms_city` VALUES ('2981','349','лͨ����','3','0');
INSERT INTO `espcms_city` VALUES ('2982','349','������','3','0');
INSERT INTO `espcms_city` VALUES ('2983','349','�ʲ���','3','0');
INSERT INTO `espcms_city` VALUES ('2984','349','������','3','0');
INSERT INTO `espcms_city` VALUES ('2985','349','������','3','0');
INSERT INTO `espcms_city` VALUES ('2986','349','�ٰ���','3','0');
INSERT INTO `espcms_city` VALUES ('2987','349','�Ƕ���','3','0');
INSERT INTO `espcms_city` VALUES ('2988','349','��¡��','3','0');
INSERT INTO `espcms_city` VALUES ('2989','349','����ľ��','3','0');
INSERT INTO `espcms_city` VALUES ('2990','349','������','3','0');
INSERT INTO `espcms_city` VALUES ('2991','349','�ڰ���','3','0');
INSERT INTO `espcms_city` VALUES ('2992','350','�˶���','3','0');
INSERT INTO `espcms_city` VALUES ('2993','350','������','3','0');
INSERT INTO `espcms_city` VALUES ('2994','350','������','3','0');
INSERT INTO `espcms_city` VALUES ('2995','350','ɣ����','3','0');
INSERT INTO `espcms_city` VALUES ('2996','350','�����','3','0');
INSERT INTO `espcms_city` VALUES ('2997','350','������','3','0');
INSERT INTO `espcms_city` VALUES ('2998','350','������','3','0');
INSERT INTO `espcms_city` VALUES ('2999','350','������','3','0');
INSERT INTO `espcms_city` VALUES ('3000','350','�Ӳ���','3','0');
INSERT INTO `espcms_city` VALUES ('3001','350','¡����','3','0');
INSERT INTO `espcms_city` VALUES ('3002','350','������','3','0');
INSERT INTO `espcms_city` VALUES ('3003','350','�˿�����','3','0');
INSERT INTO `espcms_city` VALUES ('3004','351','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('3005','351','ɳ���Ϳ���','3','0');
INSERT INTO `espcms_city` VALUES ('3006','351','������','3','0');
INSERT INTO `espcms_city` VALUES ('3007','351','ˮĥ����','3','0');
INSERT INTO `espcms_city` VALUES ('3008','351','ͷ�ͺ���','3','0');
INSERT INTO `espcms_city` VALUES ('3009','351','�������','3','0');
INSERT INTO `espcms_city` VALUES ('3010','351','�׶���','3','0');
INSERT INTO `espcms_city` VALUES ('3011','351','��³ľ����','3','0');
INSERT INTO `espcms_city` VALUES ('3012','352','��������','3','0');
INSERT INTO `espcms_city` VALUES ('3013','352','������','3','0');
INSERT INTO `espcms_city` VALUES ('3014','352','�⳵��','3','0');
INSERT INTO `espcms_city` VALUES ('3015','352','ɳ����','3','0');
INSERT INTO `espcms_city` VALUES ('3016','352','�º���','3','0');
INSERT INTO `espcms_city` VALUES ('3017','352','�ݳ���','3','0');
INSERT INTO `espcms_city` VALUES ('3018','352','��ʲ��','3','0');
INSERT INTO `espcms_city` VALUES ('3019','352','��������','3','0');
INSERT INTO `espcms_city` VALUES ('3020','352','��ƺ��','3','0');
INSERT INTO `espcms_city` VALUES ('3021','353','��������','3','0');
INSERT INTO `espcms_city` VALUES ('3022','354','�������','3','0');
INSERT INTO `espcms_city` VALUES ('3023','354','��̨��','3','0');
INSERT INTO `espcms_city` VALUES ('3024','354','ξ����','3','0');
INSERT INTO `espcms_city` VALUES ('3025','354','��Ǽ��','3','0');
INSERT INTO `espcms_city` VALUES ('3026','354','��ĩ��','3','0');
INSERT INTO `espcms_city` VALUES ('3027','354','����','3','0');
INSERT INTO `espcms_city` VALUES ('3028','354','�;���','3','0');
INSERT INTO `espcms_city` VALUES ('3029','354','��˶��','3','0');
INSERT INTO `espcms_city` VALUES ('3030','354','������','3','0');
INSERT INTO `espcms_city` VALUES ('3031','355','������','3','0');
INSERT INTO `espcms_city` VALUES ('3032','355','������','3','0');
INSERT INTO `espcms_city` VALUES ('3033','355','��Ȫ��','3','0');
INSERT INTO `espcms_city` VALUES ('3034','356','��ͼ����','3','0');
INSERT INTO `espcms_city` VALUES ('3035','356','��Ȫ��','3','0');
INSERT INTO `espcms_city` VALUES ('3036','356','������','3','0');
INSERT INTO `espcms_city` VALUES ('3037','356','������','3','0');
INSERT INTO `espcms_city` VALUES ('3038','356','����˹��','3','0');
INSERT INTO `espcms_city` VALUES ('3039','356','��̨��','3','0');
INSERT INTO `espcms_city` VALUES ('3040','356','��ľ������','3','0');
INSERT INTO `espcms_city` VALUES ('3041','356','ľ��','3','0');
INSERT INTO `espcms_city` VALUES ('3042','357','������','3','0');
INSERT INTO `espcms_city` VALUES ('3043','357','������','3','0');
INSERT INTO `espcms_city` VALUES ('3044','357','������','3','0');
INSERT INTO `espcms_city` VALUES ('3045','358','������','3','0');
INSERT INTO `espcms_city` VALUES ('3046','358','������','3','0');
INSERT INTO `espcms_city` VALUES ('3047','358','ī����','3','0');
INSERT INTO `espcms_city` VALUES ('3048','358','Ƥɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('3049','358','������','3','0');
INSERT INTO `espcms_city` VALUES ('3050','358','������','3','0');
INSERT INTO `espcms_city` VALUES ('3051','358','������','3','0');
INSERT INTO `espcms_city` VALUES ('3052','358','�����','3','0');
INSERT INTO `espcms_city` VALUES ('3053','359','��ʲ��','3','0');
INSERT INTO `espcms_city` VALUES ('3054','359','�踽��','3','0');
INSERT INTO `espcms_city` VALUES ('3055','359','������','3','0');
INSERT INTO `espcms_city` VALUES ('3056','359','Ӣ��ɳ��','3','0');
INSERT INTO `espcms_city` VALUES ('3057','359','������','3','0');
INSERT INTO `espcms_city` VALUES ('3058','359','ɯ����','3','0');
INSERT INTO `espcms_city` VALUES ('3059','359','Ҷ����','3','0');
INSERT INTO `espcms_city` VALUES ('3060','359','�������','3','0');
INSERT INTO `espcms_city` VALUES ('3061','359','���պ���','3','0');
INSERT INTO `espcms_city` VALUES ('3062','359','٤ʦ��','3','0');
INSERT INTO `espcms_city` VALUES ('3063','359','�ͳ���','3','0');
INSERT INTO `espcms_city` VALUES ('3064','359','��ʲ�����','3','0');
INSERT INTO `espcms_city` VALUES ('3065','360','����������','3','0');
INSERT INTO `espcms_city` VALUES ('3066','361','��ͼʲ��','3','0');
INSERT INTO `espcms_city` VALUES ('3067','361','��������','3','0');
INSERT INTO `espcms_city` VALUES ('3068','361','��������','3','0');
INSERT INTO `espcms_city` VALUES ('3069','361','��ǡ��','3','0');
INSERT INTO `espcms_city` VALUES ('3070','362','ʯ������','3','0');
INSERT INTO `espcms_city` VALUES ('3071','363','ͼľ�����','3','0');
INSERT INTO `espcms_city` VALUES ('3072','364','��³����','3','0');
INSERT INTO `espcms_city` VALUES ('3073','364','۷����','3','0');
INSERT INTO `espcms_city` VALUES ('3074','364','�п�ѷ��','3','0');
INSERT INTO `espcms_city` VALUES ('3075','365','�������','3','0');
INSERT INTO `espcms_city` VALUES ('3076','366','����̩��','3','0');
INSERT INTO `espcms_city` VALUES ('3077','366','��������','3','0');
INSERT INTO `espcms_city` VALUES ('3078','366','������','3','0');
INSERT INTO `espcms_city` VALUES ('3079','366','��������','3','0');
INSERT INTO `espcms_city` VALUES ('3080','366','������','3','0');
INSERT INTO `espcms_city` VALUES ('3081','366','������','3','0');
INSERT INTO `espcms_city` VALUES ('3082','366','������','3','0');
INSERT INTO `espcms_city` VALUES ('3083','366','������','3','0');
INSERT INTO `espcms_city` VALUES ('3084','366','������','3','0');
INSERT INTO `espcms_city` VALUES ('3085','366','������','3','0');
INSERT INTO `espcms_city` VALUES ('3086','366','������','3','0');
INSERT INTO `espcms_city` VALUES ('3087','366','ɳ����','3','0');
INSERT INTO `espcms_city` VALUES ('3088','366','������','3','0');
INSERT INTO `espcms_city` VALUES ('3089','366','���ͺ���','3','0');
INSERT INTO `espcms_city` VALUES ('3090','366','������','3','0');
INSERT INTO `espcms_city` VALUES ('3091','366','�����','3','0');
INSERT INTO `espcms_city` VALUES ('3092','366','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('3093','366','ԣ����','3','0');
INSERT INTO `espcms_city` VALUES ('3094','366','�Ͳ�������','3','0');
INSERT INTO `espcms_city` VALUES ('3095','366','��ľ����','3','0');
INSERT INTO `espcms_city` VALUES ('3096','366','������','3','0');
INSERT INTO `espcms_city` VALUES ('3097','366','�ؿ�˹��','3','0');
INSERT INTO `espcms_city` VALUES ('3098','366','���տ���','3','0');
INSERT INTO `espcms_city` VALUES ('3099','366','�첼���','3','0');
INSERT INTO `espcms_city` VALUES ('3100','367','������','3','0');
INSERT INTO `espcms_city` VALUES ('3101','367','�廪��','3','0');
INSERT INTO `espcms_city` VALUES ('3102','367','�ٶ���','3','0');
INSERT INTO `espcms_city` VALUES ('3103','367','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('3104','367','������','3','0');
INSERT INTO `espcms_city` VALUES ('3105','367','������','3','0');
INSERT INTO `espcms_city` VALUES ('3106','367','�ʹ���','3','0');
INSERT INTO `espcms_city` VALUES ('3107','367','������','3','0');
INSERT INTO `espcms_city` VALUES ('3108','367','������','3','0');
INSERT INTO `espcms_city` VALUES ('3109','367','������','3','0');
INSERT INTO `espcms_city` VALUES ('3110','367','������','3','0');
INSERT INTO `espcms_city` VALUES ('3111','367','ʯ����','3','0');
INSERT INTO `espcms_city` VALUES ('3112','367','»Ȱ','3','0');
INSERT INTO `espcms_city` VALUES ('3113','367','Ѱ��','3','0');
INSERT INTO `espcms_city` VALUES ('3114','368','��ƺ','3','0');
INSERT INTO `espcms_city` VALUES ('3115','368','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('3116','368','������','3','0');
INSERT INTO `espcms_city` VALUES ('3117','368','��ɽ','3','0');
INSERT INTO `espcms_city` VALUES ('3118','369','����','3','0');
INSERT INTO `espcms_city` VALUES ('3119','369','˼é��','3','0');
INSERT INTO `espcms_city` VALUES ('3120','369','ī��','3','0');
INSERT INTO `espcms_city` VALUES ('3121','369','����','3','0');
INSERT INTO `espcms_city` VALUES ('3122','369','����','3','0');
INSERT INTO `espcms_city` VALUES ('3123','369','����','3','0');
INSERT INTO `espcms_city` VALUES ('3124','369','����','3','0');
INSERT INTO `espcms_city` VALUES ('3125','369','����','3','0');
INSERT INTO `espcms_city` VALUES ('3126','369','����','3','0');
INSERT INTO `espcms_city` VALUES ('3127','369','����','3','0');
INSERT INTO `espcms_city` VALUES ('3128','370','�ų���','3','0');
INSERT INTO `espcms_city` VALUES ('3129','370','����','3','0');
INSERT INTO `espcms_city` VALUES ('3130','370','����','3','0');
INSERT INTO `espcms_city` VALUES ('3131','370','��ʤ��','3','0');
INSERT INTO `espcms_city` VALUES ('3132','370','��ƺ��','3','0');
INSERT INTO `espcms_city` VALUES ('3133','371','¡����','3','0');
INSERT INTO `espcms_city` VALUES ('3134','371','ʩ����','3','0');
INSERT INTO `espcms_city` VALUES ('3135','371','�ڳ���','3','0');
INSERT INTO `espcms_city` VALUES ('3136','371','������','3','0');
INSERT INTO `espcms_city` VALUES ('3137','371','������','3','0');
INSERT INTO `espcms_city` VALUES ('3138','372','������','3','0');
INSERT INTO `espcms_city` VALUES ('3139','372','˫����','3','0');
INSERT INTO `espcms_city` VALUES ('3140','372','Ĳ����','3','0');
INSERT INTO `espcms_city` VALUES ('3141','372','�ϻ���','3','0');
INSERT INTO `espcms_city` VALUES ('3142','372','Ҧ����','3','0');
INSERT INTO `espcms_city` VALUES ('3143','372','��Ҧ��','3','0');
INSERT INTO `espcms_city` VALUES ('3144','372','������','3','0');
INSERT INTO `espcms_city` VALUES ('3145','372','Ԫı��','3','0');
INSERT INTO `espcms_city` VALUES ('3146','372','�䶨��','3','0');
INSERT INTO `espcms_city` VALUES ('3147','372','»����','3','0');
INSERT INTO `espcms_city` VALUES ('3148','373','������','3','0');
INSERT INTO `espcms_city` VALUES ('3149','373','������','3','0');
INSERT INTO `espcms_city` VALUES ('3150','373','������','3','0');
INSERT INTO `espcms_city` VALUES ('3151','373','�ֶ���','3','0');
INSERT INTO `espcms_city` VALUES ('3152','373','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('3153','373','������','3','0');
INSERT INTO `espcms_city` VALUES ('3154','373','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('3155','373','������','3','0');
INSERT INTO `espcms_city` VALUES ('3156','373','������','3','0');
INSERT INTO `espcms_city` VALUES ('3157','373','���','3','0');
INSERT INTO `espcms_city` VALUES ('3158','373','�Ͻ�','3','0');
INSERT INTO `espcms_city` VALUES ('3159','373','Ρɽ','3','0');
INSERT INTO `espcms_city` VALUES ('3160','374','º����','3','0');
INSERT INTO `espcms_city` VALUES ('3161','374','������','3','0');
INSERT INTO `espcms_city` VALUES ('3162','374','������','3','0');
INSERT INTO `espcms_city` VALUES ('3163','374','ӯ����','3','0');
INSERT INTO `espcms_city` VALUES ('3164','374','¤����','3','0');
INSERT INTO `espcms_city` VALUES ('3165','375','���������','3','0');
INSERT INTO `espcms_city` VALUES ('3166','375','������','3','0');
INSERT INTO `espcms_city` VALUES ('3167','375','ά��','3','0');
INSERT INTO `espcms_city` VALUES ('3168','376','������','3','0');
INSERT INTO `espcms_city` VALUES ('3169','376','������','3','0');
INSERT INTO `espcms_city` VALUES ('3170','376','������','3','0');
INSERT INTO `espcms_city` VALUES ('3171','376','��Զ��','3','0');
INSERT INTO `espcms_city` VALUES ('3172','376','�̴���','3','0');
INSERT INTO `espcms_city` VALUES ('3173','376','��ˮ��','3','0');
INSERT INTO `espcms_city` VALUES ('3174','376','ʯ����','3','0');
INSERT INTO `espcms_city` VALUES ('3175','376','������','3','0');
INSERT INTO `espcms_city` VALUES ('3176','376','Ԫ����','3','0');
INSERT INTO `espcms_city` VALUES ('3177','376','�����','3','0');
INSERT INTO `espcms_city` VALUES ('3178','376','��ƽ','3','0');
INSERT INTO `espcms_city` VALUES ('3179','376','�ӿ�','3','0');
INSERT INTO `espcms_city` VALUES ('3180','376','����','3','0');
INSERT INTO `espcms_city` VALUES ('3181','377','������','3','0');
INSERT INTO `espcms_city` VALUES ('3182','377','������','3','0');
INSERT INTO `espcms_city` VALUES ('3183','377','����','3','0');
INSERT INTO `espcms_city` VALUES ('3184','377','������','3','0');
INSERT INTO `espcms_city` VALUES ('3185','377','����','3','0');
INSERT INTO `espcms_city` VALUES ('3186','377','˫��','3','0');
INSERT INTO `espcms_city` VALUES ('3187','377','����','3','0');
INSERT INTO `espcms_city` VALUES ('3188','377','��Դ','3','0');
INSERT INTO `espcms_city` VALUES ('3189','378','������','3','0');
INSERT INTO `espcms_city` VALUES ('3190','378','������','3','0');
INSERT INTO `espcms_city` VALUES ('3191','378','������','3','0');
INSERT INTO `espcms_city` VALUES ('3192','378','½����','3','0');
INSERT INTO `espcms_city` VALUES ('3193','378','ʦ����','3','0');
INSERT INTO `espcms_city` VALUES ('3194','378','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('3195','378','��Դ��','3','0');
INSERT INTO `espcms_city` VALUES ('3196','378','������','3','0');
INSERT INTO `espcms_city` VALUES ('3197','378','մ����','3','0');
INSERT INTO `espcms_city` VALUES ('3198','379','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('3199','379','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('3200','379','������','3','0');
INSERT INTO `espcms_city` VALUES ('3201','379','��������','3','0');
INSERT INTO `espcms_city` VALUES ('3202','379','�����','3','0');
INSERT INTO `espcms_city` VALUES ('3203','379','����','3','0');
INSERT INTO `espcms_city` VALUES ('3204','379','������','3','0');
INSERT INTO `espcms_city` VALUES ('3205','379','������','3','0');
INSERT INTO `espcms_city` VALUES ('3206','380','������','3','0');
INSERT INTO `espcms_city` VALUES ('3207','380','�º���','3','0');
INSERT INTO `espcms_city` VALUES ('3208','380','������','3','0');
INSERT INTO `espcms_city` VALUES ('3209','381','������','3','0');
INSERT INTO `espcms_city` VALUES ('3210','381','������','3','0');
INSERT INTO `espcms_city` VALUES ('3211','381','�ν���','3','0');
INSERT INTO `espcms_city` VALUES ('3212','381','ͨ����','3','0');
INSERT INTO `espcms_city` VALUES ('3213','381','������','3','0');
INSERT INTO `espcms_city` VALUES ('3214','381','������','3','0');
INSERT INTO `espcms_city` VALUES ('3215','381','��ɽ','3','0');
INSERT INTO `espcms_city` VALUES ('3216','381','��ƽ','3','0');
INSERT INTO `espcms_city` VALUES ('3217','381','Ԫ��','3','0');
INSERT INTO `espcms_city` VALUES ('3218','382','������','3','0');
INSERT INTO `espcms_city` VALUES ('3219','382','³����','3','0');
INSERT INTO `espcms_city` VALUES ('3220','382','�ɼ���','3','0');
INSERT INTO `espcms_city` VALUES ('3221','382','�ν���','3','0');
INSERT INTO `espcms_city` VALUES ('3222','382','�����','3','0');
INSERT INTO `espcms_city` VALUES ('3223','382','������','3','0');
INSERT INTO `espcms_city` VALUES ('3224','382','�罭��','3','0');
INSERT INTO `espcms_city` VALUES ('3225','382','������','3','0');
INSERT INTO `espcms_city` VALUES ('3226','382','������','3','0');
INSERT INTO `espcms_city` VALUES ('3227','382','������','3','0');
INSERT INTO `espcms_city` VALUES ('3228','382','ˮ����','3','0');
INSERT INTO `espcms_city` VALUES ('3229','383','������','3','0');
INSERT INTO `espcms_city` VALUES ('3230','383','�ϳ���','3','0');
INSERT INTO `espcms_city` VALUES ('3231','383','�³���','3','0');
INSERT INTO `espcms_city` VALUES ('3232','383','������','3','0');
INSERT INTO `espcms_city` VALUES ('3233','383','������','3','0');
INSERT INTO `espcms_city` VALUES ('3234','383','������','3','0');
INSERT INTO `espcms_city` VALUES ('3235','383','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('3236','383','�ຼ��','3','0');
INSERT INTO `espcms_city` VALUES ('3237','383','�н�','3','0');
INSERT INTO `espcms_city` VALUES ('3238','383','������','3','0');
INSERT INTO `espcms_city` VALUES ('3239','383','������','3','0');
INSERT INTO `espcms_city` VALUES ('3240','383','�ٰ���','3','0');
INSERT INTO `espcms_city` VALUES ('3241','383','ͩ®��','3','0');
INSERT INTO `espcms_city` VALUES ('3242','383','������','3','0');
INSERT INTO `espcms_city` VALUES ('3243','384','������','3','0');
INSERT INTO `espcms_city` VALUES ('3244','384','�����','3','0');
INSERT INTO `espcms_city` VALUES ('3245','384','������','3','0');
INSERT INTO `espcms_city` VALUES ('3246','384','������','3','0');
INSERT INTO `espcms_city` VALUES ('3247','384','������','3','0');
INSERT INTO `espcms_city` VALUES ('3248','385','�Ϻ���','3','0');
INSERT INTO `espcms_city` VALUES ('3249','385','������','3','0');
INSERT INTO `espcms_city` VALUES ('3250','385','������','3','0');
INSERT INTO `espcms_city` VALUES ('3251','385','������','3','0');
INSERT INTO `espcms_city` VALUES ('3252','385','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('3253','385','ͩ����','3','0');
INSERT INTO `espcms_city` VALUES ('3254','385','������','3','0');
INSERT INTO `espcms_city` VALUES ('3255','386','�ĳ���','3','0');
INSERT INTO `espcms_city` VALUES ('3256','386','����','3','0');
INSERT INTO `espcms_city` VALUES ('3257','386','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('3258','386','����','3','0');
INSERT INTO `espcms_city` VALUES ('3259','386','������','3','0');
INSERT INTO `espcms_city` VALUES ('3260','386','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('3261','386','��ͤ��','3','0');
INSERT INTO `espcms_city` VALUES ('3262','386','�����','3','0');
INSERT INTO `espcms_city` VALUES ('3263','386','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('3264','386','�శ��','3','0');
INSERT INTO `espcms_city` VALUES ('3265','386','������','3','0');
INSERT INTO `espcms_city` VALUES ('3266','386','������','3','0');
INSERT INTO `espcms_city` VALUES ('3267','386','������','3','0');
INSERT INTO `espcms_city` VALUES ('3268','386','�ֽ���','3','0');
INSERT INTO `espcms_city` VALUES ('3269','386','�Ͱ���','3','0');
INSERT INTO `espcms_city` VALUES ('3270','387','������','3','0');
INSERT INTO `espcms_city` VALUES ('3271','387','��Ȫ��','3','0');
INSERT INTO `espcms_city` VALUES ('3272','387','������','3','0');
INSERT INTO `espcms_city` VALUES ('3273','387','������','3','0');
INSERT INTO `espcms_city` VALUES ('3274','387','�����','3','0');
INSERT INTO `espcms_city` VALUES ('3275','387','������','3','0');
INSERT INTO `espcms_city` VALUES ('3276','387','�ƺ���','3','0');
INSERT INTO `espcms_city` VALUES ('3277','387','��Ԫ��','3','0');
INSERT INTO `espcms_city` VALUES ('3278','387','����','3','0');
INSERT INTO `espcms_city` VALUES ('3279','388','������','3','0');
INSERT INTO `espcms_city` VALUES ('3280','388','������','3','0');
INSERT INTO `espcms_city` VALUES ('3281','388','������','3','0');
INSERT INTO `espcms_city` VALUES ('3282','388','����','3','0');
INSERT INTO `espcms_city` VALUES ('3283','388','������','3','0');
INSERT INTO `espcms_city` VALUES ('3284','388','۴����','3','0');
INSERT INTO `espcms_city` VALUES ('3285','388','��Ҧ��','3','0');
INSERT INTO `espcms_city` VALUES ('3286','388','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('3287','388','���','3','0');
INSERT INTO `espcms_city` VALUES ('3288','388','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('3289','388','������','3','0');
INSERT INTO `espcms_city` VALUES ('3290','389','Խ����','3','0');
INSERT INTO `espcms_city` VALUES ('3291','389','������','3','0');
INSERT INTO `espcms_city` VALUES ('3292','389','������','3','0');
INSERT INTO `espcms_city` VALUES ('3293','389','������','3','0');
INSERT INTO `espcms_city` VALUES ('3294','389','�²���','3','0');
INSERT INTO `espcms_city` VALUES ('3295','389','������','3','0');
INSERT INTO `espcms_city` VALUES ('3296','390','������','3','0');
INSERT INTO `espcms_city` VALUES ('3297','390','������','3','0');
INSERT INTO `espcms_city` VALUES ('3298','390','·����','3','0');
INSERT INTO `espcms_city` VALUES ('3299','390','������','3','0');
INSERT INTO `espcms_city` VALUES ('3300','390','�ٺ���','3','0');
INSERT INTO `espcms_city` VALUES ('3301','390','����','3','0');
INSERT INTO `espcms_city` VALUES ('3302','390','������','3','0');
INSERT INTO `espcms_city` VALUES ('3303','390','��̨��','3','0');
INSERT INTO `espcms_city` VALUES ('3304','390','�ɾ���','3','0');
INSERT INTO `espcms_city` VALUES ('3305','391','¹����','3','0');
INSERT INTO `espcms_city` VALUES ('3306','391','������','3','0');
INSERT INTO `espcms_city` VALUES ('3307','391','걺���','3','0');
INSERT INTO `espcms_city` VALUES ('3308','391','����','3','0');
INSERT INTO `espcms_city` VALUES ('3309','391','������','3','0');
INSERT INTO `espcms_city` VALUES ('3310','391','��ͷ��','3','0');
INSERT INTO `espcms_city` VALUES ('3311','391','������','3','0');
INSERT INTO `espcms_city` VALUES ('3312','391','ƽ����','3','0');
INSERT INTO `espcms_city` VALUES ('3313','391','������','3','0');
INSERT INTO `espcms_city` VALUES ('3314','391','�ĳ���','3','0');
INSERT INTO `espcms_city` VALUES ('3315','391','̩˳��','3','0');
INSERT INTO `espcms_city` VALUES ('3316','392','������','3','0');
INSERT INTO `espcms_city` VALUES ('3317','392','������','3','0');
INSERT INTO `espcms_city` VALUES ('3318','392','�ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('3319','392','������','3','0');
INSERT INTO `espcms_city` VALUES ('3320','393','������','3','0');
INSERT INTO `espcms_city` VALUES ('3321','393','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('3322','393','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('3323','393','������','3','0');
INSERT INTO `espcms_city` VALUES ('3324','393','������','3','0');
INSERT INTO `espcms_city` VALUES ('3325','394','�ϴ���','3','0');
INSERT INTO `espcms_city` VALUES ('3326','394','������','3','0');
INSERT INTO `espcms_city` VALUES ('3327','394','�ϴ���','3','0');
INSERT INTO `espcms_city` VALUES ('3328','394','������','3','0');
INSERT INTO `espcms_city` VALUES ('3329','394','�ϰ���','3','0');
INSERT INTO `espcms_city` VALUES ('3330','394','�山��','3','0');
INSERT INTO `espcms_city` VALUES ('3331','394','��ʢ��','3','0');
INSERT INTO `espcms_city` VALUES ('3332','394','��ɿ���','3','0');
INSERT INTO `espcms_city` VALUES ('3333','394','������','3','0');
INSERT INTO `espcms_city` VALUES ('3334','394','������','3','0');
INSERT INTO `espcms_city` VALUES ('3335','394','ɳƺ����','3','0');
INSERT INTO `espcms_city` VALUES ('3336','394','������','3','0');
INSERT INTO `espcms_city` VALUES ('3337','394','������','3','0');
INSERT INTO `espcms_city` VALUES ('3338','394','������','3','0');
INSERT INTO `espcms_city` VALUES ('3339','394','��������','3','0');
INSERT INTO `espcms_city` VALUES ('3340','394','������','3','0');
INSERT INTO `espcms_city` VALUES ('3341','394','ǭ��������','3','0');
INSERT INTO `espcms_city` VALUES ('3342','394','������','3','0');
INSERT INTO `espcms_city` VALUES ('3343','394','˫����','3','0');
INSERT INTO `espcms_city` VALUES ('3344','394','�뽭��','3','0');
INSERT INTO `espcms_city` VALUES ('3345','394','������','3','0');
INSERT INTO `espcms_city` VALUES ('3346','394','ͭ����','3','0');
INSERT INTO `espcms_city` VALUES ('3347','394','������','3','0');
INSERT INTO `espcms_city` VALUES ('3348','394','�ٲ���','3','0');
INSERT INTO `espcms_city` VALUES ('3349','394','�ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('3350','394','�潭��','3','0');
INSERT INTO `espcms_city` VALUES ('3351','394','��¡��','3','0');
INSERT INTO `espcms_city` VALUES ('3352','394','�ᶼ��','3','0');
INSERT INTO `espcms_city` VALUES ('3353','394','�ǿ���','3','0');
INSERT INTO `espcms_city` VALUES ('3354','394','��ƽ��','3','0');
INSERT INTO `espcms_city` VALUES ('3355','394','����','3','0');
INSERT INTO `espcms_city` VALUES ('3356','394','��Ϫ��','3','0');
INSERT INTO `espcms_city` VALUES ('3357','394','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('3358','394','�����','3','0');
INSERT INTO `espcms_city` VALUES ('3359','394','������','3','0');
INSERT INTO `espcms_city` VALUES ('3360','394','����','3','0');
INSERT INTO `espcms_city` VALUES ('3361','394','ʯ��','3','0');
INSERT INTO `espcms_city` VALUES ('3362','394','��ˮ','3','0');
INSERT INTO `espcms_city` VALUES ('3363','394','����','3','0');
INSERT INTO `espcms_city` VALUES ('3364','394','��ɽ','3','0');
INSERT INTO `espcms_city` VALUES ('3365','395','ɳ����','3','0');
INSERT INTO `espcms_city` VALUES ('3366','395','����','3','0');
INSERT INTO `espcms_city` VALUES ('3367','395','������','3','0');
INSERT INTO `espcms_city` VALUES ('3368','395','�ƴ�����','3','0');
INSERT INTO `espcms_city` VALUES ('3369','395','��������','3','0');
INSERT INTO `espcms_city` VALUES ('3370','395','������','3','0');
INSERT INTO `espcms_city` VALUES ('3371','395','������','3','0');
INSERT INTO `espcms_city` VALUES ('3372','395','Ԫ����','3','0');
INSERT INTO `espcms_city` VALUES ('3373','395','��ˮ����','3','0');
INSERT INTO `espcms_city` VALUES ('3374','395','������','3','0');
INSERT INTO `espcms_city` VALUES ('3375','395','������','3','0');
INSERT INTO `espcms_city` VALUES ('3376','395','������','3','0');
INSERT INTO `espcms_city` VALUES ('3377','395','�ͼ�����','3','0');
INSERT INTO `espcms_city` VALUES ('3378','395','����','3','0');
INSERT INTO `espcms_city` VALUES ('3379','395','����','3','0');
INSERT INTO `espcms_city` VALUES ('3380','395','������','3','0');
INSERT INTO `espcms_city` VALUES ('3381','395','������','3','0');
INSERT INTO `espcms_city` VALUES ('3382','395','�뵺��','3','0');
INSERT INTO `espcms_city` VALUES ('3383','396','����','3','0');
INSERT INTO `espcms_city` VALUES ('3384','397','̨��','3','0');
INSERT INTO `espcms_city` VALUES ('3385','397','����','3','0');
INSERT INTO `espcms_city` VALUES ('3386','397','��¡','3','0');
INSERT INTO `espcms_city` VALUES ('3387','397','̨��','3','0');
INSERT INTO `espcms_city` VALUES ('3388','397','̨��','3','0');
INSERT INTO `espcms_city` VALUES ('3389','397','����','3','0');
INSERT INTO `espcms_city` VALUES ('3390','397','����','3','0');
INSERT INTO `espcms_city` VALUES ('3391','397','������','3','0');
INSERT INTO `espcms_city` VALUES ('3392','397','��԰��','3','0');
INSERT INTO `espcms_city` VALUES ('3393','397','������','3','0');
INSERT INTO `espcms_city` VALUES ('3394','397','�û���','3','0');
INSERT INTO `espcms_city` VALUES ('3395','397','��Ͷ��','3','0');
INSERT INTO `espcms_city` VALUES ('3396','397','������','3','0');
INSERT INTO `espcms_city` VALUES ('3397','397','������','3','0');
INSERT INTO `espcms_city` VALUES ('3398','397','̨����','3','0');
INSERT INTO `espcms_city` VALUES ('3399','397','������','3','0');
INSERT INTO `espcms_city` VALUES ('3400','397','�����','3','0');
INSERT INTO `espcms_city` VALUES ('3401','3','�Ϸ�','2','0');
INSERT INTO `espcms_city` VALUES ('3402','3401','®����','3','0');
INSERT INTO `espcms_city` VALUES ('3403','3401','������','3','0');
INSERT INTO `espcms_city` VALUES ('3404','3401','��ɽ��','3','0');
INSERT INTO `espcms_city` VALUES ('3405','3401','������','3','0');
INSERT INTO `espcms_city` VALUES ('3406','3401','������','3','0');
INSERT INTO `espcms_city` VALUES ('3407','3401','�ʶ���','3','0');
INSERT INTO `espcms_city` VALUES ('3408','3401','������','3','0');
INSERT INTO `espcms_config` VALUES ('5','3','icpbeian','ICP����','�������վ���ڵ���ط���������վ��������û����Ϊ��','','string','','1','0','');
INSERT INTO `espcms_config` VALUES ('6','1','is_close','��վ״̬','����ر���վ����ԡ��ر���վ˵������������','0','bool','�ر���վ,��ͨ��վ','1','0','');
INSERT INTO `espcms_config` VALUES ('7','5','admine_mail','����ԱEmail','�����û����Ժ���վ���������Ϣ','601450868@qq.com','string','','1','0','');
INSERT INTO `espcms_config` VALUES ('8','4','domain','��վ��ַ','����д��ǰ��վ������ע����ַ����ϡ�/��,��http://www.ecisp.cn/','http://wa.xubo245.com/wa/','string','','1','0','');
INSERT INTO `espcms_config` VALUES ('9','6','is_log','��־��¼','�������ã��Ա�����������̨������־','1','bool','������־��¼,�ر���־��¼','1','0','');
INSERT INTO `espcms_config` VALUES ('10','9','is_email','�����ʼ�����','�����ã��������SMTP���������趨','0','bool','�����ʼ�����,�ر��ʼ�����','6','0','');
INSERT INTO `espcms_config` VALUES ('11','11','smtp_server','SMTP������','��ȷ���������֧��SMTP���͹��ܣ�','','string','','6','0','');
INSERT INTO `espcms_config` VALUES ('12','12','smtp_username','SMTP�û���','�ʼ���½�û���','','string','','6','0','');
INSERT INTO `espcms_config` VALUES ('13','12','smtp_password','SMTP����','�ʼ���½����','','password','','6','0','');
INSERT INTO `espcms_config` VALUES ('14','7','cli_time','ʱ������(Ĭ��+8)','����дʱ��ʱ��й�ʱ��Ϊ+8','8','int','','1','0','');
INSERT INTO `espcms_config` VALUES ('15','12','is_html','�������ɷ�ʽ','�������þ�̬���������SEO','0','bool','���þ�̬����,���ö�̬ҳ��','1','0','');
INSERT INTO `espcms_config` VALUES ('99','13','file_fileex','���ɸ�ʽ����','����ݷ������������ȼ��������ã�Ĭ��Ϊhtml','html','selectkey','html|html,htm|htm,shtml|shtml','1','0','');
INSERT INTO `espcms_config` VALUES ('18','6','is_gzip','����GZip����','���鿪�����������ҳ�����ٶ�','0','bool','����GZIPѹ��,�ر�GZIPѹ��','1','0','');
INSERT INTO `espcms_config` VALUES ('19','9','default_lng','��̨Ĭ��վ��','���ڿ��ƺ�̨Ĭ�ϵ�վ����ʾ����','cn','select','','1','0','lngarray');
INSERT INTO `espcms_config` VALUES ('20','12','max_page','��̨��ҳ��ť����','����д�������֣�������дֵ��Ҫ����5','5','int','','99','0','');
INSERT INTO `espcms_config` VALUES ('21','12','max_list','��̨ÿҳ��������','����д�������֣�������д���ֲ�Ҫ����30','20','int','','99','0','');
INSERT INTO `espcms_config` VALUES ('22','1','upfile_dir','�ϴ��ļ���','�����ַ������ϡ�/��,���磺��upfile/��','upfile/','string','','4','0','');
INSERT INTO `espcms_config` VALUES ('23','5','upfile_maxsize','�ļ���С����','���ܳ��������������ϴ���������ã�һ����������ܳ���2M','2000000','selectkey','200000|200K,500000|500K,1000000|1M,2000000|2M,3000000|3M,5000000|5M,10000000|10M,20000000|20M,30000000|30M,40000000|40M,50000000|50M,100000000|100M,150000000|150M,200000000|200M,250000000|250M','4','0','');
INSERT INTO `espcms_config` VALUES ('24','9','img_width','ͼƬ��','��λ��px','200','int','','4','0','');
INSERT INTO `espcms_config` VALUES ('25','10','img_height','ͼƬ��','��λ��px','200','int','','4','0','');
INSERT INTO `espcms_config` VALUES ('26','11','img_bgcolor','ͼƬ������ɫ','����д��������ɫ����ɫ��#ffffff ��ɫ��#000000 ','#ffffff','font','','4','0','');
INSERT INTO `espcms_config` VALUES ('27','2','upfile_pictype','�����ϴ�ͼƬ��ʽ','����\"|\"�ָ��ʽ������jpg|png|gif','jpg|png|gif','string','','4','0','');
INSERT INTO `espcms_config` VALUES ('28','50','upfile_maxalbum','��Ʒ�ϴ�ͼƬ����','�������ݷ���ʱ���ϴ���ͼƬ������������鲻Ҫ����5','3','int','','99','0','');
INSERT INTO `espcms_config` VALUES ('29','12','img_quality','ͼƬ����','ͼƬ����Խ��ռ�ÿռ�Խ��','80','selectkey','50|��,80|��,100|�ǳ���','4','0','');
INSERT INTO `espcms_config` VALUES ('30','13','img_issmallpic','�Ƿ���������ͼ','','0','bool','��������ͼ����,��������ͼ����','4','0','');
INSERT INTO `espcms_config` VALUES ('31','3','uifile_movertype','�����ϴ���Ƶ��ʽ','����\"|\"�ָ��ʽ������swf|flv|mpg','swf|mpg|flv','string','','4','0','');
INSERT INTO `espcms_config` VALUES ('32','50','img_iswater','ˮӡ����','','0','selectkey','0|�����ˮӡ,1|�������ˮӡ,2|���ͼƬˮӡ','4','0','');
INSERT INTO `espcms_config` VALUES ('33','50','img_wmt_text','ˮӡ����','��ˮӡ��������ˮӡ,�������','EasySitePM','string','','4','0','');
INSERT INTO `espcms_config` VALUES ('34','50','img_wmt_size','ˮӡ���ִ�С','���鲻����20������','10','int','','4','0','');
INSERT INTO `espcms_config` VALUES ('35','50','img_wmt_color','ˮӡ������ɫ','����д��������ɫ����ɫ��#ffffff ��ɫ��#000000 ','#ffffff','font','','4','0','');
INSERT INTO `espcms_config` VALUES ('36','50','img_wmt_pos','ˮӡ���ַ���λ��','','9','selectkey','1|��������,2|��������,3|��������,4|�м����,5|����,6|�м����,7|�ײ�����,8|�ײ�����,9|�ײ�����','4','0','');
INSERT INTO `espcms_config` VALUES ('37','50','img_wmt_transparent','ˮӡ����͸����','','20','selectkey','20|�ǳ�͸��,50|һ��͸��,100|��͸��','4','0','');
INSERT INTO `espcms_config` VALUES ('38','50','img_wmi_file','ˮӡͼƬ�ļ���','��ˮӡ���͵���2,�������뽫ˮӡͼƬֱ�ӱ�����/public/Ŀ¼��','watermark.png','font','','4','0','');
INSERT INTO `espcms_config` VALUES ('39','50','img_wmi_pos','ˮӡͼƬ����λ��','','9','selectkey','1|��������,2|��������,3|��������,4|�м����,5|����,6|�м����,7|�ײ�����,8|�ײ�����,9|�ײ�����','4','0','');
INSERT INTO `espcms_config` VALUES ('40','50','img_wmi_transparent','ˮӡͼƬ͸����','','50','selectkey','20|�ǳ�͸��,50|һ��͸��,100|��͸��','4','0','');
INSERT INTO `espcms_config` VALUES ('41','15','file_htmldir','HTML����Ŀ¼','�����ַ������ϡ�/��,Ϊ�����Ĭ���ڸ�Ŀ¼�����磺��html/��','html/','string','','1','0','');
INSERT INTO `espcms_config` VALUES ('42','15','file_sitemapdir','SEO�����ļ�Ŀ¼','�����ַ������ϡ�/��,���磺��sitemap/��','sitemap/','string','','99','0','');
INSERT INTO `espcms_config` VALUES ('43','50','file_sqlbakdir','sql�����ļ�Ŀ¼','�����ַ������ϡ�/��,���磺��datecache/backup/��','datacache/backup/','string','','99','0','');
INSERT INTO `espcms_config` VALUES ('44','2','mem_isseccode','��Ա��½��֤��','���鿪�����Լ�ǿ��Ա��Ϣ��ȫ','1','bool','������Ա��½��֤,���û�Ա��½��֤','2','0','');
INSERT INTO `espcms_config` VALUES ('45','50','default_templates','��ǰģ��','����дģ���ļ�������,��ȷ����templates/Ŀ¼�����Ѵ��ڸ��ļ���','default','font','','99','0','');
INSERT INTO `espcms_config` VALUES ('46','50','is_caching','���ݻ��濪������','ϵͳ���Զ�����������湦�ܣ����鿪��','0','bool','�������ݿ⻺��,�ر����ݿ⻺��','1','0','');
INSERT INTO `espcms_config` VALUES ('47','50','cache_time','�������ʱ��','','3600','selectkey','1800|��Сʱ,3600|1Сʱ,7200|2Сʱ,43200|����,86400|1��','1','0','');
INSERT INTO `espcms_config` VALUES ('48','50','templates_fileex','ģ���ļ���չ��','����ģ���ļ���չ������д������ʹ��HTML��ʽΪĬ��ֵ','html','font','','99','0','');
INSERT INTO `espcms_config` VALUES ('101','41','input_iskey','���ݹؼ��ֻ�ȡ','���ûᵼ�·���ʱ�����Գ�','0','bool','���ùؼ����Զ���ȡ,���ùؼ����Զ���ȡ','99','0','');
INSERT INTO `espcms_config` VALUES ('52','6','order_shipping','Ĭ��������ʽ','����д������ʽIDֵ','1','int','','99','0','');
INSERT INTO `espcms_config` VALUES ('53','7','order_pay','Ĭ��֧����ʽ','����д֧����ʽIDֵ','1','int','','99','0','');
INSERT INTO `espcms_config` VALUES ('54','8','order_integral','�������ֱ���','����д���������֣��˻��ֱ�������֧���ܽ���Զ������Ա�ʻ�','10','int','','3','0','');
INSERT INTO `espcms_config` VALUES ('55','9','order_discount','��ƷĬ���ۿ�','����д���������֣����ۿۻ�Ӱ����Ʒ�����ܽ��','100','int','','3','0','');
INSERT INTO `espcms_config` VALUES ('56','50','order_companyname','�̼ҹ�˾ȫ��','���ڴ�ӡ�����ʾ������д','','string','','3','0','');
INSERT INTO `espcms_config` VALUES ('57','50','order_contact','��ϵ��','','','font','','3','0','');
INSERT INTO `espcms_config` VALUES ('58','50','order_province','����ʡ','','','font','','3','0','');
INSERT INTO `espcms_config` VALUES ('59','50','order_city','����','','','font','','3','0','');
INSERT INTO `espcms_config` VALUES ('60','50','order_add','��ϸ��ַ','','','string','','3','0','');
INSERT INTO `espcms_config` VALUES ('61','50','order_post','�ʱ�','','','font','','3','0','');
INSERT INTO `espcms_config` VALUES ('62','50','order_tel','�绰','','','string','','3','0','');
INSERT INTO `espcms_config` VALUES ('63','50','order_moblie','�ֻ�','','','string','','3','0','');
INSERT INTO `espcms_config` VALUES ('64','3','mem_isemail','��Ա������֤����','�翪������ȷ��ϵͳ�����ʼ����͹���','0','bool','������Ա�ʼ���֤,���û�Ա�ʼ���֤','2','0','');
INSERT INTO `espcms_config` VALUES ('65','50','mem_isucenter','Ucenter�ӿ�״̬','����������ȷ��дUCenter��Ϣ������ᵼ�»�Աע�����','0','bool','��UCenter,����UCenter','2','0','');
INSERT INTO `espcms_config` VALUES ('66','50','mem_ucdbhost','Ucenter���ݿ��ַ','����дUCenter���ݿ���ʵ�ַ��Ĭ��Ϊ��localhost��','localhost','string','','2','0','');
INSERT INTO `espcms_config` VALUES ('67','50','mem_ucdbuser','Ucenter���ݿ������','','root','font','','2','0','');
INSERT INTO `espcms_config` VALUES ('68','50','mem_ucdbpw','Ucenter���ݿ�����','','','font','','2','0','');
INSERT INTO `espcms_config` VALUES ('69','50','mem_ucdbname','Ucenter���ݿ�����','','ucenter','font','','2','0','');
INSERT INTO `espcms_config` VALUES ('70','50','mem_ucdbchart','Ucenter���ݿ����','','utf8','font','','2','0','');
INSERT INTO `espcms_config` VALUES ('71','50','mem_ucdbtable','Ucenter��ǰ׺','','uc_','font','','2','0','');
INSERT INTO `espcms_config` VALUES ('72','50','mem_uckey','ͨ����Կ','UCenterͨ����Կ����������ñ���һ��','','text','','2','0','');
INSERT INTO `espcms_config` VALUES ('73','50','mem_ucapi','UCenter���ʵ�ַ','����дUCenter ͨ�ŵĽӿ� URL����β�벻Ҫ�ӡ�/��','','string','','2','0','');
INSERT INTO `espcms_config` VALUES ('74','50','mem_ucchart','UCenterϵͳ����','Ĭ��ΪUTF-8','utf-8','font','','2','0','');
INSERT INTO `espcms_config` VALUES ('75','50','mem_ucapiid','UCenterӦ��ID','����д��ǰӦ����UCenter���е�����ID','0','int','','2','0','');
INSERT INTO `espcms_config` VALUES ('76','5','mem_lock','������ע���û���','�뽫�û����á�,���ֿ�','www,bbs,demo,test,ftp,mail,user,users,admin,administrator','text','','2','0','');
INSERT INTO `espcms_config` VALUES ('100','2','input_isdes','���ݼ���ȡ','���ÿ��ܵ��·���ʱ�����Գ�','1','bool','�������ݼ���Զ���ȡ,�������ݼ���Զ���ȡ','6','0','');
INSERT INTO `espcms_config` VALUES ('78','4','mem_isintegral','��Ա���ֲ���','�����ã�����վ��ز��������ӻ���','1','bool','���û��ֲ���,���û��ֲ���','99','0','');
INSERT INTO `espcms_config` VALUES ('79','14','is_imcall','��ʱͨ��ʾ����','�����ã�����ҳ���������Ӽ�ʱͨ��ǩ����','1','bool','ǰ̨��ͨ��ʱͨ,ǰ̨�رռ�ʱͨ','6','0','');
INSERT INTO `espcms_config` VALUES ('116','50','http_pathtype','���ӵ�ַ·����ʽ','����ʹ�þ���·������ȷ����վ��������','0','bool','����·��(����),���·��','1','0','');
INSERT INTO `espcms_config` VALUES ('117','14','entrance_file','��ҳ�����ļ���','����ݷ������������ȼ��������ã�Ĭ��Ϊindex','index','selectkey','index|index,default|default','1','0','');
INSERT INTO `espcms_config` VALUES ('85','2','close_content','�ر���վ˵��','������ùرչ��ܣ�������д����','��Ǹ����վ����ά���У����������������Ǹ�⣡','text','','1','0','');
INSERT INTO `espcms_config` VALUES ('86','9','bbs_filter','��������','���������\"|\"���������硰��ɫ|AV��','������|AV|��Сƽ|ë��|SEX','text','','5','0','');
INSERT INTO `espcms_config` VALUES ('87','4','bbs_isclass','�������ģʽ','�����ã��������Ծ���˺�Ż���ʾ','0','bool','���÷������,���÷������','5','0','');
INSERT INTO `espcms_config` VALUES ('89','5','bbs_isseccode','��֤��','���鿪�����Ա���������Ϣ����','0','bool','������֤��,������֤��','5','0','');
INSERT INTO `espcms_config` VALUES ('160','1','acmessagestr','','�����������ã����ڿ�����������������ԣ�','','','','5','1','');
INSERT INTO `espcms_config` VALUES ('91','4','input_isdellink','ɾ����վ������','���ڷ�����ʱ��ɾ�������ϷǱ�վ����','0','bool','���÷Ǳ�վ����ɾ��,���÷Ǳ�վ����ɾ��','6','0','');
INSERT INTO `espcms_config` VALUES ('92','3','input_isdescription','���ݼ���ȡ����','���鲻����Ĭ��250���ַ�','250','int','','6','0','');
INSERT INTO `espcms_config` VALUES ('93','42','input_iskeyword','�ؼ��ֻ�ȡ����','���鲻����Ĭ��10������','10','int','','99','0','');
INSERT INTO `espcms_config` VALUES ('94','50','input_author','Ĭ�ϱ༭','','�����ɳ','font','','99','0','');
INSERT INTO `espcms_config` VALUES ('95','50','input_source','Ĭ����Դ','','Ecisp.CN','font','','99','0','');
INSERT INTO `espcms_config` VALUES ('96','5','input_click','Ĭ�ϵ����','','0','int','','6','0','');
INSERT INTO `espcms_config` VALUES ('97','6','is_keylink','���������÷�ʽ','���û���Ӱ�췢���ٶȣ���������SEO���ܣ���������','0','bool','����������(����),�ر�������','6','0','');
INSERT INTO `espcms_config` VALUES ('98','7','input_color','����Ĭ����ɫ','����д��������ɫ����ɫ��#ffffff ��ɫ��#000000 ','#000000','font','','6','0','');
INSERT INTO `espcms_config` VALUES ('104','10','order_snfont','������Ÿ�ʽ�ַ�','���ţ�ESP20**������ESPΪ��ʽ�ַ�����Ϊ����Ӣ���ַ�','ESP-','font','','3','0','');
INSERT INTO `espcms_config` VALUES ('105','6','bbs_inputtime','��ˢʱ������','����дͬһ�û�����ʱ�������ã��������','0','selectkey','0|������,30|30��,60|1����,120|2����,300|5����,600|10����,1800|30����,3600|1Сʱ,21600|����,86400|1��','5','0','');
INSERT INTO `espcms_config` VALUES ('106','2','bbs_max_list','���������б�����','','15','selectkey','5|5��,10|10��,15|15��,20|20��','5','0','');
INSERT INTO `espcms_config` VALUES ('162','10','bbs_username','��ֹ�û���','�����õ��û��������ύ���ԣ�����û�����\"|\"����','','text','','5','0','');
INSERT INTO `espcms_config` VALUES ('111','15','call_style','��ʱͨ�����ʽ','�����޸���ʽ���Զ����','1','selectkey','1|��ɫ��ʽ,2|��ɫ��ʽ,3|��ɫ��ʽ','6','0','');
INSERT INTO `espcms_config` VALUES ('129','70','scode_bgcolor','��֤�뱳��ɫ','����д��������ɫ�����ɫ��#ffffff','#B5EBFC','font','','1','0','');
INSERT INTO `espcms_config` VALUES ('115','50','input_hot','���ŵ������','�����ݴﵽ�趨�ĵ���������ᱻ��Ϊ������Ϣ������ȡ����ֵ!','100','int','','99','0','');
INSERT INTO `espcms_config` VALUES ('113','14','is_inputhtml','�������ݼ�ʱ���ɷ�ʽ','�������ڷ������޸�����ʱ������ҳ�棬�����ڿ�����̬','1','bool','���ü�ʱ����,�رռ�ʱ����','99','0','');
INSERT INTO `espcms_config` VALUES ('114','11','order_moneytype','��������','��������������ַ�','��','font','','3','0','');
INSERT INTO `espcms_config` VALUES ('118','11','home_lng','ǰ̨Ĭ��վ��','','cn','select','','1','0','lngarray');
INSERT INTO `espcms_config` VALUES ('119','12','is_rewrite','α��̬��ʽ','','0','bool','����α��̬(�뽫htaccess.txt����Ϊ.htaccess�����Ƶ���Ŀ¼���������Ŀ¼��),�ر�α��̬','1','0','');
INSERT INTO `espcms_config` VALUES ('120','5','order_menu','����������ʾ��ʽ','�����ã��������԰����޸�����','1','bool','��ʾ��������������,���ص�������������','3','0','');
INSERT INTO `espcms_config` VALUES ('121','1','member_menu','��Ա��������ʾ','�����ã��������԰����޸�������','1','bool','��ʾ��������Ա����,���ص�������Ա����','2','0','');
INSERT INTO `espcms_config` VALUES ('164','2','is_wap','WAP��վ״̬','����������������ֻ�����WAP��վ','1','bool','��ͨWAP��վ����,�ر�WAP��վ����','1','0','');
INSERT INTO `espcms_config` VALUES ('123','3','is_anonymous','����Ȩ��','�������������Աע�ἴ�ɷ���','1','bool','������������,�ر���������','5','0','');
INSERT INTO `espcms_config` VALUES ('161','8','bbsotherstr','','�����������ã������������Լ�������̳���ã�','','','','5','1','');
INSERT INTO `espcms_config` VALUES ('126','12','order_max_list','�����б���ʾ��','��Ա�����б�鿴��ʾ����������д����0������','10','int','','3','0','');
INSERT INTO `espcms_config` VALUES ('127','16','call_type','��ʱͨ��ʾ��ʽ','','1','selectkey','1|������ʾ,2|�������������ʾ','6','0','');
INSERT INTO `espcms_config` VALUES ('128','17','call_position','��ʱͨ��ʾλ��','���ѡ�������������ͣ���ֻ����ʾ���','2','selectkey','1|���,2|�ұ�','6','0','');
INSERT INTO `espcms_config` VALUES ('130','70','scode_adulterate','��֤�������','','1','bool','������֤�뱳����������,��ɫ����','1','0','');
INSERT INTO `espcms_config` VALUES ('131','70','scode_shadow','��֤����Ӱ','','0','bool','������֤��������Ӱ,��������Ӱ','1','0','');
INSERT INTO `espcms_config` VALUES ('132','70','scode_fontcolor','��֤��������ɫ','����д��������ɫ�����ɫ��#ffffff','#818CC1','font','','1','0','');
INSERT INTO `espcms_config` VALUES ('133','50','is_inputclose','������������','�����ã��򷢲�����ʱ���رյ�ǰ���ڵȴ���������','1','bool','���ü�������,���ü�������','99','0','');
INSERT INTO `espcms_config` VALUES ('134','50','cer_file','codefile','easysiteSN.cer','','string','','99','0','');
INSERT INTO `espcms_config` VALUES ('135','50','cer_key','key','key','','string','','99','0','');
INSERT INTO `espcms_config` VALUES ('137','50','is_lancode','cnĬ�ϴ���','����Ĭ�����ԵĴ��붨��','cn','string','','99','0','');
INSERT INTO `espcms_config` VALUES ('138','10','is_alonelng','��������վ','���������������վ������վ���ھ�̬��Ŀ¼��������','0','bool','���õ�������վ,���ö�������վ','1','0','');
INSERT INTO `espcms_config` VALUES ('139','3','is_enquiry_memclass','ѯ��Ȩ��','���鿪����Աѯ�۹��ܣ�','0','bool','�������Աѯ��,����������ѯ��','3','0','');
INSERT INTO `espcms_config` VALUES ('140','2','enquiry_menu','ѯ�۵�����ʾ��ʽ','���õ����󣬿������԰����޸���ʾ����','1','bool','��ʾ������ѯ������,���ص�����ѯ������','3','0','');
INSERT INTO `espcms_config` VALUES ('141','4','sitename','��վ����','����ʵ��д��վ����','�������»�����ש��','string','','1','0','');
INSERT INTO `espcms_config` VALUES ('142','6','mem_isclass','��Ա�������','��������ˣ����Աע����Ҫ��˺���ܵ�½','0','bool','���,�����','2','0','');
INSERT INTO `espcms_config` VALUES ('143','4','upfile_filetype','�����ϴ��ļ���ʽ','����\"|\"�ָ��ʽ������zip|rar|doc|xls','zip|rar|doc|xls','string','','4','0','');
INSERT INTO `espcms_config` VALUES ('144','8','title_htmlstr','','��ҳ���ʷ�ʽ���������','1','','','1','1','');
INSERT INTO `espcms_config` VALUES ('145','50','title_scode','','��֤�밲ȫ����','2','','','1','1','');
INSERT INTO `espcms_config` VALUES ('146','9','title_ucenter','','UCenter��Աע��ͬ�������������','3','','','2','1','');
INSERT INTO `espcms_config` VALUES ('147','1','title_enquiry','','ѯ����������','4','','','3','1','');
INSERT INTO `espcms_config` VALUES ('148','4','title_order','','������������','6','','','3','1','');
INSERT INTO `espcms_config` VALUES ('149','13','title_orderprin','','������ӡ��������','5','','','3','1','');
INSERT INTO `espcms_config` VALUES ('150','8','title_img','','�ϴ�ͼƬ����','','','','4','1','');
INSERT INTO `espcms_config` VALUES ('151','1','title_article','','���ݷ�����������','','','','6','1','');
INSERT INTO `espcms_config` VALUES ('152','8','title_mail','','�ʼ����Ͳ�������','','','','6','1','');
INSERT INTO `espcms_config` VALUES ('153','13','title_call','','��ʱͨ��������','','','','6','1','');
INSERT INTO `espcms_config` VALUES ('154','10','smtp_type','�ʼ����ͷ�ʽ','','2','selectkey','1|ͨ��PHP��������(���²���������д�û���������),2|ͨ������SMTP�ʼ�����������(��������ѡ�����),3|ͨ��Sendmail�����ʼ�','6','0','');
INSERT INTO `espcms_config` VALUES ('155','10','mail_cat','�ʼ�ͷ�ķָ���','','1','selectkey','1|ʹ�� CRLF ��Ϊ�ָ���(ͨ��Ϊ Windows ����),2|ʹ�� LF ��Ϊ�ָ���(ͨ��Ϊ Unix/Linux����),3|ʹ�� CR ��Ϊ�ָ���(ͨ��Ϊ Mac ����)','6','0','');
INSERT INTO `espcms_config` VALUES ('158','8','mem_isaddress','��������ѡ��','����������Ա���ҵ���������������ѡ�񣬷���������д','1','bool','�������е�������ѡ��,�ɻ�Ա������д','2','0','');
INSERT INTO `espcms_config` VALUES ('156','11','smtp_port','SMTP�������˿�','','25','font','','6','0','');
INSERT INTO `espcms_config` VALUES ('157','11','mail_send','��������','����д�����ʼ�ȫ�ƣ���user@ecisp.cn','','string','','6','0','');
INSERT INTO `espcms_config` VALUES ('159','1','mem_isclose','��Ա����״̬','��رգ�����վ��������ʹ����ػ�Ա���й���','1','bool','������Ա����,�رջ�Ա����','2','0','');
INSERT INTO `espcms_config` VALUES ('165','7','mem_did','ע���������ID','�����ͬ����ʹ��\"���Ա�ʶ����ҳ����ID\"��ʹ�á�,����������:cn:1,en:2','cn:0,en:0','string','','2','0','');
INSERT INTO `espcms_config` VALUES ('166','7','bbs_ismail','���������ʼ�����','','1','bool','�����������Թ���Ա��������,�ر��������Թ���Ա��������','5','0','');
INSERT INTO `espcms_config` VALUES ('167','6','order_ismember','��Ա����','�翪����Ա����������Ҫע�������ύ��������������ע�ἴ���ύ','1','bool','������Ա����,�رջ�Ա����','3','0','');
INSERT INTO `espcms_config` VALUES ('168','18','is_getcache','GETģ�建��','�������ɾ�̬ҳ�����ݽϴ���վ���ô˹���','1','bool','����GETģ�建��,�ر�GETģ�建��','1','0','');
INSERT INTO `espcms_config` VALUES ('169','50','sitecoedb','Զ��ͨ����Կ','�����ò�С��15λ��Զ��ͨ����Կ������վȺ����','','string','','1','0','');
INSERT INTO `espcms_config` VALUES ('170','6','img_dirtype','�ļ��б�������','������ͼƬ�϶࣬����ѡ�񡰰���/��/�ձ��桱','y','selectkey','y|����/��/�ձ���,m3|����/�±���,d|����/���ձ���,m|�������ձ���,m1|�����±���,m2|���걣��','4','0','');
INSERT INTO `espcms_config` VALUES ('171','7','img_cfiletype','�ļ������ɷ�ʽ','','d','selectkey','d|���°����ڸ�ʽ����,f|���ϴ��ļ�������(�������Ӣ�Ļ��������Զ�����������)','4','0','');
INSERT INTO `espcms_config` VALUES ('172','14','img_iszoom','ͼƬ���Է�ʽ','','1','selectkey','1|ͼƬ�ȱ�����,2|ͼƬ��������,3|ͼƬ��߶�������','4','0','');
INSERT INTO `espcms_config` VALUES ('173','2','mem_regisseccode','��Աע����֤��','���鿪����֤���Է�ֹ����ע��','1','bool','������Աע����֤��,���û�Աע����֤��','2','0','');
INSERT INTO `espcms_document` VALUES ('2','cn','50','8','1','3','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20120608155029931','�˽�����','�˽�����','','','','','','','','','','0.00','0.00','0','1314706016','1339141829','base_read','2','about','1');
INSERT INTO `espcms_document` VALUES ('3','cn','50','8','1','8','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20120608154557974','��ϵ����','��ϵ����','','','','','','','','','','0.00','0.00','2','1314706247','1339141557','base_read','3','contact-us','1');
INSERT INTO `espcms_document` VALUES ('4','cn','50','8','1','17','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20120608154827953','��˾����','��˾����','','','','','','','','EarcLink���������ǹ���֪��ESPCMS��KUBCMS�����㽨վϵͳ�Ŀ����̣��Ӹ��˿�����ӵ��רҵ�ķ����Ŷӣ������߹���ʮ���ꡣ����ESPCMS�Ƚ�վ��Ʒ�ı�ݺ�ǿ���ܣ�EarcLink��ʼ�������û�����֪��EarcLink�����ڻ�������վ���������۵Ĵ������顢��ӵ��רҵ����վ�����Ŷӣ�����Ϊ�û��ṩרҵ����վ���衢SEO�Ż���������������Ȼ�������������ط���������ΪTCL��H3C����ħ����Ѷ���ϲ����š��𿭹��ʡ��칤���š���Ƽ���һ��֪���Ŀͻ��ṩ��ط��񣬻�����ڶ�ͻ��Ŀ϶���EarcLink������Ƶ������Ʒ��һЩ�������⣬��ͨ�������û��Ľ����ʵ�ʲ��ԣ����ǲ��ϸĽ����ǵ������Ʒ�����죬�г���10�����վÿ����ʹ�����ǵ����������վӪ�����ռ��ͻ���Ϣ�����ײ�Ʒ�����ͻ�����ȵ�...��Ȼ���ǻ��ڲ�ͣ����Ӹ���Ĺ��ܺͲ������Ʋ�Ʒ���飬�����ǵ�Ŀ�껹û�дﵽ��������õ���ʵ�õĻ�������վƽ̨��','','0.00','0.00','16','1314706633','1339141707','base_read','4','about/company','1');
INSERT INTO `espcms_document` VALUES ('5','cn','50','8','1','18','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20110830210440746','��չ����','��չ����','','','','','','','','','','0.00','0.00','1','1314706688','1314709480','base_read','5','about/history','1');
INSERT INTO `espcms_document` VALUES ('6','cn','50','8','1','19','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20120209124754799','��������','��������','','','','','','','','','','0.00','0.00','1','1314706746','1328762874','base_read','6','about/treaty','1');
INSERT INTO `espcms_document` VALUES ('7','cn','50','8','1','20','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20120608154544245','��ϵ��Ϣ','��ϵ��Ϣ','','','','','','','','','','0.00','0.00','6','1314706842','1339141544','base_read','7','contact-us/information','1');
INSERT INTO `espcms_document` VALUES ('8','cn','50','8','1','21','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20110830211533328','��ͼָʾ','��ͼָʾ','','','','','','','','','','0.00','0.00','0','1314706903','1314710133','base_read','8','contact-us/map','1');
INSERT INTO `espcms_document` VALUES ('9','cn','50','8','1','22','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20110830220201547','��Ʒ��ʾ','��Ʒ��ʾ','','','','','','','','','','0.00','0.00','0','1314706946','1314712921','base_read','9','goods/chanpinyanshi','1');
INSERT INTO `espcms_document` VALUES ('10','cn','50','1','1','9','0','0','0','','1','0','1','1','0','0','0','0','0','1','SN20110830213619465','Facebook�����û�Ѱ����վ©�� �ѽ���4����Ԫ','','','','','','','','Facebook����־Ը����Э��������վ©�������ռƻ�����һ��&ldquo;��bugӮ��&rdquo;����˿Ƽ�Ѷ ����ʱ��8��30���賿��Ϣ��Facebook��һ͸¶���Ѿ���Э','','','0.00','0.00','1','1314711321','1314711379','article_read','10','news/business','1');
INSERT INTO `espcms_document` VALUES ('11','cn','50','1','1','9','0','0','0','','1','0','1','1','0','0','0','0','0','1','SN20110830213821901','ŵ�����������������¶�����ܻ��г��ݶ�','','','','','upfile/2011/08/30/20110830213802_673.jpg','','','��N9���Թܿ�ŵ����δ�������˼·����������ý����췢�����³ƣ������⻼��ŵ���Ǽ����Ƴ��׿�Windows Phone���ܻ��������ֻ���ͷ���ⳡ�����У�','','','0.00','0.00','2','1314711460','1314711501','article_read','11','news/business','1');
INSERT INTO `espcms_document` VALUES ('12','cn','50','1','1','9','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830213859527','Windows 8����ϸ���ع⣺�˵����ܸ�ֱ��','','','','','','','','Windows 8����ϸ���ع⣺�˵����ܸ�ֱ�����˿Ƽ�Ѷ ����ʱ��8��30���賿��Ϣ��΢����Ŀ�����ܼ�������˹','','','0.00','0.00','2','1314711483','1314711539','article_read','12','news/business','1');
INSERT INTO `espcms_document` VALUES ('13','cn','50','1','1','9','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830213942941','���߷���˾�����ͣ���ȡ50���������������7��','','','','','','','','���죬�������Ժ�����������Ժ���Ϸ��������ڰ���Σ���������Ϣϵͳ��ȫ���°���Ӧ�÷�����������Ľ��͡�����˾�����͹涨���ڿͷǷ�','','','0.00','0.00','0','1314711541','1314711582','article_read','13','news/business','1');
INSERT INTO `espcms_document` VALUES ('14','cn','50','1','1','9','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830214001296','����˾׷���й���������û��Ż���������','','','','','','','','��������Ƽ���Ѷ��վPCWorld���췢�����³ƣ��й�һֱ����������&ldquo;������&rdquo;��ȡ֤�ѡ�����������๫˾�Ե�������е��޿��κ�;������','','','0.00','0.00','1','1314711583','1314711601','article_read','14','news/business','1');
INSERT INTO `espcms_document` VALUES ('15','cn','50','1','1','9','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830214043509','���񲿹���������ҵ�Խ���������ʱ����Ὺ��','','','','','','','','�����վ��е�2011APEC��С��ҵ�������������ݽ��У����񲿵����������Ϣ��˾��Ѳ��Ա���ֺ���ʾ��&ldquo;ʮ����&rdquo;�ڼ佫�ǵ���������ҵ������','','','0.00','0.00','3','1314711601','1314711643','article_read','15','news/business','1');
INSERT INTO `espcms_document` VALUES ('16','cn','50','1','1','10','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830214134830','HTC������ϯ���¹٣��û��������ڼ���','','','','','','','','����ʱ��8��30����Ϣ���ݹ���ý�屨������������������ֻ���Ƹ�����˹����&middot;����(Scott Croyle)��ʾ��������Ƹ߲㷢���仯�������ֻ����˼','','','0.00','0.00','0','1314711683','1314711694','article_read','16','news/media','1');
INSERT INTO `espcms_document` VALUES ('17','cn','50','1','1','10','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830214152858','�ǲ�˹������ĺ��ں�ƻ��','','','','','','','','����ʱ��8��30��������Ϣ���������Ƽ�������վBusinessInsider����������ƻ��ʵϰ������ɭ&middot;����(Jonathan Berger)��ǰ������һ�����£�ͻ����ʷ�ٷ�&mid','','','0.00','0.00','1','1314711695','1314711712','article_read','17','news/media','1');
INSERT INTO `espcms_document` VALUES ('18','cn','50','1','1','10','0','0','0','','1','0','1','1','0','0','0','0','0','1','SN20110830214326619','���Ż�CEO�ʹ�����ı������ 2013����ְ','','','','','upfile/2011/08/30/20110830214223_287.jpg','','','��Ѷ�Ƽ�Ѷ(����)����ʱ��8��30����Ϣ���������Ƽ�������վSilicon Alley Insider(SAI)������һ��֪����ʿ��һ͸¶���Ż�CEO���޶�','','','0.00','0.00','0','1314711713','1314711806','article_read','18','news/media','1');
INSERT INTO `espcms_document` VALUES ('19','cn','50','1','1','10','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830214302563','�ȸ�CEO���棺�ȸ�ֻ������1%Ǳ��','','','','','','','','8��30�գ��ݹ���ý�屨�����ڽ�����Щʱ��������������ϯִ�й�ʱ���ȸ蹫˾(Google Inc.)���ϴ�ʼ������(Larry Page)��ŵ�������һ�����������ͷ����','','','0.00','0.00','4','1314711744','1314711782','article_read','19','news/media','3');
INSERT INTO `espcms_document` VALUES ('20','cn','50','1','1','10','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830214356241','���ֵ��ŵ����߹ܲ� ����CEO','','','','','','','','����ʱ��8��30�������Ϣ(������)���ֵ��Ź�˾(Batelco)��ǰ����������߹ܲ㣬���������μ�����ϯִ�йٱ˵�&middot;���ﰢŵ����˹(Peter Kaliaropoulos)Ϊ','','','0.00','0.00','0','1314711829','1314711836','article_read','20','news/media','1');
INSERT INTO `espcms_document` VALUES ('21','cn','50','1','1','10','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20120608154152905','��������VMware�����Ƴ��ƻ�����ʩ����','','','','','','','','?����ʱ��8��30�������Ϣ���������ڽ�����Щʱ����VMware�����Ƴ���һ���ƻ�����ʩ���񣬼�������ҵ����PC�����������չ�����������ʸ��ߵ���','','','0.00','0.00','3','1314711837','1339141312','article_read','21','news/media','2');
INSERT INTO `espcms_document` VALUES ('22','cn','50','8','1','26','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20110830220458725','ƻ�� iphone 4��','ƻ���ֻ�','','','','','','','','','','0.00','0.00','0','1314712814','1314713098','base_read','22','goods/pingguoshouji','1');
INSERT INTO `espcms_document` VALUES ('23','cn','50','3','1','23','0','0','0','25,24,','1','0','1','1','1','0','0','0','0','','SN20110830220536848','ZTE/����V880','','','','','upfile/2011/08/30/20110830220714_201.jpg','','','����V880��Ϊ����3D���ٹ��ܣ������ڶ�㴥���������Ҳ��Ȧ�ɵ㡣��������������MOTO ��̱���Ϊ�Աȡ�������̱��Ѿ�ˢ��һ������Android 2.2 ROM','','','1200.00','1059.00','3','1314713136','1314714070','goods_read','23','goods/moblie','1');
INSERT INTO `espcms_document` VALUES ('24','cn','50','3','1','23','0','0','0','23,','1','0','1','1','1','0','0','0','0','2','SN20110830220920731','Nokia/ŵ����C5-03�����','','','','','upfile/2011/08/30/20110830221115_303.jpg','','','ŵ����C5-03�䱸����1000����ʱ�ĵ�أ����۴���ʱ��Ϊ600Сʱ���ڱ��߶�����ֻ�����������ڼ䣬ÿ���Լ20���ӵ�ͨ��ʱ�����2Сʱ������ʱ�䣬','','','1796.00','1200.00','2','1314713360','1314714637','goods_read','24','goods/moblie','1');
INSERT INTO `espcms_document` VALUES ('25','cn','50','3','1','23','0','0','0','25,24,23,','1','0','1','1','1','0','0','0','0','2','SN20110830221319136','HTC Desire S','','','','','upfile/2011/08/30/20110830221819_399.jpg','','','?HTCҰ��S��ΪҰ��������汾�̳���ǰ����������ͣ��ֱ��ʵ�����Լ�ϵͳ�汾�������øû��������һ����ǿ����Ŀǰ�߶�Andorid�콢Ƶ���Ľ���','','','2500.00','2200.00','4','1314713599','1339138367','goods_read','25','goods/moblie','1');
INSERT INTO `espcms_document` VALUES ('26','cn','50','3','1','23','0','0','0','25,24,23,','1','0','1','1','1','0','0','0','0','','SN20110830222325434','HTC S510e','','','','','upfile/2011/08/30/20110830222415_540.jpg','','','HTC ����S֧��720p��MP4��Ƶ�ļ����ţ�ͬʱ����֧��3gp��mp4��WMV9��avi��MP4��MP3��װ����ʽ����Ƶ�ļ����ţ�����Ƶ�ļ����ű����ϣ������Բ���mp3��wav��w','','','3200.00','3100.00','0','1314714205','1314714335','goods_read','26','goods/moblie','1');
INSERT INTO `espcms_document` VALUES ('27','cn','50','3','1','23','0','0','0','26,25,24,23,','1','0','1','1','1','0','0','0','0','','SN20110830222536894','HTC Flyer ƽ�����','','','','','upfile/2011/08/30/20110830222841_197.jpg','','','���˵������7��ƽ������г��ĳ����ߣ�ӵ�ж��г����ٶ�������۹⣬��ôHTC��Ƶ�����7��ƽ������г��ķ����ߣ�����HTC Sense���������һ������','','','3600.00','3200.00','2','1314714336','1339139176','goods_read','27','goods/moblie','1');
INSERT INTO `espcms_document` VALUES ('28','cn','50','7','1','13','0','0','0','','1','0','1','0','0','0','0','0','0','','SN20120608145207741','PHP����Ա','','','','','','','','1�����ŶӾ���Ʒ�ж�������ͨ�������ǿ�����Ͻ���̬����֪������2����ͨMYSQL���ݿ⣻�˽�ʹ��Linux��ϵͳ��3����Ϥ����ϵͳ����ԭ��������','1�����ŶӾ���Ʒ�ж�������ͨ�������ǿ�����Ͻ���̬����֪������<br/>2����ͨMYSQL���ݿ⣻�˽�ʹ��Linux��ϵͳ��<br/>3����Ϥ����ϵͳ����ԭ�������š��̳ǡ���̳���˲���վ��...<br/>4���ж�����������Ʒ���ȣ�<br/>5�������������ϻ�������̾��飻','','0.00','0.00','0','1314714701','1339138327','job_read','28','job/technology','1');
INSERT INTO `espcms_document` VALUES ('29','cn','50','7','1','13','0','0','0','','1','0','1','0','0','0','0','0','0','','SN20120608145245940','C���Գ���Ա','','','','','','','','1�����ŶӾ���Ʒ�ж�������ͨ�������ǿ�����Ͻ���̬����֪������2��linux/unixƽ̨C/C++�������������������ϣ�������Ϥ��ƽ̨�µ�unixϵͳ(AIX/SCO u','1�����ŶӾ���Ʒ�ж�������ͨ�������ǿ�����Ͻ���̬����֪������<br/>2��linux/unixƽ̨C/C++�������������������ϣ�������Ϥ��ƽ̨�µ�unixϵͳ(AIX/SCO unix/HP unix/UnixWare)�������ϣ�<br/>3����������Android��IPhone�ֻ����������<br/>4����������SQL���ԣ���ϤMYSQL���ݿ⣻<br/>5������C��JAVA��˱��������ȿ��ǣ�','','0.00','0.00','0','1314714711','1339138365','job_read','29','job/technology','1');
INSERT INTO `espcms_document` VALUES ('30','cn','50','7','1','14','0','0','0','','1','0','1','0','0','0','0','0','0','','SN20120608150613162','�ͷ�רԱ','','','','','','','','1�����ŶӾ���Ʒ�ж����������ġ���ͨ�������ǿ��2�����ջ�������ͨ���ɣ�3���Կͻ�����ȫ��λ֧�֣�����֧�֡���ѵ֧�֡��ۺ�֧�֣���4��','1�����ŶӾ���Ʒ�ж����������ġ���ͨ�������ǿ��<br/>2�����ջ�������ͨ���ɣ�<br/>3���Կͻ�����ȫ��λ֧�֣�����֧�֡���ѵ֧�֡��ۺ�֧�֣���<br/>4���ܹ�Ŭ����ɹ�˾�ƶ�������Ŀ�ꣻ<br/>5���л���������ķ����飬����ҳ�л����˽�����ȿ��ǣ�','','0.00','0.00','0','1314714731','1339139173','job_read','30','job/marketing','1');
INSERT INTO `espcms_document` VALUES ('31','cn','50','7','1','14','0','0','0','','1','0','1','0','0','0','0','0','0','','SN20120608145211857','��ĿͶ��רԱ','','','','','','','','1�����ŶӾ���Ʒ�ж�������ͨ�������ǿ��2�����ڱ���רҵ��ҵ���н��ڼ�������Ĺ������飻3����ͨ����׼����ò������4���ܹ���Ӧ�Ϻ���','1�����ŶӾ���Ʒ�ж�������ͨ�������ǿ��<br/>2�����ڱ���רҵ��ҵ���н��ڼ�������Ĺ������飻<br/>3����ͨ����׼����ò������<br/>4���ܹ���Ӧ�Ϻ����������ز����ڵĳ������','','0.00','0.00','1','1314714740','1339138331','job_read','31','job/marketing','1');
INSERT INTO `espcms_document` VALUES ('32','cn','50','4','1','15','0','0','0','','1','0','1','0','0','0','0','0','0','','SN20120608154150370','ESPCMSԶ����ѵ���','','','','','','','','�����С��680KB�汾��V3.0.2 ����������ʽ��˵������ӭ��ͨ���������ʱ��Ѳμ�ESPCMSԶ����ѵ���й�Զ����ѵ��Ϣ���ע��̳������','�����С��680KB<br/>�汾��V3.0.2 ����������ʽ��<br/>˵������ӭ��ͨ���������ʱ��Ѳμ�ESPCMSԶ����ѵ���й�Զ����ѵ��Ϣ���ע��̳������','','0.00','0.00','1','1314714893','1339141310','download_read','32','download/download','1');
INSERT INTO `espcms_document` VALUES ('33','cn','50','4','1','15','0','0','0','','1','0','1','0','0','0','0','0','0','','SN20110830223606943','EasySiteServer���������ɻ���','','','','','','','','�����С��10.18MB�汾��1.2 ��ʽ�����ʱ�䣺2011-08-30 02:48:21˵������������������°��Apache��������Apache/2.0.58 (Win32)��PHP/5.2.11��MySQL&nbsp;�ͻ��˰汾:','�����С��10.18MB<br/>�汾��1.2 ��ʽ��<br/>˵������������������°��Apache��������Apache/2.0.58 (Win32)��PHP/5.2.11��MySQL <br/>�ͻ��˰汾��5.0.51a��phpMyAdmin3.2.0.1��Zend Optimizer v3.3.3��Zend Debugger v5.2.6 ����������Ĭ����ɣ���ɫ���ֱ��ʹ�ã�<br/>˵����������޷����������������������Ƿ�ռ��80�˿ڣ���IIS�����ʹ��˵����鿴������֧���йر�ϵͳ�������⣡','','0.00','0.00','0','1314714921','1314714966','download_read','33','download/download','1');
INSERT INTO `espcms_document` VALUES ('34','en','50','8','1','27','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20110830231527612','About EarcLink','About EarcLink','','','','upfile/2011/08/30/20110830215515_989.jpg','','','','EarcLink was founded in Shenzhen, Hong Kong-owned technology company, we have developed siting products to help enterprises easily build a website designer and marketing platform. Jianzhan products such as ESPCMS convenient and powerful features, hence the name, many users, the industry established a good reputation and a strong number of users.<br/>Our first product was introduced in 2002, but early in this two years ago, our story begins.<br/>EarcLink founder of the beginning of not doing software development, our interest focused on the research fields related to electronic commerce (the use of eye tracking analysis of user behavior and interests). As found in many sites, regardless of the surface beautifully designed, or who had poor website design','','0.00','0.00','0','1314715941','1314717327','base_read','34','aboutearclink','1');
INSERT INTO `espcms_document` VALUES ('35','en','50','8','1','32','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20110830231006537','About EarcLink','About EarcLink','','','','','','','','','','0.00','0.00','0','1314716454','1314717006','base_read','35','aboutearclink/aboutearclink','1');
INSERT INTO `espcms_document` VALUES ('36','en','50','8','1','33','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20110830231437402','Employee directory','Employee directory','','','','','','','','','','0.00','0.00','0','1314716479','1314717277','base_read','36','aboutearclink/employeedirectory','1');
INSERT INTO `espcms_document` VALUES ('37','en','50','3','1','41','0','0','0','','1','0','1','1','1','0','0','0','0','','SN20110830220536848','ZTEV880','','','','','upfile/2011/08/30/20110830220714_201.jpg','','','','','','1200.00','1059.00','2','1314713136','1314718393','goods_read','23','products/cameraphotovideo','1');
INSERT INTO `espcms_document` VALUES ('38','en','50','3','1','41','0','0','0','41,40,39,38,37,','1','0','1','1','1','0','0','0','0','','SN20110830220920731','NokiaC5-03','','','','','upfile/2011/08/30/20110830221115_303.jpg','','','','','','1796.00','1200.00','0','1314713360','1314718447','goods_read','24','products/cameraphotovideo','1');
INSERT INTO `espcms_document` VALUES ('39','en','50','3','1','41','0','0','0','41,40,39,37,','1','0','1','1','1','0','0','0','0','','SN20110830221319136','HTC Desire S','','','','','upfile/2011/08/30/20110830221819_399.jpg','','','','','','2500.00','2200.00','1','1314713599','1314718549','goods_read','25','products/cameraphotovideo','1');
INSERT INTO `espcms_document` VALUES ('40','en','50','3','1','41','0','0','0','41,40,39,38,37,','1','0','1','1','1','0','0','0','0','','SN20110830222325434','HTC S510e','','','','','upfile/2011/08/30/20110830222415_540.jpg','','','','','','3200.00','3100.00','3','1314714205','1314718499','goods_read','26','products/cameraphotovideo','1');
INSERT INTO `espcms_document` VALUES ('41','en','50','3','1','41','0','0','0','41,40,39,','1','0','1','1','1','0','0','0','0','','SN20110830222536894','HTC Flyer','','','','','upfile/2011/08/30/20110830222841_197.jpg','','','','','','3600.00','3200.00','5','1314714336','1314718509','goods_read','27','products/cameraphotovideo','1');
INSERT INTO `espcms_document` VALUES ('44','en','50','1','1','34','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830233848486','Facebook encourages users to search for website vulnerability has been award $ 40,000','','','','','','','','','','','0.00','0.00','0','1314711321','1314718728','article_read','10','news/business','1');
INSERT INTO `espcms_document` VALUES ('45','en','50','1','1','34','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830233922148','Nokia attempting to use the design of intelligent machines to regain market share','','','','','upfile/2011/08/30/20110830213802_673.jpg','','','','','','0.00','0.00','0','1314711460','1314718762','article_read','11','news/business','2');
INSERT INTO `espcms_document` VALUES ('46','en','50','1','1','34','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830233949560','More details of Windows 8 exposure: the menu features more intuitive','','','','','','','','','','','0.00','0.00','0','1314711483','1314718789','article_read','12','news/business','1');
INSERT INTO `espcms_document` VALUES ('56','en','50','7','1','42','0','0','0','','1','0','1','0','0','0','0','0','0','','SN20110830234521910','HR &amp; Compliance Manager (Station in Dongguan)','','','','','','','','RequirmentStation at&nbsp;DongguanF.7 or above&nbsp;At least 5&nbsp;years relevant experience (Garment field is preferred), in which minimize 3 years at managerial level (Preferred to have working','At least 5 years relevant experience (Garment field is preferred), in which minimize 3 years at managerial level (Preferred to have working experience in China)<br/>Experience in providing all-rounded human resources &amp;amp; administration matters<br/>Independent, proactive, positive, result-oriented, excellent interpersonal and problem solving skills<br/>Proficiency in both spoken and written English, Chinese and Mandarin','','0.00','0.00','1','1314719074','1314719121','job_read','56','careers/adminhr','1');
INSERT INTO `espcms_document` VALUES ('50','en','50','1','1','35','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830234034410','HTC\'s new Chief Innovation Officer: user experience is more important than technology','','','','','','','','','','','0.00','0.00','2','1314711683','1314718834','article_read','16','news/entertainment','1');
INSERT INTO `espcms_document` VALUES ('51','en','50','1','1','35','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830234101370','Steve: I really care about Apple','','','','','','','','','','','0.00','0.00','0','1314711695','1314718861','article_read','17','news/entertainment','1');
INSERT INTO `espcms_document` VALUES ('52','en','50','1','1','35','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830234143682','Yahoo CEO Bartz passed in 2013 leaving no intention to seek re-election','','','','','upfile/2011/08/30/20110830214223_287.jpg','','','','','','0.00','0.00','0','1314711713','1314718903','article_read','18','news/entertainment','1');
INSERT INTO `espcms_document` VALUES ('53','en','50','1','1','35','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830234301263','Google CEO Larry Page: Google played only a 1% potential','','','','','','','','','','','0.00','0.00','0','1314711744','1314718981','article_read','19','news/entertainment','3');
INSERT INTO `espcms_document` VALUES ('54','en','50','1','1','35','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830234237994','Bahrain Telecom CEO replaced senior management to adjust','','','','','','','','','','','0.00','0.00','2','1314711829','1314718957','article_read','20','news/entertainment','1');
INSERT INTO `espcms_document` VALUES ('55','en','50','1','1','35','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830234216101','Dell and VMware launch cloud infrastructure services','','','','','','','','','','','0.00','0.00','1','1314711837','1314718936','article_read','21','news/entertainment','3');
INSERT INTO `espcms_document` VALUES ('57','en','50','4','1','44','0','0','0','','1','0','1','0','0','0','0','0','0','','SN20110830234856354','Gallery Plugin','','','','','','','','Phoca Gallery Plugin is a Joomla! 1.5 plugin to show categories or images of Phoca Gallery in an article content. For easier aadding of images into article you can use Phoca Gallery Button Plugin.','Phoca Gallery Plugin is a Joomla! 1.5 plugin to show categories or images of Phoca Gallery in an article content. For easier aadding of images into article you can use Phoca Gallery Button Plugin.','','0.00','0.00','2','1314719293','1314719336','download_read','57','software/plugins','1');
INSERT INTO `espcms_document_album` VALUES ('7','23','����ͼ','','upfile/2011/08/30/20110830220718_580.jpg','1314714070');
INSERT INTO `espcms_document_album` VALUES ('6','23','�Ա�ͼ','��HTC�ֻ��Ա�ͼƬ','upfile/2011/08/30/20110830220721_977.jpg','1314714070');
INSERT INTO `espcms_document_album` VALUES ('18','24','ȫ�ߴ�ͼƬ','','upfile/2011/08/30/20110830221115_303.jpg','1314714637');
INSERT INTO `espcms_document_album` VALUES ('17','24','����ͼƬ','','upfile/2011/08/30/20110830221119_107.jpg','1314714637');
INSERT INTO `espcms_document_album` VALUES ('16','24','����ͼƬ','','upfile/2011/08/30/20110830221123_939.jpg','1314714637');
INSERT INTO `espcms_document_album` VALUES ('15','25','','','upfile/2011/08/30/20110830221819_399.jpg','1314714631');
INSERT INTO `espcms_document_album` VALUES ('14','25','','','upfile/2011/08/30/20110830221811_509.jpg','1314714631');
INSERT INTO `espcms_document_album` VALUES ('10','26','','','upfile/2011/08/30/20110830222428_951.jpg','1314714335');
INSERT INTO `espcms_document_album` VALUES ('11','26','','','upfile/2011/08/30/20110830222415_540.jpg','1314714335');
INSERT INTO `espcms_document_album` VALUES ('12','27','','','upfile/2011/08/30/20110830222841_197.jpg','1314714565');
INSERT INTO `espcms_document_album` VALUES ('13','27','','','upfile/2011/08/30/20110830222837_953.jpg','1314714565');
INSERT INTO `espcms_document_album` VALUES ('31','37','','','upfile/2011/08/30/20110830220721_977.jpg','1314718393');
INSERT INTO `espcms_document_album` VALUES ('30','37','','','upfile/2011/08/30/20110830220718_580.jpg','1314718393');
INSERT INTO `espcms_document_album` VALUES ('34','38','','','upfile/2011/08/30/20110830221123_939.jpg','1314718447');
INSERT INTO `espcms_document_album` VALUES ('33','38','','','upfile/2011/08/30/20110830221119_107.jpg','1314718447');
INSERT INTO `espcms_document_album` VALUES ('32','38','','','upfile/2011/08/30/20110830221115_303.jpg','1314718447');
INSERT INTO `espcms_document_album` VALUES ('42','39','','','upfile/2011/08/30/20110830221811_509.jpg','1314718549');
INSERT INTO `espcms_document_album` VALUES ('41','39','','','upfile/2011/08/30/20110830221819_399.jpg','1314718549');
INSERT INTO `espcms_document_album` VALUES ('38','40','','','upfile/2011/08/30/20110830222415_540.jpg','1314718499');
INSERT INTO `espcms_document_album` VALUES ('37','40','','','upfile/2011/08/30/20110830222428_951.jpg','1314718499');
INSERT INTO `espcms_document_album` VALUES ('40','41','','','upfile/2011/08/30/20110830222837_953.jpg','1314718509');
INSERT INTO `espcms_document_album` VALUES ('39','41','','','upfile/2011/08/30/20110830222841_197.jpg','1314718509');
INSERT INTO `espcms_document_attr` VALUES ('1','28','','1');
INSERT INTO `espcms_document_attr` VALUES ('2','29','','1');
INSERT INTO `espcms_document_attr` VALUES ('3','30','','1');
INSERT INTO `espcms_document_attr` VALUES ('4','31','','1');
INSERT INTO `espcms_document_attr` VALUES ('5','32','http://www.ecisp.cn/download/mikogo.rar','');
INSERT INTO `espcms_document_attr` VALUES ('6','33','http://www.ecisp.cn/download/EasySiteServer.7z','');
INSERT INTO `espcms_document_attr` VALUES ('9','56','','1');
INSERT INTO `espcms_document_attr` VALUES ('10','57','http://www.ecisp.cn/html/cn/download/','');
INSERT INTO `espcms_document_content` VALUES ('1','2','&lt;p&gt;&lt;strong&gt;������˭��&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;EarcLink���������ǹ���֪��ESPCMS��KUBCMS�����㽨վϵͳ�Ŀ����̣��Ӹ��˿�����ӵ��רҵ�ķ����Ŷӣ������߹���ʮ���ꡣ����ESPCMS�Ƚ�վ��Ʒ�ı�ݺ�ǿ���ܣ�EarcLink��ʼ�������û�����֪��&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;���ǻ�����ʲô��&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;EarcLink�����ڻ�������վ���������۵Ĵ������顢��ӵ��רҵ����վ�����Ŷӣ�����Ϊ�û��ṩרҵ����վ���衢SEO�Ż���������������Ȼ�������������ط���������ΪTCL��H3C����ħ����Ѷ���ϲ����š��𿭹��ʡ��칤���š���Ƽ���һ��֪���Ŀͻ��ṩ��ط��񣬻�����ڶ�ͻ��Ŀ϶���&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;���ǵ�Ŀ�ꣿ&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;EarcLink������Ƶ������Ʒ��һЩ�������⣬��ͨ�������û��Ľ����ʵ�ʲ��ԣ����ǲ��ϸĽ����ǵ������Ʒ�����죬�г���10�����վÿ����ʹ�����ǵ����������վӪ�����ռ��ͻ���Ϣ�����ײ�Ʒ�����ͻ�����ȵ�...&lt;/p&gt;\n&lt;p&gt;��Ȼ���ǻ��ڲ�ͣ����Ӹ���Ĺ��ܺͲ������Ʋ�Ʒ���飬�����ǵ�Ŀ�껹û�дﵽ��������õ���ʵ�õĻ�������վƽ̨��&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;���������Ƽ����޹�˾&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;EARCLINK SOFTWARE TECHNOLOGY CO., LIMITED&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('2','4','&lt;p&gt;&lt;strong&gt;������˭��&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;EarcLink���������ǹ���֪��ESPCMS��KUBCMS�����㽨վϵͳ�Ŀ����̣��Ӹ��˿�����ӵ��רҵ�ķ����Ŷӣ������߹���ʮ���ꡣ����ESPCMS�Ƚ�վ��Ʒ�ı�ݺ�ǿ���ܣ�EarcLink��ʼ�������û�����֪��&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;���ǻ�����ʲô��&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;EarcLink�����ڻ�������վ���������۵Ĵ������顢��ӵ��רҵ����վ�����Ŷӣ�����Ϊ�û��ṩרҵ����վ���衢SEO�Ż���������������Ȼ�������������ط���������ΪTCL��H3C����ħ����Ѷ���ϲ����š��𿭹��ʡ��칤���š���Ƽ���һ��֪���Ŀͻ��ṩ��ط��񣬻�����ڶ�ͻ��Ŀ϶���&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;���ǵ�Ŀ�ꣿ&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;EarcLink������Ƶ������Ʒ��һЩ�������⣬��ͨ�������û��Ľ����ʵ�ʲ��ԣ����ǲ��ϸĽ����ǵ������Ʒ�����죬�г���10�����վÿ����ʹ�����ǵ����������վӪ�����ռ��ͻ���Ϣ�����ײ�Ʒ�����ͻ�����ȵ�...&lt;/p&gt;\n&lt;p&gt;��Ȼ���ǻ��ڲ�ͣ����Ӹ���Ĺ��ܺͲ������Ʋ�Ʒ���飬�����ǵ�Ŀ�껹û�дﵽ��������õ���ʵ�õĻ�������վƽ̨��&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;���������Ƽ����޹�˾&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;EARCLINK SOFTWARE TECHNOLOGY CO., LIMITED&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('3','5','&lt;p&gt;ESPCMS�ķ�չ�켣��&lt;/p&gt;\n&lt;p&gt;2004��6�£�&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&amp;nbsp;Enterprise �Ƽ���1.0�汾�����ṩ��ҵ����&lt;/p&gt;\n&lt;p&gt;2005��8�£�&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&amp;nbsp;Enterprise �Ƽ���2.0�汾�����ṩASP��PHP������ͬ�İ汾&lt;/p&gt;\n&lt;p&gt;2007��9�£��������������&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&amp;nbsp;Enterprise �Ƽ���3.0�汾����ȡ����ASP�汾��רע��չPHP��Դ�汾&lt;/p&gt;\n&lt;p&gt;2008��4�£�&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&amp;nbsp;Enterprise �Ƽ���3.1�汾�����Խ������ȫ�µ������������˶������&lt;/p&gt;\n&lt;p&gt;2008��6�£�&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&amp;nbsp;Enterprise �Ƽ���3.2�汾���������ʼ����ӻ��༭&lt;/p&gt;\n&lt;p&gt;2009��5�£�&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&amp;nbsp;Enterprise �Ƽ���3.5�汾����ģ���������������ʵ����ģ�����ӻ��Ĺ���ת��&lt;/p&gt;\n&lt;p&gt;2009��11�£�ECISP.CN��ʽ���ߣ����ṩ&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&amp;nbsp;Enterprise��������ؼ���ҵȫ�������֧��&lt;/p&gt;\n&lt;p&gt;2010��5�£���վ��������ʽ����Ϊ&amp;ldquo;��������&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;2010��7�£�&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&amp;nbsp;Enterprise��ʽ����Ϊ&lt;span class=&quot;taglink&quot;&gt;��˼&lt;/span&gt;&lt;span class=&quot;taglink&quot;&gt;&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&lt;/span&gt;�����ṩ4.0��������ʾ&lt;/p&gt;\n&lt;p&gt;2010��8�£������������²�Ʒ&amp;ldquo;&lt;span class=&quot;taglink&quot;&gt;��˼&lt;/span&gt;&lt;span class=&quot;taglink&quot;&gt;&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&lt;/span&gt;4.0&amp;rdquo;��ʽ�ṩ����&lt;/p&gt;\n&lt;p&gt;2010��12�£�ECISP.CN�����İ���ɣ��µ���վ�ؽ��ṩ�������Ƶķ���&lt;/p&gt;\n&lt;p&gt;2010��12�£�&lt;span class=&quot;taglink&quot;&gt;��˼&lt;/span&gt;&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;����Ϊ&amp;ldquo;&lt;span class=&quot;taglink&quot;&gt;ESPCMS&lt;/span&gt;&lt;span class=&quot;taglink&quot;&gt;��˼&lt;/span&gt;&lt;span class=&quot;taglink&quot;&gt;&lt;span class=&quot;taglink&quot;&gt;��ҵ��վ����ϵͳ&lt;/span&gt;&lt;/span&gt;&amp;rdquo;��Ϊ��һ��״��չ���»���&lt;/p&gt;\n&lt;p&gt;2010��12�£�ECISP.CN��������ҵ�û�����&lt;span class=&quot;taglink&quot;&gt;ESPCMSģ��&lt;/span&gt;���������Ƴ�40���׾���ģ�幩��ҵ�û�ʹ�ã����ڻ���������Ƴ����Ӹ߶ˡ����۵���վģ��&lt;/p&gt;\n&lt;p&gt;2010��12�£�&lt;span class=&quot;taglink&quot;&gt;ESPCMS��˼&lt;/span&gt;&lt;span class=&quot;taglink&quot;&gt;��ҵ��վ����ϵͳ&lt;/span&gt;������ѣ����ǹ�������רҵ��վ����ϵͳ������ѣ��ؽ�&lt;span class=&quot;taglink&quot;&gt;��ҵ��վ����&lt;/span&gt;�������רҵ������໯�����ۻ���&lt;/p&gt;\n&lt;p&gt;2011��06�£�ESPCMSȡ�ü�����������Ȩ�Ǽ�֤�飺2011SR051710&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;2011��08�£�ESPCMS V5��¡�ط���&amp;nbsp;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('4','6','&lt;h3&gt;��˼ESPCMS��ҵ��վ����ϵͳ�����ESPCMS����ȨЭ�飨�����������û���&lt;/h3&gt;\n&lt;p&gt;��Ȩ���� (c) 2002-2012�����������Ƽ����޹�˾������Ӣ�ļ��EarcLink����������Ȩ����&lt;/p&gt;\n&lt;p&gt;��л��ѡ��EarcLink��Ʒ��ϣ�����ǵ�Ŭ����Ϊ���ṩһ��ǿ��ʵ�ú;��õ���ҵ��վ���������&lt;/p&gt;\n&lt;p&gt;EarcLinkΪESPCMS��Ʒ�Ŀ����̣���������ӵ��ESPCMS��Ʒ����Ȩ��EarcLink��ַΪHttp://www.earclink.com ESPCMS������ַΪ��http://www.espcms.com��&lt;/p&gt;\n&lt;p&gt;ESPCMS����Ȩ�����л����񹲺͹����Ұ�Ȩ��ע�ᣬ����Ȩ�ܵ����ɺ͹��ʹ�Լ������&lt;strong&gt;������������Ȩ�Ǽ�֤�飺2011SR051710&lt;/strong&gt;����ʹ���ߣ����۸��˻���֯��ӯ�������;��Σ�������ѧϰ���о�ΪĿ�ģ���������ϸ�Ķ���Э�飬����⡢ͬ�⡢�����ر�Э���ȫ������󣬷��ɿ�ʼʹ��ESPCMS�����&lt;/p&gt;\n&lt;p&gt;����ȨЭ�������ҽ�������ESPCMSϵ�а汾��EarcLinkӵ�жԱ���ȨЭ������ս���Ȩ��&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;I. Э����ɵ�Ȩ��&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&lt;/strong&gt;1. ����δ֧����Ӧ��ɷ��û�δ�õ�EarcLink��Ȩ������£���ֹ�������Ӧ�����κ���ҵ��;��&lt;/p&gt;\n&lt;p&gt;2. ��������Э��涨��Լ�������Ʒ�Χ���޸�ESPCMSԴ����(������ṩ�Ļ�)�����������Ӧ������վҪ��&lt;/p&gt;\n&lt;p&gt;3. ��ӵ��ʹ�ñ������������վ��ȫ����Ա���ϡ����¼������Ϣ������Ȩ���������е����������ݵ���ط�������&lt;/p&gt;\n&lt;p&gt;4. �����ҵ��Ȩ֮�������Խ������Ӧ������ҵ��;��ͬʱ�������������Ȩ������ȷ���ļ���֧�����ޡ�����֧�ַ�ʽ�ͼ���֧�����ݣ��Թ���ʱ�����ڼ���֧��������ӵ��ͨ��ָ���ķ�ʽ���ָ����Χ�ڵļ���֧�ַ�����ҵ��Ȩ�û����з�ӳ����������Ȩ����������������Ϊ��Ҫ���ǣ���û��һ�������ɵĳ�ŵ��֤��&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;II. Э��涨��Լ��������&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&lt;/strong&gt;1. δ����ҵ��Ȩ֮ǰ�����ý������������ҵ��;��������ҵ��Ȩ���½http://www.espcms.com�ο����˵����&lt;/p&gt;\n&lt;p&gt;2. ���öԱ��������֮��������ҵ��Ȩ���г��⡢���ۡ���Ѻ�򷢷������֤��&lt;/p&gt;\n&lt;p&gt;3. ������Σ���������;��Ρ��Ƿ񾭹��޸Ļ��������޸ĳ̶���Σ�ֻҪʹ��ESPCMS������κβ��֣�δ����ҵ��Ȩ������£�ҳ��ҳ�Ŵ�����˼ESPCMS��ҵ��վ����ϵͳ��Title���ֵ�Powered by ESPCMS���෽�ٷ����Ӷ����뱣����������������޸ġ�&lt;/p&gt;\n&lt;p&gt;4. ��ֹ��ESPCMS������κβ��ֻ������Է�չ�κ������汾���޸İ汾��������汾�������·ַ���&lt;/p&gt;\n&lt;p&gt;5. �����δ�����ر�Э������������Ȩ������ֹ��������ɵ�Ȩ�������ջأ����е���Ӧ�������Ρ�&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;III. ���޵�������������&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&lt;/strong&gt;1. ����������������ļ�����Ϊ���ṩ�κ���ȷ�Ļ��������⳥�򵣱�����ʽ�ṩ�ġ�&lt;/p&gt;\n&lt;p&gt;2. �û�������Ը��ʹ�ñ�������������˽�ʹ�ñ�����ķ��գ�����δ�����Ʒ��������֮ǰ�����ǲ���ŵ�ṩ�κ���ʽ�ļ���֧�֡�ʹ�õ�����Ҳ���е��κ���ʹ�ñ���������������������Ρ�&lt;/p&gt;\n&lt;p&gt;3. EarcLink����ʹ�ñ������������վ�е����»���Ϣ�е����Ρ�&lt;/p&gt;\n&lt;p&gt;�й�ESPCMS�����û���ȨЭ�顢��ҵ��Ȩ�뼼���������ϸ���ݣ�����EarcLink�ٷ���վ�����ṩ��EarcLinkӵ���ڲ�����֪ͨ������£��޸���ȨЭ��ͷ����Ŀ���Ȩ�����޸ĺ��Э����Ŀ����Ըı�֮���������Ȩ�û���Ч��&lt;/p&gt;\n&lt;p&gt;�����ı���ʽ����ȨЭ����ͬ˫������ǩ���Э��һ����������ȫ�ĺ͵�ͬ�ķ���Ч������һ����ʼ��װESPCMS��������Ϊ��ȫ��Ⲣ���ܱ�Э��ĸ�������������������������Ȩ����ͬʱ���ܵ���ص�Լ�������ơ�Э����ɷ�Χ�������Ϊ����ֱ��Υ������ȨЭ�鲢������Ȩ��������Ȩ��ʱ��ֹ��Ȩ������ֹͣ�𺦣�������׷��������ε�Ȩ����&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('5','3','&lt;p&gt;\n&lt;div&gt;\n&lt;p&gt;��л��ѡ��EarcLink��Ʒ��������й��ں�����ʹ���������������˽����ǲ�Ʒ���ܵ��������ʱͨ�����·�ʽ��������ϵ��&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&lt;strong&gt;ESPCMS&lt;/strong&gt;��Ȩ��ѯQQ��6326420 / 188295976 ����QQ�����ղ�Ʒ������ѯ��������ѯ���������������½��̳���н���http://bbs.ecisp.cn��&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;����֧�� E-mail:admin@ecisp.cn �����ʼ�ֻ������ҵ�û���&lt;/p&gt;\n&lt;p&gt;ʹ�ý�� E-mail:service@ecisp.cn �����ʼ����������𡢽�վ���ۡ�����������&lt;/p&gt;\n&lt;p&gt;�������ʼ� E-mail:bili@ecisp.cn �����ʼ�����������ҵ�����������߽����ʼ���&lt;/p&gt;\n&lt;p&gt;ESPCMS��̳���� http://bbs.ecisp.cn&lt;/p&gt;\n&lt;p&gt;ESPCMS����֧�� http://www.ecisp.cn / Http://www.espcms.com&lt;/p&gt;\n&lt;p&gt;ESPCMS��ʾվ�� http://demo.ecisp.cn / http://www.easysitepm.com&lt;/p&gt;\n&lt;/div&gt;\n&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('6','7','&lt;div&gt;\n&lt;div&gt;\n&lt;p&gt;��л��ѡ��EarcLink��Ʒ��������й��ں�����ʹ���������������˽����ǲ�Ʒ���ܵ��������ʱͨ�����·�ʽ��������ϵ��&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&lt;strong&gt;ESPCMS&lt;/strong&gt;��Ȩ��ѯQQ��6326420 / 188295976 ����QQ�����ղ�Ʒ������ѯ��������ѯ���������������½��̳���н���http://bbs.ecisp.cn��&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;����֧�� E-mail:admin@ecisp.cn �����ʼ�ֻ������ҵ�û���&lt;/p&gt;\n&lt;p&gt;ʹ�ý�� E-mail:service@ecisp.cn �����ʼ����������𡢽�վ���ۡ�����������&lt;/p&gt;\n&lt;p&gt;�������ʼ� E-mail:bili@ecisp.cn �����ʼ�����������ҵ�����������߽����ʼ���&lt;/p&gt;\n&lt;p&gt;ESPCMS��̳���� http://bbs.ecisp.cn&lt;/p&gt;\n&lt;p&gt;ESPCMS����֧�� http://www.ecisp.cn / Http://www.espcms.com&lt;/p&gt;\n&lt;p&gt;ESPCMS��ʾվ�� http://demo.ecisp.cn / http://www.easysitepm.com&lt;/p&gt;\n&lt;/div&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;/div&gt;');
INSERT INTO `espcms_document_content` VALUES ('7','8','&lt;div style=&quot;text-align: center;&quot;&gt;&lt;iframe src=&quot;http://maps.google.com/maps?f=d&amp;amp;source=s_d&amp;amp;saddr=&amp;amp;daddr=&amp;amp;hl=zh-CN&amp;amp;geocode=&amp;amp;mra=mr&amp;amp;doflg=ptk&amp;amp;sll=23.825551,114.587402&amp;amp;sspn=13.082321,35.15625&amp;amp;ie=UTF8&amp;amp;ll=22.523617,114.062805&amp;amp;spn=0.019821,0.027938&amp;amp;z=15&amp;amp;vpsrc=6&amp;amp;output=embed&quot; width=&quot;620&quot; height=&quot;500&quot; scrolling=&quot;no&quot; marginwidth=&quot;0&quot; marginheight=&quot;0&quot; frameborder=&quot;0&quot;&gt;&lt;/iframe&gt;&lt;/div&gt;');
INSERT INTO `espcms_document_content` VALUES ('8','10','&lt;p&gt;Facebook����־Ը����Э��������վ©�������ռƻ�����һ��&amp;ldquo;��bugӮ��&amp;rdquo;�&lt;/p&gt;\n&lt;p&gt;���˿Ƽ�Ѷ ����ʱ��8��30���賿��Ϣ��Facebook��һ͸¶���Ѿ���Э������վѰ��©����־Ը����֧����4����Ԫ�Ľ��𣬽�������ΪFacebook�����Ĺ��ס�&lt;/p&gt;\n&lt;p&gt;Facebook����ǰ����һ��&amp;ldquo;��bugӮ��&amp;rdquo;���������ͨ��ҳ������־Ը��Ѱ��Facebook��վ��©�����ù�˾��һ�������ȡ���˳ɹ�������������صİ�ȫ�о���Ա����Ա������Э��Facebook�����վ��ȫ�ԡ�&lt;/p&gt;\n&lt;p&gt;Facebook��һƪ����������˵��&amp;ldquo;������ʶ��లȫר�ң�����֮������ϵ�����ǣ�����ʹ�����ܹ���ȫ����16�����ҵ�����˽��жԻ����������䵽��������������ȫ����������ӻԾ���롣&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;��Щ�������Ƽ���˾��ʼ��ڿ���֧�����𣬹����������ı����Լ����ֵ�©���������ǽ��乫֮���ڣ����������Ӽ������á��ȸ��Mozilla����չ����Facebook���Ƶ��н����&lt;/p&gt;\n&lt;p&gt;־Ը��ÿ����һ��bug��Facebook��֧��500��Ԫ���ϵĽ��𡣸ù�˾͸¶��һ���ڿͷ�����һ����Ҫ©�������5000��Ԫ����;��һλ������Ա������6��©����һ��Ӯ��7000��Ԫ.&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('9','11','&lt;p&gt;&lt;img src=&quot;http://www.v5.com/upfile/2011/08/30/20110830213802_673.jpg&quot; border=&quot;0&quot; alt=&quot;��N9���Թܿ�ŵ����δ�������˼·&quot; width=&quot;500&quot; height=&quot;411&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;��N9���Թܿ�ŵ����δ�������˼·&lt;/p&gt;\n&lt;p&gt;����������ý����췢�����³ƣ������⻼��ŵ���Ǽ����Ƴ��׿�Windows Phone���ܻ��������ֻ���ͷ���ⳡ�����У�ϣ��ƾ�����һ�ĵ������ƣ�����г��ݶ���������ٹ⡣&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;����Ϊ����ȫ�ģ�&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;ŵ���Ǽ��������׿����Windows Phone����ϵͳ�������ֻ��������ֻ���ͷ���ڽ���һ�����ģ�ϣ��ƾ���¿���͵Ĵ������ͻ����Χ�������ǵ�ע�����ӱ���ڸ����ƽ̨������ת�ƹ�����������������ܻ��г����������ٹ⡣&lt;/p&gt;\n&lt;p&gt;ŵ���������ܻ��г��ķݶ���»����ܴ�̶����������ܵ�ƻ��iPhone��Android�ֻ��ļ�ѹ�����ǣ���Ϊȫ���ֻ��г������İ�����ŵ���ǵ�Ӳ�����������޿����ɡ�&lt;/p&gt;\n&lt;p&gt;ŵ���Ǽƻ��ڽ�����ļ����Ƴ��׿����Windows Phone &amp;ldquo;â��&amp;rdquo;����ϵͳ���ֻ�������Ʒ��ŵ������Ϊ����֮�����縺�Ŷ���г��ݶ�����Ρ�&lt;/p&gt;\n&lt;p&gt;�ӽ���6�·�����ŵ����N9���ϣ����ǿ��Թܿ��ù�˾δ�����͵����˼·������ֻ�ȡ���˴�ͳ��Home���������㷺�������Ʋ�������ǲ���̼�������ϣ��ж�����ɫ�ɹ�ѡ�����䱸��һ����л��ȵ�3.9Ӣ����ݴ�������&lt;/p&gt;\n&lt;p&gt;N9����Ӣ�ض���ŵ���Ǻ����з���MeeGo����ϵͳ����ŵ�����Ѿ�����һƽ̨ʧȥ��Ȥ�����ù�˾��ϯ���ʦ���&amp;middot;���յ�����(Marko Ahtisaari)��ʾ�����������ŵ���ǵ�δ����������һ�βɷ���˵��&amp;ldquo;���ǽ��Ƴ��ࡢ��Ȼ��������ƣ����г��г����ĺڻ�ɫ���������ʵ�Բ�Ǿ��������ȫ��ͬ��&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Windows Phone�ֻ�����ϵͳ��΢���з�����ŵ�����⣬HTC�����������Ǻ�LG�������Ƴ����ظ�ϵͳ���¿��ֻ�����ˣ�Ϊ�����������ߡ���ֹ�г��ݶ�����»���ŵ������Ҫ���������������������ơ�&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;�����û�&amp;ldquo;Ŀ�⽻��&amp;rdquo;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;������ļ��е�ƻ��iOS�͹ȸ�Android����ϵͳ��ͬ��Windows Phone &amp;ldquo;â��&amp;rdquo;����ø����ִ��е�ͼ���û����棬�书��Χ��&amp;ldquo;��&amp;rdquo;����&amp;ldquo;Ӧ��&amp;rdquo;��������Ϊʵ��ĳһ���ܶ�����Ĵ�����&lt;/p&gt;\n&lt;p&gt;���յ�����ƣ����Ĵ������ֻ�ƫ��&amp;ldquo;����ʽ&amp;rdquo;�˻����������ǲ���ȷ�ġ���ϣ���ҵ�һ����Ʒ�����ʹ���ǿ���̧��ͷ������˵��&amp;ldquo;����㵽�ն�������һ�Ҳ͹��￴һ�����ͻᷢ������һζ��ͷ���ֻ��������ǽ���Ŀ�⽻����Ҳ������ʶ���Լ������Ļ�����&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;���յ�����˵��&amp;ldquo;���������ƶ���ΪĿ�����ƣ���ʹ�����и����Ŀ�⽻��������ʶ���Լ������Ļ��������ǲ���ȷ���������Ҫ��;�������ǵõ����ֱ���ʱ���ͻᰮ������&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;���յ�������18����ǰ����ŵ���ǣ��Ǹù�˾��λֱ����CEO˹�ٷ�&amp;middot;������(Stephen Elop)�㱨����ϯ���ʦ�����ʦ��λ����������ӳ��ŵ������Խ��Խ����Ӳ�����������&lt;/p&gt;\n&lt;p&gt;ŵ�������Ƴ�������ͣ��������ڵ�Ӱ���ڿ͵۹����������8110��ȫ���ײ������ֻ�9000���������ߵ�3210�Լ��䱸����ͷ��7650��&lt;/p&gt;\n&lt;p&gt;Ȼ��������й������Ի͵������ֻ�����Ҳ�����ʧ����Ħ������Razrϵ�з����ֻ����ܻ�ӭʱ��ŵ����δ�ܼ�ʱ�Ƴ��ܹ���֮�Կ��Ļ���;����ƻ����2007�귢���׿�iPhone�����¶��������ֻ��г��󣬷�Ӧ�ٻ���ŵ������Ȼ���ش�ͳ��ƣ���û���Ƴ����������͡�&lt;/p&gt;\n&lt;p&gt;2010�꣬ŵ���ǹ�����28����ͣ��ܳ�������4.53�ڲ���Ȼ��������ڶ����ȣ��ù�˾��ȫ�����ܻ��г��ķݶ��Ѿ���ȥ��ͬ�ڵ�38.1%������15.2%����ƻ�������ǳ�Խ��λ�ӵ���λ��&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;�̳ж���������&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;���յ����������Ŷ�ӵ��������Ա����ɢ���������й���Ӣ���������ȵء���˵��&amp;ldquo;���ǵĹ�������֤һ���Ʒ�Ƿ��ʺϴ��ģ������Ϊ����������ģ�ߣ���Ϊ�ض������ѡ���������̡�ŵ��������һ���򼫾߾�������&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;ŵ�����ֻ����õ���ǲ��϶��ֶ���������������Ϊ�ù�˾��Ӳ������ĳɹ��춨������Ŀǰ��ŵ�����ֻ���Ҫ����ԭ��ɫ�ʵľ�̼������ǡ����յ�����˵��&amp;ldquo;ɫ����������ѡ��ļ򵥱�־����һ��Ҫ���Խ��õ��̳С�&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;�������ԣ�������ζ��ͨ����ϸ�۲��û�����������������Ƹ��á�����Ȼ���ֻ�ʹ�÷�ʽ���Ӳݸ嵽3Dģ���ٵ����������������ԭ�ͻ��Ǽ�ࡢ��׼�ıؾ�֮·��&lt;/p&gt;\n&lt;p&gt;���յ�����ƣ�ŵ���ǽ��Ƴ������䱸������̵Ĵ������ֻ�����E6��C3�ȡ���˵��&amp;ldquo;�������Ȼ��Ҫ����;ŵ����δ������佫����һ����������г��������¡�&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;�����ƻ�ͨ��&amp;ldquo;���ֻ��������ͼ���û�����λ����Ϣ�����ӣ���ǰ��δ�еķ�ʽ������������&amp;rdquo;���������û���ֵ&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('10','12','<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://www.v5.com/upfile/2011/08/30/20110830213900_889.png\" border=\"0\" alt=\"Windows 8����ϸ���ع⣺�˵����ܸ�ֱ��\" width=\"450\" height=\"507\" />Windows 8����ϸ���ع⣺�˵����ܸ�ֱ��</p>\n<p>���˿Ƽ�Ѷ ����ʱ��8��30���賿��Ϣ��΢����Ŀ�����ܼ�������˹&middot;����˹(Alex Simons)���췢�������£�͸¶��Windows 8����ϵͳ�ĸ���ϸ�ڣ�������Ϊ������������&ldquo;Ribbon&rdquo;����Ĺ㷺Ӧ�á�</p>\n<p>ͼƬ��ʾ��Windows 8����Դ�������ڴ����Ϸ���ͼ����ʽչ����ೣ�ù��ܣ���&ldquo;����&rdquo;��&ldquo;ճ��&rdquo;��&ldquo;����&rdquo;�ȣ������û�Ѱ�ҡ�ʹ����Щ���ܡ���Windows 7������汾��Windowsϵͳ�У���Щ����ͨ�����Ӳ˵�����ʽչ�֣��û���Ҫ�������ε��������ɡ��µ��û��������ɽ������û����顣</p>\n<p>���ֽ�����Ʒ�������Ϊ&ldquo;Ribbon&rdquo;�����Ӧ����Office 2007�����װ�У�Office 2010��������һ������Windows 7�򲿷ֲ��ɡ�΢��ƻ���Windows 8��ȫ��������һ���档</p>\n<p>����˹�ڲ��������б�ʾ��������ʾ���û���õ�Windows��Դ�������˵�������&ldquo;ճ��&rdquo;�����������&ldquo;����&rdquo;��&ldquo;����&rdquo;��&ldquo;ɾ��&rdquo;��&ldquo;������&rdquo;��&ldquo;ˢ��&rdquo;��&ldquo;����&rdquo;�ȡ���õ�10���˵�����ռ��ʹ��������81.8%��Ϊ&ldquo;Ribbon&rdquo;����Ĺ㷺ʹ�õ춨������</p>');
INSERT INTO `espcms_document_content` VALUES ('11','13','&lt;p&gt;���죬�������Ժ�����������Ժ���Ϸ��������ڰ���Σ���������Ϣϵͳ��ȫ���°���Ӧ�÷�����������Ľ��͡�����˾�����͹涨���ڿͷǷ���ȡ֧�����㡢֤ȯ���ס��ڻ����׵�������ڷ�����˺š�����������Ϣ10�����ϣ��ɴ�3����������ͽ�̵��̷�����ȡ������Ϣ50�����ϵģ���3������7����������ͽ�̡�&lt;/p&gt;\n&lt;p&gt;�µ�˾�����͹涨����ȡ֧�����㡢֤ȯ���ס��ڻ����׵�������ڷ�����˺š�������롢����֤�����Ϣ10������;��ȡ�������˺š�����������֤��Ϣ500������;�Ƿ����Ƽ������Ϣϵͳ20̨����;Υ������5000Ԫ���ϻ�����ɾ�����ʧ1��Ԫ���ϣ������д�3����������ͽ�̵��̷�����ﵽ������׼��5�����ϣ��ɴ�3������7����������ͽ�̡�&lt;/p&gt;\n&lt;p&gt;˾�����ͻ���ȷ�˹������������������������ͬ���εĶ����׼����ͨ�����硢�ļ��ȴ�����������������20̨���ϼ����ϵͳ��ֲ�벡������;�ṩ������������ƻ��Գ���10�˴�����;Υ������5000Ԫ���ϻ�����ɾ�����ʧ1��Ԫ���ϣ��д�5����������ͽ�̵��̷���������������ﵽ������׼��5�����ϣ���5����������ͽ�̡�&lt;/p&gt;\n&lt;p&gt;���⣬���ƻ����һ��ػ���ڡ����š���ͨ��������ҽ�ơ���Դ�������ṩ��������ļ������Ϣϵͳ�Ĺ��ܡ����ݻ���Ӧ�ó�����ʹ�����������ܵ�����Ӱ�������ɶ������Ӱ��ģ�Ӧ�϶�Ϊ�ƻ��������Ϣϵͳ&amp;ldquo;����ر�����&amp;rdquo;����5����������ͽ�̡�&lt;/p&gt;\n&lt;p&gt;���Ե�λ������ߵ�λ��ʽʵʩΣ���������Ϣϵͳ��ȫ����ﵽ�������̱�׼�ģ�Ӧ׷��ֱ�Ӹ����������Ա������ֱ��������Ա����������&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('12','14','&lt;p&gt;��������Ƽ���Ѷ��վPCWorld���췢�����³ƣ��й�һֱ����������&amp;ldquo;������&amp;rdquo;��ȡ֤�ѡ�����������๫˾�Ե�������е��޿��κ�;������һЩ��˾ץס�̻���ͨ��׷���ṩ�����û����ݣ�������ҵѰ���⳥�������ϡ�&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;����Ϊ����ȫ�ģ�&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;�й�һֱ����������&amp;ldquo;������&amp;rdquo;��Ȼ����һЩͷ������������˾ץס�̻���׷�ٵ������ʹ��״������ͻ��ṩ��Ȩ���˺���ҵ����Ϣ����������£����������ʹ���߽������Ϸ�ͥ��&lt;/p&gt;\n&lt;p&gt;һ����ΪV.i. Labs��������˾�ṩ������񣬰������̺�����������׷�ٵ����Ʒ��ʹ��״�����ù�˾���ܲ�ά��&amp;middot;��÷��(Vic DeMarines)͸¶����������6�£�V.i. Labsӵ��12�ҿͻ������������ܵ�ֱ����ʧ��12����Ԫ������һ�������й��г���&lt;/p&gt;\n&lt;p&gt;��÷��˵��&amp;ldquo;�й�һֱ�Ǹ������⡣��๫˾�Ѿ����ٹ�����һ�г��ĵ���״������Ϊ���Ǹе��޿��κΡ�&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;ר�ұ�ʾ�������й������������ڴ�����棬�����������ȱ��ִ�е��µ��������ʹ�ù�ģ��Ȼ�Ӵ�������ҵ�������(Business Software Alliance)Ԥ�ƣ�2010���й��г��е���������ܼ�ֵ�ߴ�77����Ԫ��������������&lt;/p&gt;\n&lt;p&gt;��÷�ֱ�ʾ���������������ս������ҵ������������۲�Ʒʱ�����Լѡ�������Ϊ������Ҫ��Դ�����ҵ�����û��߱�������������ľ���ʵ����ʹ��״��Ҳ������׷�١�&lt;/p&gt;\n&lt;p&gt;��˵��&amp;ldquo;������Ϊ�����Ǵ������ϼ��ٵ���ĸ��÷���������Ҫ׷����Щ����������������֯�����������ǽ���Щ�ƽ�����ĸ�����Ϊ���Ŀ�ꡣ&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;����ʾ������������̲�ȡ���ִ�ʩ�������Ʒ����������ֻ��Ҫ30��90�죬���ܹ�����ƽⲢ�ڻ������ϴ���������&lt;/p&gt;\n&lt;p&gt;V.i. Labs��ͻ��ṩһ�ֿ����ϵ�����еĴ��룬��׷�ٲ�Ʒʹ��״������40����ҵʹ��������׷�ټ���������ͨ���ռ����������˽��й�����Щ�������ж���̨PC��ʹ�õ�����������磬���ڱ���һ�أ�V.i. Labs�ͷ����г���5000̨������ʹ��δ��Ȩ��CAD�����&lt;/p&gt;\n&lt;p&gt;��÷�ֳƣ���ҵ����ͨ�������������ʹ��״����ȷ��Ŀ��ͻ�Ⱥ��V.i. Labs��������ʾ�����й��������������Ҫ�û�Ⱥ��������ҵ����ƹ�˾�ʹ�ѧԺУ��&lt;/p&gt;\n&lt;p&gt;V.i. Labs�ƣ���ҵ��ͨ�������ݷ�������ÿ����10%��25%�Ķ������롣�й��г��У��ù�˾��ɹ��İ����ǰ����ͻ�����������չҵ�񣬻��Ѿ�ӵ�л�Ծ�û�Ⱥ����ҵ���⡣&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;ȡ֤�������&amp;ldquo;���ܵ���&amp;rdquo;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;Ȼ������һЩ�����У���Ȩ�߲���Ը���⳥����ʹ������̽�����Ϸ�ͥ��&lt;/p&gt;\n&lt;p&gt;Orrick, Herrington &amp;amp; Sutcliffe��ʦ��������ʦ����(Xiang Wang������)˵��&amp;ldquo;������ͼ�ҵ�&amp;lsquo;����&amp;rsquo;��Ҳ������Щ���������Ĺ�˾��&amp;rdquo;����ʾ�����׷��������ȷ����Ȩ�ߣ����������ѵ����ҵ�����֤�ݡ�&lt;/p&gt;\n&lt;p&gt;���й�����Ѱ֤�ݵ�������Ҫ��ԭ��е�������������ͬ������������£��������ڵ���ʦ�����������ɳ�������Ա��&amp;ldquo;Ǳ��&amp;rdquo;��Щ����ʹ�õ�������Ĺ�˾��������ǻὫ�ҵ���һ����Ϣ�ύ������ܻ��������κ���չ�����顣�����ʾ�������ҵ���һ��֤�ݶ���õ���ͥ�Ͽɡ�&lt;/p&gt;\n&lt;p&gt;Ȼ������ʹ������Ȩ����ҵ����Ӯ�ù�˾������������Ȼ��С����ʱ��Ϊ1����Ԫ������˵��&amp;ldquo;�����Ѿ����˳���100���˾������Ҫ�����������ر�һ��������һ�������ѵ����飬���ϵ������˵ķ��롣&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;���ǵ���ʵ״������๫˾��ʼ������������Ȩ���ϡ�����ǰ��������������Զ����������AWR�������������һ�ҷ�Ժ�ݽ���״����������ͨѶ���������ӹ�˾��&lt;/p&gt;\n&lt;p&gt;AWR����״�гƣ�����ʹ���˸ù�˾��δ��Ȩ��������ռ�֤�ݵĹ����У�AWR���������Ʒ������һ�����⹦�ܣ��ܹ���ʹ��״���Զ��������ù�˾�ķ�������׷�ٵ��������ʹ���ߡ�&lt;/p&gt;\n&lt;p&gt;����6�£����˱����ַ�AWR�������ȨЭ�顣˫������ǰ��ɺͽ⣬�ͽ����δ��¶��������δ�ʹ�������&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('13','15','&lt;p&gt;�����վ��е�2011APEC��С��ҵ�������������ݽ��У����񲿵����������Ϣ��˾��Ѳ��Ա���ֺ���ʾ��&amp;ldquo;ʮ����&amp;rdquo;�ڼ佫�ǵ���������ҵ�����ٷ�չ��ʱ�ڣ����������ǵ���������ҵ��չ��ƿ����Ҳ�ǵ���������ҵ��չ�Ļ���������������������ҵ�����ͻ���ͬʱץ����������������ҵ��������һ���ķ�չ������Ὺ�ţ���Ϊ������ϵ�е��³衣&lt;/p&gt;\n&lt;p&gt;���ֺ���ʾ��Ŀǰ������������������ϵ�����ƣ�����������ҵΪ�˻�ÿͻ�������Ȳ��ò������������ſ�ѧ�����Ĳ��Ϸ�չ����ữ�ֹ�Խ��Խרҵ��ϸ��������������ҵ���������ȵ����������ɱ����ͣ�Ч�ʸ��ߡ�&lt;/p&gt;\n&lt;p&gt;&amp;ldquo;����������ҵ������չ����һ��Ӧ��������ᣬ����Ὺ�ţ���Ϊ�����������������Ϊ������ϵ�е�һ���³衣&amp;rdquo;���ֺ���ʾ��&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('14','16','&lt;p&gt;����ʱ��8��30����Ϣ���ݹ���ý�屨������������������ֻ���Ƹ�����˹����&amp;middot;����(Scott Croyle)��ʾ��������Ƹ߲㷢���仯�������ֻ����˼ά������ı䣬�����Ի����û��������ڼ�����ԭ��&lt;/p&gt;\n&lt;p&gt;��������縺���ֻ���Ƶ���ϯ���¹ٻ���˹&amp;middot;¬��(Horace Luke)��Ϊ����ԭ���ְ�����θ�����Ƶĸ��ܲÿ��޽��δ�ְ��&lt;/p&gt;\n&lt;p&gt;������ǰ��ý���ʾ������δ���Խ����������������ֻ���ƽ����Բ�Ʒ���ṩ��������ݺͷ��񣬿��Ҿ۽��������û����飬�������Ļ���Ը���������Ƶ��Ч����ǰ������ͷ����Ժͼ����Լ����ѽ�����Ƶ�Ի���&lt;/p&gt;\n&lt;p&gt;���ޱ�ʾ��������Ƹ߲����ˣ�����&amp;ldquo;�����ߵ�һ&amp;rdquo;�������Ѿ���Ϊ�����DNA����˲���仯��&lt;/p&gt;\n&lt;p&gt;����ǿ��˵��������עʹ���ֻ����û������飬�����ǹ�ע��̨�ļ�������&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('15','17','&lt;p&gt;����ʱ��8��30��������Ϣ���������Ƽ�������վBusinessInsider����������ƻ��ʵϰ������ɭ&amp;middot;����(Jonathan Berger)��ǰ������һ�����£�ͻ����ʷ�ٷ�&amp;middot;�ǲ�˹(Steve Jobs)��ƻ���������顣&lt;/p&gt;\n&lt;p&gt;����2000����ƻ��ʵϰ��ʱ������һ�λ��������ǲ�˹Ϊ��Ҫ�ػ�ƻ�����ǲ�˹�ش�˵��&amp;ldquo;��ʱ���Ҷ��Ƿ��ػ�ƻ����ԥ�����������ڼ��Ҷ��������ʹ��ܶ��ˣ�Ҳ�õ��˺ܶ������һ����ҹ��������Ϊ���������գ��賿2�㣬�Ҹ�һ�����Ѵ�ȥ�绰���ʵ���&amp;lsquo;��Ӧ�û�ƻ�����ǲ��أ�&amp;rsquo;������ѻش�˵��&amp;lsquo;���ţ�ʷ�ٷ��Ҷ�ƻ��������һ�㶼���������ϣ����Լ��������ɣ�&amp;rsquo;˵��͹��˵绰�������Ǹ�ʱ���Ҳŷ��֣�����ĺ��ں�ƻ����&amp;rdquo;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('16','18','&lt;p&gt;��Ѷ�Ƽ�Ѷ(����)����ʱ��8��30����Ϣ���������Ƽ�������վSilicon Alley Insider(SAI)������һ��֪����ʿ��һ͸¶���Ż�CEO���޶�&amp;middot;�ʹ�(Carol Bartz)����ı������������û���κ���Ȥ������������⣬�ʹĵ�ǰ������ͬ������������2013����ְ��&lt;/p&gt;\n&lt;p&gt;&lt;img style=&quot;display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;http://www.v5.com/upfile/2011/08/30/20110830214223_287.jpg&quot; border=&quot;0&quot; alt=&quot;���Ż�CEO�ʹ�����ı������ 2013����ְ(ͼ)&quot; width=&quot;460&quot; height=&quot;306&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;�Ż�CEO���޶�&amp;middot;�ʹ�(��Ѷ�Ƽ���ͼ)&lt;/p&gt;\n&lt;p&gt;������Ϥ�ʹĵ�֪����ʿ˵��&amp;ldquo;�ʹ���ʵ�Ѿ��Ǵ���һ��׼����ְ��״̬����˶���ı���Ż�����CEOһ�¸���û����Ȥ���ҵ�����Ŀǰ����Щ&amp;lsquo;����&amp;rsquo;����˼�ˡ�&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;����һ��֪����ʿ�ƣ��Ż����»Ტ����ͬ���ֿ���������֪����ʿ�ƣ�&amp;ldquo;�Ż����»���Ϊ���ʹĺ������������˴����Ż����»ᵱ��ϣ�������Ĺ������޸�ƽ̨�������û��͹����������߹�˾�����ʵȵȡ��Ż����»������ϣ��ͬ�ʹļ����Ŷ�������ϣ��Ӷ�ʹ�Ż��ܹ�ʵ�ָ�Ϊǿ���ĳ���������&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;���ڶ���֪����ʿû��͸¶���Ż����»��Ƿ��Ѿ���ǩ������ͬ������ʹ�չ����̸��&lt;/p&gt;\n&lt;p&gt;SAI��Ϊ���ͽ��ڶ��ԣ��Ż����»᲻������Ҫ��ʹ���ǰ��ְ��ԭ�������㣺���ȣ��ʹ����κ�ȷʵ���˴���������ֻ����ЩŬ����������Ͽɡ�������˵���ʹ�����ȡѹ����֧��ʩ�������Ż����ݷ���ϵͳ������Щ��ʩû���ܵ������ޡ���Σ������Ż����»᱾��&amp;ldquo;���±�����������ʵ&amp;rdquo;����˰ʹ����ܱ���ס�䵱ǰCEOְλ��&lt;/p&gt;\n&lt;p&gt;�ܶ���֮���ʹĵ�ǰ������ͬ��2013���������Ż����»Ὣ����ͬ����ǩ��ͬ��&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('17','19','&lt;p&gt;8��30�գ��ݹ���ý�屨�����ڽ�����Щʱ��������������ϯִ�й�ʱ���ȸ蹫˾(Google Inc.)���ϴ�ʼ������(Larry Page)��ŵ�������һ�����������ͷ���������Լӿ���ߡ�&lt;/p&gt;\n&lt;p&gt;������4�·��������������������ս����Щ��ս������������¢�ϻ����Թ�˾��Ϊ�Ĺ㷺����;�͹ȸ���ҵ���ܵ��ĳ������µ����ɺͽ�;�������չ��ֻ�������Ħ�������ƶ��ع����޹�˾(Motorola Mobility Holdings Inc.)�Ĳ��ϱ仯����ҵ�������Դ������������ְ��󣬹�˾�ɼ۵���9.1%��������˹���(Nasdaq)�����������8.42%��&lt;/p&gt;\n&lt;p&gt;�������һֱ�ڵ���ȸ���2003����2009������Ƿ�����ҩ�������������濯�ǹ�����Ϊ�����ܣ���������ر��ᵽ�����档����˵�������֪������ָ�Ƶķ�����Ϊ������δ��������ֹ������֮ǰ���ȸ�����֧����5����Ԫ�����ܵ�����ָ�ء�&lt;br /&gt;&lt;!-- pagebreak --&gt;�ȸ跢���˾ܾ��������ҩƷ�����Ϊ���˽��������������˵��������Ŀǰ�Ĺ����Ϊ�޹أ���˾�ڼ�����ǰ���ȸ�ܾ���38����������������&lt;/p&gt;\n&lt;p&gt;�������ۻ�������δ���볪Ƭ��˾�������ȸ����Ƴ��Ļ��������ַ������۸�����ר����Э��;��˾6�¹�����¶�й����ڵ�&amp;ldquo;���ҷ���&amp;rdquo;������Gmail�˻�;7�¾��������������޹�˾(Nortel Networks Corp.)����ר����ܣ��ȸ�˵���Ǵ�ʹ���չ�Ħ��������һ��ԭ��&lt;/p&gt;\n&lt;p&gt;���������ͬ��˵����ȥ�����·����˺ܶ��£�����Ӧ�Եķ����Ǽ��н���Լ����Ʒ�Χ�ڵ����񣬰���������ҵ��&lt;/p&gt;\n&lt;p&gt;�ȸ�Chrome�����������ϵͳ������Ƥ����(Sundar Pichai)˵������Թ�˾�����������������ָ�ƣ����һ���Թ�ע;��Ȼ��Ҫ���ǵ�������Щ���飬���������ķ�ʽ�Ǹ߶ȹ�ע��Ʒ���û���&lt;/p&gt;\n&lt;p&gt;ͬʱҲ����������һ�档���Թ�˾������õ���Ա���ļ���֧��;4�£�������׼�˹ȸ��չ�ITA Software�����룬����������ڹȸ轨��������������;��˾�����罻����Ĳ�ƷGoogle+����˳���������Ա��Ҳ���������ƶ��ı������������Gmail�����������ۡ�&lt;/p&gt;\n&lt;p&gt;���滹��ȡ����������������˶Թȸ������ٶȵ����ʣ������ַ���ʦ����4�·ݱ�Թ˵�������ڵ�һ�βƱ��绰����˵��̫�١����Ǵλ����ϣ�����˵��˾��ҵ����ǰ�������ǳ���������û��̸�Լ���ս�ԣ�Ҳû���������ش����ʦ�����ʡ�&lt;/p&gt;\n&lt;p&gt;����7�·�ȡ�ø�ǿ��ҵ��֮��ļ��ȵ绰�����ϣ���λ��CEOȫ��������Լ���ս�ԡ����У���˵���ȸ轫�����ҵ�������Chrome�������YouTube��Ƶ��վ�Ͱ�׿(Android)�ƶ�����ϵͳ��������Ǯ�İ취��Ŀǰȫ������1.35��̨�豸����װ�˰�׿ϵͳ��&lt;/p&gt;\n&lt;p&gt;�������Ǵλ�����˵���ȸ�ֻ������1%��Ǳ��������Ϊ��ˣ��Ҳ�Ŭ���쵼��ҹ�˾�����µĸ߶ȡ�&lt;/p&gt;\n&lt;p&gt;Ͷ��Stifel, Nicolaus &amp;amp; Co.����ʦ�޺�(Jordan Rohan)˵�������������Ͷ���߹�ͨ����ѧ���൱�졣����˵�����������治�����ڹȸ������������������ͷ��λ�������ùȸ��ڸ�������ռ����ͷ��λ�������������������������ϸ�ļල����ʹ����ǰ����·������᫡�&lt;!-- pagebreak --&gt;&lt;/p&gt;\n&lt;p&gt;�ȸ����Ա��˵�������ڹ�˾�ڲ����Ź㷺��֧���ߡ��ڹ�ȥ�����£���Ŭ�������Լ��ĳ�ŵ�ĸ﹫˾��ͨ��ȫ�������������κ���������������⣬���������һЩ����Щ��������û���ô�����Ŀ��&lt;/p&gt;\n&lt;p&gt;���滹�Ա�����ҵ����ж���Google+�ȸ��µĲ�Ʒ��������Ȥ���罻����Google+��Facebook Inc.�ľ������֣������Ѿ�������Ա������Ķ���ͬ����Ʒ��ҵ���ҹ���&lt;/p&gt;\n&lt;p&gt;��Ա����ǰ������Ŭ�������Լ�����������֪����ʿ˵��Google+�Ƴ�����֮������7�·��ڼ���ɽ���ǹȸ��ܲ�������֯��һ��&amp;ldquo;ɳ̲�ۻ�&amp;rdquo;��������Ū��һ̨�߿Ƽ����˻���&lt;/p&gt;\n&lt;p&gt;ͬ���ǻ�˵������ǳ�������Ա����ͨ�����������Ʒ�йصĻ����ϣ���ÿ���������&amp;ldquo;��л�ϵۣ����ڵ�������&amp;rdquo;��ȫԱ�����ϣ��Լ�ͨ���������ڲ�Google+�ʻ��Ϲ��������ӳ�����ƵƬ�Ρ�&lt;/p&gt;\n&lt;p&gt;������ˣ��ⲿ��������ʹ����Ѹ��������Ӧ������������Щʱ�򣬹ȸ�˵����������ó��ίԱ��(Federal Trade Commission)����ҵ����Ϊ�Ĺ㷺���飬���������Ҫ����ʱ�������ɡ�&lt;/p&gt;\n&lt;p&gt;����Ϣ��¶��7�·ݹȸ������������������ʾ������ҵ��Ϣ�ķ�ʽ����֪����ʿ͸¶����������ó��ίԱ����������֮һ��&lt;/p&gt;\n&lt;p&gt;���ͬʱ���ƶ��������漤�ҵľ�����ʹ����Ѻ����ע�����������ȸ�ͳ���125����Ԫ�չ�Ħ���������һ����������ǻ�����������˾�ȸ���ʷ������ģ����һ׮���ס�&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('18','20','&lt;p&gt;����ʱ��8��30�������Ϣ(������)���ֵ��Ź�˾(Batelco)��ǰ����������߹ܲ㣬���������μ�����ϯִ�йٱ˵�&amp;middot;���ﰢŵ����˹(Peter Kaliaropoulos)Ϊ�����ս��������ϯִ�й٣�����������������ҵ��&lt;/p&gt;\n&lt;p&gt;���ֵ������θ����³�л��&amp;middot;�º�Ĭ��&amp;middot;��&amp;middot;����&amp;middot;����&amp;middot;���﷢(Shaikh Mohamed Bin Isa Al Khalifa)�����μ�����ϯִ�й�һְ��&lt;/p&gt;\n&lt;p&gt;���ֵ��Ŷ��³���л��&amp;middot;�����&amp;middot;��&amp;middot;��������&amp;middot;����&amp;middot;���﷢(Shaikh Hamad Bin Abdulla Al Khalifa)��ʾ�����ܸ��˿������μ�����ϯִ�й���һλ����ḻ�İ���ҵ�����ܣ��Լ���λ���μ�����߼�ְ��İ��ֹ���&lt;/p&gt;\n&lt;p&gt;л��&amp;middot;�º�Ĭ�½���2011��10��1�������������ţ�л��&amp;middot;����±�ʾ��&lt;/p&gt;\n&lt;p&gt;������ʾ�����ǳ����˻�ӭ�ڶ��»����ʱ����ĳ�Ա������&amp;middot;����&amp;middot;������(Murad Ali Murad)���θ����³�һְ��&lt;/p&gt;\n&lt;p&gt;�˵ý���ս��������ϯִ�й�ְλ�ϼ���������ֵ������񣬲����۽��ڴ��µ��չ��м��ٴ����ֵ��&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('19','21','&lt;p&gt;&amp;nbsp;����ʱ��8��30�������Ϣ���������ڽ�����Щʱ����VMware�����Ƴ���һ���ƻ�����ʩ���񣬼�������ҵ����PC�����������չ�����������ʸ��ߵ�����ͷ�������&lt;/p&gt;\n&lt;p&gt;������񽫻���VMworld��vCloudƽ̨��ͨ����������λ�ڵ¿���˹������ŵ(Plano)���������Ľ������û�����ͨ���ֹ��ָ��ķ�ʽ�����ü���ʹ洢����Ҳ��ǩ�������ڵĺ�ͬ����Ԥ����ר�õ�Ӳ���������ڡ����⣬����������˾�ṩ���ʷ��񣬰��������Լ������������ﹹ��˽���ƣ���Щ��������Ҳʹ��vCloud���񡣴�������ʹ��VMware��Connector���������&amp;ldquo;���&amp;rdquo;�ƣ���˽�˺͹����ƻ������ӵ�һ��&lt;/p&gt;\n&lt;p&gt;�����ƻ�����һ��VMware��˹ά��˹VMworld�������������ƻ���&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;�йܰ�ȫ����&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;����ƻ�����ǿ������IBM�ͻ���֮��ľ�����ϵ�������ҹ�˾Ҳ���ڹ��������Ʒ��񡣴��⣬����ƻ������ô�����Ϊ����ѷ�������Verizon Business��Terremark�ȷ����ṩ�̵ľ������֣���Щ�ṩ������һЩͬʱ���Ǵ����Ŀͻ���&lt;/p&gt;\n&lt;p&gt;�洢��ѯ��˾Taneja Group��ʼ�˼���ʷ���ʦArun Taneja�ƣ����������ṩ��Щ�����Ա��ֹ�˾��ҵ�ڵľ�������ԭ�����Ʒ������ڱ�ɳ���ҵ����Ԥ��ƣ����д���IT���̶������������ṩĳ����ʽ���Ʒ���&lt;/p&gt;\n&lt;p&gt;���������Ÿ��ܲü�CTO(��ϯ������)���&amp;middot;�ȶ���(Mark Bilger)�ƣ�����&amp;ldquo;��һ�޶��ļ�ֵ��λ&amp;rdquo;�Ǹù�˾���ṩ���йܰ�ȫ��������ʾ���йܰ�ȫ���񽫳�Ϊ��������ı�׼��ɲ��֣���������Ϊ���ӷ�����ۡ����������Ϊ&amp;ldquo;Dell Cloud with VMware vCloud Datacenter Service&amp;rdquo;������Ҫ�Դ����͹�˾ΪĿ�꣬����԰潫�ڼ������������ƻ��ڵ��ļ����������г�����ʽ�Ƴ���������ŷ�޺������г����Ƴ���&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;ƽ̨������&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;�ȶ���ƣ������ƻ��������Ƴ�һ��&amp;ldquo;ƽ̨������&amp;rdquo;��Ʒ�����ַ���ʹ��΢��Azure��������⻹���Ƴ���һ�����OpenStack��Eucalyptus��Դƽ̨�Ļ�����ʩ���񣬵�������δ�������վ�����&lt;/p&gt;\n&lt;p&gt;ͨ���չ�IT������Perot Systems�Ľ��ף������Ѿ����ṩӦ���йܷ��������Ӫ��ԼΪ10����Ԫ���ȶ����ʾ����Щ�ͻ���ͬ������ǩ������ϣ������תΪ��׼���Ĺ����Ʒ�����ָ���������ִ����ġ�����VMware�Ļ���Ӧ�û���ζ�Ŵ�������ͻ��ĳɱ����������½������ǣ�Perot�����ͻ���������ҽ�Ʊ�����ҵ����˴������������������ѭHIPPA(����������ͨ�����η���)�Ĺ涨���ȶ���ƣ������ƻ���������������&lt;/p&gt;\n&lt;p&gt;�������ṩ������εķ��񣬷ֱ����ֹ��ָ��������ַ���ÿ̨������ĳɱ���ߣ�Ԥ�����񣬿�ȷ���������Ŀ����ԣ��Լ�ר�÷�����ͻ��ṩר�õķ����������������Ҫ��ͻ�ǩ��һ���ڵķ����ͬ��&lt;/p&gt;\n&lt;p&gt;������δ͸¶��Щ����ļ۸񡣱ȶ���ƣ���������Щ�������侺�������ṩ�ķ�����Ⱦ߱�&amp;ldquo;������&amp;rdquo;������ͬʱ��ʾ����Щ����ļ۸��Ը��ھ������ֵķ���ԭ�����������ȫ���ԡ�&lt;!-- pagebreak --&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;ս��ת��&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;����vCloudƽ̨��ĳ�������϶Դ�����ζ��ս�Ե�ת�䡣��ȥһ��ʱ������� һֱ���ڹ����Լ�������ѣ����������⼯��ϵͳ(VIS)�͸߼�������ʩ����(AIM)����ȡ������ڿ�ʼ������������Щ��Ʒ��VMware���һ����ۡ�&lt;/p&gt;\n&lt;p&gt;�ȶ���ƣ��ͻ���Ϊ��˽���ƺ͹����Ʒ���ʹ����ͬ�����ƽ̨��Ŀ���ǽ��������������Ӷ���Ϊ&amp;ldquo;�����&amp;rdquo;��&lt;/p&gt;\n&lt;p&gt;��ѯ��˾ThinkStrategies�����ܾ���ܸ���&amp;middot;������(Jeffrey Kaplan)�ƣ���VMware�����Ĵ��ͳ��̺����Դ�����˵ʮ����Ҫ����ָ����&amp;ldquo;�����Ѿ���ʶ�����Ʒ����ǹ�˾δ����һ����Ҫ��ɲ��֡���Ҫȡ�óɹ��Ļ���������ֻ���뿪���Լ��Ľ��������ͬʱ��������ҵ�����ȹ�˾���ˣ���(������VMware����)��������һ�����ӡ�&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;�������ƣ��ڽ������ؽ�Ϊһ������ͷ���˾�������ϣ������ı��ֺ�������Ԥ�ڣ�&amp;ldquo;�Ҳ��Ǵ����չ�Perot���׵ļᶨ֧���ߣ�������ȷʵȡ���˳ɹ�&amp;rdquo;��&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('20','9','&lt;p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;\n&lt;object id=&quot;reader&quot; width=&quot;630&quot; height=&quot;503&quot; data=&quot;http://wenku.baidu.com/static/flash/apireader.swf?docurl=http://wenku.baidu.com/play&amp;amp;docid=a72cf4360b4c2e3f57276336&amp;amp;title=%E7%A7%BB%E5%8A%A8%E9%80%9A%E4%BF%A1%E5%8F%91%E5%B1%95-%E5%8C%97%E4%BA%AC%E7%A7%BB%E5%8A%A8%E4%B9%9D%E6%9C%88&amp;amp;doctype=ppt&amp;amp;fpn=5&amp;amp;npn=5&amp;amp;readertype=external&amp;amp;catal=0&amp;amp;cdnurl=http://txt.wenku.baidu.com/play&quot; type=&quot;application/x-shockwave-flash&quot;&gt;\n&lt;param name=&quot;align&quot; value=&quot;middle&quot; /&gt;\n&lt;param name=&quot;wmode&quot; value=&quot;window&quot; /&gt;\n&lt;param name=&quot;allowfullscreen&quot; value=&quot;true&quot; /&gt;\n&lt;param name=&quot;allowscriptaccess&quot; value=&quot;always&quot; /&gt;\n&lt;param name=&quot;src&quot; value=&quot;http://wenku.baidu.com/static/flash/apireader.swf?docurl=http://wenku.baidu.com/play&amp;amp;docid=a72cf4360b4c2e3f57276336&amp;amp;title=%E7%A7%BB%E5%8A%A8%E9%80%9A%E4%BF%A1%E5%8F%91%E5%B1%95-%E5%8C%97%E4%BA%AC%E7%A7%BB%E5%8A%A8%E4%B9%9D%E6%9C%88&amp;amp;doctype=ppt&amp;amp;fpn=5&amp;amp;npn=5&amp;amp;readertype=external&amp;amp;catal=0&amp;amp;cdnurl=http://txt.wenku.baidu.com/play&quot; /&gt;\n&lt;param name=&quot;name&quot; value=&quot;reader&quot; /&gt;\n&lt;param name=&quot;bgcolor&quot; value=&quot;#FFFFFF&quot; /&gt;\n&lt;/object&gt;\n&lt;/p&gt;\n&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('21','22','&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;span&gt;&lt;span style=&quot;font-size: large;&quot;&gt;&lt;strong&gt;IPHONE4&amp;nbsp;�����&amp;nbsp; ������·&lt;/strong&gt;&lt;/span&gt;��&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: small;&quot;&gt;1�����ʻ�����ʲô�汾�����л����б������з�Ʊ����ô���ޣ�&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;�����ǲ�Ҫ�����������⣬���������й�˾������ƻ����Ȩ�����̣�ֻ����½�л������������Ʊ��ȫ������&lt;span&gt;1&lt;/span&gt;�꣡&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;font-size: small;&quot;&gt;2�����ʼ�����ʲô��˼����Ҫ��������ô������&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;span&gt;Iphone 4&lt;/span&gt;�õ���С�������ǳ��õ��Ǵ󿨣�ֱ��װװ����ȥ����Ҫ��С���У����Ե�Ӫҵ�����˰�æ��Ѽ������߾��Լ��ðѼ�����ʼ�ɣ����������ѯ�ͷ�Ŷ��&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: small;&quot;&gt;3������������������ǲ���������Ϳ������ˣ�ʲô��������װ������&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;�����������ʱ�Դ���һЩ��������õ��ֵ�ʱ��ֻ��Ҫ����һ�¾Ϳ����ˣ���&lt;span&gt;PS&lt;/span&gt;��ÿ��ƻ��ȫ�µĻ�����һ��ʹ�ö�����Ҫ����ģ���������������ֻ�����Ҫ�������ֱ��ʹ�ã�ֻ��˵�������ˣ���&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: small;&quot;&gt;4�������ֻ���μ���������ITUNES�����ע�᣿&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;���Ե�½ƻ���������ذ�װ&lt;span&gt;itunes&lt;/span&gt;�ֻ�װ�Ͽ����ӵ����Զ����&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;����&lt;span&gt;itunes&lt;/span&gt;��ַ&lt;span&gt;&amp;nbsp;&lt;/span&gt;&lt;span&gt;http://www.apple.com.cn/itunes/&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;strong&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;5��������θ���ͨѶ¼����������ʲô��˼��&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;������&lt;span&gt;-&lt;/span&gt;�ʼ���ͨѶ¼������&lt;span&gt;-&lt;/span&gt;����&lt;span&gt;sim&lt;/span&gt;ͨѶ¼&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;span&gt;Iphone&lt;/span&gt;����&lt;span&gt;wifi&lt;/span&gt;�����������ֻ����������������ݾ������ֻ���������������������&lt;span&gt;wifi&lt;/span&gt;������²�Ҫ�򿪷������ݣ�������̫�ĵ��ˣ�����ֻ�����������������������ȫ��ƱƱ��&lt;span&gt;!&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;span&gt;&lt;br /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: small;&quot;&gt;6������������֣���Ƶ����Ϸ��&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;������Ҫ�ٴ��ᵽ&lt;span&gt;itunes&lt;/span&gt;�ˣ�&lt;span&gt;itunes&lt;/span&gt;����תƻ���ıر���������԰�������Ƶ���ϴ���&lt;span&gt;itunes&lt;/span&gt;���Ͽ�Ȼ��ͬ������Ϸ������&lt;span&gt;itunes store&lt;/span&gt;ֱ������ͬ�����ֻ��&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: small;&quot;&gt;7�������ܲ��ܰ�æ��Ĥ���߰�װ�����&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;�����Ҫ��æ��Ĥ�Ͱ�װ���������Ҫ�����������������Լ���Ĥ��װ���������ֱ�ӷ�ȫ�²����ĸ������������յ���������ʱ���ǳ��ļ�����&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: small;&quot;&gt;8������Խ����ʲô��˼��������ҪԽ����&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;Խ�����޸��ֻ���Ȩ������֧�ֵ�������������ǾͿ����Լ����������������ѵ�����������ֻ��һ���ò���ҪԽ����&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;���ǣ����츶��ʱ�䲻��������&lt;span&gt;2&lt;/span&gt;�㣬���ǵ��췢��Ŷ�����ճ��⣩�ǻ�ڼ�Ŷ��&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;��������������⣬�����½��ַ&lt;span&gt;178xx&lt;/span&gt;��&lt;span&gt;IPHONE4&lt;/span&gt;���ֽ̡̳�&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('22','23','&lt;p&gt;����V880��Ϊ����3D���ٹ��ܣ������ڶ�㴥���������Ҳ��Ȧ�ɵ㡣��������������MOTO ��̱���Ϊ�Աȡ�&lt;/p&gt;\n&lt;p&gt;������̱��Ѿ�ˢ��һ������Android 2.2 ROM���������㴥��ֻ����һ���ο����ӱ�������������V880����̱��Ķ�㴥����Ӧ���Ƚ������������ձ����һЩ&amp;ldquo;Ʈ&amp;rdquo;�����������V880�ڷŴ���С�Ĺ�����΢��һ&lt;/p&gt;\n&lt;p&gt;&lt;br /&gt;&lt;strong&gt;����V880����̱���Ϸ�Ա�&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;��������������һ�¡���ŭ��С�񡷣������Ϸ���ֻ���Ӳ��Ҫ������һ��ˮƽ�ġ������ܹ����������ŭ��С��Ҳ�Ǻ���һ���ֻ����ܵļ�Ҫָ�ꡣ��Ƶ�е���̱���һ�������Android 2.2ϵͳ�ĳ�Ƶ�棬CPU���ƽ�Ϊ700MHz��&lt;/p&gt;\n&lt;p&gt;����Ϸ�ļ����ٶ�����������V880����512MB���ڴ�?�Ȼռ��һ�������ơ�����Ա�Ҳ˵��������V880�ڴ���������з����ǲ�������̱��ġ�&lt;/p&gt;\n&lt;p&gt;����һЩ��ҪCPU������Ļ��ڣ�������������̱��ᷴӦ�ÿ�һ�㣬��Ҳ���Կ�������V880��MSN7227�����ܻ�����΢������̱�����ARM Cortex-A8���ĵ�TI OMAP3430 CPU��&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;320������AF����ͷ&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;����V880������һö320�����ص�����ͷ���������ż�����ˡ���Ȼ���ط�����������500���е��࣬���Ƕ����ֻ�������˵Ӱ�첢���󣬱ȽϺ�����ǣ�����V880������ͷ֧���Զ��Խ����ܣ���Ҳ�����˱Ȼ�ΪAndroid�ֻ�Ҫ�����Ի��ĵط���&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('23','24','&lt;p&gt;ŵ����C5-03�䱸����1000����ʱ�ĵ�أ����۴���ʱ��Ϊ600Сʱ���ڱ��߶�����ֻ�����������ڼ䣬ÿ���Լ20���ӵ�ͨ��ʱ�����2Сʱ������ʱ�䣬һ����ʹ��ʱ��Ϊ�������ҡ����������ĺû���һ���̶���Ӱ�����ֻ���ʹ�ã�������ֻ���������ձ�ϴ�������£�1000����ʱ�ĵ�����������еȣ�����ֻ�ʹ���ʽϸߵ�ʹ���߻��ǹ��ñ��õ�ػ�ȽϷ��㡣&lt;/p&gt;\n&lt;p&gt;&lt;br /&gt; �������빦�ܷ��棬������Ϊŵ����C5-03�������÷ǳ�����ġ��ֻ��Դ���д��ȫ����д��ȫ��QWERTY ���̺�������ĸ���̶������뷽ʽ����������Ϥȫ�������뷨������ϰ����д���뷨��ʹ���߶����Եõ����㡣���뷨�Դ��Ĵʻ����빦��ʹ������ȽϷ��㣬���ҽ�ʡʱ�䣬���뷨��Ӧʱ��Ҳ�ȽϿ죬������ԣ�C5-03�Ķ��Ź���ʹ�úܷ��㡣&lt;/p&gt;\n&lt;p&gt;&lt;br /&gt;��������ǰ������������������ڴ����ֻ����ԣ�û���䱸���ر���һ��СС���ź�����Ϊѡ��QWERTY���̺�������ĸ�������뷽ʽ��ʱ�򣬰���������ܿ��������׳����󴥵�����������������ʹ���߶��ԡ�����û�д��رʣ�ʹ����д���뷨Ҳ��̫���㡣&lt;/p&gt;\n&lt;p&gt;&lt;br /&gt;��Ȼû�����ּ��̣�����ŵ����C5-03���Ų����鷳����Ϊ�ֻ�����Ҫ������Ĺ��ܣ�����ֻ�����Ҳ�ǳ����㡣����ѡ�����ִ���ģʽ���������ڴ��������п������ٵ������ּ��Ŀ�ݷ�ʽ�͵���������ϵ�˵Ŀ�ݷ�ʽ�����ּ������ܴ�ʮ�������󷽡�&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('24','25','&lt;p&gt;&amp;nbsp;HTCҰ��S��ΪҰ��������汾�̳���ǰ����������ͣ��ֱ��ʵ�����Լ�ϵͳ�汾�������øû��������һ����ǿ����Ŀǰ�߶�Andorid�콢Ƶ���Ľ��죬���Ǹ���Ҫ���������ж�&lt;span&gt;��Ʒ&lt;/span&gt;�������г���Sense2.1����ļ���Ҳ�����HTCҰ��S���˸�����Ĺ������ɡ�����������Ѱ��һ���ж�Aandorid&lt;span&gt;�ֻ�&lt;/span&gt;�Ļ�����ȥʵ������������ֻ������Ż���һ���ǳ���������顣&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;\n&lt;object width=&quot;480&quot; height=&quot;400&quot; data=&quot;http://player.youku.com/player.php/sid/XMjQwNTkwMDA0/v.swf&quot; type=&quot;application/x-shockwave-flash&quot;&gt;\n&lt;param name=&quot;data&quot; value=&quot;http://player.youku.com/player.php/sid/XMjQwNTkwMDA0/v.swf&quot; /&gt;\n&lt;param name=&quot;align&quot; value=&quot;middle&quot; /&gt;\n&lt;param name=&quot;src&quot; value=&quot;http://player.youku.com/player.php/sid/XMjQwNTkwMDA0/v.swf&quot; /&gt;\n&lt;param name=&quot;allowfullscreen&quot; value=&quot;true&quot; /&gt;\n&lt;param name=&quot;quality&quot; value=&quot;high&quot; /&gt;\n&lt;/object&gt;\n&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('25','26','&lt;p&gt;HTC ����S֧��720p��MP4��Ƶ�ļ����ţ�ͬʱ����֧��3gp��mp4��WMV9��avi��MP4��MP3��װ����ʽ����Ƶ�ļ����ţ�����Ƶ�ļ����ű����ϣ������Բ���mp3��wav��wma9��ʽ����Ƶ�ļ��������������ֲ��Ż�����Ƶ���Ž��棬�����Կ���srs��Ч������������һЩ������������Ч��������ȥ���ɣ������Լ���������Ӻ��������������������������������������ʣ���ӿ��ص������ٶȡ�&lt;/p&gt;\n&lt;p&gt;&lt;br /&gt;HTC ����S�����˺�HTC S710dһ���Ĵ������ܹ����ͺ�Ϊ��ͨMSM8255����һ�ܹ��ĵ�����ƵΪ1GHz������Adreno 205ͼ�δ���оƬ����3Dͼ�δ������Լ�������Ƶ���ŷ����ṩ��������֧�֡�ͬʱ�����ڴ������1.1GB(ROM)/768MB(RAM)����Ϸ�ʽ�������ǲ��Խ����&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('26','27','&lt;p&gt;���˵������7��ƽ������г��ĳ����ߣ�ӵ�ж��г����ٶ�������۹⣬��ôHTC��Ƶ�����7��ƽ������г��ķ����ߣ�����HTC Sense���������һ�������û�Ϊ���ģ������û�������Ӷ��з���Ʒ����Ҳ��HTC�ܹ�Ѹ�ٺ��ȫ���ԭ��֮һ����ȷ��ƽ������г���Ǳ�����޷������ģ�����ͳ�ĳ��̶�������һ���������������HTCҲ�����⣬��ΪHTC�׿�ƽ����ԣ���ѡ����7�������С�ߴ磬Ŀ������ͻ�����ֻ����Զ�����������Щ�ֻ���������ɵ�����&lt;/p&gt;\n&lt;p&gt;ƽ����Կ���˵�Ǵ��������ֻ�����߱����ߵĽ�ϵ��������˲�����û���ѡ��ƽ�����ʱ���Ȼῼ��������۴�С�����������鷢��7��ƽ�������Ȼ���û���Ҫ�ģ��ھ���9.7���iPad�Լ�10.1��Ħ������XOOM���г���֤��7���𽥳�Ϊ���û��ڹ���ѡ��ƽ�������Ҫ��Ԫ��֮һ��7����Ϊ���ϰѿص���ѳߴ磬�ڲٿ�Ӧ�û���Ϸʱ��ӵ�����õ����飬�������P1000��Ϊ�������Ի𱬵���������֤����&lt;/p&gt;\n&lt;p&gt;&lt;br /&gt;������HTC��Դ�½�����û���Ҳ����������ս�Ժ���������˹�ͬ������HTC Flyer�л����ͺ�ΪP510e��ƽ����ԣ����йش�����3GƵ��Ҳ���ҵ�һʱ���õ��˸ò�Ʒ��Ϊ������ȫ��λ�����⡣&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('27','28','&lt;p&gt;1�����ŶӾ���Ʒ�ж�������ͨ�������ǿ�����Ͻ���̬����֪������&lt;/p&gt;\n&lt;p&gt;2����ͨMYSQL���ݿ⣻�˽�ʹ��Linux��ϵͳ��&lt;/p&gt;\n&lt;p&gt;3����Ϥ����ϵͳ����ԭ�������š��̳ǡ���̳���˲���վ��...&lt;/p&gt;\n&lt;p&gt;4���ж�����������Ʒ���ȣ�&lt;/p&gt;\n&lt;p&gt;5�������������ϻ�������̾��飻&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('28','29','&lt;p&gt;1�����ŶӾ���Ʒ�ж�������ͨ�������ǿ�����Ͻ���̬����֪������&lt;strong&gt;&lt;br /&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;2��linux/unixƽ̨C/C++�������������������ϣ�������Ϥ��ƽ̨�µ�unixϵͳ(AIX/SCO unix/HP unix/UnixWare)�������ϣ�&lt;/p&gt;\n&lt;p&gt;3����������Android��IPhone�ֻ����������&lt;/p&gt;\n&lt;p&gt;4����������SQL���ԣ���ϤMYSQL���ݿ⣻&lt;/p&gt;\n&lt;p&gt;5������C��JAVA��˱��������ȿ��ǣ�&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('29','30','&lt;p&gt;1�����ŶӾ���Ʒ�ж����������ġ���ͨ�������ǿ��&lt;/p&gt;\n&lt;p&gt;2�����ջ�������ͨ���ɣ�&lt;/p&gt;\n&lt;p&gt;3���Կͻ�����ȫ��λ֧�֣�����֧�֡���ѵ֧�֡��ۺ�֧�֣���&lt;/p&gt;\n&lt;p&gt;4���ܹ�Ŭ����ɹ�˾�ƶ�������Ŀ�ꣻ&lt;/p&gt;\n&lt;p&gt;5���л���������ķ����飬����ҳ�л����˽�����ȿ��ǣ�&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('30','31','&lt;p&gt;1�����ŶӾ���Ʒ�ж�������ͨ�������ǿ��&lt;/p&gt;\n&lt;p&gt;2�����ڱ���רҵ��ҵ���н��ڼ�������Ĺ������飻&lt;/p&gt;\n&lt;p&gt;3����ͨ����׼����ò������&lt;/p&gt;\n&lt;p&gt;4���ܹ���Ӧ�Ϻ����������ز����ڵĳ������&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('31','32','&lt;p&gt;�����С��680KB&lt;/p&gt;\n&lt;p&gt;�汾��V3.0.2 ����������ʽ��&lt;/p&gt;\n&lt;p&gt;˵������ӭ��ͨ���������ʱ��Ѳμ�ESPCMSԶ����ѵ���й�Զ����ѵ��Ϣ���ע��̳������&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('32','33','&lt;p&gt;�����С��10.18MB&lt;br /&gt;�汾��1.2 ��ʽ��&lt;br /&gt;����ʱ�䣺2011-08-30 02:48:21&lt;br /&gt;˵������������������°��Apache��������Apache/2.0.58 (Win32)��PHP/5.2.11��MySQL&amp;nbsp;&lt;br /&gt;�ͻ��˰汾: 5.0.51a��phpMyAdmin3.2.0.1��Zend Optimizer v3.3.3��Zend Debugger v5.2.6&amp;nbsp;&lt;br /&gt;����������Ĭ����ɣ���ɫ���ֱ��ʹ�ã�&lt;br /&gt;˵����������޷����������������������Ƿ�ռ��80�˿ڣ���IIS�����ʹ��˵����鿴������֧���йر�ϵͳ�������⣡&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('33','34','&lt;p&gt;&lt;img src=&quot;/upfile/2011/08/30/20110830215515_989.jpg&quot; alt=&quot;&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;EarcLink��һ�ҳ��������ڵĸ��ʿƼ���˾�����ǿ����Ľ�վϵ�в�Ʒ���ܹ��������ʦ����ҵ������վӪ��ƽ̨��&quot;&gt;EarcLink was founded in Shenzhen, Hong Kong-owned technology company, we have developed siting products to help enterprises easily build a website designer and marketing platform.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;����ESPCMS�Ƚ�վ��Ʒ�ı�ݺ�ǿ���ܣ���˶�Ӯ��������û������������õ���ҵ�ڱ���ǿ����û�������&quot;&gt;Jianzhan products such as ESPCMS convenient and powerful features, hence the name, many users, the industry established a good reputation and a strong number of users.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;����ESPCMS�Ƚ�վ��Ʒ�ı�ݺ�ǿ���ܣ���˶�Ӯ��������û������������õ���ҵ�ڱ���ǿ����û�������&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;��������Ĳ�Ʒ��2002���Ƴ��������ڴ˶���ǰ�����ǵĹ��¾Ϳ�ʼ�ˡ�&quot;&gt;Our first product was introduced in 2002, but early in this two years ago, our story begins.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;��������Ĳ�Ʒ��2002���Ƴ��������ڴ˶���ǰ�����ǵĹ��¾Ϳ�ʼ�ˡ�&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;EarcLink�Ĵ�ʼ�˸տ�ʼ��������������������ǵ���Ȥ�����ڵ��������������Ŀ����о��������۶��Ƿ����û�����Ϊ����Ȥ���ã���&quot;&gt;EarcLink founder of the beginning of not doing software development, our interest focused on the research fields related to electronic commerce (the use of eye tracking analysis of user behavior and interests).&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;���ڷ����ڶ���վ�������Ǳ�����ƾ����ģ�������Щԭ��������վ��ƣ�EarcLink������Щ��վ��������ص�֮һ�����ǲ��߱���������Ľ����ԡ������ԡ���չ��Ҳ���&quot;&gt;As found in many sites, regardless of the surface beautifully designed, or who had poor website design, EarcLink found one of the most basic features of these sites: just do not have the interactive e-commerce, communication, and scalability is also very poor.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;ֻҪ��ҵ��������֮�ı䣬��վ�ͱ��������������ɴ��˷�����ҵ������ʱ�䡢��Ǯ�ͻ��۵����޿ͻ���Դ��&quot;&gt;As long as business needs changed, the site must start again, which wasted a lot of business time, money and the accumulation of limited client resources.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;��ˣ����ǿ�����һ�����ᣬΪ�ı���һ��״��EarcLink��ʼ����ҵ��վƽ̨������о��Ϳ�����������̿�����ESPCMS��ҵ��վ�����KUBCMS�Ż���վ�������ص���ƽ̨��&quot;&gt;Thus, we see an opportunity to change this situation, EarcLink began Build your platform areas of research and development, have developed a ESPCMS Build your software, KUBCMS Jianzhan portal software and related cloud platform.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;����ʱ������ƺ�ҵ���������Խ��Խ��Ŀͻ��ӽ����ǲ�ʹ�����ǵĲ�Ʒ��&quot;&gt;As time goes by and business growth, more and more customers closer to us and use our products.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;����ʱ������ƺ�ҵ���������Խ��Խ��Ŀͻ��ӽ����ǲ�ʹ�����ǵĲ�Ʒ��&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;��������Դ���һ����EarcLink�ڷ�չ��ΪѶ�ٵĽ׶ξ�����֪ʶ��Ȩ���������⣬һ�����Ǵ����ɳ����û�����һ������Щ�û���δ������EarcLink������Ӧ�������Ȩ���ã���&quot;&gt;Like with most open source software, EarcLink in the development stage of the most rapidly and experienced intellectual property protection issues, on the one hand a large number of users grow, the other hand, these users did not take the initiative to EarcLink pay the appropriate software licensing fees, or&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;ΪEarcLink��չ�������Ĺ��ף�����ʹEarcLink��չ�������൱������⡣&quot;&gt;development for the EarcLink bring much contribution, which resulted in EarcLink facing the development of a large problem.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;����EarcLink�����˵ͼ۵�������ԡ�ͨ������ҵ�ṩ����Ӫ����������ǿ֪ʶ��Ȩ�ı�����ʩ����רҵ�Ľ�վ��˾���к����ƹ�Ӫ���ײ͡��ṩרҵ�������ѯ����ȷ���������ʹ��EarcLink��չ&quot;&gt;Later EarcLink adjusted low-cost software strategy by providing integrated marketing solutions to enterprises, strengthen intellectual property protection, siting and professional marketing company to promote cooperation package, to provide professional consulting services, software and other methods, and finally making EarcLink development&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;����ά�ֲ��ȶ���չ��&quot;&gt;maintained and stable development.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;����ά�ֲ��ȶ���չ��&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;EarcLink������Ƶ������Ʒ��һЩ�������⣬��ͨ�������û��Ľ����ʵ�ʲ��ԣ����ǲ��ϸĽ����ǵ������Ʒ��&quot;&gt;EarcLink early design of the software product has some less than satisfactory, but by a large number of users of recommendations and practical testing, we continuously improve our software products.&lt;/span&gt;&lt;span title=&quot;���죬�г���10�����վÿ����ʹ�����ǵ����������վӪ�����ռ��ͻ���Ϣ�����ײ�Ʒ�����ͻ�����ȵ�...&quot;&gt;Today, more than 100,000 websites every day for use of our website marketing software to collect customer information, trade products, answer customer questions, and so on ...&amp;nbsp;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;��Ȼ���ǻ��ڲ�ͣ����Ӹ���Ĺ��ܺͲ������Ʋ�Ʒ���飬�����ǵ�Ŀ�껹û�дﵽ��������õ���ʵ�õĻ�������վƽ̨��&quot;&gt;Although we still keep adding more features and continuously improve the product experience, but have not reached our goal: to create the best and most useful Internet Jianzhan platform.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('34','35','&lt;div&gt;\n&lt;p&gt;&lt;img src=&quot;/upfile/2011/08/30/20110830215515_989.jpg&quot; alt=&quot;&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;EarcLink��һ�ҳ��������ڵĸ��ʿƼ���˾�����ǿ����Ľ�վϵ�в�Ʒ���ܹ��������ʦ����ҵ������վӪ��ƽ̨��&quot;&gt;EarcLink was founded in Shenzhen, Hong Kong-owned technology company, we have developed siting products to help enterprises easily build a website designer and marketing platform.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;����ESPCMS�Ƚ�վ��Ʒ�ı�ݺ�ǿ���ܣ���˶�Ӯ��������û������������õ���ҵ�ڱ���ǿ����û�������&quot;&gt;Jianzhan products such as ESPCMS convenient and powerful features, hence the name, many users, the industry established a good reputation and a strong number of users.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;����ESPCMS�Ƚ�վ��Ʒ�ı�ݺ�ǿ���ܣ���˶�Ӯ��������û������������õ���ҵ�ڱ���ǿ����û�������&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;��������Ĳ�Ʒ��2002���Ƴ��������ڴ˶���ǰ�����ǵĹ��¾Ϳ�ʼ�ˡ�&quot;&gt;Our first product was introduced in 2002, but early in this two years ago, our story begins.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;��������Ĳ�Ʒ��2002���Ƴ��������ڴ˶���ǰ�����ǵĹ��¾Ϳ�ʼ�ˡ�&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;EarcLink�Ĵ�ʼ�˸տ�ʼ��������������������ǵ���Ȥ�����ڵ��������������Ŀ����о��������۶��Ƿ����û�����Ϊ����Ȥ���ã���&quot;&gt;EarcLink founder of the beginning of not doing software development, our interest focused on the research fields related to electronic commerce (the use of eye tracking analysis of user behavior and interests).&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;���ڷ����ڶ���վ�������Ǳ�����ƾ����ģ�������Щԭ��������վ��ƣ�EarcLink������Щ��վ��������ص�֮һ�����ǲ��߱���������Ľ����ԡ������ԡ���չ��Ҳ���&quot;&gt;As found in many sites, regardless of the surface beautifully designed, or who had poor website design, EarcLink found one of the most basic features of these sites: just do not have the interactive e-commerce, communication, and scalability is also very poor.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;ֻҪ��ҵ��������֮�ı䣬��վ�ͱ��������������ɴ��˷�����ҵ������ʱ�䡢��Ǯ�ͻ��۵����޿ͻ���Դ��&quot;&gt;As long as business needs changed, the site must start again, which wasted a lot of business time, money and the accumulation of limited client resources.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;��ˣ����ǿ�����һ�����ᣬΪ�ı���һ��״��EarcLink��ʼ����ҵ��վƽ̨������о��Ϳ�����������̿�����ESPCMS��ҵ��վ�����KUBCMS�Ż���վ�������ص���ƽ̨��&quot;&gt;Thus, we see an opportunity to change this situation, EarcLink began Build your platform areas of research and development, have developed a ESPCMS Build your software, KUBCMS Jianzhan portal software and related cloud platform.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;����ʱ������ƺ�ҵ���������Խ��Խ��Ŀͻ��ӽ����ǲ�ʹ�����ǵĲ�Ʒ��&quot;&gt;As time goes by and business growth, more and more customers closer to us and use our products.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;����ʱ������ƺ�ҵ���������Խ��Խ��Ŀͻ��ӽ����ǲ�ʹ�����ǵĲ�Ʒ��&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;��������Դ���һ����EarcLink�ڷ�չ��ΪѶ�ٵĽ׶ξ�����֪ʶ��Ȩ���������⣬һ�����Ǵ����ɳ����û�����һ������Щ�û���δ������EarcLink������Ӧ�������Ȩ���ã���&quot;&gt;Like with most open source software, EarcLink in the development stage of the most rapidly and experienced intellectual property protection issues, on the one hand a large number of users grow, the other hand, these users did not take the initiative to EarcLink pay the appropriate software licensing fees, or&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;ΪEarcLink��չ�������Ĺ��ף�����ʹEarcLink��չ�������൱������⡣&quot;&gt;development for the EarcLink bring much contribution, which resulted in EarcLink facing the development of a large problem.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;����EarcLink�����˵ͼ۵�������ԡ�ͨ������ҵ�ṩ����Ӫ����������ǿ֪ʶ��Ȩ�ı�����ʩ����רҵ�Ľ�վ��˾���к����ƹ�Ӫ���ײ͡��ṩרҵ�������ѯ����ȷ���������ʹ��EarcLink��չ&quot;&gt;Later EarcLink adjusted low-cost software strategy by providing integrated marketing solutions to enterprises, strengthen intellectual property protection, siting and professional marketing company to promote cooperation package, to provide professional consulting services, software and other methods, and finally making EarcLink development&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;����ά�ֲ��ȶ���չ��&quot;&gt;maintained and stable development.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;����ά�ֲ��ȶ���չ��&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;EarcLink������Ƶ������Ʒ��һЩ�������⣬��ͨ�������û��Ľ����ʵ�ʲ��ԣ����ǲ��ϸĽ����ǵ������Ʒ��&quot;&gt;EarcLink early design of the software product has some less than satisfactory, but by a large number of users of recommendations and practical testing, we continuously improve our software products.&lt;/span&gt;&lt;span title=&quot;���죬�г���10�����վÿ����ʹ�����ǵ����������վӪ�����ռ��ͻ���Ϣ�����ײ�Ʒ�����ͻ�����ȵ�...&quot;&gt;Today, more than 100,000 websites every day for use of our website marketing software to collect customer information, trade products, answer customer questions, and so on ...&amp;nbsp;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;��Ȼ���ǻ��ڲ�ͣ����Ӹ���Ĺ��ܺͲ������Ʋ�Ʒ���飬�����ǵ�Ŀ�껹û�дﵽ��������õ���ʵ�õĻ�������վƽ̨��&quot;&gt;Although we still keep adding more features and continuously improve the product experience, but have not reached our goal: to create the best and most useful Internet Jianzhan platform.&lt;/span&gt;&lt;/p&gt;\n&lt;/div&gt;');
INSERT INTO `espcms_document_content` VALUES ('35','36','&lt;p&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;strong&gt;Personal Information&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;We collect your personal information for various purposes, such as processing your order, corresponding with you, providing you with a subscription or in connection with a job application.&lt;/p&gt;\n&lt;p&gt;We may combine the information we collect from you with information obtained from other sources to help us improve its overall accuracy and completeness, and to help us better tailor our interactions with you.&lt;/p&gt;\n&lt;p&gt;In addition, we may also collect information relating to your use of our Web sites through the use of various technologies, including cookies.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;strong&gt;Uses&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;To fulfill your requests by us or by others involved in fulfillment.&lt;/p&gt;\n&lt;p&gt;To contact you for customer satisfaction surveys, market research or in connection with certain transactions.&lt;/p&gt;\n&lt;p&gt;To support products or services you have obtained from us.&lt;/p&gt;\n&lt;p&gt;By IBM and selected organizations for marketing purposes if you have permitted such use.&lt;/p&gt;\n&lt;p&gt;To personalize your experience while you are on our sites, make navigation easier, and for Web site usage statistics.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;strong&gt;Your Choices&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;When we collect information from you, you may tell us that you do not want it used for further marketing contact.&lt;/p&gt;\n&lt;p&gt;You may also turn off cookies in your browser.&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('36','37','&lt;p&gt;&lt;span title=&quot;����V880��Ϊ����3D���ٹ��ܣ������ڶ�㴥���������Ҳ��Ȧ�ɵ㡣&quot;&gt;ZTE V880 because with 3D acceleration, so the multi-touch aspects of performance is commendable.&lt;/span&gt;&lt;span title=&quot;��������������MOTO ��̱���Ϊ�Աȡ�&quot;&gt;Here we got a MOTO milestone for comparison.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;������̱��Ѿ�ˢ��һ������Android 2.2 ROM���������㴥��ֻ����һ���ο���&quot;&gt;As a milestone has been brushed folk Android 2.2 ROM, so its multi-touch can make a reference.&lt;/span&gt;&lt;span title=&quot;�ӱ�������������V880����̱��Ķ�㴥����Ӧ���Ƚ������������ձ����һЩ&amp;ldquo;Ʈ&amp;rdquo;�����������V880�ڷŴ���С�Ĺ�����΢��һ&quot;&gt;From the performance point of view, ZTE V880 and milestones of the multi-touch response are more sensitive, but the prevalence of a number of &quot;Gone with the Wind&quot;, and ZTE V880 zoom process in a slightly stable&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;����V880����̱���Ϸ�Ա�&quot;&gt;ZTE V880 compared with the milestone game&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;��������������һ�¡���ŭ��С�񡷣������Ϸ���ֻ���Ӳ��Ҫ������һ��ˮƽ�ġ�&quot;&gt;Let\'s look at trial, &quot;an angry bird&quot;, the game\'s hardware requirements on the phone or have a certain level.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;�����ܹ����������ŭ��С��Ҳ�Ǻ���һ���ֻ����ܵļ�Ҫָ�ꡣ&quot;&gt;So to smooth &quot;play angry bird&quot; is a brief measure of a cell phone performance indicators.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;��Ƶ�е���̱���һ�������Android 2.2ϵͳ�ĳ�Ƶ�棬CPU���ƽ�Ϊ700MHz��&quot;&gt;The milestone is a video with a version of Android 2.2 system overclocking, CPU has been cracked to 700MHz.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;����Ϸ�ļ����ٶ�����������V880����512MB���ڴ�?�Ȼռ��һ�������ơ�����Ա�Ҳ˵��������V880�ڴ���������з����ǲ�������̱��ġ�&quot;&gt;From the game\'s loading rate, ZTE V880 with 512MB of memory? Uniform insignia plus beer fortune climbed U Huan �� scratch supper shed the milk teeth have condylar member sewing crisp vegetables in a large line of Sun software runs in 880 is not lost on the milestone.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;����һЩ��ҪCPU������Ļ��ڣ�������������̱��ᷴӦ�ÿ�һ�㣬��Ҳ���Կ�������V880��MSN7227�����ܻ�����΢������̱�����ARM Cortex-A8���ĵ�TI OMAP3430 CPU��&quot;&gt;For some require the CPU to handle the links, after unlocking the milestones will react a little bit faster, which can be seen the MSN7227 ZTE V880 or slightly below the milestone performance ARM Cortex-A8 core based on the TI OMAP3430 CPU.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;320������AF����ͷ&quot;&gt;3.2-megapixel AF camera&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;����V880������һö320�����ص�����ͷ���������ż�����ˡ�&quot;&gt;ZTE V880 uses a 3.2 megapixel camera, be regarded as entry-level up.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;��Ȼ���ط�����������500���е��࣬���Ƕ����ֻ�������˵Ӱ�첢���󣬱ȽϺ�����ǣ�����V880������ͷ֧���Զ��Խ����ܣ���Ҳ�����˱Ȼ�ΪAndroid�ֻ�Ҫ�����Ի���&quot;&gt;Although the pixel area of ??500 million with a little gap between the mainstream, but it did not affect cell phone pictures, more generous, the ZTE V880 camera with auto-focus feature, which is Huawei, ZTE Android phone to be more than human&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;�ط���&quot;&gt;place.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('37','38','&lt;p&gt;&lt;span title=&quot;ŵ����C5-03�䱸����1000����ʱ�ĵ�أ����۴���ʱ��Ϊ600Сʱ��&quot;&gt;Nokia C5-03 is equipped with 1000 mAh battery, 600 hours of standby time.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;�ڱ��߶�����ֻ�����������ڼ䣬ÿ���Լ20���ӵ�ͨ��ʱ�����2Сʱ������ʱ�䣬һ����ʹ��ʱ��Ϊ�������ҡ�&quot;&gt;In my evaluation of this phone for a period of a day, about 20 minutes of talk time plus 2 hours of Internet time, a battery is about three days.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;���������ĺû���һ���̶���Ӱ�����ֻ���ʹ�ã�������ֻ���������ձ�ϴ�������£�1000����ʱ�ĵ�����������еȣ�����ֻ�ʹ���ʽϸߵ�ʹ���߻��ǹ��ñ��õ��&quot;&gt;Standby capacity is good or bad to some extent, affected the use of mobile phones, mobile phone battery capacity is now common in the larger trend, the 1000 mAh battery capacity is a moderate, if the mobile phone usage is high, users still buy spare batteries&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;��ȽϷ��㡣&quot;&gt;would be more convenient.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;�������빦�ܷ��棬������Ϊŵ����C5-03�������÷ǳ�����ġ�&quot;&gt;Text input function, I believe that Nokia C5-03 is still doing very good.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;�ֻ��Դ���д��ȫ����д��ȫ��QWERTY ���̺�������ĸ���̶������뷽ʽ����������Ϥȫ�������뷨������ϰ����д���뷨��ʹ���߶����Եõ����㡣&quot;&gt;The phone comes with handwriting, full-screen handwriting, full QWERTY keyboard and alphanumeric keypad variety of input methods, whether it is familiar with all keyboard input, handwriting input method or habit of users can be met.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;���뷨�Դ��Ĵʻ����빦��ʹ������ȽϷ��㣬���ҽ�ʡʱ�䣬���뷨��Ӧʱ��Ҳ�ȽϿ죬������ԣ�C5-03�Ķ��Ź���ʹ�úܷ��㡣&quot;&gt;Input function that comes with word association makes the input more convenient and save time, the input method is relatively fast response time, in general, C5-03 easy to use SMS function.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;��������ǰ������������������ڴ����ֻ����ԣ�û���䱸���ر���һ��СС���ź�����Ϊѡ��QWERTY���̺�������ĸ�������뷽ʽ��ʱ�򣬰���������ܿ��������׳���&quot;&gt;However, as previously proposed, as for the touch-screen phone, the stylus is not equipped with a little regret, because the choice of QWERTY keyboard and alphanumeric keyboard input when the button is not very spacious, very prone to&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;�󴥵�����������������ʹ���߶��ԡ�&quot;&gt;inadvertently situation, especially for male users is concerned.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;����û�д��رʣ�ʹ����д���뷨Ҳ��̫���㡣&quot;&gt;And there is no stylus, using a handwriting input method is not very convenient.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;��Ȼû�����ּ��̣�����ŵ����C5-03���Ų����鷳��&quot;&gt;Although there is no numeric keypad, but not Nokia C5-03 dial-up trouble.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;��Ϊ�ֻ�����Ҫ������Ĺ��ܣ�����ֻ�����Ҳ�ǳ����㡣&quot;&gt;As the most important and basic phone functions, this phone dial-up is also very convenient.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;����ѡ�����ִ���ģʽ���������ڴ��������п������ٵ������ּ��Ŀ�ݷ�ʽ�͵���������ϵ�˵Ŀ�ݷ�ʽ��&quot;&gt;No matter what kind of standby mode selected, you can see the standby screen number keys to quickly bring up a shortcut to find contacts and bring up the shortcut.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;���ּ������ܴ�ʮ�������󷽡�&quot;&gt;Numeric keypad with large keys very clear and generous.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('38','39','&lt;p&gt;&lt;span class=&quot;hps&quot;&gt;HTC&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;wildfire&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;wildfire&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;S as&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;before&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the upgrade&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;version&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;inherited the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;appearance and&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;resolution&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to improve&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;upgrade&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the system&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;version&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;further enhance&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the experience of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the aircraft&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;In the current&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;high-end&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;flagship&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Andorid&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;frequent&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;today,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;we&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;need&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;this is&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;end&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;product&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;enter the market&lt;/span&gt;&lt;span&gt;, Sense2.1&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;interface&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to join&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;let&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;this HTC&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;wildfire&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;S&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;have a more&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;ample&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;reason to buy.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;If you have recently&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;looking for&lt;/span&gt;&lt;span class=&quot;hps atn&quot;&gt;a mid-&lt;/span&gt;&lt;span&gt;Aandorid&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;phone, then&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;you can&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;go to the store&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;feel for the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;phone&lt;/span&gt;&lt;span&gt;, I believe&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;there will be&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;very&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;good&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;experience.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;\n&lt;object width=&quot;480&quot; height=&quot;400&quot; data=&quot;http://player.youku.com/player.php/sid/XMjQwNTkwMDA0/v.swf&quot; type=&quot;application/x-shockwave-flash&quot;&gt;\n&lt;param name=&quot;data&quot; value=&quot;http://player.youku.com/player.php/sid/XMjQwNTkwMDA0/v.swf&quot; /&gt;\n&lt;param name=&quot;align&quot; value=&quot;middle&quot; /&gt;\n&lt;param name=&quot;src&quot; value=&quot;http://player.youku.com/player.php/sid/XMjQwNTkwMDA0/v.swf&quot; /&gt;\n&lt;param name=&quot;allowfullscreen&quot; value=&quot;true&quot; /&gt;\n&lt;param name=&quot;quality&quot; value=&quot;high&quot; /&gt;\n&lt;/object&gt;\n&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('39','40','&lt;p&gt;&lt;span title=&quot;HTC ����S֧��720p��MP4��Ƶ�ļ����ţ�ͬʱ����֧��3gp��mp4��WMV9��avi��MP4��MP3��װ����ʽ����Ƶ�ļ����ţ�����Ƶ�ļ����ű����ϣ������Բ���mp3��wav��wma9��ʽ��&quot;&gt;HTC desire S supports 720p MP4 video file playback, and supports 3gp, mp4, WMV9, avi (MP4 and MP3 package) format video files, audio files playback performance, it can play mp3, wav, wma9 format&lt;/span&gt;&lt;span title=&quot;��Ƶ�ļ���&quot;&gt;audio files.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;�����������ֲ��Ż�����Ƶ���Ž��棬�����Կ���srs��Ч������������һЩ������������Ч��������ȥ���ɣ������Լ���������Ӻ��������������������������������������ʣ�&quot;&gt;Whether in music or video playback interface, you can open srs effects on the stereo will bring some special effects, sound melody, rhythm and song will be more resonant, deep and clear, but will increase the speaker on the power,&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;��ӿ��ص������ٶȡ�&quot;&gt;will speed up the battery consumption rate.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;HTC ����S�����˺�HTC S710dһ���Ĵ������ܹ����ͺ�Ϊ��ͨMSM8255����һ�ܹ��ĵ�����ƵΪ1GHz������Adreno 205ͼ�δ���оƬ����3Dͼ�δ������Լ�������Ƶ���ŷ����ṩ&quot;&gt;HTC desire and HTC S710d S uses the same processor architecture, the model for Qualcomm MSM8255, the structure of single-core processor clocked at 1GHz, the built-Adreno 205 graphics chip, 3D graphics processing as well as provide high-definition video playback&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;��������֧�֡�&quot;&gt;strong support.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;ͬʱ�����ڴ������1.1GB(ROM)/768MB(RAM)����Ϸ�ʽ�������ǲ��Խ����&quot;&gt;Body memory while using 1.1GB (ROM) / 768MB (RAM) combinations, the following is the results:&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('40','41','&lt;p&gt;&lt;span title=&quot;���˵������7��ƽ������г��ĳ����ߣ�ӵ�ж��г����ٶ�������۹⣬��ôHTC��Ƶ�����7��ƽ������г��ķ����ߣ�����HTC Sense���������һ�������û�Ϊ&quot;&gt;If the Samsung is the 7-inch Tablet PC market, early adopters, the market quickly and with a keen eye, then the HTC is called a 7-inch Tablet PC to explore the market who, like the HTC Sense of the same design concept, user-&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;���ģ������û�������Ӷ��з���Ʒ����Ҳ��HTC�ܹ�Ѹ�ٺ��ȫ���ԭ��֮һ����ȷ��ƽ������г���Ǳ�����޷������ģ�����ͳ�ĳ��̶�������һ���������������&quot;&gt;Center, to explore the needs of users to develop products, which is popular in the world quickly HTC one of the reasons, indeed, the Tablet PC market potential is immeasurable, the major traditional manufacturers have to enter this emerging field, and&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;HTCҲ�����⣬��ΪHTC�׿�ƽ����ԣ���ѡ����7�������С�ߴ磬Ŀ������ͻ�����ֻ����Զ�����������Щ�ֻ���������ɵ�����&quot;&gt;HTC is no exception, as HTC\'s first Tablet PC, the choice of a 7-inch size of this size, designed to highlight the characteristics of their mobile phone can not be done to meet those needs.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;ƽ����Կ���˵�Ǵ��������ֻ�����߱����ߵĽ�ϵ��������˲�����û���ѡ��ƽ�����ʱ���Ȼῼ��������۴�С�����������鷢��7��ƽ�������Ȼ���û���Ҫ�ģ�&quot;&gt;Tablet PC can be a big-screen smartphone with a combination of both the author of the birth of new products, and Tablet PC user in the choice of first when considering the size of its appearance, but after an investigation found that 7-inch Tablet PC is obviously the user needs,&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;�ھ���9.7���iPad�Լ�10.1��Ħ������XOOM���г���֤��7���𽥳�Ϊ���û��ڹ���ѡ��ƽ�������Ҫ��Ԫ��֮һ��7����Ϊ���ϰѿص���ѳߴ磬�ڲٿ�Ӧ�û���Ϸʱ&quot;&gt;After a 9.7-inch and 10.1-inch iPad\'s market-proven Motorola XOOM, the 7-inch has become the user choose to purchase one important element of the Tablet PC, 7-inch handheld to control as the best size in the control of the application or game&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;��ӵ�����õ����飬�������P1000��Ϊ�������Ի𱬵���������֤����&quot;&gt;have a good experience, this Samsung P1000 as early adopters to prove popular sales.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;������HTC��Դ�½�����û���Ҳ����������ս�Ժ���������˹�ͬ������HTC Flyer�л����ͺ�ΪP510e��ƽ����ԣ����йش�����3GƵ��Ҳ���ҵ�һʱ���õ��˸ò�Ʒ��Ϊ������&quot;&gt;The recent HTC for mainland users, but also strategic partners together last week jointly announced the HTC Flyer Sina licensed version of the model P510e Tablet PC, and 3G Zhongguancun online channel is also fortunate to get the product the first time, you offer&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;ȫ��λ�����⡣&quot;&gt;comprehensive evaluation.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('43','44','&lt;p&gt;&lt;span class=&quot;hps&quot;&gt;Facebook&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Web site&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to encourage&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;volunteers&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to help&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;find&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;vulnerabilities&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;recent&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;plans to launch&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;a &quot;&lt;/span&gt;&lt;span&gt;find a&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;bug&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to win&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;prizes&lt;/span&gt;&lt;span&gt;&quot; activities&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;SAN FRANCISCO,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;August 30&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;morning news&lt;/span&gt;&lt;span&gt;, Facebook&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;said Monday&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the site&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;has been&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to find loopholes&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;help&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;volunteers&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;pay more than&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;$ 40,000&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in prize money&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and reward&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;their&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;contribution&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;for Facebook&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Three weeks ago,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Facebook&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;launched a&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;&quot;&lt;/span&gt;&lt;span&gt;find&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;bug&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to win&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;prizes&lt;/span&gt;&lt;span&gt;&quot;&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;campaign to encourage&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;volunteers&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;proficient in&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;web technology&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to find&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;loopholes in&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the Facebook site&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;The company&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;on Monday&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;announced&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the success of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;activities&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;from&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;security researchers&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;around the world&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;have been mobilized&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;to help&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;improve&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;site security&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Facebook&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Facebook in&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;blog&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;article&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;said: &quot;&lt;/span&gt;&lt;span&gt;We recognize that&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;many security&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;experts&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and establish relationships&lt;/span&gt;&lt;span&gt;, but&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;this event&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;allows us to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;16 countries&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;around the world&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;many people&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;engage in dialogue&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;from Turkey to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Poland, the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Internet&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;security technology&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;enthusiasts&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to participate&lt;/span&gt;&lt;span class=&quot;atn&quot;&gt;. &quot;&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;In recent years&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;technology companies&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;began to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;pay bonuses&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;hackers&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to encourage them to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;quietly&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;report&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;their&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;discovery&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;of the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;vulnerability&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;rather than&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in the public domain&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to be&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;used&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;by unscrupulous elements&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Google&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and Mozilla&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;have&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;been carried out&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;activities&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;with&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;prizes&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;like&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Facebook&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Each&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;volunteer&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;found a&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;bug, Facebook&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will pay&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;$ 500 or more&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in prize money&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;The company said&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;hacker&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;discovered a&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;major&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;flaw&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;get&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;$ 5,000&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;bonus&lt;/span&gt;&lt;span&gt;;&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;another developer&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;found&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;six vulnerabilities&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;won&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a total of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;$ 7,000&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('44','45','&lt;p&gt;&lt;img src=&quot;/upfile/2011/08/30/20110830213802_673.jpg&quot; border=&quot;0&quot; alt=&quot;��N9���Թܿ�ŵ����δ�������˼·&quot; width=&quot;500&quot; height=&quot;411&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;Glimpse of the Nokia N9 can be from the future design ideas&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;REVIEW: Foreign media today published an article that internal and external Windows Phone Nokia\'s upcoming first intelligent machine, the Finnish mobile phone giant gamble in the hope that with unique design, to regain market share and regain its past glory.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;The following is the text of the article:&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Nokia will soon release the first equipped with Windows Phone operating system for smart phones.&lt;/span&gt;&lt;span&gt;Finnish mobile phone giant is engaged in a gamble and hope the new models with innovative design to Win, the people\'s attention from the much criticized transferred on a platform in the lucrative smartphone market regain its past glory.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Nokia in smartphone market share continue to decline, largely due to Apple\'s iPhone and Android phones extrusion.&amp;nbsp;&lt;/span&gt;&lt;span&gt;However, as has been the dominant global mobile phone market, Nokia\'s hardware production capacity beyond doubt.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Nokia plans to launch in the fourth quarter of this year, the first equipped with Windows Phone &quot;mango&quot; mobile phone operating system.&amp;nbsp;&lt;/span&gt;&lt;span&gt;This product is for Nokia as a revival of the shoulders to regain market share in the task.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Released in June this year, Nokia N9 body, people can Glimpse of the company\'s future models of design ideas.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Phone to cancel the traditional Home physical buttons, extensive use of gestures.&lt;/span&gt;&lt;span&gt;Carbonate shell material, a variety of colors to choose from.&amp;nbsp;&lt;/span&gt;&lt;span&gt;It is equipped with a curvature of 3.9 inches with capacitive touch screen.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;N9 powered by Intel co-developed with Nokia MeeGo operating system, Nokia has lost interest in this platform.&amp;nbsp;&lt;/span&gt;&lt;span&gt;But the company\'s chief designer Mark Ahtisaari (Marko Ahtisaari) said that this design is Nokia\'s future direction.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He said in an interview: &quot;We will esteem simple, natural design trends, and common black market in gray, metal rounded rectangular design is completely different.&quot;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Windows Phone mobile phone operating system developed by Microsoft, in addition to outside Nokia, HTC, Dell, Samsung and LG are interested in the launch of new mobile phone equipped with the system.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Therefore, in order to attract consumers to stop market share continued to decline, Nokia need to rely on an attractive design.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Enhance users \'eye contact\'&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;And folder-based Apple iOS and different operating system, Google Android, Windows Phone &quot;mango&quot; version with the very contemporary graphical user interface, its function around the &quot;people&quot; instead of &quot;application&quot; to reduce to achieve a certain function, and Click&amp;nbsp;&lt;/span&gt;&lt;span&gt;the number of times.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Ahtisaari said that today\'s emphasis on touch-screen phone, &quot;immersive&quot; human-computer interaction, which is not correct.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He wanted to find a design, so that people can look up.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He said: &quot;If you go to a restaurant in Helsinki, take a look, you will find that people blindly down at cell phone, rather than eye contact, not aware of their surroundings.&quot;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Ahtisaari said: &quot;The real goal of the design of mobility, will enable people to have more eye contact, and aware of their surroundings. People will not exact such a request; but when they get&amp;nbsp;&lt;/span&gt;&lt;span&gt;this convenience, they will love it. &quot;&lt;br /&gt;&lt;!-- pagebreak --&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Ahtisaari joined 18 months ago, Nokia is the company\'s first directly to the CEO Sidifenai Roper (Stephen Elop) reported the chief designer.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Designers to enhance the status, reflecting the increasing emphasis on the Nokia hardware design capabilities are.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Nokia has launched a variety of classic models, including in the movie &quot;The Matrix&quot; in the appearance of 8110, the world\'s first smart phone 9000, built-in antenna with a camera 3210 and 7650.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;However, there have been numerous this glorious old mobile phone manufacturers have many errors: Motorola Razr series in the popular flip phone, the Nokia failed to confront the models can be introduced; When Apple first released in 2007&amp;nbsp;&lt;/span&gt;&lt;span&gt;models iPhone, to redefine the entire mobile phone market, Nokia is still sticking to the slow response of traditional design, has not been introduced touch-screen models.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;In 2010, Nokia released a total of 28 models, the total shipments of more than 453 million.&amp;nbsp;&lt;/span&gt;&lt;span&gt;However, in the second quarter, the company in the global smartphone market share has grown from 38.1% last year plummeted 15.2%, is beyond Apple and Samsung, ranked third.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Inheritance colorful plastic&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Ahtisaari\'s design team has hundreds of employees, spread Finland, China, Britain and the United States.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He said: &quot;Our job is to demonstrate that a product is suitable for mass production, production of molds for the production and selection of co-operation for a particular component manufacturer Nokia in this highly competitive field.&quot;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Nokia mobile phone using a variety of shell materials, distinctive, the company\'s success in the hardware foundation.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Currently, Nokia phones mainly native color polycarbonate shell.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Ahtisaari said: &quot;The color is a simple sign of consumer choice, this important feature will be inherited.&quot;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;For him, innovation means that through careful observation of users and their environment, their design better and more natural mobile phone use.&amp;nbsp;&lt;/span&gt;&lt;span&gt;3D models from the draft to the to the real machine, producing a large number of prototypes is simple, accurate pass.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Ahtisaari said that Nokia will introduce more physical keyboard with touch-screen mobile phone, such as E6 and C3 and so on.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He said: &quot;Many people still need a keyboard; Nokia the next few years will be extremely lucrative profits in this market continue to innovate.&quot;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;He also plans to &quot;phone experience with maps and geographic information users connected in an unprecedented way to draw the whole world&quot; in order to add customer value&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('45','46','&lt;p&gt;&lt;img style=&quot;display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;/upfile/2011/08/30/20110830213900_889.png&quot; border=&quot;0&quot; alt=&quot;Windows 8����ϸ���ع⣺�˵����ܸ�ֱ��&quot; width=&quot;450&quot; height=&quot;507&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span class=&quot;hps&quot;&gt;More&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;details of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Windows 8&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;exposure&lt;/span&gt;&lt;span&gt;:&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the menu&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;features&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;more intuitive&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;SAN FRANCISCO,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;August 30&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;morning news&lt;/span&gt;&lt;span&gt;, Microsoft&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Project Management&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Director&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Alex&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Simmons&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;(Alex Simons)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;blog post published&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;today&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;revealed the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;operating system,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Windows 8&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;more details&lt;/span&gt;&lt;span&gt;, the most&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;notable&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;feature&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;is the &quot;&lt;/span&gt;&lt;span class=&quot;hps atn&quot;&gt;Ribbon &quot;&lt;/span&gt;&lt;span&gt;interface to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a wide range of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;applications.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Picture&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;shows&lt;/span&gt;&lt;span&gt;, Windows 8&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Explorer&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;icon&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;top of the window&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;show the form of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;many&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;common functions&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;such as&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;&quot;Copy&quot;&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;&quot;Paste&quot;&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;and &quot;&lt;/span&gt;&lt;span&gt;Cut&lt;/span&gt;&lt;span&gt;&quot;, etc.,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;user-friendly&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;search&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;using these features&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;In Windows 7&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and earlier&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;versions of Windows&lt;/span&gt;&lt;span&gt;, these&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;functions&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;are usually&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in the form of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;sub-&lt;/span&gt;&lt;span&gt;menu&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;display&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;the user&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;need to go through&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;two clicks&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to complete.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;The new&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;user interface&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will no doubt&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;enhance the&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;user experience.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;This&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;interface&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;design&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;is called&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;&quot;Ribbon&quot;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;was originally&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;used in&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Office 2007 software&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;suite&lt;/span&gt;&lt;span&gt;, Office 2010&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;continues this&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;practice&lt;/span&gt;&lt;span&gt;, Windows 7&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in part&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;adopted.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Microsoft plans to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;fully&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;integrate&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in Windows 8&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;interface.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Simmons&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;said&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in a&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;blog post&lt;/span&gt;&lt;span&gt;, the survey&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;shows that users&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;most commonly used&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Windows Explorer&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;menu&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;function is to &quot;&lt;/span&gt;&lt;span&gt;paste&quot;&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;followed by&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;&quot;Properties&quot;&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;&quot;copy&lt;/span&gt;&lt;span class=&quot;atn&quot;&gt;&quot;, &quot;&lt;/span&gt;&lt;span&gt;delete&lt;/span&gt;&lt;span class=&quot;atn&quot;&gt;&quot;, &quot;&lt;/span&gt;&lt;span&gt;rename&lt;/span&gt;&lt;span class=&quot;atn&quot;&gt;&quot;, &quot;&lt;/span&gt;&lt;span&gt;refresh&lt;/span&gt;&lt;span&gt;&quot;&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;and &quot;&lt;/span&gt;&lt;span&gt;cut&lt;/span&gt;&lt;span&gt;&quot; and so on&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;The most commonly used&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;menu functions&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;accounted for&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;10&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the total use of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;81.8%&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;for the&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;&quot;Ribbon&quot;&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;interface to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;lay the foundation for&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;widespread use&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('49','50','&lt;p&gt;&lt;span class=&quot;hps&quot;&gt;Beijing&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;August 30&lt;/span&gt;&lt;span&gt;, according to foreign&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;media reports,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;recently&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;HTC&lt;/span&gt;&lt;span&gt;\'s new&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;handset&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;design leader&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;(Scott Croyle)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;said that despite the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;high-level&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;design&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;changes&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;but the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;mobile phone&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;design thinking&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;does not change&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;HTC&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will continue to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;adhere to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the user experience&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;is more important than&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;technical&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;principles.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Recently&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;HTC&lt;/span&gt;&lt;span&gt;\'s chief&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;innovation&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;is responsible for&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;mobile phone design&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;officer&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;(Horace Luke)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;resigned&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;for personal reasons&lt;/span&gt;&lt;span&gt;, the current&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;vice&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;president&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;responsible for the design&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Crowe&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;took over&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;this position&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Crowe&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;recently&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;told the media that&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;HTC&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will remain&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;committed to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the future of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;smart phones&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;tablet&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;PCs&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to provide more&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;content and services&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Moreover,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;focusing&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;on enhancing the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;user experience&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;such as&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;big screen&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to enjoy&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;video&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;can improve&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;results,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;before and after&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;camera&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;can be&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;with family and&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;friends,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;video chat&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Crowe&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;said that despite the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;high level&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;design&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;changed hands&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;but&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;&quot;consumer&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;first&quot;&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;philosophy&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;has become the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;HTC&lt;/span&gt;&lt;span&gt;\'s DNA,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;it will not&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;change.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Crowe&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;stressed that&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;HTC&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will be&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;concerned about the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;use of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;mobile phone&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;user experience&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;rather than on&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the background&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;of the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;technology itself.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('50','51','&lt;p&gt;&lt;span class=&quot;hps&quot;&gt;Beijing time on&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;August 30&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;morning, according to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;U.S. technology blog site&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;BusinessInsider&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;reports,&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;Apple&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;has been&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;practice&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Jonathan&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Berg&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;(Jonathan Berger)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;has&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;recalled&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a past event&lt;/span&gt;&lt;span&gt;, highlighting the&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;Steve&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Jobs (Steve&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Jobs)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;deep feelings&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;for&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Apple&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Berg&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;internship&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in 2000&lt;/span&gt;&lt;span&gt;, when&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Apple&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;has&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Steve Jobs&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;at the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;meeting&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;asked&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;why the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;return to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Apple&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Jobs&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;replied:&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;&quot;I was&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;hesitant&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;on whether to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;return to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Apple&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in the intense&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;inner&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;struggle&lt;/span&gt;&lt;span&gt;, I&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;asked a lot of&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;people&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;has also been&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;lot of opinions&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Late one night&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;I am still&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;upset&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to this&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;problem&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;2:00&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;I&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;give&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;play to call&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a friend&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and asked&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;\'&lt;/span&gt;&lt;span&gt;should I&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;return&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;back to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Apple&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;or not&lt;/span&gt;&lt;span&gt;?&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;&quot;&lt;/span&gt;&lt;span&gt;this friend&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;said&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&lt;span&gt;\' Listen,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Steve&lt;/span&gt;&lt;span&gt;, I&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;do not&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;mind&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a little&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;apple&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;thing&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;you&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;do&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;decide!&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;&quot;&lt;/span&gt;&lt;span&gt;Having&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;hung up the phone&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;at&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;that time&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;I&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;discovered that&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;I really&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;care about&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Apple&lt;/span&gt;&lt;span&gt;.&quot;&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('51','52','&lt;p&gt;&lt;span class=&quot;hps atn&quot;&gt;IDG (&lt;/span&gt;&lt;span&gt;the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Tao&lt;/span&gt;&lt;span&gt;)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Beijing&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;August 30&lt;/span&gt;&lt;span&gt;, according to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;U.S.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;technology blog&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Silicon Alley Insider (SAI)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;reported that a&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;source&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;said on Monday&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo CEO&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Carol Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;(Carol Bartz)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;seek re-election&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;matter has&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;no interest&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;If nothing else,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;current work&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;contract expired&lt;/span&gt;&lt;span&gt;, she&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;left&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in 2013&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;img style=&quot;display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;/upfile/2011/08/30/20110830214223_287.jpg&quot; border=&quot;0&quot; alt=&quot;���Ż�CEO�ʹ�����ı������ 2013����ְ(ͼ)&quot; width=&quot;460&quot; height=&quot;306&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span class=&quot;hps&quot;&gt;Yahoo CEO&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Carol Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;(&lt;/span&gt;&lt;span&gt;Artesyn Technologies with map&lt;/span&gt;&lt;span&gt;)&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;This&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;name&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;familiar&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;insider&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;said: &quot;&lt;/span&gt;&lt;span&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;is already&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in a&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;state&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;ready&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to leave&lt;/span&gt;&lt;span&gt;, so&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the search for&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the next CEO of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;not&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;interested in&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the issue&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;I&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;worry about&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;her&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;now&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;are&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;some of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;\'&lt;/span&gt;&lt;span&gt;out&lt;/span&gt;&lt;span&gt;\'&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;meaning&lt;/span&gt;&lt;span&gt;.&quot;&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;But another&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;source said&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo\'s board&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;does not agree with&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;this view.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;This&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;name&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;source said:&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;&quot;&lt;/span&gt;&lt;span&gt;Yahoo\'s board&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;believes that&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;very capable&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo\'s board&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;had&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;done a lot of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;hope that she&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;do:&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;repair the&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;platform&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to meet the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;needs of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;users and&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;advertisers&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;increase&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;profit margins&lt;/span&gt;&lt;span&gt;, etc.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo\'s board&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;next&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and his team&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;hopes to work with&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;close coordination&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;so that&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;can achieve&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;more robust&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;long-term growth&lt;/span&gt;&lt;span class=&quot;atn&quot;&gt;. &quot;&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;However,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;there is no&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;second&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;source&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;said&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo\'s board&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;has&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;renewed&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;work&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;on the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;start&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to discuss&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;contractual matters&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;SAI&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;believes that&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the near term,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo\'s board&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will not&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;offer to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;early separation&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;for two reasons:&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;First&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;took office&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;did&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a lot of work&lt;/span&gt;&lt;span&gt;, but&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;these efforts&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;are not&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;recognized by&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the outside world&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;For example&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;has taken&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;measures to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;curb government spending&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and upgrading of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo\'s&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;content distribution&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;system&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;but these measures&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;have not been&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;outside&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;praise&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Secondly, because&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo\'s board&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;itself &quot;&lt;/span&gt;&lt;span&gt;to act&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;passive&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;unrealistic&lt;/span&gt;&lt;span&gt;,&quot; so&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;still&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;retain&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;its current&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;CEO position&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;All in all&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;current work&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;contract&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;expires&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in 2013&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo\'s board&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will not&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;renew the contract&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;with her&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('52','53','&lt;p&gt;&lt;span&gt;August 30, according to foreign media reports, announced earlier this year took over as CEO, Google\'s (Google Inc.) Co-founder Larry Page (Larry Page) undertook this Internet search giant restructuring&amp;nbsp;&lt;/span&gt;&lt;span&gt;to speed up decision-making.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Paige since taking office since April, is facing many challenges.&amp;nbsp;&lt;/span&gt;&lt;span&gt;These challenges include: the U.S. antitrust agencies conduct extensive investigations of the company; advertising on Google\'s long-term criminal investigation by the settlement; led him to acquire handset maker Motorola Mobile Holdings Limited (Motorola Mobility Holdings Inc.) Changing industry&amp;nbsp;&lt;/span&gt;&lt;span&gt;power.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Since his new role as the company\'s stock fell 9.1 percent, higher than the Nasdaq (Nasdaq) stocks drop 8.42% overall.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Federal prosecutors have been investigating Google in 2003 to 2009 to allow operators of illegal Internet drug advertisements in its search engine behavior.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Last week, federal prosecutors specifically mentioned Pec.&amp;nbsp;&lt;/span&gt;&lt;span&gt;They say this Page personal knowledge of the alleged crime, and not be discouraged.&lt;/span&gt;&lt;span&gt;Prior to this, Google paid $ 500 million last week to avoid criminal charges.&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Page, Google spokesman declined to act on drug advertising to comment about the situation.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He also said that the investigation has nothing to do with the current advertising practices, the company continues to move forward.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Google refused to let 38-year-old Paige came forward for comment.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Other setbacks include, and fail to reach a record company to allow Google\'s new Internet music service selling songs and albums of the agreement; public disclosure of company in China in June of &quot;troublemakers&quot; invasion of the Gmail account; bid for Nortel Networks in July&amp;nbsp;&lt;/span&gt;&lt;span&gt;Co., Ltd. (Nortel Networks Corp.) lost patent, Google said it is to promote the acquisition of Motorola\'s a reason.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;However, according to Page\'s colleagues, a lot of things happened over the past few months, Page response is to concentrate on resolving matters within their control, including the new business.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Google Chrome browser and operating system is responsible for investigation of human skin Iraq (Sundar Pichai) said that Page and outside the company are well aware of all matters and will be concerned; although he should consider all these things, but the way his work is highly&amp;nbsp;&lt;/span&gt;&lt;span&gt;concerned about the products and users.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;At the same time there are some positive side.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He was the company\'s restructuring has been a great support staff; April, the Government approved a Google acquisition of ITA Software\'s application, the deal will help Google build travel search services; started his social networking company\'s products received the initial growth of Google +&amp;nbsp;&lt;/span&gt;&lt;span&gt;.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Promoting changes in staff praised the search engine, Larry Page and Gmail, and many other services to look.&lt;br /&gt;&lt;!-- pagebreak --&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Page also heard criticism.&amp;nbsp;&lt;/span&gt;&lt;span&gt;For people on the growth rate of Google queries, Wall Street analysts have complained that in April, Paige in the first earnings call was that too little.&amp;nbsp;&lt;/span&gt;&lt;span&gt;At that meeting, Page said the company\'s performance and prospects so that he was very excited, but did not talk about their strategy, not left to answer analysts\' questions.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;However, to achieve more in July after strong results on the quarterly conference call, the new CEO a comprehensive exposition of his strategy.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Among them, he said, Google will easily find its Chrome browser, YouTube video site and Andrews (Android) the growth of mobile operating systems to make money way.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Currently more than 135 million devices worldwide are equipped with Andrew system.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;At that meeting, Page said Google only 1% of the potential to play, and as such, I was leading the company to scale new heights.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Investment bank Stifel, Nicolaus &amp;amp; Co. Analyst Lohan (Jordan Rohan), said Paige communication with investors on how to learn quite fast.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He also said, obviously not satisfied with Google Page in the leading position in Internet search, Google intends to occupy the leading position in more areas, even though doing so caused more stringent government oversight, and it\'s more bumpy road ahead&amp;nbsp;&lt;/span&gt;&lt;span&gt;.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Google employees, said Page in the company has a wide range of supporters.&amp;nbsp;&lt;/span&gt;&lt;span&gt;In the past few months, he promised to reform their own company, through a comprehensive restructuring to clarify the responsibilities and priorities.&amp;nbsp;&lt;/span&gt;&lt;span&gt;In addition, he paid off some of these priorities, except useless items.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Page also local business advertising such as Google + update operations and became interested in the products.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Google + is the social network Facebook Inc.\'s Competitors, Paige has this year the number of employees with bonuses linked to performance of this product.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;In front of his employees, within the Page to get rid of their image.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Informed sources said, Google + launched a few weeks later, he was in California in July, Google headquarters in Mountain View, organized a &quot;beach party&quot;, and even get a high-tech made a wave machine.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Colleagues said, Page is very good at communicating with employees, including product-related meetings, every Friday afternoon, &quot;Thank God, finally to Friday the&quot; the full meeting, and through his house&amp;nbsp;&lt;/span&gt;&lt;span&gt;Google + accounts published minutes of video clips.&lt;br /&gt;&lt;!-- pagebreak --&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Nevertheless, the problem of external force Paige respond quickly.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Earlier this summer, Google said it is facing a Federal Trade Commission (Federal Trade Commission) for its business conduct extensive investigation may take several years to complete.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;In the news was leaked in July Google has adapted its search engine displays local business information.&amp;nbsp;&lt;/span&gt;&lt;span&gt;According to informed sources, the Federal Trade Commission investigation is one of the matters.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;At the same time, increasing competition in the mobile space charge under the re-injection to promote Page, Google announced this month it spent $ 12.5 billion acquisition of Motorola\'s consensus.&amp;nbsp;&lt;/span&gt;&lt;span&gt;This is the Internet search company Google\'s largest-ever one transaction.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('53','54','&lt;p&gt;&lt;span class=&quot;hps&quot;&gt;Beijing time on&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;August 30&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;morning news&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;(&lt;/span&gt;&lt;span&gt;Jiang Jun herds&lt;/span&gt;&lt;span&gt;) Bahrain&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Telecommunications&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Company&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;(Batelco)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;announced&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;its&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;senior management&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to adjust&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and the appointment of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the incumbent&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;CEO&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;Peter&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Cary&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Arnold&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Baoluo Si&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;(Peter Kaliaropoulos)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;as&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the new&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;strategy&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;tasks&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;CEO&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;responsible for the&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;group\'s&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;joint venture.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Bahrain&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;telecom&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;incumbent&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;vice chairman&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Shaikh Mohammed bin&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Isa&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Al&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Khalifa&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;(Shaikh Mohamed Bin Isa Al Khalifa)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will take over the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;CEO&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;post.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Bahrain&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Telecom Chairman&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Sheikh Hamad bin&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Abdullah&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Al&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Khalifa&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;(Shaikh Hamad Bin Abdulla Al Khalifa)&lt;/span&gt;&lt;span&gt;, said he&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;was pleased to see&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the new&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;CEO&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;is&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;an experienced&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bahrain&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;business executives&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;the first&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;group&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the most&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;senior positions&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;as&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bahraini citizens&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Sheikh&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Mohammed&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will be held&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;October 1, 2011&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will be responsible for&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the group&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Sheikh Hamad&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;said.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;He also said&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;he was very&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;pleased to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;welcome the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;longest serving&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;board&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;member&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;�����°�����&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Ladd&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;(Murad Ali Murad)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;took over&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the post of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;vice chairman&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Peter&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;continue the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;strategic task of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the CEO position&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bahrain&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;telecom&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;services&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;focus on&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;new&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;acquisitions&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to accelerate&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;value creation&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('54','55','&lt;p&gt;&lt;span&gt;Beijing time on August 30 morning news, Dell will launch later this year with VMware first cloud infrastructure services, to continue its business areas to expand beyond the PC, into higher-margin software and services&amp;nbsp;&lt;/span&gt;&lt;span&gt;.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;The service will be based on VMworld\'s vCloud platform, through Dell\'s Texas Pu Leinuo (Plano) of the data center to deliver.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Users will be through pay-way rental computing and storage services, but also more long-term contract signed, will be reserved or dedicated hardware covered.&amp;nbsp;&lt;/span&gt;&lt;span&gt;In addition, Dell will also provide consultancy services to companies to help them in their own private clouds to build data centers, data centers use vCloud services.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Dell will also use VMware software to build the Connector &quot;hybrid&quot; cloud, the private and public clouds connected together.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Dell plans on Monday in Las Vegas at VMworld VMware announced the plan.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Managed Security Services&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Dell and the project will enhance the competition between IBM and HP relationship, after the two companies are also building a public cloud services.&amp;nbsp;&lt;/span&gt;&lt;span&gt;In addition, this program will allow Dell to become the Amazon Web Services, Verizon Business and other service provider Terremark\'s competitors, some of these providers is also Dell\'s customers.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Storage consulting firm Taneja Group analyst Arun Taneja, founder and consultant, said Dell must provide these services to maintain the competitiveness of companies in the industry, because of cloud services is becoming a regular business.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He predicted that all large IT vendors will be provided within three years, some form of cloud services.&lt;br /&gt;&lt;!-- pagebreak --&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Dell Services vice president and CTO (chief technology officer) ��˱ȶ��� (Mark Bilger), said Dell &quot;unique value proposition,&quot; the company will provide managed security services.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He said that managed security services will become part of Dell\'s service standards, rather than as an additional service for sale.&amp;nbsp;&lt;/span&gt;&lt;span&gt;The service called &quot;Dell Cloud with VMware vCloud Datacenter Service&quot;, will mainly target medium and large companies, its beta will start within a few weeks, plans for the fourth quarter, officially launched in the U.S. market next year, in Europe and&amp;nbsp;&lt;/span&gt;&lt;span&gt;Asian market launch.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Platform as a Service&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Bier Ge said that Dell plans to launch next year a &quot;Platform as a Service&quot; products, this service will use Microsoft\'s Azure software; also will launch another OpenStack or Eucalyptus open source platform based on the infrastructure services, but Dell has not yet made&amp;nbsp;&lt;/span&gt;&lt;span&gt;the final decision.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Through the acquisition of IT services company Perot Systems deal, Dell has been providing application hosting services, its annual revenue of about $ 1 billion.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Bier Ge said, these customers will renew the contract, Dell wants to standardize its the public cloud services.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He pointed out that the more modern, and VMware-based environment should mean that the cost of Dell and its customers will decline.&amp;nbsp;&lt;/span&gt;&lt;span&gt;However, Perot\'s many customers from the health care industry, so Dell will need to allow the service to follow HIPPA (Health Insurance Portability and Accountability Act) requirements.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Bier Ge said that Dell plans to do so next year.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Dell will provide three levels of service, namely pay-service that costs up to each virtual machine; reserved services, ensuring availability of the server; and private services to provide customers with a dedicated server, after&amp;nbsp;&lt;/span&gt;&lt;span&gt;service will require customers to sign two-year service contract.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Dell did not disclose the price of these services.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Bier Ge said Dell\'s these services compared to its competitors, with the services provided by &quot;competitiveness&quot;; But he also said the price of these services will be slightly higher than competitors\' services, because it contains security features.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Strategic change&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Use vCloud platform means in a sense of Dell\'s strategy changes.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Over the past year, Dell has been in building their own virtual stack, including virtual integration system (VIS), and advanced infrastructure management (AIM) software.&amp;nbsp;&lt;/span&gt;&lt;span&gt;From now on, these products Dell will sell together with VMware software.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Bier Ge said, the customer need for private and public cloud services use the same software platform aims to connect up to become a &quot;mixed cloud.&quot;&lt;br /&gt;&lt;!-- pagebreak --&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Consulting Managing Director ThinkStrategies Jeffrey Kaplan (Jeffrey Kaplan) said, with major vendors like VMware on the Dell is very important.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He said: &quot;Dell has recognized that cloud services are the company\'s future is an important part if you want to be successful, Dell not only have to develop their own solutions, but must also form an alliance with industry-leading companies, and (Dell and VMware co-operation&amp;nbsp;&lt;/span&gt;&lt;span&gt;) is one example. &quot;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Kaplan said that in itself is a reconstruction problem of software and services company, Dell\'s performance better than he expected, &quot;I do not buy Dell Perot a strong supporter of the transaction, but Dell has achieved success.&quot;&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('55','56','&lt;p&gt;Requirment&lt;/p&gt;\n&lt;ul&gt;\n&lt;li&gt;Station at&amp;nbsp;Dongguan&lt;/li&gt;\n&lt;li&gt;F.7 or above&amp;nbsp;&lt;/li&gt;\n&lt;li&gt;At least 5&amp;nbsp;years relevant experience (Garment field is preferred), in which minimize 3 years at managerial level (Preferred to have working experience in China)&lt;/li&gt;\n&lt;li&gt;Experience in providing all-rounded human resources &amp;amp; administration matters&lt;/li&gt;\n&lt;li&gt;Independent, proactive, positive, result-oriented, excellent interpersonal and problem solving skills&lt;/li&gt;\n&lt;li&gt;Proficiency in both spoken and written English, Chinese and Mandarin&lt;/li&gt;\n&lt;/ul&gt;');
INSERT INTO `espcms_document_content` VALUES ('56','57','&lt;p&gt;Phoca Gallery Plugin is a Joomla! 1.5 plugin to show categories or images of Phoca Gallery in an article content. For easier aadding of images into article you can use Phoca Gallery Button Plugin.&lt;/p&gt;');
INSERT INTO `espcms_document_label` VALUES ('1','cn','1','ͼƬ�����Ƽ�');
INSERT INTO `espcms_document_label` VALUES ('2','cn','3','��Ʒ�Ƽ�');
INSERT INTO `espcms_filename` VALUES ('1','admin','','20110830215515_989.jpg','img','upfile/2011/08/30/','1314712515','1');
INSERT INTO `espcms_filename` VALUES ('2','admin','','20110830220714_201.jpg','img','upfile/2011/08/30/','1314713234','1');
INSERT INTO `espcms_filename` VALUES ('3','admin','','20110830220718_580.jpg','img','upfile/2011/08/30/','1314713238','1');
INSERT INTO `espcms_filename` VALUES ('4','admin','','20110830220721_977.jpg','img','upfile/2011/08/30/','1314713241','1');
INSERT INTO `espcms_filename` VALUES ('5','admin','','20110830221115_303.jpg','img','upfile/2011/08/30/','1314713475','2');
INSERT INTO `espcms_filename` VALUES ('6','admin','','20110830221119_107.jpg','img','upfile/2011/08/30/','1314713479','2');
INSERT INTO `espcms_filename` VALUES ('7','admin','','20110830221123_939.jpg','img','upfile/2011/08/30/','1314713483','2');
INSERT INTO `espcms_filename` VALUES ('8','admin','','20110830221811_509.jpg','img','upfile/2011/08/30/','1314713891','2');
INSERT INTO `espcms_filename` VALUES ('9','admin','','20110830221819_399.jpg','img','upfile/2011/08/30/','1314713899','2');
INSERT INTO `espcms_filename` VALUES ('10','admin','','20110830222415_540.jpg','img','upfile/2011/08/30/','1314714255','2');
INSERT INTO `espcms_filename` VALUES ('11','admin','','20110830222428_951.jpg','img','upfile/2011/08/30/','1314714268','2');
INSERT INTO `espcms_filename` VALUES ('12','admin','','20110830222837_953.jpg','img','upfile/2011/08/30/','1314714517','2');
INSERT INTO `espcms_filename` VALUES ('13','admin','','20110830222841_197.jpg','img','upfile/2011/08/30/','1314714521','2');
INSERT INTO `espcms_lng` VALUES ('1','1','cn','�������İ�','','1','0','1','0','0','','','','','');
INSERT INTO `espcms_lng` VALUES ('2','3','en','English','','1','0','1','0','0','','','','','');
INSERT INTO `espcms_lng` VALUES ('7','2','big5','�������İ�','','1','0','1','1','0','','','','','');
INSERT INTO `espcms_lngpack` VALUES ('1','50','cn','��վ����','sitename','��˼ESPCMS��ҵ��վ����ϵͳV5 - ��רҵ����ҵ��վ����ƽ̨','0','5');
INSERT INTO `espcms_lngpack` VALUES ('2','50','cn','�ؼ���','keyword','��˼ESPCMS,ESPCMS,PHP��ҵ��վ����ϵͳ,��Դ��ҵ��վϵͳ,��ҵ��վ����,��������,ecisp.cn,earclink.com','0','5');
INSERT INTO `espcms_lngpack` VALUES ('3','50','cn','��վ���','description','ESPCMSV5��һ�׻���LAMP������������ҵ��վ����ϵͳ�����԰���Ѹ�١����ɵع�����һ��ǿ��רҵ����ҵ��վ�����ö�ģ���Զ���SEO�����Ż�����̬ҳ���ɡ��������ԡ���������Ա�ȳ�����ҵ��վ�������ܣ�ͨ�����Ĳ�����ƻ�����չӦ�ã��������õ�ʵ����վ��ֵ','0','5');
INSERT INTO `espcms_lngpack` VALUES ('23','50','cn','��ҳ��Ϣ','pagetext','���� $1 ����¼ ��ǰ�� $2 ҳ/���� $3 ҳ ÿҳ��ʾ $4 ��','0','6');
INSERT INTO `espcms_lngpack` VALUES ('24','50','cn','��ҳ��ť','pagebotton','��ҳ/��һҳ/��һҳ/βҳ','0','6');
INSERT INTO `espcms_lngpack` VALUES ('25','50','cn','��תҳ��ť','gopageurl',' ��ת�� $1 ҳ','0','6');
INSERT INTO `espcms_lngpack` VALUES ('27','50','cn','�������','inputerr','��Ϣ�����д����뷵�ؼ�鲢��������','0','6');
INSERT INTO `espcms_lngpack` VALUES ('542','50','cn','��֤���������','seescodeerr','��֤����������Ϊ�գ����������룡','0','6');
INSERT INTO `espcms_lngpack` VALUES ('31','50','cn','����������д','gobackbotton','����������д','0','6');
INSERT INTO `espcms_lngpack` VALUES ('32','50','cn','�벻Ҫ�ظ��ύ','repeatinput','��Ǹ�����ղ��Ѿ��ύ���벻Ҫ���ظ��ύ��','0','4');
INSERT INTO `espcms_lngpack` VALUES ('33','50','cn','����Ĭ�ϵ�ַ','gobackurlbotton','����Ĭ�ϵ�ַ','0','6');
INSERT INTO `espcms_lngpack` VALUES ('34','50','cn','��½��Ա','memberlogin','������½','0','6');
INSERT INTO `espcms_lngpack` VALUES ('35','50','cn','δ��½��Ա','memberloginerr','��Ǹ����ǰ�������Ա���������½��Ա���粻�ǻ�Ա��ע�ᣡ','0','1');
INSERT INTO `espcms_lngpack` VALUES ('36','50','cn','Ȩ�޲���','memberpuverr','��Ǹ������Ȩ�޲��㵱ǰ������','0','1');
INSERT INTO `espcms_lngpack` VALUES ('37','50','cn','��Ա��Ŀ����','membertitle','��Ա','0','5');
INSERT INTO `espcms_lngpack` VALUES ('39','50','cn','���ﳵ��Ŀ����','ordertitle','���ﳵ','0','5');
INSERT INTO `espcms_lngpack` VALUES ('40','50','cn','��Ա��ҳ����','member_title','��Ա����','0','5');
INSERT INTO `espcms_lngpack` VALUES ('43','50','cn','��Ա��½�������','loing_input_err','�û�����������������뷵���������룡','0','1');
INSERT INTO `espcms_lngpack` VALUES ('659','50','en','���������ݻ�������д����','forum_input_err','Name, content or other fill in error, please return to re-fill!','0','4');
INSERT INTO `espcms_lngpack` VALUES ('44','50','cn','�����ܱ����û�','member_memlock','��������ǰʹ�õ��û����ѱ����ã��뻻һ���û������е�½��','0','1');
INSERT INTO `espcms_lngpack` VALUES ('45','50','cn','��½ʧ��','login_err','��Ǹ���û���½ʧ�ܣ������û����������Ƿ���ȷ��','0','1');
INSERT INTO `espcms_lngpack` VALUES ('46','50','cn','ucenter����ͬ������','ucenter_err','����UCenter�ӿ�ͬ�������������Ա�����','0','1');
INSERT INTO `espcms_lngpack` VALUES ('544','50','cn','�ʼ����ĳɹ�','invite_ok','��ϲ�����ĵ����䶩�ĳɹ�����л����֧�֣�','0','4');
INSERT INTO `espcms_lngpack` VALUES ('543','50','cn','��Ա�ر�˵��','mem_close','��Ǹ����Ա�����ѹرգ�','0','1');
INSERT INTO `espcms_lngpack` VALUES ('52','50','cn','�û����Ѵ���','mem_reg_no','�û����Ѵ���','0','1');
INSERT INTO `espcms_lngpack` VALUES ('53','50','cn','�û�������ʹ��','mem_reg_ok','�û�������ʹ��','0','1');
INSERT INTO `espcms_lngpack` VALUES ('54','50','cn','�������ʹ��','mem_regemail_ok','�������ʹ��','0','1');
INSERT INTO `espcms_lngpack` VALUES ('55','50','cn','�����Ѵ���','mem_regemail_no','�����Ѵ���','0','1');
INSERT INTO `espcms_lngpack` VALUES ('56','50','cn','�û���ע�������ʾ','username_err','�����û���Ϊ�ջ��������','0','1');
INSERT INTO `espcms_lngpack` VALUES ('57','50','cn','�����ʼ��������','email_err','����E-mailΪ�ջ��߸�ʽ����','0','1');
INSERT INTO `espcms_lngpack` VALUES ('58','50','cn','�����������','password_err','��������Ϊ�ջ��������','0','1');
INSERT INTO `espcms_lngpack` VALUES ('59','50','cn','ȷ�������������','password2_err','����ȷ������Ϊ�ջ��������','0','1');
INSERT INTO `espcms_lngpack` VALUES ('60','50','cn','�����������벻һ��','password_equal','���������������벻һ�£�����������','0','1');
INSERT INTO `espcms_lngpack` VALUES ('61','50','cn','��ȷ��ע������','agree_empty','��ʾ����ȷ��ע������','0','1');
INSERT INTO `espcms_lngpack` VALUES ('62','50','cn','������ڼ�','password_len2','����������ڼ򵥣��뷵����������','0','1');
INSERT INTO `espcms_lngpack` VALUES ('63','50','cn','��Աע��ʧ��','reg_err','��Ǹ��ע��ʧ�ܣ�������������Ƿ�������ȷ��ȷ�Ϸ���������д��','0','1');
INSERT INTO `espcms_lngpack` VALUES ('64','50','cn','�û��ʻ���Ҫ����','username_check','��Ǹ����ǰ�ʻ�δ���м�����½ע��������м�����δ�յ��ʼ����������·��ͣ�','0','1');
INSERT INTO `espcms_lngpack` VALUES ('65','50','cn','�ط������ʼ���ť����','checkemail_send','�ط������ʼ�','0','6');
INSERT INTO `espcms_lngpack` VALUES ('66','50','cn','��Ա��½��ť','login_botton','��Ҫ��½��Ա','0','6');
INSERT INTO `espcms_lngpack` VALUES ('67','50','cn','�ʻ�����ʧ��','username_check_no','��Ǹ����ǰ�ʻ�����ʧ�ܣ������ʻ��Ƿ��Ѿ��������������','0','1');
INSERT INTO `espcms_lngpack` VALUES ('68','50','cn','�ʻ�����ɹ�','username_check_ok','��ϲ����ǰ�ʻ�����ɹ����������а�ť���е�½��','0','1');
INSERT INTO `espcms_lngpack` VALUES ('69','50','cn','��Ա�����ʼ�����ʧ��','username_sendmail_err','��Ǹ����Ա�����ʼ�����ʧ�ܣ��������Ա��ϵ��','0','1');
INSERT INTO `espcms_lngpack` VALUES ('70','50','cn','��Ա�����ʼ����ͳɹ�','username_sendmail_ok','��ϲ����ǰ�ʻ������ʼ����ͳɹ������½����������в鿴��','0','1');
INSERT INTO `espcms_lngpack` VALUES ('71','50','cn','��UCenter�д��ڵ��û����м���','ucenter_check_mess','��ʾ����ǰ�û���Ҫ����UCenter����ת�����������м���','0','1');
INSERT INTO `espcms_lngpack` VALUES ('72','50','cn','UCenter��Ա����','ucenter_check_botton','�����Ա','0','6');
INSERT INTO `espcms_lngpack` VALUES ('76','50','cn','��Աע��ɹ�','reg_ok','��ϲ�����Ļ�Ա��ע��ɹ����������°�ť���е�½��','0','1');
INSERT INTO `espcms_lngpack` VALUES ('77','50','cn','�ʼ�����ʧ��','main_send_no','��Ǹ����վ�ѽ����ʼ����ͣ��������޷�ȡ�أ��������Աϵͳ��','0','1');
INSERT INTO `espcms_lngpack` VALUES ('78','50','cn','����ɹ��һ���ʾ˵��','password_lostok','��ϲ���������ѳɹ����͵�ָ�����䣬���½���ղ���ʱ�����������и��ģ�','0','1');
INSERT INTO `espcms_lngpack` VALUES ('79','50','cn','�����һ�ʧ����ʾ˵��','password_losterr','��Ǹ������д�������Ϣ�޷���֤ͨ����������վ����Ա��ϵ��','0','1');
INSERT INTO `espcms_lngpack` VALUES ('81','50','cn','���Ա������','forum_title_err','���󣺱���Ϊ�ջ���������뷵���������룡','0','4');
INSERT INTO `espcms_lngpack` VALUES ('657','50','en','��Ա�ر�˵��','mem_close','Membership function is turned off!','0','1');
INSERT INTO `espcms_lngpack` VALUES ('658','50','en','�ʼ����ĳɹ�','invite_ok','Thanks for subscription','0','4');
INSERT INTO `espcms_lngpack` VALUES ('656','50','en','��֤���������','seescodeerr','Verification code input errors, please re-enter!','0','6');
INSERT INTO `espcms_lngpack` VALUES ('84','50','cn','�����ύ�ɹ�','forum_input_ok','��ϲ����Ϣ�ύ�ɹ�����л����֧�֣����ǽ��������ظ���','0','4');
INSERT INTO `espcms_lngpack` VALUES ('85','50','cn','���Գ��������ַ���ʾ','forum_input_filter','��Ǹ�������к��������ַ����뷵��������д��','0','4');
INSERT INTO `espcms_lngpack` VALUES ('86','50','cn','���������ƺ�','forum_anonymity','�ο�','0','4');
INSERT INTO `espcms_lngpack` VALUES ('87','50','cn','ԭʼ���벻��Ϊ��','oldpassword_err','����ԭʼ����Ϊ�ջ����벻��ȷ���뷵��������д��','0','1');
INSERT INTO `espcms_lngpack` VALUES ('88','50','cn','������֤ʧ��','password_input_err','��Ǹ���������������֤ʧ�ܣ��뷵����������','0','1');
INSERT INTO `espcms_lngpack` VALUES ('89','50','cn','�˳����µ�½','out_botton','�˳����µ�½','0','6');
INSERT INTO `espcms_lngpack` VALUES ('90','50','cn','��ϲ�������޸ĳɹ�','password_ok','��ϲ�����������ѳɹ��޸ģ���ȷ���˳������µ�½��','0','1');
INSERT INTO `espcms_lngpack` VALUES ('91','50','cn','�ʼ��޸ĳɹ�','email_edit_ok','��ϲ�����������ѳɹ��޸ģ�������°�ť���ػ�Ա���ģ�','0','1');
INSERT INTO `espcms_lngpack` VALUES ('96','50','cn','������д����','birthday_empty','������������д�������Ƿ����ȷ�Ϸ���������д��','0','1');
INSERT INTO `espcms_lngpack` VALUES ('545','50','cn','���������ݻ�������д����','forum_input_err','���������ݻ�������д�����뷵��������д��','0','4');
INSERT INTO `espcms_lngpack` VALUES ('98','50','cn','QQ����д����','qq_empty','��������QQ�����Ƿ���д����ȷ�Ϸ���������д��','0','1');
INSERT INTO `espcms_lngpack` VALUES ('99','50','cn','�����޸ĳɹ�','member_edit_ok','��ϲ�����ĸ����������޸ĳɹ���ȷ�Ϸ���Ĭ�����ӵ�ַ','0','1');
INSERT INTO `espcms_lngpack` VALUES ('100','50','cn','��Ʒ�����ڻ��ֹ����','order_buy_err','���󣺸���Ʒ�����ڻ����������뷵������ѡ��','0','2');
INSERT INTO `espcms_lngpack` VALUES ('101','50','cn','��Ʒ�ɹ����ù��ﳵ','order_buy_ok','��ϲ����Ʒ�ѳɹ����ù��ﳵ����ȷ�ϼ���������鿴���ﳵ','0','2');
INSERT INTO `espcms_lngpack` VALUES ('102','50','cn','����������ť����','oder_buy_goback','��������','0','2');
INSERT INTO `espcms_lngpack` VALUES ('103','50','cn','�鿴���ﳵ��ť����','order_buy_listbotton','�鿴���ﳵ','0','1');
INSERT INTO `espcms_lngpack` VALUES ('104','50','cn','��Ʒ����������д������ʾ','order_amout_err','������Ʒ����������д��������д����0��������','0','2');
INSERT INTO `espcms_lngpack` VALUES ('105','50','cn','�������³ɹ�','order_amout_updateok','��ʾ�����ﳵ��Ϣ�Ѹ��³ɹ����������ع��ﳵ�б�','0','2');
INSERT INTO `espcms_lngpack` VALUES ('106','50','cn','���ﳵ�����','order_clearcart','��ʾ����ǰ���ﳵ�ѳɹ�����������ѡ��������Ʒ��','0','2');
INSERT INTO `espcms_lngpack` VALUES ('107','50','cn','���ﳵ��Ʒɾ��','order_delcartok','��ʾ������ѡ�����Ʒ�Ѵӹ��ﳵ��ɾ����ȷ�Ϸ��ز鿴���ﳵ��Ʒ�б�','0','2');
INSERT INTO `espcms_lngpack` VALUES ('108','50','cn','δ������Ʒ��ʾ','order_nolist','���󣺵�ǰ���ﳵ��δ��Ӷ�����Ʒ���뷵����Ӻ����ύ�˶�����','0','2');
INSERT INTO `espcms_lngpack` VALUES ('109','50','cn','��Ա�ɹ���½��Ϣ','login_ok','��ϲ����Ա����֤ͨ�����������°�ť������ز���ҳ�棡','0','1');
INSERT INTO `espcms_lngpack` VALUES ('110','50','cn','�����Ա���İ�ť','member_center_botton','�����Ա����','0','6');
INSERT INTO `espcms_lngpack` VALUES ('111','50','cn','ע���Ա��ť','member_regbotton','��Աע��','0','6');
INSERT INTO `espcms_lngpack` VALUES ('112','50','cn','��������Ϊ��','alias_empty','����������д�����Ϊ�գ��뷵��������д��','0','2');
INSERT INTO `espcms_lngpack` VALUES ('113','50','cn','��ַ����Ϊ��','address_title','���󣺵�ַ����Ϊ�գ��뷵��������д��','0','2');
INSERT INTO `espcms_lngpack` VALUES ('114','50','cn','�绰���ֻ���д����','tel_empty','�����ֻ��͵绰δ��д����дΪ�գ��뷵��������д������һ��ɣ���','0','2');
INSERT INTO `espcms_lngpack` VALUES ('116','50','cn','������������','order_input_err','��Ǹ�������ύ�Ķ������������뷵������ѡ����','0','2');
INSERT INTO `espcms_lngpack` VALUES ('117','50','cn','�������󣬷�����һҳ','db_err','��վ�������ʹ����뷵��Ĭ��ҳ�棡','0','6');
INSERT INTO `espcms_lngpack` VALUES ('118','50','cn','�¶���','ordermain_text_ordertype1','�¶���','0','2');
INSERT INTO `espcms_lngpack` VALUES ('119','50','cn','��֧��','ordermain_text_ordertype2','��֧��','0','2');
INSERT INTO `espcms_lngpack` VALUES ('120','50','cn','�ѷ���','ordermain_text_ordertype3','�ѷ���','0','2');
INSERT INTO `espcms_lngpack` VALUES ('121','50','cn','�ȴ����','ordermain_text_ordertype4','�ȴ����','0','2');
INSERT INTO `espcms_lngpack` VALUES ('122','50','cn','�ᵥ','ordermain_text_ordertype5','�ᵥ','0','2');
INSERT INTO `espcms_lngpack` VALUES ('123','50','cn','����','ordermain_text_ordertype6','����','0','2');
INSERT INTO `espcms_lngpack` VALUES ('124','50','cn','�˿�','ordermain_text_ordertype7','�˿�','0','2');
INSERT INTO `espcms_lngpack` VALUES ('125','50','cn','�˻�','ordermain_text_ordertype8','�˻�','0','2');
INSERT INTO `espcms_lngpack` VALUES ('126','50','cn','��Ա������Ϣ�޸�','order_memberinfoedit_ok','��ϲ�����Ķ�����Ϣ�޸ĳɹ��������ť���ز鿴��','0','2');
INSERT INTO `espcms_lngpack` VALUES ('127','50','cn','�����ѳɹ�ȡ��','order_edit_del','��ʾ�����ѳɹ�ȡ����ǰ�����������ť����Ĭ�ϵ�ַ��','0','2');
INSERT INTO `espcms_lngpack` VALUES ('128','50','cn','�����޸ĳɹ�','forummain_edit_ok','��ϲ����ǰ�����ѳɹ��޸ģ�������ť���أ�','0','4');
INSERT INTO `espcms_lngpack` VALUES ('130','50','cn','��ֹ�û�������','forum_mem_username','��Ǹ������ʱ�޷��ڱ���̳���ԣ��������Ա��ϵ��','0','4');
INSERT INTO `espcms_lngpack` VALUES ('131','50','cn','����֧��ʧ��','order_pay_no','��Ǹ�����Ķ���֧��ʧ�ܣ������ѱ��ۿ�뼰ʱ������ϵ��','0','2');
INSERT INTO `espcms_lngpack` VALUES ('132','50','cn','����֧���ɹ�','order_pay_ok','��ϲ�����Ķ�����֧���ɹ������ǽ����̴������Ķ�������л����֧�֣�','0','2');
INSERT INTO `espcms_lngpack` VALUES ('133','50','cn','�鿴������Ϣ��ť����','order_read_botton','�鿴������Ϣ','0','2');
INSERT INTO `espcms_lngpack` VALUES ('134','50','cn','���߿ͷ���������','call_title','���߿ͷ�','0','3');
INSERT INTO `espcms_lngpack` VALUES ('135','50','cn','������ť����','call_botton','����������ϵ','0','3');
INSERT INTO `espcms_lngpack` VALUES ('136','50','cn','��Ա���İ�ť����','call_form_botton','��Ա����','0','3');
INSERT INTO `espcms_lngpack` VALUES ('137','50','cn','��̳������ť����','call_bbs_botton','��̳����','0','3');
INSERT INTO `espcms_lngpack` VALUES ('138','50','cn','������������','search_err','��Ǹ�������������������������ؼ����Ƿ�����������Ƿ�ѡ����ȷ��','0','6');
INSERT INTO `espcms_lngpack` VALUES ('141','50','cn','���������˵��','search_list_no','��ʾ��δ�������������������ݣ��뷵������������','0','6');
INSERT INTO `espcms_lngpack` VALUES ('655','50','en','��ҳ��������','hometitle','Home','0','5');
INSERT INTO `espcms_lngpack` VALUES ('653','50','en','ѯ���ѳɹ�ȡ��','enquiry_edit_del','Successful abolition of Inquiry','0','2');
INSERT INTO `espcms_lngpack` VALUES ('654','50','en','��Աѯ����Ϣ�޸�','enquiry_memberinfoedit_ok','Inquiry information changed successfully','0','2');
INSERT INTO `espcms_lngpack` VALUES ('652','50','en','ѯ�۳ɹ�','enquiry_ok','Your inquiry has been successfully submitted, thank you for your support','0','2');
INSERT INTO `espcms_lngpack` VALUES ('651','50','en','ѯ�۲�������','enquiry_input_err','Inquiry parameter error','0','2');
INSERT INTO `espcms_lngpack` VALUES ('650','50','en','ѯ�����','enquiry_cleargoods','The current products have been successfully cleared Inquiry','0','2');
INSERT INTO `espcms_lngpack` VALUES ('648','50','en','ѯ������Ŀ����','enquirytitle','Inquiry','0','5');
INSERT INTO `espcms_lngpack` VALUES ('649','50','en','ѯ�۲�Ʒɾ��','enquiry_delok','Select the items you removed from the inquiry list','0','2');
INSERT INTO `espcms_lngpack` VALUES ('647','50','en','�鿴ѯ���嵥��ť','enquiry_into_listbotton','View Inquiry List','0','2');
INSERT INTO `espcms_lngpack` VALUES ('646','50','en','����ѯ�۰�ť����','enquiry_into_goback','Continue to choose','0','2');
INSERT INTO `espcms_lngpack` VALUES ('645','50','en','��Ʒ�����ڻ�ѡ��ѯ�۴���','enqiry_into_err','The product does not exist, or other error, please return to re-select!','0','2');
INSERT INTO `espcms_lngpack` VALUES ('644','50','en','��Ʒ�ɹ�����ѯ��','enqiry_into_ok','Products have successfully added Inquiry List','0','2');
INSERT INTO `espcms_lngpack` VALUES ('642','50','en','���������cookie˵��','ie_cookie_err','Cookie disabled browser','0','1');
INSERT INTO `espcms_lngpack` VALUES ('643','50','en','��ʱͨ�رհ�ť����','close_im','Close','0','3');
INSERT INTO `espcms_lngpack` VALUES ('641','50','en','���������˵��','search_list_no','Search content does not exist','0','6');
INSERT INTO `espcms_lngpack` VALUES ('640','50','en','������������','search_err','Search condition input error','0','6');
INSERT INTO `espcms_lngpack` VALUES ('638','50','en','��Ա���İ�ť����','call_form_botton','Member center','0','3');
INSERT INTO `espcms_lngpack` VALUES ('639','50','en','��̳������ť����','call_bbs_botton','Submit message','0','3');
INSERT INTO `espcms_lngpack` VALUES ('636','50','en','���߿ͷ���������','call_title','Online Customer Service','0','3');
INSERT INTO `espcms_lngpack` VALUES ('637','50','en','������ť����','call_botton','Contact Us','0','3');
INSERT INTO `espcms_lngpack` VALUES ('635','50','en','�鿴������Ϣ��ť����','order_read_botton','View Order Details','0','2');
INSERT INTO `espcms_lngpack` VALUES ('634','50','en','����֧���ɹ�','order_pay_ok','Payment orders successfully, thank you for your support','0','2');
INSERT INTO `espcms_lngpack` VALUES ('633','50','en','����֧��ʧ��','order_pay_no','Failure to pay the order, please contact us','0','2');
INSERT INTO `espcms_lngpack` VALUES ('632','50','en','��ֹ�û�������','forum_mem_username','The user has banned message, please contact with us','0','4');
INSERT INTO `espcms_lngpack` VALUES ('630','50','en','�����޸ĳɹ�','forummain_edit_ok','Message modify success','0','4');
INSERT INTO `espcms_lngpack` VALUES ('629','50','en','�����ѳɹ�ȡ��','order_edit_del','Order cancel success','0','2');
INSERT INTO `espcms_lngpack` VALUES ('628','50','en','��Ա������Ϣ�޸�','order_memberinfoedit_ok','Thanks for Your Order!Your order was sent to us but requires payment before it can be completed','0','2');
INSERT INTO `espcms_lngpack` VALUES ('627','50','en','�˻�','ordermain_text_ordertype8','Declined','0','2');
INSERT INTO `espcms_lngpack` VALUES ('625','50','en','����','ordermain_text_ordertype6','Cancelled','0','2');
INSERT INTO `espcms_lngpack` VALUES ('626','50','en','�˿�','ordermain_text_ordertype7','Refunded','0','2');
INSERT INTO `espcms_lngpack` VALUES ('623','50','en','�ȴ����','ordermain_text_ordertype4','Acceptance','0','2');
INSERT INTO `espcms_lngpack` VALUES ('624','50','en','�ᵥ','ordermain_text_ordertype5','Completed','0','2');
INSERT INTO `espcms_lngpack` VALUES ('621','50','en','��֧��','ordermain_text_ordertype2','Already pay','0','2');
INSERT INTO `espcms_lngpack` VALUES ('622','50','en','�ѷ���','ordermain_text_ordertype3','Shipped','0','2');
INSERT INTO `espcms_lngpack` VALUES ('620','50','en','�¶���','ordermain_text_ordertype1','Awaiting Payment','0','2');
INSERT INTO `espcms_lngpack` VALUES ('618','50','en','������������','order_input_err','Order parameter error','0','2');
INSERT INTO `espcms_lngpack` VALUES ('619','50','en','�������󣬷�����һҳ','db_err','Parameters error, please return the default URL!','0','6');
INSERT INTO `espcms_lngpack` VALUES ('617','50','en','�绰���ֻ���д����','tel_empty','Mobile phones or telephone not complete or fill in error','0','2');
INSERT INTO `espcms_lngpack` VALUES ('616','50','en','��ַ����Ϊ��','address_title','Please fill out the contact address','0','2');
INSERT INTO `espcms_lngpack` VALUES ('614','50','en','ע���Ա��ť','member_regbotton','Create an Account','0','6');
INSERT INTO `espcms_lngpack` VALUES ('615','50','en','�ռ��˲���Ϊ��','alias_empty','Please fill out a contact name','0','2');
INSERT INTO `espcms_lngpack` VALUES ('613','50','en','�����Ա���İ�ť','member_center_botton','Member Center','0','6');
INSERT INTO `espcms_lngpack` VALUES ('612','50','en','��Ա�ɹ���½��Ϣ','login_ok','Validation, please click the following through to the corresponding function button!!!!!','0','1');
INSERT INTO `espcms_lngpack` VALUES ('611','50','en','δ������Ʒ��ʾ','order_nolist','Your Shopping Cart is Empty','0','2');
INSERT INTO `espcms_lngpack` VALUES ('610','50','en','���ﳵ��Ʒɾ��','order_delcartok','Delete success, return to check list order','0','2');
INSERT INTO `espcms_lngpack` VALUES ('609','50','en','���ﳵ�����','order_clearcart','Your Shopping Cart is Empty','0','2');
INSERT INTO `espcms_lngpack` VALUES ('608','50','en','�������³ɹ�','order_amout_updateok','Updated the order','0','2');
INSERT INTO `espcms_lngpack` VALUES ('606','50','en','�鿴���ﳵ��ť����','order_buy_listbotton','Your Shopping Cart','0','1');
INSERT INTO `espcms_lngpack` VALUES ('607','50','en','��Ʒ����������д������ʾ','order_amout_err','Please input the order quantity','0','2');
INSERT INTO `espcms_lngpack` VALUES ('605','50','en','����������ť����','oder_buy_goback','Continue Shopping','0','2');
INSERT INTO `espcms_lngpack` VALUES ('604','50','en','��Ʒ�ɹ����ù��ﳵ','order_buy_ok','The success of choose and buy products','0','2');
INSERT INTO `espcms_lngpack` VALUES ('603','50','en','��Ʒ�����ڻ��ֹ����','order_buy_err','The goods does not exist or prohibit the order','0','2');
INSERT INTO `espcms_lngpack` VALUES ('602','50','en','�����޸ĳɹ�','member_edit_ok','Personal data modified success','0','1');
INSERT INTO `espcms_lngpack` VALUES ('601','50','en','QQ����д����','qq_empty','QQ format error','0','1');
INSERT INTO `espcms_lngpack` VALUES ('600','50','en','������д����','birthday_empty','Time format error','0','1');
INSERT INTO `espcms_lngpack` VALUES ('599','50','en','�ʼ��޸ĳɹ�','email_edit_ok','Mailbox modify success','0','1');
INSERT INTO `espcms_lngpack` VALUES ('597','50','en','�˳����µ�½','out_botton','Login again','0','6');
INSERT INTO `espcms_lngpack` VALUES ('598','50','en','��ϲ�������޸ĳɹ�','password_ok','User password updated successfully!','0','1');
INSERT INTO `espcms_lngpack` VALUES ('596','50','en','������֤ʧ��','password_input_err','The current password is wrong!','0','1');
INSERT INTO `espcms_lngpack` VALUES ('595','50','en','ԭʼ���벻��Ϊ��','oldpassword_err','The original password is empty or input is not correct','0','1');
INSERT INTO `espcms_lngpack` VALUES ('594','50','en','���������ƺ�','forum_anonymity','Visitor','0','4');
INSERT INTO `espcms_lngpack` VALUES ('593','50','en','���Գ��������ַ���ʾ','forum_input_filter','Error: content containing sensitive characters','0','4');
INSERT INTO `espcms_lngpack` VALUES ('592','50','en','�����ύ�ɹ�','forum_input_ok','Information submitted to success, thank you for support','0','4');
INSERT INTO `espcms_lngpack` VALUES ('591','50','en','���Ա������','forum_title_err','Title is empty or input errors','0','4');
INSERT INTO `espcms_lngpack` VALUES ('590','50','en','�����һ�ʧ����ʾ˵��','password_losterr','I\'m sorry: fill in the information can\'t verify through the website, please contact with administrator.','0','1');
INSERT INTO `espcms_lngpack` VALUES ('589','50','en','����ɹ��һ���ʾ˵��','password_lostok','The new password has been successfully sent to designated mailbox','0','1');
INSERT INTO `espcms_lngpack` VALUES ('588','50','en','�ʼ�����ʧ��','main_send_no','Web site has banned mail, please contact with us','0','1');
INSERT INTO `espcms_lngpack` VALUES ('587','50','en','��Աע��ɹ�','reg_ok','Member success','0','1');
INSERT INTO `espcms_lngpack` VALUES ('586','50','en','UCenter��Ա����','ucenter_check_botton','Activate members','0','6');
INSERT INTO `espcms_lngpack` VALUES ('585','50','en','��UCenter�д��ڵ��û����м���','ucenter_check_mess','The current user needs UCenter activate the conversion','0','1');
INSERT INTO `espcms_lngpack` VALUES ('584','50','en','��Ա�����ʼ����ͳɹ�','username_sendmail_ok','The current account activated mail sent successfully','0','1');
INSERT INTO `espcms_lngpack` VALUES ('583','50','en','��Ա�����ʼ�����ʧ��','username_sendmail_err','Member activate mail failed','0','1');
INSERT INTO `espcms_lngpack` VALUES ('582','50','en','�ʻ�����ɹ�','username_check_ok','Account activated success','0','1');
INSERT INTO `espcms_lngpack` VALUES ('580','50','en','��Ա��½��ť','login_botton','Log in','0','6');
INSERT INTO `espcms_lngpack` VALUES ('581','50','en','�ʻ�����ʧ��','username_check_no','Activate failure','0','1');
INSERT INTO `espcms_lngpack` VALUES ('579','50','en','�ط������ʼ���ť����','checkemail_send','Heavy hair the confirmation E-mail','0','6');
INSERT INTO `espcms_lngpack` VALUES ('578','50','en','�û��ʻ���Ҫ����','username_check','The current account not activated','0','1');
INSERT INTO `espcms_lngpack` VALUES ('577','50','en','��Աע��ʧ��','reg_err','Failed to register','0','1');
INSERT INTO `espcms_lngpack` VALUES ('576','50','en','������ڼ�','password_len2','The password is too simple or with the same user name','0','1');
INSERT INTO `espcms_lngpack` VALUES ('575','50','en','��ȷ��ע������','agree_empty','Please confirm the registration agreement','0','1');
INSERT INTO `espcms_lngpack` VALUES ('574','50','en','�����������벻һ��','password_equal','Two password input not consistent','0','1');
INSERT INTO `espcms_lngpack` VALUES ('573','50','en','ȷ�������������','password2_err','Confirm password is empty or input errors','0','1');
INSERT INTO `espcms_lngpack` VALUES ('572','50','en','�����������','password_err','The password is empty or input errors','0','1');
INSERT INTO `espcms_lngpack` VALUES ('571','50','en','�����ʼ��������','email_err','Your email address is incorrect. Please try again.','0','1');
INSERT INTO `espcms_lngpack` VALUES ('570','50','en','�û���ע�������ʾ','username_err','Username or input errors. Empty','0','1');
INSERT INTO `espcms_lngpack` VALUES ('569','50','en','�����Ѵ���','mem_regemail_no','E-mail already exist','0','1');
INSERT INTO `espcms_lngpack` VALUES ('567','50','en','�û�������ʹ��','mem_reg_ok','Through the','0','1');
INSERT INTO `espcms_lngpack` VALUES ('568','50','en','�������ʹ��','mem_regemail_ok','E-mail through','0','1');
INSERT INTO `espcms_lngpack` VALUES ('566','50','en','�û����Ѵ���','mem_reg_no','This ID is not available','0','1');
INSERT INTO `espcms_lngpack` VALUES ('565','50','en','ucenter����ͬ������','ucenter_err','UCenter interface synchronization error','0','1');
INSERT INTO `espcms_lngpack` VALUES ('564','50','en','��½ʧ��','login_err','Account disable, user name or password records error','0','1');
INSERT INTO `espcms_lngpack` VALUES ('562','50','en','��Ա��½�������','loing_input_err','Username or password input error, please return to enter again!!!!!','0','1');
INSERT INTO `espcms_lngpack` VALUES ('563','50','en','�����ܱ����û�','member_memlock','Username has been banned, please change user name to third','0','1');
INSERT INTO `espcms_lngpack` VALUES ('560','50','en','���ﳵ��Ŀ����','ordertitle','View Cart','0','5');
INSERT INTO `espcms_lngpack` VALUES ('561','50','en','��Ա��ҳ����','member_title','Member','0','5');
INSERT INTO `espcms_lngpack` VALUES ('559','50','en','��Ա��Ŀ����','membertitle','Account','0','5');
INSERT INTO `espcms_lngpack` VALUES ('558','50','en','Ȩ�޲���','memberpuverr','Access is not enough, prohibit operation!','0','1');
INSERT INTO `espcms_lngpack` VALUES ('261','50','cn','���������cookie˵��','ie_cookie_err','���������Cookie','0','1');
INSERT INTO `espcms_lngpack` VALUES ('382','50','cn','��ʱͨ�رհ�ť����','close_im','�ر�','0','3');
INSERT INTO `espcms_lngpack` VALUES ('557','50','en','δ��½��Ա','memberloginerr','Access is not enough, prohibit operation! Please sign!!','0','1');
INSERT INTO `espcms_lngpack` VALUES ('386','50','cn','��Ʒ�ɹ�����ѯ��','enqiry_into_ok','��ϲ����Ʒ�ѳɹ�����ѯ���嵥����ȷ�ϼ���ѡ���鿴ѯ���嵥�б�','0','2');
INSERT INTO `espcms_lngpack` VALUES ('387','50','cn','��Ʒ�����ڻ�ѡ��ѯ�۴���','enqiry_into_err','���󣺸ò�Ʒ�����ڻ����������뷵������ѡ��','0','2');
INSERT INTO `espcms_lngpack` VALUES ('388','50','cn','����ѯ�۰�ť����','enquiry_into_goback','����ѡ��ѯ��','0','2');
INSERT INTO `espcms_lngpack` VALUES ('389','50','cn','�鿴ѯ���嵥��ť','enquiry_into_listbotton','�鿴ѯ���嵥','0','2');
INSERT INTO `espcms_lngpack` VALUES ('555','50','en','����Ĭ�ϵ�ַ','gobackurlbotton','Default URL','0','6');
INSERT INTO `espcms_lngpack` VALUES ('556','50','en','��½��Ա','memberlogin','Log IN','0','6');
INSERT INTO `espcms_lngpack` VALUES ('554','50','en','�벻Ҫ�ظ��ύ','repeatinput','You have to submit, please and repeated operation','0','4');
INSERT INTO `espcms_lngpack` VALUES ('553','50','en','����������д','gobackbotton','Return to','0','6');
INSERT INTO `espcms_lngpack` VALUES ('394','50','cn','ѯ������Ŀ����','enquirytitle','ѯ��','0','5');
INSERT INTO `espcms_lngpack` VALUES ('395','50','cn','ѯ�۲�Ʒɾ��','enquiry_delok','��ʾ������ѡ�����Ʒ�Ѵ�ѯ���б���ɾ����ȷ�Ϸ��ز鿴ѯ����Ʒ�б�','0','2');
INSERT INTO `espcms_lngpack` VALUES ('396','50','cn','ѯ�����','enquiry_cleargoods','��ʾ����ǰѯ�۲�Ʒ�ѳɹ��������ѡ��������Ʒ����ѯ�ۣ�','0','2');
INSERT INTO `espcms_lngpack` VALUES ('397','50','cn','ѯ�۲�������','enquiry_input_err','��Ǹ�������ύ��ѯ�۲��������뷵��������д��','0','2');
INSERT INTO `espcms_lngpack` VALUES ('398','50','cn','ѯ�۳ɹ�','enquiry_ok','��ϲ������ѯ���ѳɹ��ύ����л����֧�֣����ǽ����̴�������ѯ�ۣ������ĵȺ����ǵĻظ���','0','2');
INSERT INTO `espcms_lngpack` VALUES ('552','50','en','�������','inputerr','Input error, please enter again','0','6');
INSERT INTO `espcms_lngpack` VALUES ('551','50','en','��תҳ��ť','gopageurl','Jump $1','0','6');
INSERT INTO `espcms_lngpack` VALUES ('549','50','en','��ҳ��Ϣ','pagetext','Total $1 $2 records Current page / Total $3 $4 per page','0','6');
INSERT INTO `espcms_lngpack` VALUES ('550','50','en','��ҳ��ť','pagebotton','Home/Previous/Next/Last','0','6');
INSERT INTO `espcms_lngpack` VALUES ('548','50','en','��վ���','description','ESPCMS is a professional enterprise web site management software, it has: completely open source (PHP + MySQL), generating static page, release the model for Jane numerous conversion, member, order, messages, form and so on, enough to make your website to fully meet the need of the Internet.','0','5');
INSERT INTO `espcms_lngpack` VALUES ('404','50','cn','ѯ���ѳɹ�ȡ��','enquiry_edit_del','��ʾ�����ѳɹ�ȡ����ǰѯ�ۣ������ť����Ĭ�ϵ�ַ��','0','2');
INSERT INTO `espcms_lngpack` VALUES ('405','50','cn','��Աѯ����Ϣ�޸�','enquiry_memberinfoedit_ok','��ϲ������ѯ����ϵ��Ϣ�޸ĳɹ��������ť���ز鿴��','0','2');
INSERT INTO `espcms_lngpack` VALUES ('547','50','en','�ؼ���','keyword','ESPCMS,cms,espcms,v5,espcmsv5,ecisp,earclink','0','5');
INSERT INTO `espcms_lngpack` VALUES ('546','50','en','��վ����','sitename','ESPCMSV5-The most professional enterprise site management platform','0','5');
INSERT INTO `espcms_lngpack` VALUES ('541','50','cn','��ҳ��������','hometitle','��ҳ','0','5');
INSERT INTO `espcms_logs` VALUES ('1','admin','2147483647','1373815662','��½����ƽ̨','�ɹ� user=admin');
INSERT INTO `espcms_logs` VALUES ('2','admin','2147483647','1374074175','��½����ƽ̨','�ɹ� user=admin');
INSERT INTO `espcms_logs` VALUES ('3','admin','2147483647','1374074179','��½����ƽ̨','�ɹ� user=admin');
