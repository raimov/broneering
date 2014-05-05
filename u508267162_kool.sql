
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Loomise aeg: Mai 05, 2014 kell 08:02 AM
-- Serveri versioon: 5.1.67
-- PHP versioon: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Andmebaas: `u508267162_kool`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `broneeringud`
--

CREATE TABLE IF NOT EXISTS `broneeringud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` datetime DEFAULT NULL,
  `nimi` varchar(255) DEFAULT NULL,
  `aeg` text,
  `kasutaja` int(11) DEFAULT NULL,
  `kool` int(11) DEFAULT NULL,
  `klass` text,
  `kuupaev` datetime DEFAULT NULL,
  `kuupaev_lopp` datetime DEFAULT NULL,
  `pikaajaline` int(1) DEFAULT NULL,
  `kasutajagrupp` varchar(255) DEFAULT NULL,
  `periood` text,
  `markused` text,
  `oppeaine` text,
  `kinnitus` varchar(255) NOT NULL,
  `staatus` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fb_filter_klass_INDEX` (`klass`(10))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=496 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_assets`
--

CREATE TABLE IF NOT EXISTS `j8sdv_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_assets`
--

INSERT INTO `j8sdv_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 117, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 20, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 27, 28, 1, 'com_login', 'com_login', '{}'),
(13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 33, 34, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 35, 36, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 37, 38, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 39, 78, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 79, 82, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 83, 84, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 85, 86, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 87, 88, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 89, 90, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 91, 94, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":{"10":1},"core.edit.state":{"10":1}}'),
(25, 1, 95, 98, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 99, 100, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 80, 81, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 96, 97, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 92, 93, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 101, 102, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 103, 104, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 105, 106, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 107, 108, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 109, 110, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 111, 112, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 40, 41, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 42, 43, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 44, 45, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 46, 47, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 48, 49, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 50, 51, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 52, 53, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 54, 55, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 56, 57, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 58, 59, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 60, 61, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 62, 63, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 64, 65, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 66, 67, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 68, 69, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 18, 70, 71, 2, 'com_modules.module.87', 'Fabrik Form Module', ''),
(55, 18, 72, 73, 2, 'com_modules.module.88', 'Fabrik List Module', ''),
(56, 1, 113, 114, 1, 'com_fabrik', 'com_fabrik', '{"core.admin":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":{"10":1},"core.edit.state":{"10":1},"core.edit.own":{"10":1}}'),
(58, 1, 115, 116, 1, 'com_slogin', 'com_slogin', '{}'),
(59, 18, 74, 75, 2, 'com_modules.module.89', 'SLogin', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(60, 18, 76, 77, 2, 'com_modules.module.90', 'User', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_associations`
--

CREATE TABLE IF NOT EXISTS `j8sdv_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_banners`
--

CREATE TABLE IF NOT EXISTS `j8sdv_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_banner_clients`
--

CREATE TABLE IF NOT EXISTS `j8sdv_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `j8sdv_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_categories`
--

CREATE TABLE IF NOT EXISTS `j8sdv_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_categories`
--

INSERT INTO `j8sdv_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_contact_details`
--

CREATE TABLE IF NOT EXISTS `j8sdv_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_content`
--

CREATE TABLE IF NOT EXISTS `j8sdv_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `j8sdv_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `j8sdv_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_content_rating`
--

CREATE TABLE IF NOT EXISTS `j8sdv_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_content_types`
--

CREATE TABLE IF NOT EXISTS `j8sdv_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_content_types`
--

INSERT INTO `j8sdv_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `j8sdv_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_extensions`
--

CREATE TABLE IF NOT EXISTS `j8sdv_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=776 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_extensions`
--

