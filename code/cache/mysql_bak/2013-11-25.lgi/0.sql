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
INSERT INTO `espcms_admin_powergroup` VALUES ('1','系统管理组','all','1');
INSERT INTO `espcms_advert` VALUES ('1','50','1','cn','EarcLink-互联网综合应用商务商','upfile/2011/08/19/20110819230346_958.jpg','http://www.earclink.com','','1','0','0','1314633600','1314633600','1314710440','1','1','0');
INSERT INTO `espcms_advert` VALUES ('2','50','1','cn','EarcLink-互联网综合应用商务商','upfile/2011/08/19/20110819230342_671.jpg','http://www.earclink.com','','1','0','0','1314633600','1314633600','1314710454','1','1','0');
INSERT INTO `espcms_advert` VALUES ('3','50','1','cn','EarcLink-互联网综合应用商务商','upfile/2011/08/19/20110819230338_165.jpg','http://www.earclink.com','','1','0','0','1314633600','1314633600','1314710465','1','1','0');
INSERT INTO `espcms_advert` VALUES ('4','50','2','cn','Earclink','','http://www.earclink.com','','3','0','0','1314633600','1314633600','1314715346','1','1','0');
INSERT INTO `espcms_advert` VALUES ('5','50','2','cn','尔创网联','','http://www.earclink.com','','3','0','0','1314633600','1314633600','1314715361','1','1','0');
INSERT INTO `espcms_advert` VALUES ('6','50','2','cn','KUBCMS','','http://www.kubcms.com','','3','0','0','1314633600','1314633600','1314715383','1','1','0');
INSERT INTO `espcms_advert` VALUES ('7','50','2','cn','易思ESPCMS企业网站管理系统','','http://www.espcms.com','','3','0','0','1314633600','1314633600','1314715502','1','1','0');
INSERT INTO `espcms_advert` VALUES ('8','50','2','cn','易思ESPCMS','','http://www.espcms.net','','3','0','0','1314633600','1314633600','1314715513','1','1','0');
INSERT INTO `espcms_advert` VALUES ('9','50','2','cn','ESPCMS','','http://www.ecisp.cn','','3','0','0','1314633600','1314633600','1314715521','1','1','0');
INSERT INTO `espcms_advert` VALUES ('10','50','2','cn','ESPCMS交流论坛','','http://bbs.ecisp.cn','','3','0','0','1314633600','1314633600','1314715546','1','1','0');
INSERT INTO `espcms_advert` VALUES ('11','50','2','cn','KUBCMS酷博门户管理系统','','http://www.kubcms.com','','3','0','0','1314633600','1314633600','1314715565','1','1','0');
INSERT INTO `espcms_advert` VALUES ('12','50','2','cn','ESPCMS演示平台','','http://www.easysitepm.com','','3','0','0','1314633600','1314633600','1314715587','1','1','0');
INSERT INTO `espcms_advert` VALUES ('16','50','4','en','EarcLink','','http://www.earclink.com','','3','0','0','1314633600','1314633600','1314718036','1','1','0');
INSERT INTO `espcms_advert` VALUES ('17','50','4','en','ESPCMS','','http://www.espcms.com','','3','0','0','1314633600','1314633600','1314718067','1','1','0');
INSERT INTO `espcms_advert` VALUES ('14','50','3','en','EARCLINK宣传广告','upfile/2011/08/19/20110819230342_671.jpg','http://www.earclink.com','','1','0','0','1314633600','1314633600','1314717553','1','1','0');
INSERT INTO `espcms_advert` VALUES ('15','50','3','en','EARCLINK宣传广告','upfile/2011/08/19/20110819230338_165.jpg','http://www.earclink.com','','1','0','0','1314633600','1314633600','1314717568','1','1','0');
INSERT INTO `espcms_advert` VALUES ('18','50','4','en','KUBCMS','','http://www.kubcms.com','','3','0','0','1314633600','1314633600','1314718079','1','1','0');
INSERT INTO `espcms_advert` VALUES ('19','50','4','en','YUNSYS','','http://www.yunsys.com','','3','0','0','1314633600','1314633600','1314718089','1','1','0');
INSERT INTO `espcms_advert` VALUES ('20','50','4','en','EasysitePM','','http://www.easysitepm.com','','3','0','0','1314633600','1314633600','1314718101','1','1','0');
INSERT INTO `espcms_advert` VALUES ('21','50','4','en','AbeBooks','','http://www.abebooks.com/','','3','0','0','1314633600','1314633600','1314718130','1','1','0');
INSERT INTO `espcms_advert` VALUES ('22','50','4','en','AmazonWireless','','http://wireless.amazon.com/','','3','0','0','1314633600','1314633600','1314718156','1','1','0');
INSERT INTO `espcms_advert` VALUES ('23','50','4','en','Askville','','http://www.audible.com/','','3','0','0','1314633600','1314633600','1314718205','1','1','0');
INSERT INTO `espcms_advert` VALUES ('24','50','4','en','Warehouse Deals','','http://www.amazon.com/b/ref=footer_wrhsdls?ie=UTF8&amp;node=1267877011','','3','0','0','1314633600','1314633600','1314718247','1','1','0');
INSERT INTO `espcms_advert_type` VALUES ('1','cn','首页幻灯片广告','','942','254','1','0','0','','','');
INSERT INTO `espcms_advert_type` VALUES ('2','cn','首页友情链接','','0','0','1','0','0','','','');
INSERT INTO `espcms_advert_type` VALUES ('3','en','首页轮换广告','','0','0','1','0','0','','','');
INSERT INTO `espcms_advert_type` VALUES ('4','en','首页友情文字链接','','0','0','1','0','0','','','');
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
INSERT INTO `espcms_album_images` VALUES ('1','50','cn','产品相册','','','1314713220','1','0');
INSERT INTO `espcms_bbs_typelist` VALUES ('1','50','cn','在线留言','','0','1','1','1314710341','10','5','0','0','','','1','0','0','1','0','message_center');
INSERT INTO `espcms_calling` VALUES ('1','50','cn','1','0','ESPCMS授权咨询','&lt;a target=&quot;_blank&quot; href=&quot;http://wpa.qq.com/msgrd?v=3&amp;uin=6326420&amp;site=qq&amp;menu=yes&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://wpa.qq.com/pa?p=2:6326420:41 &amp;r=0.15196556923910975&quot; alt=&quot;点击这里给我发消息&quot; title=&quot;点击这里给我发消息&quot;&gt;&lt;/a&gt;','1314721346','1');
INSERT INTO `espcms_calling` VALUES ('2','50','en','1','0','Authorized Consulting','&lt;a target=&quot;_blank&quot; href=&quot;http://wpa.qq.com/msgrd?v=3&amp;uin=6326420&amp;site=qq&amp;menu=yes&quot;&gt;&lt;img border=&quot;0&quot; src=&quot;http://wpa.qq.com/pa?p=2:6326420:41&quot; alt=&quot;点击这里给我发消息&quot; title=&quot;点击这里给我发消息&quot;&gt;&lt;/a&gt;','1314721945','1');
INSERT INTO `espcms_city` VALUES ('1','0','中国','0','0');
INSERT INTO `espcms_city` VALUES ('2','1','北京','1','0');
INSERT INTO `espcms_city` VALUES ('3','1','安徽','1','0');
INSERT INTO `espcms_city` VALUES ('4','1','福建','1','0');
INSERT INTO `espcms_city` VALUES ('5','1','甘肃','1','0');
INSERT INTO `espcms_city` VALUES ('6','1','广东','1','0');
INSERT INTO `espcms_city` VALUES ('7','1','广西','1','0');
INSERT INTO `espcms_city` VALUES ('8','1','贵州','1','0');
INSERT INTO `espcms_city` VALUES ('9','1','海南','1','0');
INSERT INTO `espcms_city` VALUES ('10','1','河北','1','0');
INSERT INTO `espcms_city` VALUES ('11','1','河南','1','0');
INSERT INTO `espcms_city` VALUES ('12','1','黑龙江','1','0');
INSERT INTO `espcms_city` VALUES ('13','1','湖北','1','0');
INSERT INTO `espcms_city` VALUES ('14','1','湖南','1','0');
INSERT INTO `espcms_city` VALUES ('15','1','吉林','1','0');
INSERT INTO `espcms_city` VALUES ('16','1','江苏','1','0');
INSERT INTO `espcms_city` VALUES ('17','1','江西','1','0');
INSERT INTO `espcms_city` VALUES ('18','1','辽宁','1','0');
INSERT INTO `espcms_city` VALUES ('19','1','内蒙古','1','0');
INSERT INTO `espcms_city` VALUES ('20','1','宁夏','1','0');
INSERT INTO `espcms_city` VALUES ('21','1','青海','1','0');
INSERT INTO `espcms_city` VALUES ('22','1','山东','1','0');
INSERT INTO `espcms_city` VALUES ('23','1','山西','1','0');
INSERT INTO `espcms_city` VALUES ('24','1','陕西','1','0');
INSERT INTO `espcms_city` VALUES ('25','1','上海','1','0');
INSERT INTO `espcms_city` VALUES ('26','1','四川','1','0');
INSERT INTO `espcms_city` VALUES ('27','1','天津','1','0');
INSERT INTO `espcms_city` VALUES ('28','1','西藏','1','0');
INSERT INTO `espcms_city` VALUES ('29','1','新疆','1','0');
INSERT INTO `espcms_city` VALUES ('30','1','云南','1','0');
INSERT INTO `espcms_city` VALUES ('31','1','浙江','1','0');
INSERT INTO `espcms_city` VALUES ('32','1','重庆','1','0');
INSERT INTO `espcms_city` VALUES ('33','1','香港','1','0');
INSERT INTO `espcms_city` VALUES ('34','1','澳门','1','0');
INSERT INTO `espcms_city` VALUES ('35','1','台湾','1','0');
INSERT INTO `espcms_city` VALUES ('36','3','安庆','2','0');
INSERT INTO `espcms_city` VALUES ('37','3','蚌埠','2','0');
INSERT INTO `espcms_city` VALUES ('38','3','巢湖','2','0');
INSERT INTO `espcms_city` VALUES ('39','3','池州','2','0');
INSERT INTO `espcms_city` VALUES ('40','3','滁州','2','0');
INSERT INTO `espcms_city` VALUES ('41','3','阜阳','2','0');
INSERT INTO `espcms_city` VALUES ('42','3','淮北','2','0');
INSERT INTO `espcms_city` VALUES ('43','3','淮南','2','0');
INSERT INTO `espcms_city` VALUES ('44','3','黄山','2','0');
INSERT INTO `espcms_city` VALUES ('45','3','六安','2','0');
INSERT INTO `espcms_city` VALUES ('46','3','马鞍山','2','0');
INSERT INTO `espcms_city` VALUES ('47','3','宿州','2','0');
INSERT INTO `espcms_city` VALUES ('48','3','铜陵','2','0');
INSERT INTO `espcms_city` VALUES ('49','3','芜湖','2','0');
INSERT INTO `espcms_city` VALUES ('50','3','宣城','2','0');
INSERT INTO `espcms_city` VALUES ('51','3','亳州','2','0');
INSERT INTO `espcms_city` VALUES ('52','2','北京','2','0');
INSERT INTO `espcms_city` VALUES ('53','4','福州','2','0');
INSERT INTO `espcms_city` VALUES ('54','4','龙岩','2','0');
INSERT INTO `espcms_city` VALUES ('55','4','南平','2','0');
INSERT INTO `espcms_city` VALUES ('56','4','宁德','2','0');
INSERT INTO `espcms_city` VALUES ('57','4','莆田','2','0');
INSERT INTO `espcms_city` VALUES ('58','4','泉州','2','0');
INSERT INTO `espcms_city` VALUES ('59','4','三明','2','0');
INSERT INTO `espcms_city` VALUES ('60','4','厦门','2','0');
INSERT INTO `espcms_city` VALUES ('61','4','漳州','2','0');
INSERT INTO `espcms_city` VALUES ('62','5','兰州','2','0');
INSERT INTO `espcms_city` VALUES ('63','5','白银','2','0');
INSERT INTO `espcms_city` VALUES ('64','5','定西','2','0');
INSERT INTO `espcms_city` VALUES ('65','5','甘南','2','0');
INSERT INTO `espcms_city` VALUES ('66','5','嘉峪关','2','0');
INSERT INTO `espcms_city` VALUES ('67','5','金昌','2','0');
INSERT INTO `espcms_city` VALUES ('68','5','酒泉','2','0');
INSERT INTO `espcms_city` VALUES ('69','5','临夏','2','0');
INSERT INTO `espcms_city` VALUES ('70','5','陇南','2','0');
INSERT INTO `espcms_city` VALUES ('71','5','平凉','2','0');
INSERT INTO `espcms_city` VALUES ('72','5','庆阳','2','0');
INSERT INTO `espcms_city` VALUES ('73','5','天水','2','0');
INSERT INTO `espcms_city` VALUES ('74','5','武威','2','0');
INSERT INTO `espcms_city` VALUES ('75','5','张掖','2','0');
INSERT INTO `espcms_city` VALUES ('76','6','广州','2','0');
INSERT INTO `espcms_city` VALUES ('77','6','深圳','2','0');
INSERT INTO `espcms_city` VALUES ('78','6','潮州','2','0');
INSERT INTO `espcms_city` VALUES ('79','6','东莞','2','0');
INSERT INTO `espcms_city` VALUES ('80','6','佛山','2','0');
INSERT INTO `espcms_city` VALUES ('81','6','河源','2','0');
INSERT INTO `espcms_city` VALUES ('82','6','惠州','2','0');
INSERT INTO `espcms_city` VALUES ('83','6','江门','2','0');
INSERT INTO `espcms_city` VALUES ('84','6','揭阳','2','0');
INSERT INTO `espcms_city` VALUES ('85','6','茂名','2','0');
INSERT INTO `espcms_city` VALUES ('86','6','梅州','2','0');
INSERT INTO `espcms_city` VALUES ('87','6','清远','2','0');
INSERT INTO `espcms_city` VALUES ('88','6','汕头','2','0');
INSERT INTO `espcms_city` VALUES ('89','6','汕尾','2','0');
INSERT INTO `espcms_city` VALUES ('90','6','韶关','2','0');
INSERT INTO `espcms_city` VALUES ('91','6','阳江','2','0');
INSERT INTO `espcms_city` VALUES ('92','6','云浮','2','0');
INSERT INTO `espcms_city` VALUES ('93','6','湛江','2','0');
INSERT INTO `espcms_city` VALUES ('94','6','肇庆','2','0');
INSERT INTO `espcms_city` VALUES ('95','6','中山','2','0');
INSERT INTO `espcms_city` VALUES ('96','6','珠海','2','0');
INSERT INTO `espcms_city` VALUES ('97','7','南宁','2','0');
INSERT INTO `espcms_city` VALUES ('98','7','桂林','2','0');
INSERT INTO `espcms_city` VALUES ('99','7','百色','2','0');
INSERT INTO `espcms_city` VALUES ('100','7','北海','2','0');
INSERT INTO `espcms_city` VALUES ('101','7','崇左','2','0');
INSERT INTO `espcms_city` VALUES ('102','7','防城港','2','0');
INSERT INTO `espcms_city` VALUES ('103','7','贵港','2','0');
INSERT INTO `espcms_city` VALUES ('104','7','河池','2','0');
INSERT INTO `espcms_city` VALUES ('105','7','贺州','2','0');
INSERT INTO `espcms_city` VALUES ('106','7','来宾','2','0');
INSERT INTO `espcms_city` VALUES ('107','7','柳州','2','0');
INSERT INTO `espcms_city` VALUES ('108','7','钦州','2','0');
INSERT INTO `espcms_city` VALUES ('109','7','梧州','2','0');
INSERT INTO `espcms_city` VALUES ('110','7','玉林','2','0');
INSERT INTO `espcms_city` VALUES ('111','8','贵阳','2','0');
INSERT INTO `espcms_city` VALUES ('112','8','安顺','2','0');
INSERT INTO `espcms_city` VALUES ('113','8','毕节','2','0');
INSERT INTO `espcms_city` VALUES ('114','8','六盘水','2','0');
INSERT INTO `espcms_city` VALUES ('115','8','黔东南','2','0');
INSERT INTO `espcms_city` VALUES ('116','8','黔南','2','0');
INSERT INTO `espcms_city` VALUES ('117','8','黔西南','2','0');
INSERT INTO `espcms_city` VALUES ('118','8','铜仁','2','0');
INSERT INTO `espcms_city` VALUES ('119','8','遵义','2','0');
INSERT INTO `espcms_city` VALUES ('120','9','海口','2','0');
INSERT INTO `espcms_city` VALUES ('121','9','三亚','2','0');
INSERT INTO `espcms_city` VALUES ('122','9','白沙','2','0');
INSERT INTO `espcms_city` VALUES ('123','9','保亭','2','0');
INSERT INTO `espcms_city` VALUES ('124','9','昌江','2','0');
INSERT INTO `espcms_city` VALUES ('125','9','澄迈县','2','0');
INSERT INTO `espcms_city` VALUES ('126','9','定安县','2','0');
INSERT INTO `espcms_city` VALUES ('127','9','东方','2','0');
INSERT INTO `espcms_city` VALUES ('128','9','乐东','2','0');
INSERT INTO `espcms_city` VALUES ('129','9','临高县','2','0');
INSERT INTO `espcms_city` VALUES ('130','9','陵水','2','0');
INSERT INTO `espcms_city` VALUES ('131','9','琼海','2','0');
INSERT INTO `espcms_city` VALUES ('132','9','琼中','2','0');
INSERT INTO `espcms_city` VALUES ('133','9','屯昌县','2','0');
INSERT INTO `espcms_city` VALUES ('134','9','万宁','2','0');
INSERT INTO `espcms_city` VALUES ('135','9','文昌','2','0');
INSERT INTO `espcms_city` VALUES ('136','9','五指山','2','0');
INSERT INTO `espcms_city` VALUES ('137','9','儋州','2','0');
INSERT INTO `espcms_city` VALUES ('138','10','石家庄','2','0');
INSERT INTO `espcms_city` VALUES ('139','10','保定','2','0');
INSERT INTO `espcms_city` VALUES ('140','10','沧州','2','0');
INSERT INTO `espcms_city` VALUES ('141','10','承德','2','0');
INSERT INTO `espcms_city` VALUES ('142','10','邯郸','2','0');
INSERT INTO `espcms_city` VALUES ('143','10','衡水','2','0');
INSERT INTO `espcms_city` VALUES ('144','10','廊坊','2','0');
INSERT INTO `espcms_city` VALUES ('145','10','秦皇岛','2','0');
INSERT INTO `espcms_city` VALUES ('146','10','唐山','2','0');
INSERT INTO `espcms_city` VALUES ('147','10','邢台','2','0');
INSERT INTO `espcms_city` VALUES ('148','10','张家口','2','0');
INSERT INTO `espcms_city` VALUES ('149','11','郑州','2','0');
INSERT INTO `espcms_city` VALUES ('150','11','洛阳','2','0');
INSERT INTO `espcms_city` VALUES ('151','11','开封','2','0');
INSERT INTO `espcms_city` VALUES ('152','11','安阳','2','0');
INSERT INTO `espcms_city` VALUES ('153','11','鹤壁','2','0');
INSERT INTO `espcms_city` VALUES ('154','11','济源','2','0');
INSERT INTO `espcms_city` VALUES ('155','11','焦作','2','0');
INSERT INTO `espcms_city` VALUES ('156','11','南阳','2','0');
INSERT INTO `espcms_city` VALUES ('157','11','平顶山','2','0');
INSERT INTO `espcms_city` VALUES ('158','11','三门峡','2','0');
INSERT INTO `espcms_city` VALUES ('159','11','商丘','2','0');
INSERT INTO `espcms_city` VALUES ('160','11','新乡','2','0');
INSERT INTO `espcms_city` VALUES ('161','11','信阳','2','0');
INSERT INTO `espcms_city` VALUES ('162','11','许昌','2','0');
INSERT INTO `espcms_city` VALUES ('163','11','周口','2','0');
INSERT INTO `espcms_city` VALUES ('164','11','驻马店','2','0');
INSERT INTO `espcms_city` VALUES ('165','11','漯河','2','0');
INSERT INTO `espcms_city` VALUES ('166','11','濮阳','2','0');
INSERT INTO `espcms_city` VALUES ('167','12','哈尔滨','2','0');
INSERT INTO `espcms_city` VALUES ('168','12','大庆','2','0');
INSERT INTO `espcms_city` VALUES ('169','12','大兴安岭','2','0');
INSERT INTO `espcms_city` VALUES ('170','12','鹤岗','2','0');
INSERT INTO `espcms_city` VALUES ('171','12','黑河','2','0');
INSERT INTO `espcms_city` VALUES ('172','12','鸡西','2','0');
INSERT INTO `espcms_city` VALUES ('173','12','佳木斯','2','0');
INSERT INTO `espcms_city` VALUES ('174','12','牡丹江','2','0');
INSERT INTO `espcms_city` VALUES ('175','12','七台河','2','0');
INSERT INTO `espcms_city` VALUES ('176','12','齐齐哈尔','2','0');
INSERT INTO `espcms_city` VALUES ('177','12','双鸭山','2','0');
INSERT INTO `espcms_city` VALUES ('178','12','绥化','2','0');
INSERT INTO `espcms_city` VALUES ('179','12','伊春','2','0');
INSERT INTO `espcms_city` VALUES ('180','13','武汉','2','0');
INSERT INTO `espcms_city` VALUES ('181','13','仙桃','2','0');
INSERT INTO `espcms_city` VALUES ('182','13','鄂州','2','0');
INSERT INTO `espcms_city` VALUES ('183','13','黄冈','2','0');
INSERT INTO `espcms_city` VALUES ('184','13','黄石','2','0');
INSERT INTO `espcms_city` VALUES ('185','13','荆门','2','0');
INSERT INTO `espcms_city` VALUES ('186','13','荆州','2','0');
INSERT INTO `espcms_city` VALUES ('187','13','潜江','2','0');
INSERT INTO `espcms_city` VALUES ('188','13','神农架林区','2','0');
INSERT INTO `espcms_city` VALUES ('189','13','十堰','2','0');
INSERT INTO `espcms_city` VALUES ('190','13','随州','2','0');
INSERT INTO `espcms_city` VALUES ('191','13','天门','2','0');
INSERT INTO `espcms_city` VALUES ('192','13','咸宁','2','0');
INSERT INTO `espcms_city` VALUES ('193','13','襄樊','2','0');
INSERT INTO `espcms_city` VALUES ('194','13','孝感','2','0');
INSERT INTO `espcms_city` VALUES ('195','13','宜昌','2','0');
INSERT INTO `espcms_city` VALUES ('196','13','恩施','2','0');
INSERT INTO `espcms_city` VALUES ('197','14','长沙','2','0');
INSERT INTO `espcms_city` VALUES ('198','14','张家界','2','0');
INSERT INTO `espcms_city` VALUES ('199','14','常德','2','0');
INSERT INTO `espcms_city` VALUES ('200','14','郴州','2','0');
INSERT INTO `espcms_city` VALUES ('201','14','衡阳','2','0');
INSERT INTO `espcms_city` VALUES ('202','14','怀化','2','0');
INSERT INTO `espcms_city` VALUES ('203','14','娄底','2','0');
INSERT INTO `espcms_city` VALUES ('204','14','邵阳','2','0');
INSERT INTO `espcms_city` VALUES ('205','14','湘潭','2','0');
INSERT INTO `espcms_city` VALUES ('206','14','湘西','2','0');
INSERT INTO `espcms_city` VALUES ('207','14','益阳','2','0');
INSERT INTO `espcms_city` VALUES ('208','14','永州','2','0');
INSERT INTO `espcms_city` VALUES ('209','14','岳阳','2','0');
INSERT INTO `espcms_city` VALUES ('210','14','株洲','2','0');
INSERT INTO `espcms_city` VALUES ('211','15','长春','2','0');
INSERT INTO `espcms_city` VALUES ('212','15','吉林','2','0');
INSERT INTO `espcms_city` VALUES ('213','15','白城','2','0');
INSERT INTO `espcms_city` VALUES ('214','15','白山','2','0');
INSERT INTO `espcms_city` VALUES ('215','15','辽源','2','0');
INSERT INTO `espcms_city` VALUES ('216','15','四平','2','0');
INSERT INTO `espcms_city` VALUES ('217','15','松原','2','0');
INSERT INTO `espcms_city` VALUES ('218','15','通化','2','0');
INSERT INTO `espcms_city` VALUES ('219','15','延边','2','0');
INSERT INTO `espcms_city` VALUES ('220','16','南京','2','0');
INSERT INTO `espcms_city` VALUES ('221','16','苏州','2','0');
INSERT INTO `espcms_city` VALUES ('222','16','无锡','2','0');
INSERT INTO `espcms_city` VALUES ('223','16','常州','2','0');
INSERT INTO `espcms_city` VALUES ('224','16','淮安','2','0');
INSERT INTO `espcms_city` VALUES ('225','16','连云港','2','0');
INSERT INTO `espcms_city` VALUES ('226','16','南通','2','0');
INSERT INTO `espcms_city` VALUES ('227','16','宿迁','2','0');
INSERT INTO `espcms_city` VALUES ('228','16','泰州','2','0');
INSERT INTO `espcms_city` VALUES ('229','16','徐州','2','0');
INSERT INTO `espcms_city` VALUES ('230','16','盐城','2','0');
INSERT INTO `espcms_city` VALUES ('231','16','扬州','2','0');
INSERT INTO `espcms_city` VALUES ('232','16','镇江','2','0');
INSERT INTO `espcms_city` VALUES ('233','17','南昌','2','0');
INSERT INTO `espcms_city` VALUES ('234','17','抚州','2','0');
INSERT INTO `espcms_city` VALUES ('235','17','赣州','2','0');
INSERT INTO `espcms_city` VALUES ('236','17','吉安','2','0');
INSERT INTO `espcms_city` VALUES ('237','17','景德镇','2','0');
INSERT INTO `espcms_city` VALUES ('238','17','九江','2','0');
INSERT INTO `espcms_city` VALUES ('239','17','萍乡','2','0');
INSERT INTO `espcms_city` VALUES ('240','17','上饶','2','0');
INSERT INTO `espcms_city` VALUES ('241','17','新余','2','0');
INSERT INTO `espcms_city` VALUES ('242','17','宜春','2','0');
INSERT INTO `espcms_city` VALUES ('243','17','鹰潭','2','0');
INSERT INTO `espcms_city` VALUES ('244','18','沈阳','2','0');
INSERT INTO `espcms_city` VALUES ('245','18','大连','2','0');
INSERT INTO `espcms_city` VALUES ('246','18','鞍山','2','0');
INSERT INTO `espcms_city` VALUES ('247','18','本溪','2','0');
INSERT INTO `espcms_city` VALUES ('248','18','朝阳','2','0');
INSERT INTO `espcms_city` VALUES ('249','18','丹东','2','0');
INSERT INTO `espcms_city` VALUES ('250','18','抚顺','2','0');
INSERT INTO `espcms_city` VALUES ('251','18','阜新','2','0');
INSERT INTO `espcms_city` VALUES ('252','18','葫芦岛','2','0');
INSERT INTO `espcms_city` VALUES ('253','18','锦州','2','0');
INSERT INTO `espcms_city` VALUES ('254','18','辽阳','2','0');
INSERT INTO `espcms_city` VALUES ('255','18','盘锦','2','0');
INSERT INTO `espcms_city` VALUES ('256','18','铁岭','2','0');
INSERT INTO `espcms_city` VALUES ('257','18','营口','2','0');
INSERT INTO `espcms_city` VALUES ('258','19','呼和浩特','2','0');
INSERT INTO `espcms_city` VALUES ('259','19','阿拉善盟','2','0');
INSERT INTO `espcms_city` VALUES ('260','19','巴彦淖尔盟','2','0');
INSERT INTO `espcms_city` VALUES ('261','19','包头','2','0');
INSERT INTO `espcms_city` VALUES ('262','19','赤峰','2','0');
INSERT INTO `espcms_city` VALUES ('263','19','鄂尔多斯','2','0');
INSERT INTO `espcms_city` VALUES ('264','19','呼伦贝尔','2','0');
INSERT INTO `espcms_city` VALUES ('265','19','通辽','2','0');
INSERT INTO `espcms_city` VALUES ('266','19','乌海','2','0');
INSERT INTO `espcms_city` VALUES ('267','19','乌兰察布市','2','0');
INSERT INTO `espcms_city` VALUES ('268','19','锡林郭勒盟','2','0');
INSERT INTO `espcms_city` VALUES ('269','19','兴安盟','2','0');
INSERT INTO `espcms_city` VALUES ('270','20','银川','2','0');
INSERT INTO `espcms_city` VALUES ('271','20','固原','2','0');
INSERT INTO `espcms_city` VALUES ('272','20','石嘴山','2','0');
INSERT INTO `espcms_city` VALUES ('273','20','吴忠','2','0');
INSERT INTO `espcms_city` VALUES ('274','20','中卫','2','0');
INSERT INTO `espcms_city` VALUES ('275','21','西宁','2','0');
INSERT INTO `espcms_city` VALUES ('276','21','果洛','2','0');
INSERT INTO `espcms_city` VALUES ('277','21','海北','2','0');
INSERT INTO `espcms_city` VALUES ('278','21','海东','2','0');
INSERT INTO `espcms_city` VALUES ('279','21','海南','2','0');
INSERT INTO `espcms_city` VALUES ('280','21','海西','2','0');
INSERT INTO `espcms_city` VALUES ('281','21','黄南','2','0');
INSERT INTO `espcms_city` VALUES ('282','21','玉树','2','0');
INSERT INTO `espcms_city` VALUES ('283','22','济南','2','0');
INSERT INTO `espcms_city` VALUES ('284','22','青岛','2','0');
INSERT INTO `espcms_city` VALUES ('285','22','滨州','2','0');
INSERT INTO `espcms_city` VALUES ('286','22','德州','2','0');
INSERT INTO `espcms_city` VALUES ('287','22','东营','2','0');
INSERT INTO `espcms_city` VALUES ('288','22','菏泽','2','0');
INSERT INTO `espcms_city` VALUES ('289','22','济宁','2','0');
INSERT INTO `espcms_city` VALUES ('290','22','莱芜','2','0');
INSERT INTO `espcms_city` VALUES ('291','22','聊城','2','0');
INSERT INTO `espcms_city` VALUES ('292','22','临沂','2','0');
INSERT INTO `espcms_city` VALUES ('293','22','日照','2','0');
INSERT INTO `espcms_city` VALUES ('294','22','泰安','2','0');
INSERT INTO `espcms_city` VALUES ('295','22','威海','2','0');
INSERT INTO `espcms_city` VALUES ('296','22','潍坊','2','0');
INSERT INTO `espcms_city` VALUES ('297','22','烟台','2','0');
INSERT INTO `espcms_city` VALUES ('298','22','枣庄','2','0');
INSERT INTO `espcms_city` VALUES ('299','22','淄博','2','0');
INSERT INTO `espcms_city` VALUES ('300','23','太原','2','0');
INSERT INTO `espcms_city` VALUES ('301','23','长治','2','0');
INSERT INTO `espcms_city` VALUES ('302','23','大同','2','0');
INSERT INTO `espcms_city` VALUES ('303','23','晋城','2','0');
INSERT INTO `espcms_city` VALUES ('304','23','晋中','2','0');
INSERT INTO `espcms_city` VALUES ('305','23','临汾','2','0');
INSERT INTO `espcms_city` VALUES ('306','23','吕梁','2','0');
INSERT INTO `espcms_city` VALUES ('307','23','朔州','2','0');
INSERT INTO `espcms_city` VALUES ('308','23','忻州','2','0');
INSERT INTO `espcms_city` VALUES ('309','23','阳泉','2','0');
INSERT INTO `espcms_city` VALUES ('310','23','运城','2','0');
INSERT INTO `espcms_city` VALUES ('311','24','西安','2','0');
INSERT INTO `espcms_city` VALUES ('312','24','安康','2','0');
INSERT INTO `espcms_city` VALUES ('313','24','宝鸡','2','0');
INSERT INTO `espcms_city` VALUES ('314','24','汉中','2','0');
INSERT INTO `espcms_city` VALUES ('315','24','商洛','2','0');
INSERT INTO `espcms_city` VALUES ('316','24','铜川','2','0');
INSERT INTO `espcms_city` VALUES ('317','24','渭南','2','0');
INSERT INTO `espcms_city` VALUES ('318','24','咸阳','2','0');
INSERT INTO `espcms_city` VALUES ('319','24','延安','2','0');
INSERT INTO `espcms_city` VALUES ('320','24','榆林','2','0');
INSERT INTO `espcms_city` VALUES ('321','25','上海','2','0');
INSERT INTO `espcms_city` VALUES ('322','26','成都','2','0');
INSERT INTO `espcms_city` VALUES ('323','26','绵阳','2','0');
INSERT INTO `espcms_city` VALUES ('324','26','阿坝','2','0');
INSERT INTO `espcms_city` VALUES ('325','26','巴中','2','0');
INSERT INTO `espcms_city` VALUES ('326','26','达州','2','0');
INSERT INTO `espcms_city` VALUES ('327','26','德阳','2','0');
INSERT INTO `espcms_city` VALUES ('328','26','甘孜','2','0');
INSERT INTO `espcms_city` VALUES ('329','26','广安','2','0');
INSERT INTO `espcms_city` VALUES ('330','26','广元','2','0');
INSERT INTO `espcms_city` VALUES ('331','26','乐山','2','0');
INSERT INTO `espcms_city` VALUES ('332','26','凉山','2','0');
INSERT INTO `espcms_city` VALUES ('333','26','眉山','2','0');
INSERT INTO `espcms_city` VALUES ('334','26','南充','2','0');
INSERT INTO `espcms_city` VALUES ('335','26','内江','2','0');
INSERT INTO `espcms_city` VALUES ('336','26','攀枝花','2','0');
INSERT INTO `espcms_city` VALUES ('337','26','遂宁','2','0');
INSERT INTO `espcms_city` VALUES ('338','26','雅安','2','0');
INSERT INTO `espcms_city` VALUES ('339','26','宜宾','2','0');
INSERT INTO `espcms_city` VALUES ('340','26','资阳','2','0');
INSERT INTO `espcms_city` VALUES ('341','26','自贡','2','0');
INSERT INTO `espcms_city` VALUES ('342','26','泸州','2','0');
INSERT INTO `espcms_city` VALUES ('343','27','天津','2','0');
INSERT INTO `espcms_city` VALUES ('344','28','拉萨','2','0');
INSERT INTO `espcms_city` VALUES ('345','28','阿里','2','0');
INSERT INTO `espcms_city` VALUES ('346','28','昌都','2','0');
INSERT INTO `espcms_city` VALUES ('347','28','林芝','2','0');
INSERT INTO `espcms_city` VALUES ('348','28','那曲','2','0');
INSERT INTO `espcms_city` VALUES ('349','28','日喀则','2','0');
INSERT INTO `espcms_city` VALUES ('350','28','山南','2','0');
INSERT INTO `espcms_city` VALUES ('351','29','乌鲁木齐','2','0');
INSERT INTO `espcms_city` VALUES ('352','29','阿克苏','2','0');
INSERT INTO `espcms_city` VALUES ('353','29','阿拉尔','2','0');
INSERT INTO `espcms_city` VALUES ('354','29','巴音郭楞','2','0');
INSERT INTO `espcms_city` VALUES ('355','29','博尔塔拉','2','0');
INSERT INTO `espcms_city` VALUES ('356','29','昌吉','2','0');
INSERT INTO `espcms_city` VALUES ('357','29','哈密','2','0');
INSERT INTO `espcms_city` VALUES ('358','29','和田','2','0');
INSERT INTO `espcms_city` VALUES ('359','29','喀什','2','0');
INSERT INTO `espcms_city` VALUES ('360','29','克拉玛依','2','0');
INSERT INTO `espcms_city` VALUES ('361','29','克孜勒苏','2','0');
INSERT INTO `espcms_city` VALUES ('362','29','石河子','2','0');
INSERT INTO `espcms_city` VALUES ('363','29','图木舒克','2','0');
INSERT INTO `espcms_city` VALUES ('364','29','吐鲁番','2','0');
INSERT INTO `espcms_city` VALUES ('365','29','五家渠','2','0');
INSERT INTO `espcms_city` VALUES ('366','29','伊犁','2','0');
INSERT INTO `espcms_city` VALUES ('367','30','昆明','2','0');
INSERT INTO `espcms_city` VALUES ('368','30','怒江','2','0');
INSERT INTO `espcms_city` VALUES ('369','30','普洱','2','0');
INSERT INTO `espcms_city` VALUES ('370','30','丽江','2','0');
INSERT INTO `espcms_city` VALUES ('371','30','保山','2','0');
INSERT INTO `espcms_city` VALUES ('372','30','楚雄','2','0');
INSERT INTO `espcms_city` VALUES ('373','30','大理','2','0');
INSERT INTO `espcms_city` VALUES ('374','30','德宏','2','0');
INSERT INTO `espcms_city` VALUES ('375','30','迪庆','2','0');
INSERT INTO `espcms_city` VALUES ('376','30','红河','2','0');
INSERT INTO `espcms_city` VALUES ('377','30','临沧','2','0');
INSERT INTO `espcms_city` VALUES ('378','30','曲靖','2','0');
INSERT INTO `espcms_city` VALUES ('379','30','文山','2','0');
INSERT INTO `espcms_city` VALUES ('380','30','西双版纳','2','0');
INSERT INTO `espcms_city` VALUES ('381','30','玉溪','2','0');
INSERT INTO `espcms_city` VALUES ('382','30','昭通','2','0');
INSERT INTO `espcms_city` VALUES ('383','31','杭州','2','0');
INSERT INTO `espcms_city` VALUES ('384','31','湖州','2','0');
INSERT INTO `espcms_city` VALUES ('385','31','嘉兴','2','0');
INSERT INTO `espcms_city` VALUES ('386','31','金华','2','0');
INSERT INTO `espcms_city` VALUES ('387','31','丽水','2','0');
INSERT INTO `espcms_city` VALUES ('388','31','宁波','2','0');
INSERT INTO `espcms_city` VALUES ('389','31','绍兴','2','0');
INSERT INTO `espcms_city` VALUES ('390','31','台州','2','0');
INSERT INTO `espcms_city` VALUES ('391','31','温州','2','0');
INSERT INTO `espcms_city` VALUES ('392','31','舟山','2','0');
INSERT INTO `espcms_city` VALUES ('393','31','衢州','2','0');
INSERT INTO `espcms_city` VALUES ('394','32','重庆','2','0');
INSERT INTO `espcms_city` VALUES ('395','33','香港','2','0');
INSERT INTO `espcms_city` VALUES ('396','34','澳门','2','0');
INSERT INTO `espcms_city` VALUES ('397','35','台湾','2','0');
INSERT INTO `espcms_city` VALUES ('398','36','迎江区','3','0');
INSERT INTO `espcms_city` VALUES ('399','36','大观区','3','0');
INSERT INTO `espcms_city` VALUES ('400','36','宜秀区','3','0');
INSERT INTO `espcms_city` VALUES ('401','36','桐城市','3','0');
INSERT INTO `espcms_city` VALUES ('402','36','怀宁县','3','0');
INSERT INTO `espcms_city` VALUES ('403','36','枞阳县','3','0');
INSERT INTO `espcms_city` VALUES ('404','36','潜山县','3','0');
INSERT INTO `espcms_city` VALUES ('405','36','太湖县','3','0');
INSERT INTO `espcms_city` VALUES ('406','36','宿松县','3','0');
INSERT INTO `espcms_city` VALUES ('407','36','望江县','3','0');
INSERT INTO `espcms_city` VALUES ('408','36','岳西县','3','0');
INSERT INTO `espcms_city` VALUES ('409','37','中市区','3','0');
INSERT INTO `espcms_city` VALUES ('410','37','东市区','3','0');
INSERT INTO `espcms_city` VALUES ('411','37','西市区','3','0');
INSERT INTO `espcms_city` VALUES ('412','37','郊区','3','0');
INSERT INTO `espcms_city` VALUES ('413','37','怀远县','3','0');
INSERT INTO `espcms_city` VALUES ('414','37','五河县','3','0');
INSERT INTO `espcms_city` VALUES ('415','37','固镇县','3','0');
INSERT INTO `espcms_city` VALUES ('416','38','居巢区','3','0');
INSERT INTO `espcms_city` VALUES ('417','38','庐江县','3','0');
INSERT INTO `espcms_city` VALUES ('418','38','无为县','3','0');
INSERT INTO `espcms_city` VALUES ('419','38','含山县','3','0');
INSERT INTO `espcms_city` VALUES ('420','38','和县','3','0');
INSERT INTO `espcms_city` VALUES ('421','39','贵池区','3','0');
INSERT INTO `espcms_city` VALUES ('422','39','东至县','3','0');
INSERT INTO `espcms_city` VALUES ('423','39','石台县','3','0');
INSERT INTO `espcms_city` VALUES ('424','39','青阳县','3','0');
INSERT INTO `espcms_city` VALUES ('425','40','琅琊区','3','0');
INSERT INTO `espcms_city` VALUES ('426','40','南谯区','3','0');
INSERT INTO `espcms_city` VALUES ('427','40','天长市','3','0');
INSERT INTO `espcms_city` VALUES ('428','40','明光市','3','0');
INSERT INTO `espcms_city` VALUES ('429','40','来安县','3','0');
INSERT INTO `espcms_city` VALUES ('430','40','全椒县','3','0');
INSERT INTO `espcms_city` VALUES ('431','40','定远县','3','0');
INSERT INTO `espcms_city` VALUES ('432','40','凤阳县','3','0');
INSERT INTO `espcms_city` VALUES ('433','41','蚌山区','3','0');
INSERT INTO `espcms_city` VALUES ('434','41','龙子湖区','3','0');
INSERT INTO `espcms_city` VALUES ('435','41','禹会区','3','0');
INSERT INTO `espcms_city` VALUES ('436','41','淮上区','3','0');
INSERT INTO `espcms_city` VALUES ('437','41','颍州区','3','0');
INSERT INTO `espcms_city` VALUES ('438','41','颍东区','3','0');
INSERT INTO `espcms_city` VALUES ('439','41','颍泉区','3','0');
INSERT INTO `espcms_city` VALUES ('440','41','界首市','3','0');
INSERT INTO `espcms_city` VALUES ('441','41','临泉县','3','0');
INSERT INTO `espcms_city` VALUES ('442','41','太和县','3','0');
INSERT INTO `espcms_city` VALUES ('443','41','阜南县','3','0');
INSERT INTO `espcms_city` VALUES ('444','41','颖上县','3','0');
INSERT INTO `espcms_city` VALUES ('445','42','相山区','3','0');
INSERT INTO `espcms_city` VALUES ('446','42','杜集区','3','0');
INSERT INTO `espcms_city` VALUES ('447','42','烈山区','3','0');
INSERT INTO `espcms_city` VALUES ('448','42','濉溪县','3','0');
INSERT INTO `espcms_city` VALUES ('449','43','田家庵区','3','0');
INSERT INTO `espcms_city` VALUES ('450','43','大通区','3','0');
INSERT INTO `espcms_city` VALUES ('451','43','谢家集区','3','0');
INSERT INTO `espcms_city` VALUES ('452','43','八公山区','3','0');
INSERT INTO `espcms_city` VALUES ('453','43','潘集区','3','0');
INSERT INTO `espcms_city` VALUES ('454','43','凤台县','3','0');
INSERT INTO `espcms_city` VALUES ('455','44','屯溪区','3','0');
INSERT INTO `espcms_city` VALUES ('456','44','黄山区','3','0');
INSERT INTO `espcms_city` VALUES ('457','44','徽州区','3','0');
INSERT INTO `espcms_city` VALUES ('458','44','歙县','3','0');
INSERT INTO `espcms_city` VALUES ('459','44','休宁县','3','0');
INSERT INTO `espcms_city` VALUES ('460','44','黟县','3','0');
INSERT INTO `espcms_city` VALUES ('461','44','祁门县','3','0');
INSERT INTO `espcms_city` VALUES ('462','45','金安区','3','0');
INSERT INTO `espcms_city` VALUES ('463','45','裕安区','3','0');
INSERT INTO `espcms_city` VALUES ('464','45','寿县','3','0');
INSERT INTO `espcms_city` VALUES ('465','45','霍邱县','3','0');
INSERT INTO `espcms_city` VALUES ('466','45','舒城县','3','0');
INSERT INTO `espcms_city` VALUES ('467','45','金寨县','3','0');
INSERT INTO `espcms_city` VALUES ('468','45','霍山县','3','0');
INSERT INTO `espcms_city` VALUES ('469','46','雨山区','3','0');
INSERT INTO `espcms_city` VALUES ('470','46','花山区','3','0');
INSERT INTO `espcms_city` VALUES ('471','46','金家庄区','3','0');
INSERT INTO `espcms_city` VALUES ('472','46','当涂县','3','0');
INSERT INTO `espcms_city` VALUES ('473','47','埇桥区','3','0');
INSERT INTO `espcms_city` VALUES ('474','47','砀山县','3','0');
INSERT INTO `espcms_city` VALUES ('475','47','萧县','3','0');
INSERT INTO `espcms_city` VALUES ('476','47','灵璧县','3','0');
INSERT INTO `espcms_city` VALUES ('477','47','泗县','3','0');
INSERT INTO `espcms_city` VALUES ('478','48','铜官山区','3','0');
INSERT INTO `espcms_city` VALUES ('479','48','狮子山区','3','0');
INSERT INTO `espcms_city` VALUES ('480','48','郊区','3','0');
INSERT INTO `espcms_city` VALUES ('481','48','铜陵县','3','0');
INSERT INTO `espcms_city` VALUES ('482','49','镜湖区','3','0');
INSERT INTO `espcms_city` VALUES ('483','49','弋江区','3','0');
INSERT INTO `espcms_city` VALUES ('484','49','鸠江区','3','0');
INSERT INTO `espcms_city` VALUES ('485','49','三山区','3','0');
INSERT INTO `espcms_city` VALUES ('486','49','芜湖县','3','0');
INSERT INTO `espcms_city` VALUES ('487','49','繁昌县','3','0');
INSERT INTO `espcms_city` VALUES ('488','49','南陵县','3','0');
INSERT INTO `espcms_city` VALUES ('489','50','宣州区','3','0');
INSERT INTO `espcms_city` VALUES ('490','50','宁国市','3','0');
INSERT INTO `espcms_city` VALUES ('491','50','郎溪县','3','0');
INSERT INTO `espcms_city` VALUES ('492','50','广德县','3','0');
INSERT INTO `espcms_city` VALUES ('493','50','泾县','3','0');
INSERT INTO `espcms_city` VALUES ('494','50','绩溪县','3','0');
INSERT INTO `espcms_city` VALUES ('495','50','旌德县','3','0');
INSERT INTO `espcms_city` VALUES ('496','51','涡阳县','3','0');
INSERT INTO `espcms_city` VALUES ('497','51','蒙城县','3','0');
INSERT INTO `espcms_city` VALUES ('498','51','利辛县','3','0');
INSERT INTO `espcms_city` VALUES ('499','51','谯城区','3','0');
INSERT INTO `espcms_city` VALUES ('500','52','东城区','3','0');
INSERT INTO `espcms_city` VALUES ('501','52','西城区','3','0');
INSERT INTO `espcms_city` VALUES ('502','52','海淀区','3','0');
INSERT INTO `espcms_city` VALUES ('503','52','朝阳区','3','0');
INSERT INTO `espcms_city` VALUES ('504','52','崇文区','3','0');
INSERT INTO `espcms_city` VALUES ('505','52','宣武区','3','0');
INSERT INTO `espcms_city` VALUES ('506','52','丰台区','3','0');
INSERT INTO `espcms_city` VALUES ('507','52','石景山区','3','0');
INSERT INTO `espcms_city` VALUES ('508','52','房山区','3','0');
INSERT INTO `espcms_city` VALUES ('509','52','门头沟区','3','0');
INSERT INTO `espcms_city` VALUES ('510','52','通州区','3','0');
INSERT INTO `espcms_city` VALUES ('511','52','顺义区','3','0');
INSERT INTO `espcms_city` VALUES ('512','52','昌平区','3','0');
INSERT INTO `espcms_city` VALUES ('513','52','怀柔区','3','0');
INSERT INTO `espcms_city` VALUES ('514','52','平谷区','3','0');
INSERT INTO `espcms_city` VALUES ('515','52','大兴区','3','0');
INSERT INTO `espcms_city` VALUES ('516','52','密云县','3','0');
INSERT INTO `espcms_city` VALUES ('517','52','延庆县','3','0');
INSERT INTO `espcms_city` VALUES ('518','53','鼓楼区','3','0');
INSERT INTO `espcms_city` VALUES ('519','53','台江区','3','0');
INSERT INTO `espcms_city` VALUES ('520','53','仓山区','3','0');
INSERT INTO `espcms_city` VALUES ('521','53','马尾区','3','0');
INSERT INTO `espcms_city` VALUES ('522','53','晋安区','3','0');
INSERT INTO `espcms_city` VALUES ('523','53','福清市','3','0');
INSERT INTO `espcms_city` VALUES ('524','53','长乐市','3','0');
INSERT INTO `espcms_city` VALUES ('525','53','闽侯县','3','0');
INSERT INTO `espcms_city` VALUES ('526','53','连江县','3','0');
INSERT INTO `espcms_city` VALUES ('527','53','罗源县','3','0');
INSERT INTO `espcms_city` VALUES ('528','53','闽清县','3','0');
INSERT INTO `espcms_city` VALUES ('529','53','永泰县','3','0');
INSERT INTO `espcms_city` VALUES ('530','53','平潭县','3','0');
INSERT INTO `espcms_city` VALUES ('531','54','新罗区','3','0');
INSERT INTO `espcms_city` VALUES ('532','54','漳平市','3','0');
INSERT INTO `espcms_city` VALUES ('533','54','长汀县','3','0');
INSERT INTO `espcms_city` VALUES ('534','54','永定县','3','0');
INSERT INTO `espcms_city` VALUES ('535','54','上杭县','3','0');
INSERT INTO `espcms_city` VALUES ('536','54','武平县','3','0');
INSERT INTO `espcms_city` VALUES ('537','54','连城县','3','0');
INSERT INTO `espcms_city` VALUES ('538','55','延平区','3','0');
INSERT INTO `espcms_city` VALUES ('539','55','邵武市','3','0');
INSERT INTO `espcms_city` VALUES ('540','55','武夷山市','3','0');
INSERT INTO `espcms_city` VALUES ('541','55','建瓯市','3','0');
INSERT INTO `espcms_city` VALUES ('542','55','建阳市','3','0');
INSERT INTO `espcms_city` VALUES ('543','55','顺昌县','3','0');
INSERT INTO `espcms_city` VALUES ('544','55','浦城县','3','0');
INSERT INTO `espcms_city` VALUES ('545','55','光泽县','3','0');
INSERT INTO `espcms_city` VALUES ('546','55','松溪县','3','0');
INSERT INTO `espcms_city` VALUES ('547','55','政和县','3','0');
INSERT INTO `espcms_city` VALUES ('548','56','蕉城区','3','0');
INSERT INTO `espcms_city` VALUES ('549','56','福安市','3','0');
INSERT INTO `espcms_city` VALUES ('550','56','福鼎市','3','0');
INSERT INTO `espcms_city` VALUES ('551','56','霞浦县','3','0');
INSERT INTO `espcms_city` VALUES ('552','56','古田县','3','0');
INSERT INTO `espcms_city` VALUES ('553','56','屏南县','3','0');
INSERT INTO `espcms_city` VALUES ('554','56','寿宁县','3','0');
INSERT INTO `espcms_city` VALUES ('555','56','周宁县','3','0');
INSERT INTO `espcms_city` VALUES ('556','56','柘荣县','3','0');
INSERT INTO `espcms_city` VALUES ('557','57','城厢区','3','0');
INSERT INTO `espcms_city` VALUES ('558','57','涵江区','3','0');
INSERT INTO `espcms_city` VALUES ('559','57','荔城区','3','0');
INSERT INTO `espcms_city` VALUES ('560','57','秀屿区','3','0');
INSERT INTO `espcms_city` VALUES ('561','57','仙游县','3','0');
INSERT INTO `espcms_city` VALUES ('562','58','鲤城区','3','0');
INSERT INTO `espcms_city` VALUES ('563','58','丰泽区','3','0');
INSERT INTO `espcms_city` VALUES ('564','58','洛江区','3','0');
INSERT INTO `espcms_city` VALUES ('565','58','清濛开发区','3','0');
INSERT INTO `espcms_city` VALUES ('566','58','泉港区','3','0');
INSERT INTO `espcms_city` VALUES ('567','58','石狮市','3','0');
INSERT INTO `espcms_city` VALUES ('568','58','晋江市','3','0');
INSERT INTO `espcms_city` VALUES ('569','58','南安市','3','0');
INSERT INTO `espcms_city` VALUES ('570','58','惠安县','3','0');
INSERT INTO `espcms_city` VALUES ('571','58','安溪县','3','0');
INSERT INTO `espcms_city` VALUES ('572','58','永春县','3','0');
INSERT INTO `espcms_city` VALUES ('573','58','德化县','3','0');
INSERT INTO `espcms_city` VALUES ('574','58','金门县','3','0');
INSERT INTO `espcms_city` VALUES ('575','59','梅列区','3','0');
INSERT INTO `espcms_city` VALUES ('576','59','三元区','3','0');
INSERT INTO `espcms_city` VALUES ('577','59','永安市','3','0');
INSERT INTO `espcms_city` VALUES ('578','59','明溪县','3','0');
INSERT INTO `espcms_city` VALUES ('579','59','清流县','3','0');
INSERT INTO `espcms_city` VALUES ('580','59','宁化县','3','0');
INSERT INTO `espcms_city` VALUES ('581','59','大田县','3','0');
INSERT INTO `espcms_city` VALUES ('582','59','尤溪县','3','0');
INSERT INTO `espcms_city` VALUES ('583','59','沙县','3','0');
INSERT INTO `espcms_city` VALUES ('584','59','将乐县','3','0');
INSERT INTO `espcms_city` VALUES ('585','59','泰宁县','3','0');
INSERT INTO `espcms_city` VALUES ('586','59','建宁县','3','0');
INSERT INTO `espcms_city` VALUES ('587','60','思明区','3','0');
INSERT INTO `espcms_city` VALUES ('588','60','海沧区','3','0');
INSERT INTO `espcms_city` VALUES ('589','60','湖里区','3','0');
INSERT INTO `espcms_city` VALUES ('590','60','集美区','3','0');
INSERT INTO `espcms_city` VALUES ('591','60','同安区','3','0');
INSERT INTO `espcms_city` VALUES ('592','60','翔安区','3','0');
INSERT INTO `espcms_city` VALUES ('593','61','芗城区','3','0');
INSERT INTO `espcms_city` VALUES ('594','61','龙文区','3','0');
INSERT INTO `espcms_city` VALUES ('595','61','龙海市','3','0');
INSERT INTO `espcms_city` VALUES ('596','61','云霄县','3','0');
INSERT INTO `espcms_city` VALUES ('597','61','漳浦县','3','0');
INSERT INTO `espcms_city` VALUES ('598','61','诏安县','3','0');
INSERT INTO `espcms_city` VALUES ('599','61','长泰县','3','0');
INSERT INTO `espcms_city` VALUES ('600','61','东山县','3','0');
INSERT INTO `espcms_city` VALUES ('601','61','南靖县','3','0');
INSERT INTO `espcms_city` VALUES ('602','61','平和县','3','0');
INSERT INTO `espcms_city` VALUES ('603','61','华安县','3','0');
INSERT INTO `espcms_city` VALUES ('604','62','皋兰县','3','0');
INSERT INTO `espcms_city` VALUES ('605','62','城关区','3','0');
INSERT INTO `espcms_city` VALUES ('606','62','七里河区','3','0');
INSERT INTO `espcms_city` VALUES ('607','62','西固区','3','0');
INSERT INTO `espcms_city` VALUES ('608','62','安宁区','3','0');
INSERT INTO `espcms_city` VALUES ('609','62','红古区','3','0');
INSERT INTO `espcms_city` VALUES ('610','62','永登县','3','0');
INSERT INTO `espcms_city` VALUES ('611','62','榆中县','3','0');
INSERT INTO `espcms_city` VALUES ('612','63','白银区','3','0');
INSERT INTO `espcms_city` VALUES ('613','63','平川区','3','0');
INSERT INTO `espcms_city` VALUES ('614','63','会宁县','3','0');
INSERT INTO `espcms_city` VALUES ('615','63','景泰县','3','0');
INSERT INTO `espcms_city` VALUES ('616','63','靖远县','3','0');
INSERT INTO `espcms_city` VALUES ('617','64','临洮县','3','0');
INSERT INTO `espcms_city` VALUES ('618','64','陇西县','3','0');
INSERT INTO `espcms_city` VALUES ('619','64','通渭县','3','0');
INSERT INTO `espcms_city` VALUES ('620','64','渭源县','3','0');
INSERT INTO `espcms_city` VALUES ('621','64','漳县','3','0');
INSERT INTO `espcms_city` VALUES ('622','64','岷县','3','0');
INSERT INTO `espcms_city` VALUES ('623','64','安定区','3','0');
INSERT INTO `espcms_city` VALUES ('624','64','安定区','3','0');
INSERT INTO `espcms_city` VALUES ('625','65','合作市','3','0');
INSERT INTO `espcms_city` VALUES ('626','65','临潭县','3','0');
INSERT INTO `espcms_city` VALUES ('627','65','卓尼县','3','0');
INSERT INTO `espcms_city` VALUES ('628','65','舟曲县','3','0');
INSERT INTO `espcms_city` VALUES ('629','65','迭部县','3','0');
INSERT INTO `espcms_city` VALUES ('630','65','玛曲县','3','0');
INSERT INTO `espcms_city` VALUES ('631','65','碌曲县','3','0');
INSERT INTO `espcms_city` VALUES ('632','65','夏河县','3','0');
INSERT INTO `espcms_city` VALUES ('633','66','嘉峪关市','3','0');
INSERT INTO `espcms_city` VALUES ('634','67','金川区','3','0');
INSERT INTO `espcms_city` VALUES ('635','67','永昌县','3','0');
INSERT INTO `espcms_city` VALUES ('636','68','肃州区','3','0');
INSERT INTO `espcms_city` VALUES ('637','68','玉门市','3','0');
INSERT INTO `espcms_city` VALUES ('638','68','敦煌市','3','0');
INSERT INTO `espcms_city` VALUES ('639','68','金塔县','3','0');
INSERT INTO `espcms_city` VALUES ('640','68','瓜州县','3','0');
INSERT INTO `espcms_city` VALUES ('641','68','肃北','3','0');
INSERT INTO `espcms_city` VALUES ('642','68','阿克塞','3','0');
INSERT INTO `espcms_city` VALUES ('643','69','临夏市','3','0');
INSERT INTO `espcms_city` VALUES ('644','69','临夏县','3','0');
INSERT INTO `espcms_city` VALUES ('645','69','康乐县','3','0');
INSERT INTO `espcms_city` VALUES ('646','69','永靖县','3','0');
INSERT INTO `espcms_city` VALUES ('647','69','广河县','3','0');
INSERT INTO `espcms_city` VALUES ('648','69','和政县','3','0');
INSERT INTO `espcms_city` VALUES ('649','69','东乡族自治县','3','0');
INSERT INTO `espcms_city` VALUES ('650','69','积石山','3','0');
INSERT INTO `espcms_city` VALUES ('651','70','成县','3','0');
INSERT INTO `espcms_city` VALUES ('652','70','徽县','3','0');
INSERT INTO `espcms_city` VALUES ('653','70','康县','3','0');
INSERT INTO `espcms_city` VALUES ('654','70','礼县','3','0');
INSERT INTO `espcms_city` VALUES ('655','70','两当县','3','0');
INSERT INTO `espcms_city` VALUES ('656','70','文县','3','0');
INSERT INTO `espcms_city` VALUES ('657','70','西和县','3','0');
INSERT INTO `espcms_city` VALUES ('658','70','宕昌县','3','0');
INSERT INTO `espcms_city` VALUES ('659','70','武都区','3','0');
INSERT INTO `espcms_city` VALUES ('660','71','崇信县','3','0');
INSERT INTO `espcms_city` VALUES ('661','71','华亭县','3','0');
INSERT INTO `espcms_city` VALUES ('662','71','静宁县','3','0');
INSERT INTO `espcms_city` VALUES ('663','71','灵台县','3','0');
INSERT INTO `espcms_city` VALUES ('664','71','崆峒区','3','0');
INSERT INTO `espcms_city` VALUES ('665','71','庄浪县','3','0');
INSERT INTO `espcms_city` VALUES ('666','71','泾川县','3','0');
INSERT INTO `espcms_city` VALUES ('667','72','合水县','3','0');
INSERT INTO `espcms_city` VALUES ('668','72','华池县','3','0');
INSERT INTO `espcms_city` VALUES ('669','72','环县','3','0');
INSERT INTO `espcms_city` VALUES ('670','72','宁县','3','0');
INSERT INTO `espcms_city` VALUES ('671','72','庆城县','3','0');
INSERT INTO `espcms_city` VALUES ('672','72','西峰区','3','0');
INSERT INTO `espcms_city` VALUES ('673','72','镇原县','3','0');
INSERT INTO `espcms_city` VALUES ('674','72','正宁县','3','0');
INSERT INTO `espcms_city` VALUES ('675','73','甘谷县','3','0');
INSERT INTO `espcms_city` VALUES ('676','73','秦安县','3','0');
INSERT INTO `espcms_city` VALUES ('677','73','清水县','3','0');
INSERT INTO `espcms_city` VALUES ('678','73','秦州区','3','0');
INSERT INTO `espcms_city` VALUES ('679','73','麦积区','3','0');
INSERT INTO `espcms_city` VALUES ('680','73','武山县','3','0');
INSERT INTO `espcms_city` VALUES ('681','73','张家川','3','0');
INSERT INTO `espcms_city` VALUES ('682','74','古浪县','3','0');
INSERT INTO `espcms_city` VALUES ('683','74','民勤县','3','0');
INSERT INTO `espcms_city` VALUES ('684','74','天祝','3','0');
INSERT INTO `espcms_city` VALUES ('685','74','凉州区','3','0');
INSERT INTO `espcms_city` VALUES ('686','75','高台县','3','0');
INSERT INTO `espcms_city` VALUES ('687','75','临泽县','3','0');
INSERT INTO `espcms_city` VALUES ('688','75','民乐县','3','0');
INSERT INTO `espcms_city` VALUES ('689','75','山丹县','3','0');
INSERT INTO `espcms_city` VALUES ('690','75','肃南','3','0');
INSERT INTO `espcms_city` VALUES ('691','75','甘州区','3','0');
INSERT INTO `espcms_city` VALUES ('692','76','从化市','3','0');
INSERT INTO `espcms_city` VALUES ('693','76','天河区','3','0');
INSERT INTO `espcms_city` VALUES ('694','76','东山区','3','0');
INSERT INTO `espcms_city` VALUES ('695','76','白云区','3','0');
INSERT INTO `espcms_city` VALUES ('696','76','海珠区','3','0');
INSERT INTO `espcms_city` VALUES ('697','76','荔湾区','3','0');
INSERT INTO `espcms_city` VALUES ('698','76','越秀区','3','0');
INSERT INTO `espcms_city` VALUES ('699','76','黄埔区','3','0');
INSERT INTO `espcms_city` VALUES ('700','76','番禺区','3','0');
INSERT INTO `espcms_city` VALUES ('701','76','花都区','3','0');
INSERT INTO `espcms_city` VALUES ('702','76','增城区','3','0');
INSERT INTO `espcms_city` VALUES ('703','76','从化区','3','0');
INSERT INTO `espcms_city` VALUES ('704','76','市郊','3','0');
INSERT INTO `espcms_city` VALUES ('705','77','福田区','3','0');
INSERT INTO `espcms_city` VALUES ('706','77','罗湖区','3','0');
INSERT INTO `espcms_city` VALUES ('707','77','南山区','3','0');
INSERT INTO `espcms_city` VALUES ('708','77','宝安区','3','0');
INSERT INTO `espcms_city` VALUES ('709','77','龙岗区','3','0');
INSERT INTO `espcms_city` VALUES ('710','77','盐田区','3','0');
INSERT INTO `espcms_city` VALUES ('711','78','湘桥区','3','0');
INSERT INTO `espcms_city` VALUES ('712','78','潮安县','3','0');
INSERT INTO `espcms_city` VALUES ('713','78','饶平县','3','0');
INSERT INTO `espcms_city` VALUES ('714','79','南城区','3','0');
INSERT INTO `espcms_city` VALUES ('715','79','东城区','3','0');
INSERT INTO `espcms_city` VALUES ('716','79','万江区','3','0');
INSERT INTO `espcms_city` VALUES ('717','79','莞城区','3','0');
INSERT INTO `espcms_city` VALUES ('718','79','石龙镇','3','0');
INSERT INTO `espcms_city` VALUES ('719','79','虎门镇','3','0');
INSERT INTO `espcms_city` VALUES ('720','79','麻涌镇','3','0');
INSERT INTO `espcms_city` VALUES ('721','79','道滘镇','3','0');
INSERT INTO `espcms_city` VALUES ('722','79','石碣镇','3','0');
INSERT INTO `espcms_city` VALUES ('723','79','沙田镇','3','0');
INSERT INTO `espcms_city` VALUES ('724','79','望牛墩镇','3','0');
INSERT INTO `espcms_city` VALUES ('725','79','洪梅镇','3','0');
INSERT INTO `espcms_city` VALUES ('726','79','茶山镇','3','0');
INSERT INTO `espcms_city` VALUES ('727','79','寮步镇','3','0');
INSERT INTO `espcms_city` VALUES ('728','79','大岭山镇','3','0');
INSERT INTO `espcms_city` VALUES ('729','79','大朗镇','3','0');
INSERT INTO `espcms_city` VALUES ('730','79','黄江镇','3','0');
INSERT INTO `espcms_city` VALUES ('731','79','樟木头','3','0');
INSERT INTO `espcms_city` VALUES ('732','79','凤岗镇','3','0');
INSERT INTO `espcms_city` VALUES ('733','79','塘厦镇','3','0');
INSERT INTO `espcms_city` VALUES ('734','79','谢岗镇','3','0');
INSERT INTO `espcms_city` VALUES ('735','79','厚街镇','3','0');
INSERT INTO `espcms_city` VALUES ('736','79','清溪镇','3','0');
INSERT INTO `espcms_city` VALUES ('737','79','常平镇','3','0');
INSERT INTO `espcms_city` VALUES ('738','79','桥头镇','3','0');
INSERT INTO `espcms_city` VALUES ('739','79','横沥镇','3','0');
INSERT INTO `espcms_city` VALUES ('740','79','东坑镇','3','0');
INSERT INTO `espcms_city` VALUES ('741','79','企石镇','3','0');
INSERT INTO `espcms_city` VALUES ('742','79','石排镇','3','0');
INSERT INTO `espcms_city` VALUES ('743','79','长安镇','3','0');
INSERT INTO `espcms_city` VALUES ('744','79','中堂镇','3','0');
INSERT INTO `espcms_city` VALUES ('745','79','高埗镇','3','0');
INSERT INTO `espcms_city` VALUES ('746','80','禅城区','3','0');
INSERT INTO `espcms_city` VALUES ('747','80','南海区','3','0');
INSERT INTO `espcms_city` VALUES ('748','80','顺德区','3','0');
INSERT INTO `espcms_city` VALUES ('749','80','三水区','3','0');
INSERT INTO `espcms_city` VALUES ('750','80','高明区','3','0');
INSERT INTO `espcms_city` VALUES ('751','81','东源县','3','0');
INSERT INTO `espcms_city` VALUES ('752','81','和平县','3','0');
INSERT INTO `espcms_city` VALUES ('753','81','源城区','3','0');
INSERT INTO `espcms_city` VALUES ('754','81','连平县','3','0');
INSERT INTO `espcms_city` VALUES ('755','81','龙川县','3','0');
INSERT INTO `espcms_city` VALUES ('756','81','紫金县','3','0');
INSERT INTO `espcms_city` VALUES ('757','82','惠阳区','3','0');
INSERT INTO `espcms_city` VALUES ('758','82','惠城区','3','0');
INSERT INTO `espcms_city` VALUES ('759','82','大亚湾','3','0');
INSERT INTO `espcms_city` VALUES ('760','82','博罗县','3','0');
INSERT INTO `espcms_city` VALUES ('761','82','惠东县','3','0');
INSERT INTO `espcms_city` VALUES ('762','82','龙门县','3','0');
INSERT INTO `espcms_city` VALUES ('763','83','江海区','3','0');
INSERT INTO `espcms_city` VALUES ('764','83','蓬江区','3','0');
INSERT INTO `espcms_city` VALUES ('765','83','新会区','3','0');
INSERT INTO `espcms_city` VALUES ('766','83','台山市','3','0');
INSERT INTO `espcms_city` VALUES ('767','83','开平市','3','0');
INSERT INTO `espcms_city` VALUES ('768','83','鹤山市','3','0');
INSERT INTO `espcms_city` VALUES ('769','83','恩平市','3','0');
INSERT INTO `espcms_city` VALUES ('770','84','榕城区','3','0');
INSERT INTO `espcms_city` VALUES ('771','84','普宁市','3','0');
INSERT INTO `espcms_city` VALUES ('772','84','揭东县','3','0');
INSERT INTO `espcms_city` VALUES ('773','84','揭西县','3','0');
INSERT INTO `espcms_city` VALUES ('774','84','惠来县','3','0');
INSERT INTO `espcms_city` VALUES ('775','85','茂南区','3','0');
INSERT INTO `espcms_city` VALUES ('776','85','茂港区','3','0');
INSERT INTO `espcms_city` VALUES ('777','85','高州市','3','0');
INSERT INTO `espcms_city` VALUES ('778','85','化州市','3','0');
INSERT INTO `espcms_city` VALUES ('779','85','信宜市','3','0');
INSERT INTO `espcms_city` VALUES ('780','85','电白县','3','0');
INSERT INTO `espcms_city` VALUES ('781','86','梅县','3','0');
INSERT INTO `espcms_city` VALUES ('782','86','梅江区','3','0');
INSERT INTO `espcms_city` VALUES ('783','86','兴宁市','3','0');
INSERT INTO `espcms_city` VALUES ('784','86','大埔县','3','0');
INSERT INTO `espcms_city` VALUES ('785','86','丰顺县','3','0');
INSERT INTO `espcms_city` VALUES ('786','86','五华县','3','0');
INSERT INTO `espcms_city` VALUES ('787','86','平远县','3','0');
INSERT INTO `espcms_city` VALUES ('788','86','蕉岭县','3','0');
INSERT INTO `espcms_city` VALUES ('789','87','清城区','3','0');
INSERT INTO `espcms_city` VALUES ('790','87','英德市','3','0');
INSERT INTO `espcms_city` VALUES ('791','87','连州市','3','0');
INSERT INTO `espcms_city` VALUES ('792','87','佛冈县','3','0');
INSERT INTO `espcms_city` VALUES ('793','87','阳山县','3','0');
INSERT INTO `espcms_city` VALUES ('794','87','清新县','3','0');
INSERT INTO `espcms_city` VALUES ('795','87','连山','3','0');
INSERT INTO `espcms_city` VALUES ('796','87','连南','3','0');
INSERT INTO `espcms_city` VALUES ('797','88','南澳县','3','0');
INSERT INTO `espcms_city` VALUES ('798','88','潮阳区','3','0');
INSERT INTO `espcms_city` VALUES ('799','88','澄海区','3','0');
INSERT INTO `espcms_city` VALUES ('800','88','龙湖区','3','0');
INSERT INTO `espcms_city` VALUES ('801','88','金平区','3','0');
INSERT INTO `espcms_city` VALUES ('802','88','濠江区','3','0');
INSERT INTO `espcms_city` VALUES ('803','88','潮南区','3','0');
INSERT INTO `espcms_city` VALUES ('804','89','城区','3','0');
INSERT INTO `espcms_city` VALUES ('805','89','陆丰市','3','0');
INSERT INTO `espcms_city` VALUES ('806','89','海丰县','3','0');
INSERT INTO `espcms_city` VALUES ('807','89','陆河县','3','0');
INSERT INTO `espcms_city` VALUES ('808','90','曲江县','3','0');
INSERT INTO `espcms_city` VALUES ('809','90','浈江区','3','0');
INSERT INTO `espcms_city` VALUES ('810','90','武江区','3','0');
INSERT INTO `espcms_city` VALUES ('811','90','曲江区','3','0');
INSERT INTO `espcms_city` VALUES ('812','90','乐昌市','3','0');
INSERT INTO `espcms_city` VALUES ('813','90','南雄市','3','0');
INSERT INTO `espcms_city` VALUES ('814','90','始兴县','3','0');
INSERT INTO `espcms_city` VALUES ('815','90','仁化县','3','0');
INSERT INTO `espcms_city` VALUES ('816','90','翁源县','3','0');
INSERT INTO `espcms_city` VALUES ('817','90','新丰县','3','0');
INSERT INTO `espcms_city` VALUES ('818','90','乳源','3','0');
INSERT INTO `espcms_city` VALUES ('819','91','江城区','3','0');
INSERT INTO `espcms_city` VALUES ('820','91','阳春市','3','0');
INSERT INTO `espcms_city` VALUES ('821','91','阳西县','3','0');
INSERT INTO `espcms_city` VALUES ('822','91','阳东县','3','0');
INSERT INTO `espcms_city` VALUES ('823','92','云城区','3','0');
INSERT INTO `espcms_city` VALUES ('824','92','罗定市','3','0');
INSERT INTO `espcms_city` VALUES ('825','92','新兴县','3','0');
INSERT INTO `espcms_city` VALUES ('826','92','郁南县','3','0');
INSERT INTO `espcms_city` VALUES ('827','92','云安县','3','0');
INSERT INTO `espcms_city` VALUES ('828','93','赤坎区','3','0');
INSERT INTO `espcms_city` VALUES ('829','93','霞山区','3','0');
INSERT INTO `espcms_city` VALUES ('830','93','坡头区','3','0');
INSERT INTO `espcms_city` VALUES ('831','93','麻章区','3','0');
INSERT INTO `espcms_city` VALUES ('832','93','廉江市','3','0');
INSERT INTO `espcms_city` VALUES ('833','93','雷州市','3','0');
INSERT INTO `espcms_city` VALUES ('834','93','吴川市','3','0');
INSERT INTO `espcms_city` VALUES ('835','93','遂溪县','3','0');
INSERT INTO `espcms_city` VALUES ('836','93','徐闻县','3','0');
INSERT INTO `espcms_city` VALUES ('837','94','肇庆市','3','0');
INSERT INTO `espcms_city` VALUES ('838','94','高要市','3','0');
INSERT INTO `espcms_city` VALUES ('839','94','四会市','3','0');
INSERT INTO `espcms_city` VALUES ('840','94','广宁县','3','0');
INSERT INTO `espcms_city` VALUES ('841','94','怀集县','3','0');
INSERT INTO `espcms_city` VALUES ('842','94','封开县','3','0');
INSERT INTO `espcms_city` VALUES ('843','94','德庆县','3','0');
INSERT INTO `espcms_city` VALUES ('844','95','石岐街道','3','0');
INSERT INTO `espcms_city` VALUES ('845','95','东区街道','3','0');
INSERT INTO `espcms_city` VALUES ('846','95','西区街道','3','0');
INSERT INTO `espcms_city` VALUES ('847','95','环城街道','3','0');
INSERT INTO `espcms_city` VALUES ('848','95','中山港街道','3','0');
INSERT INTO `espcms_city` VALUES ('849','95','五桂山街道','3','0');
INSERT INTO `espcms_city` VALUES ('850','96','香洲区','3','0');
INSERT INTO `espcms_city` VALUES ('851','96','斗门区','3','0');
INSERT INTO `espcms_city` VALUES ('852','96','金湾区','3','0');
INSERT INTO `espcms_city` VALUES ('853','97','邕宁区','3','0');
INSERT INTO `espcms_city` VALUES ('854','97','青秀区','3','0');
INSERT INTO `espcms_city` VALUES ('855','97','兴宁区','3','0');
INSERT INTO `espcms_city` VALUES ('856','97','良庆区','3','0');
INSERT INTO `espcms_city` VALUES ('857','97','西乡塘区','3','0');
INSERT INTO `espcms_city` VALUES ('858','97','江南区','3','0');
INSERT INTO `espcms_city` VALUES ('859','97','武鸣县','3','0');
INSERT INTO `espcms_city` VALUES ('860','97','隆安县','3','0');
INSERT INTO `espcms_city` VALUES ('861','97','马山县','3','0');
INSERT INTO `espcms_city` VALUES ('862','97','上林县','3','0');
INSERT INTO `espcms_city` VALUES ('863','97','宾阳县','3','0');
INSERT INTO `espcms_city` VALUES ('864','97','横县','3','0');
INSERT INTO `espcms_city` VALUES ('865','98','秀峰区','3','0');
INSERT INTO `espcms_city` VALUES ('866','98','叠彩区','3','0');
INSERT INTO `espcms_city` VALUES ('867','98','象山区','3','0');
INSERT INTO `espcms_city` VALUES ('868','98','七星区','3','0');
INSERT INTO `espcms_city` VALUES ('869','98','雁山区','3','0');
INSERT INTO `espcms_city` VALUES ('870','98','阳朔县','3','0');
INSERT INTO `espcms_city` VALUES ('871','98','临桂县','3','0');
INSERT INTO `espcms_city` VALUES ('872','98','灵川县','3','0');
INSERT INTO `espcms_city` VALUES ('873','98','全州县','3','0');
INSERT INTO `espcms_city` VALUES ('874','98','平乐县','3','0');
INSERT INTO `espcms_city` VALUES ('875','98','兴安县','3','0');
INSERT INTO `espcms_city` VALUES ('876','98','灌阳县','3','0');
INSERT INTO `espcms_city` VALUES ('877','98','荔浦县','3','0');
INSERT INTO `espcms_city` VALUES ('878','98','资源县','3','0');
INSERT INTO `espcms_city` VALUES ('879','98','永福县','3','0');
INSERT INTO `espcms_city` VALUES ('880','98','龙胜','3','0');
INSERT INTO `espcms_city` VALUES ('881','98','恭城','3','0');
INSERT INTO `espcms_city` VALUES ('882','99','右江区','3','0');
INSERT INTO `espcms_city` VALUES ('883','99','凌云县','3','0');
INSERT INTO `espcms_city` VALUES ('884','99','平果县','3','0');
INSERT INTO `espcms_city` VALUES ('885','99','西林县','3','0');
INSERT INTO `espcms_city` VALUES ('886','99','乐业县','3','0');
INSERT INTO `espcms_city` VALUES ('887','99','德保县','3','0');
INSERT INTO `espcms_city` VALUES ('888','99','田林县','3','0');
INSERT INTO `espcms_city` VALUES ('889','99','田阳县','3','0');
INSERT INTO `espcms_city` VALUES ('890','99','靖西县','3','0');
INSERT INTO `espcms_city` VALUES ('891','99','田东县','3','0');
INSERT INTO `espcms_city` VALUES ('892','99','那坡县','3','0');
INSERT INTO `espcms_city` VALUES ('893','99','隆林','3','0');
INSERT INTO `espcms_city` VALUES ('894','100','海城区','3','0');
INSERT INTO `espcms_city` VALUES ('895','100','银海区','3','0');
INSERT INTO `espcms_city` VALUES ('896','100','铁山港区','3','0');
INSERT INTO `espcms_city` VALUES ('897','100','合浦县','3','0');
INSERT INTO `espcms_city` VALUES ('898','101','江州区','3','0');
INSERT INTO `espcms_city` VALUES ('899','101','凭祥市','3','0');
INSERT INTO `espcms_city` VALUES ('900','101','宁明县','3','0');
INSERT INTO `espcms_city` VALUES ('901','101','扶绥县','3','0');
INSERT INTO `espcms_city` VALUES ('902','101','龙州县','3','0');
INSERT INTO `espcms_city` VALUES ('903','101','大新县','3','0');
INSERT INTO `espcms_city` VALUES ('904','101','天等县','3','0');
INSERT INTO `espcms_city` VALUES ('905','102','港口区','3','0');
INSERT INTO `espcms_city` VALUES ('906','102','防城区','3','0');
INSERT INTO `espcms_city` VALUES ('907','102','东兴市','3','0');
INSERT INTO `espcms_city` VALUES ('908','102','上思县','3','0');
INSERT INTO `espcms_city` VALUES ('909','103','港北区','3','0');
INSERT INTO `espcms_city` VALUES ('910','103','港南区','3','0');
INSERT INTO `espcms_city` VALUES ('911','103','覃塘区','3','0');
INSERT INTO `espcms_city` VALUES ('912','103','桂平市','3','0');
INSERT INTO `espcms_city` VALUES ('913','103','平南县','3','0');
INSERT INTO `espcms_city` VALUES ('914','104','金城江区','3','0');
INSERT INTO `espcms_city` VALUES ('915','104','宜州市','3','0');
INSERT INTO `espcms_city` VALUES ('916','104','天峨县','3','0');
INSERT INTO `espcms_city` VALUES ('917','104','凤山县','3','0');
INSERT INTO `espcms_city` VALUES ('918','104','南丹县','3','0');
INSERT INTO `espcms_city` VALUES ('919','104','东兰县','3','0');
INSERT INTO `espcms_city` VALUES ('920','104','都安','3','0');
INSERT INTO `espcms_city` VALUES ('921','104','罗城','3','0');
INSERT INTO `espcms_city` VALUES ('922','104','巴马','3','0');
INSERT INTO `espcms_city` VALUES ('923','104','环江','3','0');
INSERT INTO `espcms_city` VALUES ('924','104','大化','3','0');
INSERT INTO `espcms_city` VALUES ('925','105','八步区','3','0');
INSERT INTO `espcms_city` VALUES ('926','105','钟山县','3','0');
INSERT INTO `espcms_city` VALUES ('927','105','昭平县','3','0');
INSERT INTO `espcms_city` VALUES ('928','105','富川','3','0');
INSERT INTO `espcms_city` VALUES ('929','106','兴宾区','3','0');
INSERT INTO `espcms_city` VALUES ('930','106','合山市','3','0');
INSERT INTO `espcms_city` VALUES ('931','106','象州县','3','0');
INSERT INTO `espcms_city` VALUES ('932','106','武宣县','3','0');
INSERT INTO `espcms_city` VALUES ('933','106','忻城县','3','0');
INSERT INTO `espcms_city` VALUES ('934','106','金秀','3','0');
INSERT INTO `espcms_city` VALUES ('935','107','城中区','3','0');
INSERT INTO `espcms_city` VALUES ('936','107','鱼峰区','3','0');
INSERT INTO `espcms_city` VALUES ('937','107','柳北区','3','0');
INSERT INTO `espcms_city` VALUES ('938','107','柳南区','3','0');
INSERT INTO `espcms_city` VALUES ('939','107','柳江县','3','0');
INSERT INTO `espcms_city` VALUES ('940','107','柳城县','3','0');
INSERT INTO `espcms_city` VALUES ('941','107','鹿寨县','3','0');
INSERT INTO `espcms_city` VALUES ('942','107','融安县','3','0');
INSERT INTO `espcms_city` VALUES ('943','107','融水','3','0');
INSERT INTO `espcms_city` VALUES ('944','107','三江','3','0');
INSERT INTO `espcms_city` VALUES ('945','108','钦南区','3','0');
INSERT INTO `espcms_city` VALUES ('946','108','钦北区','3','0');
INSERT INTO `espcms_city` VALUES ('947','108','灵山县','3','0');
INSERT INTO `espcms_city` VALUES ('948','108','浦北县','3','0');
INSERT INTO `espcms_city` VALUES ('949','109','万秀区','3','0');
INSERT INTO `espcms_city` VALUES ('950','109','蝶山区','3','0');
INSERT INTO `espcms_city` VALUES ('951','109','长洲区','3','0');
INSERT INTO `espcms_city` VALUES ('952','109','岑溪市','3','0');
INSERT INTO `espcms_city` VALUES ('953','109','苍梧县','3','0');
INSERT INTO `espcms_city` VALUES ('954','109','藤县','3','0');
INSERT INTO `espcms_city` VALUES ('955','109','蒙山县','3','0');
INSERT INTO `espcms_city` VALUES ('956','110','玉州区','3','0');
INSERT INTO `espcms_city` VALUES ('957','110','北流市','3','0');
INSERT INTO `espcms_city` VALUES ('958','110','容县','3','0');
INSERT INTO `espcms_city` VALUES ('959','110','陆川县','3','0');
INSERT INTO `espcms_city` VALUES ('960','110','博白县','3','0');
INSERT INTO `espcms_city` VALUES ('961','110','兴业县','3','0');
INSERT INTO `espcms_city` VALUES ('962','111','南明区','3','0');
INSERT INTO `espcms_city` VALUES ('963','111','云岩区','3','0');
INSERT INTO `espcms_city` VALUES ('964','111','花溪区','3','0');
INSERT INTO `espcms_city` VALUES ('965','111','乌当区','3','0');
INSERT INTO `espcms_city` VALUES ('966','111','白云区','3','0');
INSERT INTO `espcms_city` VALUES ('967','111','小河区','3','0');
INSERT INTO `espcms_city` VALUES ('968','111','金阳新区','3','0');
INSERT INTO `espcms_city` VALUES ('969','111','新天园区','3','0');
INSERT INTO `espcms_city` VALUES ('970','111','清镇市','3','0');
INSERT INTO `espcms_city` VALUES ('971','111','开阳县','3','0');
INSERT INTO `espcms_city` VALUES ('972','111','修文县','3','0');
INSERT INTO `espcms_city` VALUES ('973','111','息烽县','3','0');
INSERT INTO `espcms_city` VALUES ('974','112','西秀区','3','0');
INSERT INTO `espcms_city` VALUES ('975','112','关岭','3','0');
INSERT INTO `espcms_city` VALUES ('976','112','镇宁','3','0');
INSERT INTO `espcms_city` VALUES ('977','112','紫云','3','0');
INSERT INTO `espcms_city` VALUES ('978','112','平坝县','3','0');
INSERT INTO `espcms_city` VALUES ('979','112','普定县','3','0');
INSERT INTO `espcms_city` VALUES ('980','113','毕节市','3','0');
INSERT INTO `espcms_city` VALUES ('981','113','大方县','3','0');
INSERT INTO `espcms_city` VALUES ('982','113','黔西县','3','0');
INSERT INTO `espcms_city` VALUES ('983','113','金沙县','3','0');
INSERT INTO `espcms_city` VALUES ('984','113','织金县','3','0');
INSERT INTO `espcms_city` VALUES ('985','113','纳雍县','3','0');
INSERT INTO `espcms_city` VALUES ('986','113','赫章县','3','0');
INSERT INTO `espcms_city` VALUES ('987','113','威宁','3','0');
INSERT INTO `espcms_city` VALUES ('988','114','钟山区','3','0');
INSERT INTO `espcms_city` VALUES ('989','114','六枝特区','3','0');
INSERT INTO `espcms_city` VALUES ('990','114','水城县','3','0');
INSERT INTO `espcms_city` VALUES ('991','114','盘县','3','0');
INSERT INTO `espcms_city` VALUES ('992','115','凯里市','3','0');
INSERT INTO `espcms_city` VALUES ('993','115','黄平县','3','0');
INSERT INTO `espcms_city` VALUES ('994','115','施秉县','3','0');
INSERT INTO `espcms_city` VALUES ('995','115','三穗县','3','0');
INSERT INTO `espcms_city` VALUES ('996','115','镇远县','3','0');
INSERT INTO `espcms_city` VALUES ('997','115','岑巩县','3','0');
INSERT INTO `espcms_city` VALUES ('998','115','天柱县','3','0');
INSERT INTO `espcms_city` VALUES ('999','115','锦屏县','3','0');
INSERT INTO `espcms_city` VALUES ('1000','115','剑河县','3','0');
INSERT INTO `espcms_city` VALUES ('1001','115','台江县','3','0');
INSERT INTO `espcms_city` VALUES ('1002','115','黎平县','3','0');
INSERT INTO `espcms_city` VALUES ('1003','115','榕江县','3','0');
INSERT INTO `espcms_city` VALUES ('1004','115','从江县','3','0');
INSERT INTO `espcms_city` VALUES ('1005','115','雷山县','3','0');
INSERT INTO `espcms_city` VALUES ('1006','115','麻江县','3','0');
INSERT INTO `espcms_city` VALUES ('1007','115','丹寨县','3','0');
INSERT INTO `espcms_city` VALUES ('1008','116','都匀市','3','0');
INSERT INTO `espcms_city` VALUES ('1009','116','福泉市','3','0');
INSERT INTO `espcms_city` VALUES ('1010','116','荔波县','3','0');
INSERT INTO `espcms_city` VALUES ('1011','116','贵定县','3','0');
INSERT INTO `espcms_city` VALUES ('1012','116','瓮安县','3','0');
INSERT INTO `espcms_city` VALUES ('1013','116','独山县','3','0');
INSERT INTO `espcms_city` VALUES ('1014','116','平塘县','3','0');
INSERT INTO `espcms_city` VALUES ('1015','116','罗甸县','3','0');
INSERT INTO `espcms_city` VALUES ('1016','116','长顺县','3','0');
INSERT INTO `espcms_city` VALUES ('1017','116','龙里县','3','0');
INSERT INTO `espcms_city` VALUES ('1018','116','惠水县','3','0');
INSERT INTO `espcms_city` VALUES ('1019','116','三都','3','0');
INSERT INTO `espcms_city` VALUES ('1020','117','兴义市','3','0');
INSERT INTO `espcms_city` VALUES ('1021','117','兴仁县','3','0');
INSERT INTO `espcms_city` VALUES ('1022','117','普安县','3','0');
INSERT INTO `espcms_city` VALUES ('1023','117','晴隆县','3','0');
INSERT INTO `espcms_city` VALUES ('1024','117','贞丰县','3','0');
INSERT INTO `espcms_city` VALUES ('1025','117','望谟县','3','0');
INSERT INTO `espcms_city` VALUES ('1026','117','册亨县','3','0');
INSERT INTO `espcms_city` VALUES ('1027','117','安龙县','3','0');
INSERT INTO `espcms_city` VALUES ('1028','118','铜仁市','3','0');
INSERT INTO `espcms_city` VALUES ('1029','118','江口县','3','0');
INSERT INTO `espcms_city` VALUES ('1030','118','石阡县','3','0');
INSERT INTO `espcms_city` VALUES ('1031','118','思南县','3','0');
INSERT INTO `espcms_city` VALUES ('1032','118','德江县','3','0');
INSERT INTO `espcms_city` VALUES ('1033','118','玉屏','3','0');
INSERT INTO `espcms_city` VALUES ('1034','118','印江','3','0');
INSERT INTO `espcms_city` VALUES ('1035','118','沿河','3','0');
INSERT INTO `espcms_city` VALUES ('1036','118','松桃','3','0');
INSERT INTO `espcms_city` VALUES ('1037','118','万山特区','3','0');
INSERT INTO `espcms_city` VALUES ('1038','119','红花岗区','3','0');
INSERT INTO `espcms_city` VALUES ('1039','119','务川县','3','0');
INSERT INTO `espcms_city` VALUES ('1040','119','道真县','3','0');
INSERT INTO `espcms_city` VALUES ('1041','119','汇川区','3','0');
INSERT INTO `espcms_city` VALUES ('1042','119','赤水市','3','0');
INSERT INTO `espcms_city` VALUES ('1043','119','仁怀市','3','0');
INSERT INTO `espcms_city` VALUES ('1044','119','遵义县','3','0');
INSERT INTO `espcms_city` VALUES ('1045','119','桐梓县','3','0');
INSERT INTO `espcms_city` VALUES ('1046','119','绥阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1047','119','正安县','3','0');
INSERT INTO `espcms_city` VALUES ('1048','119','凤冈县','3','0');
INSERT INTO `espcms_city` VALUES ('1049','119','湄潭县','3','0');
INSERT INTO `espcms_city` VALUES ('1050','119','余庆县','3','0');
INSERT INTO `espcms_city` VALUES ('1051','119','习水县','3','0');
INSERT INTO `espcms_city` VALUES ('1052','119','道真','3','0');
INSERT INTO `espcms_city` VALUES ('1053','119','务川','3','0');
INSERT INTO `espcms_city` VALUES ('1054','120','秀英区','3','0');
INSERT INTO `espcms_city` VALUES ('1055','120','龙华区','3','0');
INSERT INTO `espcms_city` VALUES ('1056','120','琼山区','3','0');
INSERT INTO `espcms_city` VALUES ('1057','120','美兰区','3','0');
INSERT INTO `espcms_city` VALUES ('1058','137','市区','3','0');
INSERT INTO `espcms_city` VALUES ('1059','137','洋浦开发区','3','0');
INSERT INTO `espcms_city` VALUES ('1060','137','那大镇','3','0');
INSERT INTO `espcms_city` VALUES ('1061','137','王五镇','3','0');
INSERT INTO `espcms_city` VALUES ('1062','137','雅星镇','3','0');
INSERT INTO `espcms_city` VALUES ('1063','137','大成镇','3','0');
INSERT INTO `espcms_city` VALUES ('1064','137','中和镇','3','0');
INSERT INTO `espcms_city` VALUES ('1065','137','峨蔓镇','3','0');
INSERT INTO `espcms_city` VALUES ('1066','137','南丰镇','3','0');
INSERT INTO `espcms_city` VALUES ('1067','137','白马井镇','3','0');
INSERT INTO `espcms_city` VALUES ('1068','137','兰洋镇','3','0');
INSERT INTO `espcms_city` VALUES ('1069','137','和庆镇','3','0');
INSERT INTO `espcms_city` VALUES ('1070','137','海头镇','3','0');
INSERT INTO `espcms_city` VALUES ('1071','137','排浦镇','3','0');
INSERT INTO `espcms_city` VALUES ('1072','137','东成镇','3','0');
INSERT INTO `espcms_city` VALUES ('1073','137','光村镇','3','0');
INSERT INTO `espcms_city` VALUES ('1074','137','木棠镇','3','0');
INSERT INTO `espcms_city` VALUES ('1075','137','新州镇','3','0');
INSERT INTO `espcms_city` VALUES ('1076','137','三都镇','3','0');
INSERT INTO `espcms_city` VALUES ('1077','137','其他','3','0');
INSERT INTO `espcms_city` VALUES ('1078','138','长安区','3','0');
INSERT INTO `espcms_city` VALUES ('1079','138','桥东区','3','0');
INSERT INTO `espcms_city` VALUES ('1080','138','桥西区','3','0');
INSERT INTO `espcms_city` VALUES ('1081','138','新华区','3','0');
INSERT INTO `espcms_city` VALUES ('1082','138','裕华区','3','0');
INSERT INTO `espcms_city` VALUES ('1083','138','井陉矿区','3','0');
INSERT INTO `espcms_city` VALUES ('1084','138','高新区','3','0');
INSERT INTO `espcms_city` VALUES ('1085','138','辛集市','3','0');
INSERT INTO `espcms_city` VALUES ('1086','138','藁城市','3','0');
INSERT INTO `espcms_city` VALUES ('1087','138','晋州市','3','0');
INSERT INTO `espcms_city` VALUES ('1088','138','新乐市','3','0');
INSERT INTO `espcms_city` VALUES ('1089','138','鹿泉市','3','0');
INSERT INTO `espcms_city` VALUES ('1090','138','井陉县','3','0');
INSERT INTO `espcms_city` VALUES ('1091','138','正定县','3','0');
INSERT INTO `espcms_city` VALUES ('1092','138','栾城县','3','0');
INSERT INTO `espcms_city` VALUES ('1093','138','行唐县','3','0');
INSERT INTO `espcms_city` VALUES ('1094','138','灵寿县','3','0');
INSERT INTO `espcms_city` VALUES ('1095','138','高邑县','3','0');
INSERT INTO `espcms_city` VALUES ('1096','138','深泽县','3','0');
INSERT INTO `espcms_city` VALUES ('1097','138','赞皇县','3','0');
INSERT INTO `espcms_city` VALUES ('1098','138','无极县','3','0');
INSERT INTO `espcms_city` VALUES ('1099','138','平山县','3','0');
INSERT INTO `espcms_city` VALUES ('1100','138','元氏县','3','0');
INSERT INTO `espcms_city` VALUES ('1101','138','赵县','3','0');
INSERT INTO `espcms_city` VALUES ('1102','139','新市区','3','0');
INSERT INTO `espcms_city` VALUES ('1103','139','南市区','3','0');
INSERT INTO `espcms_city` VALUES ('1104','139','北市区','3','0');
INSERT INTO `espcms_city` VALUES ('1105','139','涿州市','3','0');
INSERT INTO `espcms_city` VALUES ('1106','139','定州市','3','0');
INSERT INTO `espcms_city` VALUES ('1107','139','安国市','3','0');
INSERT INTO `espcms_city` VALUES ('1108','139','高碑店市','3','0');
INSERT INTO `espcms_city` VALUES ('1109','139','满城县','3','0');
INSERT INTO `espcms_city` VALUES ('1110','139','清苑县','3','0');
INSERT INTO `espcms_city` VALUES ('1111','139','涞水县','3','0');
INSERT INTO `espcms_city` VALUES ('1112','139','阜平县','3','0');
INSERT INTO `espcms_city` VALUES ('1113','139','徐水县','3','0');
INSERT INTO `espcms_city` VALUES ('1114','139','定兴县','3','0');
INSERT INTO `espcms_city` VALUES ('1115','139','唐县','3','0');
INSERT INTO `espcms_city` VALUES ('1116','139','高阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1117','139','容城县','3','0');
INSERT INTO `espcms_city` VALUES ('1118','139','涞源县','3','0');
INSERT INTO `espcms_city` VALUES ('1119','139','望都县','3','0');
INSERT INTO `espcms_city` VALUES ('1120','139','安新县','3','0');
INSERT INTO `espcms_city` VALUES ('1121','139','易县','3','0');
INSERT INTO `espcms_city` VALUES ('1122','139','曲阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1123','139','蠡县','3','0');
INSERT INTO `espcms_city` VALUES ('1124','139','顺平县','3','0');
INSERT INTO `espcms_city` VALUES ('1125','139','博野县','3','0');
INSERT INTO `espcms_city` VALUES ('1126','139','雄县','3','0');
INSERT INTO `espcms_city` VALUES ('1127','140','运河区','3','0');
INSERT INTO `espcms_city` VALUES ('1128','140','新华区','3','0');
INSERT INTO `espcms_city` VALUES ('1129','140','泊头市','3','0');
INSERT INTO `espcms_city` VALUES ('1130','140','任丘市','3','0');
INSERT INTO `espcms_city` VALUES ('1131','140','黄骅市','3','0');
INSERT INTO `espcms_city` VALUES ('1132','140','河间市','3','0');
INSERT INTO `espcms_city` VALUES ('1133','140','沧县','3','0');
INSERT INTO `espcms_city` VALUES ('1134','140','青县','3','0');
INSERT INTO `espcms_city` VALUES ('1135','140','东光县','3','0');
INSERT INTO `espcms_city` VALUES ('1136','140','海兴县','3','0');
INSERT INTO `espcms_city` VALUES ('1137','140','盐山县','3','0');
INSERT INTO `espcms_city` VALUES ('1138','140','肃宁县','3','0');
INSERT INTO `espcms_city` VALUES ('1139','140','南皮县','3','0');
INSERT INTO `espcms_city` VALUES ('1140','140','吴桥县','3','0');
INSERT INTO `espcms_city` VALUES ('1141','140','献县','3','0');
INSERT INTO `espcms_city` VALUES ('1142','140','孟村','3','0');
INSERT INTO `espcms_city` VALUES ('1143','141','双桥区','3','0');
INSERT INTO `espcms_city` VALUES ('1144','141','双滦区','3','0');
INSERT INTO `espcms_city` VALUES ('1145','141','鹰手营子矿区','3','0');
INSERT INTO `espcms_city` VALUES ('1146','141','承德县','3','0');
INSERT INTO `espcms_city` VALUES ('1147','141','兴隆县','3','0');
INSERT INTO `espcms_city` VALUES ('1148','141','平泉县','3','0');
INSERT INTO `espcms_city` VALUES ('1149','141','滦平县','3','0');
INSERT INTO `espcms_city` VALUES ('1150','141','隆化县','3','0');
INSERT INTO `espcms_city` VALUES ('1151','141','丰宁','3','0');
INSERT INTO `espcms_city` VALUES ('1152','141','宽城','3','0');
INSERT INTO `espcms_city` VALUES ('1153','141','围场','3','0');
INSERT INTO `espcms_city` VALUES ('1154','142','从台区','3','0');
INSERT INTO `espcms_city` VALUES ('1155','142','复兴区','3','0');
INSERT INTO `espcms_city` VALUES ('1156','142','邯山区','3','0');
INSERT INTO `espcms_city` VALUES ('1157','142','峰峰矿区','3','0');
INSERT INTO `espcms_city` VALUES ('1158','142','武安市','3','0');
INSERT INTO `espcms_city` VALUES ('1159','142','邯郸县','3','0');
INSERT INTO `espcms_city` VALUES ('1160','142','临漳县','3','0');
INSERT INTO `espcms_city` VALUES ('1161','142','成安县','3','0');
INSERT INTO `espcms_city` VALUES ('1162','142','大名县','3','0');
INSERT INTO `espcms_city` VALUES ('1163','142','涉县','3','0');
INSERT INTO `espcms_city` VALUES ('1164','142','磁县','3','0');
INSERT INTO `espcms_city` VALUES ('1165','142','肥乡县','3','0');
INSERT INTO `espcms_city` VALUES ('1166','142','永年县','3','0');
INSERT INTO `espcms_city` VALUES ('1167','142','邱县','3','0');
INSERT INTO `espcms_city` VALUES ('1168','142','鸡泽县','3','0');
INSERT INTO `espcms_city` VALUES ('1169','142','广平县','3','0');
INSERT INTO `espcms_city` VALUES ('1170','142','馆陶县','3','0');
INSERT INTO `espcms_city` VALUES ('1171','142','魏县','3','0');
INSERT INTO `espcms_city` VALUES ('1172','142','曲周县','3','0');
INSERT INTO `espcms_city` VALUES ('1173','143','桃城区','3','0');
INSERT INTO `espcms_city` VALUES ('1174','143','冀州市','3','0');
INSERT INTO `espcms_city` VALUES ('1175','143','深州市','3','0');
INSERT INTO `espcms_city` VALUES ('1176','143','枣强县','3','0');
INSERT INTO `espcms_city` VALUES ('1177','143','武邑县','3','0');
INSERT INTO `espcms_city` VALUES ('1178','143','武强县','3','0');
INSERT INTO `espcms_city` VALUES ('1179','143','饶阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1180','143','安平县','3','0');
INSERT INTO `espcms_city` VALUES ('1181','143','故城县','3','0');
INSERT INTO `espcms_city` VALUES ('1182','143','景县','3','0');
INSERT INTO `espcms_city` VALUES ('1183','143','阜城县','3','0');
INSERT INTO `espcms_city` VALUES ('1184','144','安次区','3','0');
INSERT INTO `espcms_city` VALUES ('1185','144','广阳区','3','0');
INSERT INTO `espcms_city` VALUES ('1186','144','霸州市','3','0');
INSERT INTO `espcms_city` VALUES ('1187','144','三河市','3','0');
INSERT INTO `espcms_city` VALUES ('1188','144','固安县','3','0');
INSERT INTO `espcms_city` VALUES ('1189','144','永清县','3','0');
INSERT INTO `espcms_city` VALUES ('1190','144','香河县','3','0');
INSERT INTO `espcms_city` VALUES ('1191','144','大城县','3','0');
INSERT INTO `espcms_city` VALUES ('1192','144','文安县','3','0');
INSERT INTO `espcms_city` VALUES ('1193','144','大厂','3','0');
INSERT INTO `espcms_city` VALUES ('1194','145','海港区','3','0');
INSERT INTO `espcms_city` VALUES ('1195','145','山海关区','3','0');
INSERT INTO `espcms_city` VALUES ('1196','145','北戴河区','3','0');
INSERT INTO `espcms_city` VALUES ('1197','145','昌黎县','3','0');
INSERT INTO `espcms_city` VALUES ('1198','145','抚宁县','3','0');
INSERT INTO `espcms_city` VALUES ('1199','145','卢龙县','3','0');
INSERT INTO `espcms_city` VALUES ('1200','145','青龙','3','0');
INSERT INTO `espcms_city` VALUES ('1201','146','路北区','3','0');
INSERT INTO `espcms_city` VALUES ('1202','146','路南区','3','0');
INSERT INTO `espcms_city` VALUES ('1203','146','古冶区','3','0');
INSERT INTO `espcms_city` VALUES ('1204','146','开平区','3','0');
INSERT INTO `espcms_city` VALUES ('1205','146','丰南区','3','0');
INSERT INTO `espcms_city` VALUES ('1206','146','丰润区','3','0');
INSERT INTO `espcms_city` VALUES ('1207','146','遵化市','3','0');
INSERT INTO `espcms_city` VALUES ('1208','146','迁安市','3','0');
INSERT INTO `espcms_city` VALUES ('1209','146','滦县','3','0');
INSERT INTO `espcms_city` VALUES ('1210','146','滦南县','3','0');
INSERT INTO `espcms_city` VALUES ('1211','146','乐亭县','3','0');
INSERT INTO `espcms_city` VALUES ('1212','146','迁西县','3','0');
INSERT INTO `espcms_city` VALUES ('1213','146','玉田县','3','0');
INSERT INTO `espcms_city` VALUES ('1214','146','唐海县','3','0');
INSERT INTO `espcms_city` VALUES ('1215','147','桥东区','3','0');
INSERT INTO `espcms_city` VALUES ('1216','147','桥西区','3','0');
INSERT INTO `espcms_city` VALUES ('1217','147','南宫市','3','0');
INSERT INTO `espcms_city` VALUES ('1218','147','沙河市','3','0');
INSERT INTO `espcms_city` VALUES ('1219','147','邢台县','3','0');
INSERT INTO `espcms_city` VALUES ('1220','147','临城县','3','0');
INSERT INTO `espcms_city` VALUES ('1221','147','内丘县','3','0');
INSERT INTO `espcms_city` VALUES ('1222','147','柏乡县','3','0');
INSERT INTO `espcms_city` VALUES ('1223','147','隆尧县','3','0');
INSERT INTO `espcms_city` VALUES ('1224','147','任县','3','0');
INSERT INTO `espcms_city` VALUES ('1225','147','南和县','3','0');
INSERT INTO `espcms_city` VALUES ('1226','147','宁晋县','3','0');
INSERT INTO `espcms_city` VALUES ('1227','147','巨鹿县','3','0');
INSERT INTO `espcms_city` VALUES ('1228','147','新河县','3','0');
INSERT INTO `espcms_city` VALUES ('1229','147','广宗县','3','0');
INSERT INTO `espcms_city` VALUES ('1230','147','平乡县','3','0');
INSERT INTO `espcms_city` VALUES ('1231','147','威县','3','0');
INSERT INTO `espcms_city` VALUES ('1232','147','清河县','3','0');
INSERT INTO `espcms_city` VALUES ('1233','147','临西县','3','0');
INSERT INTO `espcms_city` VALUES ('1234','148','桥西区','3','0');
INSERT INTO `espcms_city` VALUES ('1235','148','桥东区','3','0');
INSERT INTO `espcms_city` VALUES ('1236','148','宣化区','3','0');
INSERT INTO `espcms_city` VALUES ('1237','148','下花园区','3','0');
INSERT INTO `espcms_city` VALUES ('1238','148','宣化县','3','0');
INSERT INTO `espcms_city` VALUES ('1239','148','张北县','3','0');
INSERT INTO `espcms_city` VALUES ('1240','148','康保县','3','0');
INSERT INTO `espcms_city` VALUES ('1241','148','沽源县','3','0');
INSERT INTO `espcms_city` VALUES ('1242','148','尚义县','3','0');
INSERT INTO `espcms_city` VALUES ('1243','148','蔚县','3','0');
INSERT INTO `espcms_city` VALUES ('1244','148','阳原县','3','0');
INSERT INTO `espcms_city` VALUES ('1245','148','怀安县','3','0');
INSERT INTO `espcms_city` VALUES ('1246','148','万全县','3','0');
INSERT INTO `espcms_city` VALUES ('1247','148','怀来县','3','0');
INSERT INTO `espcms_city` VALUES ('1248','148','涿鹿县','3','0');
INSERT INTO `espcms_city` VALUES ('1249','148','赤城县','3','0');
INSERT INTO `espcms_city` VALUES ('1250','148','崇礼县','3','0');
INSERT INTO `espcms_city` VALUES ('1251','149','金水区','3','0');
INSERT INTO `espcms_city` VALUES ('1252','149','邙山区','3','0');
INSERT INTO `espcms_city` VALUES ('1253','149','二七区','3','0');
INSERT INTO `espcms_city` VALUES ('1254','149','管城区','3','0');
INSERT INTO `espcms_city` VALUES ('1255','149','中原区','3','0');
INSERT INTO `espcms_city` VALUES ('1256','149','上街区','3','0');
INSERT INTO `espcms_city` VALUES ('1257','149','惠济区','3','0');
INSERT INTO `espcms_city` VALUES ('1258','149','郑东新区','3','0');
INSERT INTO `espcms_city` VALUES ('1259','149','经济技术开发区','3','0');
INSERT INTO `espcms_city` VALUES ('1260','149','高新开发区','3','0');
INSERT INTO `espcms_city` VALUES ('1261','149','出口加工区','3','0');
INSERT INTO `espcms_city` VALUES ('1262','149','巩义市','3','0');
INSERT INTO `espcms_city` VALUES ('1263','149','荥阳市','3','0');
INSERT INTO `espcms_city` VALUES ('1264','149','新密市','3','0');
INSERT INTO `espcms_city` VALUES ('1265','149','新郑市','3','0');
INSERT INTO `espcms_city` VALUES ('1266','149','登封市','3','0');
INSERT INTO `espcms_city` VALUES ('1267','149','中牟县','3','0');
INSERT INTO `espcms_city` VALUES ('1268','150','西工区','3','0');
INSERT INTO `espcms_city` VALUES ('1269','150','老城区','3','0');
INSERT INTO `espcms_city` VALUES ('1270','150','涧西区','3','0');
INSERT INTO `espcms_city` VALUES ('1271','150','瀍河回族区','3','0');
INSERT INTO `espcms_city` VALUES ('1272','150','洛龙区','3','0');
INSERT INTO `espcms_city` VALUES ('1273','150','吉利区','3','0');
INSERT INTO `espcms_city` VALUES ('1274','150','偃师市','3','0');
INSERT INTO `espcms_city` VALUES ('1275','150','孟津县','3','0');
INSERT INTO `espcms_city` VALUES ('1276','150','新安县','3','0');
INSERT INTO `espcms_city` VALUES ('1277','150','栾川县','3','0');
INSERT INTO `espcms_city` VALUES ('1278','150','嵩县','3','0');
INSERT INTO `espcms_city` VALUES ('1279','150','汝阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1280','150','宜阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1281','150','洛宁县','3','0');
INSERT INTO `espcms_city` VALUES ('1282','150','伊川县','3','0');
INSERT INTO `espcms_city` VALUES ('1283','151','鼓楼区','3','0');
INSERT INTO `espcms_city` VALUES ('1284','151','龙亭区','3','0');
INSERT INTO `espcms_city` VALUES ('1285','151','顺河回族区','3','0');
INSERT INTO `espcms_city` VALUES ('1286','151','金明区','3','0');
INSERT INTO `espcms_city` VALUES ('1287','151','禹王台区','3','0');
INSERT INTO `espcms_city` VALUES ('1288','151','杞县','3','0');
INSERT INTO `espcms_city` VALUES ('1289','151','通许县','3','0');
INSERT INTO `espcms_city` VALUES ('1290','151','尉氏县','3','0');
INSERT INTO `espcms_city` VALUES ('1291','151','开封县','3','0');
INSERT INTO `espcms_city` VALUES ('1292','151','兰考县','3','0');
INSERT INTO `espcms_city` VALUES ('1293','152','北关区','3','0');
INSERT INTO `espcms_city` VALUES ('1294','152','文峰区','3','0');
INSERT INTO `espcms_city` VALUES ('1295','152','殷都区','3','0');
INSERT INTO `espcms_city` VALUES ('1296','152','龙安区','3','0');
INSERT INTO `espcms_city` VALUES ('1297','152','林州市','3','0');
INSERT INTO `espcms_city` VALUES ('1298','152','安阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1299','152','汤阴县','3','0');
INSERT INTO `espcms_city` VALUES ('1300','152','滑县','3','0');
INSERT INTO `espcms_city` VALUES ('1301','152','内黄县','3','0');
INSERT INTO `espcms_city` VALUES ('1302','153','淇滨区','3','0');
INSERT INTO `espcms_city` VALUES ('1303','153','山城区','3','0');
INSERT INTO `espcms_city` VALUES ('1304','153','鹤山区','3','0');
INSERT INTO `espcms_city` VALUES ('1305','153','浚县','3','0');
INSERT INTO `espcms_city` VALUES ('1306','153','淇县','3','0');
INSERT INTO `espcms_city` VALUES ('1307','154','济源市','3','0');
INSERT INTO `espcms_city` VALUES ('1308','155','解放区','3','0');
INSERT INTO `espcms_city` VALUES ('1309','155','中站区','3','0');
INSERT INTO `espcms_city` VALUES ('1310','155','马村区','3','0');
INSERT INTO `espcms_city` VALUES ('1311','155','山阳区','3','0');
INSERT INTO `espcms_city` VALUES ('1312','155','沁阳市','3','0');
INSERT INTO `espcms_city` VALUES ('1313','155','孟州市','3','0');
INSERT INTO `espcms_city` VALUES ('1314','155','修武县','3','0');
INSERT INTO `espcms_city` VALUES ('1315','155','博爱县','3','0');
INSERT INTO `espcms_city` VALUES ('1316','155','武陟县','3','0');
INSERT INTO `espcms_city` VALUES ('1317','155','温县','3','0');
INSERT INTO `espcms_city` VALUES ('1318','156','卧龙区','3','0');
INSERT INTO `espcms_city` VALUES ('1319','156','宛城区','3','0');
INSERT INTO `espcms_city` VALUES ('1320','156','邓州市','3','0');
INSERT INTO `espcms_city` VALUES ('1321','156','南召县','3','0');
INSERT INTO `espcms_city` VALUES ('1322','156','方城县','3','0');
INSERT INTO `espcms_city` VALUES ('1323','156','西峡县','3','0');
INSERT INTO `espcms_city` VALUES ('1324','156','镇平县','3','0');
INSERT INTO `espcms_city` VALUES ('1325','156','内乡县','3','0');
INSERT INTO `espcms_city` VALUES ('1326','156','淅川县','3','0');
INSERT INTO `espcms_city` VALUES ('1327','156','社旗县','3','0');
INSERT INTO `espcms_city` VALUES ('1328','156','唐河县','3','0');
INSERT INTO `espcms_city` VALUES ('1329','156','新野县','3','0');
INSERT INTO `espcms_city` VALUES ('1330','156','桐柏县','3','0');
INSERT INTO `espcms_city` VALUES ('1331','157','新华区','3','0');
INSERT INTO `espcms_city` VALUES ('1332','157','卫东区','3','0');
INSERT INTO `espcms_city` VALUES ('1333','157','湛河区','3','0');
INSERT INTO `espcms_city` VALUES ('1334','157','石龙区','3','0');
INSERT INTO `espcms_city` VALUES ('1335','157','舞钢市','3','0');
INSERT INTO `espcms_city` VALUES ('1336','157','汝州市','3','0');
INSERT INTO `espcms_city` VALUES ('1337','157','宝丰县','3','0');
INSERT INTO `espcms_city` VALUES ('1338','157','叶县','3','0');
INSERT INTO `espcms_city` VALUES ('1339','157','鲁山县','3','0');
INSERT INTO `espcms_city` VALUES ('1340','157','郏县','3','0');
INSERT INTO `espcms_city` VALUES ('1341','158','湖滨区','3','0');
INSERT INTO `espcms_city` VALUES ('1342','158','义马市','3','0');
INSERT INTO `espcms_city` VALUES ('1343','158','灵宝市','3','0');
INSERT INTO `espcms_city` VALUES ('1344','158','渑池县','3','0');
INSERT INTO `espcms_city` VALUES ('1345','158','陕县','3','0');
INSERT INTO `espcms_city` VALUES ('1346','158','卢氏县','3','0');
INSERT INTO `espcms_city` VALUES ('1347','159','梁园区','3','0');
INSERT INTO `espcms_city` VALUES ('1348','159','睢阳区','3','0');
INSERT INTO `espcms_city` VALUES ('1349','159','永城市','3','0');
INSERT INTO `espcms_city` VALUES ('1350','159','民权县','3','0');
INSERT INTO `espcms_city` VALUES ('1351','159','睢县','3','0');
INSERT INTO `espcms_city` VALUES ('1352','159','宁陵县','3','0');
INSERT INTO `espcms_city` VALUES ('1353','159','虞城县','3','0');
INSERT INTO `espcms_city` VALUES ('1354','159','柘城县','3','0');
INSERT INTO `espcms_city` VALUES ('1355','159','夏邑县','3','0');
INSERT INTO `espcms_city` VALUES ('1356','160','卫滨区','3','0');
INSERT INTO `espcms_city` VALUES ('1357','160','红旗区','3','0');
INSERT INTO `espcms_city` VALUES ('1358','160','凤泉区','3','0');
INSERT INTO `espcms_city` VALUES ('1359','160','牧野区','3','0');
INSERT INTO `espcms_city` VALUES ('1360','160','卫辉市','3','0');
INSERT INTO `espcms_city` VALUES ('1361','160','辉县市','3','0');
INSERT INTO `espcms_city` VALUES ('1362','160','新乡县','3','0');
INSERT INTO `espcms_city` VALUES ('1363','160','获嘉县','3','0');
INSERT INTO `espcms_city` VALUES ('1364','160','原阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1365','160','延津县','3','0');
INSERT INTO `espcms_city` VALUES ('1366','160','封丘县','3','0');
INSERT INTO `espcms_city` VALUES ('1367','160','长垣县','3','0');
INSERT INTO `espcms_city` VALUES ('1368','161','浉河区','3','0');
INSERT INTO `espcms_city` VALUES ('1369','161','平桥区','3','0');
INSERT INTO `espcms_city` VALUES ('1370','161','罗山县','3','0');
INSERT INTO `espcms_city` VALUES ('1371','161','光山县','3','0');
INSERT INTO `espcms_city` VALUES ('1372','161','新县','3','0');
INSERT INTO `espcms_city` VALUES ('1373','161','商城县','3','0');
INSERT INTO `espcms_city` VALUES ('1374','161','固始县','3','0');
INSERT INTO `espcms_city` VALUES ('1375','161','潢川县','3','0');
INSERT INTO `espcms_city` VALUES ('1376','161','淮滨县','3','0');
INSERT INTO `espcms_city` VALUES ('1377','161','息县','3','0');
INSERT INTO `espcms_city` VALUES ('1378','162','魏都区','3','0');
INSERT INTO `espcms_city` VALUES ('1379','162','禹州市','3','0');
INSERT INTO `espcms_city` VALUES ('1380','162','长葛市','3','0');
INSERT INTO `espcms_city` VALUES ('1381','162','许昌县','3','0');
INSERT INTO `espcms_city` VALUES ('1382','162','鄢陵县','3','0');
INSERT INTO `espcms_city` VALUES ('1383','162','襄城县','3','0');
INSERT INTO `espcms_city` VALUES ('1384','163','川汇区','3','0');
INSERT INTO `espcms_city` VALUES ('1385','163','项城市','3','0');
INSERT INTO `espcms_city` VALUES ('1386','163','扶沟县','3','0');
INSERT INTO `espcms_city` VALUES ('1387','163','西华县','3','0');
INSERT INTO `espcms_city` VALUES ('1388','163','商水县','3','0');
INSERT INTO `espcms_city` VALUES ('1389','163','沈丘县','3','0');
INSERT INTO `espcms_city` VALUES ('1390','163','郸城县','3','0');
INSERT INTO `espcms_city` VALUES ('1391','163','淮阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1392','163','太康县','3','0');
INSERT INTO `espcms_city` VALUES ('1393','163','鹿邑县','3','0');
INSERT INTO `espcms_city` VALUES ('1394','164','驿城区','3','0');
INSERT INTO `espcms_city` VALUES ('1395','164','西平县','3','0');
INSERT INTO `espcms_city` VALUES ('1396','164','上蔡县','3','0');
INSERT INTO `espcms_city` VALUES ('1397','164','平舆县','3','0');
INSERT INTO `espcms_city` VALUES ('1398','164','正阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1399','164','确山县','3','0');
INSERT INTO `espcms_city` VALUES ('1400','164','泌阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1401','164','汝南县','3','0');
INSERT INTO `espcms_city` VALUES ('1402','164','遂平县','3','0');
INSERT INTO `espcms_city` VALUES ('1403','164','新蔡县','3','0');
INSERT INTO `espcms_city` VALUES ('1404','165','郾城区','3','0');
INSERT INTO `espcms_city` VALUES ('1405','165','源汇区','3','0');
INSERT INTO `espcms_city` VALUES ('1406','165','召陵区','3','0');
INSERT INTO `espcms_city` VALUES ('1407','165','舞阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1408','165','临颍县','3','0');
INSERT INTO `espcms_city` VALUES ('1409','166','华龙区','3','0');
INSERT INTO `espcms_city` VALUES ('1410','166','清丰县','3','0');
INSERT INTO `espcms_city` VALUES ('1411','166','南乐县','3','0');
INSERT INTO `espcms_city` VALUES ('1412','166','范县','3','0');
INSERT INTO `espcms_city` VALUES ('1413','166','台前县','3','0');
INSERT INTO `espcms_city` VALUES ('1414','166','濮阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1415','167','道里区','3','0');
INSERT INTO `espcms_city` VALUES ('1416','167','南岗区','3','0');
INSERT INTO `espcms_city` VALUES ('1417','167','动力区','3','0');
INSERT INTO `espcms_city` VALUES ('1418','167','平房区','3','0');
INSERT INTO `espcms_city` VALUES ('1419','167','香坊区','3','0');
INSERT INTO `espcms_city` VALUES ('1420','167','太平区','3','0');
INSERT INTO `espcms_city` VALUES ('1421','167','道外区','3','0');
INSERT INTO `espcms_city` VALUES ('1422','167','阿城区','3','0');
INSERT INTO `espcms_city` VALUES ('1423','167','呼兰区','3','0');
INSERT INTO `espcms_city` VALUES ('1424','167','松北区','3','0');
INSERT INTO `espcms_city` VALUES ('1425','167','尚志市','3','0');
INSERT INTO `espcms_city` VALUES ('1426','167','双城市','3','0');
INSERT INTO `espcms_city` VALUES ('1427','167','五常市','3','0');
INSERT INTO `espcms_city` VALUES ('1428','167','方正县','3','0');
INSERT INTO `espcms_city` VALUES ('1429','167','宾县','3','0');
INSERT INTO `espcms_city` VALUES ('1430','167','依兰县','3','0');
INSERT INTO `espcms_city` VALUES ('1431','167','巴彦县','3','0');
INSERT INTO `espcms_city` VALUES ('1432','167','通河县','3','0');
INSERT INTO `espcms_city` VALUES ('1433','167','木兰县','3','0');
INSERT INTO `espcms_city` VALUES ('1434','167','延寿县','3','0');
INSERT INTO `espcms_city` VALUES ('1435','168','萨尔图区','3','0');
INSERT INTO `espcms_city` VALUES ('1436','168','红岗区','3','0');
INSERT INTO `espcms_city` VALUES ('1437','168','龙凤区','3','0');
INSERT INTO `espcms_city` VALUES ('1438','168','让胡路区','3','0');
INSERT INTO `espcms_city` VALUES ('1439','168','大同区','3','0');
INSERT INTO `espcms_city` VALUES ('1440','168','肇州县','3','0');
INSERT INTO `espcms_city` VALUES ('1441','168','肇源县','3','0');
INSERT INTO `espcms_city` VALUES ('1442','168','林甸县','3','0');
INSERT INTO `espcms_city` VALUES ('1443','168','杜尔伯特','3','0');
INSERT INTO `espcms_city` VALUES ('1444','169','呼玛县','3','0');
INSERT INTO `espcms_city` VALUES ('1445','169','漠河县','3','0');
INSERT INTO `espcms_city` VALUES ('1446','169','塔河县','3','0');
INSERT INTO `espcms_city` VALUES ('1447','170','兴山区','3','0');
INSERT INTO `espcms_city` VALUES ('1448','170','工农区','3','0');
INSERT INTO `espcms_city` VALUES ('1449','170','南山区','3','0');
INSERT INTO `espcms_city` VALUES ('1450','170','兴安区','3','0');
INSERT INTO `espcms_city` VALUES ('1451','170','向阳区','3','0');
INSERT INTO `espcms_city` VALUES ('1452','170','东山区','3','0');
INSERT INTO `espcms_city` VALUES ('1453','170','萝北县','3','0');
INSERT INTO `espcms_city` VALUES ('1454','170','绥滨县','3','0');
INSERT INTO `espcms_city` VALUES ('1455','171','爱辉区','3','0');
INSERT INTO `espcms_city` VALUES ('1456','171','五大连池市','3','0');
INSERT INTO `espcms_city` VALUES ('1457','171','北安市','3','0');
INSERT INTO `espcms_city` VALUES ('1458','171','嫩江县','3','0');
INSERT INTO `espcms_city` VALUES ('1459','171','逊克县','3','0');
INSERT INTO `espcms_city` VALUES ('1460','171','孙吴县','3','0');
INSERT INTO `espcms_city` VALUES ('1461','172','鸡冠区','3','0');
INSERT INTO `espcms_city` VALUES ('1462','172','恒山区','3','0');
INSERT INTO `espcms_city` VALUES ('1463','172','城子河区','3','0');
INSERT INTO `espcms_city` VALUES ('1464','172','滴道区','3','0');
INSERT INTO `espcms_city` VALUES ('1465','172','梨树区','3','0');
INSERT INTO `espcms_city` VALUES ('1466','172','虎林市','3','0');
INSERT INTO `espcms_city` VALUES ('1467','172','密山市','3','0');
INSERT INTO `espcms_city` VALUES ('1468','172','鸡东县','3','0');
INSERT INTO `espcms_city` VALUES ('1469','173','前进区','3','0');
INSERT INTO `espcms_city` VALUES ('1470','173','郊区','3','0');
INSERT INTO `espcms_city` VALUES ('1471','173','向阳区','3','0');
INSERT INTO `espcms_city` VALUES ('1472','173','东风区','3','0');
INSERT INTO `espcms_city` VALUES ('1473','173','同江市','3','0');
INSERT INTO `espcms_city` VALUES ('1474','173','富锦市','3','0');
INSERT INTO `espcms_city` VALUES ('1475','173','桦南县','3','0');
INSERT INTO `espcms_city` VALUES ('1476','173','桦川县','3','0');
INSERT INTO `espcms_city` VALUES ('1477','173','汤原县','3','0');
INSERT INTO `espcms_city` VALUES ('1478','173','抚远县','3','0');
INSERT INTO `espcms_city` VALUES ('1479','174','爱民区','3','0');
INSERT INTO `espcms_city` VALUES ('1480','174','东安区','3','0');
INSERT INTO `espcms_city` VALUES ('1481','174','阳明区','3','0');
INSERT INTO `espcms_city` VALUES ('1482','174','西安区','3','0');
INSERT INTO `espcms_city` VALUES ('1483','174','绥芬河市','3','0');
INSERT INTO `espcms_city` VALUES ('1484','174','海林市','3','0');
INSERT INTO `espcms_city` VALUES ('1485','174','宁安市','3','0');
INSERT INTO `espcms_city` VALUES ('1486','174','穆棱市','3','0');
INSERT INTO `espcms_city` VALUES ('1487','174','东宁县','3','0');
INSERT INTO `espcms_city` VALUES ('1488','174','林口县','3','0');
INSERT INTO `espcms_city` VALUES ('1489','175','桃山区','3','0');
INSERT INTO `espcms_city` VALUES ('1490','175','新兴区','3','0');
INSERT INTO `espcms_city` VALUES ('1491','175','茄子河区','3','0');
INSERT INTO `espcms_city` VALUES ('1492','175','勃利县','3','0');
INSERT INTO `espcms_city` VALUES ('1493','176','龙沙区','3','0');
INSERT INTO `espcms_city` VALUES ('1494','176','昂昂溪区','3','0');
INSERT INTO `espcms_city` VALUES ('1495','176','铁峰区','3','0');
INSERT INTO `espcms_city` VALUES ('1496','176','建华区','3','0');
INSERT INTO `espcms_city` VALUES ('1497','176','富拉尔基区','3','0');
INSERT INTO `espcms_city` VALUES ('1498','176','碾子山区','3','0');
INSERT INTO `espcms_city` VALUES ('1499','176','梅里斯达斡尔区','3','0');
INSERT INTO `espcms_city` VALUES ('1500','176','讷河市','3','0');
INSERT INTO `espcms_city` VALUES ('1501','176','龙江县','3','0');
INSERT INTO `espcms_city` VALUES ('1502','176','依安县','3','0');
INSERT INTO `espcms_city` VALUES ('1503','176','泰来县','3','0');
INSERT INTO `espcms_city` VALUES ('1504','176','甘南县','3','0');
INSERT INTO `espcms_city` VALUES ('1505','176','富裕县','3','0');
INSERT INTO `espcms_city` VALUES ('1506','176','克山县','3','0');
INSERT INTO `espcms_city` VALUES ('1507','176','克东县','3','0');
INSERT INTO `espcms_city` VALUES ('1508','176','拜泉县','3','0');
INSERT INTO `espcms_city` VALUES ('1509','177','尖山区','3','0');
INSERT INTO `espcms_city` VALUES ('1510','177','岭东区','3','0');
INSERT INTO `espcms_city` VALUES ('1511','177','四方台区','3','0');
INSERT INTO `espcms_city` VALUES ('1512','177','宝山区','3','0');
INSERT INTO `espcms_city` VALUES ('1513','177','集贤县','3','0');
INSERT INTO `espcms_city` VALUES ('1514','177','友谊县','3','0');
INSERT INTO `espcms_city` VALUES ('1515','177','宝清县','3','0');
INSERT INTO `espcms_city` VALUES ('1516','177','饶河县','3','0');
INSERT INTO `espcms_city` VALUES ('1517','178','北林区','3','0');
INSERT INTO `espcms_city` VALUES ('1518','178','安达市','3','0');
INSERT INTO `espcms_city` VALUES ('1519','178','肇东市','3','0');
INSERT INTO `espcms_city` VALUES ('1520','178','海伦市','3','0');
INSERT INTO `espcms_city` VALUES ('1521','178','望奎县','3','0');
INSERT INTO `espcms_city` VALUES ('1522','178','兰西县','3','0');
INSERT INTO `espcms_city` VALUES ('1523','178','青冈县','3','0');
INSERT INTO `espcms_city` VALUES ('1524','178','庆安县','3','0');
INSERT INTO `espcms_city` VALUES ('1525','178','明水县','3','0');
INSERT INTO `espcms_city` VALUES ('1526','178','绥棱县','3','0');
INSERT INTO `espcms_city` VALUES ('1527','179','伊春区','3','0');
INSERT INTO `espcms_city` VALUES ('1528','179','带岭区','3','0');
INSERT INTO `espcms_city` VALUES ('1529','179','南岔区','3','0');
INSERT INTO `espcms_city` VALUES ('1530','179','金山屯区','3','0');
INSERT INTO `espcms_city` VALUES ('1531','179','西林区','3','0');
INSERT INTO `espcms_city` VALUES ('1532','179','美溪区','3','0');
INSERT INTO `espcms_city` VALUES ('1533','179','乌马河区','3','0');
INSERT INTO `espcms_city` VALUES ('1534','179','翠峦区','3','0');
INSERT INTO `espcms_city` VALUES ('1535','179','友好区','3','0');
INSERT INTO `espcms_city` VALUES ('1536','179','上甘岭区','3','0');
INSERT INTO `espcms_city` VALUES ('1537','179','五营区','3','0');
INSERT INTO `espcms_city` VALUES ('1538','179','红星区','3','0');
INSERT INTO `espcms_city` VALUES ('1539','179','新青区','3','0');
INSERT INTO `espcms_city` VALUES ('1540','179','汤旺河区','3','0');
INSERT INTO `espcms_city` VALUES ('1541','179','乌伊岭区','3','0');
INSERT INTO `espcms_city` VALUES ('1542','179','铁力市','3','0');
INSERT INTO `espcms_city` VALUES ('1543','179','嘉荫县','3','0');
INSERT INTO `espcms_city` VALUES ('1544','180','江岸区','3','0');
INSERT INTO `espcms_city` VALUES ('1545','180','武昌区','3','0');
INSERT INTO `espcms_city` VALUES ('1546','180','江汉区','3','0');
INSERT INTO `espcms_city` VALUES ('1547','180','硚口区','3','0');
INSERT INTO `espcms_city` VALUES ('1548','180','汉阳区','3','0');
INSERT INTO `espcms_city` VALUES ('1549','180','青山区','3','0');
INSERT INTO `espcms_city` VALUES ('1550','180','洪山区','3','0');
INSERT INTO `espcms_city` VALUES ('1551','180','东西湖区','3','0');
INSERT INTO `espcms_city` VALUES ('1552','180','汉南区','3','0');
INSERT INTO `espcms_city` VALUES ('1553','180','蔡甸区','3','0');
INSERT INTO `espcms_city` VALUES ('1554','180','江夏区','3','0');
INSERT INTO `espcms_city` VALUES ('1555','180','黄陂区','3','0');
INSERT INTO `espcms_city` VALUES ('1556','180','新洲区','3','0');
INSERT INTO `espcms_city` VALUES ('1557','180','经济开发区','3','0');
INSERT INTO `espcms_city` VALUES ('1558','181','仙桃市','3','0');
INSERT INTO `espcms_city` VALUES ('1559','182','鄂城区','3','0');
INSERT INTO `espcms_city` VALUES ('1560','182','华容区','3','0');
INSERT INTO `espcms_city` VALUES ('1561','182','梁子湖区','3','0');
INSERT INTO `espcms_city` VALUES ('1562','183','黄州区','3','0');
INSERT INTO `espcms_city` VALUES ('1563','183','麻城市','3','0');
INSERT INTO `espcms_city` VALUES ('1564','183','武穴市','3','0');
INSERT INTO `espcms_city` VALUES ('1565','183','团风县','3','0');
INSERT INTO `espcms_city` VALUES ('1566','183','红安县','3','0');
INSERT INTO `espcms_city` VALUES ('1567','183','罗田县','3','0');
INSERT INTO `espcms_city` VALUES ('1568','183','英山县','3','0');
INSERT INTO `espcms_city` VALUES ('1569','183','浠水县','3','0');
INSERT INTO `espcms_city` VALUES ('1570','183','蕲春县','3','0');
INSERT INTO `espcms_city` VALUES ('1571','183','黄梅县','3','0');
INSERT INTO `espcms_city` VALUES ('1572','184','黄石港区','3','0');
INSERT INTO `espcms_city` VALUES ('1573','184','西塞山区','3','0');
INSERT INTO `espcms_city` VALUES ('1574','184','下陆区','3','0');
INSERT INTO `espcms_city` VALUES ('1575','184','铁山区','3','0');
INSERT INTO `espcms_city` VALUES ('1576','184','大冶市','3','0');
INSERT INTO `espcms_city` VALUES ('1577','184','阳新县','3','0');
INSERT INTO `espcms_city` VALUES ('1578','185','东宝区','3','0');
INSERT INTO `espcms_city` VALUES ('1579','185','掇刀区','3','0');
INSERT INTO `espcms_city` VALUES ('1580','185','钟祥市','3','0');
INSERT INTO `espcms_city` VALUES ('1581','185','京山县','3','0');
INSERT INTO `espcms_city` VALUES ('1582','185','沙洋县','3','0');
INSERT INTO `espcms_city` VALUES ('1583','186','沙市区','3','0');
INSERT INTO `espcms_city` VALUES ('1584','186','荆州区','3','0');
INSERT INTO `espcms_city` VALUES ('1585','186','石首市','3','0');
INSERT INTO `espcms_city` VALUES ('1586','186','洪湖市','3','0');
INSERT INTO `espcms_city` VALUES ('1587','186','松滋市','3','0');
INSERT INTO `espcms_city` VALUES ('1588','186','公安县','3','0');
INSERT INTO `espcms_city` VALUES ('1589','186','监利县','3','0');
INSERT INTO `espcms_city` VALUES ('1590','186','江陵县','3','0');
INSERT INTO `espcms_city` VALUES ('1591','187','潜江市','3','0');
INSERT INTO `espcms_city` VALUES ('1592','188','神农架林区','3','0');
INSERT INTO `espcms_city` VALUES ('1593','189','张湾区','3','0');
INSERT INTO `espcms_city` VALUES ('1594','189','茅箭区','3','0');
INSERT INTO `espcms_city` VALUES ('1595','189','丹江口市','3','0');
INSERT INTO `espcms_city` VALUES ('1596','189','郧县','3','0');
INSERT INTO `espcms_city` VALUES ('1597','189','郧西县','3','0');
INSERT INTO `espcms_city` VALUES ('1598','189','竹山县','3','0');
INSERT INTO `espcms_city` VALUES ('1599','189','竹溪县','3','0');
INSERT INTO `espcms_city` VALUES ('1600','189','房县','3','0');
INSERT INTO `espcms_city` VALUES ('1601','190','曾都区','3','0');
INSERT INTO `espcms_city` VALUES ('1602','190','广水市','3','0');
INSERT INTO `espcms_city` VALUES ('1603','191','天门市','3','0');
INSERT INTO `espcms_city` VALUES ('1604','192','咸安区','3','0');
INSERT INTO `espcms_city` VALUES ('1605','192','赤壁市','3','0');
INSERT INTO `espcms_city` VALUES ('1606','192','嘉鱼县','3','0');
INSERT INTO `espcms_city` VALUES ('1607','192','通城县','3','0');
INSERT INTO `espcms_city` VALUES ('1608','192','崇阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1609','192','通山县','3','0');
INSERT INTO `espcms_city` VALUES ('1610','193','襄城区','3','0');
INSERT INTO `espcms_city` VALUES ('1611','193','樊城区','3','0');
INSERT INTO `espcms_city` VALUES ('1612','193','襄阳区','3','0');
INSERT INTO `espcms_city` VALUES ('1613','193','老河口市','3','0');
INSERT INTO `espcms_city` VALUES ('1614','193','枣阳市','3','0');
INSERT INTO `espcms_city` VALUES ('1615','193','宜城市','3','0');
INSERT INTO `espcms_city` VALUES ('1616','193','南漳县','3','0');
INSERT INTO `espcms_city` VALUES ('1617','193','谷城县','3','0');
INSERT INTO `espcms_city` VALUES ('1618','193','保康县','3','0');
INSERT INTO `espcms_city` VALUES ('1619','194','孝南区','3','0');
INSERT INTO `espcms_city` VALUES ('1620','194','应城市','3','0');
INSERT INTO `espcms_city` VALUES ('1621','194','安陆市','3','0');
INSERT INTO `espcms_city` VALUES ('1622','194','汉川市','3','0');
INSERT INTO `espcms_city` VALUES ('1623','194','孝昌县','3','0');
INSERT INTO `espcms_city` VALUES ('1624','194','大悟县','3','0');
INSERT INTO `espcms_city` VALUES ('1625','194','云梦县','3','0');
INSERT INTO `espcms_city` VALUES ('1626','195','长阳','3','0');
INSERT INTO `espcms_city` VALUES ('1627','195','五峰','3','0');
INSERT INTO `espcms_city` VALUES ('1628','195','西陵区','3','0');
INSERT INTO `espcms_city` VALUES ('1629','195','伍家岗区','3','0');
INSERT INTO `espcms_city` VALUES ('1630','195','点军区','3','0');
INSERT INTO `espcms_city` VALUES ('1631','195','猇亭区','3','0');
INSERT INTO `espcms_city` VALUES ('1632','195','夷陵区','3','0');
INSERT INTO `espcms_city` VALUES ('1633','195','宜都市','3','0');
INSERT INTO `espcms_city` VALUES ('1634','195','当阳市','3','0');
INSERT INTO `espcms_city` VALUES ('1635','195','枝江市','3','0');
INSERT INTO `espcms_city` VALUES ('1636','195','远安县','3','0');
INSERT INTO `espcms_city` VALUES ('1637','195','兴山县','3','0');
INSERT INTO `espcms_city` VALUES ('1638','195','秭归县','3','0');
INSERT INTO `espcms_city` VALUES ('1639','196','恩施市','3','0');
INSERT INTO `espcms_city` VALUES ('1640','196','利川市','3','0');
INSERT INTO `espcms_city` VALUES ('1641','196','建始县','3','0');
INSERT INTO `espcms_city` VALUES ('1642','196','巴东县','3','0');
INSERT INTO `espcms_city` VALUES ('1643','196','宣恩县','3','0');
INSERT INTO `espcms_city` VALUES ('1644','196','咸丰县','3','0');
INSERT INTO `espcms_city` VALUES ('1645','196','来凤县','3','0');
INSERT INTO `espcms_city` VALUES ('1646','196','鹤峰县','3','0');
INSERT INTO `espcms_city` VALUES ('1647','197','岳麓区','3','0');
INSERT INTO `espcms_city` VALUES ('1648','197','芙蓉区','3','0');
INSERT INTO `espcms_city` VALUES ('1649','197','天心区','3','0');
INSERT INTO `espcms_city` VALUES ('1650','197','开福区','3','0');
INSERT INTO `espcms_city` VALUES ('1651','197','雨花区','3','0');
INSERT INTO `espcms_city` VALUES ('1652','197','开发区','3','0');
INSERT INTO `espcms_city` VALUES ('1653','197','浏阳市','3','0');
INSERT INTO `espcms_city` VALUES ('1654','197','长沙县','3','0');
INSERT INTO `espcms_city` VALUES ('1655','197','望城县','3','0');
INSERT INTO `espcms_city` VALUES ('1656','197','宁乡县','3','0');
INSERT INTO `espcms_city` VALUES ('1657','198','永定区','3','0');
INSERT INTO `espcms_city` VALUES ('1658','198','武陵源区','3','0');
INSERT INTO `espcms_city` VALUES ('1659','198','慈利县','3','0');
INSERT INTO `espcms_city` VALUES ('1660','198','桑植县','3','0');
INSERT INTO `espcms_city` VALUES ('1661','199','武陵区','3','0');
INSERT INTO `espcms_city` VALUES ('1662','199','鼎城区','3','0');
INSERT INTO `espcms_city` VALUES ('1663','199','津市市','3','0');
INSERT INTO `espcms_city` VALUES ('1664','199','安乡县','3','0');
INSERT INTO `espcms_city` VALUES ('1665','199','汉寿县','3','0');
INSERT INTO `espcms_city` VALUES ('1666','199','澧县','3','0');
INSERT INTO `espcms_city` VALUES ('1667','199','临澧县','3','0');
INSERT INTO `espcms_city` VALUES ('1668','199','桃源县','3','0');
INSERT INTO `espcms_city` VALUES ('1669','199','石门县','3','0');
INSERT INTO `espcms_city` VALUES ('1670','200','北湖区','3','0');
INSERT INTO `espcms_city` VALUES ('1671','200','苏仙区','3','0');
INSERT INTO `espcms_city` VALUES ('1672','200','资兴市','3','0');
INSERT INTO `espcms_city` VALUES ('1673','200','桂阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1674','200','宜章县','3','0');
INSERT INTO `espcms_city` VALUES ('1675','200','永兴县','3','0');
INSERT INTO `espcms_city` VALUES ('1676','200','嘉禾县','3','0');
INSERT INTO `espcms_city` VALUES ('1677','200','临武县','3','0');
INSERT INTO `espcms_city` VALUES ('1678','200','汝城县','3','0');
INSERT INTO `espcms_city` VALUES ('1679','200','桂东县','3','0');
INSERT INTO `espcms_city` VALUES ('1680','200','安仁县','3','0');
INSERT INTO `espcms_city` VALUES ('1681','201','雁峰区','3','0');
INSERT INTO `espcms_city` VALUES ('1682','201','珠晖区','3','0');
INSERT INTO `espcms_city` VALUES ('1683','201','石鼓区','3','0');
INSERT INTO `espcms_city` VALUES ('1684','201','蒸湘区','3','0');
INSERT INTO `espcms_city` VALUES ('1685','201','南岳区','3','0');
INSERT INTO `espcms_city` VALUES ('1686','201','耒阳市','3','0');
INSERT INTO `espcms_city` VALUES ('1687','201','常宁市','3','0');
INSERT INTO `espcms_city` VALUES ('1688','201','衡阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1689','201','衡南县','3','0');
INSERT INTO `espcms_city` VALUES ('1690','201','衡山县','3','0');
INSERT INTO `espcms_city` VALUES ('1691','201','衡东县','3','0');
INSERT INTO `espcms_city` VALUES ('1692','201','祁东县','3','0');
INSERT INTO `espcms_city` VALUES ('1693','202','鹤城区','3','0');
INSERT INTO `espcms_city` VALUES ('1694','202','靖州','3','0');
INSERT INTO `espcms_city` VALUES ('1695','202','麻阳','3','0');
INSERT INTO `espcms_city` VALUES ('1696','202','通道','3','0');
INSERT INTO `espcms_city` VALUES ('1697','202','新晃','3','0');
INSERT INTO `espcms_city` VALUES ('1698','202','芷江','3','0');
INSERT INTO `espcms_city` VALUES ('1699','202','沅陵县','3','0');
INSERT INTO `espcms_city` VALUES ('1700','202','辰溪县','3','0');
INSERT INTO `espcms_city` VALUES ('1701','202','溆浦县','3','0');
INSERT INTO `espcms_city` VALUES ('1702','202','中方县','3','0');
INSERT INTO `espcms_city` VALUES ('1703','202','会同县','3','0');
INSERT INTO `espcms_city` VALUES ('1704','202','洪江市','3','0');
INSERT INTO `espcms_city` VALUES ('1705','203','娄星区','3','0');
INSERT INTO `espcms_city` VALUES ('1706','203','冷水江市','3','0');
INSERT INTO `espcms_city` VALUES ('1707','203','涟源市','3','0');
INSERT INTO `espcms_city` VALUES ('1708','203','双峰县','3','0');
INSERT INTO `espcms_city` VALUES ('1709','203','新化县','3','0');
INSERT INTO `espcms_city` VALUES ('1710','204','城步','3','0');
INSERT INTO `espcms_city` VALUES ('1711','204','双清区','3','0');
INSERT INTO `espcms_city` VALUES ('1712','204','大祥区','3','0');
INSERT INTO `espcms_city` VALUES ('1713','204','北塔区','3','0');
INSERT INTO `espcms_city` VALUES ('1714','204','武冈市','3','0');
INSERT INTO `espcms_city` VALUES ('1715','204','邵东县','3','0');
INSERT INTO `espcms_city` VALUES ('1716','204','新邵县','3','0');
INSERT INTO `espcms_city` VALUES ('1717','204','邵阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1718','204','隆回县','3','0');
INSERT INTO `espcms_city` VALUES ('1719','204','洞口县','3','0');
INSERT INTO `espcms_city` VALUES ('1720','204','绥宁县','3','0');
INSERT INTO `espcms_city` VALUES ('1721','204','新宁县','3','0');
INSERT INTO `espcms_city` VALUES ('1722','205','岳塘区','3','0');
INSERT INTO `espcms_city` VALUES ('1723','205','雨湖区','3','0');
INSERT INTO `espcms_city` VALUES ('1724','205','湘乡市','3','0');
INSERT INTO `espcms_city` VALUES ('1725','205','韶山市','3','0');
INSERT INTO `espcms_city` VALUES ('1726','205','湘潭县','3','0');
INSERT INTO `espcms_city` VALUES ('1727','206','吉首市','3','0');
INSERT INTO `espcms_city` VALUES ('1728','206','泸溪县','3','0');
INSERT INTO `espcms_city` VALUES ('1729','206','凤凰县','3','0');
INSERT INTO `espcms_city` VALUES ('1730','206','花垣县','3','0');
INSERT INTO `espcms_city` VALUES ('1731','206','保靖县','3','0');
INSERT INTO `espcms_city` VALUES ('1732','206','古丈县','3','0');
INSERT INTO `espcms_city` VALUES ('1733','206','永顺县','3','0');
INSERT INTO `espcms_city` VALUES ('1734','206','龙山县','3','0');
INSERT INTO `espcms_city` VALUES ('1735','207','赫山区','3','0');
INSERT INTO `espcms_city` VALUES ('1736','207','资阳区','3','0');
INSERT INTO `espcms_city` VALUES ('1737','207','沅江市','3','0');
INSERT INTO `espcms_city` VALUES ('1738','207','南县','3','0');
INSERT INTO `espcms_city` VALUES ('1739','207','桃江县','3','0');
INSERT INTO `espcms_city` VALUES ('1740','207','安化县','3','0');
INSERT INTO `espcms_city` VALUES ('1741','208','江华','3','0');
INSERT INTO `espcms_city` VALUES ('1742','208','冷水滩区','3','0');
INSERT INTO `espcms_city` VALUES ('1743','208','零陵区','3','0');
INSERT INTO `espcms_city` VALUES ('1744','208','祁阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1745','208','东安县','3','0');
INSERT INTO `espcms_city` VALUES ('1746','208','双牌县','3','0');
INSERT INTO `espcms_city` VALUES ('1747','208','道县','3','0');
INSERT INTO `espcms_city` VALUES ('1748','208','江永县','3','0');
INSERT INTO `espcms_city` VALUES ('1749','208','宁远县','3','0');
INSERT INTO `espcms_city` VALUES ('1750','208','蓝山县','3','0');
INSERT INTO `espcms_city` VALUES ('1751','208','新田县','3','0');
INSERT INTO `espcms_city` VALUES ('1752','209','岳阳楼区','3','0');
INSERT INTO `espcms_city` VALUES ('1753','209','君山区','3','0');
INSERT INTO `espcms_city` VALUES ('1754','209','云溪区','3','0');
INSERT INTO `espcms_city` VALUES ('1755','209','汨罗市','3','0');
INSERT INTO `espcms_city` VALUES ('1756','209','临湘市','3','0');
INSERT INTO `espcms_city` VALUES ('1757','209','岳阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1758','209','华容县','3','0');
INSERT INTO `espcms_city` VALUES ('1759','209','湘阴县','3','0');
INSERT INTO `espcms_city` VALUES ('1760','209','平江县','3','0');
INSERT INTO `espcms_city` VALUES ('1761','210','天元区','3','0');
INSERT INTO `espcms_city` VALUES ('1762','210','荷塘区','3','0');
INSERT INTO `espcms_city` VALUES ('1763','210','芦淞区','3','0');
INSERT INTO `espcms_city` VALUES ('1764','210','石峰区','3','0');
INSERT INTO `espcms_city` VALUES ('1765','210','醴陵市','3','0');
INSERT INTO `espcms_city` VALUES ('1766','210','株洲县','3','0');
INSERT INTO `espcms_city` VALUES ('1767','210','攸县','3','0');
INSERT INTO `espcms_city` VALUES ('1768','210','茶陵县','3','0');
INSERT INTO `espcms_city` VALUES ('1769','210','炎陵县','3','0');
INSERT INTO `espcms_city` VALUES ('1770','211','朝阳区','3','0');
INSERT INTO `espcms_city` VALUES ('1771','211','宽城区','3','0');
INSERT INTO `espcms_city` VALUES ('1772','211','二道区','3','0');
INSERT INTO `espcms_city` VALUES ('1773','211','南关区','3','0');
INSERT INTO `espcms_city` VALUES ('1774','211','绿园区','3','0');
INSERT INTO `espcms_city` VALUES ('1775','211','双阳区','3','0');
INSERT INTO `espcms_city` VALUES ('1776','211','净月潭开发区','3','0');
INSERT INTO `espcms_city` VALUES ('1777','211','高新技术开发区','3','0');
INSERT INTO `espcms_city` VALUES ('1778','211','经济技术开发区','3','0');
INSERT INTO `espcms_city` VALUES ('1779','211','汽车产业开发区','3','0');
INSERT INTO `espcms_city` VALUES ('1780','211','德惠市','3','0');
INSERT INTO `espcms_city` VALUES ('1781','211','九台市','3','0');
INSERT INTO `espcms_city` VALUES ('1782','211','榆树市','3','0');
INSERT INTO `espcms_city` VALUES ('1783','211','农安县','3','0');
INSERT INTO `espcms_city` VALUES ('1784','212','船营区','3','0');
INSERT INTO `espcms_city` VALUES ('1785','212','昌邑区','3','0');
INSERT INTO `espcms_city` VALUES ('1786','212','龙潭区','3','0');
INSERT INTO `espcms_city` VALUES ('1787','212','丰满区','3','0');
INSERT INTO `espcms_city` VALUES ('1788','212','蛟河市','3','0');
INSERT INTO `espcms_city` VALUES ('1789','212','桦甸市','3','0');
INSERT INTO `espcms_city` VALUES ('1790','212','舒兰市','3','0');
INSERT INTO `espcms_city` VALUES ('1791','212','磐石市','3','0');
INSERT INTO `espcms_city` VALUES ('1792','212','永吉县','3','0');
INSERT INTO `espcms_city` VALUES ('1793','213','洮北区','3','0');
INSERT INTO `espcms_city` VALUES ('1794','213','洮南市','3','0');
INSERT INTO `espcms_city` VALUES ('1795','213','大安市','3','0');
INSERT INTO `espcms_city` VALUES ('1796','213','镇赉县','3','0');
INSERT INTO `espcms_city` VALUES ('1797','213','通榆县','3','0');
INSERT INTO `espcms_city` VALUES ('1798','214','江源区','3','0');
INSERT INTO `espcms_city` VALUES ('1799','214','八道江区','3','0');
INSERT INTO `espcms_city` VALUES ('1800','214','长白','3','0');
INSERT INTO `espcms_city` VALUES ('1801','214','临江市','3','0');
INSERT INTO `espcms_city` VALUES ('1802','214','抚松县','3','0');
INSERT INTO `espcms_city` VALUES ('1803','214','靖宇县','3','0');
INSERT INTO `espcms_city` VALUES ('1804','215','龙山区','3','0');
INSERT INTO `espcms_city` VALUES ('1805','215','西安区','3','0');
INSERT INTO `espcms_city` VALUES ('1806','215','东丰县','3','0');
INSERT INTO `espcms_city` VALUES ('1807','215','东辽县','3','0');
INSERT INTO `espcms_city` VALUES ('1808','216','铁西区','3','0');
INSERT INTO `espcms_city` VALUES ('1809','216','铁东区','3','0');
INSERT INTO `espcms_city` VALUES ('1810','216','伊通','3','0');
INSERT INTO `espcms_city` VALUES ('1811','216','公主岭市','3','0');
INSERT INTO `espcms_city` VALUES ('1812','216','双辽市','3','0');
INSERT INTO `espcms_city` VALUES ('1813','216','梨树县','3','0');
INSERT INTO `espcms_city` VALUES ('1814','217','前郭尔罗斯','3','0');
INSERT INTO `espcms_city` VALUES ('1815','217','宁江区','3','0');
INSERT INTO `espcms_city` VALUES ('1816','217','长岭县','3','0');
INSERT INTO `espcms_city` VALUES ('1817','217','乾安县','3','0');
INSERT INTO `espcms_city` VALUES ('1818','217','扶余县','3','0');
INSERT INTO `espcms_city` VALUES ('1819','218','东昌区','3','0');
INSERT INTO `espcms_city` VALUES ('1820','218','二道江区','3','0');
INSERT INTO `espcms_city` VALUES ('1821','218','梅河口市','3','0');
INSERT INTO `espcms_city` VALUES ('1822','218','集安市','3','0');
INSERT INTO `espcms_city` VALUES ('1823','218','通化县','3','0');
INSERT INTO `espcms_city` VALUES ('1824','218','辉南县','3','0');
INSERT INTO `espcms_city` VALUES ('1825','218','柳河县','3','0');
INSERT INTO `espcms_city` VALUES ('1826','219','延吉市','3','0');
INSERT INTO `espcms_city` VALUES ('1827','219','图们市','3','0');
INSERT INTO `espcms_city` VALUES ('1828','219','敦化市','3','0');
INSERT INTO `espcms_city` VALUES ('1829','219','珲春市','3','0');
INSERT INTO `espcms_city` VALUES ('1830','219','龙井市','3','0');
INSERT INTO `espcms_city` VALUES ('1831','219','和龙市','3','0');
INSERT INTO `espcms_city` VALUES ('1832','219','安图县','3','0');
INSERT INTO `espcms_city` VALUES ('1833','219','汪清县','3','0');
INSERT INTO `espcms_city` VALUES ('1834','220','玄武区','3','0');
INSERT INTO `espcms_city` VALUES ('1835','220','鼓楼区','3','0');
INSERT INTO `espcms_city` VALUES ('1836','220','白下区','3','0');
INSERT INTO `espcms_city` VALUES ('1837','220','建邺区','3','0');
INSERT INTO `espcms_city` VALUES ('1838','220','秦淮区','3','0');
INSERT INTO `espcms_city` VALUES ('1839','220','雨花台区','3','0');
INSERT INTO `espcms_city` VALUES ('1840','220','下关区','3','0');
INSERT INTO `espcms_city` VALUES ('1841','220','栖霞区','3','0');
INSERT INTO `espcms_city` VALUES ('1842','220','浦口区','3','0');
INSERT INTO `espcms_city` VALUES ('1843','220','江宁区','3','0');
INSERT INTO `espcms_city` VALUES ('1844','220','六合区','3','0');
INSERT INTO `espcms_city` VALUES ('1845','220','溧水县','3','0');
INSERT INTO `espcms_city` VALUES ('1846','220','高淳县','3','0');
INSERT INTO `espcms_city` VALUES ('1847','221','沧浪区','3','0');
INSERT INTO `espcms_city` VALUES ('1848','221','金阊区','3','0');
INSERT INTO `espcms_city` VALUES ('1849','221','平江区','3','0');
INSERT INTO `espcms_city` VALUES ('1850','221','虎丘区','3','0');
INSERT INTO `espcms_city` VALUES ('1851','221','吴中区','3','0');
INSERT INTO `espcms_city` VALUES ('1852','221','相城区','3','0');
INSERT INTO `espcms_city` VALUES ('1853','221','园区','3','0');
INSERT INTO `espcms_city` VALUES ('1854','221','新区','3','0');
INSERT INTO `espcms_city` VALUES ('1855','221','常熟市','3','0');
INSERT INTO `espcms_city` VALUES ('1856','221','张家港市','3','0');
INSERT INTO `espcms_city` VALUES ('1857','221','玉山镇','3','0');
INSERT INTO `espcms_city` VALUES ('1858','221','巴城镇','3','0');
INSERT INTO `espcms_city` VALUES ('1859','221','周市镇','3','0');
INSERT INTO `espcms_city` VALUES ('1860','221','陆家镇','3','0');
INSERT INTO `espcms_city` VALUES ('1861','221','花桥镇','3','0');
INSERT INTO `espcms_city` VALUES ('1862','221','淀山湖镇','3','0');
INSERT INTO `espcms_city` VALUES ('1863','221','张浦镇','3','0');
INSERT INTO `espcms_city` VALUES ('1864','221','周庄镇','3','0');
INSERT INTO `espcms_city` VALUES ('1865','221','千灯镇','3','0');
INSERT INTO `espcms_city` VALUES ('1866','221','锦溪镇','3','0');
INSERT INTO `espcms_city` VALUES ('1867','221','开发区','3','0');
INSERT INTO `espcms_city` VALUES ('1868','221','吴江市','3','0');
INSERT INTO `espcms_city` VALUES ('1869','221','太仓市','3','0');
INSERT INTO `espcms_city` VALUES ('1870','222','崇安区','3','0');
INSERT INTO `espcms_city` VALUES ('1871','222','北塘区','3','0');
INSERT INTO `espcms_city` VALUES ('1872','222','南长区','3','0');
INSERT INTO `espcms_city` VALUES ('1873','222','锡山区','3','0');
INSERT INTO `espcms_city` VALUES ('1874','222','惠山区','3','0');
INSERT INTO `espcms_city` VALUES ('1875','222','滨湖区','3','0');
INSERT INTO `espcms_city` VALUES ('1876','222','新区','3','0');
INSERT INTO `espcms_city` VALUES ('1877','222','江阴市','3','0');
INSERT INTO `espcms_city` VALUES ('1878','222','宜兴市','3','0');
INSERT INTO `espcms_city` VALUES ('1879','223','天宁区','3','0');
INSERT INTO `espcms_city` VALUES ('1880','223','钟楼区','3','0');
INSERT INTO `espcms_city` VALUES ('1881','223','戚墅堰区','3','0');
INSERT INTO `espcms_city` VALUES ('1882','223','郊区','3','0');
INSERT INTO `espcms_city` VALUES ('1883','223','新北区','3','0');
INSERT INTO `espcms_city` VALUES ('1884','223','武进区','3','0');
INSERT INTO `espcms_city` VALUES ('1885','223','溧阳市','3','0');
INSERT INTO `espcms_city` VALUES ('1886','223','金坛市','3','0');
INSERT INTO `espcms_city` VALUES ('1887','224','清河区','3','0');
INSERT INTO `espcms_city` VALUES ('1888','224','清浦区','3','0');
INSERT INTO `espcms_city` VALUES ('1889','224','楚州区','3','0');
INSERT INTO `espcms_city` VALUES ('1890','224','淮阴区','3','0');
INSERT INTO `espcms_city` VALUES ('1891','224','涟水县','3','0');
INSERT INTO `espcms_city` VALUES ('1892','224','洪泽县','3','0');
INSERT INTO `espcms_city` VALUES ('1893','224','盱眙县','3','0');
INSERT INTO `espcms_city` VALUES ('1894','224','金湖县','3','0');
INSERT INTO `espcms_city` VALUES ('1895','225','新浦区','3','0');
INSERT INTO `espcms_city` VALUES ('1896','225','连云区','3','0');
INSERT INTO `espcms_city` VALUES ('1897','225','海州区','3','0');
INSERT INTO `espcms_city` VALUES ('1898','225','赣榆县','3','0');
INSERT INTO `espcms_city` VALUES ('1899','225','东海县','3','0');
INSERT INTO `espcms_city` VALUES ('1900','225','灌云县','3','0');
INSERT INTO `espcms_city` VALUES ('1901','225','灌南县','3','0');
INSERT INTO `espcms_city` VALUES ('1902','226','崇川区','3','0');
INSERT INTO `espcms_city` VALUES ('1903','226','港闸区','3','0');
INSERT INTO `espcms_city` VALUES ('1904','226','经济开发区','3','0');
INSERT INTO `espcms_city` VALUES ('1905','226','启东市','3','0');
INSERT INTO `espcms_city` VALUES ('1906','226','如皋市','3','0');
INSERT INTO `espcms_city` VALUES ('1907','226','通州市','3','0');
INSERT INTO `espcms_city` VALUES ('1908','226','海门市','3','0');
INSERT INTO `espcms_city` VALUES ('1909','226','海安县','3','0');
INSERT INTO `espcms_city` VALUES ('1910','226','如东县','3','0');
INSERT INTO `espcms_city` VALUES ('1911','227','宿城区','3','0');
INSERT INTO `espcms_city` VALUES ('1912','227','宿豫区','3','0');
INSERT INTO `espcms_city` VALUES ('1913','227','宿豫县','3','0');
INSERT INTO `espcms_city` VALUES ('1914','227','沭阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1915','227','泗阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1916','227','泗洪县','3','0');
INSERT INTO `espcms_city` VALUES ('1917','228','海陵区','3','0');
INSERT INTO `espcms_city` VALUES ('1918','228','高港区','3','0');
INSERT INTO `espcms_city` VALUES ('1919','228','兴化市','3','0');
INSERT INTO `espcms_city` VALUES ('1920','228','靖江市','3','0');
INSERT INTO `espcms_city` VALUES ('1921','228','泰兴市','3','0');
INSERT INTO `espcms_city` VALUES ('1922','228','姜堰市','3','0');
INSERT INTO `espcms_city` VALUES ('1923','229','云龙区','3','0');
INSERT INTO `espcms_city` VALUES ('1924','229','鼓楼区','3','0');
INSERT INTO `espcms_city` VALUES ('1925','229','九里区','3','0');
INSERT INTO `espcms_city` VALUES ('1926','229','贾汪区','3','0');
INSERT INTO `espcms_city` VALUES ('1927','229','泉山区','3','0');
INSERT INTO `espcms_city` VALUES ('1928','229','新沂市','3','0');
INSERT INTO `espcms_city` VALUES ('1929','229','邳州市','3','0');
INSERT INTO `espcms_city` VALUES ('1930','229','丰县','3','0');
INSERT INTO `espcms_city` VALUES ('1931','229','沛县','3','0');
INSERT INTO `espcms_city` VALUES ('1932','229','铜山县','3','0');
INSERT INTO `espcms_city` VALUES ('1933','229','睢宁县','3','0');
INSERT INTO `espcms_city` VALUES ('1934','230','城区','3','0');
INSERT INTO `espcms_city` VALUES ('1935','230','亭湖区','3','0');
INSERT INTO `espcms_city` VALUES ('1936','230','盐都区','3','0');
INSERT INTO `espcms_city` VALUES ('1937','230','盐都县','3','0');
INSERT INTO `espcms_city` VALUES ('1938','230','东台市','3','0');
INSERT INTO `espcms_city` VALUES ('1939','230','大丰市','3','0');
INSERT INTO `espcms_city` VALUES ('1940','230','响水县','3','0');
INSERT INTO `espcms_city` VALUES ('1941','230','滨海县','3','0');
INSERT INTO `espcms_city` VALUES ('1942','230','阜宁县','3','0');
INSERT INTO `espcms_city` VALUES ('1943','230','射阳县','3','0');
INSERT INTO `espcms_city` VALUES ('1944','230','建湖县','3','0');
INSERT INTO `espcms_city` VALUES ('1945','231','广陵区','3','0');
INSERT INTO `espcms_city` VALUES ('1946','231','维扬区','3','0');
INSERT INTO `espcms_city` VALUES ('1947','231','邗江区','3','0');
INSERT INTO `espcms_city` VALUES ('1948','231','仪征市','3','0');
INSERT INTO `espcms_city` VALUES ('1949','231','高邮市','3','0');
INSERT INTO `espcms_city` VALUES ('1950','231','江都市','3','0');
INSERT INTO `espcms_city` VALUES ('1951','231','宝应县','3','0');
INSERT INTO `espcms_city` VALUES ('1952','232','京口区','3','0');
INSERT INTO `espcms_city` VALUES ('1953','232','润州区','3','0');
INSERT INTO `espcms_city` VALUES ('1954','232','丹徒区','3','0');
INSERT INTO `espcms_city` VALUES ('1955','232','丹阳市','3','0');
INSERT INTO `espcms_city` VALUES ('1956','232','扬中市','3','0');
INSERT INTO `espcms_city` VALUES ('1957','232','句容市','3','0');
INSERT INTO `espcms_city` VALUES ('1958','233','东湖区','3','0');
INSERT INTO `espcms_city` VALUES ('1959','233','西湖区','3','0');
INSERT INTO `espcms_city` VALUES ('1960','233','青云谱区','3','0');
INSERT INTO `espcms_city` VALUES ('1961','233','湾里区','3','0');
INSERT INTO `espcms_city` VALUES ('1962','233','青山湖区','3','0');
INSERT INTO `espcms_city` VALUES ('1963','233','红谷滩新区','3','0');
INSERT INTO `espcms_city` VALUES ('1964','233','昌北区','3','0');
INSERT INTO `espcms_city` VALUES ('1965','233','高新区','3','0');
INSERT INTO `espcms_city` VALUES ('1966','233','南昌县','3','0');
INSERT INTO `espcms_city` VALUES ('1967','233','新建县','3','0');
INSERT INTO `espcms_city` VALUES ('1968','233','安义县','3','0');
INSERT INTO `espcms_city` VALUES ('1969','233','进贤县','3','0');
INSERT INTO `espcms_city` VALUES ('1970','234','临川区','3','0');
INSERT INTO `espcms_city` VALUES ('1971','234','南城县','3','0');
INSERT INTO `espcms_city` VALUES ('1972','234','黎川县','3','0');
INSERT INTO `espcms_city` VALUES ('1973','234','南丰县','3','0');
INSERT INTO `espcms_city` VALUES ('1974','234','崇仁县','3','0');
INSERT INTO `espcms_city` VALUES ('1975','234','乐安县','3','0');
INSERT INTO `espcms_city` VALUES ('1976','234','宜黄县','3','0');
INSERT INTO `espcms_city` VALUES ('1977','234','金溪县','3','0');
INSERT INTO `espcms_city` VALUES ('1978','234','资溪县','3','0');
INSERT INTO `espcms_city` VALUES ('1979','234','东乡县','3','0');
INSERT INTO `espcms_city` VALUES ('1980','234','广昌县','3','0');
INSERT INTO `espcms_city` VALUES ('1981','235','章贡区','3','0');
INSERT INTO `espcms_city` VALUES ('1982','235','于都县','3','0');
INSERT INTO `espcms_city` VALUES ('1983','235','瑞金市','3','0');
INSERT INTO `espcms_city` VALUES ('1984','235','南康市','3','0');
INSERT INTO `espcms_city` VALUES ('1985','235','赣县','3','0');
INSERT INTO `espcms_city` VALUES ('1986','235','信丰县','3','0');
INSERT INTO `espcms_city` VALUES ('1987','235','大余县','3','0');
INSERT INTO `espcms_city` VALUES ('1988','235','上犹县','3','0');
INSERT INTO `espcms_city` VALUES ('1989','235','崇义县','3','0');
INSERT INTO `espcms_city` VALUES ('1990','235','安远县','3','0');
INSERT INTO `espcms_city` VALUES ('1991','235','龙南县','3','0');
INSERT INTO `espcms_city` VALUES ('1992','235','定南县','3','0');
INSERT INTO `espcms_city` VALUES ('1993','235','全南县','3','0');
INSERT INTO `espcms_city` VALUES ('1994','235','宁都县','3','0');
INSERT INTO `espcms_city` VALUES ('1995','235','兴国县','3','0');
INSERT INTO `espcms_city` VALUES ('1996','235','会昌县','3','0');
INSERT INTO `espcms_city` VALUES ('1997','235','寻乌县','3','0');
INSERT INTO `espcms_city` VALUES ('1998','235','石城县','3','0');
INSERT INTO `espcms_city` VALUES ('1999','236','安福县','3','0');
INSERT INTO `espcms_city` VALUES ('2000','236','吉州区','3','0');
INSERT INTO `espcms_city` VALUES ('2001','236','青原区','3','0');
INSERT INTO `espcms_city` VALUES ('2002','236','井冈山市','3','0');
INSERT INTO `espcms_city` VALUES ('2003','236','吉安县','3','0');
INSERT INTO `espcms_city` VALUES ('2004','236','吉水县','3','0');
INSERT INTO `espcms_city` VALUES ('2005','236','峡江县','3','0');
INSERT INTO `espcms_city` VALUES ('2006','236','新干县','3','0');
INSERT INTO `espcms_city` VALUES ('2007','236','永丰县','3','0');
INSERT INTO `espcms_city` VALUES ('2008','236','泰和县','3','0');
INSERT INTO `espcms_city` VALUES ('2009','236','遂川县','3','0');
INSERT INTO `espcms_city` VALUES ('2010','236','万安县','3','0');
INSERT INTO `espcms_city` VALUES ('2011','236','永新县','3','0');
INSERT INTO `espcms_city` VALUES ('2012','237','珠山区','3','0');
INSERT INTO `espcms_city` VALUES ('2013','237','昌江区','3','0');
INSERT INTO `espcms_city` VALUES ('2014','237','乐平市','3','0');
INSERT INTO `espcms_city` VALUES ('2015','237','浮梁县','3','0');
INSERT INTO `espcms_city` VALUES ('2016','238','浔阳区','3','0');
INSERT INTO `espcms_city` VALUES ('2017','238','庐山区','3','0');
INSERT INTO `espcms_city` VALUES ('2018','238','瑞昌市','3','0');
INSERT INTO `espcms_city` VALUES ('2019','238','九江县','3','0');
INSERT INTO `espcms_city` VALUES ('2020','238','武宁县','3','0');
INSERT INTO `espcms_city` VALUES ('2021','238','修水县','3','0');
INSERT INTO `espcms_city` VALUES ('2022','238','永修县','3','0');
INSERT INTO `espcms_city` VALUES ('2023','238','德安县','3','0');
INSERT INTO `espcms_city` VALUES ('2024','238','星子县','3','0');
INSERT INTO `espcms_city` VALUES ('2025','238','都昌县','3','0');
INSERT INTO `espcms_city` VALUES ('2026','238','湖口县','3','0');
INSERT INTO `espcms_city` VALUES ('2027','238','彭泽县','3','0');
INSERT INTO `espcms_city` VALUES ('2028','239','安源区','3','0');
INSERT INTO `espcms_city` VALUES ('2029','239','湘东区','3','0');
INSERT INTO `espcms_city` VALUES ('2030','239','莲花县','3','0');
INSERT INTO `espcms_city` VALUES ('2031','239','芦溪县','3','0');
INSERT INTO `espcms_city` VALUES ('2032','239','上栗县','3','0');
INSERT INTO `espcms_city` VALUES ('2033','240','信州区','3','0');
INSERT INTO `espcms_city` VALUES ('2034','240','德兴市','3','0');
INSERT INTO `espcms_city` VALUES ('2035','240','上饶县','3','0');
INSERT INTO `espcms_city` VALUES ('2036','240','广丰县','3','0');
INSERT INTO `espcms_city` VALUES ('2037','240','玉山县','3','0');
INSERT INTO `espcms_city` VALUES ('2038','240','铅山县','3','0');
INSERT INTO `espcms_city` VALUES ('2039','240','横峰县','3','0');
INSERT INTO `espcms_city` VALUES ('2040','240','弋阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2041','240','余干县','3','0');
INSERT INTO `espcms_city` VALUES ('2042','240','波阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2043','240','万年县','3','0');
INSERT INTO `espcms_city` VALUES ('2044','240','婺源县','3','0');
INSERT INTO `espcms_city` VALUES ('2045','241','渝水区','3','0');
INSERT INTO `espcms_city` VALUES ('2046','241','分宜县','3','0');
INSERT INTO `espcms_city` VALUES ('2047','242','袁州区','3','0');
INSERT INTO `espcms_city` VALUES ('2048','242','丰城市','3','0');
INSERT INTO `espcms_city` VALUES ('2049','242','樟树市','3','0');
INSERT INTO `espcms_city` VALUES ('2050','242','高安市','3','0');
INSERT INTO `espcms_city` VALUES ('2051','242','奉新县','3','0');
INSERT INTO `espcms_city` VALUES ('2052','242','万载县','3','0');
INSERT INTO `espcms_city` VALUES ('2053','242','上高县','3','0');
INSERT INTO `espcms_city` VALUES ('2054','242','宜丰县','3','0');
INSERT INTO `espcms_city` VALUES ('2055','242','靖安县','3','0');
INSERT INTO `espcms_city` VALUES ('2056','242','铜鼓县','3','0');
INSERT INTO `espcms_city` VALUES ('2057','243','月湖区','3','0');
INSERT INTO `espcms_city` VALUES ('2058','243','贵溪市','3','0');
INSERT INTO `espcms_city` VALUES ('2059','243','余江县','3','0');
INSERT INTO `espcms_city` VALUES ('2060','244','沈河区','3','0');
INSERT INTO `espcms_city` VALUES ('2061','244','皇姑区','3','0');
INSERT INTO `espcms_city` VALUES ('2062','244','和平区','3','0');
INSERT INTO `espcms_city` VALUES ('2063','244','大东区','3','0');
INSERT INTO `espcms_city` VALUES ('2064','244','铁西区','3','0');
INSERT INTO `espcms_city` VALUES ('2065','244','苏家屯区','3','0');
INSERT INTO `espcms_city` VALUES ('2066','244','东陵区','3','0');
INSERT INTO `espcms_city` VALUES ('2067','244','沈北新区','3','0');
INSERT INTO `espcms_city` VALUES ('2068','244','于洪区','3','0');
INSERT INTO `espcms_city` VALUES ('2069','244','浑南新区','3','0');
INSERT INTO `espcms_city` VALUES ('2070','244','新民市','3','0');
INSERT INTO `espcms_city` VALUES ('2071','244','辽中县','3','0');
INSERT INTO `espcms_city` VALUES ('2072','244','康平县','3','0');
INSERT INTO `espcms_city` VALUES ('2073','244','法库县','3','0');
INSERT INTO `espcms_city` VALUES ('2074','245','西岗区','3','0');
INSERT INTO `espcms_city` VALUES ('2075','245','中山区','3','0');
INSERT INTO `espcms_city` VALUES ('2076','245','沙河口区','3','0');
INSERT INTO `espcms_city` VALUES ('2077','245','甘井子区','3','0');
INSERT INTO `espcms_city` VALUES ('2078','245','旅顺口区','3','0');
INSERT INTO `espcms_city` VALUES ('2079','245','金州区','3','0');
INSERT INTO `espcms_city` VALUES ('2080','245','开发区','3','0');
INSERT INTO `espcms_city` VALUES ('2081','245','瓦房店市','3','0');
INSERT INTO `espcms_city` VALUES ('2082','245','普兰店市','3','0');
INSERT INTO `espcms_city` VALUES ('2083','245','庄河市','3','0');
INSERT INTO `espcms_city` VALUES ('2084','245','长海县','3','0');
INSERT INTO `espcms_city` VALUES ('2085','246','铁东区','3','0');
INSERT INTO `espcms_city` VALUES ('2086','246','铁西区','3','0');
INSERT INTO `espcms_city` VALUES ('2087','246','立山区','3','0');
INSERT INTO `espcms_city` VALUES ('2088','246','千山区','3','0');
INSERT INTO `espcms_city` VALUES ('2089','246','岫岩','3','0');
INSERT INTO `espcms_city` VALUES ('2090','246','海城市','3','0');
INSERT INTO `espcms_city` VALUES ('2091','246','台安县','3','0');
INSERT INTO `espcms_city` VALUES ('2092','247','本溪','3','0');
INSERT INTO `espcms_city` VALUES ('2093','247','平山区','3','0');
INSERT INTO `espcms_city` VALUES ('2094','247','明山区','3','0');
INSERT INTO `espcms_city` VALUES ('2095','247','溪湖区','3','0');
INSERT INTO `espcms_city` VALUES ('2096','247','南芬区','3','0');
INSERT INTO `espcms_city` VALUES ('2097','247','桓仁','3','0');
INSERT INTO `espcms_city` VALUES ('2098','248','双塔区','3','0');
INSERT INTO `espcms_city` VALUES ('2099','248','龙城区','3','0');
INSERT INTO `espcms_city` VALUES ('2100','248','喀喇沁左翼蒙古族自治县','3','0');
INSERT INTO `espcms_city` VALUES ('2101','248','北票市','3','0');
INSERT INTO `espcms_city` VALUES ('2102','248','凌源市','3','0');
INSERT INTO `espcms_city` VALUES ('2103','248','朝阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2104','248','建平县','3','0');
INSERT INTO `espcms_city` VALUES ('2105','249','振兴区','3','0');
INSERT INTO `espcms_city` VALUES ('2106','249','元宝区','3','0');
INSERT INTO `espcms_city` VALUES ('2107','249','振安区','3','0');
INSERT INTO `espcms_city` VALUES ('2108','249','宽甸','3','0');
INSERT INTO `espcms_city` VALUES ('2109','249','东港市','3','0');
INSERT INTO `espcms_city` VALUES ('2110','249','凤城市','3','0');
INSERT INTO `espcms_city` VALUES ('2111','250','顺城区','3','0');
INSERT INTO `espcms_city` VALUES ('2112','250','新抚区','3','0');
INSERT INTO `espcms_city` VALUES ('2113','250','东洲区','3','0');
INSERT INTO `espcms_city` VALUES ('2114','250','望花区','3','0');
INSERT INTO `espcms_city` VALUES ('2115','250','清原','3','0');
INSERT INTO `espcms_city` VALUES ('2116','250','新宾','3','0');
INSERT INTO `espcms_city` VALUES ('2117','250','抚顺县','3','0');
INSERT INTO `espcms_city` VALUES ('2118','251','阜新','3','0');
INSERT INTO `espcms_city` VALUES ('2119','251','海州区','3','0');
INSERT INTO `espcms_city` VALUES ('2120','251','新邱区','3','0');
INSERT INTO `espcms_city` VALUES ('2121','251','太平区','3','0');
INSERT INTO `espcms_city` VALUES ('2122','251','清河门区','3','0');
INSERT INTO `espcms_city` VALUES ('2123','251','细河区','3','0');
INSERT INTO `espcms_city` VALUES ('2124','251','彰武县','3','0');
INSERT INTO `espcms_city` VALUES ('2125','252','龙港区','3','0');
INSERT INTO `espcms_city` VALUES ('2126','252','南票区','3','0');
INSERT INTO `espcms_city` VALUES ('2127','252','连山区','3','0');
INSERT INTO `espcms_city` VALUES ('2128','252','兴城市','3','0');
INSERT INTO `espcms_city` VALUES ('2129','252','绥中县','3','0');
INSERT INTO `espcms_city` VALUES ('2130','252','建昌县','3','0');
INSERT INTO `espcms_city` VALUES ('2131','253','太和区','3','0');
INSERT INTO `espcms_city` VALUES ('2132','253','古塔区','3','0');
INSERT INTO `espcms_city` VALUES ('2133','253','凌河区','3','0');
INSERT INTO `espcms_city` VALUES ('2134','253','凌海市','3','0');
INSERT INTO `espcms_city` VALUES ('2135','253','北镇市','3','0');
INSERT INTO `espcms_city` VALUES ('2136','253','黑山县','3','0');
INSERT INTO `espcms_city` VALUES ('2137','253','义县','3','0');
INSERT INTO `espcms_city` VALUES ('2138','254','白塔区','3','0');
INSERT INTO `espcms_city` VALUES ('2139','254','文圣区','3','0');
INSERT INTO `espcms_city` VALUES ('2140','254','宏伟区','3','0');
INSERT INTO `espcms_city` VALUES ('2141','254','太子河区','3','0');
INSERT INTO `espcms_city` VALUES ('2142','254','弓长岭区','3','0');
INSERT INTO `espcms_city` VALUES ('2143','254','灯塔市','3','0');
INSERT INTO `espcms_city` VALUES ('2144','254','辽阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2145','255','双台子区','3','0');
INSERT INTO `espcms_city` VALUES ('2146','255','兴隆台区','3','0');
INSERT INTO `espcms_city` VALUES ('2147','255','大洼县','3','0');
INSERT INTO `espcms_city` VALUES ('2148','255','盘山县','3','0');
INSERT INTO `espcms_city` VALUES ('2149','256','银州区','3','0');
INSERT INTO `espcms_city` VALUES ('2150','256','清河区','3','0');
INSERT INTO `espcms_city` VALUES ('2151','256','调兵山市','3','0');
INSERT INTO `espcms_city` VALUES ('2152','256','开原市','3','0');
INSERT INTO `espcms_city` VALUES ('2153','256','铁岭县','3','0');
INSERT INTO `espcms_city` VALUES ('2154','256','西丰县','3','0');
INSERT INTO `espcms_city` VALUES ('2155','256','昌图县','3','0');
INSERT INTO `espcms_city` VALUES ('2156','257','站前区','3','0');
INSERT INTO `espcms_city` VALUES ('2157','257','西市区','3','0');
INSERT INTO `espcms_city` VALUES ('2158','257','鲅鱼圈区','3','0');
INSERT INTO `espcms_city` VALUES ('2159','257','老边区','3','0');
INSERT INTO `espcms_city` VALUES ('2160','257','盖州市','3','0');
INSERT INTO `espcms_city` VALUES ('2161','257','大石桥市','3','0');
INSERT INTO `espcms_city` VALUES ('2162','258','回民区','3','0');
INSERT INTO `espcms_city` VALUES ('2163','258','玉泉区','3','0');
INSERT INTO `espcms_city` VALUES ('2164','258','新城区','3','0');
INSERT INTO `espcms_city` VALUES ('2165','258','赛罕区','3','0');
INSERT INTO `espcms_city` VALUES ('2166','258','清水河县','3','0');
INSERT INTO `espcms_city` VALUES ('2167','258','土默特左旗','3','0');
INSERT INTO `espcms_city` VALUES ('2168','258','托克托县','3','0');
INSERT INTO `espcms_city` VALUES ('2169','258','和林格尔县','3','0');
INSERT INTO `espcms_city` VALUES ('2170','258','武川县','3','0');
INSERT INTO `espcms_city` VALUES ('2171','259','阿拉善左旗','3','0');
INSERT INTO `espcms_city` VALUES ('2172','259','阿拉善右旗','3','0');
INSERT INTO `espcms_city` VALUES ('2173','259','额济纳旗','3','0');
INSERT INTO `espcms_city` VALUES ('2174','260','临河区','3','0');
INSERT INTO `espcms_city` VALUES ('2175','260','五原县','3','0');
INSERT INTO `espcms_city` VALUES ('2176','260','磴口县','3','0');
INSERT INTO `espcms_city` VALUES ('2177','260','乌拉特前旗','3','0');
INSERT INTO `espcms_city` VALUES ('2178','260','乌拉特中旗','3','0');
INSERT INTO `espcms_city` VALUES ('2179','260','乌拉特后旗','3','0');
INSERT INTO `espcms_city` VALUES ('2180','260','杭锦后旗','3','0');
INSERT INTO `espcms_city` VALUES ('2181','261','昆都仑区','3','0');
INSERT INTO `espcms_city` VALUES ('2182','261','青山区','3','0');
INSERT INTO `espcms_city` VALUES ('2183','261','东河区','3','0');
INSERT INTO `espcms_city` VALUES ('2184','261','九原区','3','0');
INSERT INTO `espcms_city` VALUES ('2185','261','石拐区','3','0');
INSERT INTO `espcms_city` VALUES ('2186','261','白云矿区','3','0');
INSERT INTO `espcms_city` VALUES ('2187','261','土默特右旗','3','0');
INSERT INTO `espcms_city` VALUES ('2188','261','固阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2189','261','达尔罕茂明安联合旗','3','0');
INSERT INTO `espcms_city` VALUES ('2190','262','红山区','3','0');
INSERT INTO `espcms_city` VALUES ('2191','262','元宝山区','3','0');
INSERT INTO `espcms_city` VALUES ('2192','262','松山区','3','0');
INSERT INTO `espcms_city` VALUES ('2193','262','阿鲁科尔沁旗','3','0');
INSERT INTO `espcms_city` VALUES ('2194','262','巴林左旗','3','0');
INSERT INTO `espcms_city` VALUES ('2195','262','巴林右旗','3','0');
INSERT INTO `espcms_city` VALUES ('2196','262','林西县','3','0');
INSERT INTO `espcms_city` VALUES ('2197','262','克什克腾旗','3','0');
INSERT INTO `espcms_city` VALUES ('2198','262','翁牛特旗','3','0');
INSERT INTO `espcms_city` VALUES ('2199','262','喀喇沁旗','3','0');
INSERT INTO `espcms_city` VALUES ('2200','262','宁城县','3','0');
INSERT INTO `espcms_city` VALUES ('2201','262','敖汉旗','3','0');
INSERT INTO `espcms_city` VALUES ('2202','263','东胜区','3','0');
INSERT INTO `espcms_city` VALUES ('2203','263','达拉特旗','3','0');
INSERT INTO `espcms_city` VALUES ('2204','263','准格尔旗','3','0');
INSERT INTO `espcms_city` VALUES ('2205','263','鄂托克前旗','3','0');
INSERT INTO `espcms_city` VALUES ('2206','263','鄂托克旗','3','0');
INSERT INTO `espcms_city` VALUES ('2207','263','杭锦旗','3','0');
INSERT INTO `espcms_city` VALUES ('2208','263','乌审旗','3','0');
INSERT INTO `espcms_city` VALUES ('2209','263','伊金霍洛旗','3','0');
INSERT INTO `espcms_city` VALUES ('2210','264','海拉尔区','3','0');
INSERT INTO `espcms_city` VALUES ('2211','264','莫力达瓦','3','0');
INSERT INTO `espcms_city` VALUES ('2212','264','满洲里市','3','0');
INSERT INTO `espcms_city` VALUES ('2213','264','牙克石市','3','0');
INSERT INTO `espcms_city` VALUES ('2214','264','扎兰屯市','3','0');
INSERT INTO `espcms_city` VALUES ('2215','264','额尔古纳市','3','0');
INSERT INTO `espcms_city` VALUES ('2216','264','根河市','3','0');
INSERT INTO `espcms_city` VALUES ('2217','264','阿荣旗','3','0');
INSERT INTO `espcms_city` VALUES ('2218','264','鄂伦春自治旗','3','0');
INSERT INTO `espcms_city` VALUES ('2219','264','鄂温克族自治旗','3','0');
INSERT INTO `espcms_city` VALUES ('2220','264','陈巴尔虎旗','3','0');
INSERT INTO `espcms_city` VALUES ('2221','264','新巴尔虎左旗','3','0');
INSERT INTO `espcms_city` VALUES ('2222','264','新巴尔虎右旗','3','0');
INSERT INTO `espcms_city` VALUES ('2223','265','科尔沁区','3','0');
INSERT INTO `espcms_city` VALUES ('2224','265','霍林郭勒市','3','0');
INSERT INTO `espcms_city` VALUES ('2225','265','科尔沁左翼中旗','3','0');
INSERT INTO `espcms_city` VALUES ('2226','265','科尔沁左翼后旗','3','0');
INSERT INTO `espcms_city` VALUES ('2227','265','开鲁县','3','0');
INSERT INTO `espcms_city` VALUES ('2228','265','库伦旗','3','0');
INSERT INTO `espcms_city` VALUES ('2229','265','奈曼旗','3','0');
INSERT INTO `espcms_city` VALUES ('2230','265','扎鲁特旗','3','0');
INSERT INTO `espcms_city` VALUES ('2231','266','海勃湾区','3','0');
INSERT INTO `espcms_city` VALUES ('2232','266','乌达区','3','0');
INSERT INTO `espcms_city` VALUES ('2233','266','海南区','3','0');
INSERT INTO `espcms_city` VALUES ('2234','267','化德县','3','0');
INSERT INTO `espcms_city` VALUES ('2235','267','集宁区','3','0');
INSERT INTO `espcms_city` VALUES ('2236','267','丰镇市','3','0');
INSERT INTO `espcms_city` VALUES ('2237','267','卓资县','3','0');
INSERT INTO `espcms_city` VALUES ('2238','267','商都县','3','0');
INSERT INTO `espcms_city` VALUES ('2239','267','兴和县','3','0');
INSERT INTO `espcms_city` VALUES ('2240','267','凉城县','3','0');
INSERT INTO `espcms_city` VALUES ('2241','267','察哈尔右翼前旗','3','0');
INSERT INTO `espcms_city` VALUES ('2242','267','察哈尔右翼中旗','3','0');
INSERT INTO `espcms_city` VALUES ('2243','267','察哈尔右翼后旗','3','0');
INSERT INTO `espcms_city` VALUES ('2244','267','四子王旗','3','0');
INSERT INTO `espcms_city` VALUES ('2245','268','二连浩特市','3','0');
INSERT INTO `espcms_city` VALUES ('2246','268','锡林浩特市','3','0');
INSERT INTO `espcms_city` VALUES ('2247','268','阿巴嘎旗','3','0');
INSERT INTO `espcms_city` VALUES ('2248','268','苏尼特左旗','3','0');
INSERT INTO `espcms_city` VALUES ('2249','268','苏尼特右旗','3','0');
INSERT INTO `espcms_city` VALUES ('2250','268','东乌珠穆沁旗','3','0');
INSERT INTO `espcms_city` VALUES ('2251','268','西乌珠穆沁旗','3','0');
INSERT INTO `espcms_city` VALUES ('2252','268','太仆寺旗','3','0');
INSERT INTO `espcms_city` VALUES ('2253','268','镶黄旗','3','0');
INSERT INTO `espcms_city` VALUES ('2254','268','正镶白旗','3','0');
INSERT INTO `espcms_city` VALUES ('2255','268','正蓝旗','3','0');
INSERT INTO `espcms_city` VALUES ('2256','268','多伦县','3','0');
INSERT INTO `espcms_city` VALUES ('2257','269','乌兰浩特市','3','0');
INSERT INTO `espcms_city` VALUES ('2258','269','阿尔山市','3','0');
INSERT INTO `espcms_city` VALUES ('2259','269','科尔沁右翼前旗','3','0');
INSERT INTO `espcms_city` VALUES ('2260','269','科尔沁右翼中旗','3','0');
INSERT INTO `espcms_city` VALUES ('2261','269','扎赉特旗','3','0');
INSERT INTO `espcms_city` VALUES ('2262','269','突泉县','3','0');
INSERT INTO `espcms_city` VALUES ('2263','270','西夏区','3','0');
INSERT INTO `espcms_city` VALUES ('2264','270','金凤区','3','0');
INSERT INTO `espcms_city` VALUES ('2265','270','兴庆区','3','0');
INSERT INTO `espcms_city` VALUES ('2266','270','灵武市','3','0');
INSERT INTO `espcms_city` VALUES ('2267','270','永宁县','3','0');
INSERT INTO `espcms_city` VALUES ('2268','270','贺兰县','3','0');
INSERT INTO `espcms_city` VALUES ('2269','271','原州区','3','0');
INSERT INTO `espcms_city` VALUES ('2270','271','海原县','3','0');
INSERT INTO `espcms_city` VALUES ('2271','271','西吉县','3','0');
INSERT INTO `espcms_city` VALUES ('2272','271','隆德县','3','0');
INSERT INTO `espcms_city` VALUES ('2273','271','泾源县','3','0');
INSERT INTO `espcms_city` VALUES ('2274','271','彭阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2275','272','惠农县','3','0');
INSERT INTO `espcms_city` VALUES ('2276','272','大武口区','3','0');
INSERT INTO `espcms_city` VALUES ('2277','272','惠农区','3','0');
INSERT INTO `espcms_city` VALUES ('2278','272','陶乐县','3','0');
INSERT INTO `espcms_city` VALUES ('2279','272','平罗县','3','0');
INSERT INTO `espcms_city` VALUES ('2280','273','利通区','3','0');
INSERT INTO `espcms_city` VALUES ('2281','273','中卫县','3','0');
INSERT INTO `espcms_city` VALUES ('2282','273','青铜峡市','3','0');
INSERT INTO `espcms_city` VALUES ('2283','273','中宁县','3','0');
INSERT INTO `espcms_city` VALUES ('2284','273','盐池县','3','0');
INSERT INTO `espcms_city` VALUES ('2285','273','同心县','3','0');
INSERT INTO `espcms_city` VALUES ('2286','274','沙坡头区','3','0');
INSERT INTO `espcms_city` VALUES ('2287','274','海原县','3','0');
INSERT INTO `espcms_city` VALUES ('2288','274','中宁县','3','0');
INSERT INTO `espcms_city` VALUES ('2289','275','城中区','3','0');
INSERT INTO `espcms_city` VALUES ('2290','275','城东区','3','0');
INSERT INTO `espcms_city` VALUES ('2291','275','城西区','3','0');
INSERT INTO `espcms_city` VALUES ('2292','275','城北区','3','0');
INSERT INTO `espcms_city` VALUES ('2293','275','湟中县','3','0');
INSERT INTO `espcms_city` VALUES ('2294','275','湟源县','3','0');
INSERT INTO `espcms_city` VALUES ('2295','275','大通','3','0');
INSERT INTO `espcms_city` VALUES ('2296','276','玛沁县','3','0');
INSERT INTO `espcms_city` VALUES ('2297','276','班玛县','3','0');
INSERT INTO `espcms_city` VALUES ('2298','276','甘德县','3','0');
INSERT INTO `espcms_city` VALUES ('2299','276','达日县','3','0');
INSERT INTO `espcms_city` VALUES ('2300','276','久治县','3','0');
INSERT INTO `espcms_city` VALUES ('2301','276','玛多县','3','0');
INSERT INTO `espcms_city` VALUES ('2302','277','海晏县','3','0');
INSERT INTO `espcms_city` VALUES ('2303','277','祁连县','3','0');
INSERT INTO `espcms_city` VALUES ('2304','277','刚察县','3','0');
INSERT INTO `espcms_city` VALUES ('2305','277','门源','3','0');
INSERT INTO `espcms_city` VALUES ('2306','278','平安县','3','0');
INSERT INTO `espcms_city` VALUES ('2307','278','乐都县','3','0');
INSERT INTO `espcms_city` VALUES ('2308','278','民和','3','0');
INSERT INTO `espcms_city` VALUES ('2309','278','互助','3','0');
INSERT INTO `espcms_city` VALUES ('2310','278','化隆','3','0');
INSERT INTO `espcms_city` VALUES ('2311','278','循化','3','0');
INSERT INTO `espcms_city` VALUES ('2312','279','共和县','3','0');
INSERT INTO `espcms_city` VALUES ('2313','279','同德县','3','0');
INSERT INTO `espcms_city` VALUES ('2314','279','贵德县','3','0');
INSERT INTO `espcms_city` VALUES ('2315','279','兴海县','3','0');
INSERT INTO `espcms_city` VALUES ('2316','279','贵南县','3','0');
INSERT INTO `espcms_city` VALUES ('2317','280','德令哈市','3','0');
INSERT INTO `espcms_city` VALUES ('2318','280','格尔木市','3','0');
INSERT INTO `espcms_city` VALUES ('2319','280','乌兰县','3','0');
INSERT INTO `espcms_city` VALUES ('2320','280','都兰县','3','0');
INSERT INTO `espcms_city` VALUES ('2321','280','天峻县','3','0');
INSERT INTO `espcms_city` VALUES ('2322','281','同仁县','3','0');
INSERT INTO `espcms_city` VALUES ('2323','281','尖扎县','3','0');
INSERT INTO `espcms_city` VALUES ('2324','281','泽库县','3','0');
INSERT INTO `espcms_city` VALUES ('2325','281','河南蒙古族自治县','3','0');
INSERT INTO `espcms_city` VALUES ('2326','282','玉树县','3','0');
INSERT INTO `espcms_city` VALUES ('2327','282','杂多县','3','0');
INSERT INTO `espcms_city` VALUES ('2328','282','称多县','3','0');
INSERT INTO `espcms_city` VALUES ('2329','282','治多县','3','0');
INSERT INTO `espcms_city` VALUES ('2330','282','囊谦县','3','0');
INSERT INTO `espcms_city` VALUES ('2331','282','曲麻莱县','3','0');
INSERT INTO `espcms_city` VALUES ('2332','283','市中区','3','0');
INSERT INTO `espcms_city` VALUES ('2333','283','历下区','3','0');
INSERT INTO `espcms_city` VALUES ('2334','283','天桥区','3','0');
INSERT INTO `espcms_city` VALUES ('2335','283','槐荫区','3','0');
INSERT INTO `espcms_city` VALUES ('2336','283','历城区','3','0');
INSERT INTO `espcms_city` VALUES ('2337','283','长清区','3','0');
INSERT INTO `espcms_city` VALUES ('2338','283','章丘市','3','0');
INSERT INTO `espcms_city` VALUES ('2339','283','平阴县','3','0');
INSERT INTO `espcms_city` VALUES ('2340','283','济阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2341','283','商河县','3','0');
INSERT INTO `espcms_city` VALUES ('2342','284','市南区','3','0');
INSERT INTO `espcms_city` VALUES ('2343','284','市北区','3','0');
INSERT INTO `espcms_city` VALUES ('2344','284','城阳区','3','0');
INSERT INTO `espcms_city` VALUES ('2345','284','四方区','3','0');
INSERT INTO `espcms_city` VALUES ('2346','284','李沧区','3','0');
INSERT INTO `espcms_city` VALUES ('2347','284','黄岛区','3','0');
INSERT INTO `espcms_city` VALUES ('2348','284','崂山区','3','0');
INSERT INTO `espcms_city` VALUES ('2349','284','胶州市','3','0');
INSERT INTO `espcms_city` VALUES ('2350','284','即墨市','3','0');
INSERT INTO `espcms_city` VALUES ('2351','284','平度市','3','0');
INSERT INTO `espcms_city` VALUES ('2352','284','胶南市','3','0');
INSERT INTO `espcms_city` VALUES ('2353','284','莱西市','3','0');
INSERT INTO `espcms_city` VALUES ('2354','285','滨城区','3','0');
INSERT INTO `espcms_city` VALUES ('2355','285','惠民县','3','0');
INSERT INTO `espcms_city` VALUES ('2356','285','阳信县','3','0');
INSERT INTO `espcms_city` VALUES ('2357','285','无棣县','3','0');
INSERT INTO `espcms_city` VALUES ('2358','285','沾化县','3','0');
INSERT INTO `espcms_city` VALUES ('2359','285','博兴县','3','0');
INSERT INTO `espcms_city` VALUES ('2360','285','邹平县','3','0');
INSERT INTO `espcms_city` VALUES ('2361','286','德城区','3','0');
INSERT INTO `espcms_city` VALUES ('2362','286','陵县','3','0');
INSERT INTO `espcms_city` VALUES ('2363','286','乐陵市','3','0');
INSERT INTO `espcms_city` VALUES ('2364','286','禹城市','3','0');
INSERT INTO `espcms_city` VALUES ('2365','286','宁津县','3','0');
INSERT INTO `espcms_city` VALUES ('2366','286','庆云县','3','0');
INSERT INTO `espcms_city` VALUES ('2367','286','临邑县','3','0');
INSERT INTO `espcms_city` VALUES ('2368','286','齐河县','3','0');
INSERT INTO `espcms_city` VALUES ('2369','286','平原县','3','0');
INSERT INTO `espcms_city` VALUES ('2370','286','夏津县','3','0');
INSERT INTO `espcms_city` VALUES ('2371','286','武城县','3','0');
INSERT INTO `espcms_city` VALUES ('2372','287','东营区','3','0');
INSERT INTO `espcms_city` VALUES ('2373','287','河口区','3','0');
INSERT INTO `espcms_city` VALUES ('2374','287','垦利县','3','0');
INSERT INTO `espcms_city` VALUES ('2375','287','利津县','3','0');
INSERT INTO `espcms_city` VALUES ('2376','287','广饶县','3','0');
INSERT INTO `espcms_city` VALUES ('2377','288','牡丹区','3','0');
INSERT INTO `espcms_city` VALUES ('2378','288','曹县','3','0');
INSERT INTO `espcms_city` VALUES ('2379','288','单县','3','0');
INSERT INTO `espcms_city` VALUES ('2380','288','成武县','3','0');
INSERT INTO `espcms_city` VALUES ('2381','288','巨野县','3','0');
INSERT INTO `espcms_city` VALUES ('2382','288','郓城县','3','0');
INSERT INTO `espcms_city` VALUES ('2383','288','鄄城县','3','0');
INSERT INTO `espcms_city` VALUES ('2384','288','定陶县','3','0');
INSERT INTO `espcms_city` VALUES ('2385','288','东明县','3','0');
INSERT INTO `espcms_city` VALUES ('2386','289','市中区','3','0');
INSERT INTO `espcms_city` VALUES ('2387','289','任城区','3','0');
INSERT INTO `espcms_city` VALUES ('2388','289','曲阜市','3','0');
INSERT INTO `espcms_city` VALUES ('2389','289','兖州市','3','0');
INSERT INTO `espcms_city` VALUES ('2390','289','邹城市','3','0');
INSERT INTO `espcms_city` VALUES ('2391','289','微山县','3','0');
INSERT INTO `espcms_city` VALUES ('2392','289','鱼台县','3','0');
INSERT INTO `espcms_city` VALUES ('2393','289','金乡县','3','0');
INSERT INTO `espcms_city` VALUES ('2394','289','嘉祥县','3','0');
INSERT INTO `espcms_city` VALUES ('2395','289','汶上县','3','0');
INSERT INTO `espcms_city` VALUES ('2396','289','泗水县','3','0');
INSERT INTO `espcms_city` VALUES ('2397','289','梁山县','3','0');
INSERT INTO `espcms_city` VALUES ('2398','290','莱城区','3','0');
INSERT INTO `espcms_city` VALUES ('2399','290','钢城区','3','0');
INSERT INTO `espcms_city` VALUES ('2400','291','东昌府区','3','0');
INSERT INTO `espcms_city` VALUES ('2401','291','临清市','3','0');
INSERT INTO `espcms_city` VALUES ('2402','291','阳谷县','3','0');
INSERT INTO `espcms_city` VALUES ('2403','291','莘县','3','0');
INSERT INTO `espcms_city` VALUES ('2404','291','茌平县','3','0');
INSERT INTO `espcms_city` VALUES ('2405','291','东阿县','3','0');
INSERT INTO `espcms_city` VALUES ('2406','291','冠县','3','0');
INSERT INTO `espcms_city` VALUES ('2407','291','高唐县','3','0');
INSERT INTO `espcms_city` VALUES ('2408','292','兰山区','3','0');
INSERT INTO `espcms_city` VALUES ('2409','292','罗庄区','3','0');
INSERT INTO `espcms_city` VALUES ('2410','292','河东区','3','0');
INSERT INTO `espcms_city` VALUES ('2411','292','沂南县','3','0');
INSERT INTO `espcms_city` VALUES ('2412','292','郯城县','3','0');
INSERT INTO `espcms_city` VALUES ('2413','292','沂水县','3','0');
INSERT INTO `espcms_city` VALUES ('2414','292','苍山县','3','0');
INSERT INTO `espcms_city` VALUES ('2415','292','费县','3','0');
INSERT INTO `espcms_city` VALUES ('2416','292','平邑县','3','0');
INSERT INTO `espcms_city` VALUES ('2417','292','莒南县','3','0');
INSERT INTO `espcms_city` VALUES ('2418','292','蒙阴县','3','0');
INSERT INTO `espcms_city` VALUES ('2419','292','临沭县','3','0');
INSERT INTO `espcms_city` VALUES ('2420','293','东港区','3','0');
INSERT INTO `espcms_city` VALUES ('2421','293','岚山区','3','0');
INSERT INTO `espcms_city` VALUES ('2422','293','五莲县','3','0');
INSERT INTO `espcms_city` VALUES ('2423','293','莒县','3','0');
INSERT INTO `espcms_city` VALUES ('2424','294','泰山区','3','0');
INSERT INTO `espcms_city` VALUES ('2425','294','岱岳区','3','0');
INSERT INTO `espcms_city` VALUES ('2426','294','新泰市','3','0');
INSERT INTO `espcms_city` VALUES ('2427','294','肥城市','3','0');
INSERT INTO `espcms_city` VALUES ('2428','294','宁阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2429','294','东平县','3','0');
INSERT INTO `espcms_city` VALUES ('2430','295','荣成市','3','0');
INSERT INTO `espcms_city` VALUES ('2431','295','乳山市','3','0');
INSERT INTO `espcms_city` VALUES ('2432','295','环翠区','3','0');
INSERT INTO `espcms_city` VALUES ('2433','295','文登市','3','0');
INSERT INTO `espcms_city` VALUES ('2434','296','潍城区','3','0');
INSERT INTO `espcms_city` VALUES ('2435','296','寒亭区','3','0');
INSERT INTO `espcms_city` VALUES ('2436','296','坊子区','3','0');
INSERT INTO `espcms_city` VALUES ('2437','296','奎文区','3','0');
INSERT INTO `espcms_city` VALUES ('2438','296','青州市','3','0');
INSERT INTO `espcms_city` VALUES ('2439','296','诸城市','3','0');
INSERT INTO `espcms_city` VALUES ('2440','296','寿光市','3','0');
INSERT INTO `espcms_city` VALUES ('2441','296','安丘市','3','0');
INSERT INTO `espcms_city` VALUES ('2442','296','高密市','3','0');
INSERT INTO `espcms_city` VALUES ('2443','296','昌邑市','3','0');
INSERT INTO `espcms_city` VALUES ('2444','296','临朐县','3','0');
INSERT INTO `espcms_city` VALUES ('2445','296','昌乐县','3','0');
INSERT INTO `espcms_city` VALUES ('2446','297','芝罘区','3','0');
INSERT INTO `espcms_city` VALUES ('2447','297','福山区','3','0');
INSERT INTO `espcms_city` VALUES ('2448','297','牟平区','3','0');
INSERT INTO `espcms_city` VALUES ('2449','297','莱山区','3','0');
INSERT INTO `espcms_city` VALUES ('2450','297','开发区','3','0');
INSERT INTO `espcms_city` VALUES ('2451','297','龙口市','3','0');
INSERT INTO `espcms_city` VALUES ('2452','297','莱阳市','3','0');
INSERT INTO `espcms_city` VALUES ('2453','297','莱州市','3','0');
INSERT INTO `espcms_city` VALUES ('2454','297','蓬莱市','3','0');
INSERT INTO `espcms_city` VALUES ('2455','297','招远市','3','0');
INSERT INTO `espcms_city` VALUES ('2456','297','栖霞市','3','0');
INSERT INTO `espcms_city` VALUES ('2457','297','海阳市','3','0');
INSERT INTO `espcms_city` VALUES ('2458','297','长岛县','3','0');
INSERT INTO `espcms_city` VALUES ('2459','298','市中区','3','0');
INSERT INTO `espcms_city` VALUES ('2460','298','山亭区','3','0');
INSERT INTO `espcms_city` VALUES ('2461','298','峄城区','3','0');
INSERT INTO `espcms_city` VALUES ('2462','298','台儿庄区','3','0');
INSERT INTO `espcms_city` VALUES ('2463','298','薛城区','3','0');
INSERT INTO `espcms_city` VALUES ('2464','298','滕州市','3','0');
INSERT INTO `espcms_city` VALUES ('2465','299','张店区','3','0');
INSERT INTO `espcms_city` VALUES ('2466','299','临淄区','3','0');
INSERT INTO `espcms_city` VALUES ('2467','299','淄川区','3','0');
INSERT INTO `espcms_city` VALUES ('2468','299','博山区','3','0');
INSERT INTO `espcms_city` VALUES ('2469','299','周村区','3','0');
INSERT INTO `espcms_city` VALUES ('2470','299','桓台县','3','0');
INSERT INTO `espcms_city` VALUES ('2471','299','高青县','3','0');
INSERT INTO `espcms_city` VALUES ('2472','299','沂源县','3','0');
INSERT INTO `espcms_city` VALUES ('2473','300','杏花岭区','3','0');
INSERT INTO `espcms_city` VALUES ('2474','300','小店区','3','0');
INSERT INTO `espcms_city` VALUES ('2475','300','迎泽区','3','0');
INSERT INTO `espcms_city` VALUES ('2476','300','尖草坪区','3','0');
INSERT INTO `espcms_city` VALUES ('2477','300','万柏林区','3','0');
INSERT INTO `espcms_city` VALUES ('2478','300','晋源区','3','0');
INSERT INTO `espcms_city` VALUES ('2479','300','高新开发区','3','0');
INSERT INTO `espcms_city` VALUES ('2480','300','民营经济开发区','3','0');
INSERT INTO `espcms_city` VALUES ('2481','300','经济技术开发区','3','0');
INSERT INTO `espcms_city` VALUES ('2482','300','清徐县','3','0');
INSERT INTO `espcms_city` VALUES ('2483','300','阳曲县','3','0');
INSERT INTO `espcms_city` VALUES ('2484','300','娄烦县','3','0');
INSERT INTO `espcms_city` VALUES ('2485','300','古交市','3','0');
INSERT INTO `espcms_city` VALUES ('2486','301','城区','3','0');
INSERT INTO `espcms_city` VALUES ('2487','301','郊区','3','0');
INSERT INTO `espcms_city` VALUES ('2488','301','沁县','3','0');
INSERT INTO `espcms_city` VALUES ('2489','301','潞城市','3','0');
INSERT INTO `espcms_city` VALUES ('2490','301','长治县','3','0');
INSERT INTO `espcms_city` VALUES ('2491','301','襄垣县','3','0');
INSERT INTO `espcms_city` VALUES ('2492','301','屯留县','3','0');
INSERT INTO `espcms_city` VALUES ('2493','301','平顺县','3','0');
INSERT INTO `espcms_city` VALUES ('2494','301','黎城县','3','0');
INSERT INTO `espcms_city` VALUES ('2495','301','壶关县','3','0');
INSERT INTO `espcms_city` VALUES ('2496','301','长子县','3','0');
INSERT INTO `espcms_city` VALUES ('2497','301','武乡县','3','0');
INSERT INTO `espcms_city` VALUES ('2498','301','沁源县','3','0');
INSERT INTO `espcms_city` VALUES ('2499','302','城区','3','0');
INSERT INTO `espcms_city` VALUES ('2500','302','矿区','3','0');
INSERT INTO `espcms_city` VALUES ('2501','302','南郊区','3','0');
INSERT INTO `espcms_city` VALUES ('2502','302','新荣区','3','0');
INSERT INTO `espcms_city` VALUES ('2503','302','阳高县','3','0');
INSERT INTO `espcms_city` VALUES ('2504','302','天镇县','3','0');
INSERT INTO `espcms_city` VALUES ('2505','302','广灵县','3','0');
INSERT INTO `espcms_city` VALUES ('2506','302','灵丘县','3','0');
INSERT INTO `espcms_city` VALUES ('2507','302','浑源县','3','0');
INSERT INTO `espcms_city` VALUES ('2508','302','左云县','3','0');
INSERT INTO `espcms_city` VALUES ('2509','302','大同县','3','0');
INSERT INTO `espcms_city` VALUES ('2510','303','城区','3','0');
INSERT INTO `espcms_city` VALUES ('2511','303','高平市','3','0');
INSERT INTO `espcms_city` VALUES ('2512','303','沁水县','3','0');
INSERT INTO `espcms_city` VALUES ('2513','303','阳城县','3','0');
INSERT INTO `espcms_city` VALUES ('2514','303','陵川县','3','0');
INSERT INTO `espcms_city` VALUES ('2515','303','泽州县','3','0');
INSERT INTO `espcms_city` VALUES ('2516','304','榆次区','3','0');
INSERT INTO `espcms_city` VALUES ('2517','304','介休市','3','0');
INSERT INTO `espcms_city` VALUES ('2518','304','榆社县','3','0');
INSERT INTO `espcms_city` VALUES ('2519','304','左权县','3','0');
INSERT INTO `espcms_city` VALUES ('2520','304','和顺县','3','0');
INSERT INTO `espcms_city` VALUES ('2521','304','昔阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2522','304','寿阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2523','304','太谷县','3','0');
INSERT INTO `espcms_city` VALUES ('2524','304','祁县','3','0');
INSERT INTO `espcms_city` VALUES ('2525','304','平遥县','3','0');
INSERT INTO `espcms_city` VALUES ('2526','304','灵石县','3','0');
INSERT INTO `espcms_city` VALUES ('2527','305','尧都区','3','0');
INSERT INTO `espcms_city` VALUES ('2528','305','侯马市','3','0');
INSERT INTO `espcms_city` VALUES ('2529','305','霍州市','3','0');
INSERT INTO `espcms_city` VALUES ('2530','305','曲沃县','3','0');
INSERT INTO `espcms_city` VALUES ('2531','305','翼城县','3','0');
INSERT INTO `espcms_city` VALUES ('2532','305','襄汾县','3','0');
INSERT INTO `espcms_city` VALUES ('2533','305','洪洞县','3','0');
INSERT INTO `espcms_city` VALUES ('2534','305','吉县','3','0');
INSERT INTO `espcms_city` VALUES ('2535','305','安泽县','3','0');
INSERT INTO `espcms_city` VALUES ('2536','305','浮山县','3','0');
INSERT INTO `espcms_city` VALUES ('2537','305','古县','3','0');
INSERT INTO `espcms_city` VALUES ('2538','305','乡宁县','3','0');
INSERT INTO `espcms_city` VALUES ('2539','305','大宁县','3','0');
INSERT INTO `espcms_city` VALUES ('2540','305','隰县','3','0');
INSERT INTO `espcms_city` VALUES ('2541','305','永和县','3','0');
INSERT INTO `espcms_city` VALUES ('2542','305','蒲县','3','0');
INSERT INTO `espcms_city` VALUES ('2543','305','汾西县','3','0');
INSERT INTO `espcms_city` VALUES ('2544','306','离石市','3','0');
INSERT INTO `espcms_city` VALUES ('2545','306','离石区','3','0');
INSERT INTO `espcms_city` VALUES ('2546','306','孝义市','3','0');
INSERT INTO `espcms_city` VALUES ('2547','306','汾阳市','3','0');
INSERT INTO `espcms_city` VALUES ('2548','306','文水县','3','0');
INSERT INTO `espcms_city` VALUES ('2549','306','交城县','3','0');
INSERT INTO `espcms_city` VALUES ('2550','306','兴县','3','0');
INSERT INTO `espcms_city` VALUES ('2551','306','临县','3','0');
INSERT INTO `espcms_city` VALUES ('2552','306','柳林县','3','0');
INSERT INTO `espcms_city` VALUES ('2553','306','石楼县','3','0');
INSERT INTO `espcms_city` VALUES ('2554','306','岚县','3','0');
INSERT INTO `espcms_city` VALUES ('2555','306','方山县','3','0');
INSERT INTO `espcms_city` VALUES ('2556','306','中阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2557','306','交口县','3','0');
INSERT INTO `espcms_city` VALUES ('2558','307','朔城区','3','0');
INSERT INTO `espcms_city` VALUES ('2559','307','平鲁区','3','0');
INSERT INTO `espcms_city` VALUES ('2560','307','山阴县','3','0');
INSERT INTO `espcms_city` VALUES ('2561','307','应县','3','0');
INSERT INTO `espcms_city` VALUES ('2562','307','右玉县','3','0');
INSERT INTO `espcms_city` VALUES ('2563','307','怀仁县','3','0');
INSERT INTO `espcms_city` VALUES ('2564','308','忻府区','3','0');
INSERT INTO `espcms_city` VALUES ('2565','308','原平市','3','0');
INSERT INTO `espcms_city` VALUES ('2566','308','定襄县','3','0');
INSERT INTO `espcms_city` VALUES ('2567','308','五台县','3','0');
INSERT INTO `espcms_city` VALUES ('2568','308','代县','3','0');
INSERT INTO `espcms_city` VALUES ('2569','308','繁峙县','3','0');
INSERT INTO `espcms_city` VALUES ('2570','308','宁武县','3','0');
INSERT INTO `espcms_city` VALUES ('2571','308','静乐县','3','0');
INSERT INTO `espcms_city` VALUES ('2572','308','神池县','3','0');
INSERT INTO `espcms_city` VALUES ('2573','308','五寨县','3','0');
INSERT INTO `espcms_city` VALUES ('2574','308','岢岚县','3','0');
INSERT INTO `espcms_city` VALUES ('2575','308','河曲县','3','0');
INSERT INTO `espcms_city` VALUES ('2576','308','保德县','3','0');
INSERT INTO `espcms_city` VALUES ('2577','308','偏关县','3','0');
INSERT INTO `espcms_city` VALUES ('2578','309','城区','3','0');
INSERT INTO `espcms_city` VALUES ('2579','309','矿区','3','0');
INSERT INTO `espcms_city` VALUES ('2580','309','郊区','3','0');
INSERT INTO `espcms_city` VALUES ('2581','309','平定县','3','0');
INSERT INTO `espcms_city` VALUES ('2582','309','盂县','3','0');
INSERT INTO `espcms_city` VALUES ('2583','310','盐湖区','3','0');
INSERT INTO `espcms_city` VALUES ('2584','310','永济市','3','0');
INSERT INTO `espcms_city` VALUES ('2585','310','河津市','3','0');
INSERT INTO `espcms_city` VALUES ('2586','310','临猗县','3','0');
INSERT INTO `espcms_city` VALUES ('2587','310','万荣县','3','0');
INSERT INTO `espcms_city` VALUES ('2588','310','闻喜县','3','0');
INSERT INTO `espcms_city` VALUES ('2589','310','稷山县','3','0');
INSERT INTO `espcms_city` VALUES ('2590','310','新绛县','3','0');
INSERT INTO `espcms_city` VALUES ('2591','310','绛县','3','0');
INSERT INTO `espcms_city` VALUES ('2592','310','垣曲县','3','0');
INSERT INTO `espcms_city` VALUES ('2593','310','夏县','3','0');
INSERT INTO `espcms_city` VALUES ('2594','310','平陆县','3','0');
INSERT INTO `espcms_city` VALUES ('2595','310','芮城县','3','0');
INSERT INTO `espcms_city` VALUES ('2596','311','莲湖区','3','0');
INSERT INTO `espcms_city` VALUES ('2597','311','新城区','3','0');
INSERT INTO `espcms_city` VALUES ('2598','311','碑林区','3','0');
INSERT INTO `espcms_city` VALUES ('2599','311','雁塔区','3','0');
INSERT INTO `espcms_city` VALUES ('2600','311','灞桥区','3','0');
INSERT INTO `espcms_city` VALUES ('2601','311','未央区','3','0');
INSERT INTO `espcms_city` VALUES ('2602','311','阎良区','3','0');
INSERT INTO `espcms_city` VALUES ('2603','311','临潼区','3','0');
INSERT INTO `espcms_city` VALUES ('2604','311','长安区','3','0');
INSERT INTO `espcms_city` VALUES ('2605','311','蓝田县','3','0');
INSERT INTO `espcms_city` VALUES ('2606','311','周至县','3','0');
INSERT INTO `espcms_city` VALUES ('2607','311','户县','3','0');
INSERT INTO `espcms_city` VALUES ('2608','311','高陵县','3','0');
INSERT INTO `espcms_city` VALUES ('2609','312','汉滨区','3','0');
INSERT INTO `espcms_city` VALUES ('2610','312','汉阴县','3','0');
INSERT INTO `espcms_city` VALUES ('2611','312','石泉县','3','0');
INSERT INTO `espcms_city` VALUES ('2612','312','宁陕县','3','0');
INSERT INTO `espcms_city` VALUES ('2613','312','紫阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2614','312','岚皋县','3','0');
INSERT INTO `espcms_city` VALUES ('2615','312','平利县','3','0');
INSERT INTO `espcms_city` VALUES ('2616','312','镇坪县','3','0');
INSERT INTO `espcms_city` VALUES ('2617','312','旬阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2618','312','白河县','3','0');
INSERT INTO `espcms_city` VALUES ('2619','313','陈仓区','3','0');
INSERT INTO `espcms_city` VALUES ('2620','313','渭滨区','3','0');
INSERT INTO `espcms_city` VALUES ('2621','313','金台区','3','0');
INSERT INTO `espcms_city` VALUES ('2622','313','凤翔县','3','0');
INSERT INTO `espcms_city` VALUES ('2623','313','岐山县','3','0');
INSERT INTO `espcms_city` VALUES ('2624','313','扶风县','3','0');
INSERT INTO `espcms_city` VALUES ('2625','313','眉县','3','0');
INSERT INTO `espcms_city` VALUES ('2626','313','陇县','3','0');
INSERT INTO `espcms_city` VALUES ('2627','313','千阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2628','313','麟游县','3','0');
INSERT INTO `espcms_city` VALUES ('2629','313','凤县','3','0');
INSERT INTO `espcms_city` VALUES ('2630','313','太白县','3','0');
INSERT INTO `espcms_city` VALUES ('2631','314','汉台区','3','0');
INSERT INTO `espcms_city` VALUES ('2632','314','南郑县','3','0');
INSERT INTO `espcms_city` VALUES ('2633','314','城固县','3','0');
INSERT INTO `espcms_city` VALUES ('2634','314','洋县','3','0');
INSERT INTO `espcms_city` VALUES ('2635','314','西乡县','3','0');
INSERT INTO `espcms_city` VALUES ('2636','314','勉县','3','0');
INSERT INTO `espcms_city` VALUES ('2637','314','宁强县','3','0');
INSERT INTO `espcms_city` VALUES ('2638','314','略阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2639','314','镇巴县','3','0');
INSERT INTO `espcms_city` VALUES ('2640','314','留坝县','3','0');
INSERT INTO `espcms_city` VALUES ('2641','314','佛坪县','3','0');
INSERT INTO `espcms_city` VALUES ('2642','315','商州区','3','0');
INSERT INTO `espcms_city` VALUES ('2643','315','洛南县','3','0');
INSERT INTO `espcms_city` VALUES ('2644','315','丹凤县','3','0');
INSERT INTO `espcms_city` VALUES ('2645','315','商南县','3','0');
INSERT INTO `espcms_city` VALUES ('2646','315','山阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2647','315','镇安县','3','0');
INSERT INTO `espcms_city` VALUES ('2648','315','柞水县','3','0');
INSERT INTO `espcms_city` VALUES ('2649','316','耀州区','3','0');
INSERT INTO `espcms_city` VALUES ('2650','316','王益区','3','0');
INSERT INTO `espcms_city` VALUES ('2651','316','印台区','3','0');
INSERT INTO `espcms_city` VALUES ('2652','316','宜君县','3','0');
INSERT INTO `espcms_city` VALUES ('2653','317','临渭区','3','0');
INSERT INTO `espcms_city` VALUES ('2654','317','韩城市','3','0');
INSERT INTO `espcms_city` VALUES ('2655','317','华阴市','3','0');
INSERT INTO `espcms_city` VALUES ('2656','317','华县','3','0');
INSERT INTO `espcms_city` VALUES ('2657','317','潼关县','3','0');
INSERT INTO `espcms_city` VALUES ('2658','317','大荔县','3','0');
INSERT INTO `espcms_city` VALUES ('2659','317','合阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2660','317','澄城县','3','0');
INSERT INTO `espcms_city` VALUES ('2661','317','蒲城县','3','0');
INSERT INTO `espcms_city` VALUES ('2662','317','白水县','3','0');
INSERT INTO `espcms_city` VALUES ('2663','317','富平县','3','0');
INSERT INTO `espcms_city` VALUES ('2664','318','秦都区','3','0');
INSERT INTO `espcms_city` VALUES ('2665','318','渭城区','3','0');
INSERT INTO `espcms_city` VALUES ('2666','318','杨陵区','3','0');
INSERT INTO `espcms_city` VALUES ('2667','318','兴平市','3','0');
INSERT INTO `espcms_city` VALUES ('2668','318','三原县','3','0');
INSERT INTO `espcms_city` VALUES ('2669','318','泾阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2670','318','乾县','3','0');
INSERT INTO `espcms_city` VALUES ('2671','318','礼泉县','3','0');
INSERT INTO `espcms_city` VALUES ('2672','318','永寿县','3','0');
INSERT INTO `espcms_city` VALUES ('2673','318','彬县','3','0');
INSERT INTO `espcms_city` VALUES ('2674','318','长武县','3','0');
INSERT INTO `espcms_city` VALUES ('2675','318','旬邑县','3','0');
INSERT INTO `espcms_city` VALUES ('2676','318','淳化县','3','0');
INSERT INTO `espcms_city` VALUES ('2677','318','武功县','3','0');
INSERT INTO `espcms_city` VALUES ('2678','319','吴起县','3','0');
INSERT INTO `espcms_city` VALUES ('2679','319','宝塔区','3','0');
INSERT INTO `espcms_city` VALUES ('2680','319','延长县','3','0');
INSERT INTO `espcms_city` VALUES ('2681','319','延川县','3','0');
INSERT INTO `espcms_city` VALUES ('2682','319','子长县','3','0');
INSERT INTO `espcms_city` VALUES ('2683','319','安塞县','3','0');
INSERT INTO `espcms_city` VALUES ('2684','319','志丹县','3','0');
INSERT INTO `espcms_city` VALUES ('2685','319','甘泉县','3','0');
INSERT INTO `espcms_city` VALUES ('2686','319','富县','3','0');
INSERT INTO `espcms_city` VALUES ('2687','319','洛川县','3','0');
INSERT INTO `espcms_city` VALUES ('2688','319','宜川县','3','0');
INSERT INTO `espcms_city` VALUES ('2689','319','黄龙县','3','0');
INSERT INTO `espcms_city` VALUES ('2690','319','黄陵县','3','0');
INSERT INTO `espcms_city` VALUES ('2691','320','榆阳区','3','0');
INSERT INTO `espcms_city` VALUES ('2692','320','神木县','3','0');
INSERT INTO `espcms_city` VALUES ('2693','320','府谷县','3','0');
INSERT INTO `espcms_city` VALUES ('2694','320','横山县','3','0');
INSERT INTO `espcms_city` VALUES ('2695','320','靖边县','3','0');
INSERT INTO `espcms_city` VALUES ('2696','320','定边县','3','0');
INSERT INTO `espcms_city` VALUES ('2697','320','绥德县','3','0');
INSERT INTO `espcms_city` VALUES ('2698','320','米脂县','3','0');
INSERT INTO `espcms_city` VALUES ('2699','320','佳县','3','0');
INSERT INTO `espcms_city` VALUES ('2700','320','吴堡县','3','0');
INSERT INTO `espcms_city` VALUES ('2701','320','清涧县','3','0');
INSERT INTO `espcms_city` VALUES ('2702','320','子洲县','3','0');
INSERT INTO `espcms_city` VALUES ('2703','321','长宁区','3','0');
INSERT INTO `espcms_city` VALUES ('2704','321','闸北区','3','0');
INSERT INTO `espcms_city` VALUES ('2705','321','闵行区','3','0');
INSERT INTO `espcms_city` VALUES ('2706','321','徐汇区','3','0');
INSERT INTO `espcms_city` VALUES ('2707','321','浦东新区','3','0');
INSERT INTO `espcms_city` VALUES ('2708','321','杨浦区','3','0');
INSERT INTO `espcms_city` VALUES ('2709','321','普陀区','3','0');
INSERT INTO `espcms_city` VALUES ('2710','321','静安区','3','0');
INSERT INTO `espcms_city` VALUES ('2711','321','卢湾区','3','0');
INSERT INTO `espcms_city` VALUES ('2712','321','虹口区','3','0');
INSERT INTO `espcms_city` VALUES ('2713','321','黄浦区','3','0');
INSERT INTO `espcms_city` VALUES ('2714','321','南汇区','3','0');
INSERT INTO `espcms_city` VALUES ('2715','321','松江区','3','0');
INSERT INTO `espcms_city` VALUES ('2716','321','嘉定区','3','0');
INSERT INTO `espcms_city` VALUES ('2717','321','宝山区','3','0');
INSERT INTO `espcms_city` VALUES ('2718','321','青浦区','3','0');
INSERT INTO `espcms_city` VALUES ('2719','321','金山区','3','0');
INSERT INTO `espcms_city` VALUES ('2720','321','奉贤区','3','0');
INSERT INTO `espcms_city` VALUES ('2721','321','崇明县','3','0');
INSERT INTO `espcms_city` VALUES ('2722','322','青羊区','3','0');
INSERT INTO `espcms_city` VALUES ('2723','322','锦江区','3','0');
INSERT INTO `espcms_city` VALUES ('2724','322','金牛区','3','0');
INSERT INTO `espcms_city` VALUES ('2725','322','武侯区','3','0');
INSERT INTO `espcms_city` VALUES ('2726','322','成华区','3','0');
INSERT INTO `espcms_city` VALUES ('2727','322','龙泉驿区','3','0');
INSERT INTO `espcms_city` VALUES ('2728','322','青白江区','3','0');
INSERT INTO `espcms_city` VALUES ('2729','322','新都区','3','0');
INSERT INTO `espcms_city` VALUES ('2730','322','温江区','3','0');
INSERT INTO `espcms_city` VALUES ('2731','322','高新区','3','0');
INSERT INTO `espcms_city` VALUES ('2732','322','高新西区','3','0');
INSERT INTO `espcms_city` VALUES ('2733','322','都江堰市','3','0');
INSERT INTO `espcms_city` VALUES ('2734','322','彭州市','3','0');
INSERT INTO `espcms_city` VALUES ('2735','322','邛崃市','3','0');
INSERT INTO `espcms_city` VALUES ('2736','322','崇州市','3','0');
INSERT INTO `espcms_city` VALUES ('2737','322','金堂县','3','0');
INSERT INTO `espcms_city` VALUES ('2738','322','双流县','3','0');
INSERT INTO `espcms_city` VALUES ('2739','322','郫县','3','0');
INSERT INTO `espcms_city` VALUES ('2740','322','大邑县','3','0');
INSERT INTO `espcms_city` VALUES ('2741','322','蒲江县','3','0');
INSERT INTO `espcms_city` VALUES ('2742','322','新津县','3','0');
INSERT INTO `espcms_city` VALUES ('2743','322','都江堰市','3','0');
INSERT INTO `espcms_city` VALUES ('2744','322','彭州市','3','0');
INSERT INTO `espcms_city` VALUES ('2745','322','邛崃市','3','0');
INSERT INTO `espcms_city` VALUES ('2746','322','崇州市','3','0');
INSERT INTO `espcms_city` VALUES ('2747','322','金堂县','3','0');
INSERT INTO `espcms_city` VALUES ('2748','322','双流县','3','0');
INSERT INTO `espcms_city` VALUES ('2749','322','郫县','3','0');
INSERT INTO `espcms_city` VALUES ('2750','322','大邑县','3','0');
INSERT INTO `espcms_city` VALUES ('2751','322','蒲江县','3','0');
INSERT INTO `espcms_city` VALUES ('2752','322','新津县','3','0');
INSERT INTO `espcms_city` VALUES ('2753','323','涪城区','3','0');
INSERT INTO `espcms_city` VALUES ('2754','323','游仙区','3','0');
INSERT INTO `espcms_city` VALUES ('2755','323','江油市','3','0');
INSERT INTO `espcms_city` VALUES ('2756','323','盐亭县','3','0');
INSERT INTO `espcms_city` VALUES ('2757','323','三台县','3','0');
INSERT INTO `espcms_city` VALUES ('2758','323','平武县','3','0');
INSERT INTO `espcms_city` VALUES ('2759','323','安县','3','0');
INSERT INTO `espcms_city` VALUES ('2760','323','梓潼县','3','0');
INSERT INTO `espcms_city` VALUES ('2761','323','北川县','3','0');
INSERT INTO `espcms_city` VALUES ('2762','324','马尔康县','3','0');
INSERT INTO `espcms_city` VALUES ('2763','324','汶川县','3','0');
INSERT INTO `espcms_city` VALUES ('2764','324','理县','3','0');
INSERT INTO `espcms_city` VALUES ('2765','324','茂县','3','0');
INSERT INTO `espcms_city` VALUES ('2766','324','松潘县','3','0');
INSERT INTO `espcms_city` VALUES ('2767','324','九寨沟县','3','0');
INSERT INTO `espcms_city` VALUES ('2768','324','金川县','3','0');
INSERT INTO `espcms_city` VALUES ('2769','324','小金县','3','0');
INSERT INTO `espcms_city` VALUES ('2770','324','黑水县','3','0');
INSERT INTO `espcms_city` VALUES ('2771','324','壤塘县','3','0');
INSERT INTO `espcms_city` VALUES ('2772','324','阿坝县','3','0');
INSERT INTO `espcms_city` VALUES ('2773','324','若尔盖县','3','0');
INSERT INTO `espcms_city` VALUES ('2774','324','红原县','3','0');
INSERT INTO `espcms_city` VALUES ('2775','325','巴州区','3','0');
INSERT INTO `espcms_city` VALUES ('2776','325','通江县','3','0');
INSERT INTO `espcms_city` VALUES ('2777','325','南江县','3','0');
INSERT INTO `espcms_city` VALUES ('2778','325','平昌县','3','0');
INSERT INTO `espcms_city` VALUES ('2779','326','通川区','3','0');
INSERT INTO `espcms_city` VALUES ('2780','326','万源市','3','0');
INSERT INTO `espcms_city` VALUES ('2781','326','达县','3','0');
INSERT INTO `espcms_city` VALUES ('2782','326','宣汉县','3','0');
INSERT INTO `espcms_city` VALUES ('2783','326','开江县','3','0');
INSERT INTO `espcms_city` VALUES ('2784','326','大竹县','3','0');
INSERT INTO `espcms_city` VALUES ('2785','326','渠县','3','0');
INSERT INTO `espcms_city` VALUES ('2786','327','旌阳区','3','0');
INSERT INTO `espcms_city` VALUES ('2787','327','广汉市','3','0');
INSERT INTO `espcms_city` VALUES ('2788','327','什邡市','3','0');
INSERT INTO `espcms_city` VALUES ('2789','327','绵竹市','3','0');
INSERT INTO `espcms_city` VALUES ('2790','327','罗江县','3','0');
INSERT INTO `espcms_city` VALUES ('2791','327','中江县','3','0');
INSERT INTO `espcms_city` VALUES ('2792','328','康定县','3','0');
INSERT INTO `espcms_city` VALUES ('2793','328','丹巴县','3','0');
INSERT INTO `espcms_city` VALUES ('2794','328','泸定县','3','0');
INSERT INTO `espcms_city` VALUES ('2795','328','炉霍县','3','0');
INSERT INTO `espcms_city` VALUES ('2796','328','九龙县','3','0');
INSERT INTO `espcms_city` VALUES ('2797','328','甘孜县','3','0');
INSERT INTO `espcms_city` VALUES ('2798','328','雅江县','3','0');
INSERT INTO `espcms_city` VALUES ('2799','328','新龙县','3','0');
INSERT INTO `espcms_city` VALUES ('2800','328','道孚县','3','0');
INSERT INTO `espcms_city` VALUES ('2801','328','白玉县','3','0');
INSERT INTO `espcms_city` VALUES ('2802','328','理塘县','3','0');
INSERT INTO `espcms_city` VALUES ('2803','328','德格县','3','0');
INSERT INTO `espcms_city` VALUES ('2804','328','乡城县','3','0');
INSERT INTO `espcms_city` VALUES ('2805','328','石渠县','3','0');
INSERT INTO `espcms_city` VALUES ('2806','328','稻城县','3','0');
INSERT INTO `espcms_city` VALUES ('2807','328','色达县','3','0');
INSERT INTO `espcms_city` VALUES ('2808','328','巴塘县','3','0');
INSERT INTO `espcms_city` VALUES ('2809','328','得荣县','3','0');
INSERT INTO `espcms_city` VALUES ('2810','329','广安区','3','0');
INSERT INTO `espcms_city` VALUES ('2811','329','华蓥市','3','0');
INSERT INTO `espcms_city` VALUES ('2812','329','岳池县','3','0');
INSERT INTO `espcms_city` VALUES ('2813','329','武胜县','3','0');
INSERT INTO `espcms_city` VALUES ('2814','329','邻水县','3','0');
INSERT INTO `espcms_city` VALUES ('2815','330','利州区','3','0');
INSERT INTO `espcms_city` VALUES ('2816','330','元坝区','3','0');
INSERT INTO `espcms_city` VALUES ('2817','330','朝天区','3','0');
INSERT INTO `espcms_city` VALUES ('2818','330','旺苍县','3','0');
INSERT INTO `espcms_city` VALUES ('2819','330','青川县','3','0');
INSERT INTO `espcms_city` VALUES ('2820','330','剑阁县','3','0');
INSERT INTO `espcms_city` VALUES ('2821','330','苍溪县','3','0');
INSERT INTO `espcms_city` VALUES ('2822','331','峨眉山市','3','0');
INSERT INTO `espcms_city` VALUES ('2823','331','乐山市','3','0');
INSERT INTO `espcms_city` VALUES ('2824','331','犍为县','3','0');
INSERT INTO `espcms_city` VALUES ('2825','331','井研县','3','0');
INSERT INTO `espcms_city` VALUES ('2826','331','夹江县','3','0');
INSERT INTO `espcms_city` VALUES ('2827','331','沐川县','3','0');
INSERT INTO `espcms_city` VALUES ('2828','331','峨边','3','0');
INSERT INTO `espcms_city` VALUES ('2829','331','马边','3','0');
INSERT INTO `espcms_city` VALUES ('2830','332','西昌市','3','0');
INSERT INTO `espcms_city` VALUES ('2831','332','盐源县','3','0');
INSERT INTO `espcms_city` VALUES ('2832','332','德昌县','3','0');
INSERT INTO `espcms_city` VALUES ('2833','332','会理县','3','0');
INSERT INTO `espcms_city` VALUES ('2834','332','会东县','3','0');
INSERT INTO `espcms_city` VALUES ('2835','332','宁南县','3','0');
INSERT INTO `espcms_city` VALUES ('2836','332','普格县','3','0');
INSERT INTO `espcms_city` VALUES ('2837','332','布拖县','3','0');
INSERT INTO `espcms_city` VALUES ('2838','332','金阳县','3','0');
INSERT INTO `espcms_city` VALUES ('2839','332','昭觉县','3','0');
INSERT INTO `espcms_city` VALUES ('2840','332','喜德县','3','0');
INSERT INTO `espcms_city` VALUES ('2841','332','冕宁县','3','0');
INSERT INTO `espcms_city` VALUES ('2842','332','越西县','3','0');
INSERT INTO `espcms_city` VALUES ('2843','332','甘洛县','3','0');
INSERT INTO `espcms_city` VALUES ('2844','332','美姑县','3','0');
INSERT INTO `espcms_city` VALUES ('2845','332','雷波县','3','0');
INSERT INTO `espcms_city` VALUES ('2846','332','木里','3','0');
INSERT INTO `espcms_city` VALUES ('2847','333','东坡区','3','0');
INSERT INTO `espcms_city` VALUES ('2848','333','仁寿县','3','0');
INSERT INTO `espcms_city` VALUES ('2849','333','彭山县','3','0');
INSERT INTO `espcms_city` VALUES ('2850','333','洪雅县','3','0');
INSERT INTO `espcms_city` VALUES ('2851','333','丹棱县','3','0');
INSERT INTO `espcms_city` VALUES ('2852','333','青神县','3','0');
INSERT INTO `espcms_city` VALUES ('2853','334','阆中市','3','0');
INSERT INTO `espcms_city` VALUES ('2854','334','南部县','3','0');
INSERT INTO `espcms_city` VALUES ('2855','334','营山县','3','0');
INSERT INTO `espcms_city` VALUES ('2856','334','蓬安县','3','0');
INSERT INTO `espcms_city` VALUES ('2857','334','仪陇县','3','0');
INSERT INTO `espcms_city` VALUES ('2858','334','顺庆区','3','0');
INSERT INTO `espcms_city` VALUES ('2859','334','高坪区','3','0');
INSERT INTO `espcms_city` VALUES ('2860','334','嘉陵区','3','0');
INSERT INTO `espcms_city` VALUES ('2861','334','西充县','3','0');
INSERT INTO `espcms_city` VALUES ('2862','335','市中区','3','0');
INSERT INTO `espcms_city` VALUES ('2863','335','东兴区','3','0');
INSERT INTO `espcms_city` VALUES ('2864','335','威远县','3','0');
INSERT INTO `espcms_city` VALUES ('2865','335','资中县','3','0');
INSERT INTO `espcms_city` VALUES ('2866','335','隆昌县','3','0');
INSERT INTO `espcms_city` VALUES ('2867','336','东  区','3','0');
INSERT INTO `espcms_city` VALUES ('2868','336','西  区','3','0');
INSERT INTO `espcms_city` VALUES ('2869','336','仁和区','3','0');
INSERT INTO `espcms_city` VALUES ('2870','336','米易县','3','0');
INSERT INTO `espcms_city` VALUES ('2871','336','盐边县','3','0');
INSERT INTO `espcms_city` VALUES ('2872','337','船山区','3','0');
INSERT INTO `espcms_city` VALUES ('2873','337','安居区','3','0');
INSERT INTO `espcms_city` VALUES ('2874','337','蓬溪县','3','0');
INSERT INTO `espcms_city` VALUES ('2875','337','射洪县','3','0');
INSERT INTO `espcms_city` VALUES ('2876','337','大英县','3','0');
INSERT INTO `espcms_city` VALUES ('2877','338','雨城区','3','0');
INSERT INTO `espcms_city` VALUES ('2878','338','名山县','3','0');
INSERT INTO `espcms_city` VALUES ('2879','338','荥经县','3','0');
INSERT INTO `espcms_city` VALUES ('2880','338','汉源县','3','0');
INSERT INTO `espcms_city` VALUES ('2881','338','石棉县','3','0');
INSERT INTO `espcms_city` VALUES ('2882','338','天全县','3','0');
INSERT INTO `espcms_city` VALUES ('2883','338','芦山县','3','0');
INSERT INTO `espcms_city` VALUES ('2884','338','宝兴县','3','0');
INSERT INTO `espcms_city` VALUES ('2885','339','翠屏区','3','0');
INSERT INTO `espcms_city` VALUES ('2886','339','宜宾县','3','0');
INSERT INTO `espcms_city` VALUES ('2887','339','南溪县','3','0');
INSERT INTO `espcms_city` VALUES ('2888','339','江安县','3','0');
INSERT INTO `espcms_city` VALUES ('2889','339','长宁县','3','0');
INSERT INTO `espcms_city` VALUES ('2890','339','高县','3','0');
INSERT INTO `espcms_city` VALUES ('2891','339','珙县','3','0');
INSERT INTO `espcms_city` VALUES ('2892','339','筠连县','3','0');
INSERT INTO `espcms_city` VALUES ('2893','339','兴文县','3','0');
INSERT INTO `espcms_city` VALUES ('2894','339','屏山县','3','0');
INSERT INTO `espcms_city` VALUES ('2895','340','雁江区','3','0');
INSERT INTO `espcms_city` VALUES ('2896','340','简阳市','3','0');
INSERT INTO `espcms_city` VALUES ('2897','340','安岳县','3','0');
INSERT INTO `espcms_city` VALUES ('2898','340','乐至县','3','0');
INSERT INTO `espcms_city` VALUES ('2899','341','大安区','3','0');
INSERT INTO `espcms_city` VALUES ('2900','341','自流井区','3','0');
INSERT INTO `espcms_city` VALUES ('2901','341','贡井区','3','0');
INSERT INTO `espcms_city` VALUES ('2902','341','沿滩区','3','0');
INSERT INTO `espcms_city` VALUES ('2903','341','荣县','3','0');
INSERT INTO `espcms_city` VALUES ('2904','341','富顺县','3','0');
INSERT INTO `espcms_city` VALUES ('2905','342','江阳区','3','0');
INSERT INTO `espcms_city` VALUES ('2906','342','纳溪区','3','0');
INSERT INTO `espcms_city` VALUES ('2907','342','龙马潭区','3','0');
INSERT INTO `espcms_city` VALUES ('2908','342','泸县','3','0');
INSERT INTO `espcms_city` VALUES ('2909','342','合江县','3','0');
INSERT INTO `espcms_city` VALUES ('2910','342','叙永县','3','0');
INSERT INTO `espcms_city` VALUES ('2911','342','古蔺县','3','0');
INSERT INTO `espcms_city` VALUES ('2912','343','和平区','3','0');
INSERT INTO `espcms_city` VALUES ('2913','343','河西区','3','0');
INSERT INTO `espcms_city` VALUES ('2914','343','南开区','3','0');
INSERT INTO `espcms_city` VALUES ('2915','343','河北区','3','0');
INSERT INTO `espcms_city` VALUES ('2916','343','河东区','3','0');
INSERT INTO `espcms_city` VALUES ('2917','343','红桥区','3','0');
INSERT INTO `espcms_city` VALUES ('2918','343','东丽区','3','0');
INSERT INTO `espcms_city` VALUES ('2919','343','津南区','3','0');
INSERT INTO `espcms_city` VALUES ('2920','343','西青区','3','0');
INSERT INTO `espcms_city` VALUES ('2921','343','北辰区','3','0');
INSERT INTO `espcms_city` VALUES ('2922','343','塘沽区','3','0');
INSERT INTO `espcms_city` VALUES ('2923','343','汉沽区','3','0');
INSERT INTO `espcms_city` VALUES ('2924','343','大港区','3','0');
INSERT INTO `espcms_city` VALUES ('2925','343','武清区','3','0');
INSERT INTO `espcms_city` VALUES ('2926','343','宝坻区','3','0');
INSERT INTO `espcms_city` VALUES ('2927','343','经济开发区','3','0');
INSERT INTO `espcms_city` VALUES ('2928','343','宁河县','3','0');
INSERT INTO `espcms_city` VALUES ('2929','343','静海县','3','0');
INSERT INTO `espcms_city` VALUES ('2930','343','蓟县','3','0');
INSERT INTO `espcms_city` VALUES ('2931','344','城关区','3','0');
INSERT INTO `espcms_city` VALUES ('2932','344','林周县','3','0');
INSERT INTO `espcms_city` VALUES ('2933','344','当雄县','3','0');
INSERT INTO `espcms_city` VALUES ('2934','344','尼木县','3','0');
INSERT INTO `espcms_city` VALUES ('2935','344','曲水县','3','0');
INSERT INTO `espcms_city` VALUES ('2936','344','堆龙德庆县','3','0');
INSERT INTO `espcms_city` VALUES ('2937','344','达孜县','3','0');
INSERT INTO `espcms_city` VALUES ('2938','344','墨竹工卡县','3','0');
INSERT INTO `espcms_city` VALUES ('2939','345','噶尔县','3','0');
INSERT INTO `espcms_city` VALUES ('2940','345','普兰县','3','0');
INSERT INTO `espcms_city` VALUES ('2941','345','札达县','3','0');
INSERT INTO `espcms_city` VALUES ('2942','345','日土县','3','0');
INSERT INTO `espcms_city` VALUES ('2943','345','革吉县','3','0');
INSERT INTO `espcms_city` VALUES ('2944','345','改则县','3','0');
INSERT INTO `espcms_city` VALUES ('2945','345','措勤县','3','0');
INSERT INTO `espcms_city` VALUES ('2946','346','昌都县','3','0');
INSERT INTO `espcms_city` VALUES ('2947','346','江达县','3','0');
INSERT INTO `espcms_city` VALUES ('2948','346','贡觉县','3','0');
INSERT INTO `espcms_city` VALUES ('2949','346','类乌齐县','3','0');
INSERT INTO `espcms_city` VALUES ('2950','346','丁青县','3','0');
INSERT INTO `espcms_city` VALUES ('2951','346','察雅县','3','0');
INSERT INTO `espcms_city` VALUES ('2952','346','八宿县','3','0');
INSERT INTO `espcms_city` VALUES ('2953','346','左贡县','3','0');
INSERT INTO `espcms_city` VALUES ('2954','346','芒康县','3','0');
INSERT INTO `espcms_city` VALUES ('2955','346','洛隆县','3','0');
INSERT INTO `espcms_city` VALUES ('2956','346','边坝县','3','0');
INSERT INTO `espcms_city` VALUES ('2957','347','林芝县','3','0');
INSERT INTO `espcms_city` VALUES ('2958','347','工布江达县','3','0');
INSERT INTO `espcms_city` VALUES ('2959','347','米林县','3','0');
INSERT INTO `espcms_city` VALUES ('2960','347','墨脱县','3','0');
INSERT INTO `espcms_city` VALUES ('2961','347','波密县','3','0');
INSERT INTO `espcms_city` VALUES ('2962','347','察隅县','3','0');
INSERT INTO `espcms_city` VALUES ('2963','347','朗县','3','0');
INSERT INTO `espcms_city` VALUES ('2964','348','那曲县','3','0');
INSERT INTO `espcms_city` VALUES ('2965','348','嘉黎县','3','0');
INSERT INTO `espcms_city` VALUES ('2966','348','比如县','3','0');
INSERT INTO `espcms_city` VALUES ('2967','348','聂荣县','3','0');
INSERT INTO `espcms_city` VALUES ('2968','348','安多县','3','0');
INSERT INTO `espcms_city` VALUES ('2969','348','申扎县','3','0');
INSERT INTO `espcms_city` VALUES ('2970','348','索县','3','0');
INSERT INTO `espcms_city` VALUES ('2971','348','班戈县','3','0');
INSERT INTO `espcms_city` VALUES ('2972','348','巴青县','3','0');
INSERT INTO `espcms_city` VALUES ('2973','348','尼玛县','3','0');
INSERT INTO `espcms_city` VALUES ('2974','349','日喀则市','3','0');
INSERT INTO `espcms_city` VALUES ('2975','349','南木林县','3','0');
INSERT INTO `espcms_city` VALUES ('2976','349','江孜县','3','0');
INSERT INTO `espcms_city` VALUES ('2977','349','定日县','3','0');
INSERT INTO `espcms_city` VALUES ('2978','349','萨迦县','3','0');
INSERT INTO `espcms_city` VALUES ('2979','349','拉孜县','3','0');
INSERT INTO `espcms_city` VALUES ('2980','349','昂仁县','3','0');
INSERT INTO `espcms_city` VALUES ('2981','349','谢通门县','3','0');
INSERT INTO `espcms_city` VALUES ('2982','349','白朗县','3','0');
INSERT INTO `espcms_city` VALUES ('2983','349','仁布县','3','0');
INSERT INTO `espcms_city` VALUES ('2984','349','康马县','3','0');
INSERT INTO `espcms_city` VALUES ('2985','349','定结县','3','0');
INSERT INTO `espcms_city` VALUES ('2986','349','仲巴县','3','0');
INSERT INTO `espcms_city` VALUES ('2987','349','亚东县','3','0');
INSERT INTO `espcms_city` VALUES ('2988','349','吉隆县','3','0');
INSERT INTO `espcms_city` VALUES ('2989','349','聂拉木县','3','0');
INSERT INTO `espcms_city` VALUES ('2990','349','萨嘎县','3','0');
INSERT INTO `espcms_city` VALUES ('2991','349','岗巴县','3','0');
INSERT INTO `espcms_city` VALUES ('2992','350','乃东县','3','0');
INSERT INTO `espcms_city` VALUES ('2993','350','扎囊县','3','0');
INSERT INTO `espcms_city` VALUES ('2994','350','贡嘎县','3','0');
INSERT INTO `espcms_city` VALUES ('2995','350','桑日县','3','0');
INSERT INTO `espcms_city` VALUES ('2996','350','琼结县','3','0');
INSERT INTO `espcms_city` VALUES ('2997','350','曲松县','3','0');
INSERT INTO `espcms_city` VALUES ('2998','350','措美县','3','0');
INSERT INTO `espcms_city` VALUES ('2999','350','洛扎县','3','0');
INSERT INTO `espcms_city` VALUES ('3000','350','加查县','3','0');
INSERT INTO `espcms_city` VALUES ('3001','350','隆子县','3','0');
INSERT INTO `espcms_city` VALUES ('3002','350','错那县','3','0');
INSERT INTO `espcms_city` VALUES ('3003','350','浪卡子县','3','0');
INSERT INTO `espcms_city` VALUES ('3004','351','天山区','3','0');
INSERT INTO `espcms_city` VALUES ('3005','351','沙依巴克区','3','0');
INSERT INTO `espcms_city` VALUES ('3006','351','新市区','3','0');
INSERT INTO `espcms_city` VALUES ('3007','351','水磨沟区','3','0');
INSERT INTO `espcms_city` VALUES ('3008','351','头屯河区','3','0');
INSERT INTO `espcms_city` VALUES ('3009','351','达坂城区','3','0');
INSERT INTO `espcms_city` VALUES ('3010','351','米东区','3','0');
INSERT INTO `espcms_city` VALUES ('3011','351','乌鲁木齐县','3','0');
INSERT INTO `espcms_city` VALUES ('3012','352','阿克苏市','3','0');
INSERT INTO `espcms_city` VALUES ('3013','352','温宿县','3','0');
INSERT INTO `espcms_city` VALUES ('3014','352','库车县','3','0');
INSERT INTO `espcms_city` VALUES ('3015','352','沙雅县','3','0');
INSERT INTO `espcms_city` VALUES ('3016','352','新和县','3','0');
INSERT INTO `espcms_city` VALUES ('3017','352','拜城县','3','0');
INSERT INTO `espcms_city` VALUES ('3018','352','乌什县','3','0');
INSERT INTO `espcms_city` VALUES ('3019','352','阿瓦提县','3','0');
INSERT INTO `espcms_city` VALUES ('3020','352','柯坪县','3','0');
INSERT INTO `espcms_city` VALUES ('3021','353','阿拉尔市','3','0');
INSERT INTO `espcms_city` VALUES ('3022','354','库尔勒市','3','0');
INSERT INTO `espcms_city` VALUES ('3023','354','轮台县','3','0');
INSERT INTO `espcms_city` VALUES ('3024','354','尉犁县','3','0');
INSERT INTO `espcms_city` VALUES ('3025','354','若羌县','3','0');
INSERT INTO `espcms_city` VALUES ('3026','354','且末县','3','0');
INSERT INTO `espcms_city` VALUES ('3027','354','焉耆','3','0');
INSERT INTO `espcms_city` VALUES ('3028','354','和静县','3','0');
INSERT INTO `espcms_city` VALUES ('3029','354','和硕县','3','0');
INSERT INTO `espcms_city` VALUES ('3030','354','博湖县','3','0');
INSERT INTO `espcms_city` VALUES ('3031','355','博乐市','3','0');
INSERT INTO `espcms_city` VALUES ('3032','355','精河县','3','0');
INSERT INTO `espcms_city` VALUES ('3033','355','温泉县','3','0');
INSERT INTO `espcms_city` VALUES ('3034','356','呼图壁县','3','0');
INSERT INTO `espcms_city` VALUES ('3035','356','米泉市','3','0');
INSERT INTO `espcms_city` VALUES ('3036','356','昌吉市','3','0');
INSERT INTO `espcms_city` VALUES ('3037','356','阜康市','3','0');
INSERT INTO `espcms_city` VALUES ('3038','356','玛纳斯县','3','0');
INSERT INTO `espcms_city` VALUES ('3039','356','奇台县','3','0');
INSERT INTO `espcms_city` VALUES ('3040','356','吉木萨尔县','3','0');
INSERT INTO `espcms_city` VALUES ('3041','356','木垒','3','0');
INSERT INTO `espcms_city` VALUES ('3042','357','哈密市','3','0');
INSERT INTO `espcms_city` VALUES ('3043','357','伊吾县','3','0');
INSERT INTO `espcms_city` VALUES ('3044','357','巴里坤','3','0');
INSERT INTO `espcms_city` VALUES ('3045','358','和田市','3','0');
INSERT INTO `espcms_city` VALUES ('3046','358','和田县','3','0');
INSERT INTO `espcms_city` VALUES ('3047','358','墨玉县','3','0');
INSERT INTO `espcms_city` VALUES ('3048','358','皮山县','3','0');
INSERT INTO `espcms_city` VALUES ('3049','358','洛浦县','3','0');
INSERT INTO `espcms_city` VALUES ('3050','358','策勒县','3','0');
INSERT INTO `espcms_city` VALUES ('3051','358','于田县','3','0');
INSERT INTO `espcms_city` VALUES ('3052','358','民丰县','3','0');
INSERT INTO `espcms_city` VALUES ('3053','359','喀什市','3','0');
INSERT INTO `espcms_city` VALUES ('3054','359','疏附县','3','0');
INSERT INTO `espcms_city` VALUES ('3055','359','疏勒县','3','0');
INSERT INTO `espcms_city` VALUES ('3056','359','英吉沙县','3','0');
INSERT INTO `espcms_city` VALUES ('3057','359','泽普县','3','0');
INSERT INTO `espcms_city` VALUES ('3058','359','莎车县','3','0');
INSERT INTO `espcms_city` VALUES ('3059','359','叶城县','3','0');
INSERT INTO `espcms_city` VALUES ('3060','359','麦盖提县','3','0');
INSERT INTO `espcms_city` VALUES ('3061','359','岳普湖县','3','0');
INSERT INTO `espcms_city` VALUES ('3062','359','伽师县','3','0');
INSERT INTO `espcms_city` VALUES ('3063','359','巴楚县','3','0');
INSERT INTO `espcms_city` VALUES ('3064','359','塔什库尔干','3','0');
INSERT INTO `espcms_city` VALUES ('3065','360','克拉玛依市','3','0');
INSERT INTO `espcms_city` VALUES ('3066','361','阿图什市','3','0');
INSERT INTO `espcms_city` VALUES ('3067','361','阿克陶县','3','0');
INSERT INTO `espcms_city` VALUES ('3068','361','阿合奇县','3','0');
INSERT INTO `espcms_city` VALUES ('3069','361','乌恰县','3','0');
INSERT INTO `espcms_city` VALUES ('3070','362','石河子市','3','0');
INSERT INTO `espcms_city` VALUES ('3071','363','图木舒克市','3','0');
INSERT INTO `espcms_city` VALUES ('3072','364','吐鲁番市','3','0');
INSERT INTO `espcms_city` VALUES ('3073','364','鄯善县','3','0');
INSERT INTO `espcms_city` VALUES ('3074','364','托克逊县','3','0');
INSERT INTO `espcms_city` VALUES ('3075','365','五家渠市','3','0');
INSERT INTO `espcms_city` VALUES ('3076','366','阿勒泰市','3','0');
INSERT INTO `espcms_city` VALUES ('3077','366','布克赛尔','3','0');
INSERT INTO `espcms_city` VALUES ('3078','366','伊宁市','3','0');
INSERT INTO `espcms_city` VALUES ('3079','366','布尔津县','3','0');
INSERT INTO `espcms_city` VALUES ('3080','366','奎屯市','3','0');
INSERT INTO `espcms_city` VALUES ('3081','366','乌苏市','3','0');
INSERT INTO `espcms_city` VALUES ('3082','366','额敏县','3','0');
INSERT INTO `espcms_city` VALUES ('3083','366','富蕴县','3','0');
INSERT INTO `espcms_city` VALUES ('3084','366','伊宁县','3','0');
INSERT INTO `espcms_city` VALUES ('3085','366','福海县','3','0');
INSERT INTO `espcms_city` VALUES ('3086','366','霍城县','3','0');
INSERT INTO `espcms_city` VALUES ('3087','366','沙湾县','3','0');
INSERT INTO `espcms_city` VALUES ('3088','366','巩留县','3','0');
INSERT INTO `espcms_city` VALUES ('3089','366','哈巴河县','3','0');
INSERT INTO `espcms_city` VALUES ('3090','366','托里县','3','0');
INSERT INTO `espcms_city` VALUES ('3091','366','青河县','3','0');
INSERT INTO `espcms_city` VALUES ('3092','366','新源县','3','0');
INSERT INTO `espcms_city` VALUES ('3093','366','裕民县','3','0');
INSERT INTO `espcms_city` VALUES ('3094','366','和布克赛尔','3','0');
INSERT INTO `espcms_city` VALUES ('3095','366','吉木乃县','3','0');
INSERT INTO `espcms_city` VALUES ('3096','366','昭苏县','3','0');
INSERT INTO `espcms_city` VALUES ('3097','366','特克斯县','3','0');
INSERT INTO `espcms_city` VALUES ('3098','366','尼勒克县','3','0');
INSERT INTO `espcms_city` VALUES ('3099','366','察布查尔','3','0');
INSERT INTO `espcms_city` VALUES ('3100','367','盘龙区','3','0');
INSERT INTO `espcms_city` VALUES ('3101','367','五华区','3','0');
INSERT INTO `espcms_city` VALUES ('3102','367','官渡区','3','0');
INSERT INTO `espcms_city` VALUES ('3103','367','西山区','3','0');
INSERT INTO `espcms_city` VALUES ('3104','367','东川区','3','0');
INSERT INTO `espcms_city` VALUES ('3105','367','安宁市','3','0');
INSERT INTO `espcms_city` VALUES ('3106','367','呈贡县','3','0');
INSERT INTO `espcms_city` VALUES ('3107','367','晋宁县','3','0');
INSERT INTO `espcms_city` VALUES ('3108','367','富民县','3','0');
INSERT INTO `espcms_city` VALUES ('3109','367','宜良县','3','0');
INSERT INTO `espcms_city` VALUES ('3110','367','嵩明县','3','0');
INSERT INTO `espcms_city` VALUES ('3111','367','石林县','3','0');
INSERT INTO `espcms_city` VALUES ('3112','367','禄劝','3','0');
INSERT INTO `espcms_city` VALUES ('3113','367','寻甸','3','0');
INSERT INTO `espcms_city` VALUES ('3114','368','兰坪','3','0');
INSERT INTO `espcms_city` VALUES ('3115','368','泸水县','3','0');
INSERT INTO `espcms_city` VALUES ('3116','368','福贡县','3','0');
INSERT INTO `espcms_city` VALUES ('3117','368','贡山','3','0');
INSERT INTO `espcms_city` VALUES ('3118','369','宁洱','3','0');
INSERT INTO `espcms_city` VALUES ('3119','369','思茅区','3','0');
INSERT INTO `espcms_city` VALUES ('3120','369','墨江','3','0');
INSERT INTO `espcms_city` VALUES ('3121','369','景东','3','0');
INSERT INTO `espcms_city` VALUES ('3122','369','景谷','3','0');
INSERT INTO `espcms_city` VALUES ('3123','369','镇沅','3','0');
INSERT INTO `espcms_city` VALUES ('3124','369','江城','3','0');
INSERT INTO `espcms_city` VALUES ('3125','369','孟连','3','0');
INSERT INTO `espcms_city` VALUES ('3126','369','澜沧','3','0');
INSERT INTO `espcms_city` VALUES ('3127','369','西盟','3','0');
INSERT INTO `espcms_city` VALUES ('3128','370','古城区','3','0');
INSERT INTO `espcms_city` VALUES ('3129','370','宁蒗','3','0');
INSERT INTO `espcms_city` VALUES ('3130','370','玉龙','3','0');
INSERT INTO `espcms_city` VALUES ('3131','370','永胜县','3','0');
INSERT INTO `espcms_city` VALUES ('3132','370','华坪县','3','0');
INSERT INTO `espcms_city` VALUES ('3133','371','隆阳区','3','0');
INSERT INTO `espcms_city` VALUES ('3134','371','施甸县','3','0');
INSERT INTO `espcms_city` VALUES ('3135','371','腾冲县','3','0');
INSERT INTO `espcms_city` VALUES ('3136','371','龙陵县','3','0');
INSERT INTO `espcms_city` VALUES ('3137','371','昌宁县','3','0');
INSERT INTO `espcms_city` VALUES ('3138','372','楚雄市','3','0');
INSERT INTO `espcms_city` VALUES ('3139','372','双柏县','3','0');
INSERT INTO `espcms_city` VALUES ('3140','372','牟定县','3','0');
INSERT INTO `espcms_city` VALUES ('3141','372','南华县','3','0');
INSERT INTO `espcms_city` VALUES ('3142','372','姚安县','3','0');
INSERT INTO `espcms_city` VALUES ('3143','372','大姚县','3','0');
INSERT INTO `espcms_city` VALUES ('3144','372','永仁县','3','0');
INSERT INTO `espcms_city` VALUES ('3145','372','元谋县','3','0');
INSERT INTO `espcms_city` VALUES ('3146','372','武定县','3','0');
INSERT INTO `espcms_city` VALUES ('3147','372','禄丰县','3','0');
INSERT INTO `espcms_city` VALUES ('3148','373','大理市','3','0');
INSERT INTO `espcms_city` VALUES ('3149','373','祥云县','3','0');
INSERT INTO `espcms_city` VALUES ('3150','373','宾川县','3','0');
INSERT INTO `espcms_city` VALUES ('3151','373','弥渡县','3','0');
INSERT INTO `espcms_city` VALUES ('3152','373','永平县','3','0');
INSERT INTO `espcms_city` VALUES ('3153','373','云龙县','3','0');
INSERT INTO `espcms_city` VALUES ('3154','373','洱源县','3','0');
INSERT INTO `espcms_city` VALUES ('3155','373','剑川县','3','0');
INSERT INTO `espcms_city` VALUES ('3156','373','鹤庆县','3','0');
INSERT INTO `espcms_city` VALUES ('3157','373','漾濞','3','0');
INSERT INTO `espcms_city` VALUES ('3158','373','南涧','3','0');
INSERT INTO `espcms_city` VALUES ('3159','373','巍山','3','0');
INSERT INTO `espcms_city` VALUES ('3160','374','潞西市','3','0');
INSERT INTO `espcms_city` VALUES ('3161','374','瑞丽市','3','0');
INSERT INTO `espcms_city` VALUES ('3162','374','梁河县','3','0');
INSERT INTO `espcms_city` VALUES ('3163','374','盈江县','3','0');
INSERT INTO `espcms_city` VALUES ('3164','374','陇川县','3','0');
INSERT INTO `espcms_city` VALUES ('3165','375','香格里拉县','3','0');
INSERT INTO `espcms_city` VALUES ('3166','375','德钦县','3','0');
INSERT INTO `espcms_city` VALUES ('3167','375','维西','3','0');
INSERT INTO `espcms_city` VALUES ('3168','376','泸西县','3','0');
INSERT INTO `espcms_city` VALUES ('3169','376','蒙自县','3','0');
INSERT INTO `espcms_city` VALUES ('3170','376','个旧市','3','0');
INSERT INTO `espcms_city` VALUES ('3171','376','开远市','3','0');
INSERT INTO `espcms_city` VALUES ('3172','376','绿春县','3','0');
INSERT INTO `espcms_city` VALUES ('3173','376','建水县','3','0');
INSERT INTO `espcms_city` VALUES ('3174','376','石屏县','3','0');
INSERT INTO `espcms_city` VALUES ('3175','376','弥勒县','3','0');
INSERT INTO `espcms_city` VALUES ('3176','376','元阳县','3','0');
INSERT INTO `espcms_city` VALUES ('3177','376','红河县','3','0');
INSERT INTO `espcms_city` VALUES ('3178','376','金平','3','0');
INSERT INTO `espcms_city` VALUES ('3179','376','河口','3','0');
INSERT INTO `espcms_city` VALUES ('3180','376','屏边','3','0');
INSERT INTO `espcms_city` VALUES ('3181','377','临翔区','3','0');
INSERT INTO `espcms_city` VALUES ('3182','377','凤庆县','3','0');
INSERT INTO `espcms_city` VALUES ('3183','377','云县','3','0');
INSERT INTO `espcms_city` VALUES ('3184','377','永德县','3','0');
INSERT INTO `espcms_city` VALUES ('3185','377','镇康县','3','0');
INSERT INTO `espcms_city` VALUES ('3186','377','双江','3','0');
INSERT INTO `espcms_city` VALUES ('3187','377','耿马','3','0');
INSERT INTO `espcms_city` VALUES ('3188','377','沧源','3','0');
INSERT INTO `espcms_city` VALUES ('3189','378','麒麟区','3','0');
INSERT INTO `espcms_city` VALUES ('3190','378','宣威市','3','0');
INSERT INTO `espcms_city` VALUES ('3191','378','马龙县','3','0');
INSERT INTO `espcms_city` VALUES ('3192','378','陆良县','3','0');
INSERT INTO `espcms_city` VALUES ('3193','378','师宗县','3','0');
INSERT INTO `espcms_city` VALUES ('3194','378','罗平县','3','0');
INSERT INTO `espcms_city` VALUES ('3195','378','富源县','3','0');
INSERT INTO `espcms_city` VALUES ('3196','378','会泽县','3','0');
INSERT INTO `espcms_city` VALUES ('3197','378','沾益县','3','0');
INSERT INTO `espcms_city` VALUES ('3198','379','文山县','3','0');
INSERT INTO `espcms_city` VALUES ('3199','379','砚山县','3','0');
INSERT INTO `espcms_city` VALUES ('3200','379','西畴县','3','0');
INSERT INTO `espcms_city` VALUES ('3201','379','麻栗坡县','3','0');
INSERT INTO `espcms_city` VALUES ('3202','379','马关县','3','0');
INSERT INTO `espcms_city` VALUES ('3203','379','丘北县','3','0');
INSERT INTO `espcms_city` VALUES ('3204','379','广南县','3','0');
INSERT INTO `espcms_city` VALUES ('3205','379','富宁县','3','0');
INSERT INTO `espcms_city` VALUES ('3206','380','景洪市','3','0');
INSERT INTO `espcms_city` VALUES ('3207','380','勐海县','3','0');
INSERT INTO `espcms_city` VALUES ('3208','380','勐腊县','3','0');
INSERT INTO `espcms_city` VALUES ('3209','381','红塔区','3','0');
INSERT INTO `espcms_city` VALUES ('3210','381','江川县','3','0');
INSERT INTO `espcms_city` VALUES ('3211','381','澄江县','3','0');
INSERT INTO `espcms_city` VALUES ('3212','381','通海县','3','0');
INSERT INTO `espcms_city` VALUES ('3213','381','华宁县','3','0');
INSERT INTO `espcms_city` VALUES ('3214','381','易门县','3','0');
INSERT INTO `espcms_city` VALUES ('3215','381','峨山','3','0');
INSERT INTO `espcms_city` VALUES ('3216','381','新平','3','0');
INSERT INTO `espcms_city` VALUES ('3217','381','元江','3','0');
INSERT INTO `espcms_city` VALUES ('3218','382','昭阳区','3','0');
INSERT INTO `espcms_city` VALUES ('3219','382','鲁甸县','3','0');
INSERT INTO `espcms_city` VALUES ('3220','382','巧家县','3','0');
INSERT INTO `espcms_city` VALUES ('3221','382','盐津县','3','0');
INSERT INTO `espcms_city` VALUES ('3222','382','大关县','3','0');
INSERT INTO `espcms_city` VALUES ('3223','382','永善县','3','0');
INSERT INTO `espcms_city` VALUES ('3224','382','绥江县','3','0');
INSERT INTO `espcms_city` VALUES ('3225','382','镇雄县','3','0');
INSERT INTO `espcms_city` VALUES ('3226','382','彝良县','3','0');
INSERT INTO `espcms_city` VALUES ('3227','382','威信县','3','0');
INSERT INTO `espcms_city` VALUES ('3228','382','水富县','3','0');
INSERT INTO `espcms_city` VALUES ('3229','383','西湖区','3','0');
INSERT INTO `espcms_city` VALUES ('3230','383','上城区','3','0');
INSERT INTO `espcms_city` VALUES ('3231','383','下城区','3','0');
INSERT INTO `espcms_city` VALUES ('3232','383','拱墅区','3','0');
INSERT INTO `espcms_city` VALUES ('3233','383','滨江区','3','0');
INSERT INTO `espcms_city` VALUES ('3234','383','江干区','3','0');
INSERT INTO `espcms_city` VALUES ('3235','383','萧山区','3','0');
INSERT INTO `espcms_city` VALUES ('3236','383','余杭区','3','0');
INSERT INTO `espcms_city` VALUES ('3237','383','市郊','3','0');
INSERT INTO `espcms_city` VALUES ('3238','383','建德市','3','0');
INSERT INTO `espcms_city` VALUES ('3239','383','富阳市','3','0');
INSERT INTO `espcms_city` VALUES ('3240','383','临安市','3','0');
INSERT INTO `espcms_city` VALUES ('3241','383','桐庐县','3','0');
INSERT INTO `espcms_city` VALUES ('3242','383','淳安县','3','0');
INSERT INTO `espcms_city` VALUES ('3243','384','吴兴区','3','0');
INSERT INTO `espcms_city` VALUES ('3244','384','南浔区','3','0');
INSERT INTO `espcms_city` VALUES ('3245','384','德清县','3','0');
INSERT INTO `espcms_city` VALUES ('3246','384','长兴县','3','0');
INSERT INTO `espcms_city` VALUES ('3247','384','安吉县','3','0');
INSERT INTO `espcms_city` VALUES ('3248','385','南湖区','3','0');
INSERT INTO `espcms_city` VALUES ('3249','385','秀洲区','3','0');
INSERT INTO `espcms_city` VALUES ('3250','385','海宁市','3','0');
INSERT INTO `espcms_city` VALUES ('3251','385','嘉善县','3','0');
INSERT INTO `espcms_city` VALUES ('3252','385','平湖市','3','0');
INSERT INTO `espcms_city` VALUES ('3253','385','桐乡市','3','0');
INSERT INTO `espcms_city` VALUES ('3254','385','海盐县','3','0');
INSERT INTO `espcms_city` VALUES ('3255','386','婺城区','3','0');
INSERT INTO `espcms_city` VALUES ('3256','386','金东区','3','0');
INSERT INTO `espcms_city` VALUES ('3257','386','兰溪市','3','0');
INSERT INTO `espcms_city` VALUES ('3258','386','市区','3','0');
INSERT INTO `espcms_city` VALUES ('3259','386','佛堂镇','3','0');
INSERT INTO `espcms_city` VALUES ('3260','386','上溪镇','3','0');
INSERT INTO `espcms_city` VALUES ('3261','386','义亭镇','3','0');
INSERT INTO `espcms_city` VALUES ('3262','386','大陈镇','3','0');
INSERT INTO `espcms_city` VALUES ('3263','386','苏溪镇','3','0');
INSERT INTO `espcms_city` VALUES ('3264','386','赤岸镇','3','0');
INSERT INTO `espcms_city` VALUES ('3265','386','东阳市','3','0');
INSERT INTO `espcms_city` VALUES ('3266','386','永康市','3','0');
INSERT INTO `espcms_city` VALUES ('3267','386','武义县','3','0');
INSERT INTO `espcms_city` VALUES ('3268','386','浦江县','3','0');
INSERT INTO `espcms_city` VALUES ('3269','386','磐安县','3','0');
INSERT INTO `espcms_city` VALUES ('3270','387','莲都区','3','0');
INSERT INTO `espcms_city` VALUES ('3271','387','龙泉市','3','0');
INSERT INTO `espcms_city` VALUES ('3272','387','青田县','3','0');
INSERT INTO `espcms_city` VALUES ('3273','387','缙云县','3','0');
INSERT INTO `espcms_city` VALUES ('3274','387','遂昌县','3','0');
INSERT INTO `espcms_city` VALUES ('3275','387','松阳县','3','0');
INSERT INTO `espcms_city` VALUES ('3276','387','云和县','3','0');
INSERT INTO `espcms_city` VALUES ('3277','387','庆元县','3','0');
INSERT INTO `espcms_city` VALUES ('3278','387','景宁','3','0');
INSERT INTO `espcms_city` VALUES ('3279','388','海曙区','3','0');
INSERT INTO `espcms_city` VALUES ('3280','388','江东区','3','0');
INSERT INTO `espcms_city` VALUES ('3281','388','江北区','3','0');
INSERT INTO `espcms_city` VALUES ('3282','388','镇海区','3','0');
INSERT INTO `espcms_city` VALUES ('3283','388','北仑区','3','0');
INSERT INTO `espcms_city` VALUES ('3284','388','鄞州区','3','0');
INSERT INTO `espcms_city` VALUES ('3285','388','余姚市','3','0');
INSERT INTO `espcms_city` VALUES ('3286','388','慈溪市','3','0');
INSERT INTO `espcms_city` VALUES ('3287','388','奉化市','3','0');
INSERT INTO `espcms_city` VALUES ('3288','388','象山县','3','0');
INSERT INTO `espcms_city` VALUES ('3289','388','宁海县','3','0');
INSERT INTO `espcms_city` VALUES ('3290','389','越城区','3','0');
INSERT INTO `espcms_city` VALUES ('3291','389','上虞市','3','0');
INSERT INTO `espcms_city` VALUES ('3292','389','嵊州市','3','0');
INSERT INTO `espcms_city` VALUES ('3293','389','绍兴县','3','0');
INSERT INTO `espcms_city` VALUES ('3294','389','新昌县','3','0');
INSERT INTO `espcms_city` VALUES ('3295','389','诸暨市','3','0');
INSERT INTO `espcms_city` VALUES ('3296','390','椒江区','3','0');
INSERT INTO `espcms_city` VALUES ('3297','390','黄岩区','3','0');
INSERT INTO `espcms_city` VALUES ('3298','390','路桥区','3','0');
INSERT INTO `espcms_city` VALUES ('3299','390','温岭市','3','0');
INSERT INTO `espcms_city` VALUES ('3300','390','临海市','3','0');
INSERT INTO `espcms_city` VALUES ('3301','390','玉环县','3','0');
INSERT INTO `espcms_city` VALUES ('3302','390','三门县','3','0');
INSERT INTO `espcms_city` VALUES ('3303','390','天台县','3','0');
INSERT INTO `espcms_city` VALUES ('3304','390','仙居县','3','0');
INSERT INTO `espcms_city` VALUES ('3305','391','鹿城区','3','0');
INSERT INTO `espcms_city` VALUES ('3306','391','龙湾区','3','0');
INSERT INTO `espcms_city` VALUES ('3307','391','瓯海区','3','0');
INSERT INTO `espcms_city` VALUES ('3308','391','瑞安市','3','0');
INSERT INTO `espcms_city` VALUES ('3309','391','乐清市','3','0');
INSERT INTO `espcms_city` VALUES ('3310','391','洞头县','3','0');
INSERT INTO `espcms_city` VALUES ('3311','391','永嘉县','3','0');
INSERT INTO `espcms_city` VALUES ('3312','391','平阳县','3','0');
INSERT INTO `espcms_city` VALUES ('3313','391','苍南县','3','0');
INSERT INTO `espcms_city` VALUES ('3314','391','文成县','3','0');
INSERT INTO `espcms_city` VALUES ('3315','391','泰顺县','3','0');
INSERT INTO `espcms_city` VALUES ('3316','392','定海区','3','0');
INSERT INTO `espcms_city` VALUES ('3317','392','普陀区','3','0');
INSERT INTO `espcms_city` VALUES ('3318','392','岱山县','3','0');
INSERT INTO `espcms_city` VALUES ('3319','392','嵊泗县','3','0');
INSERT INTO `espcms_city` VALUES ('3320','393','衢州市','3','0');
INSERT INTO `espcms_city` VALUES ('3321','393','江山市','3','0');
INSERT INTO `espcms_city` VALUES ('3322','393','常山县','3','0');
INSERT INTO `espcms_city` VALUES ('3323','393','开化县','3','0');
INSERT INTO `espcms_city` VALUES ('3324','393','龙游县','3','0');
INSERT INTO `espcms_city` VALUES ('3325','394','合川区','3','0');
INSERT INTO `espcms_city` VALUES ('3326','394','江津区','3','0');
INSERT INTO `espcms_city` VALUES ('3327','394','南川区','3','0');
INSERT INTO `espcms_city` VALUES ('3328','394','永川区','3','0');
INSERT INTO `espcms_city` VALUES ('3329','394','南岸区','3','0');
INSERT INTO `espcms_city` VALUES ('3330','394','渝北区','3','0');
INSERT INTO `espcms_city` VALUES ('3331','394','万盛区','3','0');
INSERT INTO `espcms_city` VALUES ('3332','394','大渡口区','3','0');
INSERT INTO `espcms_city` VALUES ('3333','394','万州区','3','0');
INSERT INTO `espcms_city` VALUES ('3334','394','北碚区','3','0');
INSERT INTO `espcms_city` VALUES ('3335','394','沙坪坝区','3','0');
INSERT INTO `espcms_city` VALUES ('3336','394','巴南区','3','0');
INSERT INTO `espcms_city` VALUES ('3337','394','涪陵区','3','0');
INSERT INTO `espcms_city` VALUES ('3338','394','江北区','3','0');
INSERT INTO `espcms_city` VALUES ('3339','394','九龙坡区','3','0');
INSERT INTO `espcms_city` VALUES ('3340','394','渝中区','3','0');
INSERT INTO `espcms_city` VALUES ('3341','394','黔江开发区','3','0');
INSERT INTO `espcms_city` VALUES ('3342','394','长寿区','3','0');
INSERT INTO `espcms_city` VALUES ('3343','394','双桥区','3','0');
INSERT INTO `espcms_city` VALUES ('3344','394','綦江县','3','0');
INSERT INTO `espcms_city` VALUES ('3345','394','潼南县','3','0');
INSERT INTO `espcms_city` VALUES ('3346','394','铜梁县','3','0');
INSERT INTO `espcms_city` VALUES ('3347','394','大足县','3','0');
INSERT INTO `espcms_city` VALUES ('3348','394','荣昌县','3','0');
INSERT INTO `espcms_city` VALUES ('3349','394','璧山县','3','0');
INSERT INTO `espcms_city` VALUES ('3350','394','垫江县','3','0');
INSERT INTO `espcms_city` VALUES ('3351','394','武隆县','3','0');
INSERT INTO `espcms_city` VALUES ('3352','394','丰都县','3','0');
INSERT INTO `espcms_city` VALUES ('3353','394','城口县','3','0');
INSERT INTO `espcms_city` VALUES ('3354','394','梁平县','3','0');
INSERT INTO `espcms_city` VALUES ('3355','394','开县','3','0');
INSERT INTO `espcms_city` VALUES ('3356','394','巫溪县','3','0');
INSERT INTO `espcms_city` VALUES ('3357','394','巫山县','3','0');
INSERT INTO `espcms_city` VALUES ('3358','394','奉节县','3','0');
INSERT INTO `espcms_city` VALUES ('3359','394','云阳县','3','0');
INSERT INTO `espcms_city` VALUES ('3360','394','忠县','3','0');
INSERT INTO `espcms_city` VALUES ('3361','394','石柱','3','0');
INSERT INTO `espcms_city` VALUES ('3362','394','彭水','3','0');
INSERT INTO `espcms_city` VALUES ('3363','394','酉阳','3','0');
INSERT INTO `espcms_city` VALUES ('3364','394','秀山','3','0');
INSERT INTO `espcms_city` VALUES ('3365','395','沙田区','3','0');
INSERT INTO `espcms_city` VALUES ('3366','395','东区','3','0');
INSERT INTO `espcms_city` VALUES ('3367','395','观塘区','3','0');
INSERT INTO `espcms_city` VALUES ('3368','395','黄大仙区','3','0');
INSERT INTO `espcms_city` VALUES ('3369','395','九龙城区','3','0');
INSERT INTO `espcms_city` VALUES ('3370','395','屯门区','3','0');
INSERT INTO `espcms_city` VALUES ('3371','395','葵青区','3','0');
INSERT INTO `espcms_city` VALUES ('3372','395','元朗区','3','0');
INSERT INTO `espcms_city` VALUES ('3373','395','深水埗区','3','0');
INSERT INTO `espcms_city` VALUES ('3374','395','西贡区','3','0');
INSERT INTO `espcms_city` VALUES ('3375','395','大埔区','3','0');
INSERT INTO `espcms_city` VALUES ('3376','395','湾仔区','3','0');
INSERT INTO `espcms_city` VALUES ('3377','395','油尖旺区','3','0');
INSERT INTO `espcms_city` VALUES ('3378','395','北区','3','0');
INSERT INTO `espcms_city` VALUES ('3379','395','南区','3','0');
INSERT INTO `espcms_city` VALUES ('3380','395','荃湾区','3','0');
INSERT INTO `espcms_city` VALUES ('3381','395','中西区','3','0');
INSERT INTO `espcms_city` VALUES ('3382','395','离岛区','3','0');
INSERT INTO `espcms_city` VALUES ('3383','396','澳门','3','0');
INSERT INTO `espcms_city` VALUES ('3384','397','台北','3','0');
INSERT INTO `espcms_city` VALUES ('3385','397','高雄','3','0');
INSERT INTO `espcms_city` VALUES ('3386','397','基隆','3','0');
INSERT INTO `espcms_city` VALUES ('3387','397','台中','3','0');
INSERT INTO `espcms_city` VALUES ('3388','397','台南','3','0');
INSERT INTO `espcms_city` VALUES ('3389','397','新竹','3','0');
INSERT INTO `espcms_city` VALUES ('3390','397','嘉义','3','0');
INSERT INTO `espcms_city` VALUES ('3391','397','宜兰县','3','0');
INSERT INTO `espcms_city` VALUES ('3392','397','桃园县','3','0');
INSERT INTO `espcms_city` VALUES ('3393','397','苗栗县','3','0');
INSERT INTO `espcms_city` VALUES ('3394','397','彰化县','3','0');
INSERT INTO `espcms_city` VALUES ('3395','397','南投县','3','0');
INSERT INTO `espcms_city` VALUES ('3396','397','云林县','3','0');
INSERT INTO `espcms_city` VALUES ('3397','397','屏东县','3','0');
INSERT INTO `espcms_city` VALUES ('3398','397','台东县','3','0');
INSERT INTO `espcms_city` VALUES ('3399','397','花莲县','3','0');
INSERT INTO `espcms_city` VALUES ('3400','397','澎湖县','3','0');
INSERT INTO `espcms_city` VALUES ('3401','3','合肥','2','0');
INSERT INTO `espcms_city` VALUES ('3402','3401','庐阳区','3','0');
INSERT INTO `espcms_city` VALUES ('3403','3401','瑶海区','3','0');
INSERT INTO `espcms_city` VALUES ('3404','3401','蜀山区','3','0');
INSERT INTO `espcms_city` VALUES ('3405','3401','包河区','3','0');
INSERT INTO `espcms_city` VALUES ('3406','3401','长丰县','3','0');
INSERT INTO `espcms_city` VALUES ('3407','3401','肥东县','3','0');
INSERT INTO `espcms_city` VALUES ('3408','3401','肥西县','3','0');
INSERT INTO `espcms_config` VALUES ('5','3','icpbeian','ICP备案','请根据网站所在地相关法律申请网站备案，如没有请为空','','string','','1','0','');
INSERT INTO `espcms_config` VALUES ('6','1','is_close','网站状态','如果关闭网站，请对“关闭网站说明”进行设置','0','bool','关闭网站,开通网站','1','0','');
INSERT INTO `espcms_config` VALUES ('7','5','admine_mail','管理员Email','接收用户留言和网站提醒相关信息','601450868@qq.com','string','','1','0','');
INSERT INTO `espcms_config` VALUES ('8','4','domain','网站网址','请填写当前网站域名，注意网址后加上“/”,如http://www.ecisp.cn/','http://wa.xubo245.com/wa/','string','','1','0','');
INSERT INTO `espcms_config` VALUES ('9','6','is_log','日志记录','建议启用，以保留管理网后台操作日志','1','bool','启用日志记录,关闭日志记录','1','0','');
INSERT INTO `espcms_config` VALUES ('10','9','is_email','开启邮件发送','如启用，请对以下SMTP参数进行设定','0','bool','启用邮件发送,关闭邮件发送','6','0','');
INSERT INTO `espcms_config` VALUES ('11','11','smtp_server','SMTP服务器','请确认邮箱必须支持SMTP发送功能！','','string','','6','0','');
INSERT INTO `espcms_config` VALUES ('12','12','smtp_username','SMTP用户名','邮件登陆用户名','','string','','6','0','');
INSERT INTO `espcms_config` VALUES ('13','12','smtp_password','SMTP密码','邮件登陆密码','','password','','6','0','');
INSERT INTO `espcms_config` VALUES ('14','7','cli_time','时区设置(默认+8)','请填写时区时差，中国时区为+8','8','int','','1','0','');
INSERT INTO `espcms_config` VALUES ('15','12','is_html','内容生成方式','建议启用静态生成以提高SEO','0','bool','启用静态生成,启用动态页面','1','0','');
INSERT INTO `espcms_config` VALUES ('99','13','file_fileex','生成格式设置','请根据服务器访问优先级进行设置，默认为html','html','selectkey','html|html,htm|htm,shtml|shtml','1','0','');
INSERT INTO `espcms_config` VALUES ('18','6','is_gzip','开启GZip功能','建议开启，以提高网页访问速度','0','bool','启用GZIP压缩,关闭GZIP压缩','1','0','');
INSERT INTO `espcms_config` VALUES ('19','9','default_lng','后台默认站点','用于控制后台默认的站点显示数据','cn','select','','1','0','lngarray');
INSERT INTO `espcms_config` VALUES ('20','12','max_page','后台翻页按钮数量','请填写整数数字，建议填写值不要大于5','5','int','','99','0','');
INSERT INTO `espcms_config` VALUES ('21','12','max_list','后台每页内容数量','请填写整数数字，建议填写数字不要大于30','20','int','','99','0','');
INSERT INTO `espcms_config` VALUES ('22','1','upfile_dir','上传文件夹','请在字符最后加上“/”,例如：“upfile/”','upfile/','string','','4','0','');
INSERT INTO `espcms_config` VALUES ('23','5','upfile_maxsize','文件大小限制','不能超过服务器允许上传的最大设置，一般服务器不能超过2M','2000000','selectkey','200000|200K,500000|500K,1000000|1M,2000000|2M,3000000|3M,5000000|5M,10000000|10M,20000000|20M,30000000|30M,40000000|40M,50000000|50M,100000000|100M,150000000|150M,200000000|200M,250000000|250M','4','0','');
INSERT INTO `espcms_config` VALUES ('24','9','img_width','图片宽','单位：px','200','int','','4','0','');
INSERT INTO `espcms_config` VALUES ('25','10','img_height','图片高','单位：px','200','int','','4','0','');
INSERT INTO `espcms_config` VALUES ('26','11','img_bgcolor','图片背景颜色','请填写二进制颜色，白色：#ffffff 黑色：#000000 ','#ffffff','font','','4','0','');
INSERT INTO `espcms_config` VALUES ('27','2','upfile_pictype','允许上传图片格式','请用\"|\"分割格式，例如jpg|png|gif','jpg|png|gif','string','','4','0','');
INSERT INTO `espcms_config` VALUES ('28','50','upfile_maxalbum','产品上传图片数量','用于内容发布时可上传的图片最大数量，建议不要大于5','3','int','','99','0','');
INSERT INTO `espcms_config` VALUES ('29','12','img_quality','图片质量','图片质量越高占用空间越大','80','selectkey','50|中,80|高,100|非常高','4','0','');
INSERT INTO `espcms_config` VALUES ('30','13','img_issmallpic','是否生成缩略图','','0','bool','启用缩略图生成,禁用缩略图生成','4','0','');
INSERT INTO `espcms_config` VALUES ('31','3','uifile_movertype','允许上传视频格式','请用\"|\"分割格式，例如swf|flv|mpg','swf|mpg|flv','string','','4','0','');
INSERT INTO `espcms_config` VALUES ('32','50','img_iswater','水印类型','','0','selectkey','0|不添加水印,1|添加文字水印,2|添加图片水印','4','0','');
INSERT INTO `espcms_config` VALUES ('33','50','img_wmt_text','水印文字','如水印类型文字水印,此项必填','EasySitePM','string','','4','0','');
INSERT INTO `espcms_config` VALUES ('34','50','img_wmt_size','水印文字大小','建议不超过20个象素','10','int','','4','0','');
INSERT INTO `espcms_config` VALUES ('35','50','img_wmt_color','水印字体颜色','请填写二进制颜色，白色：#ffffff 黑色：#000000 ','#ffffff','font','','4','0','');
INSERT INTO `espcms_config` VALUES ('36','50','img_wmt_pos','水印文字放置位置','','9','selectkey','1|顶部居左,2|顶部居中,3|顶部居右,4|中间居左,5|居中,6|中间居右,7|底部居左,8|底部居中,9|底部居右','4','0','');
INSERT INTO `espcms_config` VALUES ('37','50','img_wmt_transparent','水印文字透明度','','20','selectkey','20|非常透明,50|一般透明,100|不透明','4','0','');
INSERT INTO `espcms_config` VALUES ('38','50','img_wmi_file','水印图片文件名','如水印类型等于2,此项必填，请将水印图片直接保存在/public/目录下','watermark.png','font','','4','0','');
INSERT INTO `espcms_config` VALUES ('39','50','img_wmi_pos','水印图片放置位置','','9','selectkey','1|顶部居左,2|顶部居中,3|顶部居右,4|中间居左,5|居中,6|中间居右,7|底部居左,8|底部居中,9|底部居右','4','0','');
INSERT INTO `espcms_config` VALUES ('40','50','img_wmi_transparent','水印图片透明度','','50','selectkey','20|非常透明,50|一般透明,100|不透明','4','0','');
INSERT INTO `espcms_config` VALUES ('41','15','file_htmldir','HTML生成目录','请在字符最后加上“/”,为空则会默认在根目录。例如：“html/”','html/','string','','1','0','');
INSERT INTO `espcms_config` VALUES ('42','15','file_sitemapdir','SEO生成文件目录','请在字符最后加上“/”,例如：“sitemap/”','sitemap/','string','','99','0','');
INSERT INTO `espcms_config` VALUES ('43','50','file_sqlbakdir','sql备份文件目录','请在字符最后加上“/”,例如：“datecache/backup/”','datacache/backup/','string','','99','0','');
INSERT INTO `espcms_config` VALUES ('44','2','mem_isseccode','会员登陆验证码','建议开启，以加强会员信息安全','1','bool','开启会员登陆验证,禁用会员登陆验证','2','0','');
INSERT INTO `espcms_config` VALUES ('45','50','default_templates','当前模板','请填写模板文件包名称,并确保在templates/目录下面已存在该文件包','default','font','','99','0','');
INSERT INTO `espcms_config` VALUES ('46','50','is_caching','数据缓存开启类型','系统有自动更新清除缓存功能，建议开启','0','bool','开启数据库缓存,关闭数据库缓存','1','0','');
INSERT INTO `espcms_config` VALUES ('47','50','cache_time','缓存更新时间','','3600','selectkey','1800|半小时,3600|1小时,7200|2小时,43200|半天,86400|1天','1','0','');
INSERT INTO `espcms_config` VALUES ('48','50','templates_fileex','模板文件扩展名','根据模板文件扩展名来填写，建议使用HTML格式为默认值','html','font','','99','0','');
INSERT INTO `espcms_config` VALUES ('101','41','input_iskey','内容关键字获取','启用会导致发布时间变的稍长','0','bool','启用关键字自动获取,禁用关键字自动获取','99','0','');
INSERT INTO `espcms_config` VALUES ('52','6','order_shipping','默认物流方式','请填写物流方式ID值','1','int','','99','0','');
INSERT INTO `espcms_config` VALUES ('53','7','order_pay','默认支付方式','请填写支付方式ID值','1','int','','99','0','');
INSERT INTO `espcms_config` VALUES ('54','8','order_integral','奖励积分比例','请填写整数型数字，此积分比例根据支付总金额自动划入会员帐户','10','int','','3','0','');
INSERT INTO `espcms_config` VALUES ('55','9','order_discount','商品默认折扣','请填写整数型数字，此折扣会影响商品订购总金额','100','int','','3','0','');
INSERT INTO `espcms_config` VALUES ('56','50','order_companyname','商家公司全称','用于打印输出显示，请填写','','string','','3','0','');
INSERT INTO `espcms_config` VALUES ('57','50','order_contact','联系人','','','font','','3','0','');
INSERT INTO `espcms_config` VALUES ('58','50','order_province','所处省','','','font','','3','0','');
INSERT INTO `espcms_config` VALUES ('59','50','order_city','城市','','','font','','3','0','');
INSERT INTO `espcms_config` VALUES ('60','50','order_add','详细地址','','','string','','3','0','');
INSERT INTO `espcms_config` VALUES ('61','50','order_post','邮编','','','font','','3','0','');
INSERT INTO `espcms_config` VALUES ('62','50','order_tel','电话','','','string','','3','0','');
INSERT INTO `espcms_config` VALUES ('63','50','order_moblie','手机','','','string','','3','0','');
INSERT INTO `espcms_config` VALUES ('64','3','mem_isemail','会员邮箱验证激活','如开启，请确保系统开启邮件发送功能','0','bool','开启会员邮件验证,禁用会员邮件验证','2','0','');
INSERT INTO `espcms_config` VALUES ('65','50','mem_isucenter','Ucenter接口状态','如启用请正确填写UCenter信息，否则会导致会员注册错误','0','bool','绑定UCenter,禁用UCenter','2','0','');
INSERT INTO `espcms_config` VALUES ('66','50','mem_ucdbhost','Ucenter数据库地址','请填写UCenter数据库访问地址，默认为“localhost”','localhost','string','','2','0','');
INSERT INTO `espcms_config` VALUES ('67','50','mem_ucdbuser','Ucenter数据库访问名','','root','font','','2','0','');
INSERT INTO `espcms_config` VALUES ('68','50','mem_ucdbpw','Ucenter数据库密码','','','font','','2','0','');
INSERT INTO `espcms_config` VALUES ('69','50','mem_ucdbname','Ucenter数据库名称','','ucenter','font','','2','0','');
INSERT INTO `espcms_config` VALUES ('70','50','mem_ucdbchart','Ucenter数据库编码','','utf8','font','','2','0','');
INSERT INTO `espcms_config` VALUES ('71','50','mem_ucdbtable','Ucenter表单前缀','','uc_','font','','2','0','');
INSERT INTO `espcms_config` VALUES ('72','50','mem_uckey','通信密钥','UCenter通信密钥必须与此设置保持一致','','text','','2','0','');
INSERT INTO `espcms_config` VALUES ('73','50','mem_ucapi','UCenter访问地址','请填写UCenter 通信的接口 URL，结尾请不要加“/”','','string','','2','0','');
INSERT INTO `espcms_config` VALUES ('74','50','mem_ucchart','UCenter系统编码','默认为UTF-8','utf-8','font','','2','0','');
INSERT INTO `espcms_config` VALUES ('75','50','mem_ucapiid','UCenter应用ID','请填写当前应用在UCenter当中的序列ID','0','int','','2','0','');
INSERT INTO `espcms_config` VALUES ('76','5','mem_lock','不允许注册用户名','请将用户名用“,”分开','www,bbs,demo,test,ftp,mail,user,users,admin,administrator','text','','2','0','');
INSERT INTO `espcms_config` VALUES ('100','2','input_isdes','内容简介获取','启用可能导致发布时间变的稍长','1','bool','启用内容简介自动获取,禁用内容简介自动获取','6','0','');
INSERT INTO `espcms_config` VALUES ('78','4','mem_isintegral','会员积分策略','如启用，则网站相关操作会增加积分','1','bool','启用积分策略,禁用积分策略','99','0','');
INSERT INTO `espcms_config` VALUES ('79','14','is_imcall','即时通显示类型','如启用，请在页面上面增加即时通标签即可','1','bool','前台开通即时通,前台关闭即时通','6','0','');
INSERT INTO `espcms_config` VALUES ('116','50','http_pathtype','链接地址路径方式','建议使用绝对路径，以确保网站无死链接','0','bool','绝对路径(建议),相对路径','1','0','');
INSERT INTO `espcms_config` VALUES ('117','14','entrance_file','首页生成文件名','请根据服务器访问优先级进行设置，默认为index','index','selectkey','index|index,default|default','1','0','');
INSERT INTO `espcms_config` VALUES ('85','2','close_content','关闭网站说明','如果启用关闭功能，建议填写此项','抱歉：网站正在维护中，给您带来不便深表歉意！','text','','1','0','');
INSERT INTO `espcms_config` VALUES ('86','9','bbs_filter','过滤字组','多个词组用\"|\"隔开，例如“黄色|AV”','江泽民|AV|邓小平|毛泽东|SEX','text','','5','0','');
INSERT INTO `espcms_config` VALUES ('87','4','bbs_isclass','留言审核模式','如启用，内容留言经审核后才会显示','0','bool','启用发布审核,禁用发布审核','5','0','');
INSERT INTO `espcms_config` VALUES ('89','5','bbs_isseccode','验证码','建议开启，以避免垃圾信息发布','0','bool','启用验证码,禁用验证码','5','0','');
INSERT INTO `espcms_config` VALUES ('160','1','acmessagestr','','内容留言设置（用于控制内容留言相关属性）','','','','5','1','');
INSERT INTO `espcms_config` VALUES ('91','4','input_isdellink','删除非站内链接','用于发布的时候删除内容上非本站链接','0','bool','启用非本站链接删除,禁用非本站链接删除','6','0','');
INSERT INTO `espcms_config` VALUES ('92','3','input_isdescription','内容简介获取长度','建议不超过默认250个字符','250','int','','6','0','');
INSERT INTO `espcms_config` VALUES ('93','42','input_iskeyword','关键字获取数量','建议不超过默认10个词组','10','int','','99','0','');
INSERT INTO `espcms_config` VALUES ('94','50','input_author','默认编辑','','轻舞飞沙','font','','99','0','');
INSERT INTO `espcms_config` VALUES ('95','50','input_source','默认来源','','Ecisp.CN','font','','99','0','');
INSERT INTO `espcms_config` VALUES ('96','5','input_click','默认点击数','','0','int','','6','0','');
INSERT INTO `espcms_config` VALUES ('97','6','is_keylink','内链接启用方式','启用会稍影响发布速度，但会增加SEO功能，建议启用','0','bool','启用内链接(建议),关闭内链接','6','0','');
INSERT INTO `espcms_config` VALUES ('98','7','input_color','标题默认颜色','请填写二进制颜色，白色：#ffffff 黑色：#000000 ','#000000','font','','6','0','');
INSERT INTO `espcms_config` VALUES ('104','10','order_snfont','订单编号格式字符','如编号：ESP20**，其中ESP为格式字符，可为任意英文字符','ESP-','font','','3','0','');
INSERT INTO `espcms_config` VALUES ('105','6','bbs_inputtime','防刷时间设置','请填写同一用户发布时间间隔设置，以秒计算','0','selectkey','0|不限制,30|30秒,60|1分钟,120|2分钟,300|5分钟,600|10分钟,1800|30分钟,3600|1小时,21600|半天,86400|1天','5','0','');
INSERT INTO `espcms_config` VALUES ('106','2','bbs_max_list','内容留言列表数量','','15','selectkey','5|5条,10|10条,15|15条,20|20条','5','0','');
INSERT INTO `espcms_config` VALUES ('162','10','bbs_username','禁止用户名','所设置的用户名不能提交留言，多个用户名用\"|\"隔开','','text','','5','0','');
INSERT INTO `espcms_config` VALUES ('111','15','call_style','即时通外观样式','可以修改样式来自定外观','1','selectkey','1|蓝色样式,2|绿色样式,3|紫色样式','6','0','');
INSERT INTO `espcms_config` VALUES ('129','70','scode_bgcolor','验证码背景色','请填写二进制颜色，如白色：#ffffff','#B5EBFC','font','','1','0','');
INSERT INTO `espcms_config` VALUES ('115','50','input_hot','热门点击数量','当内容达到设定的点击数，将会被视为热门信息！请填取整数值!','100','int','','99','0','');
INSERT INTO `espcms_config` VALUES ('113','14','is_inputhtml','发布内容即时生成方式','启用则在发布或修改内容时会生成页面，仅限于开启静态','1','bool','启用即时生成,关闭即时生成','99','0','');
INSERT INTO `espcms_config` VALUES ('114','11','order_moneytype','货币种类','请输入货币种类字符','￥','font','','3','0','');
INSERT INTO `espcms_config` VALUES ('118','11','home_lng','前台默认站点','','cn','select','','1','0','lngarray');
INSERT INTO `espcms_config` VALUES ('119','12','is_rewrite','伪静态方式','','0','bool','启用伪静态(请将htaccess.txt更改为.htaccess并复制到根目录及相关语言目录内),关闭伪静态','1','0','');
INSERT INTO `espcms_config` VALUES ('120','5','order_menu','订单导航显示方式','如启用，可在语言包中修改名称','1','bool','显示导航栏订单链接,隐藏导航栏订单链接','3','0','');
INSERT INTO `espcms_config` VALUES ('121','1','member_menu','会员导航栏显示','如启用，可在语言包中修改其名称','1','bool','显示导航栏会员链接,隐藏导航栏会员链接','2','0','');
INSERT INTO `espcms_config` VALUES ('164','2','is_wap','WAP网站状态','如果开启，则将允许手机访问WAP网站','1','bool','开通WAP网站访问,关闭WAP网站访问','1','0','');
INSERT INTO `espcms_config` VALUES ('123','3','is_anonymous','留言权限','如启用则无需会员注册即可发布','1','bool','开启匿名留言,关闭匿名留言','5','0','');
INSERT INTO `espcms_config` VALUES ('161','8','bbsotherstr','','公共留言设置（用于内容留言及留言论坛设置）','','','','5','1','');
INSERT INTO `espcms_config` VALUES ('126','12','order_max_list','订单列表显示数','会员订单列表查看显示数量，请填写大于0的整数','10','int','','3','0','');
INSERT INTO `espcms_config` VALUES ('127','16','call_type','即时通显示方式','','1','selectkey','1|滑动显示,2|点击缩进滑动显示','6','0','');
INSERT INTO `espcms_config` VALUES ('128','17','call_position','即时通显示位置','如果选用缩进滑动类型，则只能显示左边','2','selectkey','1|左边,2|右边','6','0','');
INSERT INTO `espcms_config` VALUES ('130','70','scode_adulterate','验证码干扰码','','1','bool','增加验证码背景干扰线条,纯色背景','1','0','');
INSERT INTO `espcms_config` VALUES ('131','70','scode_shadow','验证码阴影','','0','bool','增加验证码字体阴影,无字体阴影','1','0','');
INSERT INTO `espcms_config` VALUES ('132','70','scode_fontcolor','验证码字体颜色','请填写二进制颜色，如白色：#ffffff','#818CC1','font','','1','0','');
INSERT INTO `espcms_config` VALUES ('133','50','is_inputclose','继续发布控制','如启用，则发布内容时不关闭当前窗口等待继续发布','1','bool','启用继续发布,禁用继续发布','99','0','');
INSERT INTO `espcms_config` VALUES ('134','50','cer_file','codefile','easysiteSN.cer','','string','','99','0','');
INSERT INTO `espcms_config` VALUES ('135','50','cer_key','key','key','','string','','99','0','');
INSERT INTO `espcms_config` VALUES ('137','50','is_lancode','cn默认代码','用于默认语言的代码定义','cn','string','','99','0','');
INSERT INTO `espcms_config` VALUES ('138','10','is_alonelng','单语言网站','如果启动单语言网站，则网站将在静态根目录下面生成','0','bool','启用单语言网站,启用多语言网站','1','0','');
INSERT INTO `espcms_config` VALUES ('139','3','is_enquiry_memclass','询价权限','建议开启会员询价功能！','0','bool','仅允许会员询价,允许所有人询价','3','0','');
INSERT INTO `espcms_config` VALUES ('140','2','enquiry_menu','询价导航显示方式','启用导航后，可在语言包中修改显示名称','1','bool','显示导航栏询价链接,隐藏导航栏询价链接','3','0','');
INSERT INTO `espcms_config` VALUES ('141','4','sitename','网站名称','请真实填写网站名称','花江高新环保机砖厂','string','','1','0','');
INSERT INTO `espcms_config` VALUES ('142','6','mem_isclass','会员审核类型','如启用审核，则会员注册需要审核后才能登陆','0','bool','审核,不审核','2','0','');
INSERT INTO `espcms_config` VALUES ('143','4','upfile_filetype','允许上传文件格式','请用\"|\"分割格式，例如zip|rar|doc|xls','zip|rar|doc|xls','string','','4','0','');
INSERT INTO `espcms_config` VALUES ('144','8','title_htmlstr','','网页访问方式及相关属性','1','','','1','1','');
INSERT INTO `espcms_config` VALUES ('145','50','title_scode','','验证码安全设置','2','','','1','1','');
INSERT INTO `espcms_config` VALUES ('146','9','title_ucenter','','UCenter会员注册同步插件参数设置','3','','','2','1','');
INSERT INTO `espcms_config` VALUES ('147','1','title_enquiry','','询价属性设置','4','','','3','1','');
INSERT INTO `espcms_config` VALUES ('148','4','title_order','','订单属性设置','6','','','3','1','');
INSERT INTO `espcms_config` VALUES ('149','13','title_orderprin','','订单打印属性设置','5','','','3','1','');
INSERT INTO `espcms_config` VALUES ('150','8','title_img','','上传图片属性','','','','4','1','');
INSERT INTO `espcms_config` VALUES ('151','1','title_article','','内容发布属性设置','','','','6','1','');
INSERT INTO `espcms_config` VALUES ('152','8','title_mail','','邮件发送参数设置','','','','6','1','');
INSERT INTO `espcms_config` VALUES ('153','13','title_call','','即时通工具设置','','','','6','1','');
INSERT INTO `espcms_config` VALUES ('154','10','smtp_type','邮件发送方式','','2','selectkey','1|通过PHP函数发送(以下参数无需填写用户名和密码),2|通过连接SMTP邮件服务器发送(以下所有选项必填),3|通过Sendmail发送邮件','6','0','');
INSERT INTO `espcms_config` VALUES ('155','10','mail_cat','邮件头的分隔符','','1','selectkey','1|使用 CRLF 作为分隔符(通常为 Windows 主机),2|使用 LF 作为分隔符(通常为 Unix/Linux主机),3|使用 CR 作为分隔符(通常为 Mac 主机)','6','0','');
INSERT INTO `espcms_config` VALUES ('158','8','mem_isaddress','下拉地区选项','如启动，会员国家地区等属性则下拉选择，否则自主填写','1','bool','开启城市地区下拉选择,由会员自主填写','2','0','');
INSERT INTO `espcms_config` VALUES ('156','11','smtp_port','SMTP服务器端口','','25','font','','6','0','');
INSERT INTO `espcms_config` VALUES ('157','11','mail_send','发送邮箱','请填写发送邮件全称，如user@ecisp.cn','','string','','6','0','');
INSERT INTO `espcms_config` VALUES ('159','1','mem_isclose','会员功能状态','如关闭，则网站不再允许使用相关会员所有功能','1','bool','开启会员功能,关闭会员功能','2','0','');
INSERT INTO `espcms_config` VALUES ('165','7','mem_did','注册条款关联ID','多个不同语言使用\"语言标识：单页分类ID\"并使用“,”隔开，如:cn:1,en:2','cn:0,en:0','string','','2','0','');
INSERT INTO `espcms_config` VALUES ('166','7','bbs_ismail','内容留言邮件提醒','','1','bool','开启内容留言管理员邮箱提醒,关闭内容留言管理员邮箱提醒','5','0','');
INSERT INTO `espcms_config` VALUES ('167','6','order_ismember','会员订购','如开启会员订购，则需要注册后才能提交订单，否则无需注册即可提交','1','bool','开启会员订购,关闭会员订购','3','0','');
INSERT INTO `espcms_config` VALUES ('168','18','is_getcache','GET模板缓存','建议生成静态页且数据较大网站启用此功能','1','bool','开启GET模板缓存,关闭GET模板缓存','1','0','');
INSERT INTO `espcms_config` VALUES ('169','50','sitecoedb','远程通信密钥','请设置不小于15位的远程通信密钥，用于站群管理','','string','','1','0','');
INSERT INTO `espcms_config` VALUES ('170','6','img_dirtype','文件夹保存类型','如您的图片较多，建议选择“按年/月/日保存”','y','selectkey','y|按年/月/日保存,m3|按年/月保存,d|按年/月日保存,m|按年月日保存,m1|按年月保存,m2|按年保存','4','0','');
INSERT INTO `espcms_config` VALUES ('171','7','img_cfiletype','文件名生成方式','','d','selectkey','d|重新按日期格式命名,f|按上传文件名保存(如包括非英文或数字则自动按日期生成)','4','0','');
INSERT INTO `espcms_config` VALUES ('172','14','img_iszoom','图片缩略方式','','1','selectkey','1|图片等比缩放,2|图片中心缩放,3|图片左边对齐缩放','4','0','');
INSERT INTO `espcms_config` VALUES ('173','2','mem_regisseccode','会员注册验证码','建议开启验证，以防止恶意注册','1','bool','开启会员注册验证码,禁用会员注册验证码','2','0','');
INSERT INTO `espcms_document` VALUES ('2','cn','50','8','1','3','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20120608155029931','了解我们','了解我们','','','','','','','','','','0.00','0.00','0','1314706016','1339141829','base_read','2','about','1');
INSERT INTO `espcms_document` VALUES ('3','cn','50','8','1','8','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20120608154557974','联系我们','联系我们','','','','','','','','','','0.00','0.00','2','1314706247','1339141557','base_read','3','contact-us','1');
INSERT INTO `espcms_document` VALUES ('4','cn','50','8','1','17','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20120608154827953','公司介绍','公司介绍','','','','','','','','EarcLink尔创网联是国内知名ESPCMS、KUBCMS等优秀建站系统的开发商，从个人开发到拥有专业的服务团队，我们走过了十多年。由于ESPCMS等建站产品的便捷和强大功能，EarcLink开始慢慢被用户所熟知。EarcLink得益于互联网建站方面所集累的大量经验、且拥有专业的网站开发团队，可以为用户提供专业的网站建设、SEO优化、网络软件开发等互联网搭建方面的相关服务。我们曾为TCL、H3C、蓝魔、友讯、南玻集团、金凯国际、徐工集团、深科技等一批知名的客户提供相关服务，获得了众多客户的肯定。EarcLink早期设计的软件产品有一些不尽人意，但通过大量用户的建议和实际测试，我们不断改进我们的软件产品。今天，有超过10万的网站每天在使用我们的软件进行网站营销、收集客户信息、交易产品、解答客户问题等等...虽然我们还在不停的添加更多的功能和不断完善产品体验，但我们的目标还没有达到：打造最好的最实用的互联网建站平台。','','0.00','0.00','16','1314706633','1339141707','base_read','4','about/company','1');
INSERT INTO `espcms_document` VALUES ('5','cn','50','8','1','18','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20110830210440746','发展历程','发展历程','','','','','','','','','','0.00','0.00','1','1314706688','1314709480','base_read','5','about/history','1');
INSERT INTO `espcms_document` VALUES ('6','cn','50','8','1','19','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20120209124754799','服务声明','服务声明','','','','','','','','','','0.00','0.00','1','1314706746','1328762874','base_read','6','about/treaty','1');
INSERT INTO `espcms_document` VALUES ('7','cn','50','8','1','20','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20120608154544245','联系信息','联系信息','','','','','','','','','','0.00','0.00','6','1314706842','1339141544','base_read','7','contact-us/information','1');
INSERT INTO `espcms_document` VALUES ('8','cn','50','8','1','21','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20110830211533328','地图指示','地图指示','','','','','','','','','','0.00','0.00','0','1314706903','1314710133','base_read','8','contact-us/map','1');
INSERT INTO `espcms_document` VALUES ('9','cn','50','8','1','22','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20110830220201547','产品演示','产品演示','','','','','','','','','','0.00','0.00','0','1314706946','1314712921','base_read','9','goods/chanpinyanshi','1');
INSERT INTO `espcms_document` VALUES ('10','cn','50','1','1','9','0','0','0','','1','0','1','1','0','0','0','0','0','1','SN20110830213619465','Facebook鼓励用户寻找网站漏洞 已奖励4万美元','','','','','','','','Facebook鼓励志愿者们协助查找网站漏洞，近日计划启动一项&ldquo;找bug赢大奖&rdquo;活动新浪科技讯 北京时间8月30日凌晨消息，Facebook周一透露，已经向协','','','0.00','0.00','1','1314711321','1314711379','article_read','10','news/business','1');
INSERT INTO `espcms_document` VALUES ('11','cn','50','1','1','9','0','0','0','','1','0','1','1','0','0','0','0','0','1','SN20110830213821901','诺基亚欲借外观设计重新夺回智能机市场份额','','','','','upfile/2011/08/30/20110830213802_673.jpg','','','从N9可以管窥诺基亚未来的设计思路导读：国外媒体今天发表文章称，内忧外患的诺基亚即将推出首款Windows Phone智能机，芬兰手机巨头在这场豪赌中，','','','0.00','0.00','2','1314711460','1314711501','article_read','11','news/business','1');
INSERT INTO `espcms_document` VALUES ('12','cn','50','1','1','9','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830213859527','Windows 8更多细节曝光：菜单功能更直观','','','','','','','','Windows 8更多细节曝光：菜单功能更直观新浪科技讯 北京时间8月30日凌晨消息，微软项目管理总监亚历克斯','','','0.00','0.00','2','1314711483','1314711539','article_read','12','news/business','1');
INSERT INTO `espcms_document` VALUES ('13','cn','50','1','1','9','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830213942941','两高发布司法解释：窃取50组网银密码最高判7年','','','','','','','','昨天，最高人民法院和最高人民检察院联合发布《关于办理危害计算机信息系统安全刑事案件应用法律若干问题的解释》。该司法解释规定，黑客非法','','','0.00','0.00','0','1314711541','1314711582','article_read','13','news/business','1');
INSERT INTO `espcms_document` VALUES ('14','cn','50','1','1','9','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830214001296','美公司追踪中国盗版软件用户伺机索赔起诉','','','','','','','','导语：美国科技资讯网站PCWorld今天发表文章称，中国一直是软件盗版的&ldquo;重灾区&rdquo;，取证难、处罚轻令许多公司对盗版问题感到无可奈何;但美国','','','0.00','0.00','1','1314711583','1314711601','article_read','14','news/business','1');
INSERT INTO `espcms_document` VALUES ('15','cn','50','1','1','9','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830214043509','商务部鼓励电商企业自建物流并适时向社会开放','','','','','','','','在昨日举行的2011APEC中小企业峰会电子商务日演讲中，商务部电子商务和信息化司副巡视员聂林海表示，&ldquo;十二五&rdquo;期间将是电子商务企业更快速','','','0.00','0.00','3','1314711601','1314711643','article_read','15','news/business','1');
INSERT INTO `espcms_document` VALUES ('16','cn','50','1','1','10','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830214134830','HTC新任首席创新官：用户体验重于技术','','','','','','','','北京时间8月30日消息，据国外媒体报道，最近，宏达电新任手机设计负责人斯哥特&middot;克罗(Scott Croyle)表示，尽管设计高层发生变化，但是手机设计思','','','0.00','0.00','0','1314711683','1314711694','article_read','16','news/media','1');
INSERT INTO `espcms_document` VALUES ('17','cn','50','1','1','10','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830214152858','乔布斯：我真的很在乎苹果','','','','','','','','北京时间8月30日上午消息，据美国科技博客网站BusinessInsider报道，曾在苹果实习的乔纳森&middot;伯格(Jonathan Berger)日前回忆了一件往事，突出了史蒂夫&mid','','','0.00','0.00','1','1314711695','1314711712','article_read','17','news/media','1');
INSERT INTO `espcms_document` VALUES ('18','cn','50','1','1','10','0','0','0','','1','0','1','1','0','0','0','0','0','1','SN20110830214326619','传雅虎CEO巴茨无意谋求连任 2013年离职','','','','','upfile/2011/08/30/20110830214223_287.jpg','','','腾讯科技讯(中涛)北京时间8月30日消息，据美国科技博客网站Silicon Alley Insider(SAI)报道，一名知情人士周一透露，雅虎CEO卡罗尔','','','0.00','0.00','0','1314711713','1314711806','article_read','18','news/media','1');
INSERT INTO `espcms_document` VALUES ('19','cn','50','1','1','10','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830214302563','谷歌CEO佩奇：谷歌只发挥了1%潜力','','','','','','','','8月30日，据国外媒体报道，在今年早些时候宣布将接任首席执行官时，谷歌公司(Google Inc.)联合创始人佩奇(Larry Page)承诺将会对这家互联网搜索巨头进行','','','0.00','0.00','4','1314711744','1314711782','article_read','19','news/media','3');
INSERT INTO `espcms_document` VALUES ('20','cn','50','1','1','10','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20110830214356241','巴林电信调整高管层 更换CEO','','','','','','','','北京时间8月30日早间消息(蒋均牧)巴林电信公司(Batelco)日前宣布调整其高管层，并任命现任集团首席执行官彼得&middot;卡里阿诺鲍罗斯(Peter Kaliaropoulos)为','','','0.00','0.00','0','1314711829','1314711836','article_read','20','news/media','1');
INSERT INTO `espcms_document` VALUES ('21','cn','50','1','1','10','0','0','0','','1','0','1','1','0','0','0','0','0','','SN20120608154152905','戴尔将与VMware合作推出云基础设施服务','','','','','','','','?北京时间8月30日早间消息，戴尔将在今年晚些时候与VMware合作推出第一项云基础设施服务，继续将其业务向PC以外的领域拓展，进入利润率更高的软','','','0.00','0.00','3','1314711837','1339141312','article_read','21','news/media','2');
INSERT INTO `espcms_document` VALUES ('22','cn','50','8','1','26','0','0','0','','1','0','1','0','0','0','0','0','1','','SN20110830220458725','苹果 iphone 4代','苹果手机','','','','','','','','','','0.00','0.00','0','1314712814','1314713098','base_read','22','goods/pingguoshouji','1');
INSERT INTO `espcms_document` VALUES ('23','cn','50','3','1','23','0','0','0','25,24,','1','0','1','1','1','0','0','0','0','','SN20110830220536848','ZTE/中兴V880','','','','','upfile/2011/08/30/20110830220714_201.jpg','','','中兴V880因为带有3D加速功能，所以在多点触摸方面表现也可圈可点。下面我们找来了MOTO 里程碑作为对比。由于里程碑已经刷了一个民间的Android 2.2 ROM','','','1200.00','1059.00','3','1314713136','1314714070','goods_read','23','goods/moblie','1');
INSERT INTO `espcms_document` VALUES ('24','cn','50','3','1','23','0','0','0','23,','1','0','1','1','1','0','0','0','0','2','SN20110830220920731','Nokia/诺基亚C5-03酷玩版','','','','','upfile/2011/08/30/20110830221115_303.jpg','','','诺基亚C5-03配备的是1000毫安时的电池，理论待机时间为600小时。在笔者对这款手机进行评测的期间，每天大约20分钟的通话时间外加2小时的上网时间，','','','1796.00','1200.00','2','1314713360','1314714637','goods_read','24','goods/moblie','1');
INSERT INTO `espcms_document` VALUES ('25','cn','50','3','1','23','0','0','0','25,24,23,','1','0','1','1','1','0','0','0','0','2','SN20110830221319136','HTC Desire S','','','','','upfile/2011/08/30/20110830221819_399.jpg','','','?HTC野火S作为野火的升级版本继承了前作的外观造型，分辨率的提高以及系统版本的提升让该机的体验进一步加强。在目前高端Andorid旗舰频繁的今天','','','2500.00','2200.00','4','1314713599','1339138367','goods_read','25','goods/moblie','1');
INSERT INTO `espcms_document` VALUES ('26','cn','50','3','1','23','0','0','0','25,24,23,','1','0','1','1','1','0','0','0','0','','SN20110830222325434','HTC S510e','','','','','upfile/2011/08/30/20110830222415_540.jpg','','','HTC 渴望S支持720p的MP4视频文件播放，同时可以支持3gp，mp4，WMV9，avi（MP4和MP3封装）格式的视频文件播放，在音频文件播放表现上，它可以播放mp3，wav，w','','','3200.00','3100.00','0','1314714205','1314714335','goods_read','26','goods/moblie','1');
INSERT INTO `espcms_document` VALUES ('27','cn','50','3','1','23','0','0','0','26,25,24,23,','1','0','1','1','1','0','0','0','0','','SN20110830222536894','HTC Flyer 平板电脑','','','','','upfile/2011/08/30/20110830222841_197.jpg','','','如果说三星是7寸平板电脑市场的尝鲜者，拥有对市场快速而敏锐的眼光，那么HTC则称得上是7寸平板电脑市场的发掘者，就像HTC Sense的设计理念一样，以','','','3600.00','3200.00','2','1314714336','1339139176','goods_read','27','goods/moblie','1');
INSERT INTO `espcms_document` VALUES ('28','cn','50','7','1','13','0','0','0','','1','0','1','0','0','0','0','0','0','','SN20120608145207741','PHP程序员','','','','','','','','1、有团队精神、品行端正、沟通表达能力强、有上进心态和求知欲望；2、精通MYSQL数据库；了解使用Linux等系统；3、熟悉常见系统开发原理，如新闻','1、有团队精神、品行端正、沟通表达能力强、有上进心态和求知欲望；<br/>2、精通MYSQL数据库；了解使用Linux等系统；<br/>3、熟悉常见系统开发原理，如新闻、商城、论坛、人才网站等...<br/>4、有独立开发的作品优先；<br/>5、最少三年以上互联网编程经验；','','0.00','0.00','0','1314714701','1339138327','job_read','28','job/technology','1');
INSERT INTO `espcms_document` VALUES ('29','cn','50','7','1','13','0','0','0','','1','0','1','0','0','0','0','0','0','','SN20120608145245940','C语言程序员','','','','','','','','1、有团队精神、品行端正、沟通表达能力强、有上进心态和求知欲望；2、linux/unix平台C/C++开发经验最少两年以上，至少熟悉多平台下的unix系统(AIX/SCO u','1、有团队精神、品行端正、沟通表达能力强、有上进心态和求知欲望；<br/>2、linux/unix平台C/C++开发经验最少两年以上，至少熟悉多平台下的unix系统(AIX/SCO unix/HP unix/UnixWare)两种以上；<br/>3、熟练掌握Android或IPhone手机软件开发；<br/>4、熟练掌握SQL语言，熟悉MYSQL数据库；<br/>5、对于C和JAVA兼顾编码者优先考虑；','','0.00','0.00','0','1314714711','1339138365','job_read','29','job/technology','1');
INSERT INTO `espcms_document` VALUES ('30','cn','50','7','1','14','0','0','0','','1','0','1','0','0','0','0','0','0','','SN20120608150613162','客服专员','','','','','','','','1、有团队精神、品行端正、有耐心、沟通表达能力强；2、掌握互联网沟通技巧；3、对客户进行全方位支持（销售支持、培训支持、售后支持）；4、','1、有团队精神、品行端正、有耐心、沟通表达能力强；<br/>2、掌握互联网沟通技巧；<br/>3、对客户进行全方位支持（销售支持、培训支持、售后支持）；<br/>4、能够努力完成公司制定的任务目标；<br/>5、有互联网方面的服务经验，有网页有基本了解的优先考虑；','','0.00','0.00','0','1314714731','1339139173','job_read','30','job/marketing','1');
INSERT INTO `espcms_document` VALUES ('31','cn','50','7','1','14','0','0','0','','1','0','1','0','0','0','0','0','0','','SN20120608145211857','项目投资专员','','','','','','','','1、有团队精神、品行端正、沟通表达能力强；2、金融本科专业毕业，有金融及财务方面的工作经验；3、普通话标准，相貌端正；4、能够适应上海及','1、有团队精神、品行端正、沟通表达能力强；<br/>2、金融本科专业毕业，有金融及财务方面的工作经验；<br/>3、普通话标准，相貌端正；<br/>4、能够适应上海及深圳两地不定期的出差工作；','','0.00','0.00','1','1314714740','1339138331','job_read','31','job/marketing','1');
INSERT INTO `espcms_document` VALUES ('32','cn','50','4','1','15','0','0','0','','1','0','1','0','0','0','0','0','0','','SN20120608154150370','ESPCMS远程培训软件','','','','','','','','软件大小：680KB版本：V3.0.2 简体中文正式版说明：欢迎您通过此软件定时免费参加ESPCMS远程培训，有关远程培训信息请关注论坛公布！','软件大小：680KB<br/>版本：V3.0.2 简体中文正式版<br/>说明：欢迎您通过此软件定时免费参加ESPCMS远程培训，有关远程培训信息请关注论坛公布！','','0.00','0.00','1','1314714893','1339141310','download_read','32','download/download','1');
INSERT INTO `espcms_document` VALUES ('33','cn','50','4','1','15','0','0','0','','1','0','1','0','0','0','0','0','0','','SN20110830223606943','EasySiteServer服务器集成环境','','','','','','','','软件大小：10.18MB版本：1.2 正式版更新时间：2011-08-30 02:48:21说明：本软件集成了最新版的Apache服务器，Apache/2.0.58 (Win32)、PHP/5.2.11、MySQL&nbsp;客户端版本:','软件大小：10.18MB<br/>版本：1.2 正式版<br/>说明：本软件集成了最新版的Apache服务器，Apache/2.0.58 (Win32)、PHP/5.2.11、MySQL <br/>客户端版本：5.0.51a、phpMyAdmin3.2.0.1、Zend Optimizer v3.3.3、Zend Debugger v5.2.6 所有配置已默认完成，绿色软件直接使用！<br/>说明：如果您无法启动本软件，请检查服务器是否占用80端口，如IIS！相关使用说明请查看帮助与支持有关本系统常见问题！','','0.00','0.00','0','1314714921','1314714966','download_read','33','download/download','1');
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
INSERT INTO `espcms_document_album` VALUES ('7','23','背面图','','upfile/2011/08/30/20110830220718_580.jpg','1314714070');
INSERT INTO `espcms_document_album` VALUES ('6','23','对比图','与HTC手机对比图片','upfile/2011/08/30/20110830220721_977.jpg','1314714070');
INSERT INTO `espcms_document_album` VALUES ('18','24','全尺寸图片','','upfile/2011/08/30/20110830221115_303.jpg','1314714637');
INSERT INTO `espcms_document_album` VALUES ('17','24','背面图片','','upfile/2011/08/30/20110830221119_107.jpg','1314714637');
INSERT INTO `espcms_document_album` VALUES ('16','24','正面图片','','upfile/2011/08/30/20110830221123_939.jpg','1314714637');
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
INSERT INTO `espcms_document_content` VALUES ('1','2','&lt;p&gt;&lt;strong&gt;我们是谁？&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;EarcLink尔创网联是国内知名ESPCMS、KUBCMS等优秀建站系统的开发商，从个人开发到拥有专业的服务团队，我们走过了十多年。由于ESPCMS等建站产品的便捷和强大功能，EarcLink开始慢慢被用户所熟知。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;我们还能做什么？&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;EarcLink得益于互联网建站方面所集累的大量经验、且拥有专业的网站开发团队，可以为用户提供专业的网站建设、SEO优化、网络软件开发等互联网搭建方面的相关服务。我们曾为TCL、H3C、蓝魔、友讯、南玻集团、金凯国际、徐工集团、深科技等一批知名的客户提供相关服务，获得了众多客户的肯定。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;我们的目标？&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;EarcLink早期设计的软件产品有一些不尽人意，但通过大量用户的建议和实际测试，我们不断改进我们的软件产品。今天，有超过10万的网站每天在使用我们的软件进行网站营销、收集客户信息、交易产品、解答客户问题等等...&lt;/p&gt;\n&lt;p&gt;虽然我们还在不停的添加更多的功能和不断完善产品体验，但我们的目标还没有达到：打造最好的最实用的互联网建站平台。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;尔创网联科技有限公司&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;EARCLINK SOFTWARE TECHNOLOGY CO., LIMITED&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('2','4','&lt;p&gt;&lt;strong&gt;我们是谁？&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;EarcLink尔创网联是国内知名ESPCMS、KUBCMS等优秀建站系统的开发商，从个人开发到拥有专业的服务团队，我们走过了十多年。由于ESPCMS等建站产品的便捷和强大功能，EarcLink开始慢慢被用户所熟知。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;我们还能做什么？&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;EarcLink得益于互联网建站方面所集累的大量经验、且拥有专业的网站开发团队，可以为用户提供专业的网站建设、SEO优化、网络软件开发等互联网搭建方面的相关服务。我们曾为TCL、H3C、蓝魔、友讯、南玻集团、金凯国际、徐工集团、深科技等一批知名的客户提供相关服务，获得了众多客户的肯定。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;我们的目标？&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;EarcLink早期设计的软件产品有一些不尽人意，但通过大量用户的建议和实际测试，我们不断改进我们的软件产品。今天，有超过10万的网站每天在使用我们的软件进行网站营销、收集客户信息、交易产品、解答客户问题等等...&lt;/p&gt;\n&lt;p&gt;虽然我们还在不停的添加更多的功能和不断完善产品体验，但我们的目标还没有达到：打造最好的最实用的互联网建站平台。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;尔创网联科技有限公司&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;EARCLINK SOFTWARE TECHNOLOGY CO., LIMITED&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('3','5','&lt;p&gt;ESPCMS的发展轨迹：&lt;/p&gt;\n&lt;p&gt;2004年6月：&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&amp;nbsp;Enterprise 推荐出1.0版本，并提供企业商用&lt;/p&gt;\n&lt;p&gt;2005年8月：&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&amp;nbsp;Enterprise 推荐出2.0版本，并提供ASP和PHP两个不同的版本&lt;/p&gt;\n&lt;p&gt;2007年9月：经过三年的商用&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&amp;nbsp;Enterprise 推荐出3.0版本，并取消了ASP版本，专注发展PHP开源版本&lt;/p&gt;\n&lt;p&gt;2008年4月：&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&amp;nbsp;Enterprise 推荐出3.1版本，并对界面进行全新的升级，加入了多个功能&lt;/p&gt;\n&lt;p&gt;2008年6月：&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&amp;nbsp;Enterprise 推荐出3.2版本，加入了邮件可视化编辑&lt;/p&gt;\n&lt;p&gt;2009年5月：&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&amp;nbsp;Enterprise 推荐出3.5版本，对模板引擎进行升级，实现了模板多可视化的管理及转换&lt;/p&gt;\n&lt;p&gt;2009年11月：ECISP.CN正式上线，并提供&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&amp;nbsp;Enterprise的免费下载及企业全面的商用支持&lt;/p&gt;\n&lt;p&gt;2010年5月：网站中文名正式更改为&amp;ldquo;尔创网联&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;2010年7月：&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&amp;nbsp;Enterprise正式更名为&lt;span class=&quot;taglink&quot;&gt;易思&lt;/span&gt;&lt;span class=&quot;taglink&quot;&gt;&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&lt;/span&gt;，并提供4.0的在线演示&lt;/p&gt;\n&lt;p&gt;2010年8月：尔创网联创新产品&amp;ldquo;&lt;span class=&quot;taglink&quot;&gt;易思&lt;/span&gt;&lt;span class=&quot;taglink&quot;&gt;&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;&lt;/span&gt;4.0&amp;rdquo;正式提供下载&lt;/p&gt;\n&lt;p&gt;2010年12月：ECISP.CN官网改版完成，新的网站必将提供更加完善的服务&lt;/p&gt;\n&lt;p&gt;2010年12月：&lt;span class=&quot;taglink&quot;&gt;易思&lt;/span&gt;&lt;span class=&quot;taglink&quot;&gt;EasySitePM&lt;/span&gt;更名为&amp;ldquo;&lt;span class=&quot;taglink&quot;&gt;ESPCMS&lt;/span&gt;&lt;span class=&quot;taglink&quot;&gt;易思&lt;/span&gt;&lt;span class=&quot;taglink&quot;&gt;&lt;span class=&quot;taglink&quot;&gt;企业网站管理系统&lt;/span&gt;&lt;/span&gt;&amp;rdquo;，为下一步状大发展打下基础&lt;/p&gt;\n&lt;p&gt;2010年12月：ECISP.CN宣传向商业用户推送&lt;span class=&quot;taglink&quot;&gt;ESPCMS模板&lt;/span&gt;服务，首批推出40多套精美模板供商业用户使用，后期还将会持续推出更加高端、美观的网站模板&lt;/p&gt;\n&lt;p&gt;2010年12月：&lt;span class=&quot;taglink&quot;&gt;ESPCMS易思&lt;/span&gt;&lt;span class=&quot;taglink&quot;&gt;企业网站管理系统&lt;/span&gt;宣布免费，这是国内首套专业网站管理系统宣传免费，必将&lt;span class=&quot;taglink&quot;&gt;企业网站建设&lt;/span&gt;推向更加专业化、简洁化，美观化；&lt;/p&gt;\n&lt;p&gt;2011年06月：ESPCMS取得计算机软件著作权登记证书：2011SR051710&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;2011年08月：ESPCMS V5版隆重发布&amp;nbsp;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('4','6','&lt;h3&gt;易思ESPCMS企业网站管理系统（简称ESPCMS）授权协议（适用于所有用户）&lt;/h3&gt;\n&lt;p&gt;版权所有 (c) 2002-2012，尔创网联科技有限公司（以下英文简称EarcLink）保留所有权利。&lt;/p&gt;\n&lt;p&gt;感谢您选择EarcLink产品。希望我们的努力能为您提供一个强大实用和经济的企业网站解决方案。&lt;/p&gt;\n&lt;p&gt;EarcLink为ESPCMS产品的开发商，依法独立拥有ESPCMS产品著作权。EarcLink网址为Http://www.earclink.com ESPCMS官网地址为：http://www.espcms.com。&lt;/p&gt;\n&lt;p&gt;ESPCMS著作权已在中华人民共和国国家版权局注册，著作权受到法律和国际公约保护（&lt;strong&gt;计算机软件著作权登记证书：2011SR051710&lt;/strong&gt;）。使用者：无论个人或组织、盈利与否、用途如何（包括以学习和研究为目的），均需仔细阅读本协议，在理解、同意、并遵守本协议的全部条款后，方可开始使用ESPCMS软件。&lt;/p&gt;\n&lt;p&gt;本授权协议适用且仅适用于ESPCMS系列版本，EarcLink拥有对本授权协议的最终解释权。&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;I. 协议许可的权利&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&lt;/strong&gt;1. 您在未支付相应许可费用或未得到EarcLink授权的情况下，禁止将本软件应用于任何商业用途。&lt;/p&gt;\n&lt;p&gt;2. 您可以在协议规定的约束和限制范围内修改ESPCMS源代码(如果被提供的话)或界面风格以适应您的网站要求。&lt;/p&gt;\n&lt;p&gt;3. 您拥有使用本软件构建的网站中全部会员资料、文章及相关信息的所有权，并独立承担与文章内容的相关法律义务。&lt;/p&gt;\n&lt;p&gt;4. 获得商业授权之后，您可以将本软件应用于商业用途，同时依据所购买的授权类型中确定的技术支持期限、技术支持方式和技术支持内容，自购买时刻起，在技术支持期限内拥有通过指定的方式获得指定范围内的技术支持服务。商业授权用户享有反映和提出意见的权力，相关意见将被作为首要考虑，但没有一定被采纳的承诺或保证。&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;II. 协议规定的约束和限制&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&lt;/strong&gt;1. 未获商业授权之前，不得将本软件用于商业用途。购买商业授权请登陆http://www.espcms.com参考相关说明。&lt;/p&gt;\n&lt;p&gt;2. 不得对本软件或与之关联的商业授权进行出租、出售、抵押或发放子许可证。&lt;/p&gt;\n&lt;p&gt;3. 无论如何，即无论用途如何、是否经过修改或美化、修改程度如何，只要使用ESPCMS整体或任何部分，未经商业授权的情况下，页面页脚处的易思ESPCMS企业网站管理系统、Title部分的Powered by ESPCMS和相方官方链接都必须保留，而不能清除或修改。&lt;/p&gt;\n&lt;p&gt;4. 禁止在ESPCMS整体或任何部分基础上以发展任何派生版本、修改版本或第三方版本用于重新分发。&lt;/p&gt;\n&lt;p&gt;5. 如果您未能遵守本协议的条款，您的授权将被终止，所被许可的权利将被收回，并承担相应法律责任。&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;III. 有限担保和免责声明&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&lt;/strong&gt;1. 本软件及所附带的文件是作为不提供任何明确的或隐含的赔偿或担保的形式提供的。&lt;/p&gt;\n&lt;p&gt;2. 用户出于自愿而使用本软件，您必须了解使用本软件的风险，在尚未购买产品技术服务之前，我们不承诺提供任何形式的技术支持、使用担保，也不承担任何因使用本软件而产生问题的相关责任。&lt;/p&gt;\n&lt;p&gt;3. EarcLink不对使用本软件构建的网站中的文章或信息承担责任。&lt;/p&gt;\n&lt;p&gt;有关ESPCMS最终用户授权协议、商业授权与技术服务的详细内容，均由EarcLink官方网站独家提供。EarcLink拥有在不事先通知的情况下，修改授权协议和服务价目表的权力，修改后的协议或价目表对自改变之日起的新授权用户生效。&lt;/p&gt;\n&lt;p&gt;电子文本形式的授权协议如同双方书面签署的协议一样，具有完全的和等同的法律效力。您一旦开始安装ESPCMS，即被视为完全理解并接受本协议的各项条款，在享有上述条款授予的权力的同时，受到相关的约束和限制。协议许可范围以外的行为，将直接违反本授权协议并构成侵权，我们有权随时终止授权，责令停止损害，并保留追究相关责任的权力。&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('5','3','&lt;p&gt;\n&lt;div&gt;\n&lt;p&gt;感谢您选择EarcLink产品，如果您有关于合作、使用问题求助、或了解我们产品性能等问题可随时通过以下方式与我们联系！&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&lt;strong&gt;ESPCMS&lt;/strong&gt;授权咨询QQ：6326420 / 188295976 （本QQ仅接收产品销售咨询、合作咨询，非销售问题请登陆论坛进行交流http://bbs.ecisp.cn）&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;技术支持 E-mail:admin@ecisp.cn （本邮件只限于商业用户）&lt;/p&gt;\n&lt;p&gt;使用解答 E-mail:service@ecisp.cn （本邮件用于问题解答、建站报价、合作伙伴服务）&lt;/p&gt;\n&lt;p&gt;开发者邮件 E-mail:bili@ecisp.cn （本邮件接收用于商业合作、开发者交流邮件）&lt;/p&gt;\n&lt;p&gt;ESPCMS论坛交流 http://bbs.ecisp.cn&lt;/p&gt;\n&lt;p&gt;ESPCMS官网支持 http://www.ecisp.cn / Http://www.espcms.com&lt;/p&gt;\n&lt;p&gt;ESPCMS演示站点 http://demo.ecisp.cn / http://www.easysitepm.com&lt;/p&gt;\n&lt;/div&gt;\n&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('6','7','&lt;div&gt;\n&lt;div&gt;\n&lt;p&gt;感谢您选择EarcLink产品，如果您有关于合作、使用问题求助、或了解我们产品性能等问题可随时通过以下方式与我们联系！&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&lt;strong&gt;ESPCMS&lt;/strong&gt;授权咨询QQ：6326420 / 188295976 （本QQ仅接收产品销售咨询、合作咨询，非销售问题请登陆论坛进行交流http://bbs.ecisp.cn）&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;技术支持 E-mail:admin@ecisp.cn （本邮件只限于商业用户）&lt;/p&gt;\n&lt;p&gt;使用解答 E-mail:service@ecisp.cn （本邮件用于问题解答、建站报价、合作伙伴服务）&lt;/p&gt;\n&lt;p&gt;开发者邮件 E-mail:bili@ecisp.cn （本邮件接收用于商业合作、开发者交流邮件）&lt;/p&gt;\n&lt;p&gt;ESPCMS论坛交流 http://bbs.ecisp.cn&lt;/p&gt;\n&lt;p&gt;ESPCMS官网支持 http://www.ecisp.cn / Http://www.espcms.com&lt;/p&gt;\n&lt;p&gt;ESPCMS演示站点 http://demo.ecisp.cn / http://www.easysitepm.com&lt;/p&gt;\n&lt;/div&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;/div&gt;');
INSERT INTO `espcms_document_content` VALUES ('7','8','&lt;div style=&quot;text-align: center;&quot;&gt;&lt;iframe src=&quot;http://maps.google.com/maps?f=d&amp;amp;source=s_d&amp;amp;saddr=&amp;amp;daddr=&amp;amp;hl=zh-CN&amp;amp;geocode=&amp;amp;mra=mr&amp;amp;doflg=ptk&amp;amp;sll=23.825551,114.587402&amp;amp;sspn=13.082321,35.15625&amp;amp;ie=UTF8&amp;amp;ll=22.523617,114.062805&amp;amp;spn=0.019821,0.027938&amp;amp;z=15&amp;amp;vpsrc=6&amp;amp;output=embed&quot; width=&quot;620&quot; height=&quot;500&quot; scrolling=&quot;no&quot; marginwidth=&quot;0&quot; marginheight=&quot;0&quot; frameborder=&quot;0&quot;&gt;&lt;/iframe&gt;&lt;/div&gt;');
INSERT INTO `espcms_document_content` VALUES ('8','10','&lt;p&gt;Facebook鼓励志愿者们协助查找网站漏洞，近日计划启动一项&amp;ldquo;找bug赢大奖&amp;rdquo;活动&lt;/p&gt;\n&lt;p&gt;新浪科技讯 北京时间8月30日凌晨消息，Facebook周一透露，已经向协助该网站寻找漏洞的志愿者们支付逾4万美元的奖金，奖励他们为Facebook做出的贡献。&lt;/p&gt;\n&lt;p&gt;Facebook三周前启动一项&amp;ldquo;找bug赢大奖&amp;rdquo;活动，鼓励精通网页技术的志愿者寻找Facebook网站的漏洞。该公司周一宣布，活动取得了成功，来自世界各地的安全研究人员被动员起来，协助Facebook提高网站安全性。&lt;/p&gt;\n&lt;p&gt;Facebook在一篇博客文章中说：&amp;ldquo;我们认识许多安全专家，并与之建立关系。但是，这项活动使我们能够与全世界16个国家的许多人进行对话，从土耳其到波兰，互联网安全技术爱好者踊跃参与。&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;近些年来，科技公司开始向黑客们支付奖金，鼓励他们悄悄报告自己发现的漏洞，而不是将其公之于众，被不法分子加以利用。谷歌和Mozilla均开展过与Facebook类似的有奖活动。&lt;/p&gt;\n&lt;p&gt;志愿者每发现一个bug，Facebook将支付500美元以上的奖金。该公司透露，一名黑客发现了一个重要漏洞，获得5000美元奖金;另一位开发人员发现了6个漏洞，一共赢得7000美元.&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('9','11','&lt;p&gt;&lt;img src=&quot;http://www.v5.com/upfile/2011/08/30/20110830213802_673.jpg&quot; border=&quot;0&quot; alt=&quot;从N9可以管窥诺基亚未来的设计思路&quot; width=&quot;500&quot; height=&quot;411&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;从N9可以管窥诺基亚未来的设计思路&lt;/p&gt;\n&lt;p&gt;导读：国外媒体今天发表文章称，内忧外患的诺基亚即将推出首款Windows Phone智能机，芬兰手机巨头在这场豪赌中，希望凭借独树一帜的外观设计，夺回市场份额，重现昔日荣光。&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;以下为文章全文：&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;诺基亚即将发布首款搭载Windows Phone操作系统的智能手机。芬兰手机巨头正在进行一场豪赌，希望凭借新款机型的创新设计突出重围，将人们的注意力从备受诟病的平台问题上转移过来，在利润丰厚的智能机市场重现昔日荣光。&lt;/p&gt;\n&lt;p&gt;诺基亚在智能机市场的份额不断下滑，很大程度上是由于受到苹果iPhone和Android手机的挤压。但是，作为全球手机市场曾经的霸主，诺基亚的硬件生产能力无可置疑。&lt;/p&gt;\n&lt;p&gt;诺基亚计划在今年第四季度推出首款搭载Windows Phone &amp;ldquo;芒果&amp;rdquo;操作系统的手机。这款产品被诺基亚视为复兴之作，肩负着夺回市场份额的重任。&lt;/p&gt;\n&lt;p&gt;从今年6月发布的诺基亚N9身上，人们可以管窥该公司未来机型的设计思路。这款手机取消了传统的Home物理按键，广泛采用手势操作。外壳采用碳酸酯材料，有多种颜色可供选择。它配备了一块带有弧度的3.9英寸电容触摸屏。&lt;/p&gt;\n&lt;p&gt;N9搭载英特尔与诺基亚合作研发的MeeGo操作系统，而诺基亚已经对这一平台失去兴趣。但该公司首席设计师马可&amp;middot;阿赫蒂萨里(Marko Ahtisaari)表示，这种设计是诺基亚的未来方向。他在一次采访中说：&amp;ldquo;我们将推崇简洁、自然的设计趋势，与市场中常见的黑灰色、金属材质的圆角矩形设计完全不同。&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;Windows Phone手机操作系统由微软研发，除诺基亚外，HTC、戴尔、三星和LG均有意推出搭载该系统的新款手机。因此，为了吸引消费者、阻止市场份额继续下滑，诺基亚需要依赖富有吸引力的外观设计。&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;增进用户&amp;ldquo;目光交流&amp;rdquo;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;与基于文件夹的苹果iOS和谷歌Android操作系统不同，Windows Phone &amp;ldquo;芒果&amp;rdquo;版采用富有现代感的图形用户界面，其功能围绕&amp;ldquo;人&amp;rdquo;而非&amp;ldquo;应用&amp;rdquo;，减少了为实现某一功能而点击的次数。&lt;/p&gt;\n&lt;p&gt;阿赫蒂萨里称，如今的触摸屏手机偏重&amp;ldquo;沉浸式&amp;rdquo;人机交互，这是不正确的。他希望找到一种设计方案，使人们可以抬起头来。他说：&amp;ldquo;如果你到赫尔辛基的一家餐馆里看一看，就会发现人们一味低头看手机，而不是进行目光交流，也不会意识到自己所处的环境。&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;阿赫蒂萨里说：&amp;ldquo;以真正的移动性为目标的设计，将使人们有更多的目光交流，并意识到自己所处的环境。人们不会确切提出这种要求;但当他们得到这种便利时，就会爱上它。&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;阿赫蒂萨里在18个月前加入诺基亚，是该公司首位直接向CEO斯蒂芬&amp;middot;埃洛普(Stephen Elop)汇报的首席设计师。设计师地位的提升，反映了诺基亚正越来越重视硬件设计能力。&lt;/p&gt;\n&lt;p&gt;诺基亚曾推出多款经典机型，包括曾在电影《黑客帝国》中亮相的8110、全球首部智能手机9000、内置天线的3210以及配备摄像头的7650。&lt;/p&gt;\n&lt;p&gt;然而，这家有过无数辉煌的老牌手机厂商也曾多次失误：在摩托罗拉Razr系列翻盖手机大受欢迎时，诺基亚未能及时推出能够与之对抗的机型;而当苹果在2007年发布首款iPhone，重新定义整个手机市场后，反应迟缓的诺基亚仍然死守传统设计，并没有推出触摸屏机型。&lt;/p&gt;\n&lt;p&gt;2010年，诺基亚共发布28款机型，总出货量逾4.53亿部。然而，今年第二季度，该公司在全球智能机市场的份额已经从去年同期的38.1%暴跌至15.2%，被苹果和三星超越，位居第三位。&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;继承多彩塑料外壳&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;阿赫蒂萨里的设计团队拥有数百名员工，散布芬兰、中国、英国和美国等地。他说：&amp;ldquo;我们的工作是论证一款产品是否适合大规模生产，为生产线制作模具，并为特定组件挑选合作生产商。诺基亚在这一领域极具竞争力。&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;诺基亚手机采用的外壳材料多种多样，个性鲜明，为该公司在硬件领域的成功奠定基础。目前，诺基亚手机主要采用原生色彩的聚碳酸酯外壳。阿赫蒂萨里说：&amp;ldquo;色彩是消费者选择的简单标志，这一重要特性将得到继承。&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;对他而言，创新意味着通过仔细观察用户及其所处环境，设计更好、更自然地手机使用方式。从草稿到3D模型再到真机，生产大量的原型机是简洁、精准的必经之路。&lt;/p&gt;\n&lt;p&gt;阿赫蒂萨里称，诺基亚将推出更多配备物理键盘的触摸屏手机，如E6和C3等。他说：&amp;ldquo;许多人仍然需要键盘;诺基亚未来几年间将在这一利润极其丰厚的市场继续创新。&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;他还计划通过&amp;ldquo;将手机体验与地图和用户地理位置信息相连接，以前所未有的方式绘制整个世界&amp;rdquo;，以增添用户价值&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('10','12','<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://www.v5.com/upfile/2011/08/30/20110830213900_889.png\" border=\"0\" alt=\"Windows 8更多细节曝光：菜单功能更直观\" width=\"450\" height=\"507\" />Windows 8更多细节曝光：菜单功能更直观</p>\n<p>新浪科技讯 北京时间8月30日凌晨消息，微软项目管理总监亚历克斯&middot;西蒙斯(Alex Simons)今天发表博客文章，透露了Windows 8操作系统的更多细节，其中最为显著的特征是&ldquo;Ribbon&rdquo;界面的广泛应用。</p>\n<p>图片显示，Windows 8的资源管理器在窗口上方以图标形式展现许多常用功能，如&ldquo;复制&rdquo;、&ldquo;粘贴&rdquo;和&ldquo;剪切&rdquo;等，方便用户寻找、使用这些功能。在Windows 7及更早版本的Windows系统中，这些功能通常以子菜单的形式展现，用户需要经过两次点击才能完成。新的用户界面无疑将提升用户体验。</p>\n<p>这种界面设计方案被称为&ldquo;Ribbon&rdquo;，最初应用于Office 2007软件套装中，Office 2010延续了这一做法，Windows 7则部分采纳。微软计划在Windows 8中全面整合这一界面。</p>\n<p>西蒙斯在博客文章中表示，调查显示，用户最常用的Windows资源管理器菜单功能是&ldquo;粘贴&rdquo;，其后依次是&ldquo;属性&rdquo;、&ldquo;复制&rdquo;、&ldquo;删除&rdquo;、&ldquo;重命名&rdquo;、&ldquo;刷新&rdquo;和&ldquo;剪切&rdquo;等。最常用的10个菜单功能占到使用总量的81.8%，为&ldquo;Ribbon&rdquo;界面的广泛使用奠定基础。</p>');
INSERT INTO `espcms_document_content` VALUES ('11','13','&lt;p&gt;昨天，最高人民法院和最高人民检察院联合发布《关于办理危害计算机信息系统安全刑事案件应用法律若干问题的解释》。该司法解释规定，黑客非法获取支付结算、证券交易、期货交易等网络金融服务的账号、口令、密码等信息10组以上，可处3年以下有期徒刑等刑罚，获取上述信息50组以上的，处3年以上7年以下有期徒刑。&lt;/p&gt;\n&lt;p&gt;新的司法解释规定，获取支付结算、证券交易、期货交易等网络金融服务的账号、口令、密码、数字证书等信息10组以上;获取其他如账号、口令等身份认证信息500组以上;非法控制计算机信息系统20台以上;违法所得5000元以上或者造成经济损失1万元以上，即可判处3年以下有期徒刑等刑罚。如达到上述标准的5倍以上，可处3年以上7年以下有期徒刑。&lt;/p&gt;\n&lt;p&gt;司法解释还明确了故意制作、传播计算机病毒不同情形的定罪标准。如通过网络、文件等传播计算机病毒，造成20台以上计算机系统被植入病毒程序;提供计算机病毒等破坏性程序10人次以上;违法所得5000元以上或者造成经济损失1万元以上，判处5年以下有期徒刑等刑罚。如数量或数额达到上述标准的5倍以上，处5年以上有期徒刑。&lt;/p&gt;\n&lt;p&gt;另外，如破坏国家机关或金融、电信、交通、教育、医疗、能源等领域提供公共服务的计算机信息系统的功能、数据或者应用程序，致使生产、生活受到严重影响或者造成恶劣社会影响的，应认定为破坏计算机信息系统&amp;ldquo;后果特别严重&amp;rdquo;，处5年以上有期徒刑。&lt;/p&gt;\n&lt;p&gt;如以单位名义或者单位形式实施危害计算机信息系统安全犯罪，达到定罪量刑标准的，应追究直接负责的主管人员和其他直接责任人员的刑事责任&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('12','14','&lt;p&gt;导语：美国科技资讯网站PCWorld今天发表文章称，中国一直是软件盗版的&amp;ldquo;重灾区&amp;rdquo;，取证难、处罚轻令许多公司对盗版问题感到无可奈何;但美国一些公司抓住商机，通过追踪提供盗版用户数据，帮助企业寻求赔偿或发起诉讼。&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;以下为文章全文：&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;中国一直是软件盗版的&amp;ldquo;重灾区&amp;rdquo;。然而，一些头脑灵活的美国公司抓住商机，追踪盗版软件使用状况，向客户提供侵权个人和企业的信息。部分情况下，盗版软件的使用者将被告上法庭。&lt;/p&gt;\n&lt;p&gt;一家名为V.i. Labs的美国公司提供此类服务，帮助工程和设计软件厂商追踪盗版产品的使用状况。该公司副总裁维克&amp;middot;德梅林(Vic DeMarines)透露，截至今年6月，V.i. Labs拥有12家客户，因盗版而遭受的直接损失达12亿美元，其中一半来自中国市场。&lt;/p&gt;\n&lt;p&gt;德梅林说：&amp;ldquo;中国一直是个大问题。许多公司已经不再关心这一市场的盗版状况，因为他们感到无可奈何。&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;专家表示，尽管中国政府正致力于打击盗版，但处罚过轻和缺乏执行导致盗版软件的使用规模仍然庞大。美国商业软件联盟(Business Software Alliance)预计，2010年中国市场中盗版软件的总价值高达77亿美元，仅次于美国。&lt;/p&gt;\n&lt;p&gt;德梅林表示，尽管面临诸多挑战，但企业软件厂商在销售产品时处境略佳。这是因为他们主要面对大型企业，其用户具备购买正版软件的经济实力，使用状况也更易于追踪。&lt;/p&gt;\n&lt;p&gt;他说：&amp;ldquo;我们认为，这是从整体上减少盗版的更好方法。你需要追踪那些买得起正版软件的组织机构，而不是将那些破解软件的个人作为打击目标。&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;他表示，尽管软件厂商采取各种措施保护其产品，但盗版者只需要30到90天，就能够完成破解并在互联网上大肆传播。&lt;/p&gt;\n&lt;p&gt;V.i. Labs向客户提供一种可整合到软件中的代码，以追踪产品使用状况。有40家企业使用了这种追踪技术，可以通过收集到的数据了解中国的哪些机构、有多少台PC在使用盗版软件。例如，仅在北京一地，V.i. Labs就发现有超过5000台电脑在使用未授权的CAD软件。&lt;/p&gt;\n&lt;p&gt;德梅林称，企业可以通过分析盗版软件使用状况，确定目标客户群。V.i. Labs的数据显示，在中国，盗版软件的主要用户群是生产企业、设计公司和大学院校。&lt;/p&gt;\n&lt;p&gt;V.i. Labs称，企业可通过其数据分析服务，每年获得10%至25%的额外收入。中国市场中，该公司最成功的案例是帮助客户向在美国开展业务，或已经拥有活跃用户群的企业索赔。&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;取证难题催生&amp;ldquo;秘密调查&amp;rdquo;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;然而，在一些案例中，侵权者并不愿意赔偿，迫使软件厂商将其告上法庭。&lt;/p&gt;\n&lt;p&gt;Orrick, Herrington &amp;amp; Sutcliffe律师事务所律师王祥(Xiang Wang，音译)说：&amp;ldquo;我们试图找到&amp;lsquo;大鱼&amp;rsquo;，也就是那些买得起软件的公司。&amp;rdquo;他表示，软件追踪有助于确定侵权者，但更加困难的是找到更多证据。&lt;/p&gt;\n&lt;p&gt;在中国，找寻证据的义务主要由原告承担，这与美国不同。在这种情况下，王祥所在的律师事务所秘密派出调查人员，&amp;ldquo;潜入&amp;rdquo;那些涉嫌使用盗版软件的公司。随后，他们会将找到的一切信息提交政府监管机构，期盼后者展开调查。王祥表示，政府找到的一切证据都会得到法庭认可。&lt;/p&gt;\n&lt;p&gt;然而，即使遭遇侵权的企业最终赢得官司，罚金数额仍然很小，有时仅为1万美元。王祥说：&amp;ldquo;我们已经打了超过100起官司，但想要因盗版问题而关闭一座工厂是一件很困难的事情，这关系到许多人的饭碗。&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;考虑到现实状况，许多公司开始在美国发起侵权诉讼。不久前，美国电子设计自动化软件厂商AWR向加利福尼亚州一家法院递交诉状，起诉中兴通讯及其美国子公司。&lt;/p&gt;\n&lt;p&gt;AWR在诉状中称，中兴使用了该公司的未授权软件。在收集证据的过程中，AWR在其软件产品中增加一个特殊功能，能够将使用状况自动发送至该公司的服务器，追踪盗版软件的使用者。&lt;/p&gt;\n&lt;p&gt;今年6月，中兴被判侵犯AWR的软件授权协议。双方不久前达成和解，和解条款并未披露。中兴尚未就此置评。&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('13','15','&lt;p&gt;在昨日举行的2011APEC中小企业峰会电子商务日演讲中，商务部电子商务和信息化司副巡视员聂林海表示，&amp;ldquo;十二五&amp;rdquo;期间将是电子商务企业更快速发展的时期，而物流既是电子商务企业发展的瓶颈，也是电子商务企业发展的机遇。他鼓励电子商务企业在做客户的同时抓紧机遇进入物流行业，并在下一步的发展中向社会开放，成为物流体系中的新宠。&lt;/p&gt;\n&lt;p&gt;聂林海表示，目前，第三方物流服务体系不完善，电子商务企业为了获得客户的满意度不得不做物流。随着科学技术的不断发展，社会化分工越来越专业和细化，电子商务企业的物流将比第三方物流成本更低，效率更高。&lt;/p&gt;\n&lt;p&gt;&amp;ldquo;电子商务企业物流发展的下一步应该走向社会，向社会开放，成为第三方社会物流，作为物流体系中的一个新宠。&amp;rdquo;聂林海表示。&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('14','16','&lt;p&gt;北京时间8月30日消息，据国外媒体报道，最近，宏达电新任手机设计负责人斯哥特&amp;middot;克罗(Scott Croyle)表示，尽管设计高层发生变化，但是手机设计思维并不会改变，宏达电仍会坚持用户体验重于技术的原则。&lt;/p&gt;\n&lt;p&gt;最近，宏达电负责手机设计的首席创新官霍雷斯&amp;middot;卢克(Horace Luke)因为个人原因辞职，现任负责设计的副总裁克罗接任此职。&lt;/p&gt;\n&lt;p&gt;克罗日前对媒体表示，宏达电未来仍将会致力于在智能手机和平板电脑产品中提供更多的内容和服务，况且聚焦于提升用户体验，比如大屏幕可以改善欣赏视频的效果，前后摄像头则可以和家人以及朋友进行视频对话。&lt;/p&gt;\n&lt;p&gt;克罗表示，尽管设计高层易人，但是&amp;ldquo;消费者第一&amp;rdquo;的理念已经成为宏达电的DNA，因此不会变化。&lt;/p&gt;\n&lt;p&gt;克罗强调说，宏达电会关注使用手机的用户的体验，而不是关注后台的技术本身。&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('15','17','&lt;p&gt;北京时间8月30日上午消息，据美国科技博客网站BusinessInsider报道，曾在苹果实习的乔纳森&amp;middot;伯格(Jonathan Berger)日前回忆了一件往事，突出了史蒂夫&amp;middot;乔布斯(Steve Jobs)对苹果的深厚感情。&lt;/p&gt;\n&lt;p&gt;伯格2000年在苹果实习的时候，曾在一次会议上问乔布斯为何要重回苹果。乔布斯回答说：&amp;ldquo;当时，我对是否重回苹果犹豫不决，内心在激烈斗争。我问过很多人，也得到了很多意见。一天深夜，我仍在为这个问题苦恼，凌晨2点，我给一个朋友打去电话，问道，&amp;lsquo;我应该回苹果还是不回？&amp;rsquo;这个朋友回答说，&amp;lsquo;听着，史蒂夫，我对苹果的事情一点都不放在心上，你自己做决定吧！&amp;rsquo;说完就挂了电话。就在那个时候，我才发现，我真的很在乎苹果。&amp;rdquo;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('16','18','&lt;p&gt;腾讯科技讯(中涛)北京时间8月30日消息，据美国科技博客网站Silicon Alley Insider(SAI)报道，一名知情人士周一透露，雅虎CEO卡罗尔&amp;middot;巴茨(Carol Bartz)对于谋求连任事宜已没有任何兴趣。如果不出意外，巴茨当前工作合同期满后，她将于2013年离职。&lt;/p&gt;\n&lt;p&gt;&lt;img style=&quot;display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;http://www.v5.com/upfile/2011/08/30/20110830214223_287.jpg&quot; border=&quot;0&quot; alt=&quot;传雅虎CEO巴茨无意谋求连任 2013年离职(图)&quot; width=&quot;460&quot; height=&quot;306&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;雅虎CEO卡罗尔&amp;middot;巴茨(腾讯科技配图)&lt;/p&gt;\n&lt;p&gt;这名熟悉巴茨的知情人士说：&amp;ldquo;巴茨其实已经是处于一种准备离职的状态，因此对于谋求雅虎下任CEO一事根本没有兴趣。我担心她目前都有些&amp;lsquo;出局&amp;rsquo;的意思了。&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;但另一名知情人士称，雅虎董事会并不认同这种看法。这名知情人士称：&amp;ldquo;雅虎董事会认为，巴茨很有能力，做了大量雅虎董事会当初希望她做的工作：修复平台、满足用户和广告主需求、提高公司利润率等等。雅虎董事会接下来希望同巴茨及其团队密切配合，从而使雅虎能够实现更为强劲的长期增长。&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;但第二名知情人士没有透露，雅虎董事会是否已就续签工作合同事宜与巴茨展开商谈。&lt;/p&gt;\n&lt;p&gt;SAI认为，就近期而言，雅虎董事会不会主动要求巴茨提前离职，原因有两点：首先，巴茨上任后，确实做了大量工作，只是这些努力不被外界认可。举例来说，巴茨曾采取压缩开支措施和升级雅虎内容发布系统，但这些措施没有受到外界称赞。其次，由于雅虎董事会本身&amp;ldquo;行事被动、脱离现实&amp;rdquo;，因此巴茨仍能保留住其当前CEO职位。&lt;/p&gt;\n&lt;p&gt;总而言之，巴茨当前工作合同于2013年期满后，雅虎董事会将不会同她续签合同。&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('17','19','&lt;p&gt;8月30日，据国外媒体报道，在今年早些时候宣布将接任首席执行官时，谷歌公司(Google Inc.)联合创始人佩奇(Larry Page)承诺将会对这家互联网搜索巨头进行重组以加快决策。&lt;/p&gt;\n&lt;p&gt;佩奇自4月份上任以来就面临诸多挑战。这些挑战包括：美国反垄断机构对公司行为的广泛调查;就谷歌广告业务受到的长期刑事调查达成和解;导致他收购手机制造商摩托罗拉移动控股有限公司(Motorola Mobility Holdings Inc.)的不断变化的行业力量。自从他担任这个新职务后，公司股价跌了9.1%，高于纳斯达克(Nasdaq)股市整体跌幅8.42%。&lt;/p&gt;\n&lt;p&gt;联邦检察官一直在调查谷歌在2003年至2009年允许非法网络药商在其搜索引擎刊登广告的行为。上周，联邦检察官特别提到了佩奇。他们说佩奇个人知晓这项指称的犯罪行为，而且未能予以阻止。在这之前，谷歌上周支付了5亿美元避免受到刑事指控。&lt;br /&gt;&lt;!-- pagebreak --&gt;谷歌发言人拒绝就佩奇对药品广告行为的了解情况置评。他还说，调查与目前的广告行为无关，公司在继续向前。谷歌拒绝让38岁的佩奇出面置评。&lt;/p&gt;\n&lt;p&gt;其他挫折还包括，未能与唱片公司达成允许谷歌新推出的互联网音乐服务销售歌曲和专辑的协议;公司6月公开披露中国境内的&amp;ldquo;捣乱分子&amp;rdquo;入侵了Gmail账户;7月竞购北电网络有限公司(Nortel Networks Corp.)技术专利落败，谷歌说这是促使其收购摩托罗拉的一个原因。&lt;/p&gt;\n&lt;p&gt;但据佩奇的同事说，过去几个月发生了很多事，佩奇应对的方法是集中解决自己控制范围内的事务，包括开拓新业务。&lt;/p&gt;\n&lt;p&gt;谷歌Chrome浏览器及操作系统负责人皮查伊(Sundar Pichai)说，佩奇对公司内外的所有事务都了如指掌，而且会加以关注;虽然他要考虑到所有这些事情，但他工作的方式是高度关注产品和用户。&lt;/p&gt;\n&lt;p&gt;同时也不乏积极的一面。他对公司的重组得到了员工的极大支持;4月，政府批准了谷歌收购ITA Software的申请，这项交易有助于谷歌建立旅游搜索服务;公司初涉社交网络的产品Google+获得了初步增长。员工也称赞佩奇推动改变了搜索引擎和Gmail等许多服务的外观。&lt;/p&gt;\n&lt;p&gt;佩奇还听取批评意见。对于众人对谷歌增长速度的疑问，华尔街分析师曾在4月份抱怨说，佩奇在第一次财报电话会上说的太少。在那次会议上，佩奇说公司的业绩和前景让他非常激动，但没有谈自己的战略，也没有留下来回答分析师的提问。&lt;/p&gt;\n&lt;p&gt;但在7月份取得更强劲业绩之后的季度电话会议上，这位新CEO全面阐述了自己的战略。其中，他说，谷歌将不难找到利用其Chrome浏览器、YouTube视频网站和安卓(Android)移动操作系统的增长挣钱的办法。目前全世界逾1.35亿台设备都安装了安卓系统。&lt;/p&gt;\n&lt;p&gt;佩奇在那次会议上说，谷歌只发挥了1%的潜力，正因为如此，我才努力领导这家公司登上新的高度。&lt;/p&gt;\n&lt;p&gt;投行Stifel, Nicolaus &amp;amp; Co.分析师罗翰(Jordan Rohan)说，佩奇在如何与投资者沟通方面学得相当快。他还说，很明显佩奇不满足于谷歌在网络搜索领域的龙头地位，打算让谷歌在更多领域占据龙头地位，尽管这样做引起了政府更严格的监督，并使它的前进道路更加崎岖。&lt;!-- pagebreak --&gt;&lt;/p&gt;\n&lt;p&gt;谷歌多名员工说，佩奇在公司内部有着广泛的支持者。在过去几个月，他努力按照自己的承诺改革公司，通过全面重组厘清责任和优先事项。除此以外，他还清除了一些对这些优先事项没有用处的项目。&lt;/p&gt;\n&lt;p&gt;佩奇还对本地商业广告行动和Google+等更新的产品产生了兴趣。社交网络Google+是Facebook Inc.的竞争对手，佩奇已经将今年员工奖金的多少同这款产品的业绩挂钩。&lt;/p&gt;\n&lt;p&gt;在员工面前，佩奇努力摆脱自己的内向形象。知情人士说，Google+推出数周之后，他于7月份在加州山景城谷歌总部参与组织了一场&amp;ldquo;沙滩聚会&amp;rdquo;，甚至还弄了一台高科技造浪机。&lt;/p&gt;\n&lt;p&gt;同事们还说，佩奇非常善于与员工沟通，包括在与产品有关的会议上，在每周五下午的&amp;ldquo;感谢上帝，终于到周五了&amp;rdquo;的全员会议上，以及通过在他的内部Google+帐户上公布数分钟长的视频片段。&lt;/p&gt;\n&lt;p&gt;尽管如此，外部的难题迫使佩奇迅速做出回应。今年夏天早些时候，谷歌说正面临联邦贸易委员会(Federal Trade Commission)对其业务行为的广泛调查，调查可能需要数年时间才能完成。&lt;/p&gt;\n&lt;p&gt;在消息披露后，7月份谷歌调整了其搜索引擎显示本地企业信息的方式。据知情人士透露，这是联邦贸易委员会调查的事项之一。&lt;/p&gt;\n&lt;p&gt;与此同时，移动领域日益激烈的竞争促使佩奇押下重注，本月宣布谷歌就斥资125亿美元收购摩托罗拉达成一致意见。这是互联网搜索公司谷歌有史以来规模最大的一桩交易。&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('18','20','&lt;p&gt;北京时间8月30日早间消息(蒋均牧)巴林电信公司(Batelco)日前宣布调整其高管层，并任命现任集团首席执行官彼得&amp;middot;卡里阿诺鲍罗斯(Peter Kaliaropoulos)为新设的战略任务首席执行官，负责集团下属合资企业。&lt;/p&gt;\n&lt;p&gt;巴林电信现任副董事长谢赫&amp;middot;穆罕默德&amp;middot;本&amp;middot;伊萨&amp;middot;艾尔&amp;middot;哈里发(Shaikh Mohamed Bin Isa Al Khalifa)将接任集团首席执行官一职。&lt;/p&gt;\n&lt;p&gt;巴林电信董事长，谢赫&amp;middot;哈马德&amp;middot;本&amp;middot;阿卜杜拉&amp;middot;艾尔&amp;middot;哈里发(Shaikh Hamad Bin Abdulla Al Khalifa)表示，他很高兴看到新任集团首席执行官是一位经验丰富的巴林业务主管，以及首位担任集团最高级职务的巴林公民。&lt;/p&gt;\n&lt;p&gt;谢赫&amp;middot;穆罕默德将于2011年10月1日起负责整个集团，谢赫&amp;middot;哈马德表示。&lt;/p&gt;\n&lt;p&gt;他还表示，他非常高兴欢迎在董事会服务时间最长的成员穆拉德&amp;middot;阿里&amp;middot;穆拉德(Murad Ali Murad)接任副董事长一职。&lt;/p&gt;\n&lt;p&gt;彼得将在战略任务首席执行官职位上继续参与巴林电信事务，并将聚焦于从新的收购中加速创造价值。&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('19','21','&lt;p&gt;&amp;nbsp;北京时间8月30日早间消息，戴尔将在今年晚些时候与VMware合作推出第一项云基础设施服务，继续将其业务向PC以外的领域拓展，进入利润率更高的软件和服务领域。&lt;/p&gt;\n&lt;p&gt;这项服务将基于VMworld的vCloud平台，通过戴尔旗下位于德克萨斯州普雷诺(Plano)的数据中心交付。用户将可通过现购现付的方式来租用计算和存储服务，也可签订更长期的合同，将预留或专用的硬件涵盖在内。此外，戴尔还将向公司提供顾问服务，帮助其在自己的数据中心里构建私人云，这些数据中心也使用vCloud服务。戴尔还将使用VMware的Connector软件来构建&amp;ldquo;混合&amp;rdquo;云，将私人和公共云环境连接到一起。&lt;/p&gt;\n&lt;p&gt;戴尔计划于周一在VMware拉斯维加斯VMworld大会上宣布这项计划。&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;托管安全服务&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;这项计划将增强戴尔与IBM和惠普之间的竞争关系，后两家公司也正在构建公共云服务。此外，这项计划还将让戴尔成为亚马逊网络服务、Verizon Business和Terremark等服务提供商的竞争对手，这些提供商中有一些同时还是戴尔的客户。&lt;/p&gt;\n&lt;p&gt;存储咨询公司Taneja Group创始人兼顾问分析师Arun Taneja称，戴尔必须提供这些服务以保持公司在业内的竞争力，原因是云服务正在变成常规业务。他预测称，所有大型IT厂商都将在三年内提供某种形式的云服务。&lt;/p&gt;\n&lt;p&gt;戴尔服务部门副总裁兼CTO(首席技术官)马克&amp;middot;比尔格(Mark Bilger)称，戴尔&amp;ldquo;独一无二的价值定位&amp;rdquo;是该公司将提供的托管安全服务。他表示，托管安全服务将成为戴尔服务的标准组成部分，而不是作为附加服务出售。这项服务名为&amp;ldquo;Dell Cloud with VMware vCloud Datacenter Service&amp;rdquo;，将主要以大中型公司为目标，其测试版将于几周内启动，计划于第四季度在美国市场上正式推出，明年在欧洲和亚洲市场上推出。&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;平台即服务&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;比尔格称，戴尔计划在明年推出一种&amp;ldquo;平台即服务&amp;rdquo;产品，这种服务将使用微软Azure软件；此外还将推出另一项基于OpenStack或Eucalyptus开源平台的基础设施服务，但戴尔尚未作出最终决定。&lt;/p&gt;\n&lt;p&gt;通过收购IT服务厂商Perot Systems的交易，戴尔已经在提供应用托管服务，其年度营收约为10亿美元。比尔格表示，这些客户合同即将续签，戴尔希望将其转为标准化的公共云服务。他指出，更加现代化的、基于VMware的环境应该会意味着戴尔及其客户的成本都将有所下降。但是，Perot的许多客户都来自于医疗保健行业，因此戴尔将需让这项服务遵循HIPPA(健康保险流通与责任法案)的规定。比尔格称，戴尔计划在明年这样做。&lt;/p&gt;\n&lt;p&gt;戴尔将提供三个层次的服务，分别是现购现付服务，这种服务每台虚拟机的成本最高；预留服务，可确保服务器的可用性；以及专用服务，向客户提供专用的服务器，后两项服务将要求客户签订一年期的服务合同。&lt;/p&gt;\n&lt;p&gt;戴尔并未透露这些服务的价格。比尔格称，戴尔的这些服务与其竞争对手提供的服务相比具备&amp;ldquo;竞争力&amp;rdquo;；但他同时表示，这些服务的价格将略高于竞争对手的服务，原因是其包含安全特性。&lt;!-- pagebreak --&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;战略转变&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;利用vCloud平台在某种意义上对戴尔意味着战略的转变。过去一年时间里，戴尔 一直都在构建自己的虚拟堆，包括其虚拟集成系统(VIS)和高级基础设施管理(AIM)软件等。从现在开始，戴尔将把这些产品与VMware软件一起出售。&lt;/p&gt;\n&lt;p&gt;比尔格称，客户需为其私人云和公共云服务使用相同的软件平台，目的是将其连接起来，从而成为&amp;ldquo;混合云&amp;rdquo;。&lt;/p&gt;\n&lt;p&gt;咨询公司ThinkStrategies董事总经理杰弗里&amp;middot;开普兰(Jeffrey Kaplan)称，与VMware这样的大型厂商合作对戴尔来说十分重要。他指出：&amp;ldquo;戴尔已经认识到，云服务是公司未来的一个重要组成部分。想要取得成功的话，戴尔不只必须开发自己的解决方案，同时还必须与业内领先公司结盟，而(戴尔与VMware合作)就是其中一个例子。&amp;rdquo;&lt;/p&gt;\n&lt;p&gt;开普兰称，在将自身重建为一家软件和服务公司的问题上，戴尔的表现好于他的预期，&amp;ldquo;我并非戴尔收购Perot交易的坚定支持者，但戴尔确实取得了成功&amp;rdquo;。&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('20','9','&lt;p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;\n&lt;object id=&quot;reader&quot; width=&quot;630&quot; height=&quot;503&quot; data=&quot;http://wenku.baidu.com/static/flash/apireader.swf?docurl=http://wenku.baidu.com/play&amp;amp;docid=a72cf4360b4c2e3f57276336&amp;amp;title=%E7%A7%BB%E5%8A%A8%E9%80%9A%E4%BF%A1%E5%8F%91%E5%B1%95-%E5%8C%97%E4%BA%AC%E7%A7%BB%E5%8A%A8%E4%B9%9D%E6%9C%88&amp;amp;doctype=ppt&amp;amp;fpn=5&amp;amp;npn=5&amp;amp;readertype=external&amp;amp;catal=0&amp;amp;cdnurl=http://txt.wenku.baidu.com/play&quot; type=&quot;application/x-shockwave-flash&quot;&gt;\n&lt;param name=&quot;align&quot; value=&quot;middle&quot; /&gt;\n&lt;param name=&quot;wmode&quot; value=&quot;window&quot; /&gt;\n&lt;param name=&quot;allowfullscreen&quot; value=&quot;true&quot; /&gt;\n&lt;param name=&quot;allowscriptaccess&quot; value=&quot;always&quot; /&gt;\n&lt;param name=&quot;src&quot; value=&quot;http://wenku.baidu.com/static/flash/apireader.swf?docurl=http://wenku.baidu.com/play&amp;amp;docid=a72cf4360b4c2e3f57276336&amp;amp;title=%E7%A7%BB%E5%8A%A8%E9%80%9A%E4%BF%A1%E5%8F%91%E5%B1%95-%E5%8C%97%E4%BA%AC%E7%A7%BB%E5%8A%A8%E4%B9%9D%E6%9C%88&amp;amp;doctype=ppt&amp;amp;fpn=5&amp;amp;npn=5&amp;amp;readertype=external&amp;amp;catal=0&amp;amp;cdnurl=http://txt.wenku.baidu.com/play&quot; /&gt;\n&lt;param name=&quot;name&quot; value=&quot;reader&quot; /&gt;\n&lt;param name=&quot;bgcolor&quot; value=&quot;#FFFFFF&quot; /&gt;\n&lt;/object&gt;\n&lt;/p&gt;\n&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('21','22','&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;span&gt;&lt;span style=&quot;font-size: large;&quot;&gt;&lt;strong&gt;IPHONE4&amp;nbsp;问与答&amp;nbsp; 新手上路&lt;/strong&gt;&lt;/span&gt;！&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: small;&quot;&gt;1：请问机器是什么版本？是行货吗？有保修吗？有发票吗？怎么保修？&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;请亲们不要再问这种问题，我们是美承公司，正规苹果授权经销商，只卖大陆行货，带正规机打发票，全国联保&lt;span&gt;1&lt;/span&gt;年！&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;font-size: small;&quot;&gt;2：请问剪卡是什么意思？需要剪卡吗？怎么剪卡？&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;span&gt;Iphone 4&lt;/span&gt;用的是小卡，我们常用的是大卡，直接装装不进去，需要剪小才行！可以到营业厅找人帮忙免费剪卡或者就自己拿把剪刀开始吧，详情可以咨询客服哦！&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: small;&quot;&gt;3：机器里面有软件吗？是不是买回来就可以用了，什么东西都安装好了吗？&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;机器里面出厂时自带了一些软件，亲拿到手的时候只需要激活一下就可以了！（&lt;span&gt;PS&lt;/span&gt;：每个苹果全新的机器第一次使用都是需要激活的！如果您发现您的手机不需要激活可以直接使用，只能说您杯具了！）&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: small;&quot;&gt;4：请问手机如何激活？如何下载ITUNES？如何注册？&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;电脑登陆苹果官网下载安装&lt;span&gt;itunes&lt;/span&gt;手机装上卡连接电脑自动激活！&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;下载&lt;span&gt;itunes&lt;/span&gt;网址&lt;span&gt;&amp;nbsp;&lt;/span&gt;&lt;span&gt;http://www.apple.com.cn/itunes/&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;strong&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;5：请问如何复制通讯录？蜂窝网络什么意思？&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;打开设置&lt;span&gt;-&lt;/span&gt;邮件，通讯录，日历&lt;span&gt;-&lt;/span&gt;导入&lt;span&gt;sim&lt;/span&gt;通讯录&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;span&gt;Iphone&lt;/span&gt;可以&lt;span&gt;wifi&lt;/span&gt;上网可以用手机卡上网而蜂窝数据就是用手机卡上网，建议亲们在有&lt;span&gt;wifi&lt;/span&gt;的情况下不要打开蜂窝数据，首先他太耗电了，其次手机流量哗啦啦的流过，流的全是票票啊&lt;span&gt;!&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;span&gt;&lt;br /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: small;&quot;&gt;6：如何下载音乐，视频，游戏？&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;这里需要再次提到&lt;span&gt;itunes&lt;/span&gt;了，&lt;span&gt;itunes&lt;/span&gt;是玩转苹果的必备软件，可以把音乐视频，上传到&lt;span&gt;itunes&lt;/span&gt;资料库然后同步，游戏可以在&lt;span&gt;itunes store&lt;/span&gt;直接下载同步到手机里！&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: small;&quot;&gt;7：请问能不能帮忙贴膜或者安装软件？&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;如果需要帮忙贴膜和安装软件我们需要拆封机器！建议亲们自己贴膜安装软件，我们直接发全新不拆封的给您，这样您收到爱机拆封的时候会非常的激动！&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: small;&quot;&gt;8：请问越狱是什么意思？机器需要越狱吗？&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;越狱是修改手机的权限让他支持第三软件这样我们就可以自己到网上随便下载免费的软件！如果您只是一般用不需要越狱！&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;亲们！当天付款时间不低于下午&lt;span&gt;2&lt;/span&gt;点，我们当天发货哦（周日除外）非活动期间哦！&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;&lt;span style=&quot;font-size: small;&quot;&gt;如果还有其他问题，建议登陆网址&lt;span&gt;178xx&lt;/span&gt;，&lt;span&gt;IPHONE4&lt;/span&gt;新手教程。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('22','23','&lt;p&gt;中兴V880因为带有3D加速功能，所以在多点触摸方面表现也可圈可点。下面我们找来了MOTO 里程碑作为对比。&lt;/p&gt;\n&lt;p&gt;由于里程碑已经刷了一个民间的Android 2.2 ROM，所以其多点触摸只能作一个参考。从表现来看，中兴V880和里程碑的多点触摸反应都比较灵敏，但是普遍存在一些&amp;ldquo;飘&amp;rdquo;的情况，中兴V880在放大缩小的过程稍微稳一&lt;/p&gt;\n&lt;p&gt;&lt;br /&gt;&lt;strong&gt;中兴V880与里程碑游戏对比&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;下面我们来试玩一下《愤怒的小鸟》，这个游戏对手机的硬件要求还是有一定水平的。所以能够流畅《玩愤怒的小鸟》也是衡量一款手机性能的简要指标。视频中的里程碑是一款采用了Android 2.2系统的超频版，CPU已破解为700MHz。&lt;/p&gt;\n&lt;p&gt;从游戏的加载速度来看，中兴V880带有512MB的内存?匀徽加幸欢ǖ挠攀啤Ｕ飧龆员纫菜得髁酥行薞880在大型软件运行方面是不输于里程碑的。&lt;/p&gt;\n&lt;p&gt;对于一些需要CPU来处理的环节，经过解锁的里程碑会反应得快一点，这也可以看出中兴V880的MSN7227的性能还是稍微低于里程碑基于ARM Cortex-A8核心的TI OMAP3430 CPU。&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;320万像素AF摄像头&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;中兴V880采用了一枚320万像素的摄像头，算是入门级别的了。虽然像素方面与主流的500万有点差距，但是对于手机拍照来说影响并不大，比较厚道的是，中兴V880的摄像头支持自动对焦功能，这也是中兴比华为Android手机要更人性化的地方。&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('23','24','&lt;p&gt;诺基亚C5-03配备的是1000毫安时的电池，理论待机时间为600小时。在笔者对这款手机进行评测的期间，每天大约20分钟的通话时间外加2小时的上网时间，一块电池使用时间为三天左右。待机能力的好坏在一定程度上影响了手机的使用，在如今手机电池容量普遍较大的趋势下，1000毫安时的电池容量算是中等，如果手机使用率较高的使用者还是购置备用电池会比较方便。&lt;/p&gt;\n&lt;p&gt;&lt;br /&gt; 短信输入功能方面，笔者认为诺基亚C5-03还是做得非常不错的。手机自带手写、全屏手写、全屏QWERTY 键盘和数字字母键盘多种输入方式，不管是熟悉全键盘输入法、还是习惯手写输入法的使用者都可以得到满足。输入法自带的词汇联想功能使得输入比较方便，而且节省时间，输入法反应时间也比较快，总体而言，C5-03的短信功能使用很方便。&lt;/p&gt;\n&lt;p&gt;&lt;br /&gt;但是正如前文所提出的那样，对于触屏手机而言，没有配备触控笔是一个小小的遗憾，因为选择QWERTY键盘和数字字母键盘输入方式的时候，按键并不算很宽敞，很容易出现误触的情况，尤其对于男性使用者而言。而且没有触控笔，使用手写输入法也不太方便。&lt;/p&gt;\n&lt;p&gt;&lt;br /&gt;虽然没有数字键盘，但是诺基亚C5-03拨号并不麻烦。作为手机最重要最基本的功能，这款手机拨号也非常方便。不管选择哪种待机模式，都可以在待机画面中看到快速调出数字键的快捷方式和调出查找联系人的快捷方式。数字键按键很大，十分清晰大方。&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('24','25','&lt;p&gt;&amp;nbsp;HTC野火S作为野火的升级版本继承了前作的外观造型，分辨率的提高以及系统版本的提升让该机的体验进一步加强。在目前高端Andorid旗舰频繁的今天，我们更需要的是这种中端&lt;span&gt;产品&lt;/span&gt;来进入市场，Sense2.1界面的加入也让这款HTC野火S有了更充足的购买理由。如果你最近在寻找一款中端Aandorid&lt;span&gt;手机&lt;/span&gt;的话可以去实体店感受下这款手机，相信会有一个非常不错的体验。&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;\n&lt;object width=&quot;480&quot; height=&quot;400&quot; data=&quot;http://player.youku.com/player.php/sid/XMjQwNTkwMDA0/v.swf&quot; type=&quot;application/x-shockwave-flash&quot;&gt;\n&lt;param name=&quot;data&quot; value=&quot;http://player.youku.com/player.php/sid/XMjQwNTkwMDA0/v.swf&quot; /&gt;\n&lt;param name=&quot;align&quot; value=&quot;middle&quot; /&gt;\n&lt;param name=&quot;src&quot; value=&quot;http://player.youku.com/player.php/sid/XMjQwNTkwMDA0/v.swf&quot; /&gt;\n&lt;param name=&quot;allowfullscreen&quot; value=&quot;true&quot; /&gt;\n&lt;param name=&quot;quality&quot; value=&quot;high&quot; /&gt;\n&lt;/object&gt;\n&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('25','26','&lt;p&gt;HTC 渴望S支持720p的MP4视频文件播放，同时可以支持3gp，mp4，WMV9，avi（MP4和MP3封装）格式的视频文件播放，在音频文件播放表现上，它可以播放mp3，wav，wma9格式的音频文件。无论是在音乐播放还是视频播放界面，都可以开启srs特效，开启后会带来一些立体声的特殊效果，听上去旋律，节奏以及歌声会更加洪亮，浑厚清晰，不过开启后会增大扬声器功率，会加快电池的消耗速度。&lt;/p&gt;\n&lt;p&gt;&lt;br /&gt;HTC 渴望S采用了和HTC S710d一样的处理器架构，型号为高通MSM8255，这一架构的单核主频为1GHz，内置Adreno 205图形处理芯片，在3D图形处理方面以及高清视频播放方面提供了有力的支持。同时机身内存采用了1.1GB(ROM)/768MB(RAM)的组合方式，下面是测试结果：&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('26','27','&lt;p&gt;如果说三星是7寸平板电脑市场的尝鲜者，拥有对市场快速而敏锐的眼光，那么HTC则称得上是7寸平板电脑市场的发掘者，就像HTC Sense的设计理念一样，以用户为中心，发掘用户的需求从而研发产品，这也是HTC能够迅速红遍全球的原因之一，的确，平板电脑市场的潜力是无法估量的，各大传统的厂商都在向这一新兴领域进军，而HTC也不例外，作为HTC首款平板电脑，其选择了7寸这个大小尺寸，目的在于突出其手机特性而又能满足那些手机不可能完成的需求。&lt;/p&gt;\n&lt;p&gt;平板电脑可以说是大屏智能手机与笔者本二者的结合诞生的新兴产物，而用户在选择平板电脑时首先会考虑它的外观大小，而经过调查发现7寸平板电脑显然是用户需要的，在经过9.7寸的iPad以及10.1寸摩托罗拉XOOM的市场验证后，7寸逐渐成为了用户在购买选择平板电脑重要的元素之一，7寸作为掌上把控的最佳尺寸，在操控应用或游戏时都拥有良好的体验，这点三星P1000作为尝鲜者以火爆的销量足以证明。&lt;/p&gt;\n&lt;p&gt;&lt;br /&gt;而近期HTC针对大陆地区用户，也在上周联手战略合作伙伴新浪共同发布了HTC Flyer行货版型号为P510e的平板电脑，而中关村在线3G频道也有幸第一时间拿到了该产品，为您奉上全方位的评测。&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('27','28','&lt;p&gt;1、有团队精神、品行端正、沟通表达能力强、有上进心态和求知欲望；&lt;/p&gt;\n&lt;p&gt;2、精通MYSQL数据库；了解使用Linux等系统；&lt;/p&gt;\n&lt;p&gt;3、熟悉常见系统开发原理，如新闻、商城、论坛、人才网站等...&lt;/p&gt;\n&lt;p&gt;4、有独立开发的作品优先；&lt;/p&gt;\n&lt;p&gt;5、最少三年以上互联网编程经验；&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('28','29','&lt;p&gt;1、有团队精神、品行端正、沟通表达能力强、有上进心态和求知欲望；&lt;strong&gt;&lt;br /&gt;&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;2、linux/unix平台C/C++开发经验最少两年以上，至少熟悉多平台下的unix系统(AIX/SCO unix/HP unix/UnixWare)两种以上；&lt;/p&gt;\n&lt;p&gt;3、熟练掌握Android或IPhone手机软件开发；&lt;/p&gt;\n&lt;p&gt;4、熟练掌握SQL语言，熟悉MYSQL数据库；&lt;/p&gt;\n&lt;p&gt;5、对于C和JAVA兼顾编码者优先考虑；&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('29','30','&lt;p&gt;1、有团队精神、品行端正、有耐心、沟通表达能力强；&lt;/p&gt;\n&lt;p&gt;2、掌握互联网沟通技巧；&lt;/p&gt;\n&lt;p&gt;3、对客户进行全方位支持（销售支持、培训支持、售后支持）；&lt;/p&gt;\n&lt;p&gt;4、能够努力完成公司制定的任务目标；&lt;/p&gt;\n&lt;p&gt;5、有互联网方面的服务经验，有网页有基本了解的优先考虑；&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('30','31','&lt;p&gt;1、有团队精神、品行端正、沟通表达能力强；&lt;/p&gt;\n&lt;p&gt;2、金融本科专业毕业，有金融及财务方面的工作经验；&lt;/p&gt;\n&lt;p&gt;3、普通话标准，相貌端正；&lt;/p&gt;\n&lt;p&gt;4、能够适应上海及深圳两地不定期的出差工作；&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('31','32','&lt;p&gt;软件大小：680KB&lt;/p&gt;\n&lt;p&gt;版本：V3.0.2 简体中文正式版&lt;/p&gt;\n&lt;p&gt;说明：欢迎您通过此软件定时免费参加ESPCMS远程培训，有关远程培训信息请关注论坛公布！&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('32','33','&lt;p&gt;软件大小：10.18MB&lt;br /&gt;版本：1.2 正式版&lt;br /&gt;更新时间：2011-08-30 02:48:21&lt;br /&gt;说明：本软件集成了最新版的Apache服务器，Apache/2.0.58 (Win32)、PHP/5.2.11、MySQL&amp;nbsp;&lt;br /&gt;客户端版本: 5.0.51a、phpMyAdmin3.2.0.1、Zend Optimizer v3.3.3、Zend Debugger v5.2.6&amp;nbsp;&lt;br /&gt;所有配置已默认完成，绿色软件直接使用！&lt;br /&gt;说明：如果您无法启动本软件，请检查服务器是否占用80端口，如IIS！相关使用说明请查看帮助与支持有关本系统常见问题！&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('33','34','&lt;p&gt;&lt;img src=&quot;/upfile/2011/08/30/20110830215515_989.jpg&quot; alt=&quot;&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;EarcLink是一家成立于深圳的港资科技公司，我们开发的建站系列产品，能够帮助设计师和企业方便搭建网站营销平台。&quot;&gt;EarcLink was founded in Shenzhen, Hong Kong-owned technology company, we have developed siting products to help enterprises easily build a website designer and marketing platform.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;由于ESPCMS等建站产品的便捷和强大功能，因此而赢得了许多用户，建立了良好的行业口碑和强大的用户数量。&quot;&gt;Jianzhan products such as ESPCMS convenient and powerful features, hence the name, many users, the industry established a good reputation and a strong number of users.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;由于ESPCMS等建站产品的便捷和强大功能，因此而赢得了许多用户，建立了良好的行业口碑和强大的用户数量。&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;我们最早的产品在2002年推出，但早在此二年前，我们的故事就开始了。&quot;&gt;Our first product was introduced in 2002, but early in this two years ago, our story begins.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;我们最早的产品在2002年推出，但早在此二年前，我们的故事就开始了。&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;EarcLink的创始人刚开始并不是做软件开发，我们的兴趣集中在电子商务相关领域的课题研究（利用眼动仪分析用户的行为和兴趣爱好）。&quot;&gt;EarcLink founder of the beginning of not doing software development, our interest focused on the research fields related to electronic commerce (the use of eye tracking analysis of user behavior and interests).&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;由于发现众多网站，不管是表面设计精美的，还是那些原本糟糕的网站设计，EarcLink发现这些网站最基本的特点之一：就是不具备电子商务的交互性、传播性、扩展性也极差。&quot;&gt;As found in many sites, regardless of the surface beautifully designed, or who had poor website design, EarcLink found one of the most basic features of these sites: just do not have the interactive e-commerce, communication, and scalability is also very poor.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;只要企业的需求随之改变，网站就必须重新再来，由此浪费了企业大量的时间、金钱和积累的有限客户资源。&quot;&gt;As long as business needs changed, the site must start again, which wasted a lot of business time, money and the accumulation of limited client resources.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;因此，我们看到了一个机会，为改变这一现状，EarcLink开始了企业建站平台领域的研究和开发工作，相继开发了ESPCMS企业建站软件、KUBCMS门户建站软件及相关的云平台。&quot;&gt;Thus, we see an opportunity to change this situation, EarcLink began Build your platform areas of research and development, have developed a ESPCMS Build your software, KUBCMS Jianzhan portal software and related cloud platform.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;随着时间的推移和业务的增长，越来越多的客户接近我们并使用我们的产品。&quot;&gt;As time goes by and business growth, more and more customers closer to us and use our products.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;随着时间的推移和业务的增长，越来越多的客户接近我们并使用我们的产品。&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;与大多数开源软件一样，EarcLink在发展最为讯速的阶段经历了知识产权保护的问题，一方面是大量成长的用户，另一方面这些用户并未主动向EarcLink缴纳相应的软件授权费用，或&quot;&gt;Like with most open source software, EarcLink in the development stage of the most rapidly and experienced intellectual property protection issues, on the one hand a large number of users grow, the other hand, these users did not take the initiative to EarcLink pay the appropriate software licensing fees, or&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;为EarcLink发展带来多大的贡献，这致使EarcLink发展面临了相当大的难题。&quot;&gt;development for the EarcLink bring much contribution, which resulted in EarcLink facing the development of a large problem.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;后来EarcLink调整了低价的软件策略、通过向企业提供整合营销方案、加强知识产权的保护措施、与专业的建站公司进行合作推广营销套餐、提供专业的软件咨询服务等方法，终于使得EarcLink发展&quot;&gt;Later EarcLink adjusted low-cost software strategy by providing integrated marketing solutions to enterprises, strengthen intellectual property protection, siting and professional marketing company to promote cooperation package, to provide professional consulting services, software and other methods, and finally making EarcLink development&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;得以维持并稳定发展。&quot;&gt;maintained and stable development.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;得以维持并稳定发展。&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;EarcLink早期设计的软件产品有一些不尽人意，但通过大量用户的建议和实际测试，我们不断改进我们的软件产品。&quot;&gt;EarcLink early design of the software product has some less than satisfactory, but by a large number of users of recommendations and practical testing, we continuously improve our software products.&lt;/span&gt;&lt;span title=&quot;今天，有超过10万的网站每天在使用我们的软件进行网站营销、收集客户信息、交易产品、解答客户问题等等...&quot;&gt;Today, more than 100,000 websites every day for use of our website marketing software to collect customer information, trade products, answer customer questions, and so on ...&amp;nbsp;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;虽然我们还在不停的添加更多的功能和不断完善产品体验，但我们的目标还没有达到：打造最好的最实用的互联网建站平台。&quot;&gt;Although we still keep adding more features and continuously improve the product experience, but have not reached our goal: to create the best and most useful Internet Jianzhan platform.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('34','35','&lt;div&gt;\n&lt;p&gt;&lt;img src=&quot;/upfile/2011/08/30/20110830215515_989.jpg&quot; alt=&quot;&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;EarcLink是一家成立于深圳的港资科技公司，我们开发的建站系列产品，能够帮助设计师和企业方便搭建网站营销平台。&quot;&gt;EarcLink was founded in Shenzhen, Hong Kong-owned technology company, we have developed siting products to help enterprises easily build a website designer and marketing platform.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;由于ESPCMS等建站产品的便捷和强大功能，因此而赢得了许多用户，建立了良好的行业口碑和强大的用户数量。&quot;&gt;Jianzhan products such as ESPCMS convenient and powerful features, hence the name, many users, the industry established a good reputation and a strong number of users.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;由于ESPCMS等建站产品的便捷和强大功能，因此而赢得了许多用户，建立了良好的行业口碑和强大的用户数量。&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;我们最早的产品在2002年推出，但早在此二年前，我们的故事就开始了。&quot;&gt;Our first product was introduced in 2002, but early in this two years ago, our story begins.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;我们最早的产品在2002年推出，但早在此二年前，我们的故事就开始了。&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;EarcLink的创始人刚开始并不是做软件开发，我们的兴趣集中在电子商务相关领域的课题研究（利用眼动仪分析用户的行为和兴趣爱好）。&quot;&gt;EarcLink founder of the beginning of not doing software development, our interest focused on the research fields related to electronic commerce (the use of eye tracking analysis of user behavior and interests).&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;由于发现众多网站，不管是表面设计精美的，还是那些原本糟糕的网站设计，EarcLink发现这些网站最基本的特点之一：就是不具备电子商务的交互性、传播性、扩展性也极差。&quot;&gt;As found in many sites, regardless of the surface beautifully designed, or who had poor website design, EarcLink found one of the most basic features of these sites: just do not have the interactive e-commerce, communication, and scalability is also very poor.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;只要企业的需求随之改变，网站就必须重新再来，由此浪费了企业大量的时间、金钱和积累的有限客户资源。&quot;&gt;As long as business needs changed, the site must start again, which wasted a lot of business time, money and the accumulation of limited client resources.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;因此，我们看到了一个机会，为改变这一现状，EarcLink开始了企业建站平台领域的研究和开发工作，相继开发了ESPCMS企业建站软件、KUBCMS门户建站软件及相关的云平台。&quot;&gt;Thus, we see an opportunity to change this situation, EarcLink began Build your platform areas of research and development, have developed a ESPCMS Build your software, KUBCMS Jianzhan portal software and related cloud platform.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;随着时间的推移和业务的增长，越来越多的客户接近我们并使用我们的产品。&quot;&gt;As time goes by and business growth, more and more customers closer to us and use our products.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;随着时间的推移和业务的增长，越来越多的客户接近我们并使用我们的产品。&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;与大多数开源软件一样，EarcLink在发展最为讯速的阶段经历了知识产权保护的问题，一方面是大量成长的用户，另一方面这些用户并未主动向EarcLink缴纳相应的软件授权费用，或&quot;&gt;Like with most open source software, EarcLink in the development stage of the most rapidly and experienced intellectual property protection issues, on the one hand a large number of users grow, the other hand, these users did not take the initiative to EarcLink pay the appropriate software licensing fees, or&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;为EarcLink发展带来多大的贡献，这致使EarcLink发展面临了相当大的难题。&quot;&gt;development for the EarcLink bring much contribution, which resulted in EarcLink facing the development of a large problem.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;后来EarcLink调整了低价的软件策略、通过向企业提供整合营销方案、加强知识产权的保护措施、与专业的建站公司进行合作推广营销套餐、提供专业的软件咨询服务等方法，终于使得EarcLink发展&quot;&gt;Later EarcLink adjusted low-cost software strategy by providing integrated marketing solutions to enterprises, strengthen intellectual property protection, siting and professional marketing company to promote cooperation package, to provide professional consulting services, software and other methods, and finally making EarcLink development&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;得以维持并稳定发展。&quot;&gt;maintained and stable development.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span title=&quot;得以维持并稳定发展。&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;EarcLink早期设计的软件产品有一些不尽人意，但通过大量用户的建议和实际测试，我们不断改进我们的软件产品。&quot;&gt;EarcLink early design of the software product has some less than satisfactory, but by a large number of users of recommendations and practical testing, we continuously improve our software products.&lt;/span&gt;&lt;span title=&quot;今天，有超过10万的网站每天在使用我们的软件进行网站营销、收集客户信息、交易产品、解答客户问题等等...&quot;&gt;Today, more than 100,000 websites every day for use of our website marketing software to collect customer information, trade products, answer customer questions, and so on ...&amp;nbsp;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;虽然我们还在不停的添加更多的功能和不断完善产品体验，但我们的目标还没有达到：打造最好的最实用的互联网建站平台。&quot;&gt;Although we still keep adding more features and continuously improve the product experience, but have not reached our goal: to create the best and most useful Internet Jianzhan platform.&lt;/span&gt;&lt;/p&gt;\n&lt;/div&gt;');
INSERT INTO `espcms_document_content` VALUES ('35','36','&lt;p&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;strong&gt;Personal Information&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;We collect your personal information for various purposes, such as processing your order, corresponding with you, providing you with a subscription or in connection with a job application.&lt;/p&gt;\n&lt;p&gt;We may combine the information we collect from you with information obtained from other sources to help us improve its overall accuracy and completeness, and to help us better tailor our interactions with you.&lt;/p&gt;\n&lt;p&gt;In addition, we may also collect information relating to your use of our Web sites through the use of various technologies, including cookies.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;strong&gt;Uses&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;To fulfill your requests by us or by others involved in fulfillment.&lt;/p&gt;\n&lt;p&gt;To contact you for customer satisfaction surveys, market research or in connection with certain transactions.&lt;/p&gt;\n&lt;p&gt;To support products or services you have obtained from us.&lt;/p&gt;\n&lt;p&gt;By IBM and selected organizations for marketing purposes if you have permitted such use.&lt;/p&gt;\n&lt;p&gt;To personalize your experience while you are on our sites, make navigation easier, and for Web site usage statistics.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;&lt;strong&gt;Your Choices&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;When we collect information from you, you may tell us that you do not want it used for further marketing contact.&lt;/p&gt;\n&lt;p&gt;You may also turn off cookies in your browser.&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('36','37','&lt;p&gt;&lt;span title=&quot;中兴V880因为带有3D加速功能，所以在多点触摸方面表现也可圈可点。&quot;&gt;ZTE V880 because with 3D acceleration, so the multi-touch aspects of performance is commendable.&lt;/span&gt;&lt;span title=&quot;下面我们找来了MOTO 里程碑作为对比。&quot;&gt;Here we got a MOTO milestone for comparison.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;由于里程碑已经刷了一个民间的Android 2.2 ROM，所以其多点触摸只能作一个参考。&quot;&gt;As a milestone has been brushed folk Android 2.2 ROM, so its multi-touch can make a reference.&lt;/span&gt;&lt;span title=&quot;从表现来看，中兴V880和里程碑的多点触摸反应都比较灵敏，但是普遍存在一些&amp;ldquo;飘&amp;rdquo;的情况，中兴V880在放大缩小的过程稍微稳一&quot;&gt;From the performance point of view, ZTE V880 and milestones of the multi-touch response are more sensitive, but the prevalence of a number of &quot;Gone with the Wind&quot;, and ZTE V880 zoom process in a slightly stable&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;中兴V880与里程碑游戏对比&quot;&gt;ZTE V880 compared with the milestone game&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;下面我们来试玩一下《愤怒的小鸟》，这个游戏对手机的硬件要求还是有一定水平的。&quot;&gt;Let\'s look at trial, &quot;an angry bird&quot;, the game\'s hardware requirements on the phone or have a certain level.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;所以能够流畅《玩愤怒的小鸟》也是衡量一款手机性能的简要指标。&quot;&gt;So to smooth &quot;play angry bird&quot; is a brief measure of a cell phone performance indicators.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;视频中的里程碑是一款采用了Android 2.2系统的超频版，CPU已破解为700MHz。&quot;&gt;The milestone is a video with a version of Android 2.2 system overclocking, CPU has been cracked to 700MHz.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;从游戏的加载速度来看，中兴V880带有512MB的内存?匀徽加幸欢ǖ挠攀啤Ｕ飧龆员纫菜得髁酥行薞880在大型软件运行方面是不输于里程碑的。&quot;&gt;From the game\'s loading rate, ZTE V880 with 512MB of memory? Uniform insignia plus beer fortune climbed U Huan ǖ scratch supper shed the milk teeth have condylar member sewing crisp vegetables in a large line of Sun software runs in 880 is not lost on the milestone.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;对于一些需要CPU来处理的环节，经过解锁的里程碑会反应得快一点，这也可以看出中兴V880的MSN7227的性能还是稍微低于里程碑基于ARM Cortex-A8核心的TI OMAP3430 CPU。&quot;&gt;For some require the CPU to handle the links, after unlocking the milestones will react a little bit faster, which can be seen the MSN7227 ZTE V880 or slightly below the milestone performance ARM Cortex-A8 core based on the TI OMAP3430 CPU.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;320万像素AF摄像头&quot;&gt;3.2-megapixel AF camera&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;中兴V880采用了一枚320万像素的摄像头，算是入门级别的了。&quot;&gt;ZTE V880 uses a 3.2 megapixel camera, be regarded as entry-level up.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;虽然像素方面与主流的500万有点差距，但是对于手机拍照来说影响并不大，比较厚道的是，中兴V880的摄像头支持自动对焦功能，这也是中兴比华为Android手机要更人性化的&quot;&gt;Although the pixel area of ??500 million with a little gap between the mainstream, but it did not affect cell phone pictures, more generous, the ZTE V880 camera with auto-focus feature, which is Huawei, ZTE Android phone to be more than human&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;地方。&quot;&gt;place.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('37','38','&lt;p&gt;&lt;span title=&quot;诺基亚C5-03配备的是1000毫安时的电池，理论待机时间为600小时。&quot;&gt;Nokia C5-03 is equipped with 1000 mAh battery, 600 hours of standby time.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;在笔者对这款手机进行评测的期间，每天大约20分钟的通话时间外加2小时的上网时间，一块电池使用时间为三天左右。&quot;&gt;In my evaluation of this phone for a period of a day, about 20 minutes of talk time plus 2 hours of Internet time, a battery is about three days.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;待机能力的好坏在一定程度上影响了手机的使用，在如今手机电池容量普遍较大的趋势下，1000毫安时的电池容量算是中等，如果手机使用率较高的使用者还是购置备用电池&quot;&gt;Standby capacity is good or bad to some extent, affected the use of mobile phones, mobile phone battery capacity is now common in the larger trend, the 1000 mAh battery capacity is a moderate, if the mobile phone usage is high, users still buy spare batteries&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;会比较方便。&quot;&gt;would be more convenient.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;短信输入功能方面，笔者认为诺基亚C5-03还是做得非常不错的。&quot;&gt;Text input function, I believe that Nokia C5-03 is still doing very good.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;手机自带手写、全屏手写、全屏QWERTY 键盘和数字字母键盘多种输入方式，不管是熟悉全键盘输入法、还是习惯手写输入法的使用者都可以得到满足。&quot;&gt;The phone comes with handwriting, full-screen handwriting, full QWERTY keyboard and alphanumeric keypad variety of input methods, whether it is familiar with all keyboard input, handwriting input method or habit of users can be met.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;输入法自带的词汇联想功能使得输入比较方便，而且节省时间，输入法反应时间也比较快，总体而言，C5-03的短信功能使用很方便。&quot;&gt;Input function that comes with word association makes the input more convenient and save time, the input method is relatively fast response time, in general, C5-03 easy to use SMS function.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;但是正如前文所提出的那样，对于触屏手机而言，没有配备触控笔是一个小小的遗憾，因为选择QWERTY键盘和数字字母键盘输入方式的时候，按键并不算很宽敞，很容易出现&quot;&gt;However, as previously proposed, as for the touch-screen phone, the stylus is not equipped with a little regret, because the choice of QWERTY keyboard and alphanumeric keyboard input when the button is not very spacious, very prone to&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;误触的情况，尤其对于男性使用者而言。&quot;&gt;inadvertently situation, especially for male users is concerned.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;而且没有触控笔，使用手写输入法也不太方便。&quot;&gt;And there is no stylus, using a handwriting input method is not very convenient.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;虽然没有数字键盘，但是诺基亚C5-03拨号并不麻烦。&quot;&gt;Although there is no numeric keypad, but not Nokia C5-03 dial-up trouble.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;作为手机最重要最基本的功能，这款手机拨号也非常方便。&quot;&gt;As the most important and basic phone functions, this phone dial-up is also very convenient.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;不管选择哪种待机模式，都可以在待机画面中看到快速调出数字键的快捷方式和调出查找联系人的快捷方式。&quot;&gt;No matter what kind of standby mode selected, you can see the standby screen number keys to quickly bring up a shortcut to find contacts and bring up the shortcut.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;数字键按键很大，十分清晰大方。&quot;&gt;Numeric keypad with large keys very clear and generous.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('38','39','&lt;p&gt;&lt;span class=&quot;hps&quot;&gt;HTC&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;wildfire&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;wildfire&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;S as&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;before&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the upgrade&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;version&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;inherited the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;appearance and&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;resolution&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to improve&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;upgrade&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the system&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;version&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;further enhance&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the experience of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the aircraft&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;In the current&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;high-end&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;flagship&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Andorid&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;frequent&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;today,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;we&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;need&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;this is&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;end&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;product&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;enter the market&lt;/span&gt;&lt;span&gt;, Sense2.1&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;interface&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to join&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;let&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;this HTC&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;wildfire&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;S&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;have a more&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;ample&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;reason to buy.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;If you have recently&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;looking for&lt;/span&gt;&lt;span class=&quot;hps atn&quot;&gt;a mid-&lt;/span&gt;&lt;span&gt;Aandorid&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;phone, then&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;you can&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;go to the store&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;feel for the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;phone&lt;/span&gt;&lt;span&gt;, I believe&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;there will be&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;very&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;good&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;experience.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;text-align: center;&quot;&gt;\n&lt;object width=&quot;480&quot; height=&quot;400&quot; data=&quot;http://player.youku.com/player.php/sid/XMjQwNTkwMDA0/v.swf&quot; type=&quot;application/x-shockwave-flash&quot;&gt;\n&lt;param name=&quot;data&quot; value=&quot;http://player.youku.com/player.php/sid/XMjQwNTkwMDA0/v.swf&quot; /&gt;\n&lt;param name=&quot;align&quot; value=&quot;middle&quot; /&gt;\n&lt;param name=&quot;src&quot; value=&quot;http://player.youku.com/player.php/sid/XMjQwNTkwMDA0/v.swf&quot; /&gt;\n&lt;param name=&quot;allowfullscreen&quot; value=&quot;true&quot; /&gt;\n&lt;param name=&quot;quality&quot; value=&quot;high&quot; /&gt;\n&lt;/object&gt;\n&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('39','40','&lt;p&gt;&lt;span title=&quot;HTC 渴望S支持720p的MP4视频文件播放，同时可以支持3gp，mp4，WMV9，avi（MP4和MP3封装）格式的视频文件播放，在音频文件播放表现上，它可以播放mp3，wav，wma9格式的&quot;&gt;HTC desire S supports 720p MP4 video file playback, and supports 3gp, mp4, WMV9, avi (MP4 and MP3 package) format video files, audio files playback performance, it can play mp3, wav, wma9 format&lt;/span&gt;&lt;span title=&quot;音频文件。&quot;&gt;audio files.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;无论是在音乐播放还是视频播放界面，都可以开启srs特效，开启后会带来一些立体声的特殊效果，听上去旋律，节奏以及歌声会更加洪亮，浑厚清晰，不过开启后会增大扬声器功率，&quot;&gt;Whether in music or video playback interface, you can open srs effects on the stereo will bring some special effects, sound melody, rhythm and song will be more resonant, deep and clear, but will increase the speaker on the power,&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;会加快电池的消耗速度。&quot;&gt;will speed up the battery consumption rate.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;HTC 渴望S采用了和HTC S710d一样的处理器架构，型号为高通MSM8255，这一架构的单核主频为1GHz，内置Adreno 205图形处理芯片，在3D图形处理方面以及高清视频播放方面提供&quot;&gt;HTC desire and HTC S710d S uses the same processor architecture, the model for Qualcomm MSM8255, the structure of single-core processor clocked at 1GHz, the built-Adreno 205 graphics chip, 3D graphics processing as well as provide high-definition video playback&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;了有力的支持。&quot;&gt;strong support.&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;同时机身内存采用了1.1GB(ROM)/768MB(RAM)的组合方式，下面是测试结果：&quot;&gt;Body memory while using 1.1GB (ROM) / 768MB (RAM) combinations, the following is the results:&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('40','41','&lt;p&gt;&lt;span title=&quot;如果说三星是7寸平板电脑市场的尝鲜者，拥有对市场快速而敏锐的眼光，那么HTC则称得上是7寸平板电脑市场的发掘者，就像HTC Sense的设计理念一样，以用户为&quot;&gt;If the Samsung is the 7-inch Tablet PC market, early adopters, the market quickly and with a keen eye, then the HTC is called a 7-inch Tablet PC to explore the market who, like the HTC Sense of the same design concept, user-&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;中心，发掘用户的需求从而研发产品，这也是HTC能够迅速红遍全球的原因之一，的确，平板电脑市场的潜力是无法估量的，各大传统的厂商都在向这一新兴领域进军，而&quot;&gt;Center, to explore the needs of users to develop products, which is popular in the world quickly HTC one of the reasons, indeed, the Tablet PC market potential is immeasurable, the major traditional manufacturers have to enter this emerging field, and&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;HTC也不例外，作为HTC首款平板电脑，其选择了7寸这个大小尺寸，目的在于突出其手机特性而又能满足那些手机不可能完成的需求。&quot;&gt;HTC is no exception, as HTC\'s first Tablet PC, the choice of a 7-inch size of this size, designed to highlight the characteristics of their mobile phone can not be done to meet those needs.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;平板电脑可以说是大屏智能手机与笔者本二者的结合诞生的新兴产物，而用户在选择平板电脑时首先会考虑它的外观大小，而经过调查发现7寸平板电脑显然是用户需要的，&quot;&gt;Tablet PC can be a big-screen smartphone with a combination of both the author of the birth of new products, and Tablet PC user in the choice of first when considering the size of its appearance, but after an investigation found that 7-inch Tablet PC is obviously the user needs,&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;在经过9.7寸的iPad以及10.1寸摩托罗拉XOOM的市场验证后，7寸逐渐成为了用户在购买选择平板电脑重要的元素之一，7寸作为掌上把控的最佳尺寸，在操控应用或游戏时&quot;&gt;After a 9.7-inch and 10.1-inch iPad\'s market-proven Motorola XOOM, the 7-inch has become the user choose to purchase one important element of the Tablet PC, 7-inch handheld to control as the best size in the control of the application or game&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;都拥有良好的体验，这点三星P1000作为尝鲜者以火爆的销量足以证明。&quot;&gt;have a good experience, this Samsung P1000 as early adopters to prove popular sales.&amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span title=&quot;而近期HTC针对大陆地区用户，也在上周联手战略合作伙伴新浪共同发布了HTC Flyer行货版型号为P510e的平板电脑，而中关村在线3G频道也有幸第一时间拿到了该产品，为您奉上&quot;&gt;The recent HTC for mainland users, but also strategic partners together last week jointly announced the HTC Flyer Sina licensed version of the model P510e Tablet PC, and 3G Zhongguancun online channel is also fortunate to get the product the first time, you offer&amp;nbsp;&lt;/span&gt;&lt;span title=&quot;全方位的评测。&quot;&gt;comprehensive evaluation.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('43','44','&lt;p&gt;&lt;span class=&quot;hps&quot;&gt;Facebook&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Web site&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to encourage&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;volunteers&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to help&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;find&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;vulnerabilities&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;recent&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;plans to launch&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;a &quot;&lt;/span&gt;&lt;span&gt;find a&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;bug&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to win&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;prizes&lt;/span&gt;&lt;span&gt;&quot; activities&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;SAN FRANCISCO,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;August 30&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;morning news&lt;/span&gt;&lt;span&gt;, Facebook&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;said Monday&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the site&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;has been&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to find loopholes&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;help&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;volunteers&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;pay more than&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;$ 40,000&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in prize money&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and reward&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;their&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;contribution&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;for Facebook&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Three weeks ago,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Facebook&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;launched a&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;&quot;&lt;/span&gt;&lt;span&gt;find&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;bug&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to win&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;prizes&lt;/span&gt;&lt;span&gt;&quot;&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;campaign to encourage&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;volunteers&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;proficient in&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;web technology&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to find&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;loopholes in&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the Facebook site&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;The company&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;on Monday&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;announced&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the success of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;activities&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;from&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;security researchers&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;around the world&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;have been mobilized&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;to help&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;improve&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;site security&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Facebook&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Facebook in&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;blog&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;article&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;said: &quot;&lt;/span&gt;&lt;span&gt;We recognize that&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;many security&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;experts&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and establish relationships&lt;/span&gt;&lt;span&gt;, but&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;this event&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;allows us to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;16 countries&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;around the world&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;many people&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;engage in dialogue&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;from Turkey to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Poland, the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Internet&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;security technology&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;enthusiasts&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to participate&lt;/span&gt;&lt;span class=&quot;atn&quot;&gt;. &quot;&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;In recent years&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;technology companies&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;began to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;pay bonuses&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;hackers&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to encourage them to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;quietly&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;report&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;their&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;discovery&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;of the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;vulnerability&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;rather than&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in the public domain&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to be&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;used&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;by unscrupulous elements&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Google&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and Mozilla&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;have&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;been carried out&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;activities&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;with&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;prizes&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;like&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Facebook&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Each&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;volunteer&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;found a&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;bug, Facebook&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will pay&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;$ 500 or more&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in prize money&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;The company said&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;hacker&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;discovered a&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;major&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;flaw&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;get&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;$ 5,000&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;bonus&lt;/span&gt;&lt;span&gt;;&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;another developer&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;found&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;six vulnerabilities&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;won&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a total of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;$ 7,000&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('44','45','&lt;p&gt;&lt;img src=&quot;/upfile/2011/08/30/20110830213802_673.jpg&quot; border=&quot;0&quot; alt=&quot;从N9可以管窥诺基亚未来的设计思路&quot; width=&quot;500&quot; height=&quot;411&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span&gt;Glimpse of the Nokia N9 can be from the future design ideas&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;REVIEW: Foreign media today published an article that internal and external Windows Phone Nokia\'s upcoming first intelligent machine, the Finnish mobile phone giant gamble in the hope that with unique design, to regain market share and regain its past glory.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;The following is the text of the article:&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Nokia will soon release the first equipped with Windows Phone operating system for smart phones.&lt;/span&gt;&lt;span&gt;Finnish mobile phone giant is engaged in a gamble and hope the new models with innovative design to Win, the people\'s attention from the much criticized transferred on a platform in the lucrative smartphone market regain its past glory.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Nokia in smartphone market share continue to decline, largely due to Apple\'s iPhone and Android phones extrusion.&amp;nbsp;&lt;/span&gt;&lt;span&gt;However, as has been the dominant global mobile phone market, Nokia\'s hardware production capacity beyond doubt.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Nokia plans to launch in the fourth quarter of this year, the first equipped with Windows Phone &quot;mango&quot; mobile phone operating system.&amp;nbsp;&lt;/span&gt;&lt;span&gt;This product is for Nokia as a revival of the shoulders to regain market share in the task.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Released in June this year, Nokia N9 body, people can Glimpse of the company\'s future models of design ideas.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Phone to cancel the traditional Home physical buttons, extensive use of gestures.&lt;/span&gt;&lt;span&gt;Carbonate shell material, a variety of colors to choose from.&amp;nbsp;&lt;/span&gt;&lt;span&gt;It is equipped with a curvature of 3.9 inches with capacitive touch screen.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;N9 powered by Intel co-developed with Nokia MeeGo operating system, Nokia has lost interest in this platform.&amp;nbsp;&lt;/span&gt;&lt;span&gt;But the company\'s chief designer Mark Ahtisaari (Marko Ahtisaari) said that this design is Nokia\'s future direction.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He said in an interview: &quot;We will esteem simple, natural design trends, and common black market in gray, metal rounded rectangular design is completely different.&quot;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Windows Phone mobile phone operating system developed by Microsoft, in addition to outside Nokia, HTC, Dell, Samsung and LG are interested in the launch of new mobile phone equipped with the system.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Therefore, in order to attract consumers to stop market share continued to decline, Nokia need to rely on an attractive design.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Enhance users \'eye contact\'&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;And folder-based Apple iOS and different operating system, Google Android, Windows Phone &quot;mango&quot; version with the very contemporary graphical user interface, its function around the &quot;people&quot; instead of &quot;application&quot; to reduce to achieve a certain function, and Click&amp;nbsp;&lt;/span&gt;&lt;span&gt;the number of times.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Ahtisaari said that today\'s emphasis on touch-screen phone, &quot;immersive&quot; human-computer interaction, which is not correct.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He wanted to find a design, so that people can look up.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He said: &quot;If you go to a restaurant in Helsinki, take a look, you will find that people blindly down at cell phone, rather than eye contact, not aware of their surroundings.&quot;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Ahtisaari said: &quot;The real goal of the design of mobility, will enable people to have more eye contact, and aware of their surroundings. People will not exact such a request; but when they get&amp;nbsp;&lt;/span&gt;&lt;span&gt;this convenience, they will love it. &quot;&lt;br /&gt;&lt;!-- pagebreak --&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Ahtisaari joined 18 months ago, Nokia is the company\'s first directly to the CEO Sidifenai Roper (Stephen Elop) reported the chief designer.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Designers to enhance the status, reflecting the increasing emphasis on the Nokia hardware design capabilities are.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Nokia has launched a variety of classic models, including in the movie &quot;The Matrix&quot; in the appearance of 8110, the world\'s first smart phone 9000, built-in antenna with a camera 3210 and 7650.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;However, there have been numerous this glorious old mobile phone manufacturers have many errors: Motorola Razr series in the popular flip phone, the Nokia failed to confront the models can be introduced; When Apple first released in 2007&amp;nbsp;&lt;/span&gt;&lt;span&gt;models iPhone, to redefine the entire mobile phone market, Nokia is still sticking to the slow response of traditional design, has not been introduced touch-screen models.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;In 2010, Nokia released a total of 28 models, the total shipments of more than 453 million.&amp;nbsp;&lt;/span&gt;&lt;span&gt;However, in the second quarter, the company in the global smartphone market share has grown from 38.1% last year plummeted 15.2%, is beyond Apple and Samsung, ranked third.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Inheritance colorful plastic&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Ahtisaari\'s design team has hundreds of employees, spread Finland, China, Britain and the United States.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He said: &quot;Our job is to demonstrate that a product is suitable for mass production, production of molds for the production and selection of co-operation for a particular component manufacturer Nokia in this highly competitive field.&quot;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Nokia mobile phone using a variety of shell materials, distinctive, the company\'s success in the hardware foundation.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Currently, Nokia phones mainly native color polycarbonate shell.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Ahtisaari said: &quot;The color is a simple sign of consumer choice, this important feature will be inherited.&quot;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;For him, innovation means that through careful observation of users and their environment, their design better and more natural mobile phone use.&amp;nbsp;&lt;/span&gt;&lt;span&gt;3D models from the draft to the to the real machine, producing a large number of prototypes is simple, accurate pass.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Ahtisaari said that Nokia will introduce more physical keyboard with touch-screen mobile phone, such as E6 and C3 and so on.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He said: &quot;Many people still need a keyboard; Nokia the next few years will be extremely lucrative profits in this market continue to innovate.&quot;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;He also plans to &quot;phone experience with maps and geographic information users connected in an unprecedented way to draw the whole world&quot; in order to add customer value&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('45','46','&lt;p&gt;&lt;img style=&quot;display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;/upfile/2011/08/30/20110830213900_889.png&quot; border=&quot;0&quot; alt=&quot;Windows 8更多细节曝光：菜单功能更直观&quot; width=&quot;450&quot; height=&quot;507&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span class=&quot;hps&quot;&gt;More&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;details of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Windows 8&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;exposure&lt;/span&gt;&lt;span&gt;:&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the menu&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;features&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;more intuitive&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;SAN FRANCISCO,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;August 30&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;morning news&lt;/span&gt;&lt;span&gt;, Microsoft&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Project Management&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Director&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Alex&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Simmons&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;(Alex Simons)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;blog post published&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;today&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;revealed the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;operating system,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Windows 8&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;more details&lt;/span&gt;&lt;span&gt;, the most&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;notable&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;feature&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;is the &quot;&lt;/span&gt;&lt;span class=&quot;hps atn&quot;&gt;Ribbon &quot;&lt;/span&gt;&lt;span&gt;interface to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a wide range of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;applications.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Picture&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;shows&lt;/span&gt;&lt;span&gt;, Windows 8&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Explorer&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;icon&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;top of the window&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;show the form of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;many&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;common functions&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;such as&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;&quot;Copy&quot;&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;&quot;Paste&quot;&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;and &quot;&lt;/span&gt;&lt;span&gt;Cut&lt;/span&gt;&lt;span&gt;&quot;, etc.,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;user-friendly&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;search&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;using these features&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;In Windows 7&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and earlier&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;versions of Windows&lt;/span&gt;&lt;span&gt;, these&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;functions&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;are usually&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in the form of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;sub-&lt;/span&gt;&lt;span&gt;menu&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;display&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;the user&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;need to go through&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;two clicks&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to complete.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;The new&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;user interface&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will no doubt&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;enhance the&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;user experience.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;This&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;interface&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;design&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;is called&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;&quot;Ribbon&quot;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;was originally&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;used in&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Office 2007 software&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;suite&lt;/span&gt;&lt;span&gt;, Office 2010&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;continues this&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;practice&lt;/span&gt;&lt;span&gt;, Windows 7&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in part&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;adopted.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Microsoft plans to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;fully&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;integrate&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in Windows 8&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;interface.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Simmons&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;said&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in a&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;blog post&lt;/span&gt;&lt;span&gt;, the survey&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;shows that users&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;most commonly used&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Windows Explorer&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;menu&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;function is to &quot;&lt;/span&gt;&lt;span&gt;paste&quot;&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;followed by&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;&quot;Properties&quot;&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;&quot;copy&lt;/span&gt;&lt;span class=&quot;atn&quot;&gt;&quot;, &quot;&lt;/span&gt;&lt;span&gt;delete&lt;/span&gt;&lt;span class=&quot;atn&quot;&gt;&quot;, &quot;&lt;/span&gt;&lt;span&gt;rename&lt;/span&gt;&lt;span class=&quot;atn&quot;&gt;&quot;, &quot;&lt;/span&gt;&lt;span&gt;refresh&lt;/span&gt;&lt;span&gt;&quot;&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;and &quot;&lt;/span&gt;&lt;span&gt;cut&lt;/span&gt;&lt;span&gt;&quot; and so on&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;The most commonly used&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;menu functions&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;accounted for&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;10&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the total use of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;81.8%&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;for the&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;&quot;Ribbon&quot;&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;interface to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;lay the foundation for&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;widespread use&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('49','50','&lt;p&gt;&lt;span class=&quot;hps&quot;&gt;Beijing&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;August 30&lt;/span&gt;&lt;span&gt;, according to foreign&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;media reports,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;recently&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;HTC&lt;/span&gt;&lt;span&gt;\'s new&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;handset&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;design leader&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;(Scott Croyle)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;said that despite the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;high-level&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;design&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;changes&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;but the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;mobile phone&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;design thinking&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;does not change&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;HTC&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will continue to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;adhere to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the user experience&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;is more important than&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;technical&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;principles.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Recently&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;HTC&lt;/span&gt;&lt;span&gt;\'s chief&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;innovation&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;is responsible for&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;mobile phone design&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;officer&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;(Horace Luke)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;resigned&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;for personal reasons&lt;/span&gt;&lt;span&gt;, the current&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;vice&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;president&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;responsible for the design&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Crowe&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;took over&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;this position&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Crowe&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;recently&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;told the media that&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;HTC&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will remain&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;committed to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the future of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;smart phones&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;tablet&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;PCs&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to provide more&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;content and services&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Moreover,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;focusing&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;on enhancing the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;user experience&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;such as&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;big screen&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to enjoy&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;video&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;can improve&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;results,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;before and after&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;camera&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;can be&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;with family and&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;friends,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;video chat&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Crowe&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;said that despite the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;high level&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;design&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;changed hands&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;but&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;&quot;consumer&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;first&quot;&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;philosophy&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;has become the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;HTC&lt;/span&gt;&lt;span&gt;\'s DNA,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;it will not&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;change.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Crowe&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;stressed that&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;HTC&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will be&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;concerned about the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;use of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;mobile phone&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;user experience&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;rather than on&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the background&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;of the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;technology itself.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('50','51','&lt;p&gt;&lt;span class=&quot;hps&quot;&gt;Beijing time on&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;August 30&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;morning, according to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;U.S. technology blog site&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;BusinessInsider&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;reports,&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;Apple&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;has been&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;practice&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Jonathan&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Berg&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;(Jonathan Berger)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;has&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;recalled&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a past event&lt;/span&gt;&lt;span&gt;, highlighting the&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;Steve&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Jobs (Steve&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Jobs)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;deep feelings&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;for&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Apple&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Berg&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;internship&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in 2000&lt;/span&gt;&lt;span&gt;, when&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Apple&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;has&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Steve Jobs&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;at the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;meeting&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;asked&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;why the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;return to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Apple&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Jobs&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;replied:&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;&quot;I was&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;hesitant&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;on whether to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;return to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Apple&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in the intense&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;inner&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;struggle&lt;/span&gt;&lt;span&gt;, I&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;asked a lot of&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;people&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;has also been&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;lot of opinions&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Late one night&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;I am still&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;upset&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to this&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;problem&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;2:00&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;I&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;give&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;play to call&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a friend&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and asked&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;\'&lt;/span&gt;&lt;span&gt;should I&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;return&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;back to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Apple&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;or not&lt;/span&gt;&lt;span&gt;?&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;&quot;&lt;/span&gt;&lt;span&gt;this friend&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;said&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&lt;span&gt;\' Listen,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Steve&lt;/span&gt;&lt;span&gt;, I&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;do not&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;mind&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a little&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;apple&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;thing&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;you&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;do&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;decide!&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;&quot;&lt;/span&gt;&lt;span&gt;Having&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;hung up the phone&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;at&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;that time&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;I&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;discovered that&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;I really&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;care about&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Apple&lt;/span&gt;&lt;span&gt;.&quot;&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('51','52','&lt;p&gt;&lt;span class=&quot;hps atn&quot;&gt;IDG (&lt;/span&gt;&lt;span&gt;the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Tao&lt;/span&gt;&lt;span&gt;)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Beijing&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;August 30&lt;/span&gt;&lt;span&gt;, according to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;U.S.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;technology blog&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Silicon Alley Insider (SAI)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;reported that a&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;source&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;said on Monday&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo CEO&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Carol Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;(Carol Bartz)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;seek re-election&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;matter has&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;no interest&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;If nothing else,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;current work&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;contract expired&lt;/span&gt;&lt;span&gt;, she&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;left&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in 2013&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;img style=&quot;display: block; margin-left: auto; margin-right: auto;&quot; src=&quot;/upfile/2011/08/30/20110830214223_287.jpg&quot; border=&quot;0&quot; alt=&quot;传雅虎CEO巴茨无意谋求连任 2013年离职(图)&quot; width=&quot;460&quot; height=&quot;306&quot; /&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span class=&quot;hps&quot;&gt;Yahoo CEO&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Carol Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;(&lt;/span&gt;&lt;span&gt;Artesyn Technologies with map&lt;/span&gt;&lt;span&gt;)&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;This&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;name&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;familiar&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;insider&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;said: &quot;&lt;/span&gt;&lt;span&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;is already&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in a&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;state&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;ready&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to leave&lt;/span&gt;&lt;span&gt;, so&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the search for&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the next CEO of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;not&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;interested in&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the issue&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;I&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;worry about&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;her&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;now&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;are&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;some of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;\'&lt;/span&gt;&lt;span&gt;out&lt;/span&gt;&lt;span&gt;\'&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;meaning&lt;/span&gt;&lt;span&gt;.&quot;&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;But another&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;source said&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo\'s board&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;does not agree with&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;this view.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;This&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;name&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;source said:&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;&quot;&lt;/span&gt;&lt;span&gt;Yahoo\'s board&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;believes that&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;very capable&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo\'s board&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;had&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;done a lot of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;hope that she&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;do:&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;repair the&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;platform&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to meet the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;needs of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;users and&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;advertisers&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;increase&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;profit margins&lt;/span&gt;&lt;span&gt;, etc.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo\'s board&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;next&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and his team&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;hopes to work with&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;close coordination&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;so that&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;can achieve&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;more robust&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;long-term growth&lt;/span&gt;&lt;span class=&quot;atn&quot;&gt;. &quot;&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;However,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;there is no&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;second&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;source&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;said&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo\'s board&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;has&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;renewed&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;work&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;on the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;start&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to discuss&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;contractual matters&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;SAI&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;believes that&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the near term,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo\'s board&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will not&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;offer to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;early separation&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;for two reasons:&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;First&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;took office&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;did&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;a lot of work&lt;/span&gt;&lt;span&gt;, but&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;these efforts&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;are not&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;recognized by&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the outside world&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;For example&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;has taken&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;measures to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;curb government spending&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and upgrading of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo\'s&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;content distribution&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;system&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;but these measures&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;have not been&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;outside&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;praise&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Secondly, because&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo\'s board&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;itself &quot;&lt;/span&gt;&lt;span&gt;to act&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;passive&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;unrealistic&lt;/span&gt;&lt;span&gt;,&quot; so&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;still&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;retain&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;its current&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;CEO position&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;All in all&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bartz&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;current work&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;contract&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;expires&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in 2013&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Yahoo\'s board&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will not&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;renew the contract&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;with her&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('52','53','&lt;p&gt;&lt;span&gt;August 30, according to foreign media reports, announced earlier this year took over as CEO, Google\'s (Google Inc.) Co-founder Larry Page (Larry Page) undertook this Internet search giant restructuring&amp;nbsp;&lt;/span&gt;&lt;span&gt;to speed up decision-making.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Paige since taking office since April, is facing many challenges.&amp;nbsp;&lt;/span&gt;&lt;span&gt;These challenges include: the U.S. antitrust agencies conduct extensive investigations of the company; advertising on Google\'s long-term criminal investigation by the settlement; led him to acquire handset maker Motorola Mobile Holdings Limited (Motorola Mobility Holdings Inc.) Changing industry&amp;nbsp;&lt;/span&gt;&lt;span&gt;power.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Since his new role as the company\'s stock fell 9.1 percent, higher than the Nasdaq (Nasdaq) stocks drop 8.42% overall.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Federal prosecutors have been investigating Google in 2003 to 2009 to allow operators of illegal Internet drug advertisements in its search engine behavior.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Last week, federal prosecutors specifically mentioned Pec.&amp;nbsp;&lt;/span&gt;&lt;span&gt;They say this Page personal knowledge of the alleged crime, and not be discouraged.&lt;/span&gt;&lt;span&gt;Prior to this, Google paid $ 500 million last week to avoid criminal charges.&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Page, Google spokesman declined to act on drug advertising to comment about the situation.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He also said that the investigation has nothing to do with the current advertising practices, the company continues to move forward.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Google refused to let 38-year-old Paige came forward for comment.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Other setbacks include, and fail to reach a record company to allow Google\'s new Internet music service selling songs and albums of the agreement; public disclosure of company in China in June of &quot;troublemakers&quot; invasion of the Gmail account; bid for Nortel Networks in July&amp;nbsp;&lt;/span&gt;&lt;span&gt;Co., Ltd. (Nortel Networks Corp.) lost patent, Google said it is to promote the acquisition of Motorola\'s a reason.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;However, according to Page\'s colleagues, a lot of things happened over the past few months, Page response is to concentrate on resolving matters within their control, including the new business.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Google Chrome browser and operating system is responsible for investigation of human skin Iraq (Sundar Pichai) said that Page and outside the company are well aware of all matters and will be concerned; although he should consider all these things, but the way his work is highly&amp;nbsp;&lt;/span&gt;&lt;span&gt;concerned about the products and users.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;At the same time there are some positive side.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He was the company\'s restructuring has been a great support staff; April, the Government approved a Google acquisition of ITA Software\'s application, the deal will help Google build travel search services; started his social networking company\'s products received the initial growth of Google +&amp;nbsp;&lt;/span&gt;&lt;span&gt;.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Promoting changes in staff praised the search engine, Larry Page and Gmail, and many other services to look.&lt;br /&gt;&lt;!-- pagebreak --&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Page also heard criticism.&amp;nbsp;&lt;/span&gt;&lt;span&gt;For people on the growth rate of Google queries, Wall Street analysts have complained that in April, Paige in the first earnings call was that too little.&amp;nbsp;&lt;/span&gt;&lt;span&gt;At that meeting, Page said the company\'s performance and prospects so that he was very excited, but did not talk about their strategy, not left to answer analysts\' questions.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;However, to achieve more in July after strong results on the quarterly conference call, the new CEO a comprehensive exposition of his strategy.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Among them, he said, Google will easily find its Chrome browser, YouTube video site and Andrews (Android) the growth of mobile operating systems to make money way.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Currently more than 135 million devices worldwide are equipped with Andrew system.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;At that meeting, Page said Google only 1% of the potential to play, and as such, I was leading the company to scale new heights.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Investment bank Stifel, Nicolaus &amp;amp; Co. Analyst Lohan (Jordan Rohan), said Paige communication with investors on how to learn quite fast.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He also said, obviously not satisfied with Google Page in the leading position in Internet search, Google intends to occupy the leading position in more areas, even though doing so caused more stringent government oversight, and it\'s more bumpy road ahead&amp;nbsp;&lt;/span&gt;&lt;span&gt;.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Google employees, said Page in the company has a wide range of supporters.&amp;nbsp;&lt;/span&gt;&lt;span&gt;In the past few months, he promised to reform their own company, through a comprehensive restructuring to clarify the responsibilities and priorities.&amp;nbsp;&lt;/span&gt;&lt;span&gt;In addition, he paid off some of these priorities, except useless items.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Page also local business advertising such as Google + update operations and became interested in the products.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Google + is the social network Facebook Inc.\'s Competitors, Paige has this year the number of employees with bonuses linked to performance of this product.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;In front of his employees, within the Page to get rid of their image.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Informed sources said, Google + launched a few weeks later, he was in California in July, Google headquarters in Mountain View, organized a &quot;beach party&quot;, and even get a high-tech made a wave machine.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Colleagues said, Page is very good at communicating with employees, including product-related meetings, every Friday afternoon, &quot;Thank God, finally to Friday the&quot; the full meeting, and through his house&amp;nbsp;&lt;/span&gt;&lt;span&gt;Google + accounts published minutes of video clips.&lt;br /&gt;&lt;!-- pagebreak --&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Nevertheless, the problem of external force Paige respond quickly.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Earlier this summer, Google said it is facing a Federal Trade Commission (Federal Trade Commission) for its business conduct extensive investigation may take several years to complete.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;In the news was leaked in July Google has adapted its search engine displays local business information.&amp;nbsp;&lt;/span&gt;&lt;span&gt;According to informed sources, the Federal Trade Commission investigation is one of the matters.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;At the same time, increasing competition in the mobile space charge under the re-injection to promote Page, Google announced this month it spent $ 12.5 billion acquisition of Motorola\'s consensus.&amp;nbsp;&lt;/span&gt;&lt;span&gt;This is the Internet search company Google\'s largest-ever one transaction.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('53','54','&lt;p&gt;&lt;span class=&quot;hps&quot;&gt;Beijing time on&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;August 30&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;morning news&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps atn&quot;&gt;(&lt;/span&gt;&lt;span&gt;Jiang Jun herds&lt;/span&gt;&lt;span&gt;) Bahrain&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Telecommunications&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Company&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;(Batelco)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;announced&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;its&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;senior management&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to adjust&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and the appointment of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the incumbent&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;CEO&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;Peter&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Cary&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Arnold&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Baoluo Si&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;(Peter Kaliaropoulos)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;as&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the new&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;strategy&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;tasks&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;CEO&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;responsible for the&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;group\'s&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;joint venture.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Bahrain&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;telecom&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;incumbent&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;vice chairman&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Shaikh Mohammed bin&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Isa&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Al&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Khalifa&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;(Shaikh Mohamed Bin Isa Al Khalifa)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will take over the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;CEO&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;post.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Bahrain&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Telecom Chairman&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Sheikh Hamad bin&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Abdullah&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Al&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Khalifa&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;(Shaikh Hamad Bin Abdulla Al Khalifa)&lt;/span&gt;&lt;span&gt;, said he&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;was pleased to see&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the new&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;CEO&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;is&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;an experienced&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bahrain&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;business executives&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;the first&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;group&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the most&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;senior positions&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;as&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bahraini citizens&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Sheikh&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Mohammed&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will be held&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;October 1, 2011&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will be responsible for&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the group&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Sheikh Hamad&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;said.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;He also said&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;he was very&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;pleased to&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;welcome the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;longest serving&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;board&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;member&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;穆拉德阿里穆&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Ladd&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;(Murad Ali Murad)&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;took over&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the post of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;vice chairman&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;br /&gt;&lt;br /&gt;&lt;span class=&quot;hps&quot;&gt;Peter&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;will&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;continue the&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;strategic task of&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;the CEO position&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;in&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;Bahrain&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;telecom&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;services&lt;/span&gt;&lt;span&gt;,&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;and&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;focus on&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;new&lt;/span&gt;&lt;span class=&quot;hps&quot;&gt;acquisitions&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;to accelerate&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;hps&quot;&gt;value creation&lt;/span&gt;&lt;span&gt;.&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('54','55','&lt;p&gt;&lt;span&gt;Beijing time on August 30 morning news, Dell will launch later this year with VMware first cloud infrastructure services, to continue its business areas to expand beyond the PC, into higher-margin software and services&amp;nbsp;&lt;/span&gt;&lt;span&gt;.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;The service will be based on VMworld\'s vCloud platform, through Dell\'s Texas Pu Leinuo (Plano) of the data center to deliver.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Users will be through pay-way rental computing and storage services, but also more long-term contract signed, will be reserved or dedicated hardware covered.&amp;nbsp;&lt;/span&gt;&lt;span&gt;In addition, Dell will also provide consultancy services to companies to help them in their own private clouds to build data centers, data centers use vCloud services.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Dell will also use VMware software to build the Connector &quot;hybrid&quot; cloud, the private and public clouds connected together.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Dell plans on Monday in Las Vegas at VMworld VMware announced the plan.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Managed Security Services&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Dell and the project will enhance the competition between IBM and HP relationship, after the two companies are also building a public cloud services.&amp;nbsp;&lt;/span&gt;&lt;span&gt;In addition, this program will allow Dell to become the Amazon Web Services, Verizon Business and other service provider Terremark\'s competitors, some of these providers is also Dell\'s customers.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Storage consulting firm Taneja Group analyst Arun Taneja, founder and consultant, said Dell must provide these services to maintain the competitiveness of companies in the industry, because of cloud services is becoming a regular business.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He predicted that all large IT vendors will be provided within three years, some form of cloud services.&lt;br /&gt;&lt;!-- pagebreak --&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Dell Services vice president and CTO (chief technology officer) 马克比尔格 (Mark Bilger), said Dell &quot;unique value proposition,&quot; the company will provide managed security services.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He said that managed security services will become part of Dell\'s service standards, rather than as an additional service for sale.&amp;nbsp;&lt;/span&gt;&lt;span&gt;The service called &quot;Dell Cloud with VMware vCloud Datacenter Service&quot;, will mainly target medium and large companies, its beta will start within a few weeks, plans for the fourth quarter, officially launched in the U.S. market next year, in Europe and&amp;nbsp;&lt;/span&gt;&lt;span&gt;Asian market launch.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Platform as a Service&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Bier Ge said that Dell plans to launch next year a &quot;Platform as a Service&quot; products, this service will use Microsoft\'s Azure software; also will launch another OpenStack or Eucalyptus open source platform based on the infrastructure services, but Dell has not yet made&amp;nbsp;&lt;/span&gt;&lt;span&gt;the final decision.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Through the acquisition of IT services company Perot Systems deal, Dell has been providing application hosting services, its annual revenue of about $ 1 billion.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Bier Ge said, these customers will renew the contract, Dell wants to standardize its the public cloud services.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He pointed out that the more modern, and VMware-based environment should mean that the cost of Dell and its customers will decline.&amp;nbsp;&lt;/span&gt;&lt;span&gt;However, Perot\'s many customers from the health care industry, so Dell will need to allow the service to follow HIPPA (Health Insurance Portability and Accountability Act) requirements.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Bier Ge said that Dell plans to do so next year.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Dell will provide three levels of service, namely pay-service that costs up to each virtual machine; reserved services, ensuring availability of the server; and private services to provide customers with a dedicated server, after&amp;nbsp;&lt;/span&gt;&lt;span&gt;service will require customers to sign two-year service contract.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Dell did not disclose the price of these services.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Bier Ge said Dell\'s these services compared to its competitors, with the services provided by &quot;competitiveness&quot;; But he also said the price of these services will be slightly higher than competitors\' services, because it contains security features.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Strategic change&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Use vCloud platform means in a sense of Dell\'s strategy changes.&amp;nbsp;&lt;/span&gt;&lt;span&gt;Over the past year, Dell has been in building their own virtual stack, including virtual integration system (VIS), and advanced infrastructure management (AIM) software.&amp;nbsp;&lt;/span&gt;&lt;span&gt;From now on, these products Dell will sell together with VMware software.&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Bier Ge said, the customer need for private and public cloud services use the same software platform aims to connect up to become a &quot;mixed cloud.&quot;&lt;br /&gt;&lt;!-- pagebreak --&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Consulting Managing Director ThinkStrategies Jeffrey Kaplan (Jeffrey Kaplan) said, with major vendors like VMware on the Dell is very important.&amp;nbsp;&lt;/span&gt;&lt;span&gt;He said: &quot;Dell has recognized that cloud services are the company\'s future is an important part if you want to be successful, Dell not only have to develop their own solutions, but must also form an alliance with industry-leading companies, and (Dell and VMware co-operation&amp;nbsp;&lt;/span&gt;&lt;span&gt;) is one example. &quot;&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;span&gt;Kaplan said that in itself is a reconstruction problem of software and services company, Dell\'s performance better than he expected, &quot;I do not buy Dell Perot a strong supporter of the transaction, but Dell has achieved success.&quot;&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `espcms_document_content` VALUES ('55','56','&lt;p&gt;Requirment&lt;/p&gt;\n&lt;ul&gt;\n&lt;li&gt;Station at&amp;nbsp;Dongguan&lt;/li&gt;\n&lt;li&gt;F.7 or above&amp;nbsp;&lt;/li&gt;\n&lt;li&gt;At least 5&amp;nbsp;years relevant experience (Garment field is preferred), in which minimize 3 years at managerial level (Preferred to have working experience in China)&lt;/li&gt;\n&lt;li&gt;Experience in providing all-rounded human resources &amp;amp; administration matters&lt;/li&gt;\n&lt;li&gt;Independent, proactive, positive, result-oriented, excellent interpersonal and problem solving skills&lt;/li&gt;\n&lt;li&gt;Proficiency in both spoken and written English, Chinese and Mandarin&lt;/li&gt;\n&lt;/ul&gt;');
INSERT INTO `espcms_document_content` VALUES ('56','57','&lt;p&gt;Phoca Gallery Plugin is a Joomla! 1.5 plugin to show categories or images of Phoca Gallery in an article content. For easier aadding of images into article you can use Phoca Gallery Button Plugin.&lt;/p&gt;');
INSERT INTO `espcms_document_label` VALUES ('1','cn','1','图片新闻推荐');
INSERT INTO `espcms_document_label` VALUES ('2','cn','3','产品推荐');
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
INSERT INTO `espcms_lng` VALUES ('1','1','cn','简体中文版','','1','0','1','0','0','','','','','');
INSERT INTO `espcms_lng` VALUES ('2','3','en','English','','1','0','1','0','0','','','','','');
INSERT INTO `espcms_lng` VALUES ('7','2','big5','繁体中文版','','1','0','1','1','0','','','','','');
INSERT INTO `espcms_lngpack` VALUES ('1','50','cn','网站名称','sitename','易思ESPCMS企业网站管理系统V5 - 最专业的企业建站管理平台','0','5');
INSERT INTO `espcms_lngpack` VALUES ('2','50','cn','关键字','keyword','易思ESPCMS,ESPCMS,PHP企业网站管理系统,开源企业网站系统,企业网站建设,尔创网联,ecisp.cn,earclink.com','0','5');
INSERT INTO `espcms_lngpack` VALUES ('3','50','cn','网站简介','description','ESPCMSV5是一套基于LAMP开发构建的企业网站管理系统。可以帮您迅速、轻松地构建起一个强大专业的企业网站。内置多模型自定、SEO搜索优化、静态页生成、评论留言、订购、会员等常见企业网站基本功能，通过灵活的插件机制还能扩展应用，帮您更好地实现网站价值','0','5');
INSERT INTO `espcms_lngpack` VALUES ('23','50','cn','翻页信息','pagetext','共有 $1 条记录 当前第 $2 页/共有 $3 页 每页显示 $4 条','0','6');
INSERT INTO `espcms_lngpack` VALUES ('24','50','cn','翻页按钮','pagebotton','首页/上一页/下一页/尾页','0','6');
INSERT INTO `espcms_lngpack` VALUES ('25','50','cn','跳转页按钮','gopageurl',' 跳转至 $1 页','0','6');
INSERT INTO `espcms_lngpack` VALUES ('27','50','cn','输入错误','inputerr','信息输入有错误，请返回检查并重新输入','0','6');
INSERT INTO `espcms_lngpack` VALUES ('542','50','cn','验证码输入错误','seescodeerr','验证码输入错误或为空，请重新输入！','0','6');
INSERT INTO `espcms_lngpack` VALUES ('31','50','cn','返回重新填写','gobackbotton','返回重新填写','0','6');
INSERT INTO `espcms_lngpack` VALUES ('32','50','cn','请不要重复提交','repeatinput','抱歉：您刚才已经提交，请不要再重复提交！','0','4');
INSERT INTO `espcms_lngpack` VALUES ('33','50','cn','返回默认地址','gobackurlbotton','返回默认地址','0','6');
INSERT INTO `espcms_lngpack` VALUES ('34','50','cn','登陆会员','memberlogin','立即登陆','0','6');
INSERT INTO `espcms_lngpack` VALUES ('35','50','cn','未登陆会员','memberloginerr','抱歉：当前仅允许会员操作，请登陆会员，如不是会员请注册！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('36','50','cn','权限不够','memberpuverr','抱歉：您的权限不足当前操作！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('37','50','cn','会员栏目名称','membertitle','会员','0','5');
INSERT INTO `espcms_lngpack` VALUES ('39','50','cn','购物车栏目名称','ordertitle','购物车','0','5');
INSERT INTO `espcms_lngpack` VALUES ('40','50','cn','会员主页标题','member_title','会员中心','0','5');
INSERT INTO `espcms_lngpack` VALUES ('43','50','cn','会员登陆输入错误','loing_input_err','用户名或密码输入错误，请返回重新输入！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('659','50','en','姓名、内容或其它填写错误','forum_input_err','Name, content or other fill in error, please return to re-fill!','0','4');
INSERT INTO `espcms_lngpack` VALUES ('44','50','cn','禁用受保护用户','member_memlock','错误：您当前使用的用户名已被禁用，请换一个用户名进行登陆！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('45','50','cn','登陆失败','login_err','抱歉：用户登陆失败，请检查用户名和密码是否正确！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('46','50','cn','ucenter数据同步错误','ucenter_err','错误：UCenter接口同步错误，请向管理员解决！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('544','50','cn','邮件订阅成功','invite_ok','恭喜，您的的邮箱订阅成功，感谢您的支持！','0','4');
INSERT INTO `espcms_lngpack` VALUES ('543','50','cn','会员关闭说明','mem_close','抱歉：会员功能已关闭！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('52','50','cn','用户名已存在','mem_reg_no','用户名已存在','0','1');
INSERT INTO `espcms_lngpack` VALUES ('53','50','cn','用户名可以使用','mem_reg_ok','用户名可以使用','0','1');
INSERT INTO `espcms_lngpack` VALUES ('54','50','cn','邮箱可以使用','mem_regemail_ok','邮箱可以使用','0','1');
INSERT INTO `espcms_lngpack` VALUES ('55','50','cn','邮箱已存在','mem_regemail_no','邮箱已存在','0','1');
INSERT INTO `espcms_lngpack` VALUES ('56','50','cn','用户名注意错误提示','username_err','错误：用户名为空或输入错误','0','1');
INSERT INTO `espcms_lngpack` VALUES ('57','50','cn','电子邮件输入错误','email_err','错误：E-mail为空或者格式错误','0','1');
INSERT INTO `espcms_lngpack` VALUES ('58','50','cn','密码输入错误','password_err','错误：密码为空或输入错误','0','1');
INSERT INTO `espcms_lngpack` VALUES ('59','50','cn','确认密码输入错误','password2_err','错误：确认密码为空或输入错误','0','1');
INSERT INTO `espcms_lngpack` VALUES ('60','50','cn','两次密码输入不一致','password_equal','错误：两次密码输入不一致，请重新输入','0','1');
INSERT INTO `espcms_lngpack` VALUES ('61','50','cn','请确认注册条款','agree_empty','提示：请确认注册条款','0','1');
INSERT INTO `espcms_lngpack` VALUES ('62','50','cn','密码过于简单','password_len2','错误：密码过于简单，请返回重新输入','0','1');
INSERT INTO `espcms_lngpack` VALUES ('63','50','cn','会员注册失败','reg_err','抱歉：注册失败，请检查相关数据是否输入正确，确认返回重新填写！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('64','50','cn','用户帐户需要激活','username_check','抱歉：当前帐户未进行激活，请登陆注册邮箱进行激活，如果未收到邮件，请点击重新发送！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('65','50','cn','重发激活邮件按钮名称','checkemail_send','重发激活邮件','0','6');
INSERT INTO `espcms_lngpack` VALUES ('66','50','cn','会员登陆按钮','login_botton','我要登陆会员','0','6');
INSERT INTO `espcms_lngpack` VALUES ('67','50','cn','帐户激活失败','username_check_no','抱歉：当前帐户激活失败，请检查帐户是否已经激活或者锁定！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('68','50','cn','帐户激活成功','username_check_ok','恭喜：当前帐户激活成功，请点击下列按钮进行登陆！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('69','50','cn','会员激活邮件发送失败','username_sendmail_err','抱歉：会员激活邮件发送失败，请与管理员联系！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('70','50','cn','会员激活邮件发送成功','username_sendmail_ok','恭喜：当前帐户激活邮件发送成功，请登陆您的邮箱进行查看！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('71','50','cn','对UCenter中存在的用户进行激活','ucenter_check_mess','提示：当前用户需要进行UCenter激活转换，请点击进行激活','0','1');
INSERT INTO `espcms_lngpack` VALUES ('72','50','cn','UCenter会员激活','ucenter_check_botton','激活会员','0','6');
INSERT INTO `espcms_lngpack` VALUES ('76','50','cn','会员注册成功','reg_ok','恭喜：您的会员已注册成功，请点击以下按钮进行登陆！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('77','50','cn','邮件发送失败','main_send_no','抱歉：网站已禁用邮件发送，密码暂无法取回，请与管理员系统！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('78','50','cn','密码成功找回提示说明','password_lostok','恭喜：新密码已成功发送到指定邮箱，请登陆查收并及时对随机密码进行更改！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('79','50','cn','密码找回失败提示说明','password_losterr','抱歉：您填写的相关信息无法验证通过，请与网站管理员联系！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('81','50','cn','留言标题错误','forum_title_err','错误：标题为空或输入错误，请返回重新输入！','0','4');
INSERT INTO `espcms_lngpack` VALUES ('657','50','en','会员关闭说明','mem_close','Membership function is turned off!','0','1');
INSERT INTO `espcms_lngpack` VALUES ('658','50','en','邮件订阅成功','invite_ok','Thanks for subscription','0','4');
INSERT INTO `espcms_lngpack` VALUES ('656','50','en','验证码输入错误','seescodeerr','Verification code input errors, please re-enter!','0','6');
INSERT INTO `espcms_lngpack` VALUES ('84','50','cn','留言提交成功','forum_input_ok','恭喜：信息提交成功，感谢您的支持！我们将尽快给予回复！','0','4');
INSERT INTO `espcms_lngpack` VALUES ('85','50','cn','留言出现敏感字符提示','forum_input_filter','抱歉：内容中含有敏感字符，请返回重新填写！','0','4');
INSERT INTO `espcms_lngpack` VALUES ('86','50','cn','匿名发布称呼','forum_anonymity','游客','0','4');
INSERT INTO `espcms_lngpack` VALUES ('87','50','cn','原始密码不能为空','oldpassword_err','错误：原始密码为空或输入不正确，请返回重新填写！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('88','50','cn','密码验证失败','password_input_err','抱歉：您输入的密码验证失败，请返回重新输入','0','1');
INSERT INTO `espcms_lngpack` VALUES ('89','50','cn','退出重新登陆','out_botton','退出重新登陆','0','6');
INSERT INTO `espcms_lngpack` VALUES ('90','50','cn','恭喜，密码修改成功','password_ok','恭喜：您的密码已成功修改，请确认退出后重新登陆！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('91','50','cn','邮件修改成功','email_edit_ok','恭喜：您的邮箱已成功修改，点击以下按钮返回会员中心！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('96','50','cn','日期填写错误','birthday_empty','错误：请检查您填写的日期是否错误，确认返回重新填写！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('545','50','cn','姓名、内容或其它填写错误','forum_input_err','姓名、内容或其它填写错误，请返回重新填写！','0','4');
INSERT INTO `espcms_lngpack` VALUES ('98','50','cn','QQ号填写错误','qq_empty','错误：请检查QQ号码是否填写错误，确认返回重新填写！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('99','50','cn','资料修改成功','member_edit_ok','恭喜：您的个人资料已修改成功，确认返回默认链接地址','0','1');
INSERT INTO `espcms_lngpack` VALUES ('100','50','cn','产品不存在或禁止订购','order_buy_err','错误：该商品不存在或不允许订购，请返回重新选择！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('101','50','cn','产品成功放置购物车','order_buy_ok','恭喜：产品已成功放置购物车，请确认继续订购或查看购物车','0','2');
INSERT INTO `espcms_lngpack` VALUES ('102','50','cn','继续订购按钮名称','oder_buy_goback','继续订购','0','2');
INSERT INTO `espcms_lngpack` VALUES ('103','50','cn','查看购物车按钮名称','order_buy_listbotton','查看购物车','0','1');
INSERT INTO `espcms_lngpack` VALUES ('104','50','cn','商品订购数量填写错误提示','order_amout_err','错误：商品订购数量填写错误，请填写大于0的整数！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('105','50','cn','订购更新成功','order_amout_updateok','提示：购物车信息已更新成功，请点击返回购物车列表！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('106','50','cn','购物车已清空','order_clearcart','提示：当前购物车已成功清除，请继续选购其它商品！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('107','50','cn','购物车产品删除','order_delcartok','提示：您所选择的商品已从购物车中删除，确认返回查看购物车商品列表！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('108','50','cn','未订购商品提示','order_nolist','错误：当前购物车中未添加订购商品，请返回添加后再提交此订购！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('109','50','cn','会员成功登陆消息','login_ok','恭喜：会员已验证通过，请点击以下按钮进入相关操作页面！','0','1');
INSERT INTO `espcms_lngpack` VALUES ('110','50','cn','进入会员中心按钮','member_center_botton','进入会员中心','0','6');
INSERT INTO `espcms_lngpack` VALUES ('111','50','cn','注册会员按钮','member_regbotton','会员注册','0','6');
INSERT INTO `espcms_lngpack` VALUES ('112','50','cn','姓名不能为空','alias_empty','错误：姓名填写错误或为空，请返回重新填写！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('113','50','cn','地址不能为空','address_title','错误：地址不能为空，请返回重新填写！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('114','50','cn','电话和手机填写错误','tel_empty','错误：手机和电话未填写或填写为空，请返回重新填写（任意一项即可）！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('116','50','cn','订单参数错误','order_input_err','抱歉：您所提交的订单参数错误，请返回重新选购！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('117','50','cn','参数错误，返回上一页','db_err','网站参数传送错误，请返回默认页面！','0','6');
INSERT INTO `espcms_lngpack` VALUES ('118','50','cn','新订单','ordermain_text_ordertype1','新订单','0','2');
INSERT INTO `espcms_lngpack` VALUES ('119','50','cn','已支付','ordermain_text_ordertype2','已支付','0','2');
INSERT INTO `espcms_lngpack` VALUES ('120','50','cn','已发货','ordermain_text_ordertype3','已发货','0','2');
INSERT INTO `espcms_lngpack` VALUES ('121','50','cn','等待验货','ordermain_text_ordertype4','等待验货','0','2');
INSERT INTO `espcms_lngpack` VALUES ('122','50','cn','结单','ordermain_text_ordertype5','结单','0','2');
INSERT INTO `espcms_lngpack` VALUES ('123','50','cn','作废','ordermain_text_ordertype6','作废','0','2');
INSERT INTO `espcms_lngpack` VALUES ('124','50','cn','退款','ordermain_text_ordertype7','退款','0','2');
INSERT INTO `espcms_lngpack` VALUES ('125','50','cn','退货','ordermain_text_ordertype8','退货','0','2');
INSERT INTO `espcms_lngpack` VALUES ('126','50','cn','会员订单信息修改','order_memberinfoedit_ok','恭喜：您的订单信息修改成功，点击按钮返回查看！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('127','50','cn','订单已成功取消','order_edit_del','提示：您已成功取消当前订购，点击按钮返回默认地址！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('128','50','cn','留言修改成功','forummain_edit_ok','恭喜：当前留言已成功修改，请点击按钮返回！','0','4');
INSERT INTO `espcms_lngpack` VALUES ('130','50','cn','禁止用户名发言','forum_mem_username','抱歉：您暂时无法在本论坛留言，请与管理员联系！','0','4');
INSERT INTO `espcms_lngpack` VALUES ('131','50','cn','订单支付失败','order_pay_no','抱歉：您的订单支付失败，如您已被扣款，请及时与我联系！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('132','50','cn','订单支付成功','order_pay_ok','恭喜：您的订单已支付成功，我们将即刻处理您的订单，感谢您的支持！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('133','50','cn','查看订单信息按钮名称','order_read_botton','查看订单信息','0','2');
INSERT INTO `espcms_lngpack` VALUES ('134','50','cn','在线客服标题名称','call_title','在线客服','0','3');
INSERT INTO `espcms_lngpack` VALUES ('135','50','cn','滑动按钮名称','call_botton','在线与我联系','0','3');
INSERT INTO `espcms_lngpack` VALUES ('136','50','cn','会员中心按钮名称','call_form_botton','会员中心','0','3');
INSERT INTO `espcms_lngpack` VALUES ('137','50','cn','论坛交流按钮名称','call_bbs_botton','论坛交流','0','3');
INSERT INTO `espcms_lngpack` VALUES ('138','50','cn','搜索条件错误','search_err','抱歉：您输入的搜索条件错误，请检查关键字是否输入或条件是否选择正确！','0','6');
INSERT INTO `espcms_lngpack` VALUES ('141','50','cn','无搜索结果说明','search_list_no','提示：未搜索到符合条件的数据，请返回重新搜索！','0','6');
INSERT INTO `espcms_lngpack` VALUES ('655','50','en','首页连接名称','hometitle','Home','0','5');
INSERT INTO `espcms_lngpack` VALUES ('653','50','en','询价已成功取消','enquiry_edit_del','Successful abolition of Inquiry','0','2');
INSERT INTO `espcms_lngpack` VALUES ('654','50','en','会员询价信息修改','enquiry_memberinfoedit_ok','Inquiry information changed successfully','0','2');
INSERT INTO `espcms_lngpack` VALUES ('652','50','en','询价成功','enquiry_ok','Your inquiry has been successfully submitted, thank you for your support','0','2');
INSERT INTO `espcms_lngpack` VALUES ('651','50','en','询价参数错误','enquiry_input_err','Inquiry parameter error','0','2');
INSERT INTO `espcms_lngpack` VALUES ('650','50','en','询价清空','enquiry_cleargoods','The current products have been successfully cleared Inquiry','0','2');
INSERT INTO `espcms_lngpack` VALUES ('648','50','en','询盘主栏目名称','enquirytitle','Inquiry','0','5');
INSERT INTO `espcms_lngpack` VALUES ('649','50','en','询价产品删除','enquiry_delok','Select the items you removed from the inquiry list','0','2');
INSERT INTO `espcms_lngpack` VALUES ('647','50','en','查看询价清单按钮','enquiry_into_listbotton','View Inquiry List','0','2');
INSERT INTO `espcms_lngpack` VALUES ('646','50','en','继续询价按钮名称','enquiry_into_goback','Continue to choose','0','2');
INSERT INTO `espcms_lngpack` VALUES ('645','50','en','产品不存在或选择询价错误','enqiry_into_err','The product does not exist, or other error, please return to re-select!','0','2');
INSERT INTO `espcms_lngpack` VALUES ('644','50','en','产品成功放置询价','enqiry_into_ok','Products have successfully added Inquiry List','0','2');
INSERT INTO `espcms_lngpack` VALUES ('642','50','en','浏览器禁用cookie说明','ie_cookie_err','Cookie disabled browser','0','1');
INSERT INTO `espcms_lngpack` VALUES ('643','50','en','即时通关闭按钮名称','close_im','Close','0','3');
INSERT INTO `espcms_lngpack` VALUES ('641','50','en','无搜索结果说明','search_list_no','Search content does not exist','0','6');
INSERT INTO `espcms_lngpack` VALUES ('640','50','en','搜索条件错误','search_err','Search condition input error','0','6');
INSERT INTO `espcms_lngpack` VALUES ('638','50','en','会员中心按钮名称','call_form_botton','Member center','0','3');
INSERT INTO `espcms_lngpack` VALUES ('639','50','en','论坛交流按钮名称','call_bbs_botton','Submit message','0','3');
INSERT INTO `espcms_lngpack` VALUES ('636','50','en','在线客服标题名称','call_title','Online Customer Service','0','3');
INSERT INTO `espcms_lngpack` VALUES ('637','50','en','滑动按钮名称','call_botton','Contact Us','0','3');
INSERT INTO `espcms_lngpack` VALUES ('635','50','en','查看订单信息按钮名称','order_read_botton','View Order Details','0','2');
INSERT INTO `espcms_lngpack` VALUES ('634','50','en','订单支付成功','order_pay_ok','Payment orders successfully, thank you for your support','0','2');
INSERT INTO `espcms_lngpack` VALUES ('633','50','en','订单支付失败','order_pay_no','Failure to pay the order, please contact us','0','2');
INSERT INTO `espcms_lngpack` VALUES ('632','50','en','禁止用户名发言','forum_mem_username','The user has banned message, please contact with us','0','4');
INSERT INTO `espcms_lngpack` VALUES ('630','50','en','留言修改成功','forummain_edit_ok','Message modify success','0','4');
INSERT INTO `espcms_lngpack` VALUES ('629','50','en','订单已成功取消','order_edit_del','Order cancel success','0','2');
INSERT INTO `espcms_lngpack` VALUES ('628','50','en','会员订单信息修改','order_memberinfoedit_ok','Thanks for Your Order!Your order was sent to us but requires payment before it can be completed','0','2');
INSERT INTO `espcms_lngpack` VALUES ('627','50','en','退货','ordermain_text_ordertype8','Declined','0','2');
INSERT INTO `espcms_lngpack` VALUES ('625','50','en','作废','ordermain_text_ordertype6','Cancelled','0','2');
INSERT INTO `espcms_lngpack` VALUES ('626','50','en','退款','ordermain_text_ordertype7','Refunded','0','2');
INSERT INTO `espcms_lngpack` VALUES ('623','50','en','等待验货','ordermain_text_ordertype4','Acceptance','0','2');
INSERT INTO `espcms_lngpack` VALUES ('624','50','en','结单','ordermain_text_ordertype5','Completed','0','2');
INSERT INTO `espcms_lngpack` VALUES ('621','50','en','已支付','ordermain_text_ordertype2','Already pay','0','2');
INSERT INTO `espcms_lngpack` VALUES ('622','50','en','已发货','ordermain_text_ordertype3','Shipped','0','2');
INSERT INTO `espcms_lngpack` VALUES ('620','50','en','新订单','ordermain_text_ordertype1','Awaiting Payment','0','2');
INSERT INTO `espcms_lngpack` VALUES ('618','50','en','订单参数错误','order_input_err','Order parameter error','0','2');
INSERT INTO `espcms_lngpack` VALUES ('619','50','en','参数错误，返回上一页','db_err','Parameters error, please return the default URL!','0','6');
INSERT INTO `espcms_lngpack` VALUES ('617','50','en','电话和手机填写错误','tel_empty','Mobile phones or telephone not complete or fill in error','0','2');
INSERT INTO `espcms_lngpack` VALUES ('616','50','en','地址不能为空','address_title','Please fill out the contact address','0','2');
INSERT INTO `espcms_lngpack` VALUES ('614','50','en','注册会员按钮','member_regbotton','Create an Account','0','6');
INSERT INTO `espcms_lngpack` VALUES ('615','50','en','收件人不能为空','alias_empty','Please fill out a contact name','0','2');
INSERT INTO `espcms_lngpack` VALUES ('613','50','en','进入会员中心按钮','member_center_botton','Member Center','0','6');
INSERT INTO `espcms_lngpack` VALUES ('612','50','en','会员成功登陆消息','login_ok','Validation, please click the following through to the corresponding function button!!!!!','0','1');
INSERT INTO `espcms_lngpack` VALUES ('611','50','en','未订购商品提示','order_nolist','Your Shopping Cart is Empty','0','2');
INSERT INTO `espcms_lngpack` VALUES ('610','50','en','购物车产品删除','order_delcartok','Delete success, return to check list order','0','2');
INSERT INTO `espcms_lngpack` VALUES ('609','50','en','购物车已清空','order_clearcart','Your Shopping Cart is Empty','0','2');
INSERT INTO `espcms_lngpack` VALUES ('608','50','en','订购更新成功','order_amout_updateok','Updated the order','0','2');
INSERT INTO `espcms_lngpack` VALUES ('606','50','en','查看购物车按钮名称','order_buy_listbotton','Your Shopping Cart','0','1');
INSERT INTO `espcms_lngpack` VALUES ('607','50','en','商品订购数量填写错误提示','order_amout_err','Please input the order quantity','0','2');
INSERT INTO `espcms_lngpack` VALUES ('605','50','en','继续订购按钮名称','oder_buy_goback','Continue Shopping','0','2');
INSERT INTO `espcms_lngpack` VALUES ('604','50','en','产品成功放置购物车','order_buy_ok','The success of choose and buy products','0','2');
INSERT INTO `espcms_lngpack` VALUES ('603','50','en','产品不存在或禁止订购','order_buy_err','The goods does not exist or prohibit the order','0','2');
INSERT INTO `espcms_lngpack` VALUES ('602','50','en','资料修改成功','member_edit_ok','Personal data modified success','0','1');
INSERT INTO `espcms_lngpack` VALUES ('601','50','en','QQ号填写错误','qq_empty','QQ format error','0','1');
INSERT INTO `espcms_lngpack` VALUES ('600','50','en','日期填写错误','birthday_empty','Time format error','0','1');
INSERT INTO `espcms_lngpack` VALUES ('599','50','en','邮件修改成功','email_edit_ok','Mailbox modify success','0','1');
INSERT INTO `espcms_lngpack` VALUES ('597','50','en','退出重新登陆','out_botton','Login again','0','6');
INSERT INTO `espcms_lngpack` VALUES ('598','50','en','恭喜，密码修改成功','password_ok','User password updated successfully!','0','1');
INSERT INTO `espcms_lngpack` VALUES ('596','50','en','密码验证失败','password_input_err','The current password is wrong!','0','1');
INSERT INTO `espcms_lngpack` VALUES ('595','50','en','原始密码不能为空','oldpassword_err','The original password is empty or input is not correct','0','1');
INSERT INTO `espcms_lngpack` VALUES ('594','50','en','匿名发布称呼','forum_anonymity','Visitor','0','4');
INSERT INTO `espcms_lngpack` VALUES ('593','50','en','留言出现敏感字符提示','forum_input_filter','Error: content containing sensitive characters','0','4');
INSERT INTO `espcms_lngpack` VALUES ('592','50','en','留言提交成功','forum_input_ok','Information submitted to success, thank you for support','0','4');
INSERT INTO `espcms_lngpack` VALUES ('591','50','en','留言标题错误','forum_title_err','Title is empty or input errors','0','4');
INSERT INTO `espcms_lngpack` VALUES ('590','50','en','密码找回失败提示说明','password_losterr','I\'m sorry: fill in the information can\'t verify through the website, please contact with administrator.','0','1');
INSERT INTO `espcms_lngpack` VALUES ('589','50','en','密码成功找回提示说明','password_lostok','The new password has been successfully sent to designated mailbox','0','1');
INSERT INTO `espcms_lngpack` VALUES ('588','50','en','邮件发送失败','main_send_no','Web site has banned mail, please contact with us','0','1');
INSERT INTO `espcms_lngpack` VALUES ('587','50','en','会员注册成功','reg_ok','Member success','0','1');
INSERT INTO `espcms_lngpack` VALUES ('586','50','en','UCenter会员激活','ucenter_check_botton','Activate members','0','6');
INSERT INTO `espcms_lngpack` VALUES ('585','50','en','对UCenter中存在的用户进行激活','ucenter_check_mess','The current user needs UCenter activate the conversion','0','1');
INSERT INTO `espcms_lngpack` VALUES ('584','50','en','会员激活邮件发送成功','username_sendmail_ok','The current account activated mail sent successfully','0','1');
INSERT INTO `espcms_lngpack` VALUES ('583','50','en','会员激活邮件发送失败','username_sendmail_err','Member activate mail failed','0','1');
INSERT INTO `espcms_lngpack` VALUES ('582','50','en','帐户激活成功','username_check_ok','Account activated success','0','1');
INSERT INTO `espcms_lngpack` VALUES ('580','50','en','会员登陆按钮','login_botton','Log in','0','6');
INSERT INTO `espcms_lngpack` VALUES ('581','50','en','帐户激活失败','username_check_no','Activate failure','0','1');
INSERT INTO `espcms_lngpack` VALUES ('579','50','en','重发激活邮件按钮名称','checkemail_send','Heavy hair the confirmation E-mail','0','6');
INSERT INTO `espcms_lngpack` VALUES ('578','50','en','用户帐户需要激活','username_check','The current account not activated','0','1');
INSERT INTO `espcms_lngpack` VALUES ('577','50','en','会员注册失败','reg_err','Failed to register','0','1');
INSERT INTO `espcms_lngpack` VALUES ('576','50','en','密码过于简单','password_len2','The password is too simple or with the same user name','0','1');
INSERT INTO `espcms_lngpack` VALUES ('575','50','en','请确认注册条款','agree_empty','Please confirm the registration agreement','0','1');
INSERT INTO `espcms_lngpack` VALUES ('574','50','en','两次密码输入不一致','password_equal','Two password input not consistent','0','1');
INSERT INTO `espcms_lngpack` VALUES ('573','50','en','确认密码输入错误','password2_err','Confirm password is empty or input errors','0','1');
INSERT INTO `espcms_lngpack` VALUES ('572','50','en','密码输入错误','password_err','The password is empty or input errors','0','1');
INSERT INTO `espcms_lngpack` VALUES ('571','50','en','电子邮件输入错误','email_err','Your email address is incorrect. Please try again.','0','1');
INSERT INTO `espcms_lngpack` VALUES ('570','50','en','用户名注意错误提示','username_err','Username or input errors. Empty','0','1');
INSERT INTO `espcms_lngpack` VALUES ('569','50','en','邮箱已存在','mem_regemail_no','E-mail already exist','0','1');
INSERT INTO `espcms_lngpack` VALUES ('567','50','en','用户名可以使用','mem_reg_ok','Through the','0','1');
INSERT INTO `espcms_lngpack` VALUES ('568','50','en','邮箱可以使用','mem_regemail_ok','E-mail through','0','1');
INSERT INTO `espcms_lngpack` VALUES ('566','50','en','用户名已存在','mem_reg_no','This ID is not available','0','1');
INSERT INTO `espcms_lngpack` VALUES ('565','50','en','ucenter数据同步错误','ucenter_err','UCenter interface synchronization error','0','1');
INSERT INTO `espcms_lngpack` VALUES ('564','50','en','登陆失败','login_err','Account disable, user name or password records error','0','1');
INSERT INTO `espcms_lngpack` VALUES ('562','50','en','会员登陆输入错误','loing_input_err','Username or password input error, please return to enter again!!!!!','0','1');
INSERT INTO `espcms_lngpack` VALUES ('563','50','en','禁用受保护用户','member_memlock','Username has been banned, please change user name to third','0','1');
INSERT INTO `espcms_lngpack` VALUES ('560','50','en','购物车栏目名称','ordertitle','View Cart','0','5');
INSERT INTO `espcms_lngpack` VALUES ('561','50','en','会员主页标题','member_title','Member','0','5');
INSERT INTO `espcms_lngpack` VALUES ('559','50','en','会员栏目名称','membertitle','Account','0','5');
INSERT INTO `espcms_lngpack` VALUES ('558','50','en','权限不够','memberpuverr','Access is not enough, prohibit operation!','0','1');
INSERT INTO `espcms_lngpack` VALUES ('261','50','cn','浏览器禁用cookie说明','ie_cookie_err','浏览器禁用Cookie','0','1');
INSERT INTO `espcms_lngpack` VALUES ('382','50','cn','即时通关闭按钮名称','close_im','关闭','0','3');
INSERT INTO `espcms_lngpack` VALUES ('557','50','en','未登陆会员','memberloginerr','Access is not enough, prohibit operation! Please sign!!','0','1');
INSERT INTO `espcms_lngpack` VALUES ('386','50','cn','产品成功放置询价','enqiry_into_ok','恭喜：产品已成功加入询价清单，请确认继续选择或查看询价清单列表！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('387','50','cn','产品不存在或选择询价错误','enqiry_into_err','错误：该产品不存在或其它错误，请返回重新选择！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('388','50','cn','继续询价按钮名称','enquiry_into_goback','继续选择询价','0','2');
INSERT INTO `espcms_lngpack` VALUES ('389','50','cn','查看询价清单按钮','enquiry_into_listbotton','查看询价清单','0','2');
INSERT INTO `espcms_lngpack` VALUES ('555','50','en','返回默认地址','gobackurlbotton','Default URL','0','6');
INSERT INTO `espcms_lngpack` VALUES ('556','50','en','登陆会员','memberlogin','Log IN','0','6');
INSERT INTO `espcms_lngpack` VALUES ('554','50','en','请不要重复提交','repeatinput','You have to submit, please and repeated operation','0','4');
INSERT INTO `espcms_lngpack` VALUES ('553','50','en','返回重新填写','gobackbotton','Return to','0','6');
INSERT INTO `espcms_lngpack` VALUES ('394','50','cn','询盘主栏目名称','enquirytitle','询盘','0','5');
INSERT INTO `espcms_lngpack` VALUES ('395','50','cn','询价产品删除','enquiry_delok','提示：您所选择的商品已从询价列表中删除，确认返回查看询价商品列表！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('396','50','cn','询价清空','enquiry_cleargoods','提示：当前询价产品已成功清除，请选择其它商品进行询价！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('397','50','cn','询价参数错误','enquiry_input_err','抱歉：您所提交的询价参数错误，请返回重新填写！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('398','50','cn','询价成功','enquiry_ok','恭喜：您的询价已成功提交，感谢您的支持！我们将即刻处理您的询价，请耐心等候我们的回复！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('552','50','en','输入错误','inputerr','Input error, please enter again','0','6');
INSERT INTO `espcms_lngpack` VALUES ('551','50','en','跳转页按钮','gopageurl','Jump $1','0','6');
INSERT INTO `espcms_lngpack` VALUES ('549','50','en','翻页信息','pagetext','Total $1 $2 records Current page / Total $3 $4 per page','0','6');
INSERT INTO `espcms_lngpack` VALUES ('550','50','en','翻页按钮','pagebotton','Home/Previous/Next/Last','0','6');
INSERT INTO `espcms_lngpack` VALUES ('548','50','en','网站简介','description','ESPCMS is a professional enterprise web site management software, it has: completely open source (PHP + MySQL), generating static page, release the model for Jane numerous conversion, member, order, messages, form and so on, enough to make your website to fully meet the need of the Internet.','0','5');
INSERT INTO `espcms_lngpack` VALUES ('404','50','cn','询价已成功取消','enquiry_edit_del','提示：您已成功取消当前询价，点击按钮返回默认地址！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('405','50','cn','会员询价信息修改','enquiry_memberinfoedit_ok','恭喜：您的询价联系信息修改成功，点击按钮返回查看！','0','2');
INSERT INTO `espcms_lngpack` VALUES ('547','50','en','关键字','keyword','ESPCMS,cms,espcms,v5,espcmsv5,ecisp,earclink','0','5');
INSERT INTO `espcms_lngpack` VALUES ('546','50','en','网站名称','sitename','ESPCMSV5-The most professional enterprise site management platform','0','5');
INSERT INTO `espcms_lngpack` VALUES ('541','50','cn','首页连接名称','hometitle','首页','0','5');
INSERT INTO `espcms_logs` VALUES ('1','admin','2147483647','1373815662','登陆管理平台','成功 user=admin');
INSERT INTO `espcms_logs` VALUES ('2','admin','2147483647','1374074175','登陆管理平台','成功 user=admin');
INSERT INTO `espcms_logs` VALUES ('3','admin','2147483647','1374074179','登陆管理平台','成功 user=admin');
