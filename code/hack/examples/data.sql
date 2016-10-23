INSERT INTO `qb_hack` (`keywords`, `name`, `isclose`, `author`, `config`, `htmlcode`, `hackfile`, `hacksqltable`, `adminurl`, `about`, `class1`, `class2`, `list`, `linkname`, `isbiz`) VALUES ('examples', '成功案例', 0, '', '', '', '', '', 'index.php?lfj=examples&job=list', '', 'other', '成功案例', 1, '', 0);
DROP TABLE IF EXISTS `qb_example`;
CREATE TABLE `qb_example` (
  `id` mediumint(5) NOT NULL auto_increment,
  `fid` int(7) NOT NULL default '0',
  `name` varchar(30) NOT NULL default '',
  `url` varchar(150) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` text NOT NULL,
  `list` int(10) NOT NULL default '0',
  `ifhide` tinyint(1) NOT NULL default '0',
  `hits` tinyint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `yz` (`ifhide`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

# --------------------------------------------------------

#
# 表的结构 `qb_example_sort`
#

DROP TABLE IF EXISTS `qb_example_sort`;
CREATE TABLE `qb_example_sort` (
  `fid` mediumint(7) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  PRIMARY KEY  (`fid`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;
    