INSERT INTO `j8sdv_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"et-EE"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","save_history":"1","history_limit":5,"count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"11":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"13":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"2","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{"mediaversion":"45d449eebd2fbaa17fdedec65e1a508b"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2013-12-14","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2013 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.1.1","description":"LIB_FOF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.15","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.0.12","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `j8sdv_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"strong_passwords":"1","autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"February 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(701, 'mod_fabrik_form', 'module', 'mod_fabrik_form', '', 0, 1, 0, 0, '{"name":"mod_fabrik_form","type":"module","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"MOD_FABRIK_FORM_XML_DESCRIPTION","group":""}', '{"formid":"0","row_id":"0","usekey":"","template":"default","formmodule_useajax":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(702, 'mod_fabrik_list', 'module', 'mod_fabrik_list', '', 0, 1, 0, 0, '{"name":"mod_fabrik_list","type":"module","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"MOD_FABRIK_LIST_XML_DESCRIPTION","group":""}', '{"useajax":"0","ajax_links":"","radomizerecords":"0","limit":"0","show_nav":"","fabriklayout":"","show-title":"","show_into":"1","show_outro":"1","show_filters":"1","resetfilters":"0","clearfilters":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(703, 'plg_fabrik_system', 'plugin', 'fabrik', 'system', 0, 1, 1, 0, '{"name":"plg_fabrik_system","type":"plugin","creationDate":"February 2014","author":"Fabrikar.com","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.pollen-8.co.uk","version":"3.1","description":"PLG_FABRIK_SYSTEM_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(704, 'plg_fabrik', 'plugin', 'fabrik', 'content', 0, 0, 1, 0, '{"name":"plg_fabrik","type":"plugin","creationDate":"February 2014","author":"Pollen 8 Design Ltd","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_FABRIK_DESCRIPTION","group":""}', '{"botRegex":"fabrik"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(705, 'plg_fabrik_cron_email', 'plugin', 'email', 'fabrik_cron', 0, 1, 1, 0, '{"name":"plg_fabrik_cron_email","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_FABRIK_CRON_EMAIL_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(706, 'plg_fabrik_cron_php', 'plugin', 'php', 'fabrik_cron', 0, 1, 1, 0, '{"name":"plg_fabrik_cron_php","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_FABRIK_CRON_PHP_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(707, 'plg_fabrik_element_button', 'plugin', 'button', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_button","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_ELEMENT_BUTTON_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(708, 'plg_fabrik_element_checkbox', 'plugin', 'checkbox', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_checkbox","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_ELEMENT_CHECKBOX_DESCRIPTION","group":""}', '{"defaultFieldType":"TEXT"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(709, 'plg_fabrik_element_databasejoin', 'plugin', 'databasejoin', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_databasejoin","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_ELEMENT_DATABASEJOIN_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(710, 'plg_fabrik_element_date', 'plugin', 'date', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_date","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_ELEMENT_DATE_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(711, 'plg_fabrik_element_display', 'plugin', 'display', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_display","type":"plugin","creationDate":"February 2014","author":"Hugh Messenger","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_ELEMENT_DISPLAY_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(712, 'plg_fabrik_element_dropdown', 'plugin', 'dropdown', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_dropdown","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_ELEMENT_DROPDOWN_DESCRIPTION","group":""}', '{"defaultFieldType":"TEXT"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(713, 'plg_fabrik_element_field', 'plugin', 'field', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_field","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_ELEMENT_FIELD_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(714, 'plg_fabrik_element_fileupload', 'plugin', 'fileupload', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_fileupload","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_ELEMENT_FILEUPLOAD_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(715, 'plg_fabrik_element_googlemap', 'plugin', 'googlemap', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_googlemap","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_ELEMENT_GOOGLEMAP_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(716, 'plg_fabrik_element_image', 'plugin', 'image', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_image","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_ELEMENT_IMAGE_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(717, 'plg_fabrik_element_internalid', 'plugin', 'internalid', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_internalid","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_ELEMENT_INTERNALID_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(718, 'plg_fabrik_element_link', 'plugin', 'link', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_link","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_ELEMENT_LINK_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(719, 'plg_fabrik_element_radiobutton', 'plugin', 'radiobutton', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_radiobutton","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_ELEMENT_RADIOBUTTON_DESCRIPTION","group":""}', '{"defaultFieldType":"TEXT"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(720, 'plg_fabrik_element_textarea', 'plugin', 'textarea', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_textarea","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_ELEMENT_TEXTAREA_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(721, 'plg_fabrik_element_user', 'plugin', 'user', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_user","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_ELEMENT_USER_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(722, 'plg_fabrik_form_email', 'plugin', 'email', 'fabrik_form', 0, 1, 1, 0, '{"name":"plg_fabrik_form_email","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_FORM_EMAIL_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(723, 'plg_fabrik_form_php', 'plugin', 'php', 'fabrik_form', 0, 1, 1, 0, '{"name":"plg_fabrik_form_php","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_FORM_PHP_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(724, 'plg_fabrik_form_receipt', 'plugin', 'receipt', 'fabrik_form', 0, 1, 1, 0, '{"name":"plg_fabrik_form_receipt","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_FORM_RECEIPT_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(725, 'plg_fabrik_form_redirect', 'plugin', 'redirect', 'fabrik_form', 0, 1, 1, 0, '{"name":"plg_fabrik_form_redirect","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_FORM_REDIRECT_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(726, 'plg_fabrik_list_copy', 'plugin', 'copy', 'fabrik_list', 0, 1, 1, 0, '{"name":"plg_fabrik_list_copy","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_LIST_COPY_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(727, 'plg_fabrik_list_php', 'plugin', 'php', 'fabrik_list', 0, 1, 1, 0, '{"name":"plg_fabrik_list_php","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_LIST_PHP_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(728, 'plg_fabrik_validationrule_isgreaterorlessthan', 'plugin', 'isgreaterorlessthan', 'fabrik_validationrule', 0, 1, 1, 0, '{"name":"plg_fabrik_validationrule_isgreaterorlessthan","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_VALIDATIONRULE_ISGREATERORLESSTHAN_DESCRIPTION","group":""}', '{"icon":"star"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(729, 'plg_fabrik_validationrule_notempty', 'plugin', 'notempty', 'fabrik_validationrule', 0, 1, 1, 0, '{"name":"plg_fabrik_validationrule_notempty","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_VALIDATIONRULE_NOTEMPTY_DESCRIPTION","group":""}', '{"icon":"star"}', '', '', 192, '2014-02-24 09:45:11', 0, 0),
(730, 'plg_fabrik_validationrule_php', 'plugin', 'php', 'fabrik_validationrule', 0, 1, 1, 0, '{"name":"plg_fabrik_validationrule_php","type":"plugin","creationDate":"February 2014","author":"Hugh Messenger","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"hugh.messenger@gmail.com","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_VALIDATIONRULE_PHP_DESCRIPTION","group":""}', '{"icon":"star"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(731, 'plg_fabrik_validationrule_regex', 'plugin', 'regex', 'fabrik_validationrule', 0, 1, 1, 0, '{"name":"plg_fabrik_validationrule_regex","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_VALIDATIONRULE_REGEX_DESCRIPTION","group":""}', '{"icon":"star"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(732, 'plg_fabrik_validationrule_isemail', 'plugin', 'isemail', 'fabrik_validationrule', 0, 1, 1, 0, '{"name":"plg_fabrik_validationrule_isemail","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_VALIDATIONRULE_ISEMAIL_DESCRIPTION","group":""}', '{"icon":"envelope"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(733, 'plg_fabrik_visualization_calendar', 'plugin', 'calendar', 'fabrik_visualization', 0, 1, 1, 0, '{"name":"plg_fabrik_visualization_calendar","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_VISUALIZATION_CALENDAR_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(734, 'plg_fabrik_visualization_chart', 'plugin', 'chart', 'fabrik_visualization', 0, 1, 1, 0, '{"name":"plg_fabrik_visualization_chart","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_VISUALIZATION_CHART_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(735, 'plg_fabrik_visualization_googlemap', 'plugin', 'googlemap', 'fabrik_visualization', 0, 1, 1, 0, '{"name":"plg_fabrik_visualization_googlemap","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_VISUALIZATION_GOOGLEMAP_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(736, 'plg_fabrik_visualization_media', 'plugin', 'media', 'fabrik_visualization', 0, 1, 1, 0, '{"name":"plg_fabrik_visualization_media","type":"plugin","creationDate":"February 2014","author":"Hugh Messenger","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"hugh.messenger@gmail.com","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_VISUALIZATION_MEDIA_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(737, 'plg_fabrik_visualization_slideshow', 'plugin', 'slideshow', 'fabrik_visualization', 0, 1, 1, 0, '{"name":"plg_fabrik_visualization_slideshow","type":"plugin","creationDate":"February 2014","author":"Hugh Messenger","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"hugh.messenger@gmail.com","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_VISUALIZATION_SLIDESHOW_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(738, 'com_fabrik', 'component', 'com_fabrik', '', 1, 1, 0, 0, '{"name":"com_fabrik","type":"component","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.pollen-8.co.uk","version":"3.1","description":"COM_FABRIK_XML_DESCRIPTION","group":""}', '{"enable_big_selects":"0","google_api_key":"","google_buisness_client_id":"","google_buisness_signature":"","unpublish_clones":"0","fbConf_alter_existing_db_cols":"1","filter_build_method":"1","filter_list_max":"100","enable_single_sorting":"0","user_elements_as_related_data":"0","list_pdf":"0","actionMethod":"floating","int":"field","decimal":"field","tinyint":"field","smallint":"field","mediumint":"field","bigint":"field","varchar":"field","text":"textarea","tinytext":"textarea","mediumtext":"textarea","longtext":"textarea","datetime":"date","date":"date","timestamp":"date","time":"field","spoofcheck_on_formsubmission":"1","fbConf_wysiwyg_label":"0","form_print":"0","form_email":"0","form_pdf":"0","error_icon":"warning","use_mediabox":"0","mediabox_style":"Dark","include_lightbox_js":"1","tipfx":"linear","tipfx_ease":"easeIn","tipfx_duration":"500","tipfx_distance":"50","tipfx_fadein":"0","autocomplete_min_trigger_chars":"1","use_fabrikdebug":"0","pdf_debug":"0","fabrik_sef_prepend_menu_title":"0","fabrik_sef_tablename_on_forms":"0","fabrik_sef_format_records":"param_id","fabrik_sef_customtxt_form":"","fabrik_sef_customtxt_new":"","fabrik_sef_customtxt_edit":"","fabrik_sef_customtxt_details":"","fabrik_sef_customtxt_own":"","fabrik_sef_format_viz":"param_id","fabrik_sef_customtxt_viz":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(739, 'fabrik', 'package', 'pkg_fabrik', '', 0, 1, 1, 0, '{"name":"Fabrik Package","type":"package","creationDate":"February 2014","author":"Fabrik","copyright":"","authorEmail":"","authorUrl":"","version":"3.1","description":"Fabrik Package","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(740, 'Estonianet', 'language', 'et-EE', '', 0, 1, 0, 0, '{"name":"Estonian (et)","type":"language","creationDate":"2014-02-16","author":"Rivo Z\\u00e4ngov","copyright":"Copyright (C) 2005 - 2014 eraser.ee and Open Source Matters. K\\u00f5ik \\u00f5igused kaitstud.","authorEmail":"eraser@eraser.ee","authorUrl":"www.eraser.ee","version":"3.2.2.1","description":"Estonian language pack for Joomla! 3.2","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(741, 'Estonianet', 'language', 'et-EE', '', 1, 1, 0, 0, '{"name":"Estonian (et)","type":"language","creationDate":"2013-12-19","author":"Rivo Z\\u00e4ngov","copyright":"Copyright (C) 2005 - 2013 Rivo Z\\u00e4ngov ja Open Source Matters. K\\u00f5ik \\u00f5igused kaitstud.","authorEmail":"eraser@eraser.ee","authorUrl":"www.eraser.ee","version":"3.2.1.1","description":"Estonian language pack for Joomla! 3.2","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(742, 'et-EE', 'package', 'pkg_et-EE', '', 0, 1, 1, 0, '{"name":"Estonian Language Pack","type":"package","creationDate":"19. detsember 2013","author":"Rivo Z\\u00e4ngov","copyright":"Copyright (C) 2005 - 2014 eraser.ee Open Source Matters.","authorEmail":"eraser@eraser.ee","authorUrl":"www.eraser.ee","version":"3.2.2.1","description":"Eestikeele pakk Joomla! et-EE versioon 3.2.2","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(743, 'plg_fabrik_element_time', 'plugin', 'time', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_time","type":"plugin","creationDate":"February 2014","author":"Jaanus Nurmoja","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"jaanus.nurmoja@gmail.com","authorUrl":"www.facebook.com\\/jaanus.nurmoja","version":"3.1","description":"PLG_ELEMENT_TIME_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(748, 'plg_user_kool', 'plugin', 'kool', 'user', 0, 0, 1, 0, '{"name":"plg_user_kool","type":"plugin","creationDate":"M\\u00e4rts 2014","author":"Raimo Virolainen","copyright":"","authorEmail":"raimov@tlu.ee","authorUrl":"www.tlu.ee","version":"1.0.0","description":"PLG_USER_KOOL_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(749, 'plg_fabrik_element_yesno', 'plugin', 'yesno', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_yesno","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_ELEMENT_YESNO_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(750, 'plg_fabrik_form_juser', 'plugin', 'juser', 'fabrik_form', 0, 1, 1, 0, '{"name":"plg_fabrik_form_juser","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_FORM_JUSER_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(751, 'plg_fabrik_element_password', 'plugin', 'password', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_password","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_ELEMENT_PASSWORD_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(752, 'plg_fabrik_element_usergroup', 'plugin', 'usergroup', 'fabrik_element', 0, 1, 1, 0, '{"name":"plg_fabrik_element_usergroup","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_ELEMENT_USERGROUP_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(755, 'com_slogin', 'component', 'com_slogin', '', 1, 1, 0, 0, '{"name":"com_slogin","type":"component","creationDate":"14.05.2013","author":"SmokerMan, Arkadiy, Joomline","copyright":"\\u00a9 2012. All rights reserved.","authorEmail":"sale@joomline.ru","authorUrl":"","version":"1.8.1","description":"COM_SLOGIN_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(756, 'mod_slogin', 'module', 'mod_slogin', '', 0, 1, 0, 0, '{"name":"mod_slogin","type":"module","creationDate":"06.10.2012","author":"SmokerMan, Arkadiy, Joomline","copyright":"\\u00a9 2012. All rights reserved.","authorEmail":"sale@joomline.ru","authorUrl":"http:\\/\\/joomline.ru","version":"1.7.1","description":"MOD_SLOGIN_XML_DESCRIPTION","group":""}', '{"slogin_link_profile":"1","slogin_link_auch_edit":"1","cache":"0","load_css":"0","load_js":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(757, 'slogin', 'library', 'slogin_oauth', '', 0, 1, 1, 0, '{"name":"slogin","type":"library","creationDate":"2013-04-28","author":"Arkadiy","copyright":"","authorEmail":"a.sedelnikov@gmail.com","authorUrl":"argens.ru","version":"1.0","description":"\\n  \\n  \\u0411\\u0438\\u0431\\u043b\\u0438\\u043e\\u0442\\u0435\\u043a\\u0430 \\u0430\\u0432\\u0442\\u043e\\u0440\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 OAuth \\u0441 \\u0438\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u043d\\u044b\\u043c\\u0438 \\u043d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u044f\\u043c\\u0438 \\u043a\\u043b\\u0430\\u0441\\u0441\\u043e\\u0432 \\u0434\\u043b\\u044f \\u0438\\u0441\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u044f \\u043a\\u043e\\u043d\\u0444\\u043b\\u0438\\u043a\\u0442\\u043e\\u0432 \\u0438\\u043c\\u0435\\u043d.\\n  \\n  ","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(758, 'Social Login', 'plugin', 'slogin', 'user', 0, 1, 1, 0, '{"name":"Social Login","type":"plugin","creationDate":"21.09.2012","author":"Arkadiy, Joomline","copyright":"(C) 2012. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/joomline.ru","version":"1.0","description":"Delete User info from slogin table","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(759, 'PLG_SLOGIN_PROFILE', 'plugin', 'profile', 'slogin_integration', 0, 1, 1, 0, '{"name":"PLG_SLOGIN_PROFILE","type":"plugin","creationDate":"29.08.2013","author":"Arkadiy Sedelnikov","copyright":"(C) 2012. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/argens.ru","version":"1.0.1","description":"PLG_SLOGIN_PROFILE_DESC","group":""}', '{"rootfolder":"images\\/avatar","img_quality":"80","imgparam":"50","updatetime":"86400","enable_geo":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(760, 'JComments - Social Login', 'plugin', 'slogin', 'jcomments', 0, 0, 1, 0, '{"name":"JComments - Social Login","type":"plugin","creationDate":"09\\/09\\/2013","author":"smart","copyright":"(c) 2012-2013 JoomlaTune.ru","authorEmail":"smart@joomlatune.ru","authorUrl":"http:\\/\\/www.joomlatune.ru","version":"1.0.8","description":"PLG_JCOMMENTS_SLOGIN_XML_DESCRIPTION","group":""}', '{"css":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(761, 'Social Login Facebook auth', 'plugin', 'facebook', 'slogin_auth', 0, 1, 1, 0, '{"name":"Social Login Facebook auth","type":"plugin","creationDate":"21.09.2012","author":"Arkadiy, Joomline","copyright":"(C) 2012. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/joomline.ru","version":"1.0","description":"Facebook auth","group":""}', '{"id":"546606662122691","password":"65cb5aacf542971e0ea6bf66536887dd","callback_url":null}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(762, 'Social Login Google auth', 'plugin', 'google', 'slogin_auth', 0, 0, 1, 0, '{"name":"Social Login Google auth","type":"plugin","creationDate":"21.09.2012","author":"Arkadiy, Joomline","copyright":"(C) 2012. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/joomline.ru","version":"1.0","description":"Google auth","group":""}', '{"id":"","password":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(763, 'Social Login mail.ru auth', 'plugin', 'mail', 'slogin_auth', 0, 0, 1, 0, '{"name":"Social Login mail.ru auth","type":"plugin","creationDate":"21.09.2012","author":"Arkadiy, Joomline","copyright":"(C) 2012. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/joomline.ru","version":"1.0","description":"mail.ru auth","group":""}', '{"id":"","password":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(764, 'Social Login Odnoklassniki auth', 'plugin', 'odnoklassniki', 'slogin_auth', 0, 0, 1, 0, '{"name":"Social Login Odnoklassniki auth","type":"plugin","creationDate":"21.09.2012","author":"Arkadiy, Joomline","copyright":"(C) 2012. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/joomline.ru","version":"1.0","description":"Odnoklassniki auth","group":""}', '{"id":"","password":"","public_key":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(765, 'Social Login Twitter auth', 'plugin', 'twitter', 'slogin_auth', 0, 0, 1, 0, '{"name":"Social Login Twitter auth","type":"plugin","creationDate":"21.09.2012","author":"Arkadiy, Joomline","copyright":"(C) 2012. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/joomline.ru","version":"1.0","description":"Twitter auth","group":""}', '{"id":"","password":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(766, 'Social Login Vkontakte auth', 'plugin', 'vkontakte', 'slogin_auth', 0, 0, 1, 0, '{"name":"Social Login Vkontakte auth","type":"plugin","creationDate":"21.09.2012","author":"Arkadiy, Joomline","copyright":"(C) 2012. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/joomline.ru","version":"1.0","description":"Vkontakte auth","group":""}', '{"id":"","password":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(767, 'Social Login Yandex auth', 'plugin', 'yandex', 'slogin_auth', 0, 0, 1, 0, '{"name":"Social Login Yandex auth","type":"plugin","creationDate":"21.09.2012","author":"Arkadiy, Joomline","copyright":"(C) 2012. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/joomline.ru","version":"1.0","description":"Yandex auth. Instructions for setting up the plugin: http:\\/\\/joomline.ru\\/stati\\/53-komponenty\\/306-sozdanie-prilozhenij-dlja-socialnoj-avtoriziacii.html","group":""}', '{"id":"","password":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `j8sdv_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(768, 'Social Login LinkedIn auth', 'plugin', 'linkedin', 'slogin_auth', 0, 0, 1, 0, '{"name":"Social Login LinkedIn auth","type":"plugin","creationDate":"21.09.2012","author":"Arkadiy, Joomline","copyright":"(C) 2012. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/joomline.ru","version":"1.0","description":"LinkedIn auth","group":""}', '{"api_key":"","secret_key":"","oauth_token":"","oauth_secret":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(769, 'Social Login Ulogin auth', 'plugin', 'ulogin', 'slogin_auth', 0, 0, 1, 0, '{"name":"Social Login Ulogin auth","type":"plugin","creationDate":"21.09.2012","author":"Arkadiy, Joomline","copyright":"(C) 2012. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/joomline.ru","version":"1.0","description":"Ulogin auth. Instructions for setting up the plugin: http:\\/\\/joomline.ru\\/stati\\/53-komponenty\\/306-sozdanie-prilozhenij-dlja-socialnoj-avtoriziacii.html","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(770, 'Social Login Live.com auth', 'plugin', 'live', 'slogin_auth', 0, 0, 1, 0, '{"name":"Social Login Live.com auth","type":"plugin","creationDate":"21.09.2012","author":"Arkadiy, Joomline","copyright":"(C) 2012. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/joomline.ru","version":"1.0","description":"Live.com auth","group":""}', '{"id":"","password":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(771, 'Social Login Yahoo auth', 'plugin', 'yahoo', 'slogin_auth', 0, 0, 1, 0, '{"name":"Social Login Yahoo auth","type":"plugin","creationDate":"21.09.2012","author":"Arkadiy, Joomline","copyright":"(C) 2012. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/joomline.ru","version":"1.0","description":"Yahoo auth","group":""}', '{"app_id":"","key":"","secret":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(772, 'slogin', 'package', 'pkg_slogin', '', 0, 1, 1, 0, '{"name":"com_slogin","type":"package","creationDate":"06.10.2012","author":"SmokerMan, Arkadiy, Joomline","copyright":"\\u00a9 2012. All rights reserved.","authorEmail":"","authorUrl":"","version":"1.8","description":"Packet authentication via social networking joomla. The package: plugin, module, component. After installing the plugin activate Social Login.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(773, 'plg_fabrik_list_update_col', 'plugin', 'update_col', 'fabrik_list', 0, 1, 1, 0, '{"name":"plg_fabrik_list_update_col","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_LIST_UPDATE_COL_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(774, 'plg_fabrik_list_caneditrow', 'plugin', 'caneditrow', 'fabrik_list', 0, 1, 1, 0, '{"name":"plg_fabrik_list_caneditrow","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_LIST_CANEDITROW_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(775, 'plg_fabrik_form_confirmation', 'plugin', 'confirmation', 'fabrik_form', 0, 1, 1, 0, '{"name":"plg_fabrik_form_confirmation","type":"plugin","creationDate":"February 2014","author":"Rob Clayburn","copyright":"Copyright (C) 2005-2014 fabrikar.com - All rights reserved.","authorEmail":"rob@pollen-8.co.uk","authorUrl":"www.fabrikar.com","version":"3.1","description":"PLG_FORM_CONFIRMATION_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_fabrik_connections`
--

CREATE TABLE IF NOT EXISTS `j8sdv_fabrik_connections` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `host` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `database` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `checked_out` int(4) NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `default` int(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_fabrik_connections`
--

INSERT INTO `j8sdv_fabrik_connections` (`id`, `host`, `user`, `password`, `database`, `description`, `published`, `checked_out`, `checked_out_time`, `default`, `params`) VALUES
(1, 'mysql.hostinger.ee', 'u508267162_raimo', '245A A3B1940787A687C61', 'u508267162_kool', 'site database', 1, 0, '0000-00-00 00:00:00', 1, '{"encryptedPw":true}');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_fabrik_cron`
--

CREATE TABLE IF NOT EXISTS `j8sdv_fabrik_cron` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  `frequency` smallint(6) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(6) NOT NULL,
  `created_by_alias` varchar(30) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(30) NOT NULL,
  `checked_out` int(6) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `plugin` varchar(50) NOT NULL,
  `lastrun` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_fabrik_elements`
--

CREATE TABLE IF NOT EXISTS `j8sdv_fabrik_elements` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `group_id` int(4) NOT NULL,
  `plugin` varchar(100) NOT NULL,
  `label` text,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_alias` varchar(100) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `width` int(4) NOT NULL,
  `height` int(4) NOT NULL DEFAULT '0',
  `default` text NOT NULL,
  `hidden` int(1) NOT NULL,
  `eval` int(1) NOT NULL,
  `ordering` int(4) NOT NULL,
  `show_in_list_summary` int(1) DEFAULT NULL,
  `filter_type` varchar(20) DEFAULT NULL,
  `filter_exact_match` int(1) DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `link_to_detail` int(1) NOT NULL DEFAULT '0',
  `primary_key` int(1) NOT NULL DEFAULT '0',
  `auto_increment` int(1) NOT NULL DEFAULT '0',
  `access` int(1) NOT NULL DEFAULT '0',
  `use_in_page_title` int(1) NOT NULL DEFAULT '0',
  `parent_id` mediumint(6) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_fabrik_elements`
--

INSERT INTO `j8sdv_fabrik_elements` (`id`, `name`, `group_id`, `plugin`, `label`, `checked_out`, `checked_out_time`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `width`, `height`, `default`, `hidden`, `eval`, `ordering`, `show_in_list_summary`, `filter_type`, `filter_exact_match`, `published`, `link_to_detail`, `primary_key`, `auto_increment`, `access`, `use_in_page_title`, `parent_id`, `params`) VALUES
(1, 'id', 1, 'internalid', 'id', 0, '0000-00-00 00:00:00', '2014-02-23 09:42:40', 192, 'admin', '0000-00-00 00:00:00', 0, 11, 6, '', 0, 0, 0, 1, NULL, NULL, 1, 0, 0, 0, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":"11","text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(3, 'kontaktisik', 1, 'field', 'kontaktisik', 0, '0000-00-00 00:00:00', '2014-02-23 09:42:40', 192, 'admin', '0000-00-00 00:00:00', 0, 30, 6, '', 0, 0, 2, 1, NULL, NULL, 1, 0, 0, 0, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":"255","text_format":"integer","integer_length":"11","decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(4, 'registreeritud', 1, 'field', 'registreeritud', 0, '0000-00-00 00:00:00', '2014-02-23 09:42:40', 192, 'admin', '0000-00-00 00:00:00', 0, 30, 6, '', 0, 0, 3, 1, NULL, NULL, 1, 0, 0, 0, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":"255","text_format":"integer","integer_length":"11","decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(9, 'koolinimi', 1, 'dropdown', 'Valige kool', 0, '0000-00-00 00:00:00', '2014-02-23 16:37:00', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 1, 0, '', 1, 1, 0, 0, 0, 1, 0, 8, '{"sub_options":{"sub_values":[""],"sub_labels":[""]},"multiple":"0","dropdown_multisize":"3","allow_frontend_addtodropdown":"0","dd-allowadd-onlylabel":"0","dd-savenewadditions":"0","options_split_str":"","dropdown_populate":"$db = JFactory::getDbo();\\r\\n$query = $db->getQuery(true);\\r\\n \\r\\n$query=\\"SELECT id,koolinimi FROM koolid WHERE registreeritud=0\\";\\r\\n \\r\\n$db->setQuery($query);\\r\\n \\r\\n$rows = $db->loadObjectList();\\r\\n\\r\\nforeach($rows as $row){\\r\\n  $options[] = JHTML::_(''select.option'', $row->id, $row->koolinimi);\\r\\n}\\r\\nreturn $options;","bootstrap_class":"input-medium","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(10, 'kooli_id', 4, 'databasejoin', 'Valige kool', 0, '0000-00-00 00:00:00', '2014-02-23 20:10:06', 192, 'admin', '2014-04-14 13:14:57', 192, 0, 0, '', 0, 0, 1, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"database_join_display_type":"dropdown","join_conn_id":"1","join_db_name":"koolid","join_key_column":"id","join_val_column":"koolinimi","join_val_column_concat":"","database_join_where_sql":"","database_join_where_access":"1","database_join_where_when":"3","database_join_join_sql":"","database_join_show_please_select":"1","database_join_noselectionvalue":"","database_join_noselectionlabel":"","databasejoin_popupform":"1","fabrikdatabasejoin_frontend_add":"0","join_popupwidth":"","databasejoin_readonly_link":"0","fabrikdatabasejoin_frontend_select":"0","dbjoin_options_per_row":"4","dbjoin_multilist_size":"6","dbjoin_autocomplete_size":"20","bootstrap_class":"input-medium","dabase_join_label_eval":"","join_desc_column":"","dbjoin_autocomplete_how":"contains","clean_concat":"0","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","notempty-message":[""],"notempty-validation_condition":[""],"tip_text":[""],"validations":{"plugin":["notempty"],"plugin_published":["1"],"validate_in":["both"],"validation_on":["both"],"show_icon":["1"]}}'),
(12, 'tunnialgus', 5, 'time', 'Algus', 0, '0000-00-00 00:00:00', '2014-02-23 21:31:24', 192, 'admin', '2014-02-23 21:54:02', 192, 0, 0, '', 0, 0, 2, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"time_hourlabel":"Tunnid","time_minlabel":"Minutid","time_seclabel":"","list_time_format":"H:i","details_time_format":"H:i","minutes_increment":"5","time_separatorlabel":":","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(13, 'tunnilopp', 5, 'time', 'Lõpp', 0, '0000-00-00 00:00:00', '2014-02-23 21:33:18', 192, 'admin', '2014-04-21 05:19:22', 192, 0, 0, '', 0, 0, 4, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"time_hourlabel":"Tunnid","time_minlabel":"Minutid","time_seclabel":"","list_time_format":"H:i","details_time_format":"H:i","minutes_increment":"5","time_separatorlabel":":","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(14, 'id', 5, 'internalid', 'id', 0, '0000-00-00 00:00:00', '2014-02-23 21:42:09', 192, 'admin', '0000-00-00 00:00:00', 0, 3, 0, '', 1, 0, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":255,"text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(15, 'parent_id', 5, 'field', 'parent_id', 0, '0000-00-00 00:00:00', '2014-02-23 21:42:09', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 1, 0, 3, 1, NULL, NULL, 1, 1, 0, 0, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":255,"text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(17, 'id', 6, 'internalid', 'id', 0, '0000-00-00 00:00:00', '2014-02-26 11:56:42', 192, 'admin', '0000-00-00 00:00:00', 0, 3, 0, '', 1, 0, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":255,"text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(18, 'parent_id', 6, 'field', 'parent_id', 0, '0000-00-00 00:00:00', '2014-02-26 11:56:42', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 1, 0, 3, 1, NULL, NULL, 1, 1, 0, 0, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":255,"text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(19, 'klassinimi', 6, 'field', 'Klassinimi', 0, '0000-00-00 00:00:00', '2014-02-26 11:57:49', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 2, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"text","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(20, 'kohtadearv', 6, 'field', 'Kohtade arv', 0, '0000-00-00 00:00:00', '2014-02-26 11:58:33', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 3, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"integer","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(54, 'id', 13, 'internalid', 'id', 0, '0000-00-00 00:00:00', '2014-04-02 07:47:26', 192, 'admin', '0000-00-00 00:00:00', 0, 3, 0, '', 1, 0, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":255,"text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(55, 'date_time', 13, 'date', 'date time', 0, '0000-00-00 00:00:00', '2014-04-02 07:47:26', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 1, 0, 2, 1, NULL, NULL, 1, 1, 0, 0, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":255,"text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(56, 'username', 13, 'field', 'Kasutajanimi', 0, '0000-00-00 00:00:00', '2014-04-02 07:48:49', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 3, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"text","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(57, 'name', 13, 'field', 'Nimi', 0, '0000-00-00 00:00:00', '2014-04-02 07:58:51', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 4, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"text","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(58, 'password', 13, 'password', 'Parool', 0, '0000-00-00 00:00:00', '2014-04-02 07:59:57', 192, 'admin', '2014-04-03 06:36:49', 192, 0, 0, '', 0, 0, 5, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"maxlength":"255","strength_meter":"0","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(59, 'email', 13, 'field', 'E-mail', 0, '0000-00-00 00:00:00', '2014-04-02 08:00:20', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 6, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"text","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(60, 'block', 13, 'yesno', 'Blokeeritud', 0, '0000-00-00 00:00:00', '2014-04-02 08:00:46', 192, 'admin', '2014-04-25 08:50:54', 192, 0, 0, '', 1, 0, 7, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"yesno_default":"1","options_per_row":"4","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(61, 'user_group', 13, 'databasejoin', 'Kasutajagrupp', 0, '0000-00-00 00:00:00', '2014-04-02 08:01:50', 192, 'admin', '2014-04-23 11:05:42', 192, 0, 0, '2', 1, 0, 8, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"database_join_display_type":"dropdown","join_conn_id":"1","join_db_name":"j8sdv_usergroups","join_key_column":"id","join_val_column":"title","join_val_column_concat":"","database_join_where_sql":"id = 2 or id= 11 or id=12 or id=13","database_join_where_access":"1","database_join_where_when":"3","database_join_join_sql":"","database_join_show_please_select":"1","database_join_noselectionvalue":"","database_join_noselectionlabel":"","databasejoin_popupform":"","fabrikdatabasejoin_frontend_add":"0","join_popupwidth":"","databasejoin_readonly_link":"0","fabrikdatabasejoin_frontend_select":"0","dbjoin_options_per_row":"4","dbjoin_multilist_size":"6","dbjoin_autocomplete_size":"20","bootstrap_class":"input-large","dabase_join_label_eval":"","join_desc_column":"","dbjoin_autocomplete_how":"contains","clean_concat":"0","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(62, 'school', 13, 'databasejoin', 'Valige kool', 0, '0000-00-00 00:00:00', '2014-04-03 06:49:29', 192, 'admin', '2014-04-14 09:59:33', 192, 0, 0, '', 0, 0, 9, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"database_join_display_type":"dropdown","join_conn_id":"1","join_db_name":"koolid","join_key_column":"id","join_val_column":"koolinimi","join_val_column_concat":"","database_join_where_sql":"","database_join_where_access":"1","database_join_where_when":"3","database_join_join_sql":"","database_join_show_please_select":"1","database_join_noselectionvalue":"","database_join_noselectionlabel":"","databasejoin_popupform":"1","fabrikdatabasejoin_frontend_add":"0","join_popupwidth":"","databasejoin_readonly_link":"0","fabrikdatabasejoin_frontend_select":"0","dbjoin_options_per_row":"4","dbjoin_multilist_size":"6","dbjoin_autocomplete_size":"20","bootstrap_class":"input-large","dabase_join_label_eval":"","join_desc_column":"","dbjoin_autocomplete_how":"contains","clean_concat":"0","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(63, 'id', 14, 'internalid', 'id', 0, '0000-00-00 00:00:00', '2014-04-03 06:54:01', 192, 'admin', '0000-00-00 00:00:00', 0, 3, 0, '', 1, 0, 1, 1, NULL, NULL, -2, 1, 1, 1, 1, 0, 54, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":255,"text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0,"parent_linked":1}'),
(64, 'date_time', 14, 'date', 'date time', 0, '0000-00-00 00:00:00', '2014-04-03 06:54:01', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 1, 0, 2, 0, NULL, NULL, -2, 1, 0, 0, 1, 0, 55, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":255,"text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0,"parent_linked":1}'),
(65, 'username', 14, 'field', 'Kasutajanimi', 0, '0000-00-00 00:00:00', '2014-04-03 06:54:01', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 3, 1, '', 1, -2, 0, 0, 0, 1, 0, 56, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"text","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[],"parent_linked":1}'),
(66, 'name', 14, 'field', 'Nimi', 0, '0000-00-00 00:00:00', '2014-04-03 06:54:01', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 4, 1, '', 1, -2, 0, 0, 0, 1, 0, 57, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"text","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[],"parent_linked":1}'),
(67, 'password', 14, 'password', 'Parool', 0, '0000-00-00 00:00:00', '2014-04-03 06:54:01', 192, 'admin', '2014-04-03 06:36:49', 192, 0, 0, '', 0, 0, 5, 0, '', 1, -2, 0, 0, 0, 1, 0, 58, '{"maxlength":"255","strength_meter":"0","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[],"parent_linked":1}'),
(68, 'email', 14, 'field', 'E-mail', 0, '0000-00-00 00:00:00', '2014-04-03 06:54:01', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 6, 1, '', 1, -2, 0, 0, 0, 1, 0, 59, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"text","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[],"parent_linked":1}');
INSERT INTO `j8sdv_fabrik_elements` (`id`, `name`, `group_id`, `plugin`, `label`, `checked_out`, `checked_out_time`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `width`, `height`, `default`, `hidden`, `eval`, `ordering`, `show_in_list_summary`, `filter_type`, `filter_exact_match`, `published`, `link_to_detail`, `primary_key`, `auto_increment`, `access`, `use_in_page_title`, `parent_id`, `params`) VALUES
(69, 'block', 14, 'yesno', 'Blokeeritud', 0, '0000-00-00 00:00:00', '2014-04-03 06:54:01', 192, 'admin', '2014-04-03 08:05:20', 192, 0, 0, '', 0, 0, 7, 1, '', 1, -2, 0, 0, 0, 1, 0, 0, '{"yesno_default":"0","options_per_row":"4","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(70, 'user_group', 14, 'databasejoin', 'Kasutajagrupp', 0, '0000-00-00 00:00:00', '2014-04-03 06:54:01', 192, 'admin', '2014-04-03 14:44:05', 192, 0, 0, '', 0, 0, 8, 1, '', 1, -2, 0, 0, 0, 1, 0, 0, '{"database_join_display_type":"dropdown","join_conn_id":"1","join_db_name":"j8sdv_usergroups","join_key_column":"id","join_val_column":"title","join_val_column_concat":"","database_join_where_sql":"","database_join_where_access":"1","database_join_where_when":"3","database_join_join_sql":"","database_join_show_please_select":"1","database_join_noselectionvalue":"","database_join_noselectionlabel":"","databasejoin_popupform":"","fabrikdatabasejoin_frontend_add":"0","join_popupwidth":"","databasejoin_readonly_link":"0","fabrikdatabasejoin_frontend_select":"0","dbjoin_options_per_row":"4","dbjoin_multilist_size":"6","dbjoin_autocomplete_size":"20","bootstrap_class":"input-large","dabase_join_label_eval":"","join_desc_column":"","dbjoin_autocomplete_how":"contains","clean_concat":"0","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(71, 'school', 14, 'databasejoin', 'Valige kool', 0, '0000-00-00 00:00:00', '2014-04-03 06:54:01', 192, 'admin', '2014-04-03 08:01:07', 192, 0, 0, '$user = JFactory::getUser();\r\n\r\n$currentId = $user->id;\r\n\r\n\r\n$db = JFactory::getDbo();\r\n \r\n$query = $db->getQuery(true);\r\n \r\n$query="select * from kasutajad where user_id =".$currentId;\r\n \r\n$db->setQuery($query);\r\n \r\n$row = $db->LoadObject();\r\n\r\nreturn $row->school;\r\n', 0, 1, 9, 1, '', 1, -2, 0, 0, 0, 1, 0, 0, '{"database_join_display_type":"dropdown","join_conn_id":"1","join_db_name":"koolid","join_key_column":"id","join_val_column":"koolinimi","join_val_column_concat":"","database_join_where_sql":"","database_join_where_access":"1","database_join_where_when":"3","database_join_join_sql":"","database_join_show_please_select":"1","database_join_noselectionvalue":"","database_join_noselectionlabel":"","databasejoin_popupform":"1","fabrikdatabasejoin_frontend_add":"0","join_popupwidth":"","databasejoin_readonly_link":"0","fabrikdatabasejoin_frontend_select":"0","dbjoin_options_per_row":"4","dbjoin_multilist_size":"6","dbjoin_autocomplete_size":"20","bootstrap_class":"input-large","dabase_join_label_eval":"","join_desc_column":"","dbjoin_autocomplete_how":"contains","clean_concat":"0","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(72, 'user_id', 13, 'field', 'user id', 0, '0000-00-00 00:00:00', '2014-04-03 07:07:28', 192, 'admin', '2014-04-03 07:10:33', 192, 0, 0, '', 1, 0, 10, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"1","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"integer","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(73, 'user_id', 14, 'field', 'user id', 0, '0000-00-00 00:00:00', '2014-04-03 07:07:28', 192, 'admin', '2014-04-03 16:23:35', 192, 0, 0, '', 0, 0, 10, 1, '', 1, -2, 0, 0, 0, 1, 0, 0, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"integer","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(74, 'id', 16, 'internalid', 'id', 0, '0000-00-00 00:00:00', '2014-04-07 07:05:37', 192, 'admin', '0000-00-00 00:00:00', 0, 3, 0, '', 1, 0, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 0, 54, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":255,"text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0,"parent_linked":1}'),
(75, 'date_time', 16, 'date', 'date time', 0, '0000-00-00 00:00:00', '2014-04-07 07:05:37', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 1, 0, 2, 0, NULL, NULL, 1, 1, 0, 0, 1, 0, 55, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":255,"text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0,"parent_linked":1}'),
(76, 'username', 16, 'field', 'Kasutajanimi', 0, '0000-00-00 00:00:00', '2014-04-07 07:05:37', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 3, 1, '', 1, 1, 0, 0, 0, 1, 0, 56, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"text","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[],"parent_linked":1}'),
(77, 'name', 16, 'field', 'Nimi', 0, '0000-00-00 00:00:00', '2014-04-07 07:05:37', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 4, 1, '', 1, 1, 0, 0, 0, 1, 0, 57, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"text","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[],"parent_linked":1}'),
(78, 'password', 16, 'password', 'Parool', 0, '0000-00-00 00:00:00', '2014-04-07 07:05:37', 192, 'admin', '2014-04-03 06:36:49', 192, 0, 0, '', 0, 0, 5, 0, '', 1, 1, 0, 0, 0, 1, 0, 58, '{"maxlength":"255","strength_meter":"0","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[],"parent_linked":1}'),
(79, 'email', 16, 'field', 'E-mail', 0, '0000-00-00 00:00:00', '2014-04-07 07:05:37', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 6, 1, '', 1, 1, 0, 0, 0, 1, 0, 59, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"text","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[],"parent_linked":1}'),
(80, 'block', 16, 'yesno', 'Blokeeritud', 0, '0000-00-00 00:00:00', '2014-04-07 07:05:37', 192, 'admin', '2014-04-23 11:14:28', 192, 0, 0, '', 0, 0, 7, 1, '', 1, 1, 0, 0, 0, 7, 0, 0, '{"yesno_default":"0","options_per_row":"4","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"7","view_access":"7","view_access_user":"","list_view_access":"7","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(81, 'user_group', 16, 'databasejoin', 'Kasutajagrupp', 0, '0000-00-00 00:00:00', '2014-04-07 07:05:37', 192, 'admin', '2014-04-23 11:06:47', 192, 0, 0, '', 0, 0, 8, 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"database_join_display_type":"dropdown","join_conn_id":"1","join_db_name":"j8sdv_usergroups","join_key_column":"id","join_val_column":"title","join_val_column_concat":"","database_join_where_sql":"id = 2 or id= 11 or id=12 or id=13","database_join_where_access":"1","database_join_where_when":"3","database_join_join_sql":"","database_join_show_please_select":"0","database_join_noselectionvalue":"","database_join_noselectionlabel":"","databasejoin_popupform":"","fabrikdatabasejoin_frontend_add":"0","join_popupwidth":"","databasejoin_readonly_link":"0","fabrikdatabasejoin_frontend_select":"0","dbjoin_options_per_row":"4","dbjoin_multilist_size":"6","dbjoin_autocomplete_size":"20","bootstrap_class":"input-large","dabase_join_label_eval":"","join_desc_column":"","dbjoin_autocomplete_how":"contains","clean_concat":"0","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(82, 'school', 16, 'databasejoin', 'Valige kool', 192, '2014-04-14 09:59:17', '2014-04-07 07:05:37', 192, 'admin', '2014-04-14 09:57:12', 192, 0, 0, '', 0, 0, 9, 0, '', 1, 1, 0, 0, 0, 1, 0, 62, '{"database_join_display_type":"dropdown","join_conn_id":"1","join_db_name":"koolid","join_key_column":"id","join_val_column":"koolinimi","join_val_column_concat":"","database_join_where_sql":"","database_join_where_access":"1","database_join_where_when":"3","database_join_join_sql":"","database_join_show_please_select":"1","database_join_noselectionvalue":"","database_join_noselectionlabel":"","databasejoin_popupform":"1","fabrikdatabasejoin_frontend_add":"0","join_popupwidth":"","databasejoin_readonly_link":"0","fabrikdatabasejoin_frontend_select":"0","dbjoin_options_per_row":"4","dbjoin_multilist_size":"6","dbjoin_autocomplete_size":"20","bootstrap_class":"input-large","dabase_join_label_eval":"","join_desc_column":"","dbjoin_autocomplete_how":"contains","clean_concat":"0","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[],"parent_linked":1}'),
(83, 'user_id', 16, 'field', 'user id', 0, '0000-00-00 00:00:00', '2014-04-07 07:05:37', 192, 'admin', '2014-04-03 07:10:33', 192, 0, 0, '', 1, 0, 10, 0, '', 1, 1, 0, 0, 0, 1, 0, 72, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"1","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"integer","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[],"parent_linked":1}'),
(86, 'id', 18, 'internalid', 'id', 0, '0000-00-00 00:00:00', '2014-04-14 03:34:59', 192, 'admin', '0000-00-00 00:00:00', 0, 3, 0, '', 1, 0, 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":255,"text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(87, 'parent_id', 18, 'field', 'parent_id', 0, '0000-00-00 00:00:00', '2014-04-14 03:34:59', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 1, 0, 3, 1, NULL, NULL, 1, 1, 0, 0, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":255,"text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(88, 'perioodinimi', 18, 'field', 'Perioodi nimi', 0, '0000-00-00 00:00:00', '2014-04-14 03:36:27', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 2, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"text","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(89, 'alguskp', 18, 'date', 'Algus kuupäev', 0, '0000-00-00 00:00:00', '2014-04-14 03:38:21', 192, 'admin', '2014-04-23 13:19:47', 192, 0, 0, '', 0, 0, 4, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"bootstrap_class":"input-medium","date_showtime":"0","date_time_format":"H:i","bootstrap_time_class":"input-medium","date_store_as_local":"0","date_table_format":"d-m-Y","date_form_format":"d-m-Y","date_defaulttotoday":"0","date_alwaystoday":"0","date_firstday":"1","date_allow_typing_in_field":"1","date_csv_offset_tz":"0","date_advanced":"0","date_allow_func":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(90, 'loppkp', 18, 'date', 'Lõpu kuupäev', 0, '0000-00-00 00:00:00', '2014-04-14 03:38:58', 192, 'admin', '2014-04-23 13:20:12', 192, 0, 0, '', 0, 0, 5, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"bootstrap_class":"input-medium","date_showtime":"0","date_time_format":"H:i","bootstrap_time_class":"input-medium","date_store_as_local":"0","date_table_format":"d-m-Y","date_form_format":"d-m-Y","date_defaulttotoday":"0","date_alwaystoday":"0","date_firstday":"0","date_allow_typing_in_field":"1","date_csv_offset_tz":"0","date_advanced":"0","date_allow_func":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(99, 'id', 19, 'internalid', 'id', 0, '0000-00-00 00:00:00', '2014-04-14 08:22:35', 192, 'admin', '0000-00-00 00:00:00', 0, 3, 0, '', 1, 0, 1, 1, NULL, NULL, -2, 1, 1, 1, 1, 0, 54, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":255,"text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0,"parent_linked":1}'),
(100, 'date_time', 19, 'date', 'date time', 0, '0000-00-00 00:00:00', '2014-04-14 08:22:35', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 1, 0, 2, 1, NULL, NULL, -2, 1, 0, 0, 1, 0, 55, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":255,"text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0,"parent_linked":1}'),
(101, 'username', 19, 'field', 'Kasutajanimi', 0, '0000-00-00 00:00:00', '2014-04-14 08:22:35', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 3, 0, '', 1, -2, 0, 0, 0, 1, 0, 56, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"text","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[],"parent_linked":1}'),
(102, 'name', 19, 'field', 'Nimi', 0, '0000-00-00 00:00:00', '2014-04-14 08:22:35', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 4, 0, '', 1, -2, 0, 0, 0, 1, 0, 57, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"text","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[],"parent_linked":1}'),
(103, 'password', 19, 'password', 'Parool', 0, '0000-00-00 00:00:00', '2014-04-14 08:22:35', 192, 'admin', '2014-04-03 06:36:49', 192, 0, 0, '', 0, 0, 5, 0, '', 1, -2, 0, 0, 0, 1, 0, 58, '{"maxlength":"255","strength_meter":"0","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[],"parent_linked":1}'),
(104, 'email', 19, 'field', 'E-mail', 0, '0000-00-00 00:00:00', '2014-04-14 08:22:35', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 6, 0, '', 1, -2, 0, 0, 0, 1, 0, 59, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"text","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[],"parent_linked":1}'),
(105, 'block', 19, 'yesno', 'Blokeeritud', 0, '0000-00-00 00:00:00', '2014-04-14 08:22:35', 192, 'admin', '2014-04-14 08:27:37', 192, 0, 0, '', 1, 0, 7, 0, '', 1, -2, 0, 0, 0, 1, 0, 0, '{"yesno_default":"0","options_per_row":"4","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}');
INSERT INTO `j8sdv_fabrik_elements` (`id`, `name`, `group_id`, `plugin`, `label`, `checked_out`, `checked_out_time`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `width`, `height`, `default`, `hidden`, `eval`, `ordering`, `show_in_list_summary`, `filter_type`, `filter_exact_match`, `published`, `link_to_detail`, `primary_key`, `auto_increment`, `access`, `use_in_page_title`, `parent_id`, `params`) VALUES
(106, 'user_group', 19, 'databasejoin', 'Kasutajagrupp', 0, '0000-00-00 00:00:00', '2014-04-14 08:22:35', 192, 'admin', '2014-04-14 08:27:19', 192, 0, 0, '2', 1, 0, 8, 0, '', 1, -2, 0, 0, 0, 1, 0, 0, '{"database_join_display_type":"dropdown","join_conn_id":"1","join_db_name":"j8sdv_usergroups","join_key_column":"id","join_val_column":"title","join_val_column_concat":"","database_join_where_sql":"id = 2 or id= 10 or id=11","database_join_where_access":"1","database_join_where_when":"3","database_join_join_sql":"","database_join_show_please_select":"1","database_join_noselectionvalue":"","database_join_noselectionlabel":"","databasejoin_popupform":"","fabrikdatabasejoin_frontend_add":"0","join_popupwidth":"","databasejoin_readonly_link":"0","fabrikdatabasejoin_frontend_select":"0","dbjoin_options_per_row":"4","dbjoin_multilist_size":"6","dbjoin_autocomplete_size":"20","bootstrap_class":"input-large","dabase_join_label_eval":"","join_desc_column":"","dbjoin_autocomplete_how":"contains","clean_concat":"0","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(107, 'school', 20, 'databasejoin', 'Valige kool', 0, '0000-00-00 00:00:00', '2014-04-14 08:22:35', 192, 'admin', '2014-04-14 08:41:16', 192, 0, 0, '', 0, 0, 9, 0, '', 1, -2, 0, 0, 0, 1, 0, 0, '{"database_join_display_type":"dropdown","join_conn_id":"1","join_db_name":"koolid","join_key_column":"id","join_val_column":"koolinimi","join_val_column_concat":"","database_join_where_sql":"","database_join_where_access":"1","database_join_where_when":"3","database_join_join_sql":"","database_join_show_please_select":"1","database_join_noselectionvalue":"","database_join_noselectionlabel":"","databasejoin_popupform":"1","fabrikdatabasejoin_frontend_add":"0","join_popupwidth":"","databasejoin_readonly_link":"0","fabrikdatabasejoin_frontend_select":"0","dbjoin_options_per_row":"4","dbjoin_multilist_size":"6","dbjoin_autocomplete_size":"20","bootstrap_class":"input-large","dabase_join_label_eval":"","join_desc_column":"","dbjoin_autocomplete_how":"contains","clean_concat":"0","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(108, 'user_id', 19, 'field', 'user id', 0, '0000-00-00 00:00:00', '2014-04-14 08:22:35', 192, 'admin', '2014-04-14 08:26:51', 192, 0, 0, '', 1, 0, 10, 0, '', 1, -2, 0, 0, 0, 1, 0, 0, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"1","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"integer","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(109, 'id', 20, 'internalid', 'id', 0, '0000-00-00 00:00:00', '2014-04-14 08:41:55', 192, 'admin', '0000-00-00 00:00:00', 0, 3, 0, '', 1, 0, 0, 1, NULL, NULL, -2, 1, 1, 1, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":255,"text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(110, 'parent_id', 20, 'field', 'parent_id', 0, '0000-00-00 00:00:00', '2014-04-14 08:41:55', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 1, 0, 0, 1, NULL, NULL, -2, 1, 0, 0, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":255,"text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(114, 'id', 22, 'internalid', 'id', 0, '0000-00-00 00:00:00', '2014-04-14 12:32:33', 192, 'admin', '0000-00-00 00:00:00', 0, 3, 0, '', 1, 0, 1, 0, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":255,"text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(115, 'date_time', 22, 'date', 'date time', 0, '0000-00-00 00:00:00', '2014-04-14 12:32:33', 192, 'admin', '2014-04-24 09:18:27', 192, 0, 0, '', 1, 0, 2, 0, '', 1, 1, 1, 0, 0, 1, 0, 0, '{"bootstrap_class":"input-medium","date_showtime":"0","date_time_format":"H:i","bootstrap_time_class":"input-medium","date_store_as_local":"1","date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_defaulttotoday":"1","date_alwaystoday":"0","date_firstday":"1","date_allow_typing_in_field":"1","date_csv_offset_tz":"0","date_advanced":"0","date_allow_func":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"5","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"5","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"5","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"5","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(116, 'nimi', 22, 'field', 'Broneeringu nimi', 0, '0000-00-00 00:00:00', '2014-04-14 12:34:24', 192, 'admin', '2014-04-25 02:26:50', 192, 0, 0, '', 0, 0, 4, 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"text","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(117, 'aeg', 22, 'dropdown', 'Aeg', 0, '0000-00-00 00:00:00', '2014-04-14 12:47:41', 192, 'admin', '2014-04-25 00:07:47', 192, 0, 0, '', 0, 0, 5, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"sub_options":{"sub_values":[""],"sub_labels":[""]},"multiple":"0","dropdown_multisize":"3","allow_frontend_addtodropdown":"0","dd-allowadd-onlylabel":"0","dd-savenewadditions":"0","options_split_str":"","dropdown_populate":"$user = JFactory::getUser();\\r\\n$user_id = $user->id;\\r\\n$db = JFactory::getDbo();\\r\\n$query = $db->getQuery(true);\\r\\n \\r\\n$query=\\"SELECT * FROM kasutajad WHERE user_id=\\".$user_id;\\r\\n \\r\\n$db->setQuery($query);\\r\\n \\r\\n$row = $db->LoadObject();\\r\\n$kool = $row->school;\\r\\n\\r\\n$db2 = JFactory::getDbo();\\r\\n$query2 = $db2->getQuery(true);\\r\\n \\r\\n$query2=\\"SELECT * FROM registreeritud WHERE kooli_id=\\".$kool;\\r\\n$db2->setQuery($query2);\\r\\n \\r\\n$row2 = $db2->LoadObject();\\r\\n$reg_id = $row2->id;\\r\\n\\r\\n$db3 = JFactory::getDbo();\\r\\n$query3 = $db3->getQuery(true);\\r\\n \\r\\n$query3=\\"SELECT * FROM registreeritud_5_repeat WHERE parent_id=\\".$reg_id;\\r\\n$db3->setQuery($query3);\\r\\n \\r\\n$rows = $db3->loadObjectList();\\r\\nforeach($rows as $row3){\\r\\n  $options[] = JHTML::_(''select.option'', $row3->id, $row3->tunnialgus.'' - ''.$row3->tunnilopp ); \\r\\n}\\r\\nreturn $options;\\r\\n","bootstrap_class":"input-large","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(118, 'kasutaja', 22, 'field', 'kasutaja', 0, '0000-00-00 00:00:00', '2014-04-14 13:06:09', 192, 'admin', '2014-04-25 01:50:07', 192, 0, 0, '$user = JFactory::getUser();\r\nreturn $user->id;', 1, 1, 7, 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"1","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"integer","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(119, 'kool', 22, 'field', 'kool', 0, '0000-00-00 00:00:00', '2014-04-14 13:11:21', 192, 'admin', '2014-04-25 00:11:27', 192, 0, 0, '$user = JFactory::getUser();\r\n$user_id = $user->id;\r\n$db = JFactory::getDbo();\r\n$query = $db->getQuery(true);\r\n \r\n$query="SELECT * FROM kasutajad WHERE user_id=".$user_id;\r\n \r\n$db->setQuery($query);\r\n \r\n$row = $db->LoadObject();\r\n$kool = $row->school;\r\n\r\n$db2 = JFactory::getDbo();\r\n$query2 = $db2->getQuery(true);\r\n \r\n$query2="SELECT * FROM registreeritud WHERE kooli_id=".$kool;\r\n$db2->setQuery($query2);\r\n \r\n$row2 = $db2->LoadObject();\r\n$reg_id = $row2->id;\r\n\r\nreturn $reg_id;\r\n\r\n', 1, 1, 8, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"1","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"integer","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(120, 'klass', 22, 'dropdown', 'Klass', 0, '0000-00-00 00:00:00', '2014-04-14 14:02:01', 192, 'admin', '2014-04-21 00:40:41', 192, 0, 0, '', 0, 0, 9, 0, 'dropdown', 1, 1, 0, 0, 0, 1, 0, 0, '{"sub_options":{"sub_values":[""],"sub_labels":[""]},"multiple":"0","dropdown_multisize":"3","allow_frontend_addtodropdown":"0","dd-allowadd-onlylabel":"0","dd-savenewadditions":"0","options_split_str":"","dropdown_populate":"$user = JFactory::getUser();\\r\\n$user_id = $user->id;\\r\\n$db = JFactory::getDbo();\\r\\n$query = $db->getQuery(true);\\r\\n \\r\\n$query=\\"SELECT * FROM kasutajad WHERE user_id=\\".$user_id;\\r\\n \\r\\n$db->setQuery($query);\\r\\n \\r\\n$row = $db->LoadObject();\\r\\n$kool = $row->school;\\r\\n\\r\\n$db2 = JFactory::getDbo();\\r\\n$query2 = $db2->getQuery(true);\\r\\n \\r\\n$query2=\\"SELECT * FROM registreeritud WHERE kooli_id=\\".$kool;\\r\\n$db2->setQuery($query2);\\r\\n \\r\\n$row2 = $db2->LoadObject();\\r\\n$reg_id = $row2->id;\\r\\n\\r\\n$db3 = JFactory::getDbo();\\r\\n$query3 = $db3->getQuery(true);\\r\\n \\r\\n$query3=\\"SELECT * FROM registreeritud_6_repeat WHERE parent_id=\\".$reg_id;\\r\\n$db3->setQuery($query3);\\r\\n \\r\\n$rows = $db3->loadObjectList();\\r\\nforeach($rows as $row3){\\r\\n  $options[] = JHTML::_(''select.option'', $row3->id, $row3->klassinimi ); \\r\\n}\\r\\nreturn $options;\\r\\n","bootstrap_class":"input-medium","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"2","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(121, 'kuupaev', 22, 'date', 'Kuupäev', 0, '0000-00-00 00:00:00', '2014-04-14 14:05:09', 192, 'admin', '2014-04-25 00:09:25', 192, 0, 0, '', 0, 0, 6, 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"bootstrap_class":"input-medium","date_showtime":"0","date_time_format":"H:i:s","bootstrap_time_class":"input-medium","date_store_as_local":"1","date_table_format":"d-m-Y","date_form_format":"d-m-Y","date_defaulttotoday":"0","date_alwaystoday":"0","date_firstday":"1","date_allow_typing_in_field":"1","date_csv_offset_tz":"0","date_advanced":"0","date_allow_func":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(122, 'kuupaev_lopp', 22, 'date', 'Lõpp', 0, '0000-00-00 00:00:00', '2014-04-14 14:17:28', 192, 'admin', '2014-04-21 01:41:39', 192, 0, 0, '', 1, 1, 10, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"bootstrap_class":"input-medium","date_showtime":"0","date_time_format":"H:i:s","bootstrap_time_class":"input-medium","date_store_as_local":"1","date_table_format":"d-m-Y","date_form_format":"d-m-Y","date_defaulttotoday":"0","date_alwaystoday":"0","date_firstday":"1","date_allow_typing_in_field":"1","date_csv_offset_tz":"0","date_advanced":"0","date_allow_func":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(123, 'tunninr', 5, 'field', 'aaa', 0, '0000-00-00 00:00:00', '2014-04-21 03:34:06', 192, 'admin', '2014-04-21 05:01:30', 192, 0, 0, 'return $this->data[''registreeritud_5_repeat___id''];', 0, 1, 5, 0, '', 1, -2, 0, 0, 0, 1, 0, 0, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"text","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(124, 'pikaajaline', 22, 'yesno', 'Pikaajaline broneering', 0, '0000-00-00 00:00:00', '2014-04-23 10:29:03', 192, 'admin', '2014-04-23 13:14:58', 192, 0, 0, '', 0, 0, 11, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"yesno_default":"0","options_per_row":"4","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(125, 'kasutajagrupp', 22, 'field', 'kasutajagrupp', 0, '0000-00-00 00:00:00', '2014-04-23 10:53:57', 192, 'admin', '2014-05-04 05:16:52', 192, 0, 0, '$user = JFactory::getUser();\r\n$user_id = $user->id;\r\n$db = JFactory::getDbo();\r\n$query = $db->getQuery(true);\r\n \r\n$query="SELECT * FROM j8sdv_user_usergroup_map WHERE user_id=".$user_id;\r\n \r\n$db->setQuery($query);\r\n \r\n$row = $db->LoadObject();\r\nreturn $row->group_id;', 1, 1, 12, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"1","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"text","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(126, 'periood', 22, 'dropdown', 'Periood', 0, '0000-00-00 00:00:00', '2014-04-23 12:00:29', 192, 'admin', '2014-05-04 05:17:14', 192, 0, 0, '0', 0, 0, 13, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"sub_options":{"sub_values":[""],"sub_labels":[""]},"multiple":"0","dropdown_multisize":"3","allow_frontend_addtodropdown":"0","dd-allowadd-onlylabel":"0","dd-savenewadditions":"0","options_split_str":"","dropdown_populate":"$user = JFactory::getUser();\\r\\n$user_id = $user->id;\\r\\n$db = JFactory::getDbo();\\r\\n$query = $db->getQuery(true);\\r\\n \\r\\n$query=\\"SELECT * FROM kasutajad WHERE user_id=\\".$user_id;\\r\\n \\r\\n$db->setQuery($query);\\r\\n$row = $db->LoadObject();\\r\\n$kool = $row->school;\\r\\n\\r\\n\\r\\n$query2 = $db->getQuery(true);\\r\\n \\r\\n$query2=\\"SELECT * FROM registreeritud WHERE kooli_id=\\".$kool;\\r\\n$db->setQuery($query2);\\r\\n \\r\\n$row2 = $db->LoadObject();\\r\\n$reg_id = $row2->id;\\r\\n\\r\\n$query3 = $db->getQuery(true);\\r\\n \\r\\n$query3=\\"SELECT * FROM registreeritud_18_repeat WHERE parent_id=\\".$reg_id.\\" AND aktiivne=1\\";\\r\\n$db->setQuery($query3);\\r\\n \\r\\n$rows = $db->loadObjectList();\\r\\nforeach($rows as $row3){\\r\\n  $options[] = JHTML::_(''select.option'', $row3->id, $row3->perioodinimi.'': ''.$row3->alguskp.'' - ''.$row3->loppkp); \\r\\n}\\r\\nreturn $options;\\r\\n","bootstrap_class":"input-large","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(127, 'markused', 22, 'textarea', 'Märkused', 0, '0000-00-00 00:00:00', '2014-04-24 23:54:31', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 14, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"bootstrap_class":"input-medium","width":"40","height":"6","textarea_showlabel":"1","textarea_placeholder":"","use_wysiwyg":"0","wysiwyg_extra_buttons":"1","textarea-showmax":"0","textarea-maxlength":"255","textarea_limit_type":"char","textarea-tagify":"0","textarea_tagifyurl":"","textarea-truncate":"0","textarea-hover":"1","textarea_hover_location":"top","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(128, 'oppeaine', 22, 'dropdown', 'Õppeaine', 0, '0000-00-00 00:00:00', '2014-04-25 00:01:07', 192, 'admin', '2014-05-04 05:16:18', 192, 0, 0, '', 0, 0, 3, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"sub_options":{"sub_values":["eesti keel","kirjandus","inglise keel","matemaatika","geograafia","bioloogia","keemia","f\\u00fc\\u00fcsika","ajalugu","\\u00fchiskonna\\u00f5petus","muusika","kunst","t\\u00f6\\u00f6\\u00f5petus","kehaline kasvatus"],"sub_labels":["eesti keel","kirjandus","inglised keel","matemaatika","geograafia","bioloogia","keemia","f\\u00fc\\u00fcsika","ajalugu","\\u00fchiskonna\\u00f5petus","muusika","kunst","t\\u00f6\\u00f6\\u00f5petus","kehaline kasvatus"]},"multiple":"0","dropdown_multisize":"3","allow_frontend_addtodropdown":"0","dd-allowadd-onlylabel":"0","dd-savenewadditions":"0","options_split_str":"","dropdown_populate":"","bootstrap_class":"input-medium","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(129, 'aktiivne', 18, 'yesno', 'aktiivne', 0, '0000-00-00 00:00:00', '2014-04-25 00:15:00', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 6, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"yesno_default":"0","options_per_row":"4","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(130, 'kooli_id', 23, 'databasejoin', 'Valige kool', 0, '0000-00-00 00:00:00', '2014-04-25 05:04:25', 192, 'admin', '2014-04-25 06:09:39', 192, 0, 0, '', 0, 0, 1, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"database_join_display_type":"dropdown","join_conn_id":"1","join_db_name":"koolid","join_key_column":"id","join_val_column":"koolinimi","join_val_column_concat":"","database_join_where_sql":"","database_join_where_access":"1","database_join_where_when":"3","database_join_join_sql":"","database_join_show_please_select":"1","database_join_noselectionvalue":"","database_join_noselectionlabel":"","databasejoin_popupform":"1","fabrikdatabasejoin_frontend_add":"0","join_popupwidth":"","databasejoin_readonly_link":"0","fabrikdatabasejoin_frontend_select":"0","dbjoin_options_per_row":"4","dbjoin_multilist_size":"6","dbjoin_autocomplete_size":"20","bootstrap_class":"input-medium","dabase_join_label_eval":"","join_desc_column":"","dbjoin_autocomplete_how":"contains","clean_concat":"0","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","notempty-message":[""],"notempty-validation_condition":[""],"tip_text":[""],"validations":{"plugin":["notempty"],"plugin_published":["1"],"validate_in":["both"],"validation_on":["both"],"show_icon":["1"]}}'),
(131, 'id', 24, 'internalid', 'id', 0, '0000-00-00 00:00:00', '2014-04-25 05:08:01', 192, 'admin', '0000-00-00 00:00:00', 0, 11, 6, '', 0, 0, 1, 0, NULL, NULL, 1, 0, 0, 0, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":"11","text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(132, 'parent_id', 24, 'field', 'parent id', 0, '0000-00-00 00:00:00', '2014-04-25 05:08:01', 192, 'admin', '2014-04-25 05:41:06', 192, 30, 6, '', 1, 0, 2, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"integer","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"7","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"7","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"7","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"7","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(133, 'tunnialgus', 24, 'time', 'Tunni algus', 0, '0000-00-00 00:00:00', '2014-04-25 05:08:01', 192, 'admin', '2014-04-25 06:04:23', 192, 30, 6, '', 0, 0, 3, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"time_hourlabel":"Tund","time_minlabel":"Minut","time_seclabel":"Sekund","list_time_format":"H:i","details_time_format":"H:i","minutes_increment":"5","time_separatorlabel":":","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"7","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"7","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"7","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"7","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}');
INSERT INTO `j8sdv_fabrik_elements` (`id`, `name`, `group_id`, `plugin`, `label`, `checked_out`, `checked_out_time`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `width`, `height`, `default`, `hidden`, `eval`, `ordering`, `show_in_list_summary`, `filter_type`, `filter_exact_match`, `published`, `link_to_detail`, `primary_key`, `auto_increment`, `access`, `use_in_page_title`, `parent_id`, `params`) VALUES
(134, 'tunnilopp', 24, 'time', 'Tunni lõpp', 0, '0000-00-00 00:00:00', '2014-04-25 05:08:01', 192, 'admin', '2014-04-25 06:04:03', 192, 30, 6, '', 0, 0, 4, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"time_hourlabel":"Tund","time_minlabel":"Minut","time_seclabel":"","list_time_format":"H:i","details_time_format":"H:i","minutes_increment":"5","time_separatorlabel":":","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"7","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"7","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"7","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"7","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(135, 'tunninr', 24, 'field', 'tunninr', 0, '0000-00-00 00:00:00', '2014-04-25 05:08:01', 192, 'admin', '0000-00-00 00:00:00', 0, 30, 6, '', 0, 0, 5, 0, NULL, NULL, -2, 0, 0, 0, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":"255","text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(136, 'id', 25, 'internalid', 'id', 0, '0000-00-00 00:00:00', '2014-04-25 05:19:14', 192, 'admin', '0000-00-00 00:00:00', 0, 11, 6, '', 0, 0, 1, 0, NULL, NULL, 1, 0, 0, 0, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":"11","text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(137, 'parent_id', 25, 'field', 'parent id', 0, '0000-00-00 00:00:00', '2014-04-25 05:19:14', 192, 'admin', '2014-04-25 05:43:31', 192, 30, 6, '', 1, 0, 2, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"integer","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"7","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"7","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"7","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"7","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(138, 'klassinimi', 25, 'field', 'klassinimi', 0, '0000-00-00 00:00:00', '2014-04-25 05:19:14', 192, 'admin', '0000-00-00 00:00:00', 0, 30, 6, '', 0, 0, 3, 0, NULL, NULL, 1, 0, 0, 0, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":"255","text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(139, 'kohtadearv', 25, 'field', 'Kohtade arv', 0, '0000-00-00 00:00:00', '2014-04-25 05:19:14', 192, 'admin', '2014-04-25 05:57:01', 192, 30, 6, '', 0, 0, 4, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"integer","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"7","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"7","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"7","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"7","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(140, 'id', 26, 'internalid', 'id', 0, '0000-00-00 00:00:00', '2014-04-25 05:25:20', 192, 'admin', '0000-00-00 00:00:00', 0, 11, 6, '', 0, 0, 1, 0, NULL, NULL, 1, 0, 0, 0, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":"11","text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(141, 'parent_id', 26, 'field', 'parent id', 0, '0000-00-00 00:00:00', '2014-04-25 05:25:20', 192, 'admin', '2014-04-25 05:43:49', 192, 30, 6, '', 1, 0, 2, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"placeholder":"","password":"0","maxlength":"255","disable":"0","readonly":"0","autocomplete":"1","speech":"0","bootstrap_class":"input-medium","text_format":"integer","integer_length":"11","decimal_length":"2","field_use_number_format":"0","field_thousand_sep":",","field_decimal_sep":".","text_format_string":"","text_input_mask":"","render_as_qrcode":"0","guess_linktype":"0","link_target_options":"default","rel":"","link_title":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"7","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"7","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"7","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"7","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(142, 'perioodinimi', 26, 'field', 'perioodinimi', 0, '0000-00-00 00:00:00', '2014-04-25 05:25:20', 192, 'admin', '0000-00-00 00:00:00', 0, 30, 6, '', 0, 0, 3, 0, NULL, NULL, 1, 0, 0, 0, 1, 0, 0, '{"rollover":"","comment":"","sub_default_value":"","sub_default_label":"","element_before_label":1,"allow_frontend_addtocheckbox":0,"database_join_display_type":"dropdown","joinType":"simple","join_conn_id":-1,"date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_showtime":0,"date_time_format":"H:i","date_defaulttotoday":1,"date_firstday":0,"multiple":0,"allow_frontend_addtodropdown":0,"password":0,"maxlength":"255","text_format":"text","integer_length":6,"decimal_length":2,"guess_linktype":0,"disable":0,"readonly":0,"ul_max_file_size":16000,"ul_email_file":0,"ul_file_increment":0,"upload_allow_folderselect":1,"fu_fancy_upload":0,"upload_delete_image":1,"make_link":0,"fu_show_image_in_table":0,"image_library":"gd2","make_thumbnail":0,"imagepath":"\\/","selectImage_root_folder":"\\/","image_front_end_select":0,"show_image_in_table":0,"image_float":"none","link_target":"_self","radio_element_before_label":0,"options_per_row":4,"ck_options_per_row":4,"allow_frontend_addtoradio":0,"use_wysiwyg":0,"my_table_data":"id","update_on_edit":0,"view_access":1,"show_in_rss_feed":0,"show_label_in_rss_feed":0,"icon_folder":-1,"use_as_row_class":0,"filter_access":1,"full_words_only":0,"inc_in_adv_search":1,"sum_on":0,"sum_access":0,"avg_on":0,"avg_access":0,"median_on":0,"median_access":0,"count_on":0,"count_access":0}'),
(143, 'alguskp', 26, 'date', 'Perioodi algus', 0, '0000-00-00 00:00:00', '2014-04-25 05:25:20', 192, 'admin', '2014-04-25 05:49:09', 192, 10, 6, '', 0, 0, 4, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"bootstrap_class":"input-medium","date_showtime":"1","date_time_format":"H:i","bootstrap_time_class":"input-medium","date_store_as_local":"0","date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_defaulttotoday":"1","date_alwaystoday":"0","date_firstday":"0","date_allow_typing_in_field":"1","date_csv_offset_tz":"0","date_advanced":"0","date_allow_func":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"7","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"7","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"7","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"7","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(144, 'loppkp', 26, 'date', 'Perioodi lõpp', 0, '0000-00-00 00:00:00', '2014-04-25 05:25:20', 192, 'admin', '2014-04-25 05:49:37', 192, 10, 6, '', 0, 0, 5, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"bootstrap_class":"input-medium","date_showtime":"1","date_time_format":"H:i","bootstrap_time_class":"input-medium","date_store_as_local":"0","date_table_format":"Y-m-d","date_form_format":"Y-m-d H:i:s","date_defaulttotoday":"1","date_alwaystoday":"0","date_firstday":"0","date_allow_typing_in_field":"1","date_csv_offset_tz":"0","date_advanced":"0","date_allow_func":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"7","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"7","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"7","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"7","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(145, 'aktiivne', 26, 'yesno', 'aktiivne', 0, '0000-00-00 00:00:00', '2014-04-25 05:25:20', 192, 'admin', '2014-04-25 05:44:27', 192, 30, 6, '', 0, 0, 6, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"yesno_default":"0","options_per_row":"4","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"7","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"7","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"7","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"7","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(146, 'id', 4, 'internalid', 'id', 0, '0000-00-00 00:00:00', '2014-04-25 06:33:18', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 2, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(147, 'id', 23, 'internalid', 'id', 0, '0000-00-00 00:00:00', '2014-04-25 06:33:18', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 0, 0, 2, 0, '', 1, 1, 0, 0, 0, 1, 0, 146, '{"show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(148, 'date_time', 4, 'date', 'date_time', 0, '0000-00-00 00:00:00', '2014-04-25 06:34:20', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 1, 0, 3, 0, '', 1, 1, 0, 0, 0, 1, 0, 0, '{"bootstrap_class":"input-medium","date_showtime":"0","date_time_format":"H:i","bootstrap_time_class":"input-medium","date_store_as_local":"0","date_table_format":"Y-m-d","date_form_format":"Y-m-d","date_defaulttotoday":"1","date_alwaystoday":"0","date_firstday":"0","date_allow_typing_in_field":"1","date_csv_offset_tz":"0","date_advanced":"0","date_allow_func":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}'),
(149, 'date_time', 23, 'date', 'date_time', 0, '0000-00-00 00:00:00', '2014-04-25 06:34:20', 192, 'admin', '0000-00-00 00:00:00', 0, 0, 0, '', 1, 0, 3, 0, '', 1, 1, 0, 0, 0, 1, 0, 148, '{"bootstrap_class":"input-medium","date_showtime":"0","date_time_format":"H:i","bootstrap_time_class":"input-medium","date_store_as_local":"0","date_table_format":"Y-m-d","date_form_format":"Y-m-d","date_defaulttotoday":"1","date_alwaystoday":"0","date_firstday":"0","date_allow_typing_in_field":"1","date_csv_offset_tz":"0","date_advanced":"0","date_allow_func":"","show_in_rss_feed":"0","show_label_in_rss_feed":"0","use_as_rss_enclosure":"0","rollover":"","tipseval":"0","tiplocation":"top-left","labelindetails":"1","labelinlist":"0","comment":"","edit_access":"1","view_access":"1","view_access_user":"","list_view_access":"1","encrypt":"0","can_order":"0","alt_list_heading":"","custom_link":"","custom_link_indetails":"1","use_as_row_class":"0","include_in_list_query":"1","always_render":"0","icon_folder":"0","icon_hovertext":"1","icon_file":"","filter_length":"20","filter_access":"1","full_words_only":"0","filter_required":"0","filter_build_method":"0","filter_groupby":"text","inc_in_adv_search":"1","filter_class":"input-medium","tablecss_header_class":"","tablecss_header":"","tablecss_cell_class":"","tablecss_cell":"","sum_on":"0","sum_label":"Sum","sum_access":"1","sum_split":"","avg_on":"0","avg_label":"Average","avg_access":"1","avg_round":"0","avg_split":"","median_on":"0","median_label":"Median","median_access":"1","median_split":"","count_on":"0","count_label":"Count","count_condition":"","count_access":"1","count_split":"","custom_calc_on":"0","custom_calc_label":"Custom","custom_calc_query":"","custom_calc_access":"1","custom_calc_split":"","custom_calc_php":"","validations":[]}');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_fabrik_formgroup`
--

CREATE TABLE IF NOT EXISTS `j8sdv_fabrik_formgroup` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `form_id` int(4) NOT NULL,
  `group_id` int(4) NOT NULL,
  `ordering` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_fabrik_formgroup`
--

INSERT INTO `j8sdv_fabrik_formgroup` (`id`, `form_id`, `group_id`, `ordering`) VALUES
(1, 1, 1, 1),
(4, 4, 4, 1),
(5, 4, 5, 3),
(6, 4, 6, 4),
(13, 8, 13, 1),
(16, 11, 16, 1),
(18, 4, 18, 2),
(19, 13, 19, 1),
(20, 13, 20, 2),
(22, 14, 22, 1),
(23, 15, 23, 1),
(24, 15, 24, 2),
(25, 15, 25, 3),
(26, 15, 26, 4);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_fabrik_forms`
--

CREATE TABLE IF NOT EXISTS `j8sdv_fabrik_forms` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `record_in_database` int(4) NOT NULL,
  `error` varchar(150) NOT NULL,
  `intro` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_alias` varchar(100) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset_button_label` varchar(100) NOT NULL,
  `submit_button_label` varchar(100) NOT NULL,
  `form_template` varchar(255) DEFAULT NULL,
  `view_only_template` varchar(255) DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_fabrik_forms`
--

INSERT INTO `j8sdv_fabrik_forms` (`id`, `label`, `record_in_database`, `error`, `intro`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `reset_button_label`, `submit_button_label`, `form_template`, `view_only_template`, `published`, `private`, `params`) VALUES
(1, 'Koolid', 1, 'Some parts of your form have not been correctly filled in', '', '2014-02-23 09:42:40', 192, 'admin', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Save', 'bootstrap', 'bootstrap', 1, 0, '{"outro":"","reset_button":"0","reset_button_label":"Reset","reset_icon":"","reset_icon_location":"before","copy_button":"0","copy_button_label":"Save as copy","copy_icon":"","copy_icon_location":"before","goback_button":"0","goback_button_label":"Go back","goback_icon":"","goback_icon_location":"before","apply_button":"0","apply_button_label":"Apply","apply_icon":"","apply_icon_location":"before","delete_button":"0","delete_button_label":"Delete","delete_icon":"","delete_icon_location":"before","submit_button":"1","submit_button_label":"Save","save_icon":"","save_icon_location":"before","submit_on_enter":"0","labels_above":"0","labels_above_details":"0","pdf_template":"admin","pdf_orientation":"portrait","pdf_size":"letter","show_title":"1","print":"","email":"","pdf":"","admin_form_template":"","admin_details_template":"","note":"","show_referring_table_releated_data":"0","tiplocation":"tip","process_jplugins":"2","cck_category":"","ajax_validations":"0","submit_success_msg":"","suppress_msgs":"0","show_loader_on_submit":"0","spoof_check":"1","multipage_save":"0"}'),
(4, 'Kooli registreerimine', 1, '', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Reset', 'Save', '', '', 1, 0, '{"outro":"","copy_button":"0","copy_button_label":"Save as copy","copy_icon":"","copy_icon_location":"before","reset_button":"0","reset_button_label":"Reset","reset_icon":"","reset_icon_location":"before","apply_button":"0","apply_button_label":"Apply","apply_icon":"","apply_icon_location":"before","goback_button":"0","goback_button_label":"Go back","goback_icon":"","goback_icon_location":"before","submit_button":"1","submit_button_label":"Save","save_icon":"","save_icon_location":"before","submit_on_enter":"0","delete_button":"0","delete_button_label":"Delete","delete_icon":"","delete_icon_location":"before","ajax_validations":"0","submit-success-msg":"","suppress_msgs":"0","show_loader_on_submit":"0","spoof_check":"1","multipage_save":"0","note":"","labels_above":"0","labels_above_details":"0","pdf_template":"","pdf_orientation":"portrait","pdf_size":"letter","admin_form_template":"","admin_details_template":"","show-title":"1","print":"","email":"","pdf":"","show-referring-table-releated-data":"0","tiplocation":"tip","process-jplugins":"2","cck_category":"2","plugins":[],"plugin_locations":[],"plugin_events":[]}'),
(8, 'Registreerimine', 1, '', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Reset', 'Save', '', '', 1, 0, '{"outro":"","copy_button":"0","copy_button_label":"Save as copy","copy_icon":"","copy_icon_location":"before","reset_button":"0","reset_button_label":"Reset","reset_icon":"","reset_icon_location":"before","apply_button":"0","apply_button_label":"Apply","apply_icon":"","apply_icon_location":"before","goback_button":"0","goback_button_label":"Go back","goback_icon":"","goback_icon_location":"before","submit_button":"1","submit_button_label":"Save","save_icon":"","save_icon_location":"before","submit_on_enter":"0","delete_button":"0","delete_button_label":"Delete","delete_icon":"","delete_icon_location":"before","ajax_validations":"0","submit-success-msg":"","suppress_msgs":"0","show_loader_on_submit":"0","spoof_check":"1","multipage_save":"0","note":"","labels_above":"0","labels_above_details":"0","pdf_template":"","pdf_orientation":"portrait","pdf_size":"letter","admin_form_template":"","admin_details_template":"","show-title":"1","print":"","email":"","pdf":"","show-referring-table-releated-data":"0","tiplocation":"tip","process-jplugins":"2","cck_category":"2","plugin_state":["1","1"],"juser_field_name":["57"],"juser_field_username":["56"],"juser_field_password":["58"],"juser_field_email":["59"],"juser_field_block":["60"],"juser_field_userid":["72"],"juser_field_usertype":["61"],"juser_bypass_activation":["0"],"juser_bypass_registration":["1"],"juser_bypass_accountdetails":["0"],"juser_use_email_plugin":["0"],"juser_field_default_group":["2"],"juser_conditon":[""],"juser_delete_user":["0"],"juser_auto_login":["0"],"synchro_users":["0"],"juser_sync_on_edit":["0"],"only_process_curl":{"1":"onAfterProcess"},"form_php_file":{"1":"-1"},"form_php_require_once":{"1":"0"},"curl_code":{"1":"$email = $this->data[''kasutajad___email''];\\r\\n$username = $this->data[''kasutajad___username''];\\r\\n$id = $this->data[''kasutajad___id''];\\r\\n\\r\\n$db = JFactory::getDbo();\\r\\n \\r\\n$query = $db->getQuery(true);\\r\\n \\r\\n$query=\\"select * from j8sdv_users where email =\\"''.$email.''\\" AND username =\\"''.$username'';\\r\\n \\r\\n$db->setQuery($query);\\r\\n \\r\\n$row = $db->LoadObject();\\r\\n\\r\\n$user_id = $row->id;\\r\\n\\r\\n\\r\\n$query = $db->getQuery(true);\\r\\n\\r\\n\\r\\n$query=\\"UPDATE kasutajad SET user_id=\\".$user_id.\\" WHERE id=\\".$id;\\r\\n  \\r\\n   \\r\\n$db->setQuery($query);\\r\\n\\r\\n$found = (int) $db->execute();\\r\\n\\r\\n\\r\\n\\r\\n"},"plugins":["juser","php"],"plugin_locations":["both","both"],"plugin_events":["both","both"]}'),
(11, 'Kasutajad', 1, 'Some parts of your form have not been correctly filled in', '', '2014-04-08 13:05:37', 192, 'admin', '0000-00-00 00:00:00', 0, 192, '2014-05-02 19:19:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Reset', 'Save', 'bootstrap', 'bootstrap', 1, 0, '{"outro":"","copy_button":"0","copy_button_label":"Save as copy","copy_icon":"","copy_icon_location":"before","reset_button":"0","reset_button_label":"Reset","reset_icon":"","reset_icon_location":"before","apply_button":"0","apply_button_label":"Apply","apply_icon":"","apply_icon_location":"before","goback_button":"0","goback_button_label":"Go back","goback_icon":"","goback_icon_location":"before","submit_button":"1","submit_button_label":"Save","save_icon":"","save_icon_location":"before","submit_on_enter":"0","delete_button":"0","delete_button_label":"Delete","delete_icon":"","delete_icon_location":"before","ajax_validations":"0","submit-success-msg":"","suppress_msgs":"0","show_loader_on_submit":"0","spoof_check":"1","multipage_save":"0","note":"","labels_above":"0","labels_above_details":"0","pdf_template":"","pdf_orientation":"portrait","pdf_size":"letter","admin_form_template":"","admin_details_template":"","show-title":"1","print":"","email":"","pdf":"","show-referring-table-releated-data":"0","tiplocation":"tip","process-jplugins":"2","cck_category":"2","plugin_state":["1","1"],"juser_field_name":["77"],"juser_field_username":["76"],"juser_field_password":["78"],"juser_field_email":["79"],"juser_field_block":["80"],"juser_field_userid":["83"],"juser_field_usertype":[""],"juser_bypass_activation":["0"],"juser_bypass_registration":["1"],"juser_bypass_accountdetails":["0"],"juser_use_email_plugin":["0"],"juser_field_default_group":["2"],"juser_conditon":[""],"juser_delete_user":["0"],"juser_auto_login":["0"],"synchro_users":["0"],"juser_sync_on_edit":["0"],"only_process_curl":{"1":"onAfterProcess"},"form_php_file":{"1":"-1"},"form_php_require_once":{"1":"0"},"curl_code":{"1":"$userid = $formModel->getElementData(''kasutajad___user_id'', true);\\r\\n$gid = $formModel->getElementData(''kasutajad___user_group'', true);\\r\\nforeach ($gid as $val){\\r\\nif (!empty($userid) && !empty($val)) {\\r\\n   \\/\\/JUserHelper::addUserToGroup($userid, $val); \\r\\n  $db = JFactory::getDbo();\\r\\n  $query = $db->getQuery(true);\\r\\n \\r\\n$query=\\"UPDATE j8sdv_user_usergroup_map SET group_id=\\".$val.\\" WHERE user_id=\\".$userid;\\r\\n \\r\\n$db->setQuery($query);\\r\\n \\r\\n\\/\\/ Run the query\\r\\n$found = (int) $db->execute();\\r\\n}else{\\r\\n   throw new RuntimeException(\\"error\\");\\r\\n}\\r\\n}"},"plugins":["juser","php"],"plugin_locations":["both","both"],"plugin_events":["both","edit"]}'),
(13, 'Profiil', 1, 'Some parts of your form have not been correctly filled in', '', '2014-04-14 08:22:35', 192, 'admin', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Reset', 'Save', 'bootstrap', 'bootstrap', -2, 0, '{"outro":"","copy_button":"0","copy_button_label":"Save as copy","copy_icon":"","copy_icon_location":"before","reset_button":"0","reset_button_label":"Reset","reset_icon":"","reset_icon_location":"before","apply_button":"0","apply_button_label":"Apply","apply_icon":"","apply_icon_location":"before","goback_button":"0","goback_button_label":"Go back","goback_icon":"","goback_icon_location":"before","submit_button":"1","submit_button_label":"Save","save_icon":"","save_icon_location":"before","submit_on_enter":"0","delete_button":"0","delete_button_label":"Delete","delete_icon":"","delete_icon_location":"before","ajax_validations":"0","submit-success-msg":"","suppress_msgs":"0","show_loader_on_submit":"0","spoof_check":"1","multipage_save":"0","note":"","labels_above":"0","labels_above_details":"0","pdf_template":"","pdf_orientation":"portrait","pdf_size":"letter","admin_form_template":"","admin_details_template":"","show-title":"1","print":"","email":"","pdf":"","show-referring-table-releated-data":"0","tiplocation":"tip","process-jplugins":"2","cck_category":"2","plugin_state":["1"],"juser_field_name":["102"],"juser_field_username":["101"],"juser_field_password":["103"],"juser_field_email":["104"],"juser_field_block":["105"],"juser_field_userid":["108"],"juser_field_usertype":["106"],"juser_bypass_activation":["0"],"juser_bypass_registration":["1"],"juser_bypass_accountdetails":["0"],"juser_use_email_plugin":["0"],"juser_field_default_group":["1"],"juser_conditon":[""],"juser_delete_user":["0"],"juser_auto_login":["0"],"synchro_users":["0"],"juser_sync_on_edit":["0"],"plugins":["juser"],"plugin_locations":["both"],"plugin_events":["both"]}'),
(14, 'Klassi broneerimine', 1, 'Some parts of your form have not been correctly filled in', '', '2014-05-24 15:32:33', 192, 'admin', '0000-00-00 00:00:00', 0, 192, '2014-05-04 06:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Reset', 'Save', 'bootstrap', 'bootstrap', 1, 0, '{"outro":"","copy_button":"0","copy_button_label":"Save as copy","copy_icon":"","copy_icon_location":"before","reset_button":"0","reset_button_label":"Reset","reset_icon":"","reset_icon_location":"before","apply_button":"0","apply_button_label":"Apply","apply_icon":"","apply_icon_location":"before","goback_button":"0","goback_button_label":"Go back","goback_icon":"","goback_icon_location":"before","submit_button":"1","submit_button_label":"Save","save_icon":"","save_icon_location":"before","submit_on_enter":"0","delete_button":"0","delete_button_label":"Delete","delete_icon":"","delete_icon_location":"before","ajax_validations":"0","submit-success-msg":"","suppress_msgs":"0","show_loader_on_submit":"0","spoof_check":"0","multipage_save":"0","note":"","labels_above":"0","labels_above_details":"0","pdf_template":"","pdf_orientation":"portrait","pdf_size":"letter","admin_form_template":"","admin_details_template":"","show-title":"1","print":"","email":"","pdf":"","show-referring-table-releated-data":"0","tiplocation":"tip","process-jplugins":"2","cck_category":"2","plugin_state":["1","1","1"],"only_process_curl":["onAfterProcess","onLoad","onBeforeProcess"],"form_php_file":["-1","-1","-1"],"form_php_require_once":["0","0","0"],"curl_code":["$id = $this->data[''broneeringud___id''];\\r\\n$date_time = $this->data[''broneeringud___date_time''];\\r\\n$kp = $this->data[''broneeringud___kuupaev''];\\r\\n$kool = $this->data[''broneeringud___kool''];\\r\\n$aeg = $this->data[''broneeringud___aeg_raw''][0];\\r\\n$klass = $this->data[''broneeringud___klass_raw''][0];\\r\\n$kasutaja = $this->data[''broneeringud___kasutaja''];\\r\\n$periood_id = $this->data[''broneeringud___periood_raw''][0];\\r\\n$ajavahemik = $this->data[''broneeringud___aeg''];\\r\\n$pikaajaline = $this->data[''broneeringud___pikaajaline''];\\r\\n$oppeaine = $this->data[''broneeringud___oppeaine''];\\r\\n$markused = $this->data[''broneeringud___markused''];\\r\\n\\r\\n$db = JFactory::getDbo();\\r\\n\\r\\n$ajad = explode(\\" - \\", $ajavahemik);\\r\\n$esimene = $ajad[0];\\r\\n$teine = $ajad[1];\\r\\n$algusajad = explode(\\":\\", $esimene);\\r\\n$loppajad = explode(\\":\\", $teine);\\r\\n$algus1 = $algusajad[0];\\r\\n$algus2 = $algusajad[1];\\r\\n$lopp1 = $loppajad[0];\\r\\n$lopp2 = $loppajad[1];\\r\\n$kuupaev = explode(\\"-\\", $kp);\\r\\n\\r\\n$alguskp = date(\\"Y-m-d H:i:s\\", mktime($algus1, $algus2, 0, $kuupaev[1], $kuupaev[0], $kuupaev[2]));\\r\\n$loppkp = date(\\"Y-m-d H:i:s\\", mktime($lopp1, $lopp2, 0, $kuupaev[1], $kuupaev[0], $kuupaev[2]));\\r\\n$confirmation = md5(uniqid(rand(), true));\\r\\n\\r\\n\\r\\n\\/\\/ KONFLIKTI EMAILI SAATMINE\\r\\n\\r\\n$query2 = $db->getQuery(true);\\r\\n\\/\\/$query=\\"SELECT * FROM broneeringud WHERE kool=\\".$kool.\\" AND aeg=''\\".$aeg.\\"'' AND klass=''\\".$klass.\\"'' AND kuupaev=''\\".$alguskp.\\"'' AND id NOT IN (\\".$id.\\")\\";\\r\\n$query2 = ''SELECT * FROM broneeringud WHERE kool=''.$kool.'' AND aeg=\\"''.$aeg.''\\" AND klass=\\"''.$klass.''\\" AND kuupaev=\\"''.$alguskp.''\\" AND id NOT IN (''.$id.'')'';\\r\\n$db->setQuery($query2);\\r\\n$row = $db->LoadObject(); \\r\\n$total = $db->loadResult();\\r\\nif ($total > 0)\\r\\n  { \\r\\n  \\r\\n    $mailer = JFactory::getMailer();\\r\\n    $config = JFactory::getConfig();\\r\\n    $sender = $config->get(''mailfrom'');\\r\\n    $mailer->setSender($sender);\\r\\n    $user = JFactory::getUser($row->kasutaja);\\r\\n    $recipient = $user->email;\\r\\n    \\r\\n   \\/* $query = $db->getQuery(true);\\r\\n    $query=\\"UPDATE broneeringud SET staatus=1 WHERE id IN (\\".$id.\\", \\".$row->id.\\")\\";\\r\\n    $db->setQuery($query);\\r\\n    $found = (int) $db->execute();\\r\\n    *\\/\\r\\n    $acceptlink=\\"http:\\/\\/broneering.bl.ee\\/index.php\\/klassi-broneerimine\\/form\\/14?action=accept&id=\\".$row->id.\\"&confirmation=\\".$row->kinnitus;\\r\\n    $declinelink=\\"http:\\/\\/broneering.bl.ee\\/index.php\\/klassi-broneerimine\\/form\\/14?action=decline&id=\\".$id.\\"&confirmation=\\".$confirmation;\\r\\n    $user2 = JFactory::getUser($kasutaja);\\r\\n    \\r\\n    $mailer->addRecipient($recipient);\\r\\n    $body   = \\"\\u00d5petaja \\".$user2->name.\\"(\\".$user2->email.\\") soovib broneerida klassi: \\".$klass.\\"\\\\n N\\u00f5ustu: \\".$acceptlink.\\"\\\\n Keeldu: \\".$declinelink;\\r\\n\\r\\n    $mailer->setSubject(''Broneeringu konflikt'');\\r\\n    $mailer->setBody($body);\\r\\n    $send = $mailer->Send();\\r\\n    \\r\\n  }\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n$query = $db->getQuery(true);\\r\\n\\/\\/$test= ''SELECT * FROM broneeringud WHERE kool=''.$kool.'' AND aeg=\\"''.$aeg.''\\" AND klass=\\"''.$klass.''\\" AND kuupaev=\\"''.$alguskp.''\\" AND id NOT IN (''.$id.'')'';\\r\\n$query=\\"UPDATE broneeringud SET kuupaev=''\\".$alguskp.\\"'',kuupaev_lopp=''\\".$loppkp.\\"'',kinnitus=''\\".$confirmation.\\"'' WHERE id=\\".$id;\\r\\n\\r\\n$db->setQuery($query);\\r\\n$found = (int) $db->execute();\\r\\n\\r\\n\\r\\n$query = $db->getQuery(true);\\r\\n$query=\\"SELECT * FROM samaaegsed WHERE alguskp =''\\".$alguskp.\\"'' AND klass_id=\\".$klass.\\" AND kool_id=\\".$kool;\\r\\n$db->setQuery($query);\\r\\n$row = $db->LoadObject();\\r\\n$total = $db->loadResult();\\r\\nif($total > 0){\\r\\n    $ids= explode(\\" \\", $row->broneeringu_id);\\r\\n    if(!in_array($id, $ids)){\\r\\n        $db = JFactory::getDbo();\\r\\n        $query = $db->getQuery(true);\\r\\n        $kogus = $row->kogus;\\r\\n        $kogus = $kogus + 1;\\r\\n        $broneeringu_id = $row->broneeringu_id;\\r\\n        $stringid = strval($id);\\r\\n        $broneeringu_id .= \\" \\".$stringid;\\r\\n        $query=\\"UPDATE samaaegsed SET broneeringu_id=''\\".$broneeringu_id.\\"'' ,kogus=\\".$kogus.\\" WHERE id=\\".$row->id;\\r\\n        $db->setQuery($query);\\r\\n        $found = (int) $db->execute();\\r\\n    }\\r\\n}else{\\r\\n\\r\\n$db = JFactory::getDbo();\\r\\n$query = $db->getQuery(true);\\r\\n$query=\\"INSERT INTO samaaegsed (alguskp, broneeringu_id, kogus, kool_id, klass_id) values (''\\".$alguskp.\\"'', ''\\".$id.\\"'', 1, \\".$kool.\\", \\".$klass.\\")\\";\\r\\n$db->setQuery($query);\\r\\n \\r\\ntry {\\r\\n\\r\\n  $result = $db->execute();\\r\\n}\\r\\ncatch (Exception $e) {\\r\\n \\r\\n}\\r\\n$newid = (int)$db->insertid(); \\/\\/get new record id\\r\\n}\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\/\\/ PIKAAJALINE BRONEERING\\r\\nif($pikaajaline == \\"Jah\\"){\\r\\n  $db = JFactory::getDbo();\\r\\n  $query = $db->getQuery(true);\\r\\n \\r\\n  $query=\\"SELECT * FROM registreeritud_18_repeat WHERE id =\\".$periood_id;\\r\\n  $db->setQuery($query);\\r\\n  $row = $db->LoadObject();\\r\\n  $periood_algus = new DateTime($row->alguskp);\\r\\n  $periood_lopp = new DateTime($row->loppkp);\\r\\n  \\r\\n\\r\\n  \\r\\n  $nimi = $this->data[''broneeringud___nimi''];\\r\\n  $kasutaja = $this->data[''broneeringud___kasutaja''];\\r\\n  $kasutajagrupp = $this->data[''broneeringud___kasutajagrupp''];\\r\\n  \\r\\n\\r\\n  \\r\\n  $current_date_algus = new DateTime($alguskp);\\r\\n  $current_date_lopp = new DateTime($loppkp);\\r\\n  \\r\\n  if($current_date_algus < $periood_lopp){\\r\\n  \\r\\n  $addweek_algus = $current_date_algus->format(''Y-m-d H:i:s'');\\r\\n  list($algus_kp, $algus_aeg) = explode('' '',$addweek_algus);\\r\\n  list($year,$month,$day) = explode(''-'',$algus_kp);\\r\\n  list($hour,$minute,$second) = explode('':'',$algus_aeg);\\r\\n  $current_algus_addweek = date(''Y-m-d H:i:s'',mktime($hour,$minute,$second,$month,$day+7,$year));\\r\\n  $current_addweek = new DateTime($current_algus_addweek);\\r\\n  \\r\\n\\r\\n\\r\\n  $columns=\\"\\";\\r\\n  $columns = \\"(date_time, nimi, aeg, kasutaja, kool, klass, kuupaev, kuupaev_lopp, pikaajaline, kasutajagrupp, periood, markused, oppeaine, kinnitus, staatus)\\";\\r\\n\\r\\n  if($current_date_algus < $periood_algus){\\r\\n    while($current_date_algus < $periood_algus){\\r\\n      $current_date_algus = $current_date_algus->modify(''+1 week'');\\r\\n      $current_date_lopp = $current_date_lopp->modify(''+1 week'');\\r\\n    }\\r\\n  }\\r\\n  $algusedArray=array();\\r\\n  $loppudArray=array();\\r\\n  \\r\\n  \\r\\n    while ($current_date_algus < $periood_lopp AND $current_addweek < $periood_lopp){\\r\\n   \\r\\n  \\r\\n      $current_date_algus = $current_date_algus->modify(''+1 week'');\\r\\n      \\r\\n      \\r\\n      $addweek_algus = $current_date_algus->format(''Y-m-d H:i:s'');\\r\\n      list($algus_kp, $algus_aeg) = explode('' '',$addweek_algus);\\r\\n      list($year,$month,$day) = explode(''-'',$algus_kp);\\r\\n      list($hour,$minute,$second) = explode('':'',$algus_aeg);\\r\\n      $current_algus_addweek = date(''Y-m-d H:i:s'',mktime($hour,$minute,$second,$month,$day+7,$year));\\r\\n      $current_addweek = new DateTime($current_algus_addweek);\\r\\n     \\r\\n      $current_date_lopp = $current_date_lopp->modify(''+1 week'');\\r\\n      $algused=$current_date_algus->format(''Y-m-d H:i:s'');\\r\\n      $loppud=$current_date_lopp->format(''Y-m-d H:i:s'');\\r\\n      $algusedArray[] = $current_date_algus->format(''Y-m-d H:i:s'');\\r\\n      $loppudArray[] = $current_date_lopp->format(''Y-m-d H:i:s'');\\r\\n      $confirmation = md5(uniqid(rand(), true));\\r\\n      \\r\\n      \\r\\n      $query = $db->getQuery(true);\\r\\n      $values = \\"(''$date_time'', ''$nimi'' , $aeg, $kasutaja, $kool, $klass, ''$algused'', ''$loppud'', 1, 13, $periood_id, ''$markused'',''$oppeaine'', ''$confirmation'', 0)\\";\\r\\n      $query=\\"INSERT INTO broneeringud\\".$columns.\\" VALUES \\".$values;\\r\\n      $db->setQuery($query);\\r\\n      try {\\r\\n        $result = $db->execute();\\r\\n      }\\r\\n      catch (Exception $e) {\\r\\n      \\r\\n       \\r\\n      }\\r\\n      $newid = (int)$db->insertid(); \\r\\n      \\r\\n      $query = $db->getQuery(true);\\r\\n      $query = \\"SELECT * FROM broneeringud WHERE id=\\".$newid;\\r\\n      $db->setQuery($query);\\r\\n      $result = $db->LoadObject();\\r\\n      $query = $db->getQuery(true);\\r\\n      $query = ''SELECT * FROM broneeringud WHERE kool=''.$result->kool.'' AND aeg=\\"''.$result->aeg.''\\" AND klass=\\"''.$result->klass.''\\" AND kuupaev=\\"''.$result->kuupaev.''\\" AND id NOT IN (''.$newid.'')'';\\r\\n      $db->setQuery($query);\\r\\n      $row = $db->LoadObject(); \\r\\n      $total = $db->loadResult();\\r\\n      if ($total > 0)\\r\\n      { \\r\\n          \\r\\n          $query = $db->getQuery(true);\\r\\n          $query=\\"UPDATE test2 SET nimi=''\\".$oppeaine.\\"'' WHERE id=1\\";\\r\\n          $db->setQuery($query);\\r\\n          $found = (int) $db->execute();\\r\\n          $mailer = JFactory::getMailer();\\r\\n          $config = JFactory::getConfig();\\r\\n          $sender = $config->get(''mailfrom'');\\r\\n          $mailer->setSender($sender);\\r\\n          $user = JFactory::getUser($row->kasutaja);\\r\\n          $recipient = $user->email;\\r\\n          \\r\\n         \\/* $query = $db->getQuery(true);\\r\\n          $query=\\"UPDATE broneeringud SET staatus=1 WHERE id IN (\\".$id.\\", \\".$row->id.\\")\\";\\r\\n          $db->setQuery($query);\\r\\n          $found = (int) $db->execute();\\r\\n          *\\/\\r\\n          $acceptlink=\\"http:\\/\\/broneering.bl.ee\\/index.php\\/klassi-broneerimine\\/form\\/14?action=accept&id=\\".$row->id.\\"&confirmation=\\".$row->kinnitus;\\r\\n          $declinelink=\\"http:\\/\\/broneering.bl.ee\\/index.php\\/klassi-broneerimine\\/form\\/14?action=decline&id=\\".$newid.\\"&confirmation=\\".$result->kinnitus;\\r\\n          $user2 = JFactory::getUser($kasutaja);\\r\\n          \\r\\n          $mailer->addRecipient($recipient);\\r\\n          $body   = \\"\\u00d5petaja \\".$user2->name.\\"(\\".$user2->email.\\") soovib broneerida klassi: \\".$klass.\\"\\\\n N\\u00f5ustu: \\".$acceptlink.\\"\\\\n Keeldu: \\".$declinelink;\\r\\n      \\r\\n          $mailer->setSubject(''Broneeringu konflikt'');\\r\\n          $mailer->setBody($body);\\r\\n          $send = $mailer->Send();\\r\\n          \\r\\n      }\\r\\n      \\r\\n      \\r\\n      \\r\\n      \\r\\n      \\r\\n      }\\r\\n    \\r\\n  \\r\\n   \\r\\n  \\r\\n\\r\\n  \\/*$values = \\"\\";\\r\\n  for($i=0; $i<sizeof($algused); $i++){\\r\\n    $values .= \\"(''$date_time'', ''$nimi'' , $aeg, $kasutaja, $kool, $klass, ''$algused[$i]'', ''$loppud[$i]'', 1, 13, $periood_id, ''$markused'',''$oppeaine'', ''$confirmation[$i]'', 0)\\";\\r\\n    if((sizeof($algused)-$i)!=1){\\r\\n      $values .= \\",\\";\\r\\n    }\\r\\n  }\\r\\n\\r\\n  $query = $db->getQuery(true);\\r\\n  $query=\\"INSERT INTO broneeringud\\".$columns.\\" VALUES \\".$values;\\r\\n  \\r\\n  \\r\\n  \\r\\n  $db->setQuery($query);\\r\\n  try {\\r\\n    $result = $db->execute();\\r\\n  }\\r\\n  catch (Exception $e) {\\r\\n  \\r\\n   \\r\\n  }\\r\\n  $newid = (int)$db->insertid(); \\r\\n  *\\/\\r\\n  \\r\\n  $query = $db->getQuery(true);\\r\\n  $query=\\"SELECT * FROM broneeringud WHERE kuupaev  IN (''\\".implode(\\"'',''\\",$algusedArray).\\"'')\\";\\r\\n  $db->setQuery($query);\\r\\n  $rows = $db->loadObjectList();\\r\\n  foreach($rows as $row){\\r\\n    $query = $db->getQuery(true);\\r\\n    $query=\\"SELECT * FROM samaaegsed WHERE alguskp =''\\".$row->kuupaev.\\"'' AND kool_id=\\".$row->kool.\\" AND klass_id=\\".$row->klass;\\r\\n    $db->setQuery($query);\\r\\n    $result = $db->LoadObject();\\r\\n    $total = $db->loadResult();\\r\\n    if($total > 0){\\r\\n\\r\\n      $ids= explode(\\" \\", $result->broneeringu_id);\\r\\n      if(!in_array($row->id, $ids)){\\r\\n        $query = $db->getQuery(true);\\r\\n        $kogus = $result->kogus;\\r\\n        $kogus = $kogus + 1;\\r\\n        $broneeringu_id = $result->broneeringu_id;\\r\\n        $stringid = strval($row->id);\\r\\n        $broneeringu_id .= \\" \\".$stringid;\\r\\n        $query=\\"UPDATE samaaegsed SET broneeringu_id=''\\".$broneeringu_id.\\"'' ,kogus=\\".$kogus.\\" WHERE id=\\".$result->id;\\r\\n        $db->setQuery($query);\\r\\n        $found = (int) $db->execute();\\r\\n      }\\r\\n    \\r\\n  \\r\\n    }else{\\r\\n\\r\\n      $query = $db->getQuery(true);\\r\\n      $query=\\"INSERT INTO samaaegsed (alguskp, broneeringu_id, kogus, kool_id, klass_id) values (''\\".$row->kuupaev.\\"'', ''\\".$row->id.\\"'', 1, \\".$row->kool.\\", \\".$row->klass.\\")\\";\\r\\n      $db->setQuery($query);\\r\\n \\r\\n      try {\\r\\n\\r\\n      $result2 = $db->execute();\\r\\n      }\\r\\n      catch (Exception $e) {\\r\\n       \\r\\n      }\\r\\n      $newid = (int)$db->insertid();\\r\\n    }\\r\\n  }\\r\\n  }\\r\\n}\\r\\n","$jinput = JFactory::getApplication()->input;\\r\\n$action = $jinput->get(''action'');\\r\\n$id = $jinput->get(''id'');\\r\\n$confirmation = $jinput->get(''confirmation'');\\r\\n$user = JFactory::getUser();\\r\\n\\r\\n$db = JFactory::getDbo();\\r\\n\\r\\n\\r\\nif($action == \\"accept\\"){\\r\\n  $query = $db->getQuery(true);\\r\\n  $query=\\"SELECT * FROM broneeringud WHERE id =\\".$id;\\r\\n  $db->setQuery($query);\\r\\n  $row = $db->LoadObject();\\r\\n  if($confirmation == $row->kinnitus && $user->id == $row->kasutaja){\\r\\n  $columns=\\"\\";\\r\\n  $columns = \\"(date_time, nimi, aeg, kasutaja, kool, klass, kuupaev, kuupaev_lopp, pikaajaline, kasutajagrupp, periood, markused, oppeaine, kinnitus, staatus, broneeringu_id)\\";\\r\\n  $values = \\"(''$row->date_time'', ''$row->nimi'' , $row->aeg, $row->kasutaja, $row->kool, $row->klass, ''$row->kuupaev'', ''$row->kuupaev_lopp'', $row->pikaajaline, $row->kasutajagrupp, $row->periood, ''$row->markused'', ''$row->oppeaine'', ''$row->kinnitus'', $row->staatus, $row->id)\\";\\r\\n  $query = $db->getQuery(true);\\r\\n  $query=\\"INSERT INTO kustutatud\\".$columns.\\" VALUES \\".$values;\\r\\n  $db->setQuery($query);\\r\\n  try {\\r\\n    $result = $db->execute();\\r\\n  }\\r\\n  catch (Exception $e) {\\r\\n  \\r\\n   \\r\\n  }\\r\\n  $newid = (int)$db->insertid(); \\r\\n  \\/\\/ BRONEERINGU KUSTUTAMINE\\r\\n\\r\\n  $query = $db->getQuery(true);\\r\\n \\r\\n  $query=\\"DELETE FROM broneeringud WHERE id=\\".$id;\\r\\n  $db->setQuery($query);\\r\\n  $found = (int) $db->execute();\\r\\n  \\r\\n  \\/\\/ SAMAAEGSUSE KUSTUTAMINE\\r\\n  $query = $db->getQuery(true);\\r\\n  $query=\\"SELECT * FROM samaaegsed WHERE alguskp =''\\".$row->kuupaev.\\"'' AND kool_id=\\".$row->kool.\\" AND klass_id=\\".$row->klass;\\r\\n  $db->setQuery($query);\\r\\n  $result = $db->LoadObject();\\r\\n  $ids= explode(\\" \\", $result->broneeringu_id);\\r\\n  $index = array_search(strval($row->id),$ids);\\r\\n  if($index !== FALSE){\\r\\n      unset($ids[$index]);\\r\\n  }\\r\\n  $broneeringu_id = implode(\\" \\", $ids);\\r\\n  $kogus = $result->kogus;\\r\\n  $kogus = $kogus - 1;\\r\\n  $query = $db->getQuery(true);\\r\\n  $query=\\"UPDATE samaaegsed SET broneeringu_id=''\\".$broneeringu_id.\\"'' ,kogus=\\".$kogus.\\" WHERE id=\\".$result->id;\\r\\n  $db->setQuery($query);\\r\\n  $found = (int) $db->execute();\\r\\n  \\/\\/ VORMI ESITAMINE KOOS ANDMETEGA\\r\\n  $formModel->getForm()->intro = \\"Sorry, that''s not going to work.\\";\\r\\n  $formModel->data[''broneeringud___nimi''] = $row->nimi;\\r\\n  $formModel->data[''broneeringud___aeg''] = $row->aeg;\\r\\n  $formModel->data[''broneeringud___klass''] = $row->klass;\\r\\n  $formModel->data[''broneeringud___kuupaev''] = $row->kuupaev;\\r\\n  $formModel->data[''broneeringud___markused''] = $row->markused;\\r\\n  $formModel->data[''broneeringud___oppeaine''] = $row->oppeaine;\\r\\n \\r\\n}\\r\\n}\\r\\nif($action == \\"decline\\"){\\r\\n  $query = $db->getQuery(true);\\r\\n  $query=\\"SELECT * FROM broneeringud WHERE id =\\".$id;\\r\\n  $db->setQuery($query);\\r\\n  $row = $db->LoadObject();\\r\\n  if($confirmation == $row->kinnitus){\\r\\n    $columns=\\"\\";\\r\\n    $columns = \\"(date_time, nimi, aeg, kasutaja, kool, klass, kuupaev, kuupaev_lopp, pikaajaline, kasutajagrupp, periood, markused,       oppeaine, kinnitus, staatus, broneeringu_id)\\";\\r\\n    $values = \\"(''$row->date_time'', ''$row->nimi'' , $row->aeg, $row->kasutaja, $row->kool, $row->klass, ''$row->kuupaev'', ''$row->kuupaev_lopp'', $row->pikaajaline, $row->kasutajagrupp, $row->periood, ''$row->markused'', ''$row->oppeaine'', ''$row->kinnitus'', $row->staatus, $row->id)\\";\\r\\n  $query = $db->getQuery(true);\\r\\n  $query=\\"INSERT INTO kustutatud\\".$columns.\\" VALUES \\".$values;\\r\\n  $db->setQuery($query);\\r\\n  try {\\r\\n    $result = $db->execute();\\r\\n  }\\r\\n  catch (Exception $e) {\\r\\n   \\r\\n  }\\r\\n  $newid = (int)$db->insertid(); \\r\\n  \\/\\/ BRONEERINGU KUSTUTAMINE\\r\\n  $query = $db->getQuery(true);\\r\\n \\r\\n  $query=\\"DELETE FROM broneeringud WHERE id=\\".$id;\\r\\n  $db->setQuery($query);\\r\\n  $found = (int) $db->execute();\\r\\n    \\r\\n    \\/\\/EMAILI saatmine\\r\\n    $mailer = JFactory::getMailer();\\r\\n    $config = JFactory::getConfig();\\r\\n    $sender = $config->get(''mailfrom'');\\r\\n    $mailer->setSender($sender);\\r\\n    $user = JFactory::getUser($row->kasutaja);\\r\\n    $recipient = $user->email;\\r\\n    \\r\\n    $newlink=\\"http:\\/\\/broneering.bl.ee\\/index.php\\/klassi-broneerimine\\/form\\/14?action=new&id=\\".$newid;\\r\\n    \\r\\n    $mailer->addRecipient($recipient);\\r\\n    $body   = \\"Teie broneering l\\u00fckati tagasi.\\\\n Uuesti broneerimiseks: \\".$newlink;\\r\\n\\r\\n    $mailer->setSubject(''Broneeringu t\\u00fchistamine'');\\r\\n    $mailer->setBody($body);\\r\\n    $send = $mailer->Send();\\r\\n    \\/\\/SAMAAEGSUSE KUSTUTAMINE\\r\\n    $query = $db->getQuery(true);\\r\\n    $query=\\"SELECT * FROM samaaegsed WHERE alguskp =''\\".$row->kuupaev.\\"'' AND kool_id=\\".$row->kool.\\" AND klass_id=\\".$row->klass;\\r\\n    $db->setQuery($query);\\r\\n    $result = $db->LoadObject();\\r\\n    $ids= explode(\\" \\", $result->broneeringu_id);\\r\\n    $index = array_search(strval($row->id),$ids);\\r\\n    if($index !== FALSE){\\r\\n        unset($ids[$index]);\\r\\n    }\\r\\n    $broneeringu_id = implode(\\" \\", $ids);\\r\\n    $kogus = $result->kogus;\\r\\n    $kogus = $kogus - 1;\\r\\n    $query = $db->getQuery(true);\\r\\n    $query=\\"UPDATE samaaegsed SET broneeringu_id=''\\".$broneeringu_id.\\"'' ,kogus=\\".$kogus.\\" WHERE id=\\".$result->id;\\r\\n    $db->setQuery($query);\\r\\n    $found = (int) $db->execute();\\r\\n  }\\r\\n}\\r\\nif($action == \\"new\\"){\\r\\n    $query = $db->getQuery(true);\\r\\n    $query=\\"SELECT * FROM kustutatud WHERE id =\\".$id;\\r\\n    $db->setQuery($query);\\r\\n    $row = $db->LoadObject();\\r\\n    $formModel->getForm()->intro = \\"Uus broneering.\\";\\r\\n    $formModel->data[''broneeringud___nimi''] = $row->nimi;\\r\\n    $formModel->data[''broneeringud___aeg''] = $row->aeg;\\r\\n    $formModel->data[''broneeringud___klass''] = $row->klass;\\r\\n    $formModel->data[''broneeringud___kuupaev''] = $row->kuupaev;\\r\\n    $formModel->data[''broneeringud___markused''] = $row->markused;\\r\\n    $formModel->data[''broneeringud___oppeaine''] = $row->oppeaine;\\r\\n}\\r\\n\\r\\n","$kp = $formModel->formData[''broneeringud___kuupaev''];\\r\\n$periood_id = $formModel->formData[''broneeringud___periood_raw''][0];\\r\\n$pikaajaline = $formModel->formData[''broneeringud___pikaajaline''];\\r\\nif($pikaajaline == \\"Jah\\"){\\r\\n  $db = JFactory::getDbo();\\r\\n  $query = $db->getQuery(true);\\r\\n \\r\\n  $query=\\"SELECT * FROM registreeritud_18_repeat WHERE id =\\".$periood_id;\\r\\n  $db->setQuery($query);\\r\\n  $row = $db->LoadObject();\\r\\n  $periood_algus = new DateTime($row->alguskp);\\r\\n  $periood_lopp = new DateTime($row->loppkp);\\r\\n  $alguskp = new DateTime($kp);\\r\\n\\r\\nif($alguskp < $periood_algus || $alguskp > $periood_lopp){\\r\\n  $formModel->errors[''broneeringud___kuupaev''][] = ''Valitud kuup\\u00e4ev ei ole perioodi sees'';\\r\\n  return false;\\r\\n\\r\\n}\\r\\nreturn false;\\r\\n}\\r\\n"],"plugins":["php","php","php"],"plugin_locations":["both","both","both"],"plugin_events":["new","both","both"]}'),
(15, 'Kooli sätted', 1, 'Some parts of your form have not been correctly filled in', '', '2014-04-25 05:04:25', 192, 'admin', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Save', 'bootstrap', 'bootstrap', 1, 0, '{"outro":"","reset_button":"0","reset_button_label":"Reset","reset_icon":"","reset_icon_location":"before","copy_button":"0","copy_button_label":"Save as copy","copy_icon":"","copy_icon_location":"before","goback_button":"0","goback_button_label":"Go back","goback_icon":"","goback_icon_location":"before","apply_button":"0","apply_button_label":"Apply","apply_icon":"","apply_icon_location":"before","delete_button":"0","delete_button_label":"Delete","delete_icon":"","delete_icon_location":"before","submit_button":"1","submit_button_label":"Save","save_icon":"","save_icon_location":"before","submit_on_enter":"0","labels_above":"0","labels_above_details":"0","pdf_template":"admin","pdf_orientation":"portrait","pdf_size":"letter","show_title":"1","print":"","email":"","pdf":"","admin_form_template":"","admin_details_template":"","note":"","show_referring_table_releated_data":"0","tiplocation":"tip","process_jplugins":"2","cck_category":"","ajax_validations":"0","submit_success_msg":"","suppress_msgs":"0","show_loader_on_submit":"0","spoof_check":"1","multipage_save":"0"}');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_fabrik_form_sessions`
--

CREATE TABLE IF NOT EXISTS `j8sdv_fabrik_form_sessions` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `hash` varchar(255) NOT NULL,
  `user_id` int(6) NOT NULL,
  `form_id` int(6) NOT NULL,
  `row_id` int(10) NOT NULL,
  `last_page` int(4) NOT NULL,
  `referring_url` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `time_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_fabrik_groups`
--

CREATE TABLE IF NOT EXISTS `j8sdv_fabrik_groups` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `css` text NOT NULL,
  `label` varchar(100) NOT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_alias` varchar(100) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `is_join` int(1) NOT NULL DEFAULT '0',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_fabrik_groups`
--

INSERT INTO `j8sdv_fabrik_groups` (`id`, `name`, `css`, `label`, `published`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `is_join`, `private`, `params`) VALUES
(1, 'Koolid', '', 'Koolid', 1, '2014-02-23 09:42:40', 192, 'admin', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '{"repeat_group_button":0,"repeat_group_show_first":1}'),
(4, 'Kooli registreerimine', '', '', 1, '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, ''),
(5, 'tunniajad', '', 'Määrake tunniajad', 1, '2014-02-23 21:06:49', 192, 'admin', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 0, '{"split_page":"1","access":"7","intro":"","outro":"","repeat_group_button":1,"repeat_template":"repeatgroup","repeat_max":"12","repeat_min":"","repeat_add_access":"7","repeat_delete_access":"7","repeat_delete_access_user":"","repeat_copy_element_values":"0","group_columns":"3","group_column_widths":"","repeat_group_show_first":"1","random":"0"}'),
(6, 'Klassid', '', 'Määrake klassid', 1, '2014-02-26 11:53:23', 192, 'admin', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 0, '{"split_page":"1","access":"1","intro":"","outro":"","repeat_group_button":1,"repeat_template":"repeatgroup","repeat_max":"","repeat_min":"","repeat_add_access":"1","repeat_delete_access":"1","repeat_delete_access_user":"","repeat_copy_element_values":"0","group_columns":"2","group_column_widths":"","repeat_group_show_first":"1","random":"0"}'),
(13, 'Registreerimine', '', '', 1, '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, ''),
(14, 'Kasutajad', '', 'Kasutajad', -2, '2014-04-03 06:54:01', 192, 'admin', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '{"repeat_group_button":0,"repeat_group_show_first":1}'),
(15, 'Kasutajad', '', '', 1, '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, ''),
(16, 'Kasutajad', '', 'Kasutajad', 1, '2014-04-07 07:05:37', 192, 'admin', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '{"repeat_group_button":0,"repeat_group_show_first":1}'),
(18, 'õppeperiood', '', 'Määrake õppeperiood', 1, '2014-04-14 03:34:15', 192, 'admin', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 0, '{"split_page":"1","access":"7","intro":"","outro":"","repeat_group_button":"1","repeat_template":"repeatgroup","repeat_max":"","repeat_min":"","repeat_add_access":"1","repeat_delete_access":"1","repeat_delete_access_user":"","repeat_copy_element_values":"0","group_columns":"3","group_column_widths":"","repeat_group_show_first":"1","random":"0"}'),
(19, 'Profiil', '', 'Profiil', -2, '2014-04-14 08:22:35', 192, 'admin', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '{"repeat_group_button":0,"repeat_group_show_first":1}'),
(20, 'profiil_kool', '', 'Kool', -2, '2014-04-14 08:40:25', 192, 'admin', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 0, '{"split_page":"0","access":"2","intro":"","outro":"","repeat_group_button":"1","repeat_template":"repeatgroup","repeat_max":"","repeat_min":"","repeat_add_access":"1","repeat_delete_access":"1","repeat_delete_access_user":"","repeat_copy_element_values":"0","group_columns":"1","group_column_widths":"","repeat_group_show_first":"1","random":"0"}'),
(22, 'Klassi broneerimine', '', 'Klassi broneerimine', 1, '2014-04-14 12:32:33', 192, 'admin', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '{"repeat_group_button":0,"repeat_group_show_first":1}'),
(23, 'Kooli sätted', '', 'Kooli sätted', 1, '2014-04-25 05:04:25', 192, 'admin', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, 0, '{"repeat_group_button":0,"repeat_group_show_first":1}'),
(24, 'Kooli sätted- [registreeritud_5_repeat]', '', 'Tunniajad', 1, '2014-04-25 05:08:01', 192, 'admin', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 0, '{"split_page":"0","access":"1","intro":"","outro":"","repeat_group_button":1,"repeat_template":"repeatgroup","repeat_max":"","repeat_min":"","repeat_add_access":"1","repeat_delete_access":"1","repeat_delete_access_user":"","repeat_copy_element_values":"0","group_columns":"1","group_column_widths":"","repeat_group_show_first":"1","random":"0"}'),
(25, 'Kooli sätted- [registreeritud_6_repeat]', '', 'Klassid', 1, '2014-04-25 05:19:14', 192, 'admin', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 0, '{"split_page":"0","access":"1","intro":"","outro":"","repeat_group_button":1,"repeat_template":"repeatgroup","repeat_max":"","repeat_min":"","repeat_add_access":"1","repeat_delete_access":"1","repeat_delete_access_user":"","repeat_copy_element_values":"0","group_columns":"1","group_column_widths":"","repeat_group_show_first":"1","random":"0"}'),
(26, 'Kooli sätted- [registreeritud_18_repeat]', '', 'Periood', 1, '2014-04-25 05:25:20', 192, 'admin', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 1, 0, '{"split_page":"0","access":"1","intro":"","outro":"","repeat_group_button":1,"repeat_template":"repeatgroup","repeat_max":"","repeat_min":"","repeat_add_access":"1","repeat_delete_access":"1","repeat_delete_access_user":"","repeat_copy_element_values":"0","group_columns":"1","group_column_widths":"","repeat_group_show_first":"1","random":"0"}');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_fabrik_joins`
--

CREATE TABLE IF NOT EXISTS `j8sdv_fabrik_joins` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `list_id` int(6) NOT NULL,
  `element_id` int(6) NOT NULL,
  `join_from_table` varchar(255) NOT NULL,
  `table_join` varchar(255) NOT NULL,
  `table_key` varchar(255) NOT NULL,
  `table_join_key` varchar(255) NOT NULL,
  `join_type` varchar(255) NOT NULL,
  `group_id` int(10) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_fabrik_joins`
--

INSERT INTO `j8sdv_fabrik_joins` (`id`, `list_id`, `element_id`, `join_from_table`, `table_join`, `table_key`, `table_join_key`, `join_type`, `group_id`, `params`) VALUES
(1, 4, 0, 'registreeritud', 'registreeritud_5_repeat', 'id', 'parent_id', 'left', 5, '{"type":"group","pk":"`registreeritud_5_repeat`.`id`"}'),
(2, 4, 0, 'registreeritud', 'registreeritud_6_repeat', 'id', 'parent_id', 'left', 6, '{"type":"group","pk":"`registreeritud_6_repeat`.`id`"}'),
(7, 0, 45, '', 'j8sdv_usergroups', 'group_id', 'id', 'left', 10, '{"join-label":"title","type":"element","pk":"`j8sdv_usergroups`.`id`"}'),
(9, 0, 61, '', 'j8sdv_usergroups', 'user_group', 'id', 'left', 13, '{"join-label":"title","type":"element","pk":"`j8sdv_usergroups`.`id`"}'),
(10, 0, 62, '', 'koolid', 'school', 'id', 'left', 13, '{"join-label":"koolinimi","type":"element","pk":"`koolid`.`id`"}'),
(12, 0, 71, '', 'koolid', 'school', 'id', 'left', 14, '{"join-label":"koolinimi","type":"element","pk":"`koolid`.`id`"}'),
(14, 0, 70, '', 'j8sdv_usergroups', 'user_group', 'id', 'left', 14, '{"join-label":"title","type":"element","pk":"`j8sdv_usergroups`.`id`"}'),
(15, 0, 81, '', 'j8sdv_usergroups', 'user_group', 'id', 'left', 16, '{"join-label":"title","type":"element","pk":"`j8sdv_usergroups`.`id`"}'),
(16, 0, 82, '', 'koolid', 'school', 'id', 'left', 16, '{"join-label":"koolinimi","type":"element","pk":"`koolid`.`id`"}'),
(17, 4, 0, 'registreeritud', 'registreeritud_18_repeat', 'id', 'parent_id', 'left', 18, '{"type":"group","pk":"`registreeritud_18_repeat`.`id`"}'),
(18, 0, 91, '', 'registreeritud_6_repeat', 'klass', 'id', 'left', 17, '{"join-label":"klassinimi","type":"element","pk":"`registreeritud_6_repeat`.`id`"}'),
(19, 0, 106, '', 'j8sdv_usergroups', 'user_group', 'id', 'left', 19, '{"join-label":"title","type":"element","pk":"`j8sdv_usergroups`.`id`"}'),
(20, 0, 107, '', 'koolid', 'school', 'id', 'left', 20, '{"join-label":"koolinimi","type":"element","pk":"`koolid`.`id`"}'),
(21, 13, 0, 'kasutajad', 'kasutajad_20_repeat', 'id', 'parent_id', 'left', 20, '{"type":"group","pk":"`kasutajad_20_repeat`.`id`"}'),
(23, 0, 10, '', 'koolid', 'kooli_id', 'id', 'left', 4, '{"join-label":"koolinimi","type":"element","pk":"`koolid`.`id`"}'),
(25, 0, 130, '', 'koolid', 'kooli_id', 'id', 'left', 23, '{"join-label":"koolinimi","type":"element","pk":"`koolid`.`id`"}'),
(26, 15, 0, 'registreeritud', 'registreeritud_5_repeat', 'id', 'parent_id', 'left', 24, '{"pk":"`registreeritud_5_repeat`.`id`"}'),
(27, 15, 0, 'registreeritud', 'registreeritud_6_repeat', 'id', 'parent_id', 'left', 25, '{"pk":"`registreeritud_6_repeat`.`id`"}'),
(28, 15, 0, 'registreeritud', 'registreeritud_18_repeat', 'id', 'parent_id', 'left', 26, '{"pk":"`registreeritud_18_repeat`.`id`"}');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_fabrik_jsactions`
--

CREATE TABLE IF NOT EXISTS `j8sdv_fabrik_jsactions` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `element_id` int(10) NOT NULL,
  `action` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_fabrik_jsactions`
--

INSERT INTO `j8sdv_fabrik_jsactions` (`id`, `element_id`, `action`, `code`, `params`) VALUES
(24, 125, 'load', '', '{"js_e_event":"hide","js_e_trigger":"fabrik_trigger_element_broneeringud___pikaajaline","js_e_condition":"!=","js_e_value":"13","js_published":"1"}'),
(18, 124, 'load', '', '{"js_e_event":"hide","js_e_trigger":"fabrik_trigger_element_broneeringud___periood","js_e_condition":"==","js_e_value":"0","js_published":"1"}'),
(19, 124, 'click', '', '{"js_e_event":"show","js_e_trigger":"fabrik_trigger_element_broneeringud___periood","js_e_condition":"==","js_e_value":"1","js_published":"1"}'),
(20, 124, 'click', '', '{"js_e_event":"hide","js_e_trigger":"fabrik_trigger_element_broneeringud___periood","js_e_condition":"==","js_e_value":"0","js_published":"1"}');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_fabrik_lists`
--

CREATE TABLE IF NOT EXISTS `j8sdv_fabrik_lists` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `introduction` text NOT NULL,
  `form_id` int(4) NOT NULL,
  `db_table_name` varchar(255) NOT NULL,
  `db_primary_key` varchar(255) NOT NULL,
  `auto_inc` int(1) NOT NULL,
  `connection_id` int(6) NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(4) NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(4) NOT NULL,
  `checked_out` int(4) NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `access` int(4) NOT NULL,
  `hits` int(4) NOT NULL,
  `rows_per_page` int(5) NOT NULL,
  `template` varchar(255) NOT NULL,
  `order_by` varchar(255) NOT NULL,
  `order_dir` varchar(255) NOT NULL DEFAULT 'ASC',
  `filter_action` varchar(30) NOT NULL,
  `group_by` varchar(255) NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_fabrik_lists`
--

INSERT INTO `j8sdv_fabrik_lists` (`id`, `label`, `introduction`, `form_id`, `db_table_name`, `db_primary_key`, `auto_inc`, `connection_id`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `published`, `publish_up`, `publish_down`, `access`, `hits`, `rows_per_page`, `template`, `order_by`, `order_dir`, `filter_action`, `group_by`, `private`, `params`) VALUES
(1, 'Koolid', '', 1, 'koolid', 'koolid.id', 1, 1, '2014-02-23 09:42:40', 0, '', '2014-02-23 13:28:25', 192, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 10, 'bootstrap', '[""]', '["ASC"]', 'onchange', '', 0, '{"show-table-filters":"1","advanced-filter":"0","search-mode":"0","search-mode-advanced":"0","search_elements":"","list_search_elements":"null","search-all-label":"All","require-filter":"0","filter-dropdown-method":"0","toggle_cols":"0","list_filter_cols":"1","empty_data_msg":"","outro":"","list_ajax":"0","show-table-add":"1","show-table-nav":"1","show_displaynum":"1","showall-records":"0","show-total":"0","sef-slug":"","admin_template":"","show-title":"1","pdf":"","pdf_template":"","pdf_orientation":"portrait","pdf_size":"a4","bootstrap_stripped_class":"1","bootstrap_bordered_class":"0","bootstrap_condensed_class":"0","bootstrap_hover_class":"1","responsive_elements":"","responsive_class":"","list_responsive_elements":"null","tabs_field":"","tabs_max":"10","tabs_all":"1","list_ajax_links":"0","actionMethod":"default","detailurl":"","detaillabel":"","editurl":"","editlabel":"","checkboxLocation":"end","addurl":"","addlabel":"","popup_width":"","popup_height":"","popup_offset_x":"","popup_offset_y":"","note":"","alter_existing_db_cols":"default","process-jplugins":"1","enable_single_sorting":"default","collation":"utf8_estonian_ci","list_disable_caching":"1","group_by_access":"1","group_by_order":"","group_by_template":"","group_by_order_dir":"ASC","group_by_start_collapsed":"0","group_by_collapse_others":"0","prefilter_query":"","join-display":"default","delete-joined-rows":"0","show_related_add":"0","show_related_info":"0","rss":"0","feed_title":"","feed_date":"","feed_image_src":"","rsslimit":"150","rsslimitmax":"2500","csv_import_frontend":"3","csv_export_frontend":"2","csvfullname":"0","csv_export_step":"100","newline_csv_export":"nl2br","csv_custom_qs":"","csv_frontend_selection":"0","incfilters":"0","csv_format":"0","csv_which_elements":"selected","show_in_csv":"","csv_elements":"null","csv_include_data":"1","csv_include_raw_data":"1","csv_include_calculations":"0","csv_encoding":"","search_use":"0","search_title":"","search_description":"","search_date":"","search_link_type":"details","allow_view_details":"1","allow_edit_details":"1","allow_edit_details2":"","allow_add":"1","allow_delete":"2","allow_delete2":"","allow_drop":"3","isview":"0"}'),
(4, 'Kooli registreerimine', '', 4, 'registreeritud', 'registreeritud.id', 1, 1, '0000-00-00 00:00:00', 0, '', '2014-04-21 05:54:56', 192, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, 12, 0, 'bootstrap', '[""]', '["ASC"]', 'onchange', '', 0, '{"show-table-filters":"1","advanced-filter":"0","search-mode":"0","search-mode-advanced":"0","search_elements":"","list_search_elements":"null","search-all-label":"All","require-filter":"0","filter-dropdown-method":"0","toggle_cols":"0","list_filter_cols":"1","empty_data_msg":"No data found","outro":"","list_ajax":"0","show-table-add":"1","show-table-nav":"1","show_displaynum":"1","showall-records":"0","show-total":"0","sef-slug":"","admin_template":"","show-title":"1","pdf":"","pdf_template":"","pdf_orientation":"portrait","pdf_size":"a4","bootstrap_stripped_class":"1","bootstrap_bordered_class":"0","bootstrap_condensed_class":"0","bootstrap_hover_class":"1","responsive_elements":"","responsive_class":"","list_responsive_elements":"null","tabs_field":"","tabs_max":"10","tabs_all":"1","list_ajax_links":"0","actionMethod":"default","detailurl":"","detaillabel":"","editurl":"","editlabel":"","checkboxLocation":"end","addurl":"","addlabel":"","popup_width":"","popup_height":"","popup_offset_x":"","popup_offset_y":"","note":"","alter_existing_db_cols":"default","process-jplugins":"1","enable_single_sorting":"default","collation":"utf8_general_ci","list_disable_caching":"0","group_by_access":"1","group_by_order":"","group_by_template":"","group_by_order_dir":"ASC","group_by_start_collapsed":"0","group_by_collapse_others":"0","prefilter_query":"","join_id":["1","2","17"],"join_type":["left","left","left"],"join_from_table":["registreeritud","registreeritud","registreeritud"],"table_join":["registreeritud_5_repeat","registreeritud_6_repeat","registreeritud_18_repeat"],"table_key":["id","id","id"],"table_join_key":["parent_id","parent_id","parent_id"],"join_repeat":[["1"],["1"],["1"]],"join-display":"default","delete-joined-rows":"0","show_related_add":"0","show_related_info":"0","rss":"0","feed_title":"","feed_date":"","feed_image_src":"","rsslimit":"150","rsslimitmax":"2500","csv_import_frontend":"3","csv_export_frontend":"3","csvfullname":"0","csv_export_step":"100","newline_csv_export":"nl2br","csv_custom_qs":"","csv_frontend_selection":"0","incfilters":"0","csv_format":"0","csv_which_elements":"selected","show_in_csv":"","csv_elements":"null","csv_include_data":"1","csv_include_raw_data":"1","csv_include_calculations":"0","csv_encoding":"","search_use":"0","search_title":"","search_description":"","search_date":"","search_link_type":"details","allow_view_details":"7","allow_edit_details":"7","allow_edit_details2":"","allow_add":"7","allow_delete":"7","allow_delete2":"","allow_drop":"7","isview":"0"}'),
(8, 'Registreerimine', '', 8, 'kasutajad', 'kasutajad.id', 1, 1, '0000-00-00 00:00:00', 0, '', '2014-05-02 15:08:14', 192, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 3, 0, 'bootstrap', '[""]', '["ASC"]', 'onchange', '', 0, '{"show-table-filters":"1","advanced-filter":"0","search-mode":"0","search-mode-advanced":"0","search_elements":"","list_search_elements":"null","search-all-label":"All","require-filter":"0","filter-dropdown-method":"0","toggle_cols":"0","list_filter_cols":"1","empty_data_msg":"No data found","outro":"","list_ajax":"0","show-table-add":"1","show-table-nav":"1","show_displaynum":"1","showall-records":"0","show-total":"0","sef-slug":"","admin_template":"","show-title":"1","pdf":"","pdf_template":"","pdf_orientation":"portrait","pdf_size":"a4","bootstrap_stripped_class":"1","bootstrap_bordered_class":"0","bootstrap_condensed_class":"0","bootstrap_hover_class":"1","responsive_elements":"","responsive_class":"","list_responsive_elements":"null","tabs_field":"","tabs_max":"10","tabs_all":"1","list_ajax_links":"0","actionMethod":"default","detailurl":"","detaillabel":"","editurl":"","editlabel":"","checkboxLocation":"end","addurl":"","addlabel":"","popup_width":"","popup_height":"","popup_offset_x":"","popup_offset_y":"","note":"","alter_existing_db_cols":"default","process-jplugins":"1","enable_single_sorting":"default","collation":"utf8_general_ci","list_disable_caching":"0","group_by_access":"1","group_by_order":"","group_by_template":"","group_by_order_dir":"ASC","group_by_start_collapsed":"0","group_by_collapse_others":"0","prefilter_query":"","join-display":"default","delete-joined-rows":"0","show_related_add":"0","show_related_info":"0","rss":"0","feed_title":"","feed_date":"","feed_image_src":"","rsslimit":"150","rsslimitmax":"2500","csv_import_frontend":"3","csv_export_frontend":"3","csvfullname":"0","csv_export_step":"100","newline_csv_export":"nl2br","csv_custom_qs":"","csv_frontend_selection":"0","incfilters":"0","csv_format":"0","csv_which_elements":"selected","show_in_csv":"","csv_elements":"null","csv_include_data":"1","csv_include_raw_data":"1","csv_include_calculations":"0","csv_encoding":"","search_use":"0","search_title":"","search_description":"","search_date":"","search_link_type":"details","allow_view_details":"1","allow_edit_details":"1","allow_edit_details2":"","allow_add":"1","allow_delete":"1","allow_delete2":"","allow_drop":"3","isview":"0"}'),
(11, 'Kasutajad', '', 11, 'kasutajad', 'kasutajad.id', 1, 1, '2014-04-07 07:05:37', 0, '', '2014-04-22 07:43:21', 192, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, 90, 10, 'bootstrap', '[""]', '["ASC"]', 'onchange', '', 0, '{"show-table-filters":"1","advanced-filter":"0","search-mode":"0","search-mode-advanced":"0","search_elements":"","list_search_elements":"null","search-all-label":"All","require-filter":"0","filter-dropdown-method":"0","toggle_cols":"0","list_filter_cols":"1","empty_data_msg":"","outro":"","list_ajax":"0","show-table-add":"1","show-table-nav":"1","show_displaynum":"1","showall-records":"0","show-total":"0","sef-slug":"","admin_template":"","show-title":"1","pdf":"","pdf_template":"","pdf_orientation":"portrait","pdf_size":"a4","bootstrap_stripped_class":"1","bootstrap_bordered_class":"0","bootstrap_condensed_class":"0","bootstrap_hover_class":"1","responsive_elements":"","responsive_class":"","list_responsive_elements":"null","tabs_field":"","tabs_max":"10","tabs_all":"1","list_ajax_links":"0","actionMethod":"default","detailurl":"","detaillabel":"","editurl":"","editlabel":"","checkboxLocation":"end","addurl":"","addlabel":"","popup_width":"","popup_height":"","popup_offset_x":"","popup_offset_y":"","note":"","alter_existing_db_cols":"default","process-jplugins":"1","enable_single_sorting":"default","collation":"utf8_general_ci","list_disable_caching":"0","group_by_access":"7","group_by_order":"","group_by_template":"","group_by_order_dir":"ASC","group_by_start_collapsed":"0","group_by_collapse_others":"0","filter-join":["","AND","AND"],"filter-fields":["kasutajad.school","kasutajad.user_id","kasutajad.user_group"],"filter-conditions":["equals","notequals","notequals"],"filter-value":["$user = JFactory::getUser();\\r\\n\\r\\n$currentId = $user->id;\\r\\n\\r\\n\\r\\n$db = JFactory::getDbo();\\r\\n \\r\\n$query = $db->getQuery(true);\\r\\n \\r\\n$query=\\"select * from kasutajad where user_id =\\".$currentId;\\r\\n \\r\\n$db->setQuery($query);\\r\\n \\r\\n$row = $db->LoadObject();\\r\\n\\r\\nreturn $row->school;\\r\\n","$user = JFactory::getUser();\\r\\n\\r\\n$currentId = $user->id;\\r\\nreturn $currentId;","10"],"filter-eval":["1","1","0"],"filter-access":["7","7","7"],"filter-grouped":["0","0","0"],"prefilter_query":"","join-display":"default","delete-joined-rows":"0","show_related_add":"0","show_related_info":"0","rss":"0","feed_title":"","feed_date":"","feed_image_src":"","rsslimit":"150","rsslimitmax":"2500","csv_import_frontend":"3","csv_export_frontend":"2","csvfullname":"0","csv_export_step":"100","newline_csv_export":"nl2br","csv_custom_qs":"","csv_frontend_selection":"0","incfilters":"0","csv_format":"0","csv_which_elements":"selected","show_in_csv":"","csv_elements":"null","csv_include_data":"1","csv_include_raw_data":"1","csv_include_calculations":"0","csv_encoding":"","search_use":"0","search_title":"","search_description":"","search_date":"","search_link_type":"details","allow_view_details":"7","allow_edit_details":"7","allow_edit_details2":"","allow_add":"7","allow_delete":"7","allow_delete2":"","allow_drop":"7","isview":"0"}'),
(13, 'Profiil', '', 13, 'kasutajad', 'kasutajad.id', 1, 1, '2014-04-14 08:22:35', 0, '', '2014-04-14 08:36:42', 192, 0, '0000-00-00 00:00:00', -2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 0, 10, 'bootstrap', '[""]', '["ASC"]', 'onchange', '', 0, '{"show-table-filters":"1","advanced-filter":"0","search-mode":"0","search-mode-advanced":"0","search_elements":"","list_search_elements":"null","search-all-label":"All","require-filter":"0","filter-dropdown-method":"0","toggle_cols":"0","list_filter_cols":"1","empty_data_msg":"","outro":"","list_ajax":"0","show-table-add":"1","show-table-nav":"1","show_displaynum":"1","showall-records":"0","show-total":"0","sef-slug":"","admin_template":"","show-title":"1","pdf":"","pdf_template":"","pdf_orientation":"portrait","pdf_size":"a4","bootstrap_stripped_class":"1","bootstrap_bordered_class":"0","bootstrap_condensed_class":"0","bootstrap_hover_class":"1","responsive_elements":"","responsive_class":"","list_responsive_elements":"null","tabs_field":"","tabs_max":"10","tabs_all":"1","list_ajax_links":"0","actionMethod":"default","detailurl":"","detaillabel":"","editurl":"","editlabel":"","checkboxLocation":"end","addurl":"","addlabel":"","popup_width":"","popup_height":"","popup_offset_x":"","popup_offset_y":"","note":"","alter_existing_db_cols":"default","process-jplugins":"1","enable_single_sorting":"default","collation":"utf8_general_ci","list_disable_caching":"0","group_by_access":"1","group_by_order":"","group_by_template":"","group_by_order_dir":"ASC","group_by_start_collapsed":"0","group_by_collapse_others":"0","filter-join":[""],"filter-fields":["kasutajad.user_id"],"filter-conditions":["equals"],"filter-value":["$user = JFactory::getUser();\\r\\nreturn $user->id;"],"filter-eval":["1"],"filter-access":["1"],"filter-grouped":["0"],"prefilter_query":"","join-display":"default","delete-joined-rows":"0","show_related_add":"0","show_related_info":"0","rss":"0","feed_title":"","feed_date":"","feed_image_src":"","rsslimit":"150","rsslimitmax":"2500","csv_import_frontend":"3","csv_export_frontend":"2","csvfullname":"0","csv_export_step":"100","newline_csv_export":"nl2br","csv_custom_qs":"","csv_frontend_selection":"0","incfilters":"0","csv_format":"0","csv_which_elements":"selected","show_in_csv":"","csv_elements":"null","csv_include_data":"1","csv_include_raw_data":"1","csv_include_calculations":"0","csv_encoding":"","search_use":"0","search_title":"","search_description":"","search_date":"","search_link_type":"details","allow_view_details":"2","allow_edit_details":"2","allow_edit_details2":"","allow_add":"2","allow_delete":"2","allow_delete2":"","allow_drop":"3","isview":"0"}'),
(14, 'Klassi broneerimine', '', 14, 'broneeringud', 'broneeringud.id', 1, 1, '2014-04-14 12:32:33', 0, '', '2014-04-27 15:11:48', 192, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 35, 10, 'bootstrap', '["121"]', '["ASC"]', 'onchange', '', 0, '{"show-table-filters":"1","advanced-filter":"0","search-mode":"0","search-mode-advanced":"0","search_elements":"","list_search_elements":"{\\"search_elements\\":[]}","search-all-label":"All","require-filter":"0","filter-dropdown-method":"0","toggle_cols":"0","list_filter_cols":"1","empty_data_msg":"","outro":"","list_ajax":"0","show-table-add":"1","show-table-nav":"1","show_displaynum":"1","showall-records":"0","show-total":"0","sef-slug":"","admin_template":"","show-title":"1","pdf":"","pdf_template":"","pdf_orientation":"portrait","pdf_size":"a4","bootstrap_stripped_class":"1","bootstrap_bordered_class":"0","bootstrap_condensed_class":"0","bootstrap_hover_class":"1","responsive_elements":"","responsive_class":"","list_responsive_elements":"null","tabs_field":"","tabs_max":"10","tabs_all":"1","list_ajax_links":"0","actionMethod":"default","detailurl":"","detaillabel":"","editurl":"","editlabel":"","checkboxLocation":"end","addurl":"","addlabel":"","popup_width":"","popup_height":"","popup_offset_x":"","popup_offset_y":"","note":"","alter_existing_db_cols":"default","process-jplugins":"1","enable_single_sorting":"default","collation":"utf8_general_ci","list_disable_caching":"0","group_by_access":"1","group_by_order":"","group_by_template":"","group_by_order_dir":"ASC","group_by_start_collapsed":"0","group_by_collapse_others":"0","filter-join":[""],"filter-fields":["broneeringud.kool"],"filter-conditions":["equals"],"filter-value":["$user = JFactory::getUser();\\r\\n$user_id = $user->id;\\r\\n$db = JFactory::getDbo();\\r\\n$query = $db->getQuery(true);\\r\\n \\r\\n$query=\\"SELECT * FROM kasutajad WHERE user_id=\\".$user_id;\\r\\n \\r\\n$db->setQuery($query);\\r\\n \\r\\n$row = $db->LoadObject();\\r\\n$kool = $row->school;\\r\\n\\r\\n\\r\\n$query = $db->getQuery(true);\\r\\n \\r\\n$query=\\"SELECT * FROM registreeritud WHERE kooli_id=\\".$kool;\\r\\n$db->setQuery($query);\\r\\n \\r\\n$row2 = $db->LoadObject();\\r\\n$reg_id = $row2->id;\\r\\n\\r\\nreturn $reg_id;"],"filter-eval":["1"],"filter-access":["2"],"filter-grouped":["0"],"prefilter_query":"","join-display":"default","delete-joined-rows":"0","show_related_add":"0","show_related_info":"0","rss":"0","feed_title":"","feed_date":"","feed_image_src":"","rsslimit":"150","rsslimitmax":"2500","csv_import_frontend":"3","csv_export_frontend":"2","csvfullname":"0","csv_export_step":"100","newline_csv_export":"nl2br","csv_custom_qs":"","csv_frontend_selection":"0","incfilters":"0","csv_format":"0","csv_which_elements":"selected","show_in_csv":"","csv_elements":"null","csv_include_data":"1","csv_include_raw_data":"1","csv_include_calculations":"0","csv_encoding":"","search_use":"0","search_title":"","search_description":"","search_date":"","search_link_type":"details","allow_view_details":"2","allow_edit_details":"2","allow_edit_details2":"","allow_add":"2","allow_delete":"2","allow_delete2":"","allow_drop":"3","isview":"0"}'),
(15, 'Kooli sätted', '', 15, 'registreeritud', 'registreeritud.id', 1, 1, '2014-04-25 02:04:25', 0, '', '2014-04-25 06:44:32', 192, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, 44, 10, 'bootstrap', '[""]', '["ASC"]', 'onchange', '', 0, '{"show-table-filters":"0","advanced-filter":"0","search-mode":"0","search-mode-advanced":"0","search_elements":"","list_search_elements":"null","search-all-label":"All","require-filter":"0","filter-dropdown-method":"0","toggle_cols":"0","list_filter_cols":"1","empty_data_msg":"","outro":"","list_ajax":"0","show-table-add":"0","show-table-nav":"0","show_displaynum":"0","showall-records":"0","show-total":"0","sef-slug":"","admin_template":"","show-title":"1","pdf":"","pdf_template":"","pdf_orientation":"portrait","pdf_size":"a4","bootstrap_stripped_class":"1","bootstrap_bordered_class":"0","bootstrap_condensed_class":"0","bootstrap_hover_class":"1","responsive_elements":"","responsive_class":"","list_responsive_elements":"null","tabs_field":"","tabs_max":"10","tabs_all":"1","list_ajax_links":"0","actionMethod":"default","detailurl":"","detaillabel":"","editurl":"","editlabel":"","checkboxLocation":"end","addurl":"","addlabel":"","popup_width":"","popup_height":"","popup_offset_x":"","popup_offset_y":"","note":"","alter_existing_db_cols":"default","process-jplugins":"1","enable_single_sorting":"default","collation":"utf8_unicode_ci","list_disable_caching":"0","group_by_access":"3","group_by_order":"","group_by_template":"","group_by_order_dir":"ASC","group_by_start_collapsed":"0","group_by_collapse_others":"0","filter-join":[""],"filter-fields":["registreeritud_5_repeat.parent_id"],"filter-conditions":["equals"],"filter-value":["$user = JFactory::getUser();\\r\\n$user_id = $user->id;\\r\\n$db = JFactory::getDbo();\\r\\n$query = $db->getQuery(true);\\r\\n \\r\\n$query=\\"SELECT * FROM kasutajad WHERE user_id=\\".$user_id;\\r\\n \\r\\n$db->setQuery($query);\\r\\n \\r\\n$row = $db->LoadObject();\\r\\n$kool = $row->school;\\r\\n\\r\\n\\r\\n$query = $db->getQuery(true);\\r\\n \\r\\n$query=\\"SELECT * FROM registreeritud WHERE kooli_id=\\".$kool;\\r\\n$db->setQuery($query);\\r\\n \\r\\n$row2 = $db->LoadObject();\\r\\n$reg_id = $row2->id;\\r\\n\\r\\nreturn $reg_id;"],"filter-eval":["1"],"filter-access":["1"],"filter-grouped":["0"],"prefilter_query":"","join_id":["26","27","28"],"join_type":["left","left","left"],"join_from_table":["registreeritud","registreeritud","registreeritud"],"table_join":["registreeritud_5_repeat","registreeritud_6_repeat","registreeritud_18_repeat"],"table_key":["id","id","id"],"table_join_key":["parent_id","parent_id","parent_id"],"join_repeat":[["1"],["1"],["1"]],"join-display":"merge","delete-joined-rows":"0","show_related_add":"0","show_related_info":"0","rss":"0","feed_title":"","feed_date":"","feed_image_src":"","rsslimit":"150","rsslimitmax":"2500","csv_import_frontend":"3","csv_export_frontend":"3","csvfullname":"0","csv_export_step":"100","newline_csv_export":"nl2br","csv_custom_qs":"","csv_frontend_selection":"0","incfilters":"0","csv_format":"0","csv_which_elements":"selected","show_in_csv":"","csv_elements":"null","csv_include_data":"1","csv_include_raw_data":"1","csv_include_calculations":"0","csv_encoding":"","search_use":"0","search_title":"","search_description":"","search_date":"","search_link_type":"details","allow_view_details":"7","allow_edit_details":"7","allow_edit_details2":"","allow_add":"7","allow_delete":"7","allow_delete2":"","allow_drop":"3","isview":"0"}');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_fabrik_log`
--

CREATE TABLE IF NOT EXISTS `j8sdv_fabrik_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `timedate_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flag` smallint(3) NOT NULL,
  `referring_url` varchar(255) NOT NULL,
  `message_source` varchar(255) NOT NULL,
  `message_type` char(60) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_fabrik_packages`
--

CREATE TABLE IF NOT EXISTS `j8sdv_fabrik_packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `external_ref` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `component_name` varchar(100) NOT NULL,
  `version` varchar(10) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `checked_out` int(4) NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(6) NOT NULL,
  `template` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_fabrik_validations`
--

CREATE TABLE IF NOT EXISTS `j8sdv_fabrik_validations` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `element_id` int(4) NOT NULL,
  `validation_plugin` varchar(100) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `client_side_validation` int(1) NOT NULL DEFAULT '0',
  `checked_out` int(4) NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_fabrik_visualizations`
--

CREATE TABLE IF NOT EXISTS `j8sdv_fabrik_visualizations` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `plugin` varchar(100) NOT NULL,
  `label` varchar(255) NOT NULL,
  `intro_text` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_alias` varchar(100) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `published` int(1) NOT NULL,
  `access` int(6) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_fabrik_visualizations`
--

INSERT INTO `j8sdv_fabrik_visualizations` (`id`, `plugin`, `label`, `intro_text`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `access`, `params`) VALUES
(4, 'calendar', 'Klassi broneerimine', '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2, '{"show-title":"1","show_filters":"1","calendar_connection":["1"],"calendar_table":["14"],"calendar_startdate_element":["broneeringud___kuupaev"],"calendar_enddate_element":["broneeringud___kuupaev_lopp"],"calendar_label_element":["broneeringud___nimi"],"colour":["#ff1717"],"status_element":["broneeringud___id"],"legendtext":[""],"custom_url":[""],"limit_min":"","limit_max":"","calendar_layout":"bootstrap","show_calendar_legend":"0","show_day":"1","show_week":"1","calendar_default_view":"monthView","show_full_details":"1","yoffset":"0","first_week_day":"1","calendar-read-only":"0","time_format":"%T","calendar_show_messages":"1","calendar-monthday-width":"90","calendar-monthday-height":"80","greyscaled-week-end":"0","readonly_monthview":"0","calendar-weekday-width":"90","calendar-weekday-height":"10","open-hour":"0","close-hour":"24","calendar-show-weekends":"1"}');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_filters`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_links`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_finder_taxonomy`
--

INSERT INTO `j8sdv_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_terms`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `j8sdv_finder_terms_common`
--

INSERT INTO `j8sdv_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_finder_types`
--

CREATE TABLE IF NOT EXISTS `j8sdv_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_languages`
--

CREATE TABLE IF NOT EXISTS `j8sdv_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_languages`
--

INSERT INTO `j8sdv_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1),
(2, 'et-EE', 'Estonian', 'Eesti', 'ee', 'et', '', '', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_menu`
--

CREATE TABLE IF NOT EXISTS `j8sdv_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=128 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_menu`
--

INSERT INTO `j8sdv_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 99, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 33, 38, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 34, 35, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 36, 37, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 39, 40, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 43, 44, 0, '', 1),
(24, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 45, 46, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 1, '*', 0),
(102, 'main', 'Fabrik', 'fabrik', '', 'fabrik', 'index.php?option=com_fabrik', 'component', 0, 1, 1, 738, 0, '0000-00-00 00:00:00', 0, 1, '../administrator/components/com_fabrik/images/fabrik.png', 0, '', 49, 66, 0, '', 1),
(103, 'main', 'com_fabrik_lists', 'com-fabrik-lists', '', 'fabrik/com-fabrik-lists', 'index.php?option=com_fabrik&view=lists', 'component', 0, 102, 2, 738, 0, '0000-00-00 00:00:00', 0, 1, '../administrator/components/com_fabrik/images/lists.png', 0, '', 50, 51, 0, '', 1),
(104, 'main', 'com_fabrik_forms', 'com-fabrik-forms', '', 'fabrik/com-fabrik-forms', 'index.php?option=com_fabrik&view=forms', 'component', 0, 102, 2, 738, 0, '0000-00-00 00:00:00', 0, 1, '../administrator/components/com_fabrik/images/forms.png', 0, '', 52, 53, 0, '', 1),
(105, 'main', 'com_fabrik_groups', 'com-fabrik-groups', '', 'fabrik/com-fabrik-groups', 'index.php?option=com_fabrik&view=groups', 'component', 0, 102, 2, 738, 0, '0000-00-00 00:00:00', 0, 1, '../administrator/components/com_fabrik/images/groups.png', 0, '', 54, 55, 0, '', 1),
(106, 'main', 'com_fabrik_elements', 'com-fabrik-elements', '', 'fabrik/com-fabrik-elements', 'index.php?option=com_fabrik&view=elements', 'component', 0, 102, 2, 738, 0, '0000-00-00 00:00:00', 0, 1, '../administrator/components/com_fabrik/images/elements.png', 0, '', 56, 57, 0, '', 1),
(107, 'main', 'com_fabrik_visualizations', 'com-fabrik-visualizations', '', 'fabrik/com-fabrik-visualizations', 'index.php?option=com_fabrik&view=visualizations', 'component', 0, 102, 2, 738, 0, '0000-00-00 00:00:00', 0, 1, '../administrator/components/com_fabrik/images/visualizations.png', 0, '', 58, 59, 0, '', 1),
(108, 'main', 'com_fabrik_packages', 'com-fabrik-packages', '', 'fabrik/com-fabrik-packages', 'index.php?option=com_fabrik&view=packages', 'component', 0, 102, 2, 738, 0, '0000-00-00 00:00:00', 0, 1, '../administrator/components/com_fabrik/images/packages.png', 0, '', 60, 61, 0, '', 1),
(109, 'main', 'com_fabrik_connections', 'com-fabrik-connections', '', 'fabrik/com-fabrik-connections', 'index.php?option=com_fabrik&view=connections', 'component', 0, 102, 2, 738, 0, '0000-00-00 00:00:00', 0, 1, '../administrator/components/com_fabrik/images/connections.png', 0, '', 62, 63, 0, '', 1),
(110, 'main', 'com_fabrik_schedule', 'com-fabrik-schedule', '', 'fabrik/com-fabrik-schedule', 'index.php?option=com_fabrik&view=crons', 'component', 0, 102, 2, 738, 0, '0000-00-00 00:00:00', 0, 1, '../administrator/components/com_fabrik/images/schedules.png', 0, '', 64, 65, 0, '', 1),
(111, 'mainmenu', 'test', 'test', '', 'test', 'index.php?option=com_fabrik&view=form&formid=2', 'component', 0, 1, 1, 738, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"rowid":"","usekey":"","random":"0","fabriklayout":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 67, 68, 0, 'et-EE', 0),
(112, 'mainmenu', 'Kooli registreerimine', 'registreeri', '', 'registreeri', 'index.php?option=com_fabrik&view=form&formid=4', 'component', 1, 1, 1, 738, 0, '0000-00-00 00:00:00', 0, 7, '', 0, '{"rowid":"","usekey":"","random":"0","fabriklayout":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 69, 70, 0, '*', 0),
(113, 'mainmenu', 'aaa', 'aaa', '', 'aaa', 'index.php?option=com_fabrik&view=details&formid=4', 'component', 0, 1, 1, 738, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"rowid":"","usekey":"","random":"0","fabriklayout":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 71, 72, 0, '*', 0),
(114, 'mainmenu', 'Kasutajad', 'kasutajad', '', 'kasutajad', 'index.php?option=com_fabrik&view=list&listid=5', 'component', -2, 1, 1, 738, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"calculations":"0","listlayout":"","resetfilters":"0","list_elements":"null","prefilters":"null","rows_per_page":"10","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 73, 74, 0, '*', 0),
(115, 'mainmenu', 'profiil', 'profiil', '', 'profiil', 'index.php?option=com_fabrik&view=form&formid=13', 'component', 0, 1, 1, 738, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"rowid":"-1","usekey":"user_id","random":"0","fabriklayout":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 75, 76, 0, '*', 0),
(116, 'mainmenu', 'pp', 'pp', '', 'pp', 'index.php?option=com_fabrik&view=list&listid=7', 'component', 0, 1, 1, 738, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"calculations":"0","listlayout":"","resetfilters":"0","list_elements":"null","prefilters":"null","rows_per_page":"10","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 77, 78, 0, '*', 0),
(117, 'mainmenu', 'Registreeri kasutajaks', 'registreeri-kasutajaks', '', 'registreeri-kasutajaks', 'index.php?option=com_fabrik&view=form&formid=8', 'component', 1, 1, 1, 738, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"rowid":"-1","usekey":"user_id","random":"0","fabriklayout":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 79, 80, 0, '*', 0),
(118, 'mainmenu', 'Kasutajad', 'users', '', 'users', 'index.php?option=com_fabrik&view=list&listid=11', 'component', 1, 1, 1, 738, 0, '0000-00-00 00:00:00', 0, 7, '', 0, '{"calculations":"0","listlayout":"","resetfilters":"0","list_elements":"null","prefilters":"null","rows_per_page":"10","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 81, 82, 0, '*', 0),
(119, 'mainmenu', 'tteee', 'tteee', '', 'tteee', 'index.php?option=com_fabrik&view=form&formid=11', 'component', 0, 1, 1, 738, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"rowid":"-1","usekey":"user_id","random":"0","fabriklayout":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 83, 84, 0, '*', 0),
(121, 'main', 'COM_SLOGIN_MAIN_MENU', 'com-slogin-main-menu', '', 'com-slogin-main-menu', 'index.php?option=com_slogin', 'component', 0, 1, 1, 755, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_slogin/icon_16x16.png', 0, '', 85, 86, 0, '', 1),
(122, 'mainmenu', 'Klassi broneerimine', 'klassi-broneerimine', '', 'klassi-broneerimine', 'index.php?option=com_fabrik&view=visualization&id=4', 'component', 1, 1, 1, 738, 0, '0000-00-00 00:00:00', 0, 8, '', 0, '{"resetfilters":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 87, 88, 0, '*', 0),
(123, 'mainmenu', 'dd', 'dd', '', 'dd', 'index.php?option=com_fabrik&view=visualization&id=2', 'component', 0, 1, 1, 738, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"resetfilters":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 89, 90, 0, '*', 0),
(124, 'usermenu', 'Edit', 'edit', '', 'edit', 'index.php?option=com_fabrik&view=form&formid=8', 'component', 1, 1, 1, 738, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"rowid":"-1","usekey":"user_id","random":"0","fabriklayout":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 91, 92, 0, '*', 0),
(125, 'usermenu', 'Kooli sätted', 'kooli-saetted', '', 'kooli-saetted', 'index.php?option=com_fabrik&view=list&listid=15', 'component', 1, 1, 1, 738, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"calculations":"0","listlayout":"","resetfilters":"0","list_elements":"{\\"show_in_list\\":[\\"130\\"]}","prefilters":"{\\"filter-join\\":[],\\"filter-fields\\":[],\\"filter-conditions\\":[],\\"filter-value\\":[],\\"filter-eval\\":[],\\"filter-access\\":[]}","rows_per_page":"10","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 93, 94, 0, '*', 0),
(126, 'usermenu', 'test', 'test', '', 'test', 'index.php?option=com_fabrik&view=list&listid=4', 'component', -2, 1, 1, 738, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"calculations":"0","listlayout":"","resetfilters":"0","list_elements":"null","prefilters":"{\\"filter-join\\":[],\\"filter-fields\\":[],\\"filter-conditions\\":[],\\"filter-value\\":[],\\"filter-eval\\":[],\\"filter-access\\":[]}","rows_per_page":"10","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 95, 96, 0, '*', 0),
(127, 'usermenu', 'Minu broneeringud', 'minu-broneeringud', '', 'minu-broneeringud', 'index.php?option=com_fabrik&view=list&listid=14', 'component', 1, 1, 1, 738, 0, '0000-00-00 00:00:00', 0, 8, '', 0, '{"calculations":"0","listlayout":"","resetfilters":"0","list_elements":"null","prefilters":"{\\"filter-join\\":[\\"OR\\"],\\"filter-fields\\":[\\"broneeringud.kasutaja\\"],\\"filter-conditions\\":[\\"equals\\"],\\"filter-value\\":[\\"$user = JFactory::getUser(); return $user->id;\\"],\\"filter-eval\\":[\\"1\\"],\\"filter-access\\":[\\"8\\"]}","rows_per_page":"10","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 97, 98, 0, '*', 0);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_menu_types`
--

CREATE TABLE IF NOT EXISTS `j8sdv_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_menu_types`
--

INSERT INTO `j8sdv_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'usermenu', 'User', '');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_messages`
--

CREATE TABLE IF NOT EXISTS `j8sdv_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_messages`
--

INSERT INTO `j8sdv_messages` (`message_id`, `user_id_from`, `user_id_to`, `folder_id`, `date_time`, `state`, `priority`, `subject`, `message`) VALUES
(3, 0, 0, 0, '2014-04-02 06:16:05', 0, 0, 'Viga e-posti saatmisel', 'Kasutajale registreerumiskirja saatmine ebaõnnestus. Viga on: funktsiooni mail käivitamine ebaõnnestus. Kasutaja, kes proovis registreeruda on: peep');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `j8sdv_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_modules`
--

CREATE TABLE IF NOT EXISTS `j8sdv_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_modules`
--

INSERT INTO `j8sdv_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 55, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 56, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 57, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 58, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 59, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 60, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 61, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 62, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 63, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 64, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 65, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 66, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 67, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 68, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 69, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 54, 'Fabrik Form Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_fabrik_form', 1, 1, '', 0, '*'),
(88, 55, 'Fabrik List Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_fabrik_list', 1, 1, '', 0, '*'),
(89, 59, 'SLogin', '', '', 1, 'position-8', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_slogin', 1, 1, '{"show_login_form":1,"slogin_link_profile":"1","slogin_link_auch_edit":"1","inittext":"","pretext":"","posttext":"","login":"","logout":"","secretkey":"","layout":"_:compact","moduleclass_sfx":"","cache":"0","load_css":"0","load_js":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 60, 'User', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 2, 1, '{"menutype":"usermenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_modules_menu`
--

CREATE TABLE IF NOT EXISTS `j8sdv_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `j8sdv_modules_menu`
--

INSERT INTO `j8sdv_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(89, 0),
(90, 0);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `j8sdv_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_overrider`
--

CREATE TABLE IF NOT EXISTS `j8sdv_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_plg_slogin_profile`
--

CREATE TABLE IF NOT EXISTS `j8sdv_plg_slogin_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `slogin_id` varchar(150) NOT NULL,
  `provider` varchar(100) NOT NULL,
  `gender` int(1) NOT NULL DEFAULT '0',
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `social_profile_link` varchar(250) NOT NULL,
  `country` varchar(5) NOT NULL,
  `region` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `lng` varchar(50) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `current_profile` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_prov` (`user_id`,`provider`),
  KEY `user_curr` (`user_id`,`current_profile`),
  KEY `user` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `j8sdv_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_postinstall_messages`
--

INSERT INTO `j8sdv_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(4, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_redirect_links`
--

CREATE TABLE IF NOT EXISTS `j8sdv_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_schemas`
--

CREATE TABLE IF NOT EXISTS `j8sdv_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `j8sdv_schemas`
--

INSERT INTO `j8sdv_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.2.2-2014-01-23'),
(738, '3.0.6'),
(759, '1.0');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_session`
--

CREATE TABLE IF NOT EXISTS `j8sdv_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `j8sdv_session`
--

INSERT INTO `j8sdv_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('6f4f3cc30ccc4bff46edfc629fbb6b58', 1, 1, '1399275380', '__default|a:8:{s:15:"session.counter";i:9;s:19:"session.timer.start";i:1399268651;s:18:"session.timer.last";i:1399274538;s:17:"session.timer.now";i:1399275379;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";N;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";N;s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"3e4e1b3a4c255851910470d4c1caf8cd";}', 0, '');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_slogin_users`
--

CREATE TABLE IF NOT EXISTS `j8sdv_slogin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `slogin_id` varchar(150) NOT NULL,
  `provider` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `slogin_id` (`slogin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_tags`
--

CREATE TABLE IF NOT EXISTS `j8sdv_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_tags`
--

INSERT INTO `j8sdv_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_template_styles`
--

CREATE TABLE IF NOT EXISTS `j8sdv_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_template_styles`
--

INSERT INTO `j8sdv_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_ucm_base`
--

CREATE TABLE IF NOT EXISTS `j8sdv_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_ucm_content`
--

CREATE TABLE IF NOT EXISTS `j8sdv_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_ucm_history`
--

CREATE TABLE IF NOT EXISTS `j8sdv_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_updates`
--

CREATE TABLE IF NOT EXISTS `j8sdv_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=144 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_updates`
--

INSERT INTO `j8sdv_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.3.0', '', 'http://update.joomla.org/core/sts/extension_sts.xml', '', ''),
(2, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.2.2.1', '', 'http://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(3, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(4, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(5, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(6, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(7, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(8, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.2.0.1', '', 'http://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(9, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(10, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(11, 3, 0, 'EnglishAU', '', 'pkg_en-AU', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(12, 3, 0, 'EnglishUS', '', 'pkg_en-US', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(13, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(14, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.2.0.1', '', 'http://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(15, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(16, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(17, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(18, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(19, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(20, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(21, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(22, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(23, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(24, 3, 742, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(25, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(26, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(27, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.2.3.2', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(28, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(29, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.2.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(30, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(31, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(32, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(33, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(34, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(35, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(36, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(37, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(38, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(39, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.2.0.6', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(40, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(41, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(42, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(43, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.2.3.3', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(44, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(45, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(46, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.2.3.2', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(47, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(48, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(49, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(50, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(51, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(52, 3, 0, 'EnglishCA', '', 'pkg_en-CA', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(53, 3, 0, 'FrenchCA', '', 'pkg_fr-CA', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(54, 4, 0, 'Search - Fabrik', '', 'fabrik', 'plugin', 'search', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_search_fabrik.xml', '', ''),
(55, 4, 0, 'System - FabrikSheduled Tasks', '', 'fabrikcron', 'plugin', 'system', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_system_fabrikcron.xml', '', ''),
(56, 4, 0, 'Fabrik cron - gcalsync', '', 'gcalsync', 'plugin', 'fabrik_cron', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_cron_gcalsync.xml', '', ''),
(57, 4, 0, 'Fabrik cron - geocode', '', 'geocode', 'plugin', 'fabrik_cron', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_cron_geocode.xml', '', ''),
(58, 4, 0, 'Fabrik cron - gmail', '', 'gmail', 'plugin', 'fabrik_cron', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_cron_gmail.xml', '', ''),
(59, 4, 0, 'Fabrik cron - importcsv', '', 'importcsv', 'plugin', 'fabrik_cron', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_cron_importcsv.xml', '', ''),
(60, 4, 0, 'Fabrik cron - notification', '', 'notification', 'plugin', 'fabrik_cron', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_cron_notification.xml', '', ''),
(61, 4, 0, 'Fabrik cron - rest', '', 'rest', 'plugin', 'fabrik_cron', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_cron_rest.xml', '', ''),
(62, 4, 0, 'Fabrik element - access', '', 'access', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_access.xml', '', ''),
(63, 4, 0, 'Fabrik element - attending', '', 'attending', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_attending.xml', '', ''),
(64, 4, 0, 'Fabrik element - birthday', '', 'birthday', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_birthday.xml', '', ''),
(65, 4, 0, 'Fabrik element - calc', '', 'calc', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_calc.xml', '', ''),
(66, 4, 0, 'Fabrik element - captcha', '', 'captcha', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_captcha.xml', '', ''),
(67, 4, 0, 'Fabrik element - cascadingdropdown', '', 'cascadingdropdown', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_cascadingdropdown.xml', '', ''),
(68, 4, 0, 'Fabrik element - colourpicker', '', 'colourpicker', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_colourpicker.xml', '', ''),
(69, 4, 0, 'Fabrik element - count', '', 'count', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_count.xml', '', ''),
(70, 4, 0, 'Fabrik element - digsig', '', 'digsig', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_digsig.xml', '', ''),
(71, 4, 0, 'Fabrik element - fbactivityfeed', '', 'fbactivityfeed', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_fbactivityfeed.xml', '', ''),
(72, 4, 0, 'Fabrik element - fbcomment', '', 'fbcomment', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_fbcomment.xml', '', ''),
(73, 4, 0, 'Fabrik element - fblike', '', 'fblike', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_fblike.xml', '', ''),
(74, 4, 0, 'Fabrik element - fblikebox', '', 'fblikebox', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_fblikebox.xml', '', ''),
(75, 4, 0, 'Fabrik element - fbrecommendations', '', 'fbrecommendations', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_fbrecommendations.xml', '', ''),
(76, 4, 0, 'Fabrik element - folder', '', 'folder', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_folder.xml', '', ''),
(77, 4, 0, 'Fabrik element - googleometer', '', 'googleometer', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_googleometer.xml', '', ''),
(78, 4, 0, 'Fabrik element - ip', '', 'ip', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_ip.xml', '', ''),
(79, 4, 0, 'Fabrik element - jsperiodical', '', 'jsperiodical', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_jsperiodical.xml', '', ''),
(80, 4, 0, 'Fabrik element - notes', '', 'notes', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_notes.xml', '', ''),
(81, 4, 0, 'Fabrik element - picklist', '', 'picklist', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_picklist.xml', '', ''),
(82, 4, 0, 'Fabrik element - rating', '', 'rating', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_rating.xml', '', ''),
(83, 4, 0, 'Fabrik element - slider', '', 'slider', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_slider.xml', '', ''),
(84, 4, 0, 'Fabrik element - tags', '', 'tags', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_tags.xml', '', ''),
(85, 4, 0, 'Fabrik element - thumbs', '', 'thumbs', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_thumbs.xml', '', ''),
(86, 4, 0, 'Fabrik element - timer', '', 'timer', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_timer.xml', '', ''),
(87, 4, 0, 'Fabrik element - timestamp', '', 'timestamp', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_timestamp.xml', '', ''),
(88, 4, 0, 'Fabrik element - viewlevel', '', 'viewlevel', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_viewlevel.xml', '', ''),
(89, 4, 0, 'Fabrik element - youtube', '', 'youtube', 'plugin', 'fabrik_element', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_element_youtube.xml', '', ''),
(90, 4, 0, 'Fabrik form - alphauserpoints', '', 'alphauserpoints', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_alphauserpoints.xml', '', ''),
(91, 4, 0, 'Fabrik form - article', '', 'article', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_article.xml', '', ''),
(92, 4, 0, 'Fabrik form - autofill', '', 'autofill', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_autofill.xml', '', ''),
(93, 4, 0, 'Fabrik form - caneditgroup', '', 'caneditgroup', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_caneditgroup.xml', '', ''),
(94, 4, 0, 'Fabrik form - caneditrow', '', 'caneditrow', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_caneditrow.xml', '', ''),
(95, 4, 0, 'Fabrik form - clone', '', 'clone', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_clone.xml', '', ''),
(96, 4, 0, 'Fabrik form - comment', '', 'comment', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_comment.xml', '', ''),
(97, 4, 0, 'Fabrik form - confirmation', '', 'confirmation', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_confirmation.xml', '', ''),
(98, 4, 0, 'Fabrik form - exif', '', 'exif', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_exif.xml', '', ''),
(99, 4, 0, 'Fabrik form - ftp', '', 'ftp', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_ftp.xml', '', ''),
(100, 4, 0, 'Fabrik form - js', '', 'js', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_js.xml', '', ''),
(101, 4, 0, 'Fabrik form - kunena', '', 'kunena', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_kunena.xml', '', ''),
(102, 4, 0, 'Fabrik form - limit', '', 'limit', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_limit.xml', '', ''),
(103, 4, 0, 'Fabrik form - logs', '', 'logs', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_logs.xml', '', ''),
(104, 4, 0, 'Fabrik form - mailchimp', '', 'mailchimp', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_mailchimp.xml', '', ''),
(105, 4, 0, 'Fabrik form - notification', '', 'notification', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_notification.xml', '', ''),
(106, 4, 0, 'Fabrik form - paginate', '', 'paginate', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_paginate.xml', '', ''),
(107, 4, 0, 'Fabrik form - paypal', '', 'paypal', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_paypal.xml', '', ''),
(108, 4, 0, 'Fabrik form - rest', '', 'rest', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_rest.xml', '', ''),
(109, 4, 0, 'Fabrik form - salesforce', '', 'salesforce', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_salesforce.xml', '', ''),
(110, 4, 0, 'Fabrik form - sms', '', 'sms', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_sms.xml', '', ''),
(111, 4, 0, 'Fabrik form - subscriptions', '', 'subscriptions', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_subscriptions.xml', '', ''),
(112, 4, 0, 'Fabrik form - twitter', '', 'twitter', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_twitter.xml', '', ''),
(113, 4, 0, 'Fabrik form - upsert', '', 'upsert', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_upsert.xml', '', ''),
(114, 4, 0, 'Fabrik form - vbforum', '', 'vbforum', 'plugin', 'fabrik_form', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_form_vbforum.xml', '', ''),
(115, 4, 0, 'Fabrik list - article', '', 'article', 'plugin', 'fabrik_list', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_list_article.xml', '', ''),
(116, 4, 0, 'Fabrik list - candeleterow', '', 'candeleterow', 'plugin', 'fabrik_list', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_list_candeleterow.xml', '', ''),
(117, 4, 0, 'Fabrik list - download', '', 'download', 'plugin', 'fabrik_list', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_list_download.xml', '', ''),
(118, 4, 0, 'Fabrik list - email', '', 'email', 'plugin', 'fabrik_list', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_list_email.xml', '', ''),
(119, 4, 0, 'Fabrik list - filter_view', '', 'filter_view', 'plugin', 'fabrik_list', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_list_filter_view.xml', '', ''),
(120, 4, 0, 'Fabrik list - inlineedit', '', 'inlineedit', 'plugin', 'fabrik_list', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_list_inlineedit.xml', '', ''),
(121, 4, 0, 'Fabrik list - js', '', 'js', 'plugin', 'fabrik_list', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_list_js.xml', '', ''),
(122, 4, 0, 'Fabrik list - listcsv', '', 'listcsv', 'plugin', 'fabrik_list', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_list_listcsv.xml', '', ''),
(123, 4, 0, 'Fabrik list - order', '', 'order', 'plugin', 'fabrik_list', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_list_order.xml', '', ''),
(124, 4, 0, 'Fabrik list - php_events', '', 'php_events', 'plugin', 'fabrik_list', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_list_php_events.xml', '', ''),
(125, 4, 0, 'Fabrik list - pivot', '', 'pivot', 'plugin', 'fabrik_list', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_list_pivot.xml', '', ''),
(126, 4, 0, 'Fabrik list - radius_search', '', 'radius_search', 'plugin', 'fabrik_list', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_list_radius_search.xml', '', ''),
(127, 4, 0, 'Fabrik list - webservice', '', 'webservice', 'plugin', 'fabrik_list', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_list_webservice.xml', '', ''),
(128, 4, 0, 'Fabrik validationrule - akismet', '', 'akismet', 'plugin', 'fabrik_validationrul', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_akismet.xml', '', ''),
(129, 4, 0, 'Fabrik validationrule - areuniquevalues', '', 'areuniquevalues', 'plugin', 'fabrik_validationrul', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_areuniquevalues.xml', '', ''),
(130, 4, 0, 'Fabrik validationrule - emailexists', '', 'emailexists', 'plugin', 'fabrik_validationrul', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_emailexists.xml', '', ''),
(131, 4, 0, 'Fabrik validationrule - isalphanumeric', '', 'isalphanumeric', 'plugin', 'fabrik_validationrul', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_isalphanumeric.xml', '', ''),
(132, 4, 0, 'Fabrik validationrule - isnot', '', 'isnot', 'plugin', 'fabrik_validationrul', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_isnot.xml', '', ''),
(133, 4, 0, 'Fabrik validationrule - isnumeric', '', 'isnumeric', 'plugin', 'fabrik_validationrul', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_isnumeric.xml', '', ''),
(134, 4, 0, 'Fabrik validationrule - isuniquevalue', '', 'isuniquevalue', 'plugin', 'fabrik_validationrul', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_isuniquevalue.xml', '', ''),
(135, 4, 0, 'Fabrik validationrule - openprovider', '', 'openprovider', 'plugin', 'fabrik_validationrul', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_openprovider.xml', '', ''),
(136, 4, 0, 'Fabrik validationrule - specialchars', '', 'specialchars', 'plugin', 'fabrik_validationrul', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_specialchars.xml', '', ''),
(137, 4, 0, 'Fabrik validationrule - userexists', '', 'userexists', 'plugin', 'fabrik_validationrul', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_validationrule_userexists.xml', '', ''),
(138, 4, 0, 'Fabrik visualization - approvals', '', 'approvals', 'plugin', 'fabrik_visualization', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_visualization_approvals.xml', '', ''),
(139, 4, 0, 'Fabrik visualization - coverflow', '', 'coverflow', 'plugin', 'fabrik_visualization', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_visualization_coverflow.xml', '', ''),
(140, 4, 0, 'Fabrik visualization - fusion_gantt_chart', '', 'fusion_gantt_chart', 'plugin', 'fabrik_visualization', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_visualization_fusion_gantt_chart.xml', '', ''),
(141, 4, 0, 'Fabrik visualization - fusionchart', '', 'fusionchart', 'plugin', 'fabrik_visualization', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_visualization_fusionchart.xml', '', ''),
(142, 4, 0, 'Fabrik visualization - nvd3_chart', '', 'nvd3_chart', 'plugin', 'fabrik_visualization', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_visualization_nvd3_chart.xml', '', ''),
(143, 4, 0, 'Fabrik visualization - timeline', '', 'timeline', 'plugin', 'fabrik_visualization', 0, '3.1rc1', '', 'http://fabrikar.com/update/fabrik31/plg_visualization_timeline.xml', '', '');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_update_sites`
--

CREATE TABLE IF NOT EXISTS `j8sdv_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=7 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_update_sites`
--

INSERT INTO `j8sdv_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1399088688, ''),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1399088688, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1399088688, ''),
(4, 'Fabrik31', 'collection', 'http://fabrikar.com/update/fabrik31/package_list.xml', 1, 1399088688, ''),
(5, 'Joomline', 'extension', 'http://joomline.net/index.php?option=com_ars&view=update&task=stream&format=xml&id=5&dummy=extension.xml', 1, 1399088688, ''),
(6, 'JComments Social Login', 'extension', 'http://www.joomlatune.ru/updates/plg-jcomments-slogin.xml', 1, 1399088688, '');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `j8sdv_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Andmete tõmmistamine tabelile `j8sdv_update_sites_extensions`
--

INSERT INTO `j8sdv_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(3, 742),
(4, 738),
(4, 739),
(5, 755),
(6, 760);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_usergroups`
--

CREATE TABLE IF NOT EXISTS `j8sdv_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_usergroups`
--

INSERT INTO `j8sdv_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 26, 'Public'),
(2, 1, 8, 23, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 24, 25, 'Super Users'),
(9, 1, 2, 3, 'Guest'),
(10, 12, 16, 17, 'Administraator'),
(11, 2, 19, 22, 'Õpetajad'),
(12, 2, 15, 18, 'Haldajad'),
(13, 11, 20, 21, 'Informaatikaõpetajad');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_users`
--

CREATE TABLE IF NOT EXISTS `j8sdv_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` int(255) DEFAULT NULL,
  `sendEmail` int(255) DEFAULT NULL,
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=219 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_users`
--

INSERT INTO `j8sdv_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`) VALUES
(192, 'Super User', 'admin', 'admin@admin.com', '$P$D41u4XEj5uAotRWaYfLJLNty62unv2.', 0, 1, '2014-02-22 15:26:36', '2014-05-04 05:14:44', '0', '', '0000-00-00 00:00:00', 0, '', '');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_user_keys`
--

CREATE TABLE IF NOT EXISTS `j8sdv_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_user_notes`
--

CREATE TABLE IF NOT EXISTS `j8sdv_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_user_profiles`
--

CREATE TABLE IF NOT EXISTS `j8sdv_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

--
-- Andmete tõmmistamine tabelile `j8sdv_user_profiles`
--

INSERT INTO `j8sdv_user_profiles` (`user_id`, `profile_key`, `profile_value`, `ordering`) VALUES
(193, 'kool.school', '1', 1),
(194, 'kool.school', '5', 2),
(195, 'kool.school', '1', 1),
(196, 'kool.school', '1', 1);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `j8sdv_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `j8sdv_user_usergroup_map`
--

INSERT INTO `j8sdv_user_usergroup_map` (`user_id`, `group_id`) VALUES
(192, 8),
(202, 10),
(203, 13),
(204, 2),
(205, 11),
(206, 13),
(207, 2),
(208, 2),
(209, 2),
(210, 2),
(211, 2),
(212, 2),
(213, 2),
(214, 2),
(215, 2),
(216, 2),
(217, 10),
(218, 13);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_viewlevels`
--

CREATE TABLE IF NOT EXISTS `j8sdv_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Andmete tõmmistamine tabelile `j8sdv_viewlevels`
--

INSERT INTO `j8sdv_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]'),
(6, 'Super Users', 0, '[8]'),
(7, 'Administraator', 0, '[10]'),
(8, 'Õpetajad', 0, '[11]'),
(9, 'Haldajad', 0, '[12]'),
(10, 'Informaatikaõpetajad', 0, '[13]');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `j8sdv_weblinks`
--

CREATE TABLE IF NOT EXISTS `j8sdv_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kasutajad`
--

CREATE TABLE IF NOT EXISTS `kasutajad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `block` int(1) DEFAULT NULL,
  `user_group` int(10) unsigned DEFAULT NULL,
  `school` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `klass`
--

CREATE TABLE IF NOT EXISTS `klass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `klassinimi` varchar(255) NOT NULL,
  `kohtadearv` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `koolid`
--

CREATE TABLE IF NOT EXISTS `koolid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `koolinimi` varchar(255) NOT NULL,
  `registreeritud` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=623 ;

--
-- Andmete tõmmistamine tabelile `koolid`
--

INSERT INTO `koolid` (`id`, `koolinimi`, `registreeritud`) VALUES
(1, 'Eesti Kunstiakadeemia', 0),
(2, 'Eesti Maaülikool', 0),
(3, 'Eesti Muusika- ja Teatriakadeemia', 0),
(4, 'Estonian Business School', 0),
(5, 'Tallinna Tehnikaülikool', 0),
(6, 'Tallinna Ülikool', 0),
(7, 'Tartu Ülikool', 0),
(8, 'Arvutikolled?', 0),
(9, 'EELK Usuteaduse Instituut', 0),
(10, 'Eesti EKB Liit Kõrgem Usuteaduslik Seminar', 0),
(11, 'Eesti Ettevõtluskõrgkool Mainor', 0),
(12, 'Eesti Hotelli- ja Turismikõrgkool', 0),
(13, 'Eesti Infotehnoloogia Kolled?', 0),
(14, 'Eesti Lennuakadeemia', 0),
(15, 'Eesti Mereakadeemia', 0),
(16, 'Eesti Metodisti Kiriku Teoloogiline Seminar', 0),
(17, 'Euroakadeemia', 0),
(18, 'Kaitseväe Ühendatud Õppeasutused', 0),
(19, 'Lääne-Viru Rakenduskõrgkool', 0),
(20, 'Sisekaitseakadeemia', 0),
(21, 'Tallinna Tehnikakõrgkool', 0),
(22, 'Tallinna Tervishoiu Kõrgkool', 0),
(23, 'Tartu Kõrgem Kunstikool', 0),
(24, 'Tartu Tervishoiu Kõrgkool', 0),
(25, '"Edu Valem" Erakool', 0),
(26, 'Aakre Lasteaed-Algkool', 0),
(27, 'Abja Gümnaasium', 0),
(28, 'Adavere Põhikool', 0),
(29, 'Aegviidu Kool', 0),
(30, 'Ahtme Kool', 0),
(31, 'Ahula Lasteaed - Algkool', 0),
(32, 'Aidu Lasteaed-Algkool', 0),
(33, 'Ala Põhikool', 0),
(34, 'Alavere Põhikool', 0),
(35, 'Albu Põhikool', 0),
(36, 'Alu Lasteaed-Algkool', 0),
(37, 'Ambla Lasteaed-Põhikool', 0),
(38, 'Anna Haava nim Pala Kool', 0),
(39, 'Antsla Gümnaasium', 0),
(40, 'Aravete Keskkool', 0),
(41, 'Ardu Kool', 0),
(42, 'Are Põhikool', 0),
(43, 'Aruküla Põhikool', 0),
(44, 'Aruküla Vaba Waldorfkool', 0),
(45, 'Aruvälja Lasteaed-Algkool', 0),
(46, 'Aseri Keskkool', 0),
(47, 'Aste Põhikool', 0),
(48, 'Audentese Erakool', 0),
(49, 'Audentese Spordigümnaasium', 0),
(50, 'Audentese Spordigümnaasiumi Otepää filiaal', 0),
(51, 'Audru Kool', 0),
(52, 'August Kitzbergi nimeline Gümnaasium', 0),
(53, 'Avinurme Gümnaasium', 0),
(54, 'C.R.Jakobsoni nim.Torma Põhikool', 0),
(55, 'E.Vilde nim. Juuru Gümnaasium', 0),
(56, 'EBS Gümnaasium', 0),
(57, 'Eesti Rahvusvaheline Kool', 0),
(58, 'Ehte Humanitaargümnaasium', 0),
(59, 'Eidapere Kool', 0),
(60, 'Elva Gümnaasium', 0),
(61, 'Emmaste Põhikool', 0),
(62, 'Erakool Garant', 0),
(63, 'Erakool Intellekt', 0),
(64, 'Erakool Läte', 0),
(65, 'Esku-Kamari Kool', 0),
(66, 'Eurogümnaasium', 0),
(67, 'Ferdinand von Wrangelli nimeline Roela Lasteaed-Põhikool', 0),
(68, 'Friedebert Tuglase nim. Ahja Kool', 0),
(69, 'Gustav Adolfi Gümnaasium', 0),
(70, 'Haabersti Vene Gümnaasium', 0),
(71, 'Haanja Kool', 0),
(72, 'Haapsalu Linna Algkool', 0),
(73, 'Haapsalu Nikolai Kool', 0),
(74, 'Haapsalu Põhikool', 0),
(75, 'Haapsalu Täiskasvanute Gümnaasium', 0),
(76, 'Haapsalu Viigi Kool', 0),
(77, 'Hagudi Põhikool', 0),
(78, 'Haljala Gümnaasium', 0),
(79, 'Halliste Põhikool', 0),
(80, 'Hargla Kool', 0),
(81, 'Harkujärve Põhikool', 0),
(82, 'Harmi Põhikool', 0),
(83, 'Heimtali Põhikool', 0),
(84, 'Herbert Hahni Kool', 0),
(85, 'Hilariuse Kool', 0),
(86, 'Holstre Kool', 0),
(87, 'Hugo Treffneri Gümnaasium', 0),
(88, 'Hummuli Põhikool', 0),
(89, 'Häädemeeste Keskkool', 0),
(90, 'Iisaku Gümnaasium', 0),
(91, 'Illuka Kool', 0),
(92, 'Ilmatsalu Põhikool', 0),
(93, 'Imavere Põhikool', 0),
(94, 'J.V.Veski nim. Maarja Põhikool', 0),
(95, 'Jaagu Lasteaed- Põhikool', 0),
(96, 'Jakob Westholmi Gümnaasium', 0),
(97, 'Johannese Kool ja Lasteaed Rosmal', 0),
(98, 'Juhan Liivi nim. Alatskivi Keskkool', 0),
(99, 'Juurikaru Põhikool', 0),
(100, 'Jõgeva Põhikool', 0),
(101, 'Jõgeva Täiskasvanute Keskkool', 0),
(102, 'Jõgevamaa Gümnaasium', 0),
(103, 'Jõhvi Gümnaasium', 0),
(104, 'Jõhvi Vene Gümnaasium', 0),
(105, 'Jõõpre Kool', 0),
(106, 'Jäneda Kool', 0),
(107, 'Järva-Jaani Gümnaasium', 0),
(108, 'Järvakandi Gümnaasium', 0),
(109, 'Jüri Gümnaasium', 0),
(110, 'Kaagvere Erikool', 0),
(111, 'Kaali Kool', 0),
(112, 'Kaarli Kool', 0),
(113, 'Kabala Kool-Lasteaed', 0),
(114, 'Kabala Lasteaed-Põhikool', 0),
(115, 'Kadrina Keskkool', 0),
(116, 'Kadrioru Saksa Gümnaasium', 0),
(117, 'Kaelase Kool', 0),
(118, 'Kahtla Lasteaed-Põhikool', 0),
(119, 'Kaiu Põhikool', 0),
(120, 'Kajamaa Kool', 0),
(121, 'Kalamaja Põhikool', 0),
(122, 'Kallaste Keskkool', 0),
(123, 'Kallavere Keskkool', 0),
(124, 'Kallemäe Kool', 0),
(125, 'Kalmetu Põhikool', 0),
(126, 'Kambja Põhikool', 0),
(127, 'Kammeri Kool', 0),
(128, 'Kanepi Gümnaasium', 0),
(129, 'Karjamaa Gümnaasium', 0),
(130, 'Kasari Kool', 0),
(131, 'Kauksi Põhikool', 0),
(132, 'Kavastu Algkool-Lasteaed', 0),
(133, 'Keeni Põhikool', 0),
(134, 'Kehra Gümnaasium', 0),
(135, 'Kehtna Põhikool', 0),
(136, 'Keila Kool', 0),
(137, 'Keila Ühisgümnaasium', 0),
(138, 'Keila-Joa Sanatoorne Internaatkool', 0),
(139, 'Kergu Lasteaed-Algkool', 0),
(140, 'Kernu Põhikool', 0),
(141, 'Kihelkonna Kool', 0),
(142, 'Kihnu Kool', 0),
(143, 'Kiigemetsa Kool', 0),
(144, 'Kiili Gümnaasium', 0),
(145, 'Kildu Põhikool', 0),
(146, 'Kilingi-Nõmme Gümnaasium', 0),
(147, 'Kiltsi Põhikool', 0),
(148, 'Kirivere Põhikool', 0),
(149, 'Kivi-Vigala Põhikool', 0),
(150, 'Kiviõli 1. Keskkool', 0),
(151, 'Kiviõli Vene Kool', 0),
(152, 'Klooga Kool', 0),
(153, 'Kodila Põhikool', 0),
(154, 'Koeru Keskkool', 0),
(155, 'Kohila Gümnaasium', 0),
(156, 'Kohtla-Järve Ahtme Gümnaasium', 0),
(157, 'Kohtla-Järve Järve Gümnaasium', 0),
(158, 'Kohtla-Järve Järve Vene Gümnaasium', 0),
(159, 'Kohtla-Järve Kesklinna Põhikool', 0),
(160, 'Kohtla-Järve Maleva Põhikool', 0),
(161, 'Kohtla-Järve Slaavi Põhikool', 0),
(162, 'Kohtla-Järve Tammiku Põhikool', 0),
(163, 'Kohtla-Järve Täiskasvanute Gümnaasium', 0),
(164, 'Kohtla-Nõmme Kool', 0),
(165, 'Koigi Kool', 0),
(166, 'Kolga Keskkool', 0),
(167, 'Kolga-Jaani Põhikool', 0),
(168, 'Kolkja Põhikool', 0),
(169, 'Konguta Kool', 0),
(170, 'Koonga Põhikool', 0),
(171, 'Kose Gümnaasium', 0),
(172, 'Kosejõe Kool', 0),
(173, 'Kose-Uuemõisa Lasteaed-Kool', 0),
(174, 'Kostivere Kool', 0),
(175, 'Krabi Põhikool', 0),
(176, 'Krootuse Põhikool', 0),
(177, 'Kuimetsa Algkool', 0),
(178, 'Kuldre Kool', 0),
(179, 'Kullamaa Keskkool', 0),
(180, 'Kunda Ühisgümnaasium', 0),
(181, 'Kuremaa Lasteaed-Algkool', 0),
(182, 'Kuressaare Gümnaasium', 0),
(183, 'Kuressaare Täiskasvanute Gümnaasium', 0),
(184, 'Kuressaare Vanalinna Kool', 0),
(185, 'Kurtna Kool', 0),
(186, 'Kuusalu Keskkool', 0),
(187, 'Kuuste Kool', 0),
(188, 'Kõmsi Lasteaed-Algkool', 0),
(189, 'Kõpu Internaatkool', 0),
(190, 'Kõpu Põhikool', 0),
(191, 'Kõrveküla Põhikool', 0),
(192, 'Käina Gümnaasium', 0),
(193, 'Käo Põhikool', 0),
(194, 'Kärdla Ühisgümnaasium', 0),
(195, 'Kärla Põhikool', 0),
(196, 'Kärstna Kool', 0),
(197, 'Käru Põhikool', 0),
(198, 'Kääpa Põhikool', 0),
(199, 'Laagri Kool', 0),
(200, 'Laekvere Põhikool', 0),
(201, 'Laeva Põhikool', 0),
(202, 'Lagedi Lasteaed-Põhikool', 0),
(203, 'Lahmuse Kool', 0),
(204, 'Lahu Algkool', 0),
(205, 'Laiuse Põhikool', 0),
(206, 'Lasila Põhikool', 0),
(207, 'Lasnamäe Gümnaasium', 0),
(208, 'Lasnamäe Põhikool', 0),
(209, 'Lasnamäe Vene Gümnaasium', 0),
(210, 'Lasnamäe Üldgümnaasium', 0),
(211, 'Lauka Põhikool', 0),
(212, 'Laulasmaa Kool', 0),
(213, 'Laupa Põhikool', 0),
(214, 'Lavassaare Lasteaed-Algkool', 0),
(215, 'Lehola Kool', 0),
(216, 'Lehtse Kool', 0),
(217, 'Leie Põhikool', 0),
(218, 'Leisi Keskkool', 0),
(219, 'Libatse Lasteaed-Algkool', 0),
(220, 'Lihula Gümnaasium', 0),
(221, 'Lindi Lasteaed-Algkool', 0),
(222, 'Lohusuu Kool', 0),
(223, 'Loksa Gümnaasium', 0),
(224, 'Loo Keskkool', 0),
(225, 'Lustivere Põhikool', 0),
(226, 'Luua Algkool', 0),
(227, 'Luunja Keskkool', 0),
(228, 'Lõpe Põhikool', 0),
(229, 'Lähte Ühisgümnaasium', 0),
(230, 'Läänemaa Ühisgümnaasium', 0),
(231, 'Lüganuse Keskkool', 0),
(232, 'Lüllemäe Põhikool', 0),
(233, 'Lümanda Põhikool', 0),
(234, 'Maardu Gümnaasium', 0),
(235, 'Maardu Põhikool', 0),
(236, 'Maidla Kool', 0),
(237, 'Mammaste Lasteaed ja Kool', 0),
(238, 'Martna Põhikool', 0),
(239, 'Massiaru Algkool', 0),
(240, 'Mattiase Põhikool', 0),
(241, 'Mehikoorma Põhikool', 0),
(242, 'Melliste Algkool-Lasteaed', 0),
(243, 'Meremäe Kool', 0),
(244, 'Merivälja Kool', 0),
(245, 'Metsapoole Põhikool', 0),
(246, 'Metsküla Algkool', 0),
(247, 'Mihkli Kool', 0),
(248, 'Miina Härma Gümnaasium', 0),
(249, 'Mikitamäe Kool', 0),
(250, 'Misso Kool', 0),
(251, 'Mooste Põhikool', 0),
(252, 'MTÜ Kool 21.sajandil Haabersti Vene Eragümnaasium', 0),
(253, 'Muhu Põhikool', 0),
(254, 'Mustjala Lasteaed-Põhikool', 0),
(255, 'Mustvee Gümnaasium', 0),
(256, 'Mustvee Vene Gümnaasium', 0),
(257, 'Muuga Põhikool', 0),
(258, 'Mõisaküla Kool', 0),
(259, 'Mõniste Kool', 0),
(260, 'Mäetaguse Põhikool', 0),
(261, 'Märjamaa Gümnaasium', 0),
(262, 'Narva 6. Kool', 0),
(263, 'Narva Eesti Gümnaasium', 0),
(264, 'Narva Humanitaargümnaasium', 0),
(265, 'Narva Kesklinna Gümnaasium', 0),
(266, 'Narva Kreenholmi Gümnaasium', 0),
(267, 'Narva Paju Kool', 0),
(268, 'Narva Peetri Kool', 0),
(269, 'Narva Pähklimäe Gümnaasium', 0),
(270, 'Narva Soldino Gümnaasium', 0),
(271, 'Narva Täiskasvanute Kool', 0),
(272, 'Narva Vanalinna Riigikool', 0),
(273, 'Narva Õigeusu Humanitaarkool', 0),
(274, 'Narva-Jõesuu Keskkool', 0),
(275, 'Neeme Kool', 0),
(276, 'Nissi Põhikool', 0),
(277, 'Noarootsi Gümnaasium', 0),
(278, 'Noarootsi Kool', 0),
(279, 'Nurme Kool', 0),
(280, 'Nõmme Erakool', 0),
(281, 'Nõo Põhikool', 0),
(282, 'Nõo Reaalgümnaasium', 0),
(283, 'Nõva Kool', 0),
(284, 'Olustvere Põhikool', 0),
(285, 'Orava Põhikool', 0),
(286, 'Orissaare Gümnaasium', 0),
(287, 'Oru Kool', 0),
(288, 'Oru Põhikool', 0),
(289, 'Oskar Lutsu Palamuse Gümnaasium', 0),
(290, 'Osula Põhikool', 0),
(291, 'Otepää Gümnaasium', 0),
(292, 'Padise Põhikool', 0),
(293, 'Paide Gümnaasium', 0),
(294, 'Paide Täiskasvanute Keskkool', 0),
(295, 'Paide Valla Lasteaed-Kool', 0),
(296, 'Paide Ühisgümnaasium', 0),
(297, 'Paikuse Põhikool', 0),
(298, 'Paistu Kool', 0),
(299, 'Palade Põhikool', 0),
(300, 'Paldiski Põhikool', 0),
(301, 'Paldiski Vene Põhikool', 0),
(302, 'Paldiski Ühisgümnaasium', 0),
(303, 'Palivere Põhikool', 0),
(304, 'Palupera Põhikool', 0),
(305, 'Parksepa Keskkool', 0),
(306, 'Peetri Kool', 0),
(307, 'Peetri Lasteaed-Põhikool', 0),
(308, 'Pelgulinna Gümnaasium', 0),
(309, 'Pihtla Kool', 0),
(310, 'Pikakannu Kool', 0),
(311, 'Pikasilla Kool', 0),
(312, 'Pikavere Lasteaed-Algkool', 0),
(313, 'Pirita Majandusgümnaasium', 0),
(314, 'Pisisaare Algkool', 0),
(315, 'Porkuni kool', 0),
(316, 'Prangli Põhikool', 0),
(317, 'Puhja Gümnaasium', 0),
(318, 'Puiatu Lasteaed-Kool', 0),
(319, 'Puiga Põhikool', 0),
(320, 'Puka Keskkool', 0),
(321, 'Puurmani Mõisakool', 0),
(322, 'Põltsamaa Ühisgümnaasium', 0),
(323, 'Põlula Kool', 0),
(324, 'Põlva Keskkool', 0),
(325, 'Põlva Ühisgümnaasium', 0),
(326, 'Pärnjõe Põhikool', 0),
(327, 'Pärnu Hansagümnaasium', 0),
(328, 'Pärnu Koidula Gümnaasium', 0),
(329, 'Pärnu Kuninga Tänava Põhikool', 0),
(330, 'Pärnu Raeküla Kool', 0),
(331, 'Pärnu Rääma Põhikool', 0),
(332, 'Pärnu Sütevaka Humanitaargümnaasium', 0),
(333, 'Pärnu Toimetulekukool', 0),
(334, 'Pärnu Täiskasvanute Gümnaasium', 0),
(335, 'Pärnu Vabakool', 0),
(336, 'Pärnu Vanalinna Põhikool', 0),
(337, 'Pärnu Vene Gümnaasium', 0),
(338, 'Pärnu Ühisgümnaasium', 0),
(339, 'Pärnu Ülejõe Gümnaasium', 0),
(340, 'Pärnu-Jaagupi Gümnaasium', 0),
(341, 'Püha Johannese Kool', 0),
(342, 'Püha Miikaeli Kool', 0),
(343, 'Püha Miikaeli Kool (Kohila)', 0),
(344, 'Pühajärve Põhikool', 0),
(345, 'Püünsi Kool', 0),
(346, 'Raasiku Põhikool', 0),
(347, 'Raikküla Kool', 0),
(348, 'Rakke Gümnaasium', 0),
(349, 'Rakvere Eragümnaasium', 0),
(350, 'Rakvere Gümnaasium', 0),
(351, 'Rakvere Lille Kool', 0),
(352, 'Rakvere Põhikool', 0),
(353, 'Rakvere Reaalgümnaasium', 0),
(354, 'Rakvere Täiskasvanute Gümnaasium', 0),
(355, 'Rakvere Vanalinna Kool', 0),
(356, 'Ramsi Lasteaed-Kool', 0),
(357, 'Rannu Kool', 0),
(358, 'Rapla Täiskasvanute Gümnaasium', 0),
(359, 'Rapla Vesiroosi Gümnaasium', 0),
(360, 'Rapla Ühisgümnaasium', 0),
(361, 'Retla Kool', 0),
(362, 'Ridala Põhikool', 0),
(363, 'Riidaja Põhikool', 0),
(364, 'Risti Põhikool', 0),
(365, 'Risti Põhikool (Harju)', 0),
(366, 'Ristiku Põhikool', 0),
(367, 'Ritsu Lasteaed-Algkool', 0),
(368, 'Rocca al Mare Kool', 0),
(369, 'Roosi Kool', 0),
(370, 'Roosna-Alliku Põhikool', 0),
(371, 'Ruhnu Põhikool', 0),
(372, 'Ruila Põhikool', 0),
(373, 'Ruusa Põhikool', 0),
(374, 'Rõngu Keskkool', 0),
(375, 'Rõuge Põhikool', 0),
(376, 'Räpina Ühisgümnaasium', 0),
(377, 'Saaremaa Ühisgümnaasium', 0),
(378, 'Saarepeedi Kool', 0),
(379, 'Sadala Põhikool', 0),
(380, 'Sakala Eragümnaasium', 0),
(381, 'Saku Gümnaasium', 0),
(382, 'Salla Põhikool', 0),
(383, 'Salme Põhikool', 0),
(384, 'Salu Kool', 0),
(385, 'Saue Gümnaasium', 0),
(386, 'Sauga Põhikool', 0),
(387, 'Saverna Põhikool', 0),
(388, 'Seljametsa Lasteaed-Algkool', 0),
(389, 'Siimusti Lasteaed-Algkool', 0),
(390, 'Sillamäe Eesti Põhikool', 0),
(391, 'Sillamäe Gümnaasium', 0),
(392, 'Sillamäe Kannuka Kool', 0),
(393, 'Sillamäe Vanalinna Kool', 0),
(394, 'Sillaotsa Kool', 0),
(395, 'Simuna Kool', 0),
(396, 'Sindi Gümnaasium', 0),
(397, 'Sinimäe Põhikool', 0),
(398, 'Sonda Kool', 0),
(399, 'Suigu Lasteaed-Algkool', 0),
(400, 'Suislepa Lasteaed-Algkool', 0),
(401, 'Surju Põhikool', 0),
(402, 'Suure-Jaani Gümnaasium', 0),
(403, 'Suuremõisa Lasteaed-Põhikool', 0),
(404, 'Sõmerpalu Põhikool', 0),
(405, 'Sõmeru Põhikool', 0),
(406, 'Sürgavere Lasteaed-Põhikool', 0),
(407, 'Tabasalu Ühisgümnaasium', 0),
(408, 'Tabivere Gümnaasium', 0),
(409, 'Taebla Gümnaasium', 0),
(410, 'Tahkuranna Lasteaed-Algkool', 0),
(411, 'Tali Põhikool-Lasteaed', 0),
(412, 'Tallinna 21. Kool', 0),
(413, 'Tallinna 32. Keskkool', 0),
(414, 'Tallinna 37. Keskkool', 0),
(415, 'Tallinna 53. Keskkool', 0),
(416, 'Tallinna Arte Gümnaasium', 0),
(417, 'Tallinna Balletikooli üldharidusklassid', 0),
(418, 'Tallinna Euroopa Kool', 0),
(419, 'Tallinna Heleni Kool', 0),
(420, 'Tallinna Humanitaargümnaasium', 0),
(421, 'Tallinna Inglise Kolled?', 0),
(422, 'Tallinna Juhkentali Gümnaasium', 0),
(423, 'Tallinna Juudi Kool', 0),
(424, 'Tallinna Järveotsa Gümnaasium', 0),
(425, 'Tallinna Kadaka Põhikool', 0),
(426, 'Tallinna Kesklinna Põhikool', 0),
(427, 'Tallinna Kesklinna Vene Gümnaasium', 0),
(428, 'Tallinna Kivimäe Põhikool', 0),
(429, 'Tallinna Konstantin Pätsi Vabaõhukool', 0),
(430, 'Tallinna Kristiine Gümnaasium', 0),
(431, 'Tallinna Kunstigümnaasium', 0),
(432, 'Tallinna Kuristiku Gümnaasium', 0),
(433, 'Tallinna Laagna Gümnaasium', 0),
(434, 'Tallinna Laagna Lasteaed-Põhikool', 0),
(435, 'Tallinna Lilleküla Gümnaasium', 0),
(436, 'Tallinna Linnamäe Vene Lütseum', 0),
(437, 'Tallinna Läänemere Gümnaasium', 0),
(438, 'Tallinna Mahtra Gümnaasium', 0),
(439, 'Tallinna Mustamäe Gümnaasium', 0),
(440, 'Tallinna Mustamäe Humanitaargümnaasium', 0),
(441, 'Tallinna Mustamäe I Lasteaed-Algkool', 0),
(442, 'Tallinna Mustamäe Reaalgümnaasium', 0),
(443, 'Tallinna Mustjõe Gümnaasium', 0),
(444, 'Tallinna Muusikakeskkool', 0),
(445, 'Tallinna Nõmme Gümnaasium', 0),
(446, 'Tallinna Nõmme Põhikool', 0),
(447, 'Tallinna Pae Gümnaasium', 0),
(448, 'Tallinna Paekaare Gümnaasium', 0),
(449, 'Tallinna Prantsuse Lütseum', 0),
(450, 'Tallinna Pääsküla Gümnaasium', 0),
(451, 'Tallinna Rahumäe Põhikool', 0),
(452, 'Tallinna Ranniku Gümnaasium', 0),
(453, 'Tallinna Reaalkool', 0),
(454, 'Tallinna Saksa Gümnaasium', 0),
(455, 'Tallinna Sikupilli Keskkool', 0),
(456, 'Tallinna Soome Kool', 0),
(457, 'Tallinna Südalinna Kool', 0),
(458, 'Tallinna Tehnikagümnaasium', 0),
(459, 'Tallinna Tondi Põhikool', 0),
(460, 'Tallinna Toomkool', 0),
(461, 'Tallinna Tõnismäe Reaalkool', 0),
(462, 'Tallinna Täiskasvanute Gümnaasium', 0),
(463, 'Tallinna Vaba Waldorfkool', 0),
(464, 'Tallinna Vanalinna Täiskasvanute Gümnaasium', 0),
(465, 'Tallinna Õismäe Gümnaasium', 0),
(466, 'Tallinna Õismäe Vene Lütseum', 0),
(467, 'Tallinna Ühisgümnaasium', 0),
(468, 'Tamsalu Gümnaasium', 0),
(469, 'Tapa Erikool', 0),
(470, 'Tapa Gümnaasium', 0),
(471, 'Tapa Vene Gümnaasium', 0),
(472, 'Tartu Annelinna Gümnaasium', 0),
(473, 'Tartu Descartesi Lütseum', 0),
(474, 'Tartu Emajõe Kool', 0),
(475, 'Tartu Erakool', 0),
(476, 'Tartu Forseliuse Kool', 0),
(477, 'Tartu Herbert Masingu Kool', 0),
(478, 'Tartu Hiie Kool', 0),
(479, 'Tartu Jaan Poska Gümnaasium', 0),
(480, 'Tartu Karlova Gümnaasium', 0),
(481, 'Tartu Katoliku Hariduskeskus', 0),
(482, 'Tartu Kesklinna Kool', 0),
(483, 'Tartu Kivilinna Gümnaasium', 0),
(484, 'Tartu Kommertsgümnaasium', 0),
(485, 'Tartu Kristlik Põhikool', 0),
(486, 'Tartu Kroonuaia Kool', 0),
(487, 'Tartu Kunstigümnaasium', 0),
(488, 'Tartu Luterlik Peetri Kool', 0),
(489, 'Tartu Maarja Kool', 0),
(490, 'Tartu Mart Reiniku Kool', 0),
(491, 'Tartu Raatuse Kool', 0),
(492, 'Tartu Rahvusvaheline Kool', 0),
(493, 'Tartu Tamme Gümnaasium', 0),
(494, 'Tartu Täiskasvanute Gümnaasium', 0),
(495, 'Tartu Waldorfgümnaasium', 0),
(496, 'Tartu Veeriku Kool', 0),
(497, 'Tartu Vene Lütseum', 0),
(498, 'Tarvastu Gümnaasium', 0),
(499, 'Tilsi Põhikool', 0),
(500, 'Toila Gümnaasium', 0),
(501, 'Tootsi Lasteaed-Põhikool', 0),
(502, 'Tori Põhikool', 0),
(503, 'Tornimäe Põhikool', 0),
(504, 'Tsirguliina Keskkool', 0),
(505, 'Tudu Lasteaed-Põhikool', 0),
(506, 'Tudulinna Põhikool', 0),
(507, 'Turba Gümnaasium', 0),
(508, 'Tõrva Gümnaasium', 0),
(509, 'Tõstamaa Keskkool', 0),
(510, 'Tääksi Põhikool', 0),
(511, 'Türi Põhikool', 0),
(512, 'Türi Toimetulekukool', 0),
(513, 'Türi Ühisgümnaasium', 0),
(514, 'Uhtna Põhikool', 0),
(515, 'Unipiha Algkool', 0),
(516, 'Urvaste Kool', 0),
(517, 'Uuemõisa Lasteaed-Algkool', 0),
(518, 'Uulu Põhikool', 0),
(519, 'Vaeküla Kool', 0),
(520, 'Vahenurme Lasteaed-Algkool', 0),
(521, 'Vaida Põhikool', 0),
(522, 'Vaimastvere Kool', 0),
(523, 'Vajangu Põhikool', 0),
(524, 'Valga Gümnaasium', 0),
(525, 'Valga Jaanikese Kool', 0),
(526, 'Valga Kaugõppegümnaasium', 0),
(527, 'Valga Põhikool', 0),
(528, 'Valga Vene Gümnaasium', 0),
(529, 'Valgu Põhikool', 0),
(530, 'Valguta Lasteaed- Algkool', 0),
(531, 'Valjala Põhikool', 0),
(532, 'Valtu Põhikool', 0),
(533, 'Vana-Kalamaja Täiskasvanute Gümnaasium', 0),
(534, 'Vanalinna Hariduskolleegium', 0),
(535, 'Vana-Vigala Põhikool', 0),
(536, 'Vara Põhikool', 0),
(537, 'Varbla Põhikool', 0),
(538, 'Varbola Lasteaed-Algkool', 0),
(539, 'Varstu Keskkool', 0),
(540, 'Vasalemma Põhikool', 0),
(541, 'Vasta Kool', 0),
(542, 'Vastse-Kuuste Kool', 0),
(543, 'Vastseliina Gümnaasium', 0),
(544, 'Vastseliina Internaatkool', 0),
(545, 'Vatla Põhikool', 0),
(546, 'Veltsi Lasteaed-Algkool', 0),
(547, 'Vihasoo Lasteaed-Algkool', 0),
(548, 'Viimsi Keskkool', 0),
(549, 'Viira Kool', 0),
(550, 'Viiratsi Kool', 0),
(551, 'Viljandi Gümnaasium', 0),
(552, 'Viljandi Jakobsoni Kool', 0),
(553, 'Viljandi Kaare Kool', 0),
(554, 'Viljandi Kesklinna Kool', 0),
(555, 'Viljandi Paalalinna Kool', 0),
(556, 'Viljandi Täiskasvanute Gümnaasium', 0),
(557, 'Viljandi Vaba Waldorfkool', 0),
(558, 'Viluste Põhikool', 0),
(559, 'Vinni-Pajusti Gümnaasium', 0),
(560, 'Virtsu Kool', 0),
(561, 'Vohnja Lasteaed-Algkool', 0),
(562, 'Voore Põhikool', 0),
(563, 'Vormsi Lasteaed-Põhikool', 0),
(564, 'Võhma Gümnaasium', 0),
(565, 'Võnnu Keskkool', 0),
(566, 'Võru I Põhikool', 0),
(567, 'Võru Järve Kool', 0),
(568, 'Võru Kesklinna Kool', 0),
(569, 'Võru Kreutzwaldi Gümnaasium', 0),
(570, 'Võru Täiskasvanute Gümnaasium', 0),
(571, 'Võsu Kool', 0),
(572, 'Väike-Maarja Gümnaasium', 0),
(573, 'Vändra Gümnaasium', 0),
(574, 'Värska Gümnaasium', 0),
(575, 'Vääna Mõisakool', 0),
(576, 'Vääna-Jõesuu Kool', 0),
(577, 'Väätsa Põhikool', 0),
(578, 'Õru Lasteaed-Algkool', 0),
(579, 'Ämari Põhikool', 0),
(580, 'Ämmuste Kool', 0),
(581, 'Ääsmäe Põhikool', 0),
(582, 'Ülenurme Gümnaasium', 0),
(583, 'Eesti Esimene Erakosmeetikakool', 0),
(584, 'Eesti Iluteeninduse Erakool', 0),
(585, 'G. Otsa nim Tallinna Muusikakool', 0),
(586, 'H. Elleri nim Tartu Muusikakool', 0),
(587, 'Haapsalu Kutsehariduskeskus', 0),
(588, 'Hiiumaa Ametikool', 0),
(589, 'Ida-Virumaa Kutsehariduskeskus', 0),
(590, 'Iluravi Rahvusvaheline Erakool', 0),
(591, 'Informaatika ja Arvutustehnika Kool', 0),
(592, 'Juuksurite Erakool "Maridel"', 0),
(593, 'Järvamaa Kutsehariduskeskus', 0),
(594, 'Kehtna Majandus- ja Tehnoloogiakool', 0),
(595, 'Kuressaare Ametikool', 0),
(596, 'Luua Metsanduskool', 0),
(597, 'M. I. Massaa?ikool', 0),
(598, 'Narva Kutseõppekeskus', 0),
(599, 'Olustvere Teenindus- ja Maamajanduskool', 0),
(600, 'Põltsamaa Ametikool', 0),
(601, 'Pärnu Saksa Tehnoloogiakool', 0),
(602, 'Pärnumaa Kutsehariduskeskus', 0),
(603, 'Rakvere Ametikool', 0),
(604, 'Räpina Aianduskool', 0),
(605, 'Sillamäe Kutsekool', 0),
(606, 'Tallinna Balletikool', 0),
(607, 'Tallinna Ehituskool', 0),
(608, 'Tallinna Erateeninduskool', 0),
(609, 'Tallinna Kopli Ametikool', 0),
(610, 'Tallinna Lasnamäe Mehaanikakool', 0),
(611, 'Tallinna Majanduskool', 0),
(612, 'Tallinna Polütehnikum', 0),
(613, 'Tallinna Teeninduskool', 0),
(614, 'Tallinna Transpordikool', 0),
(615, 'Tallinna Tööstushariduskeskus', 0),
(616, 'Tartu Kunstikool', 0),
(617, 'Tartu Kutsehariduskeskus', 0),
(618, 'Valgamaa Kutseõppekeskus', 0),
(619, 'Vana-Vigala Tehnika- ja Teeninduskool', 0),
(620, 'Viljandi Ühendatud Kutsekeskkool', 0),
(621, 'Võrumaa Kutsehariduskeskus', 0),
(622, 'Väike-Maarja Õppekeskus', 0);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kustutatud`
--

CREATE TABLE IF NOT EXISTS `kustutatud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` datetime DEFAULT NULL,
  `nimi` varchar(255) DEFAULT NULL,
  `aeg` text,
  `kasutaja` int(11) DEFAULT NULL,
  `kool` int(11) DEFAULT NULL,
  `klass` text,
  `kuupaev` datetime DEFAULT NULL,
  `kuupaev_lopp` datetime DEFAULT NULL,
  `pikaajaline` int(1) DEFAULT NULL,
  `kasutajagrupp` varchar(255) DEFAULT NULL,
  `periood` text,
  `markused` text,
  `oppeaine` text,
  `kinnitus` varchar(255) NOT NULL,
  `staatus` int(11) NOT NULL,
  `broneeringu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fb_filter_klass_INDEX` (`klass`(10))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `registreeritud`
--

CREATE TABLE IF NOT EXISTS `registreeritud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kooli_id` int(11) DEFAULT NULL,
  `kontaktisik` int(11) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `registreeritud_5_repeat`
--

CREATE TABLE IF NOT EXISTS `registreeritud_5_repeat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `tunnialgus` time DEFAULT NULL,
  `tunnilopp` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `registreeritud_6_repeat`
--

CREATE TABLE IF NOT EXISTS `registreeritud_6_repeat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `klassinimi` varchar(255) DEFAULT NULL,
  `kohtadearv` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `registreeritud_18_repeat`
--

CREATE TABLE IF NOT EXISTS `registreeritud_18_repeat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `perioodinimi` varchar(255) DEFAULT NULL,
  `alguskp` datetime DEFAULT NULL,
  `loppkp` datetime DEFAULT NULL,
  `aktiivne` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `samaaegsed`
--

CREATE TABLE IF NOT EXISTS `samaaegsed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alguskp` datetime NOT NULL,
  `broneeringu_id` varchar(255) NOT NULL,
  `kogus` int(11) NOT NULL,
  `kool_id` int(11) NOT NULL,
  `klass_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=312 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` datetime DEFAULT NULL,
  `test` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `test2`
--

CREATE TABLE IF NOT EXISTS `test2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nimi` varchar(255) NOT NULL,
  `kp` datetime DEFAULT NULL,
  `test` varchar(255) NOT NULL,
  `test2` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Andmete tõmmistamine tabelile `test2`
--

INSERT INTO `test2` (`id`, `nimi`, `kp`, `test`, `test2`) VALUES
(1, 'eesti keel', '2014-04-21 01:15:00', '2', '(''2014-04-24 13:31:26'', ''fas'' , 5, 203, 4, 4, ''2014-06-11 01:15:00'', ''2014-06-11 04:15:00'', 1, 13, 1),(''2014-04-24 13:31:26'', ''fas'' , 5, 203, 4, 4, ''2014-06-18 01:15:00'', ''2014-06-18 04:15:00'', 1, 13, 1),(''2014-04-24 13:31:26'', ''fas'' , 5, 203, 4, 4, ''2014-06-25 01:15:00'', ''2014-06-25 04:15:00'', 1, 13, 1),(''2014-04-24 13:31:26'', ''fas'' , 5, 203, 4, 4, ''2014-07-02 01:15:00'', ''2014-07-02 04:15:00'', 1, 13, 1),(''2014-04-24 13:31:26'', ''fas'' , 5, 203, 4, 4, ''2014-07-09 01:15:00'', ''2014-07-09 04:15:00'', 1, 13, 1),(''2014-04-24 13:31:26'', ''fas'' , 5, 203, 4, 4, ''2014-07-16 01:15:00'', ''2014-07-16 04:15:00'', 1, 13, 1),(''2014-04-24 13:31:26'', ''fas'' , 5, 203, 4, 4, ''2014-07-23 01:15:00'', ''2014-07-23 04:15:00'', 1, 13, 1),(''2014-04-24 13:31:26'', ''fas'' , 5, 203, 4, 4, ''2014-07-30 01:15:00'', ''2014-07-30 04:15:00'', 1, 13, 1)'),
(2, '1', '2014-04-21 01:15:00', '2', ''),
(3, '13', NULL, '4', ''),
(4, '01:15:00 - 04:15:00', NULL, '4', ''),
(5, '01:15:00', NULL, '04:15:00', ''),
(6, '01', NULL, '15', ''),
(7, '24-04-2014', NULL, '15', ''),
(8, '', NULL, '15', ''),
(9, '2014-03-31 01:15:00', NULL, '15', ''),
(10, '2014-04-24 01:15:00', NULL, '15', ''),
(11, '2014-04-24 01:15:00', NULL, '15', ''),
(12, '2014-04-24 01:15:00', NULL, '2014-04-24 04:15:00', ''),
(13, '2014-04-21 01:15:00', '2014-04-21 00:00:00', '', ''),
(14, '2014-04-21 01:15:00', '2014-04-21 04:15:00', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
