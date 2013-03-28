CREATE TABLE `fetchapp` (
`AppId` int(11) NOT NULL default '0',
`FileUrl` varchar(50) NOT NULL,
`NoticeUrl` varchar(50) NOT NULL,
`VerLimit` int(11) NOT NULL default '0',
PRIMARY KEY (`AppId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `fetchfile` (
`AppId` int(11) NOT NULL default '0',
`Command` enum('M','R') NOT NULL default 'M',
`FileIns` varchar(50) NOT NULL default '.\\',
`FileDir` varchar(50) NOT NULL default '',
`FileVer` int(11) NOT NULL default '0',
`FileSize` int(11) NOT NULL default '0',
PRIMARY KEY (`FileDir`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `logincash` (
`id`  varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`date`  datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `logingold` (
`id`  varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`date`  datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
