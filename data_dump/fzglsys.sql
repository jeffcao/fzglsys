-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2015-04-21 11:34:15
-- 服务器版本： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fzglsys`
--
CREATE DATABASE IF NOT EXISTS `fzglsys` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `fzglsys`;

-- --------------------------------------------------------

--
-- 表的结构 `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
CREATE TABLE IF NOT EXISTS `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
CREATE TABLE IF NOT EXISTS `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
CREATE TABLE IF NOT EXISTS `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
CREATE TABLE IF NOT EXISTS `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
CREATE TABLE IF NOT EXISTS `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
CREATE TABLE IF NOT EXISTS `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('10f25ff1-1e72-f08d-4dd8-5529d53c12a1', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('11549a38-0756-1f84-c80d-5529d51d745e', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('115a01a4-fe85-5e5a-83d4-5529d5ce2e27', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('11a71669-75a3-cbfc-646a-5529d5590610', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('1210230c-6d5c-e8e2-31d6-5529d5883c24', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('189f06f5-9bfa-4382-68d7-5529d5a847a4', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'Contacts', 'module', 90, 0),
('198d9ae7-e1da-5821-3597-5529d55c8082', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('19f11617-043a-5199-8795-5529d54af280', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('1d6f0898-6f99-de8c-7112-5529d5a34eac', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'Contacts', 'module', 90, 0),
('223c0fab-9cbe-8979-e605-5529d5c07e3f', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('23559b4c-ad60-f7a1-4218-5529d5d13099', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'Prospects', 'module', 89, 0),
('23bd8fbe-e051-cf32-6aeb-5529d52a400f', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'Prospects', 'module', 90, 0),
('23d6d28d-6000-7b66-1614-5529d50d4ffd', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('242c7339-aa2f-5549-2298-5529d57f67b4', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'Prospects', 'module', 90, 0),
('2437349d-a6bb-5f90-20d5-5529d52d9337', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('248481da-dc55-fb9c-3715-5529d5910fab', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('24dcc105-1ed9-0cb1-2580-5529d5e75c53', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('2529af16-845d-93b0-2879-5529d5149982', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('252d419d-b4c8-5e25-f6d6-5529d59cbdb3', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('257d4986-4401-9bd7-2b6b-5529d5927c75', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'Prospects', 'module', 90, 0),
('257e0ee1-2ca6-2f21-6a14-5529d5b0576c', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('25cc3881-64b7-568d-985e-5529d5b274a3', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('25ccbebf-f928-39e9-c4a6-5529d5043e7e', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'Prospects', 'module', 90, 0),
('26179860-eb83-4674-619b-5529d529fc9c', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('3091cf20-2d0b-1296-3de9-5529d5c14273', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'Bugs', 'module', 89, 0),
('30fa63ac-4adb-f5df-27db-5529d5db9e2a', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'Bugs', 'module', 90, 0),
('315a3bfd-799c-7cc8-c71e-5529d5ea61f8', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'Bugs', 'module', 90, 0),
('320f7724-8de8-1832-6d90-5529d57106ff', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('326d2ca2-f6ce-2d89-df75-5529d55cfeeb', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('32bf5e2c-0900-2b59-23b2-5529d54692a4', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'Bugs', 'module', 90, 0),
('393e5578-e708-52ec-e331-5529d531d7e6', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'Project', 'module', 89, 0),
('39acca9b-01de-70e1-59c2-5529d54eb92e', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'Project', 'module', 90, 0),
('3a096cb9-e434-615d-3616-5529d5596bb3', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'Project', 'module', 90, 0),
('3aa06a84-f79d-b8a0-3e8e-5529d5658922', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'Project', 'module', 90, 0),
('3c4d84f5-ca79-c75c-7c79-5529dc2392c8', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'access', 'fzgls_hezuo_waibu_qudao', 'module', 89, 0),
('3cbd2a59-85f7-78f2-7116-5529dc5aeb2d', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'view', 'fzgls_hezuo_waibu_qudao', 'module', 90, 0),
('3e1eee0c-1d2c-b9a1-d85d-5529d5d1fa0f', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'Bugs', 'module', 90, 0),
('3e5e7ed3-efba-56b1-1a88-5529d5040851', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('3e834f8f-821f-0c05-a396-5529d5119bef', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('3ec1383d-6e02-6c6b-e59e-5529d522cdde', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('3ee5cf30-8806-ef65-8443-5529dcc63166', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'access', 'fzgls_employer_info', 'module', 89, 0),
('3f1182ca-b322-9c42-0c29-5529d50f865c', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('3f593a4a-b073-97a3-d337-5529dc885014', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'view', 'fzgls_employer_info', 'module', 90, 0),
('3f67f79e-edae-fc01-2ee8-5529d5b38336', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('40068e47-8561-0ff6-1441-5529d599f284', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('40582e0e-9896-4260-bc5f-5529d544fdb4', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('40b4dce1-756a-96dd-801a-5529d541aff3', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('41e114a4-212c-629f-e198-5529dccebe1b', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'access', 'fzgls_jsjg_base_info', 'module', 89, 0),
('428b830c-47b5-2968-8c7d-5529dc04413c', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'view', 'fzgls_jsjg_base_info', 'module', 90, 0),
('43167880-3282-9a83-d9ac-5529dc66aa0d', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'list', 'fzgls_jsjg_base_info', 'module', 90, 0),
('43852f9f-662f-1c6b-c7a5-5529dc0dbb06', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'edit', 'fzgls_jsjg_base_info', 'module', 90, 0),
('43e13a8f-42a8-7512-635e-5529dc9e9379', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'delete', 'fzgls_jsjg_base_info', 'module', 90, 0),
('43e86ea0-95d3-b02d-22a8-5529dc5a7257', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'list', 'fzgls_employer_info', 'module', 90, 0),
('44397b4a-0868-6f7b-5f1c-5529dc9a664d', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'import', 'fzgls_jsjg_base_info', 'module', 90, 0),
('4453414e-d10e-9a8c-2c66-5529dcdec2bc', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'edit', 'fzgls_employer_info', 'module', 90, 0),
('448fd85c-f64b-09e8-dc18-5529dcad89c3', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'export', 'fzgls_jsjg_base_info', 'module', 90, 0),
('44af1204-7ff2-dcea-bf4c-5529dc14a392', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'delete', 'fzgls_employer_info', 'module', 90, 0),
('45669e98-d6d9-321f-2550-5529dc3f9078', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'import', 'fzgls_employer_info', 'module', 90, 0),
('45c1686a-3ec4-7d37-3624-5529dc82ec4c', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'export', 'fzgls_employer_info', 'module', 90, 0),
('4628eff2-3e31-6544-3be9-5529dce3ed51', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'massupdate', 'fzgls_employer_info', 'module', 90, 0),
('46c8c258-aefa-88ad-d5dd-5529dc0f2b18', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'list', 'fzgls_hezuo_waibu_qudao', 'module', 90, 0),
('47383435-c33d-8a11-240b-5529dc93fde5', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'edit', 'fzgls_hezuo_waibu_qudao', 'module', 90, 0),
('492197eb-f58f-43d2-f6c7-5529d5b74270', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'Project', 'module', 90, 0),
('49826160-d5d7-9cc8-c0eb-5529d5980d21', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'Project', 'module', 90, 0),
('499feacb-64c8-026c-d0bb-5529d555f2ba', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'Meetings', 'module', 89, 0),
('49cde764-b7e1-3541-cccb-5529d5fe0b94', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'Project', 'module', 90, 0),
('4a109bc3-3d02-81ea-9bf7-5529d5900345', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'Meetings', 'module', 90, 0),
('4a1c5b44-cd03-d2e2-d978-5529d5feaf59', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('4a6ccec3-eaa5-e022-0d05-5529d5e38a92', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'Meetings', 'module', 90, 0),
('4bec4fe0-976a-ce4f-5f4d-5529d5cb14fd', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('4c4a7ea4-8d63-200d-137a-5529dc181600', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'delete', 'fzgls_hezuo_waibu_qudao', 'module', 90, 0),
('4c633a88-1480-7e47-7b3c-5529dc0f420b', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'massupdate', 'fzgls_jsjg_base_info', 'module', 90, 0),
('4f067c04-4268-683a-d692-5529d5d8a043', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('4f67f2fa-981b-986a-2f0e-5529d54e8020', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('4fbb738f-add9-7593-27d8-5529d5300bbb', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'Meetings', 'module', 90, 0),
('506983ae-f3ef-dfae-ea06-5529d598b1f4', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'Meetings', 'module', 90, 0),
('50e23e11-daf4-8e12-4eaa-5529d54d466c', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('57201c78-aaf5-0266-9062-5529dc62afeb', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'import', 'fzgls_hezuo_waibu_qudao', 'module', 90, 0),
('578ee146-a99e-c29a-be85-5529dc8aa74a', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'export', 'fzgls_hezuo_waibu_qudao', 'module', 90, 0),
('57e94707-1e37-ffdb-319d-5529dcbbe18a', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'massupdate', 'fzgls_hezuo_waibu_qudao', 'module', 90, 0),
('5af00108-3157-302a-c02c-5529d5dc277b', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'Contacts', 'module', 90, 0),
('64682631-c851-9416-8e68-5529d5e04a41', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('652e6a77-7b3c-8451-2361-5529d54e4638', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('65a449c2-3328-1d3a-00a7-5529d547e05d', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('66079bc5-2ffa-4827-e263-5529d53c27f5', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('665b793d-cc20-cce7-5fec-5529d5cf3516', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('66a6060a-f127-e095-17a2-5529d5c9b42f', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('67125ba1-1552-28a4-6ff4-5529d5968c16', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('6766007f-d5d7-cc63-0b3b-5529d58b72e6', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('6a817245-d8f0-699b-3f72-5529d572041b', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'Notes', 'module', 89, 0),
('6ae79308-eebe-1f12-2443-5529d5d6f3a6', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'Notes', 'module', 90, 0),
('6b3d17ad-2348-236e-6ad8-5529d5f6f53c', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'Notes', 'module', 90, 0),
('6c011e02-b0d6-0e68-e913-5529d573cf57', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'Notes', 'module', 90, 0),
('6c608597-72ab-3b19-687a-5529d5638df9', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'Notes', 'module', 90, 0),
('6caeae55-9c05-cffd-014d-5529d58caa2f', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'Notes', 'module', 90, 0),
('6d02559d-7795-fbe8-dc32-5529d575acf0', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'Notes', 'module', 90, 0),
('705fa6ed-8951-0e6d-32d2-5529d7fda679', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'access', 'asol_Process', 'module', 89, 0),
('70e18968-56ad-0210-eef4-5529d7ba2c9b', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'view', 'asol_Process', 'module', 90, 0),
('713e6ea2-ec20-b9f8-accd-5529d784aadb', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'list', 'asol_Process', 'module', 90, 0),
('71996e30-049e-f90f-47bf-5529d7cbdc53', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'edit', 'asol_Process', 'module', 90, 0),
('71eecbd5-a0ad-bf5b-22ac-5529d7effdbf', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'delete', 'asol_Process', 'module', 90, 0),
('726a2b0c-ad41-625c-7dea-5529d75612ff', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'import', 'asol_Process', 'module', 90, 0),
('72c4f4b0-165e-dfb7-a362-5529d74017ca', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'export', 'asol_Process', 'module', 90, 0),
('755fa21e-8e3d-120e-9b14-5529d587eb82', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('7661045b-172d-c5c1-9726-5529d57df6af', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'Leads', 'module', 90, 0),
('7a0ceb19-2c0b-c33f-27bb-5529d738de7e', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'massupdate', 'asol_Process', 'module', 90, 0),
('7bae6545-0722-52a2-755d-5529d551f247', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'Accounts', 'module', 89, 0),
('7ca00c60-d3d4-cf0e-c612-5529d50060ff', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'Leads', 'module', 90, 0),
('7d55883f-ed9e-5ed2-2ae3-5529d7332962', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'access', 'asol_Events', 'module', 89, 0),
('7f71c348-1d37-7d42-101b-5529d7392af2', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'view', 'asol_Events', 'module', 90, 0),
('7fd33c6b-aae4-8104-ad8e-5529d77f4e75', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'list', 'asol_Events', 'module', 90, 0),
('802b38cd-20a8-56db-2412-5529d7a8553a', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'edit', 'asol_Events', 'module', 90, 0),
('80e05d9b-7b00-b962-0ebc-5529d75228ca', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'delete', 'asol_Events', 'module', 90, 0),
('813d5512-dca7-2c9a-e17d-5529d77598d1', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'import', 'asol_Events', 'module', 90, 0),
('81980b3f-9b22-a939-e26c-5529d73b0cc9', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'export', 'asol_Events', 'module', 90, 0),
('81c50dfd-11c6-4a45-9000-5529d5fe0357', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'Leads', 'module', 90, 0),
('81ed7c70-6587-c568-8a69-5529d7fa2b90', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'massupdate', 'asol_Events', 'module', 90, 0),
('855af3a1-e543-b7dc-72ce-5529d50569ad', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'Accounts', 'module', 90, 0),
('85c1ad14-c2ef-11be-0387-5529d5365329', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'Accounts', 'module', 90, 0),
('877e0977-86bd-4f8f-b1fe-5529d545ec05', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'Leads', 'module', 90, 0),
('8ab6f29f-2348-6638-23c6-5529d5e4a06f', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('8b0f1337-b72d-0f16-b0e2-5529d5c52c07', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('8b64a2f1-c021-c7f7-54cf-5529d50c401f', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'Accounts', 'module', 90, 0),
('8c2957bf-1ede-0d70-d09e-5529d5dc81c4', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'Accounts', 'module', 90, 0),
('8c6873e5-9159-5be9-c8cf-5529dce51a97', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'access', 'fzgls_bumeng_mataine', 'module', 89, 0),
('8c8e2a8b-3195-fe48-b741-5529d5069b01', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('8d36cf8f-d0b2-2e10-25c0-5529d749ff10', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'access', 'asol_Activity', 'module', 89, 0),
('8db0531e-cd08-b5a8-57d8-5529d777fa71', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'view', 'asol_Activity', 'module', 90, 0),
('8f2d0a8f-8c43-78b0-cec7-5529d51edecc', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('92e79c4c-f60b-f95d-33fe-5529d548136c', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'Tasks', 'module', 89, 0),
('934a6303-a237-686e-3136-5529d5a66dfe', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'Tasks', 'module', 90, 0),
('93bca95d-403a-478c-c719-5529d58581ef', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'Tasks', 'module', 90, 0),
('948e2d31-59ad-f6a9-1c76-5529d5ea5ba7', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('94f26c21-b22a-ea00-ae13-5529d5c1ca4e', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('953c4d36-3f66-99ac-f180-5529d7704955', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'list', 'asol_Activity', 'module', 90, 0),
('95554cc0-5fa0-07af-6bf3-5529d5be8f42', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'Tasks', 'module', 90, 0),
('9576d039-6955-8381-15e3-5529dc4eed76', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'view', 'fzgls_bumeng_mataine', 'module', 90, 0),
('95a36a27-c87f-47c8-f761-5529d7291fda', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'edit', 'asol_Activity', 'module', 90, 0),
('95cbb6ea-a3de-6a30-52a1-5529d5dbebc7', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'Tasks', 'module', 90, 0),
('96031764-ba29-5939-7273-5529dc3e62d9', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'list', 'fzgls_bumeng_mataine', 'module', 90, 0),
('9605ebaf-c5f6-4f02-8180-5529d7ec7ba0', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'delete', 'asol_Activity', 'module', 90, 0),
('967abdec-6bbf-28ad-ec3f-5529dc390300', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'edit', 'fzgls_bumeng_mataine', 'module', 90, 0),
('96df2042-8cd5-345b-1b95-5529dc78f50e', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'delete', 'fzgls_bumeng_mataine', 'module', 90, 0),
('973de94f-29ee-eb60-bbdd-5529dce85843', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'import', 'fzgls_bumeng_mataine', 'module', 90, 0),
('97aca8d3-0fdf-f86c-492a-5529dc42a25e', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'export', 'fzgls_bumeng_mataine', 'module', 90, 0),
('981ccc3e-127f-b385-726d-5529dcf595b9', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'massupdate', 'fzgls_bumeng_mataine', 'module', 90, 0),
('9a4d2f27-7e51-0eac-332e-5529d5d804c8', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'Cases', 'module', 89, 0),
('9ab92d34-4738-5733-50b8-5529d5494e50', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'Cases', 'module', 90, 0),
('9b108418-6855-7615-387c-5529d5a1fa9a', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'Cases', 'module', 90, 0),
('9b92055b-4b66-2ecf-9dec-5529d54e2d9d', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'Cases', 'module', 90, 0),
('9bb8ae91-0672-f291-1113-5529d567a9ba', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'Documents', 'module', 89, 0),
('9bf77655-9d06-5e03-5f05-5529d57d4d32', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'Cases', 'module', 90, 0),
('9c21cd7b-8690-b1e0-b833-5529d5a887ad', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'Documents', 'module', 90, 0),
('9cb8f129-b171-7d8f-cd81-5529d54081f8', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'Documents', 'module', 90, 0),
('9d0c72d3-8ae9-db7f-792b-5529d5884015', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'Documents', 'module', 90, 0),
('9dc1e651-c230-413b-fd64-5529d534d1ac', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('a026d9d7-7815-9eeb-467c-5529d7cd9a17', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'import', 'asol_Activity', 'module', 90, 0),
('a0a59300-7e80-1167-9afd-5529d530c5e7', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'Documents', 'module', 90, 0),
('a0ff3cbb-9bb1-3e44-fa21-5529d5c80394', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'Documents', 'module', 90, 0),
('a14f34ce-9477-f804-769b-5529d58b3582', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'Documents', 'module', 90, 0),
('a1a315d2-17c2-ceb5-b2df-5529d560f0be', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('a2b23c02-6394-67a0-9a12-5529d549f79e', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('a3290796-c2f5-50c1-f278-5529d52bbc27', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('a382aaec-8d61-9551-df70-5529d56508a2', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('a42c7fe9-12bb-18e9-90dd-5529d5bec707', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('a47d1c06-b065-fd2f-ee2e-5529d5441d40', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('a4ccb800-f2fa-4ac3-94db-5529d55a17f4', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('a51caa09-02ff-f712-a3d1-5529d58856d0', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('a521aff5-e064-32af-1b2c-5529d5ff2e2b', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'Cases', 'module', 90, 0),
('a56b77be-e937-7bb9-2abb-5529d531574c', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('a58373b4-5f14-4d6b-fac9-5529d5af43f5', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'Cases', 'module', 90, 0),
('a583b120-9309-18fe-6d45-5529d7869c26', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'export', 'asol_Activity', 'module', 90, 0),
('a5d4e378-100c-1239-3338-5529d59fb60b', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('a5ef6b2b-55c4-8627-e9ba-5529d76017ef', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'massupdate', 'asol_Activity', 'module', 90, 0),
('a8774cb6-9cd1-77aa-cab3-5529d596d19f', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'Users', 'module', 89, 0),
('a8df4b53-fb5f-0be5-4339-5529d5f294cb', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'Users', 'module', 90, 0),
('a90ce6a9-9611-c045-4522-5529d728d9a2', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'access', 'asol_Task', 'module', 89, 0),
('a98ea64f-e3ee-3743-294a-5529d5b673e2', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'Users', 'module', 90, 0),
('a998ee12-0b5d-88b9-fceb-5529d7e63d68', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'view', 'asol_Task', 'module', 90, 0),
('aa0daddc-3fd0-1b2d-4d4d-5529d76e83ea', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'list', 'asol_Task', 'module', 90, 0),
('aa7e48b3-aec3-d362-04da-5529d7b27888', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'edit', 'asol_Task', 'module', 90, 0),
('aaff6c6b-dc42-cccc-6285-5529d79f9116', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'delete', 'asol_Task', 'module', 90, 0),
('ab4a424a-d1be-297e-1695-5529d5b4d956', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'Calls', 'module', 89, 0),
('ab7b89ef-431c-4807-09fb-5529d72cbbb0', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'import', 'asol_Task', 'module', 90, 0),
('abafc0f1-17ca-a6e6-0d18-5529d5a04f85', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'Calls', 'module', 90, 0),
('abfe778a-174a-4ea2-71d4-5529d5c7bca4', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'Calls', 'module', 90, 0),
('ac30dcc2-6dad-91f1-5907-5529d797a9f4', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'export', 'asol_Task', 'module', 90, 0),
('ac5db119-6ee3-4c66-debe-5529d5fee316', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'Calls', 'module', 90, 0),
('acfee3f4-1a2e-7a6e-04e5-5529d567d5e4', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'Calls', 'module', 90, 0),
('ad60d689-c4dc-d0a8-9f98-5529d57a5125', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'Calls', 'module', 90, 0),
('adb53aa6-070f-14ba-b5bc-5529d5141703', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'Calls', 'module', 90, 0),
('ae039ee8-79ce-c665-d70f-5529d53da4e9', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('b0c3dd95-26b2-8d0a-cc99-5529dc624644', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'access', 'fzgls_kefu_liucheng', 'module', 89, 0),
('b0e9d3cc-4c7e-882a-d1ba-5529dc11c2ca', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'access', 'fzgls_fenggongsi_info', 'module', 89, 0),
('b140ec1b-beba-25ee-758c-5529dc7db29f', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'view', 'fzgls_kefu_liucheng', 'module', 90, 0),
('b163263e-a14e-6fb6-459e-5529dc2b9082', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'view', 'fzgls_fenggongsi_info', 'module', 90, 0),
('b1a238fe-ae71-911c-885b-5529dc13b599', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'list', 'fzgls_kefu_liucheng', 'module', 90, 0),
('b242a011-d607-973f-59ff-5529dcf7a2d1', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'edit', 'fzgls_kefu_liucheng', 'module', 90, 0),
('b299d037-fc2d-f3fc-2cae-5529dc4b96f6', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'delete', 'fzgls_kefu_liucheng', 'module', 90, 0),
('b2ecdd1f-b9b4-13a0-38b4-5529dcbd0a9e', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'import', 'fzgls_kefu_liucheng', 'module', 90, 0),
('b30ee594-698b-b00f-d90d-5529d7941eef', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'massupdate', 'asol_Task', 'module', 90, 0),
('b343f699-a415-ca02-cb0e-5529dce25ab8', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'export', 'fzgls_kefu_liucheng', 'module', 90, 0),
('b39e694c-81e5-3b6d-e01a-5529dc09c466', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'massupdate', 'fzgls_kefu_liucheng', 'module', 90, 0),
('b584d2ae-f1e9-c52a-41a5-5529d5411c19', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'Users', 'module', 90, 0),
('b5a6adb0-a576-8258-36ef-5529d7619538', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'access', 'asol_ProcessInstances', 'module', 89, 0),
('b5eff7e8-00f0-fe36-cb89-5529d56d4377', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'Users', 'module', 90, 0),
('b61b9d07-2243-eacc-9e0a-5529d7aea2ce', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'view', 'asol_ProcessInstances', 'module', 90, 0),
('b64a8889-48b2-d67c-3081-5529d5b6cc55', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'Users', 'module', 90, 0),
('b6817c4a-d595-be20-75a0-5529d792a951', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'list', 'asol_ProcessInstances', 'module', 90, 0),
('b6e632d6-85bc-a7a4-cb75-5529d50b97da', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'Users', 'module', 90, 0),
('b6e7d936-6fcf-a2a2-186f-5529d754228b', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'edit', 'asol_ProcessInstances', 'module', 90, 0),
('b7404fea-d207-8500-fae4-5529d7b43215', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'delete', 'asol_ProcessInstances', 'module', 90, 0),
('b74de017-fa08-7cb5-cc52-5529d567dcbc', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('b796347c-e70a-e32b-8f8c-5529d7133c99', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'import', 'asol_ProcessInstances', 'module', 90, 0),
('b7f24afc-a359-451c-3a24-5529d7ecf3bb', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'export', 'asol_ProcessInstances', 'module', 90, 0),
('b8493a35-44b3-8a13-4ebd-5529d7668872', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'massupdate', 'asol_ProcessInstances', 'module', 90, 0),
('bb473417-144e-921e-c553-5529d7fca1b0', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'access', 'asol_WorkingNodes', 'module', 89, 0),
('bb62231a-d4a9-783b-005c-5529dc1c74c2', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'list', 'fzgls_fenggongsi_info', 'module', 90, 0),
('bbd2e987-5e00-059f-ef94-5529dc12336e', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'edit', 'fzgls_fenggongsi_info', 'module', 90, 0),
('bed005da-9b53-36f5-e377-5529d5561e81', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('c0cd6b77-617a-d729-b316-5529dc4a9c25', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'delete', 'fzgls_fenggongsi_info', 'module', 90, 0),
('c1382dcb-98fb-5aad-9cbe-5529dc0665ce', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'import', 'fzgls_fenggongsi_info', 'module', 90, 0),
('c194e5b6-84c5-17da-c739-5529dc6b87a5', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'export', 'fzgls_fenggongsi_info', 'module', 90, 0),
('c24d9a54-ecab-9823-e303-5529dc88fe37', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'massupdate', 'fzgls_fenggongsi_info', 'module', 90, 0),
('c380776e-c65f-6602-5da7-5529d7ce4bbc', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'view', 'asol_WorkingNodes', 'module', 90, 0),
('c3f07924-c054-e38c-46ca-5529d70d22e9', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'list', 'asol_WorkingNodes', 'module', 90, 0),
('c414c32d-a095-e736-903d-5529dcebfbc2', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'access', 'fzgls_jiekuangren_dangan', 'module', 89, 0),
('c44e8c83-543f-676e-6612-5529d712e336', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'edit', 'asol_WorkingNodes', 'module', 90, 0),
('c49278e4-72f3-b222-925a-5529dca78d68', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'view', 'fzgls_jiekuangren_dangan', 'module', 90, 0),
('c4d5945c-9823-c708-71d4-5529d7367d58', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'delete', 'asol_WorkingNodes', 'module', 90, 0),
('c54b4ecb-797c-8d80-da15-5529dc206022', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'list', 'fzgls_jiekuangren_dangan', 'module', 90, 0),
('c54c812b-befe-f730-d476-5529d79cd849', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'import', 'asol_WorkingNodes', 'module', 90, 0),
('c5a78d40-dfd4-55ae-2954-5529dc11fc66', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'edit', 'fzgls_jiekuangren_dangan', 'module', 90, 0),
('c5b69fda-65bb-87d9-74f0-5529d7f568ed', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'export', 'asol_WorkingNodes', 'module', 90, 0),
('c6164fb7-3ab5-d8bc-177f-5529d766120d', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'massupdate', 'asol_WorkingNodes', 'module', 90, 0),
('cc50d778-3cdd-7098-3754-5529d79c7e55', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'access', 'asol_OnHold', 'module', 89, 0),
('cd7bcff3-1010-2ba6-6c07-5529d5ef139e', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('ce1f6c67-fafe-9e8d-a276-5529d50ee732', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('ce7456f7-8e6e-e8e1-2bf3-5529d58d09d8', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('ce8b7301-ae04-07fb-8293-5529dc8634ea', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'delete', 'fzgls_jiekuangren_dangan', 'module', 90, 0),
('cef8cf04-c156-8e5c-c985-5529dca2410a', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'import', 'fzgls_jiekuangren_dangan', 'module', 90, 0),
('cf5636bd-4c87-4c97-2fae-5529dcbc3098', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'export', 'fzgls_jiekuangren_dangan', 'module', 90, 0),
('d00106c6-bf5f-c64d-d2f0-5529dccfc9e3', '2015-04-12 02:48:01', '2015-04-12 02:48:01', '1', '1', 'massupdate', 'fzgls_jiekuangren_dangan', 'module', 90, 0),
('d0ef8d7a-8fc3-2b67-c340-5529d521f5c1', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('d15860ce-436a-0ee8-0159-5529d57707c1', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('d1aab189-b928-ea9f-7845-5529d5e64ea0', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('d25b56d8-ea3e-5b45-0b60-5529d5cda554', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('d2ac1a96-8b2d-c0c9-57af-5529d5d172cd', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('d2fc5021-3e37-3133-6df5-5529d526ccc1', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('d34bca80-d03e-16a9-f400-5529d5eceeb7', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('d398b986-c52b-bc97-afb8-5529d57970fe', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('d67fd6bf-b621-62d6-b636-5529d7407bc7', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'view', 'asol_OnHold', 'module', 90, 0),
('d6eb6be0-cdd7-5fa3-3ede-5529d705e029', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'list', 'asol_OnHold', 'module', 90, 0),
('d7429cdb-6685-902f-770a-5529d7181933', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'edit', 'asol_OnHold', 'module', 90, 0),
('d77ffd94-bb9a-5038-3c95-5529d5fb1fd8', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('d7e5dfb5-511d-41cc-3313-5529d7fa82db', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'delete', 'asol_OnHold', 'module', 90, 0),
('d84548e2-6e7b-44fb-ac50-5529d71da583', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'import', 'asol_OnHold', 'module', 90, 0),
('d89b30ad-1a73-7320-2a6f-5529d7b714b3', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'export', 'asol_OnHold', 'module', 90, 0),
('d8f0edc0-319b-b541-f978-5529d7eb41c6', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'massupdate', 'asol_OnHold', 'module', 90, 0),
('dd6a59bb-399a-135c-cbca-5529d5402e0f', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'EAPM', 'module', 89, 0),
('df304328-2141-bdee-c194-5529d7b5207f', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'access', 'asol_WorkFlowManagerCommon', 'module', 89, 0),
('e51aa681-6300-1278-1a4b-5529d528eda5', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'EAPM', 'module', 90, 0),
('e57ebf51-b0bf-f1d7-5d47-5529d512429c', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'EAPM', 'module', 90, 0),
('e5d174cd-bec1-3c8d-3e31-5529d56db2d0', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('e6613538-d2fb-0572-4e26-5529d5870b8e', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('e6ad569c-d114-5a94-2357-5529d730c14f', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'view', 'asol_WorkFlowManagerCommon', 'module', 90, 0),
('e6b70c73-f49d-d204-3f5e-5529d54ce0ed', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'EAPM', 'module', 90, 0),
('e9914e1a-9fbb-74e0-f7db-5529d5928efc', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'Emails', 'module', 89, 0),
('e9f6ec17-04ba-4b96-fcdb-5529d51a6ba4', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'Emails', 'module', 90, 0),
('ea4383b0-db14-f93a-cfdd-5529d538126f', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'Emails', 'module', 90, 0),
('ec15a88e-1b46-ed35-acaf-5529d70484bd', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'list', 'asol_WorkFlowManagerCommon', 'module', 90, 0),
('ec7e299b-33b4-a7e6-6fa8-5529d7c78b8e', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'edit', 'asol_WorkFlowManagerCommon', 'module', 90, 0),
('ecd579f8-9a13-9a6d-f271-5529d76726e1', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'delete', 'asol_WorkFlowManagerCommon', 'module', 90, 0),
('ed3e4658-a800-e52f-cbdd-5529d5f8ef81', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'EAPM', 'module', 90, 0),
('ed5e0171-502b-41fd-dff0-5529d77ee88d', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'import', 'asol_WorkFlowManagerCommon', 'module', 90, 0),
('ed9cf39b-6fa2-6270-f05a-5529d53f29e0', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('edb5ea28-9d46-8a83-d0df-5529d7ace60e', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'export', 'asol_WorkFlowManagerCommon', 'module', 90, 0),
('ee079171-f7cf-2d45-5790-5529d7d565aa', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'massupdate', 'asol_WorkFlowManagerCommon', 'module', 90, 0),
('ee0b703b-4507-72cd-4d17-5529d50d3748', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'Leads', 'module', 89, 0),
('ee7d2efa-9ae5-8203-0526-5529d582bdd1', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'Leads', 'module', 90, 0),
('eed67ad3-5acd-6c44-eb61-5529d56ad88a', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'list', 'Leads', 'module', 90, 0),
('ef0850b7-8ff0-5495-e963-5529d593660e', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'edit', 'Emails', 'module', 90, 0),
('ef0c45d2-8430-5810-d586-5529d5c4c068', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'access', 'Contacts', 'module', 89, 0),
('ef743c50-99d5-83a8-8607-5529d55919a9', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'delete', 'Emails', 'module', 90, 0),
('ef770cc9-eb04-fd2f-68d7-5529d564581b', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'view', 'Contacts', 'module', 90, 0),
('efd105e3-a70b-a131-c02b-5529d5f993b4', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'import', 'Emails', 'module', 90, 0),
('f0759f63-de7c-6f9d-9323-5529d513a4a9', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'export', 'Emails', 'module', 90, 0),
('f0cb32b8-f92b-a302-5434-5529d53e4d74', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '', 'massupdate', 'Emails', 'module', 90, 0);

-- --------------------------------------------------------

--
-- 表的结构 `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
CREATE TABLE IF NOT EXISTS `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
CREATE TABLE IF NOT EXISTS `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
CREATE TABLE IF NOT EXISTS `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `address_book`
--

DROP TABLE IF EXISTS `address_book`;
CREATE TABLE IF NOT EXISTS `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `asol_activisol_activity_c`
--

DROP TABLE IF EXISTS `asol_activisol_activity_c`;
CREATE TABLE IF NOT EXISTS `asol_activisol_activity_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `asol_activ898activity_ida` varchar(36) DEFAULT NULL,
  `asol_activ9e2dctivity_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `asol_activity`
--

DROP TABLE IF EXISTS `asol_activity`;
CREATE TABLE IF NOT EXISTS `asol_activity` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `conditions` text,
  `delay` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `asol_activity_asol_task_c`
--

DROP TABLE IF EXISTS `asol_activity_asol_task_c`;
CREATE TABLE IF NOT EXISTS `asol_activity_asol_task_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `asol_activ5b86ctivity_ida` varchar(36) DEFAULT NULL,
  `asol_activf613ol_task_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `asol_activity_audit`
--

DROP TABLE IF EXISTS `asol_activity_audit`;
CREATE TABLE IF NOT EXISTS `asol_activity_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `asol_config`
--

DROP TABLE IF EXISTS `asol_config`;
CREATE TABLE IF NOT EXISTS `asol_config` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `config` varchar(255) NOT NULL DEFAULT '1|15|landscape|1|120|7|localhost/sugarcrm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `asol_config`
--

INSERT INTO `asol_config` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `config`) VALUES
('1', 'admin', '2010-01-01 00:00:00', '2015-04-13 15:12:52', '1', '1', 0, '1|15|landscape|1|120|7|localhost');

-- --------------------------------------------------------

--
-- 表的结构 `asol_events`
--

DROP TABLE IF EXISTS `asol_events`;
CREATE TABLE IF NOT EXISTS `asol_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'start',
  `trigger_type` varchar(100) DEFAULT NULL,
  `trigger_event` varchar(100) DEFAULT NULL,
  `conditions` text,
  `scheduled_tasks` text,
  `scheduled_type` varchar(100) DEFAULT NULL,
  `subprocess_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `asol_events`
--

INSERT INTO `asol_events` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `type`, `trigger_type`, `trigger_event`, `conditions`, `scheduled_tasks`, `scheduled_type`, `subprocess_type`) VALUES
('9411f076-c026-16a2-534f-552caec11450', 'Event_ 1', '2015-04-14 06:08:34', '2015-04-14 06:09:42', '1', '1', NULL, 1, '', 'start', 'logic_hook', 'on_create', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `asol_eventssol_activity_c`
--

DROP TABLE IF EXISTS `asol_eventssol_activity_c`;
CREATE TABLE IF NOT EXISTS `asol_eventssol_activity_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `asol_event87f4_events_ida` varchar(36) DEFAULT NULL,
  `asol_event8042ctivity_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `asol_events_audit`
--

DROP TABLE IF EXISTS `asol_events_audit`;
CREATE TABLE IF NOT EXISTS `asol_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `asol_events_audit`
--

INSERT INTO `asol_events_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('617306f3-0f2f-f519-086c-552cb0a2711f', '4a08f41f-1d6f-9bf7-5b28-552cb09dfd5a', '2015-04-14 06:15:22', '1', 'assigned_user_id', 'relate', NULL, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `asol_onhold`
--

DROP TABLE IF EXISTS `asol_onhold`;
CREATE TABLE IF NOT EXISTS `asol_onhold` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `asol_processinstances_id_c` char(36) DEFAULT NULL,
  `asol_workingnodes_id_c` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT 'Home',
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `asol_onhold_audit`
--

DROP TABLE IF EXISTS `asol_onhold_audit`;
CREATE TABLE IF NOT EXISTS `asol_onhold_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `asol_process`
--

DROP TABLE IF EXISTS `asol_process`;
CREATE TABLE IF NOT EXISTS `asol_process` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'inactive',
  `trigger_module` varchar(100) DEFAULT NULL,
  `alternative_database` varchar(255) DEFAULT '-1',
  `event_counter` int(11) DEFAULT '0',
  `activity_counter` int(11) DEFAULT '0',
  `task_counter` int(11) DEFAULT '0',
  `wfe_operation_counter` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `asol_processinstances`
--

DROP TABLE IF EXISTS `asol_processinstances`;
CREATE TABLE IF NOT EXISTS `asol_processinstances` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `asol_process_id_c` char(36) DEFAULT NULL,
  `bean_ungreedy_count` int(255) DEFAULT NULL,
  `asol_processinstances_id_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `asol_processinstances_audit`
--

DROP TABLE IF EXISTS `asol_processinstances_audit`;
CREATE TABLE IF NOT EXISTS `asol_processinstances_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `asol_process_asol_activity_c`
--

DROP TABLE IF EXISTS `asol_process_asol_activity_c`;
CREATE TABLE IF NOT EXISTS `asol_process_asol_activity_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `asol_process_asol_activityasol_process_ida` varchar(36) DEFAULT NULL,
  `asol_process_asol_activityasol_activity_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `asol_process_asol_events_1_c`
--

DROP TABLE IF EXISTS `asol_process_asol_events_1_c`;
CREATE TABLE IF NOT EXISTS `asol_process_asol_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `asol_process_asol_events_1asol_process_ida` varchar(36) DEFAULT NULL,
  `asol_process_asol_events_1asol_events_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `asol_process_asol_events_1_c`
--

INSERT INTO `asol_process_asol_events_1_c` (`id`, `date_modified`, `deleted`, `asol_process_asol_events_1asol_process_ida`, `asol_process_asol_events_1asol_events_idb`) VALUES
('a038fb02-8159-c235-06f0-552cafb45397', '2015-04-14 06:09:42', 1, '203b174f-6776-2fd4-ecc5-552caea28e18', '9411f076-c026-16a2-534f-552caec11450');

-- --------------------------------------------------------

--
-- 表的结构 `asol_process_asol_task_c`
--

DROP TABLE IF EXISTS `asol_process_asol_task_c`;
CREATE TABLE IF NOT EXISTS `asol_process_asol_task_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `asol_process_asol_taskasol_process_ida` varchar(36) DEFAULT NULL,
  `asol_process_asol_taskasol_task_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `asol_process_audit`
--

DROP TABLE IF EXISTS `asol_process_audit`;
CREATE TABLE IF NOT EXISTS `asol_process_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `asol_proces_asol_events_c`
--

DROP TABLE IF EXISTS `asol_proces_asol_events_c`;
CREATE TABLE IF NOT EXISTS `asol_proces_asol_events_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `asol_proce6f14process_ida` varchar(36) DEFAULT NULL,
  `asol_procea8ca_events_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `asol_proces_asol_events_c`
--

INSERT INTO `asol_proces_asol_events_c` (`id`, `date_modified`, `deleted`, `asol_proce6f14process_ida`, `asol_procea8ca_events_idb`) VALUES
('9f7882de-5992-1f7f-d526-552caeb29b0e', '2015-04-14 06:09:32', 1, '203b174f-6776-2fd4-ecc5-552caea28e18', '9411f076-c026-16a2-534f-552caec11450');

-- --------------------------------------------------------

--
-- 表的结构 `asol_task`
--

DROP TABLE IF EXISTS `asol_task`;
CREATE TABLE IF NOT EXISTS `asol_task` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `delay_type` varchar(100) DEFAULT 'no_delay',
  `delay` varchar(255) DEFAULT NULL,
  `task_type` varchar(100) DEFAULT 'send_email',
  `task_order` int(11) DEFAULT '0',
  `task_implementation` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `asol_task_audit`
--

DROP TABLE IF EXISTS `asol_task_audit`;
CREATE TABLE IF NOT EXISTS `asol_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `asol_workflowmanagercommon`
--

DROP TABLE IF EXISTS `asol_workflowmanagercommon`;
CREATE TABLE IF NOT EXISTS `asol_workflowmanagercommon` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `asol_workflowmanagercommon`
--

INSERT INTO `asol_workflowmanagercommon` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `value`) VALUES
('cleanCache', 'cleanCache', '2015-04-12 02:24:42', '2015-04-12 02:55:03', '1', '1', NULL, 0, '', 'false'),
('releaseVersion', 'releaseVersion', '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', NULL, 0, NULL, '5.1');

-- --------------------------------------------------------

--
-- 表的结构 `asol_workflowmanagercommon_audit`
--

DROP TABLE IF EXISTS `asol_workflowmanagercommon_audit`;
CREATE TABLE IF NOT EXISTS `asol_workflowmanagercommon_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `asol_workingnodes`
--

DROP TABLE IF EXISTS `asol_workingnodes`;
CREATE TABLE IF NOT EXISTS `asol_workingnodes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'start',
  `asol_processinstances_id_c` char(36) DEFAULT NULL,
  `priority` int(6) DEFAULT NULL,
  `asol_events_id_c` char(36) DEFAULT NULL,
  `asol_activity_id_c` char(36) DEFAULT NULL,
  `object_ids` longtext,
  `iter_object` int(11) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT 'Home',
  `parent_id` char(36) DEFAULT NULL,
  `asol_task_id_c` char(36) DEFAULT NULL,
  `delay_wakeup_time` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `old_bean` longtext,
  `new_bean` longtext,
  `custom_variables` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `asol_workingnodes_audit`
--

DROP TABLE IF EXISTS `asol_workingnodes_audit`;
CREATE TABLE IF NOT EXISTS `asol_workingnodes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bugs`
--

DROP TABLE IF EXISTS `bugs`;
CREATE TABLE IF NOT EXISTS `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
`bug_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
CREATE TABLE IF NOT EXISTS `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `calls`
--

DROP TABLE IF EXISTS `calls`;
CREATE TABLE IF NOT EXISTS `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
CREATE TABLE IF NOT EXISTS `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
CREATE TABLE IF NOT EXISTS `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
CREATE TABLE IF NOT EXISTS `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
CREATE TABLE IF NOT EXISTS `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
`tracker_key` int(11) NOT NULL,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
CREATE TABLE IF NOT EXISTS `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
CREATE TABLE IF NOT EXISTS `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
CREATE TABLE IF NOT EXISTS `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
`tracker_key` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cases`
--

DROP TABLE IF EXISTS `cases`;
CREATE TABLE IF NOT EXISTS `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
`case_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
CREATE TABLE IF NOT EXISTS `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
CREATE TABLE IF NOT EXISTS `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'jeffcaocom@163.com'),
('notify', 'fromname', 'fzglsys'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', '6.5.20'),
('MySettings', 'tab', 'YToyNjp7aTowO3M6MTI6ImFzb2xfUHJvY2VzcyI7aToxO3M6MjA6ImZ6Z2xzX2J1bWVuZ19tYXRhaW5lIjtpOjI7czoxOToiZnpnbHNfa2VmdV9saXVjaGVuZyI7aTozO3M6MjA6ImZ6Z2xzX2pzamdfYmFzZV9pbmZvIjtpOjQ7czo5OiJEb2N1bWVudHMiO2k6NTtzOjIzOiJmemdsc19oZXp1b193YWlidV9xdWRhbyI7aTo2O3M6ODoiTWVldGluZ3MiO2k6NztzOjE5OiJmemdsc19lbXBsb3llcl9pbmZvIjtpOjg7czo3OiJQcm9qZWN0IjtpOjk7czo0OiJCdWdzIjtpOjEwO3M6ODoiQ29udGFjdHMiO2k6MTE7czo1OiJDYXNlcyI7aToxMjtzOjU6IlRhc2tzIjtpOjEzO3M6MjE6ImZ6Z2xzX2Zlbmdnb25nc2lfaW5mbyI7aToxNDtzOjQ6IkhvbWUiO2k6MTU7czoyNDoiZnpnbHNfamlla3VhbmdyZW5fZGFuZ2FuIjtpOjE2O3M6MTM6IlByb3NwZWN0TGlzdHMiO2k6MTc7czo1OiJMZWFkcyI7aToxODtzOjY6IkVtYWlscyI7aToxOTtzOjU6Ik5vdGVzIjtpOjIwO3M6ODoiQWNjb3VudHMiO2k6MjE7czo4OiJDYWxlbmRhciI7aToyMjtzOjEzOiJPcHBvcnR1bml0aWVzIjtpOjIzO3M6OToiUHJvc3BlY3RzIjtpOjI0O3M6OToiQ2FtcGFpZ25zIjtpOjI1O3M6NToiQ2FsbHMiO30='),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('system', 'skypeout_on', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Cases', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', 'fzglsys'),
('system', 'adminwizard', '1'),
('notify', 'allow_default_outbound', '2'),
('MySettings', 'disable_useredit', 'yes'),
('MySettings', 'hide_subpanels', 'YTowOnt9');

-- --------------------------------------------------------

--
-- 表的结构 `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
CREATE TABLE IF NOT EXISTS `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
CREATE TABLE IF NOT EXISTS `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
CREATE TABLE IF NOT EXISTS `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
CREATE TABLE IF NOT EXISTS `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cron_remove_documents`
--

DROP TABLE IF EXISTS `cron_remove_documents`;
CREATE TABLE IF NOT EXISTS `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE IF NOT EXISTS `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
CREATE TABLE IF NOT EXISTS `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
CREATE TABLE IF NOT EXISTS `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
CREATE TABLE IF NOT EXISTS `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
CREATE TABLE IF NOT EXISTS `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
CREATE TABLE IF NOT EXISTS `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
CREATE TABLE IF NOT EXISTS `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `eapm`
--

DROP TABLE IF EXISTS `eapm`;
CREATE TABLE IF NOT EXISTS `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `emailman`
--

DROP TABLE IF EXISTS `emailman`;
CREATE TABLE IF NOT EXISTS `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
`id` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `emails`
--

DROP TABLE IF EXISTS `emails`;
CREATE TABLE IF NOT EXISTS `emails` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `emails`
--

INSERT INTO `emails` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `deleted`, `date_sent`, `message_id`, `name`, `type`, `status`, `flagged`, `reply_to_status`, `intent`, `mailbox_id`, `parent_type`, `parent_id`) VALUES
('962287ff-0093-3635-3379-552dda56b455', '2015-04-15 03:24:45', '2015-04-15 03:24:45', NULL, '1', '1', 0, '2015-04-15 03:24:45', NULL, 'New account information', 'archived', 'sent', NULL, NULL, 'pick', NULL, 'User', NULL),
('fffb04bb-4898-8bae-260d-552bbf5d75db', '2015-04-13 13:05:13', '2015-04-13 13:05:13', NULL, NULL, NULL, 0, '2015-04-13 13:05:13', NULL, 'Reset your account password', 'archived', 'sent', NULL, NULL, 'pick', NULL, 'User', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
CREATE TABLE IF NOT EXISTS `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
CREATE TABLE IF NOT EXISTS `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `emails_email_addr_rel`
--

INSERT INTO `emails_email_addr_rel` (`id`, `email_id`, `address_type`, `email_address_id`, `deleted`) VALUES
('5ece33fe-bfdb-45b6-2e8e-552bbf63be2f', 'fffb04bb-4898-8bae-260d-552bbf5d75db', 'from', '393f50e3-ebd5-f801-4d8c-552bbf59ea11', 0),
('ab20fd7d-4527-dce5-3351-552dda50b4be', '962287ff-0093-3635-3379-552dda56b455', 'from', '393f50e3-ebd5-f801-4d8c-552bbf59ea11', 0);

-- --------------------------------------------------------

--
-- 表的结构 `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
CREATE TABLE IF NOT EXISTS `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `emails_text`
--

INSERT INTO `emails_text` (`email_id`, `from_addr`, `reply_to_addr`, `to_addrs`, `cc_addrs`, `bcc_addrs`, `description`, `description_html`, `raw_source`, `deleted`) VALUES
('fffb04bb-4898-8bae-260d-552bbf5d75db', '', '', '', '', '', '<div><table width="550"><tbody><tr><td><p>You recently requested on 2015-04-13 13:05:13 to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> http://localhost/fzglsys/index.php?entryPoint=Changenewpassword&guid=791d5d97-3db5-2d99-6885-552bbf155f5a </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>', NULL, NULL, 0),
('962287ff-0093-3635-3379-552dda56b455', '', '', '', '', '', '<div><table width="550"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : jack </p><p>Password : a1AArk </p><br /><p>http://localhost/fzglsys</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
CREATE TABLE IF NOT EXISTS `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `email_address`, `email_address_caps`, `invalid_email`, `opt_out`, `date_created`, `date_modified`, `deleted`) VALUES
('21dd7235-4f60-f6ef-a1fa-5529d6efa601', 'jeff.cao.cn@gmail.com', 'JEFF.CAO.CN@GMAIL.COM', 0, 0, '2015-04-12 02:20:59', '2015-04-12 02:20:59', 0),
('393f50e3-ebd5-f801-4d8c-552bbf59ea11', 'jeffcaocom@163.com', 'JEFFCAOCOM@163.COM', 0, 0, '2015-04-13 13:05:13', '2015-04-13 13:05:13', 0),
('4236c719-a3d2-9324-1e5c-552bbda16972', 'jeffcao7902@163.com', 'JEFFCAO7902@163.COM', 0, 0, '2015-04-13 13:00:33', '2015-04-13 13:00:33', 0),
('89f20823-8633-f308-e158-552b83a558e5', 'mengjun@hotmail.com', 'MENGJUN@HOTMAIL.COM', 0, 0, '2015-04-13 08:51:24', '2015-04-13 08:51:24', 0);

-- --------------------------------------------------------

--
-- 表的结构 `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
CREATE TABLE IF NOT EXISTS `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `email_addr_bean_rel`
--

INSERT INTO `email_addr_bean_rel` (`id`, `email_address_id`, `bean_id`, `bean_module`, `primary_address`, `reply_to_address`, `date_created`, `date_modified`, `deleted`) VALUES
('21bd47fe-2fb4-dc7a-f645-5529d6ec8a0f', '21dd7235-4f60-f6ef-a1fa-5529d6efa601', '1', 'Users', 1, 0, '2015-04-12 02:20:59', '2015-04-12 02:20:59', 0),
('3ebaaf90-9262-9215-6c43-552bbd39e4da', '4236c719-a3d2-9324-1e5c-552bbda16972', '23d39e87-2c70-3cc2-270c-552b2baee075', 'Users', 1, 0, '2015-04-13 13:00:33', '2015-04-13 13:00:33', 0),
('45f10c23-d3d9-0079-fb16-552b8319d321', '89f20823-8633-f308-e158-552b83a558e5', '23d39e87-2c70-3cc2-270c-552b2baee075', 'Users', 1, 0, '2015-04-13 08:51:24', '2015-04-13 08:51:24', 1),
('e8a01b9c-8dfb-5de6-f640-552dd9c60d6c', '4236c719-a3d2-9324-1e5c-552bbda16972', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'Users', 1, 0, '2015-04-15 03:24:45', '2015-04-15 03:24:45', 0);

-- --------------------------------------------------------

--
-- 表的结构 `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
CREATE TABLE IF NOT EXISTS `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
CREATE TABLE IF NOT EXISTS `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
CREATE TABLE IF NOT EXISTS `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('60dc19bf-680d-b76b-a117-5529d5a68b05', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', '\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.', '<div><table width="550"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL),
('679a04ed-f982-0708-ce0c-5529d504821a', '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user''s account password.', 'Reset your account password', '\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid', '<div><table width="550"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
CREATE TABLE IF NOT EXISTS `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('fzgls_bumeng_matainebumeng_num_c', 'bumeng_num_c', 'LBL_FZGL_BUMENG_NUM', '', '', 'fzgls_bumeng_mataine', 'varchar', 255, 1, '', '2015-04-16 02:49:26', 0, 0, 0, 0, 1, 'required', '', '', '', ''),
('fzgls_bumeng_matainedizhi_c', 'dizhi_c', 'LBL_FZGLS_DIZHI', '', '', 'fzgls_bumeng_mataine', 'varchar', 255, 0, '', '2015-04-16 02:55:42', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_bumeng_matainefuzeren_name_c', 'fuzeren_name_c', 'LBL_FZGLS_FUZEREN_NAME', '', '', 'fzgls_bumeng_mataine', 'varchar', 255, 0, '', '2015-04-16 02:53:08', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_bumeng_matainefuzeren_phone_c', 'fuzeren_phone_c', 'LBL_FZGLS_FUZEREN_PHONE', '', '', 'fzgls_bumeng_mataine', 'varchar', 255, 0, '', '2015-04-16 02:53:42', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_bumeng_matainephone_c', 'phone_c', 'LBL_FZGLS_PHONE', '', '', 'fzgls_bumeng_mataine', 'varchar', 255, 0, '', '2015-04-16 02:56:07', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_bumeng_matainesuoshu_fengongsi_c', 'suoshu_fengongsi_c', 'LBL_FZGLS_SUOSHU_FENGONGSI', '', '', 'fzgls_bumeng_mataine', 'varchar', 255, 0, '', '2015-04-16 02:52:26', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_bumeng_mataineyoubian_c', 'youbian_c', 'LBL_FZGLS_YOUBIAN', '', '', 'fzgls_bumeng_mataine', 'varchar', 255, 0, '', '2015-04-16 02:54:21', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_fenggongsi_infofuzeren_name_c', 'fuzeren_name_c', 'LBL_FZGLS_FUZEREN_NAME', '', '', 'fzgls_fenggongsi_info', 'varchar', 255, 1, '', '2015-04-16 06:23:31', 0, 0, 0, 0, 1, 'required', '', '', '', ''),
('fzgls_fenggongsi_infofuzeren_phone_c', 'fuzeren_phone_c', 'LBL_FZGLS_FUZEREN_PHONE', '', '', 'fzgls_fenggongsi_info', 'varchar', 255, 1, '', '2015-04-16 06:24:13', 0, 0, 0, 0, 1, 'required', '', '', '', ''),
('fzgls_fenggongsi_infogongsi_dizhi_c', 'gongsi_dizhi_c', 'LBL_FZGLS_GONGSI_DIZHI', '', '', 'fzgls_fenggongsi_info', 'varchar', 255, 0, '', '2015-04-16 06:15:12', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_fenggongsi_infogongsi_num_c', 'gongsi_num_c', 'LBL_FZGLS_GONGSI_NUM', '', '', 'fzgls_fenggongsi_info', 'varchar', 255, 1, '', '2015-04-16 06:13:32', 0, 0, 0, 0, 1, 'required', '', '', '', ''),
('fzgls_fenggongsi_infogongsi_phone_c', 'gongsi_phone_c', 'LBL_FZGLS_GONGSI_PHONE', '', '', 'fzgls_fenggongsi_info', 'varchar', 255, 0, '', '2015-04-16 06:22:56', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_fenggongsi_infogongsi_youbian_c', 'gongsi_youbian_c', 'LBL_FZGLS_GONGSI_YOUBIAN', '', '', 'fzgls_fenggongsi_info', 'varchar', 255, 0, '', '2015-04-16 06:14:47', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_jiekuangren_danganbeiyong_lianxiren_guanxi_c', 'beiyong_lianxiren_guanxi_c', 'LBL_BEIYONG_LIANXIREN_GUANXI', '', '', 'fzgls_jiekuangren_dangan', 'varchar', 255, 0, '', '2015-04-20 01:55:53', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_jiekuangren_danganbeiyong_lianxiren_name_c', 'beiyong_lianxiren_name_c', 'LBL_BEIYONG_LIANXIREN_NAME', '', '', 'fzgls_jiekuangren_dangan', 'varchar', 255, 0, '', '2015-04-20 01:54:35', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_jiekuangren_danganbeiyong_lianxiren_phone_c', 'beiyong_lianxiren_phone_c', 'LBL_BEIYONG_LIANXIREN_PHONE', '', '', 'fzgls_jiekuangren_dangan', 'phone', 255, 0, '', '2015-04-20 01:55:10', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_jiekuangren_dangandangan_num_c', 'dangan_num_c', 'LBL_FZGLS_DANGAN_NUM', NULL, NULL, 'fzgls_jiekuangren_dangan', 'varchar', 12, 0, NULL, '2015-04-21 08:19:32', 0, 0, 0, 0, 1, 'required', NULL, NULL, NULL, NULL),
('fzgls_jiekuangren_dangangongzuo_danwei_c', 'gongzuo_danwei_c', 'LBL_GONGZUO_DANWEI', '', '', 'fzgls_jiekuangren_dangan', 'varchar', 255, 0, '', '2015-04-20 01:53:00', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_jiekuangren_danganhunyin_status_c', 'hunyin_status_c', 'LBL_HUNYIN_STATUS', '', '', 'fzgls_jiekuangren_dangan', 'varchar', 255, 0, '', '2015-04-20 01:51:31', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_jiekuangren_danganjiating_address_c', 'jiating_address_c', 'LBL_JIATING_ADDRESS', '', '', 'fzgls_jiekuangren_dangan', 'varchar', 255, 0, '', '2015-04-20 01:52:31', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_jiekuangren_danganlianxi_phone_c', 'lianxi_phone_c', 'LBL_LIANXI_PHONE', '', '', 'fzgls_jiekuangren_dangan', 'phone', 255, 0, '', '2015-04-20 01:53:47', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_jiekuangren_danganpeiou_gongzuo_danwei_c', 'peiou_gongzuo_danwei_c', 'LBL_PEIOU_GONGZUO_DANWEI', '', '', 'fzgls_jiekuangren_dangan', 'varchar', 255, 0, '', '2015-04-20 01:58:19', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_jiekuangren_danganpeiou_gongzuo_duty_c', 'peiou_gongzuo_duty_c', 'LBL_PEIOU_GONGZUO_DUTY', '', '', 'fzgls_jiekuangren_dangan', 'varchar', 255, 0, '', '2015-04-20 01:58:49', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_jiekuangren_danganpeiou_name_c', 'peiou_name_c', 'LBL_PEIOU_NAME', '', '', 'fzgls_jiekuangren_dangan', 'varchar', 255, 0, '', '2015-04-20 01:56:23', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_jiekuangren_danganpeiou_zhengjian_num_c', 'peiou_zhengjian_num_c', 'LBL_PEIOU_ZHENGJIAN_NUM', '', '', 'fzgls_jiekuangren_dangan', 'varchar', 255, 0, '', '2015-04-20 01:57:54', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_jiekuangren_danganpeiou_zhengjian_type_c', 'peiou_zhengjian_type_c', 'LBL_PEIOU_ZHENGJIAN_TYPE', '', '', 'fzgls_jiekuangren_dangan', 'enum', 100, 0, 'zhengjian_type_01', '2015-04-20 01:57:31', 0, 0, 0, 0, 1, 'true', 'fzgl_zhengjian_type_list', '', '', ''),
('fzgls_jiekuangren_danganuser_id_c', 'user_id_c', 'LBL_XINDAI_GUWEN_NAME_USER_ID', '', '', 'fzgls_jiekuangren_dangan', 'id', 36, 0, NULL, '2015-04-20 03:13:51', 0, 0, 0, 0, 0, 'true', '', '', '', ''),
('fzgls_jiekuangren_danganxinbie_type_c', 'xinbie_type_c', 'LBL_XINBIE_TYPE', '', '', 'fzgls_jiekuangren_dangan', 'radioenum', 100, 0, 'xinbie_type_man', '2015-04-20 03:23:53', 0, 0, 0, 0, 1, 'true', 'fzgl_xinbie_type_list', '', '', ''),
('fzgls_jiekuangren_danganxindai_guwen_name_c', 'xindai_guwen_name_c', 'LBL_XINDAI_GUWEN_NAME', NULL, NULL, 'fzgls_jiekuangren_dangan', 'relate', 255, 0, NULL, '2015-04-20 03:22:59', 0, 0, 0, 0, 1, 'true', NULL, 'Users', 'user_id_c', NULL),
('fzgls_jiekuangren_danganzhengjian_num_c', 'zhengjian_num_c', 'LBL_ZHENGJIAN_NUM', '', '', 'fzgls_jiekuangren_dangan', 'varchar', 255, 1, '', '2015-04-20 01:50:35', 0, 0, 0, 0, 1, 'required', '', '', '', ''),
('fzgls_jiekuangren_danganzhengjian_type_c', 'zhengjian_type_c', 'LBL_FZGLS_ZHENGJIAN_TYPE', NULL, NULL, 'fzgls_jiekuangren_dangan', 'enum', 100, 1, 'zhengjian_type_01', '2015-04-20 01:49:58', 0, 0, 0, 0, 1, 'required', 'fzgl_zhengjian_type_list', NULL, NULL, NULL),
('fzgls_jiekuangren_danganzhiwu_c', 'zhiwu_c', 'LBL_ZHIWU', '', '', 'fzgls_jiekuangren_dangan', 'varchar', 255, 0, '', '2015-04-20 01:53:23', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Userscurrency_id', 'currency_id', 'LBL_CURRENCY', '', '', 'Users', 'currency_id', 36, 0, NULL, '2015-04-16 02:23:50', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Usersduty_type_c', 'duty_type_c', 'LBL_FZGLS_DUTY_TYPE', NULL, NULL, 'Users', 'enum', 100, 1, 'duty_type_01', '2015-04-16 07:23:41', 0, 0, 0, 0, 1, 'required', 'fzgls_duty_type_list', NULL, NULL, NULL),
('Usersfzgls_bumeng_mataine_id_c', 'fzgls_bumeng_mataine_id_c', 'LBL_SUOSHU_BUMENG_FZGLS_BUMENG_MATAINE_ID', '', '', 'Users', 'id', 36, 0, NULL, '2015-04-16 07:12:22', 0, 0, 0, 0, 0, 'true', '', '', '', ''),
('Usersfzgls_fenggongsi_info_id_c', 'fzgls_fenggongsi_info_id_c', 'LBL_SUOSHU_FENGONGSI_FZGLS_FENGGONGSI_INFO_ID', '', '', 'Users', 'id', 36, 0, NULL, '2015-04-16 07:18:21', 0, 0, 0, 0, 0, 'true', '', '', '', ''),
('Usersgongzi_butie_c', 'gongzi_butie_c', 'LBL_FZGLS_GONGZI_BUTIE', NULL, NULL, 'Users', 'currency', 26, 0, NULL, '2015-04-16 07:24:07', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Usersgongzi_jixiao_c', 'gongzi_jixiao_c', 'LBL_FZGLS_GONGZI_JIXIAO', NULL, NULL, 'Users', 'currency', 26, 0, NULL, '2015-04-16 07:24:47', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Usersgong_hao_c', 'gong_hao_c', 'LBL_FZGLS_GONG_HAO', NULL, NULL, 'Users', 'varchar', 6, 1, NULL, '2015-04-16 07:25:02', 0, 0, 0, 0, 1, 'required', NULL, NULL, NULL, NULL),
('Usersguding_gongzi_c', 'guding_gongzi_c', 'LBL_FZGLS_GUDING_GONGZI', NULL, NULL, 'Users', 'currency', 26, 0, NULL, '2015-04-16 07:25:22', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Usersshenfen_zheng_c', 'shenfen_zheng_c', 'LBL_FZGLS_SHENFEN_ZHENG', NULL, NULL, 'Users', 'varchar', 20, 1, NULL, '2015-04-16 07:25:47', 0, 0, 0, 0, 1, 'required', NULL, NULL, NULL, NULL),
('Userssuoshu_bumeng_c', 'suoshu_bumeng_c', 'LBL_FZGLS_SUOSHU_BUMENG', '', '', 'Users', 'relate', 255, 1, NULL, '2015-04-16 07:12:22', 0, 0, 0, 0, 1, 'required', '', 'fzgls_bumeng_mataine', 'fzgls_bumeng_mataine_id_c', ''),
('Userssuoshu_fengongsi_c', 'suoshu_fengongsi_c', 'LBL_FZGLS_SUOSHU_FENGONGSI', '', '', 'Users', 'relate', 255, 1, NULL, '2015-04-16 07:18:21', 0, 0, 0, 0, 1, 'required', '', 'fzgls_fenggongsi_info', 'fzgls_fenggongsi_info_id_c', ''),
('Usersxinbie_type_c', 'xinbie_type_c', 'LBL_FZGLS_XINBIE_TYPE', NULL, NULL, 'Users', 'radioenum', 100, 1, 'xinbie_type_man', '2015-04-16 07:26:05', 0, 0, 0, 0, 1, 'required', 'fzgl_xinbie_type_list', NULL, NULL, NULL),
('Usersyuangong_status_c', 'yuangong_status_c', 'LBL_YUANGONG_STATUS', NULL, NULL, 'Users', 'enum', 100, 1, 'yuangong_status_02', '2015-04-16 07:26:27', 0, 0, 0, 0, 1, 'required', 'fzgls_yuangong_status_list', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `folders`
--

DROP TABLE IF EXISTS `folders`;
CREATE TABLE IF NOT EXISTS `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `folders`
--

INSERT INTO `folders` (`id`, `name`, `folder_type`, `parent_folder`, `has_child`, `is_group`, `is_dynamic`, `dynamic_query`, `assign_to_id`, `created_by`, `modified_by`, `deleted`) VALUES
('3eb57c7c-db92-4b5c-e88e-552cb136e992', '我的收件箱', 'inbound', '', 1, 0, 1, 'SELECT emails.id polymorphic_id, ''Emails'' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = ''inbound'' OR status = ''inbound'') AND assigned_user_id = ''1'' AND emails.deleted = ''0'' AND status NOT IN (''sent'', ''archived'', ''draft'') AND type NOT IN (''out'', ''archived'', ''draft'')', '', '1', '1', 0),
('57b98ef9-d247-cbfe-575b-552cb1d4b1d1', '我的草稿箱', 'draft', '3eb57c7c-db92-4b5c-e88e-552cb136e992', 0, 0, 1, 'SELECT emails.id polymorphic_id, ''Emails'' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = ''draft'' OR status = ''draft'') AND assigned_user_id = ''1'' AND emails.deleted = ''0'' AND status NOT IN (''archived'') AND type NOT IN (''archived'')', '', '1', '1', 0),
('667ce21c-39f0-4629-4932-552cb16c7b0f', '发件箱', 'sent', '3eb57c7c-db92-4b5c-e88e-552cb136e992', 0, 0, 1, 'SELECT emails.id polymorphic_id, ''Emails'' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = ''out'' OR status = ''sent'') AND assigned_user_id = ''1'' AND emails.deleted = ''0'' AND status NOT IN (''archived'') AND type NOT IN (''archived'')', '', '1', '1', 0),
('74b54a88-e4ee-2a40-5935-552cb175fd03', '我的存档电子邮件', 'archived', '3eb57c7c-db92-4b5c-e88e-552cb136e992', 0, 0, 1, '', '', '1', '1', 0);

-- --------------------------------------------------------

--
-- 表的结构 `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
CREATE TABLE IF NOT EXISTS `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
CREATE TABLE IF NOT EXISTS `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `folders_subscriptions`
--

INSERT INTO `folders_subscriptions` (`id`, `folder_id`, `assigned_user_id`) VALUES
('3eb9981a-07eb-9c24-07c1-552cb152e894', '3eb57c7c-db92-4b5c-e88e-552cb136e992', '1'),
('57beb475-5ae7-ca28-ebbe-552cb1f5b535', '57b98ef9-d247-cbfe-575b-552cb1d4b1d1', '1'),
('6680fed8-941b-28f7-f481-552cb13cb56b', '667ce21c-39f0-4629-4932-552cb16c7b0f', '1'),
('74b97f16-ee13-1471-77a0-552cb15db070', '74b54a88-e4ee-2a40-5935-552cb175fd03', '1');

-- --------------------------------------------------------

--
-- 表的结构 `fzgls_bumeng_mataine`
--

DROP TABLE IF EXISTS `fzgls_bumeng_mataine`;
CREATE TABLE IF NOT EXISTS `fzgls_bumeng_mataine` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fzgls_bumeng_mataine`
--

INSERT INTO `fzgls_bumeng_mataine` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`) VALUES
('23ef85c4-2c84-ed6d-90b9-552f7273dd02', '开发一部', '2015-04-16 08:26:32', '2015-04-16 14:05:01', '1', '1', '开发部', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `fzgls_bumeng_mataine_audit`
--

DROP TABLE IF EXISTS `fzgls_bumeng_mataine_audit`;
CREATE TABLE IF NOT EXISTS `fzgls_bumeng_mataine_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fzgls_bumeng_mataine_cstm`
--

DROP TABLE IF EXISTS `fzgls_bumeng_mataine_cstm`;
CREATE TABLE IF NOT EXISTS `fzgls_bumeng_mataine_cstm` (
  `id_c` char(36) NOT NULL,
  `bumeng_num_c` varchar(255) DEFAULT NULL,
  `suoshu_fengongsi_c` varchar(255) DEFAULT NULL,
  `fuzeren_name_c` varchar(255) DEFAULT NULL,
  `fuzeren_phone_c` varchar(255) DEFAULT NULL,
  `youbian_c` varchar(255) DEFAULT NULL,
  `dizhi_c` varchar(255) DEFAULT NULL,
  `phone_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fzgls_bumeng_mataine_cstm`
--

INSERT INTO `fzgls_bumeng_mataine_cstm` (`id_c`, `bumeng_num_c`, `suoshu_fengongsi_c`, `fuzeren_name_c`, `fuzeren_phone_c`, `youbian_c`, `dizhi_c`, `phone_c`) VALUES
('23ef85c4-2c84-ed6d-90b9-552f7273dd02', 'KF001', '南京分公司', '李红', '1477366478', '79451432', '南京XXX路234豪门大酒店', '');

-- --------------------------------------------------------

--
-- 表的结构 `fzgls_employer_info`
--

DROP TABLE IF EXISTS `fzgls_employer_info`;
CREATE TABLE IF NOT EXISTS `fzgls_employer_info` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fzgls_employer_info`
--

INSERT INTO `fzgls_employer_info` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`) VALUES
('1eb1aa75-c25e-3e51-8911-552ddade7ecd', '2015-04-15 03:26:33', '2015-04-15 03:35:10', '1', '1', '', 1, 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'Mr.', '小军', '曹', '', '', 0, '', '4234234', '23423', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `fzgls_employer_info_audit`
--

DROP TABLE IF EXISTS `fzgls_employer_info_audit`;
CREATE TABLE IF NOT EXISTS `fzgls_employer_info_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fzgls_fenggongsi_info`
--

DROP TABLE IF EXISTS `fzgls_fenggongsi_info`;
CREATE TABLE IF NOT EXISTS `fzgls_fenggongsi_info` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `fzgls_fenggongsi_info_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fzgls_fenggongsi_info`
--

INSERT INTO `fzgls_fenggongsi_info` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `fzgls_fenggongsi_info_type`, `industry`, `annual_revenue`, `phone_fax`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `rating`, `phone_office`, `phone_alternate`, `website`, `ownership`, `employees`, `ticker_symbol`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`) VALUES
('8b4afdce-d416-d9c4-904e-552f7132e06e', '南京第一分公司', '2015-04-16 08:24:57', '2015-04-16 14:05:25', '1', '1', '南京人和科技公司是一家高科持公司', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `fzgls_fenggongsi_info_audit`
--

DROP TABLE IF EXISTS `fzgls_fenggongsi_info_audit`;
CREATE TABLE IF NOT EXISTS `fzgls_fenggongsi_info_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fzgls_fenggongsi_info_cstm`
--

DROP TABLE IF EXISTS `fzgls_fenggongsi_info_cstm`;
CREATE TABLE IF NOT EXISTS `fzgls_fenggongsi_info_cstm` (
  `id_c` char(36) NOT NULL,
  `gongsi_num_c` varchar(255) DEFAULT NULL,
  `gongsi_youbian_c` varchar(255) DEFAULT NULL,
  `gongsi_dizhi_c` varchar(255) DEFAULT NULL,
  `gongsi_phone_c` varchar(255) DEFAULT NULL,
  `fuzeren_name_c` varchar(255) DEFAULT NULL,
  `fuzeren_phone_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fzgls_fenggongsi_info_cstm`
--

INSERT INTO `fzgls_fenggongsi_info_cstm` (`id_c`, `gongsi_num_c`, `gongsi_youbian_c`, `gongsi_dizhi_c`, `gongsi_phone_c`, `fuzeren_name_c`, `fuzeren_phone_c`) VALUES
('8b4afdce-d416-d9c4-904e-552f7132e06e', 'NJ458967', '121213', '南京xx街道xx号', '123123', '刘明', '13578964589');

-- --------------------------------------------------------

--
-- 表的结构 `fzgls_hezuo_waibu_qudao`
--

DROP TABLE IF EXISTS `fzgls_hezuo_waibu_qudao`;
CREATE TABLE IF NOT EXISTS `fzgls_hezuo_waibu_qudao` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `fzgls_hezuo_waibu_qudao_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fzgls_hezuo_waibu_qudao_audit`
--

DROP TABLE IF EXISTS `fzgls_hezuo_waibu_qudao_audit`;
CREATE TABLE IF NOT EXISTS `fzgls_hezuo_waibu_qudao_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fzgls_jiekuangren_dangan`
--

DROP TABLE IF EXISTS `fzgls_jiekuangren_dangan`;
CREATE TABLE IF NOT EXISTS `fzgls_jiekuangren_dangan` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fzgls_jiekuangren_dangan`
--

INSERT INTO `fzgls_jiekuangren_dangan` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`) VALUES
('2b0ab487-8e59-11f8-fd22-5531288dd936', '2015-04-17 15:38:20', '2015-04-17 15:57:04', '1', '1', '', 1, '1', 'Dr.', 'werwer', '6456', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL),
('30ed8e4d-c4f3-90e6-0f79-553126dbd0d9', '2015-04-17 15:26:13', '2015-04-17 15:27:34', '1', '1', '', 1, '1', 'Ms.', '2323', '3123', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL),
('71893b41-7755-7141-8f11-5531264f1855', '2015-04-17 15:27:07', '2015-04-17 15:27:34', '1', '1', '', 1, '1', 'Dr.', '5757', '5675', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL),
('742d3ede-6648-049d-0c50-55347b90799e', '2015-04-20 04:05:33', '2015-04-20 04:06:23', '1', '1', '', 1, NULL, 'Ms.', '2342', '234', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('86c77ef7-e022-2b69-56b8-55312a1cdf65', '2015-04-17 15:43:59', '2015-04-17 15:57:04', '1', '1', '', 1, '1', 'Mrs.', '34532', '23424', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL),
('94600e9a-450a-be7f-b66c-55360ddbbf68', '2015-04-21 08:43:24', '2015-04-21 09:11:04', '1', '1', '', 1, NULL, 'Ms.', '伟', '周', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('b35510b2-910b-de36-9190-55361491c812', '2015-04-21 09:14:38', '2015-04-21 09:14:38', '1', '1', '', 0, NULL, '', 'werwerv', 'werw', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('b3de828c-4d48-6c38-d805-55312b209567', '2015-04-17 15:47:52', '2015-04-17 15:57:04', '1', '1', '', 1, '1', 'Ms.', 'w23', '3424', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL),
('da470de7-3214-f08e-e5fb-553128c98984', '2015-04-17 15:34:24', '2015-04-17 15:57:04', '1', '1', '', 1, '1', 'Ms.', 'asdf', 'asdf', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL),
('ee2af3c9-e15d-f7ee-2cff-55312d7ac513', '2015-04-17 15:56:31', '2015-04-17 15:57:04', '1', '1', '', 1, '1', 'Dr.', '35', '345', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `fzgls_jiekuangren_dangan_audit`
--

DROP TABLE IF EXISTS `fzgls_jiekuangren_dangan_audit`;
CREATE TABLE IF NOT EXISTS `fzgls_jiekuangren_dangan_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fzgls_jiekuangren_dangan_cstm`
--

DROP TABLE IF EXISTS `fzgls_jiekuangren_dangan_cstm`;
CREATE TABLE IF NOT EXISTS `fzgls_jiekuangren_dangan_cstm` (
  `id_c` char(36) NOT NULL,
  `dangan_num_c` varchar(12) DEFAULT NULL,
  `zhengjian_type_c` varchar(100) DEFAULT 'zhengjian_type_01',
  `zhengjian_num_c` varchar(255) DEFAULT NULL,
  `hunyin_status_c` varchar(255) DEFAULT NULL,
  `jiating_address_c` varchar(255) DEFAULT NULL,
  `gongzuo_danwei_c` varchar(255) DEFAULT NULL,
  `zhiwu_c` varchar(255) DEFAULT NULL,
  `lianxi_phone_c` varchar(255) DEFAULT NULL,
  `beiyong_lianxiren_name_c` varchar(255) DEFAULT NULL,
  `beiyong_lianxiren_phone_c` varchar(255) DEFAULT NULL,
  `beiyong_lianxiren_guanxi_c` varchar(255) DEFAULT NULL,
  `peiou_name_c` varchar(255) DEFAULT NULL,
  `peiou_zhengjian_type_c` varchar(100) DEFAULT 'zhengjian_type_01',
  `peiou_zhengjian_num_c` varchar(255) DEFAULT NULL,
  `peiou_gongzuo_danwei_c` varchar(255) DEFAULT NULL,
  `peiou_gongzuo_duty_c` varchar(255) DEFAULT NULL,
  `user_id_c` char(36) DEFAULT NULL,
  `xinbie_type_c` varchar(100) DEFAULT 'xinbie_type_man'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fzgls_jiekuangren_dangan_cstm`
--

INSERT INTO `fzgls_jiekuangren_dangan_cstm` (`id_c`, `dangan_num_c`, `zhengjian_type_c`, `zhengjian_num_c`, `hunyin_status_c`, `jiating_address_c`, `gongzuo_danwei_c`, `zhiwu_c`, `lianxi_phone_c`, `beiyong_lianxiren_name_c`, `beiyong_lianxiren_phone_c`, `beiyong_lianxiren_guanxi_c`, `peiou_name_c`, `peiou_zhengjian_type_c`, `peiou_zhengjian_num_c`, `peiou_gongzuo_danwei_c`, `peiou_gongzuo_duty_c`, `user_id_c`, `xinbie_type_c`) VALUES
('2b0ab487-8e59-11f8-fd22-5531288dd936', '201504000001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('30ed8e4d-c4f3-90e6-0f79-553126dbd0d9', '201504000001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('71893b41-7755-7141-8f11-5531264f1855', '201504000001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('742d3ede-6648-049d-0c50-55347b90799e', '201504000001', 'zhengjian_type_01', '34234234', '', '', '', '', '', '', '', '', '', 'zhengjian_type_01', '', '', '', '', 'xinbie_type_man'),
('86c77ef7-e022-2b69-56b8-55312a1cdf65', '201504000001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('94600e9a-450a-be7f-b66c-55360ddbbf68', '201504000001', 'zhengjian_type_01', '5465465464', '', '', '', '', '234234', 'sadfa', '3234', 'asdf', '234', 'zhengjian_type_01', 'erwr', 'wer', '23', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'xinbie_type_man'),
('b35510b2-910b-de36-9190-55361491c812', '201504000001', 'zhengjian_type_01', '1123123', '', '', '', '', '', '', '', '', '', 'zhengjian_type_01', '', '', '', '23d39e87-2c70-3cc2-270c-552b2baee075', 'xinbie_type_man'),
('b3de828c-4d48-6c38-d805-55312b209567', '201504000006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('da470de7-3214-f08e-e5fb-553128c98984', '201504000001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('ee2af3c9-e15d-f7ee-2cff-55312d7ac513', '201504000005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `fzgls_jsjg_base_info`
--

DROP TABLE IF EXISTS `fzgls_jsjg_base_info`;
CREATE TABLE IF NOT EXISTS `fzgls_jsjg_base_info` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `fzgls_jsjg_base_info_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fzgls_jsjg_base_info_audit`
--

DROP TABLE IF EXISTS `fzgls_jsjg_base_info_audit`;
CREATE TABLE IF NOT EXISTS `fzgls_jsjg_base_info_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fzgls_kefu_liucheng`
--

DROP TABLE IF EXISTS `fzgls_kefu_liucheng`;
CREATE TABLE IF NOT EXISTS `fzgls_kefu_liucheng` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
`fzgls_kefu_liucheng_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fzgls_kefu_liucheng_audit`
--

DROP TABLE IF EXISTS `fzgls_kefu_liucheng_audit`;
CREATE TABLE IF NOT EXISTS `fzgls_kefu_liucheng_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
CREATE TABLE IF NOT EXISTS `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
CREATE TABLE IF NOT EXISTS `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
CREATE TABLE IF NOT EXISTS `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
CREATE TABLE IF NOT EXISTS `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
CREATE TABLE IF NOT EXISTS `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `leads`
--

DROP TABLE IF EXISTS `leads`;
CREATE TABLE IF NOT EXISTS `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
CREATE TABLE IF NOT EXISTS `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
CREATE TABLE IF NOT EXISTS `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `meetings`
--

DROP TABLE IF EXISTS `meetings`;
CREATE TABLE IF NOT EXISTS `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
CREATE TABLE IF NOT EXISTS `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
CREATE TABLE IF NOT EXISTS `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
CREATE TABLE IF NOT EXISTS `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
CREATE TABLE IF NOT EXISTS `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
CREATE TABLE IF NOT EXISTS `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
CREATE TABLE IF NOT EXISTS `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
CREATE TABLE IF NOT EXISTS `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
CREATE TABLE IF NOT EXISTS `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
CREATE TABLE IF NOT EXISTS `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`) VALUES
('6fe0c5a3-32c7-5f5f-7660-5529d5d60a1f', 'system', 'system', '1', 'SMTP', 'gmail', 'smtp.163.com', 25, 'jeffcaocom@163.com', 'vvgUcLHBTrO0wGPDdH2AOA==', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `project`
--

INSERT INTO `project` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `description`, `deleted`, `estimated_start_date`, `estimated_end_date`, `status`, `priority`) VALUES
('1016d779-1c6f-8925-e5ff-552b8319a11b', '2015-04-13 08:49:11', '2015-04-13 09:01:58', '23d39e87-2c70-3cc2-270c-552b2baee075', '1', '1', 'test', 'sfasdfasdf', 0, '2015-04-01', '2015-04-04', 'In Review', 'high');

-- --------------------------------------------------------

--
-- 表的结构 `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
CREATE TABLE IF NOT EXISTS `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
CREATE TABLE IF NOT EXISTS `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
CREATE TABLE IF NOT EXISTS `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
CREATE TABLE IF NOT EXISTS `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
CREATE TABLE IF NOT EXISTS `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
CREATE TABLE IF NOT EXISTS `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `project_task`
--

DROP TABLE IF EXISTS `project_task`;
CREATE TABLE IF NOT EXISTS `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
CREATE TABLE IF NOT EXISTS `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `prospects`
--

DROP TABLE IF EXISTS `prospects`;
CREATE TABLE IF NOT EXISTS `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
`tracker_key` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
CREATE TABLE IF NOT EXISTS `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
CREATE TABLE IF NOT EXISTS `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
CREATE TABLE IF NOT EXISTS `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `relationships`
--

DROP TABLE IF EXISTS `relationships`;
CREATE TABLE IF NOT EXISTS `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(128) DEFAULT NULL,
  `join_key_lhs` varchar(128) DEFAULT NULL,
  `join_key_rhs` varchar(128) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('1269c918-68d6-d4b4-d7b2-553608a56abb', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('12a2d673-307d-e853-9fd6-553608c3bf65', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('12d5cfb4-73ed-e21f-abc3-55360852808b', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('236eec97-7bef-b92c-3a07-5536086032fd', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('23b232f0-f575-c1e8-b29a-553608e15374', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('23e4cf37-d4be-cbd0-bae4-553608e29b36', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('24367bde-cd21-6f39-a4cf-553608837442', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'schedulersjobs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2c8d5fc7-46d9-d400-b1bb-5536085fb2c0', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2cc98315-cd57-dc69-1515-553608cff925', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2cf8e033-2876-0636-2e8c-5536080e40da', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d33a899-5505-cf06-1253-553608aa1fb0', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('2d64a18a-b1a4-e40b-eeb4-553608a67e13', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('2da47621-3471-e0e1-5907-55360835a1f9', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2dd41ce7-58a1-b2b1-7fe5-553608f73696', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2e00e873-513b-c649-5058-553608677970', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2e2e1649-a320-486e-2c74-553608938561', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2e60d471-7a70-58cf-832c-553608684dee', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('2e9342be-f35c-d9da-b245-55360820d237', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('2ec6b47d-f22f-ee54-de95-5536081daee4', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('386292cf-ccc0-a3d3-7c1b-553608fbb9c4', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('38a147e0-e6ee-e343-f259-5536087c8426', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('38dcb58e-575f-5916-d032-553608ecf98d', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('391a359f-76d7-1469-d4e4-553608cdaf61', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('395a9a4d-84a5-7b58-4819-5536086562b1', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('3988d152-15d2-ea97-61f2-55360867f807', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('39b77c68-af76-10b6-b1c7-5536084ef695', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('39eb2f0f-7c6d-4cc3-5a7a-5536087f5417', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('3a1c95d1-0ea7-6a77-3251-5536088e272d', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('3a4b9438-d71b-4feb-8885-553608fc5d10', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('3a807d5d-0150-7e00-b8e6-5536080af72c', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('3aaf4e5f-682d-a21d-e968-5536089afb0b', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('3ae3a3f9-3dbf-60ab-aaeb-553608e41729', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b13f9c7-d2e8-d730-b6b5-55360857332f', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('40f8c159-d327-828a-cd04-553608cfe3d5', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('413295e9-9189-b3ca-5fea-553608896c9b', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4165a6c7-bd8a-fb19-1cbe-553608e31bc9', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('438b0fcf-a6c2-3a35-fcd0-553608b6c34e', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43d7bef5-36e4-a9cc-c3e7-5536080f4bf9', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('440740fd-e88f-ba2d-7a0f-553608c40770', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('44564ec5-b7eb-f822-631d-553608916692', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('448cf3d2-9ad7-c593-697e-5536082f5a99', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('44cab5fd-b1f7-6474-858d-5536089d4927', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('44feb924-32eb-67b3-da08-55360861af4d', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('45336b3e-7c25-0627-fe10-553608df043b', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('4560355d-faaf-4e9f-b87a-553608737809', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('459168d3-ae0c-073f-90b0-55360835eb65', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('45c68c11-93d2-4568-4517-553608478492', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4d942a60-8a54-e964-b62b-5536086f7a31', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4fe9f08a-ffc8-84e4-7b0b-55360859fcf9', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5028c067-9793-b435-8a2b-553608a19b26', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('505e5f45-f18e-e7a3-70ec-553608ed4788', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('54c07738-b7d0-5e5a-4c55-5536088089e1', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55019da1-dbae-1e16-2455-553608d0dc4b', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55313106-772b-5d94-a37a-553608c31cee', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5618a3b3-956e-ffe7-64bd-553608d9dac6', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('564ed524-37e4-d9b9-b479-55360871fbfb', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5861668d-db1e-e5c3-f9bc-553608b07d6b', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('58975f5a-3b48-33e9-d4ba-553608fd45f3', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('58ce120a-e61a-9c1d-ead3-55360828cc69', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5900672d-1ca1-5779-fbdc-5536081596d4', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('5af77bb8-f55d-e272-e63f-55360885ab62', 'asol_activity_modified_user', 'Users', 'users', 'id', 'asol_Activity', 'asol_activity', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5b2e2c62-a04a-dfc4-a8de-5536087f1433', 'asol_activity_created_by', 'Users', 'users', 'id', 'asol_Activity', 'asol_activity', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5b5f33a8-fe25-98a2-5d4b-553608483513', 'asol_activity_assigned_user', 'Users', 'users', 'id', 'asol_Activity', 'asol_activity', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5c70b046-07b0-b992-6f8c-553608f18c20', 'asol_events_modified_user', 'Users', 'users', 'id', 'asol_Events', 'asol_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5ca43311-234c-c856-f74e-553608fb4d24', 'asol_events_created_by', 'Users', 'users', 'id', 'asol_Events', 'asol_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5ceb4679-babd-d6e7-05dd-553608b4874e', 'asol_events_assigned_user', 'Users', 'users', 'id', 'asol_Events', 'asol_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5e061ec4-82e2-9392-8b8d-55360826314a', 'asol_onhold_modified_user', 'Users', 'users', 'id', 'asol_OnHold', 'asol_onhold', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5e44bb3b-fef4-9894-0350-5536085cf9ee', 'asol_onhold_created_by', 'Users', 'users', 'id', 'asol_OnHold', 'asol_onhold', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5e83923c-5b1f-da21-45a6-5536084b213f', 'asol_onhold_assigned_user', 'Users', 'users', 'id', 'asol_OnHold', 'asol_onhold', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('627286f0-9e85-7d70-b6f4-553608d0daca', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('62ac6832-bef3-db3e-a21b-55360804e3c1', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('62e2b961-2604-ba21-a31a-553608d416c6', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('631e764e-fb00-74b0-a29b-55360848e997', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('634f0bbc-96e1-f9f9-70a6-553608b9d872', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('638168b9-6dd3-bc33-e47b-553608f67e20', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('63b5df07-1993-b717-607c-553608160cb5', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('63e5405e-42f7-2b1f-70d5-553608ca2bf8', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('65af6168-f214-896d-8e4f-5536085578d9', 'asol_process_modified_user', 'Users', 'users', 'id', 'asol_Process', 'asol_process', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('65fcebd8-1870-7849-c1d7-5536083735ab', 'asol_process_created_by', 'Users', 'users', 'id', 'asol_Process', 'asol_process', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('663dbafa-8db0-8082-e40b-5536082fde4b', 'asol_process_assigned_user', 'Users', 'users', 'id', 'asol_Process', 'asol_process', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('676fb817-9b8a-13be-88e3-55360848a05a', 'asol_processinstances_modified_user', 'Users', 'users', 'id', 'asol_ProcessInstances', 'asol_processinstances', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('67aea8e8-7bc9-bc6b-94ad-553608352833', 'asol_processinstances_created_by', 'Users', 'users', 'id', 'asol_ProcessInstances', 'asol_processinstances', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('67f05088-67f2-81cb-5aec-55360867f652', 'asol_processinstances_assigned_user', 'Users', 'users', 'id', 'asol_ProcessInstances', 'asol_processinstances', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b874c08-36b4-ad1a-d425-553608b19cd6', 'asol_task_modified_user', 'Users', 'users', 'id', 'asol_Task', 'asol_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6bbfebbe-579e-e7cc-f093-553608136500', 'asol_task_created_by', 'Users', 'users', 'id', 'asol_Task', 'asol_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6bf4853d-bccf-b61d-f24f-553608124dd5', 'asol_task_assigned_user', 'Users', 'users', 'id', 'asol_Task', 'asol_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6c5d1f9c-7a45-6658-20dd-55360833d7e7', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6e3a0ffb-1bf1-d6b0-7c1a-5536082cedc0', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6e766ae1-fda1-d411-b11d-5536083dc6d5', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6eab8409-fef5-1c40-4a89-553608913ecd', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('6f81107a-f88b-d9c4-48da-553608db801f', 'asol_workingnodes_modified_user', 'Users', 'users', 'id', 'asol_WorkingNodes', 'asol_workingnodes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6fbc28f0-2aa9-cea2-e0fe-5536085b4237', 'asol_workingnodes_created_by', 'Users', 'users', 'id', 'asol_WorkingNodes', 'asol_workingnodes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6ff172c7-11f4-4ef1-662e-553608eb14e9', 'asol_workingnodes_assigned_user', 'Users', 'users', 'id', 'asol_WorkingNodes', 'asol_workingnodes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('70e53127-4e8c-7987-01d0-553608963c71', 'asol_workflowmanagercommon_modified_user', 'Users', 'users', 'id', 'asol_WorkFlowManagerCommon', 'asol_workflowmanagercommon', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7119ba56-c8ea-6e22-56ed-55360808e6b7', 'asol_workflowmanagercommon_created_by', 'Users', 'users', 'id', 'asol_WorkFlowManagerCommon', 'asol_workflowmanagercommon', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('714eb78b-27bb-ce1d-28a2-553608c58932', 'asol_workflowmanagercommon_assigned_user', 'Users', 'users', 'id', 'asol_WorkFlowManagerCommon', 'asol_workflowmanagercommon', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('71c45eaf-6eeb-bd05-294f-5536081f6a02', 'fzgls_bumeng_mataine_modified_user', 'Users', 'users', 'id', 'fzgls_bumeng_mataine', 'fzgls_bumeng_mataine', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7634af61-8ee7-0383-eeac-553608c1e63d', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('766e99f8-2c3f-7792-7101-5536081a789a', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a040bf8-cfc3-a2fa-188e-553608911193', 'fzgls_bumeng_mataine_created_by', 'Users', 'users', 'id', 'fzgls_bumeng_mataine', 'fzgls_bumeng_mataine', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a3cbd9f-696b-0e20-56aa-553608fb4ad2', 'fzgls_bumeng_mataine_assigned_user', 'Users', 'users', 'id', 'fzgls_bumeng_mataine', 'fzgls_bumeng_mataine', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7be1d4af-8cc9-f465-53de-5536085ce6c7', 'fzgls_employer_info_modified_user', 'Users', 'users', 'id', 'fzgls_employer_info', 'fzgls_employer_info', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c1b9257-2ad3-3e76-19cb-5536088bfe4b', 'fzgls_employer_info_created_by', 'Users', 'users', 'id', 'fzgls_employer_info', 'fzgls_employer_info', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c5b0c8a-3472-3100-59f8-55360855372e', 'fzgls_employer_info_assigned_user', 'Users', 'users', 'id', 'fzgls_employer_info', 'fzgls_employer_info', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c9983cf-7ee0-d83f-673e-553608413bf6', 'fzgls_employer_info_email_addresses', 'fzgls_employer_info', 'fzgls_employer_info', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'fzgls_employer_info', 0, 0),
('7cae3078-17d7-0814-5484-553608fea71c', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ce47507-aca9-eecf-ad2f-5536082eb277', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ce91d49-7db8-a197-67bf-553608ed0b7a', 'fzgls_employer_info_email_addresses_primary', 'fzgls_employer_info', 'fzgls_employer_info', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('80c9c151-6d64-4ea6-86a1-553608e9382e', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('810bbd11-478f-42a0-eb35-553608928d42', 'fzgls_fenggongsi_info_modified_user', 'Users', 'users', 'id', 'fzgls_fenggongsi_info', 'fzgls_fenggongsi_info', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81315135-bc7e-fc26-18a5-5536080b36dc', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8145dba9-2eee-1738-7b92-553608ad3c4f', 'fzgls_fenggongsi_info_created_by', 'Users', 'users', 'id', 'fzgls_fenggongsi_info', 'fzgls_fenggongsi_info', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81659a6c-f18b-e7f9-7545-55360820ca0f', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('817d7eb1-6e75-6689-bc3a-553608031a27', 'fzgls_fenggongsi_info_assigned_user', 'Users', 'users', 'id', 'fzgls_fenggongsi_info', 'fzgls_fenggongsi_info', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('819be695-c322-a54a-de7b-553608e54c82', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('81c0bdcf-0c1d-34f9-d624-553608f2da8b', 'fzgls_fenggongsi_info_email_addresses', 'fzgls_fenggongsi_info', 'fzgls_fenggongsi_info', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'fzgls_fenggongsi_info', 0, 0),
('81d13c7c-d451-2ea7-b21a-5536085b3343', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('81f3ce6d-b267-a6a0-dcf6-5536080b2618', 'fzgls_fenggongsi_info_email_addresses_primary', 'fzgls_fenggongsi_info', 'fzgls_fenggongsi_info', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('8206b139-1205-0d63-dc6e-553608b120ea', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('823b3aff-c44d-e0f5-a6e5-553608c8bf5c', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('8346b3d6-d518-1a61-fba5-55360869474d', 'fzgls_hezuo_waibu_qudao_modified_user', 'Users', 'users', 'id', 'fzgls_hezuo_waibu_qudao', 'fzgls_hezuo_waibu_qudao', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('837f562a-7fd0-4766-3eb6-553608177bea', 'fzgls_hezuo_waibu_qudao_created_by', 'Users', 'users', 'id', 'fzgls_hezuo_waibu_qudao', 'fzgls_hezuo_waibu_qudao', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('83b22fc6-f0ca-2f6b-154b-553608425054', 'fzgls_hezuo_waibu_qudao_assigned_user', 'Users', 'users', 'id', 'fzgls_hezuo_waibu_qudao', 'fzgls_hezuo_waibu_qudao', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('83eda64b-fb28-2427-3d75-553608a49d98', 'fzgls_hezuo_waibu_qudao_email_addresses', 'fzgls_hezuo_waibu_qudao', 'fzgls_hezuo_waibu_qudao', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'fzgls_hezuo_waibu_qudao', 0, 0),
('841d6608-f653-dd11-3c9b-553608d444b1', 'fzgls_hezuo_waibu_qudao_email_addresses_primary', 'fzgls_hezuo_waibu_qudao', 'fzgls_hezuo_waibu_qudao', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('8a1221c9-db2c-47b7-d89b-55360875f792', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('8a4d2347-17a6-5d55-4a59-5536087224f3', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('8a86ce97-2948-45a6-afed-5536089c8f4f', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('8abe4edf-3ab8-f64c-b308-55360823cd7e', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('8b011fc3-1f4b-4e7e-2d81-553608324b69', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('8dfd815f-e816-c2eb-3855-5536087fd961', 'fzgls_jiekuangren_dangan_modified_user', 'Users', 'users', 'id', 'fzgls_jiekuangren_dangan', 'fzgls_jiekuangren_dangan', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8e3f346b-b180-5940-e3f8-553608ac0227', 'fzgls_jiekuangren_dangan_created_by', 'Users', 'users', 'id', 'fzgls_jiekuangren_dangan', 'fzgls_jiekuangren_dangan', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8e768b22-27b2-c1c3-4ebb-553608244adc', 'fzgls_jiekuangren_dangan_assigned_user', 'Users', 'users', 'id', 'fzgls_jiekuangren_dangan', 'fzgls_jiekuangren_dangan', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8eab92f9-898f-b57c-a882-553608bf886c', 'fzgls_jiekuangren_dangan_email_addresses', 'fzgls_jiekuangren_dangan', 'fzgls_jiekuangren_dangan', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'fzgls_jiekuangren_dangan', 0, 0),
('8eddb053-5ac1-2df0-6d3b-553608762193', 'fzgls_jiekuangren_dangan_email_addresses_primary', 'fzgls_jiekuangren_dangan', 'fzgls_jiekuangren_dangan', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('91ac3a66-f960-e8a1-238b-5536087ad12b', 'fzgls_jsjg_base_info_modified_user', 'Users', 'users', 'id', 'fzgls_jsjg_base_info', 'fzgls_jsjg_base_info', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('91ecf01d-841c-d45e-108f-553608941888', 'fzgls_jsjg_base_info_created_by', 'Users', 'users', 'id', 'fzgls_jsjg_base_info', 'fzgls_jsjg_base_info', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('921bf57d-cb16-6dfa-9b6b-553608c5e4a7', 'fzgls_jsjg_base_info_assigned_user', 'Users', 'users', 'id', 'fzgls_jsjg_base_info', 'fzgls_jsjg_base_info', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92499e57-147b-5a97-fcc7-553608d6bfa9', 'fzgls_jsjg_base_info_email_addresses', 'fzgls_jsjg_base_info', 'fzgls_jsjg_base_info', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'fzgls_jsjg_base_info', 0, 0),
('927c8c7b-2824-caa3-b38d-5536083c87c4', 'fzgls_jsjg_base_info_email_addresses_primary', 'fzgls_jsjg_base_info', 'fzgls_jsjg_base_info', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('938f3a4b-928d-617f-ba09-55360812a22c', 'fzgls_kefu_liucheng_modified_user', 'Users', 'users', 'id', 'fzgls_kefu_liucheng', 'fzgls_kefu_liucheng', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('93ca24a0-fbac-23be-8384-5536082680cb', 'fzgls_kefu_liucheng_created_by', 'Users', 'users', 'id', 'fzgls_kefu_liucheng', 'fzgls_kefu_liucheng', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9402d41d-fca0-d60b-df10-5536081b4c0a', 'fzgls_kefu_liucheng_assigned_user', 'Users', 'users', 'id', 'fzgls_kefu_liucheng', 'fzgls_kefu_liucheng', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9916893f-72e7-a9ee-3f45-55360803eb4f', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('994efe73-d03c-e6d4-f1bc-553608843518', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9983959c-e9af-cc11-8197-553608173374', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99b6ddd6-bd6b-4439-28c6-5536088db8cc', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('99e7fb96-9a34-d314-7873-5536085f9395', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('9a1ad070-3ca3-a51f-8ab0-55360877f7ef', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('9a2fe410-b2bf-20ce-13ee-55360889f846', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('9a5cbf38-dce0-6a1e-4e87-5536085be341', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('9a6cac70-355e-1a1a-c668-553608e4240e', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('9a8d4b9c-c0ba-571f-6c5c-553608119be1', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('9aae54bf-9b75-c032-2cb2-5536080f4f03', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('9ae51f7e-12b2-62ca-311c-553608e8645e', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('9b183420-7716-6bc8-1179-553608d55b70', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('9b499748-9432-7328-d7c2-553608b6c82f', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('9b7a93e0-28b2-c3a8-f9ea-553608397675', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('9bab228c-5882-9e20-a779-5536088f53f4', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('9be02011-b72f-18ee-4688-5536080fc65d', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('9c16b5ec-3972-bb68-33c3-55360857071d', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('9c5b33e7-b83b-d50f-364d-55360808aaed', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('9c8f71fc-4581-6dd9-2fea-553608e3cb59', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('9ce05ccd-5dde-0342-5a9f-553608eddac1', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('9d1e29cf-23ba-663f-c86e-553608edd2f5', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('9d61dc80-483d-9fe3-a6c3-55360875179e', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('9d90201b-378a-b2c8-2964-5536087241dc', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('9dbf8207-6e8a-de58-8790-553608d93bbf', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('9e058e11-b364-8dfb-af41-55360873c655', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('9e393f29-d0c6-8ebc-d32e-55360829374f', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('9e69b7b7-4674-847b-ddd8-55360879b2a4', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('9e97ac33-9e96-8c94-1857-553608b902d4', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('9ec82ff6-327b-2ce2-007f-5536088c6a52', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('9ef9d214-1993-a2ec-bce9-553608b3a8e4', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('9f358870-d4eb-5cc4-8804-553608d3ffbe', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('9f824fd6-50d3-7e22-5ee8-553608987cba', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('9fb0f273-3912-fea8-c6bc-5536082cfe23', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('9fe18f27-9b27-f098-f88c-55360887ba43', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('a01227d6-f574-cfde-020f-5536089468e8', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('a0508f9d-7b8a-10bf-c85f-5536083c4a3a', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('a081bd89-9f1b-9f3e-91bb-55360817076e', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('a0b556ea-2f4f-f6de-2f87-55360889ba61', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('a0ebcdbb-c3a1-4a1a-0fd0-55360899401f', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('a11d5768-d9fa-534b-9113-553608a43c47', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('a14d8e3b-215a-7e00-7b9a-553608e85a2e', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('a17a86b5-0bb5-8b11-681d-5536086a00c5', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('a1af3846-b16d-4ab1-f126-5536085a85a6', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('a1ff4170-10ed-042d-8ae1-553608e3908b', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('a23667b1-5313-0b3b-0ed3-553608364816', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('a26be645-4bf4-0f37-3c5f-55360845f42c', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('a28b0669-0a53-2959-66c9-553608db7c91', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a29dc43c-83c7-5805-a580-5536088e2311', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('a2c6ceda-8074-3195-9864-553608c986b0', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a2d2ffa0-f2da-fb1b-e0aa-5536087cce47', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('a2ff289d-310c-16e2-50a6-5536087ca417', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a3081609-0449-07b6-634f-55360806199b', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('a332731a-5813-fa7e-eb7b-553608339112', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('a3462e84-6f63-51e8-461c-553608f688cf', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('a3681592-55bd-8d9a-df0e-5536087675e7', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('a37c5dc2-0aec-e655-0cc3-5536085a6246', 'asol_activity_asol_activity', 'asol_Activity', 'asol_activity', 'id', 'asol_Activity', 'asol_activity', 'id', 'asol_activisol_activity_c', 'asol_activ898activity_ida', 'asol_activ9e2dctivity_idb', 'many-to-many', NULL, NULL, 0, 0),
('a39ec953-c2b6-1db0-bd6f-55360848f228', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('a3ae2fcd-3875-25bd-4321-55360822f25b', 'asol_activity_asol_task', 'asol_Activity', 'asol_activity', 'id', 'asol_Task', 'asol_task', 'id', 'asol_activity_asol_task_c', 'asol_activ5b86ctivity_ida', 'asol_activf613ol_task_idb', 'many-to-many', NULL, NULL, 0, 0),
('a3cf70d0-9af7-8187-d8ee-55360849fea8', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('a3e21858-4225-4b0e-d7f8-553608ef70fb', 'asol_events_asol_activity', 'asol_Events', 'asol_events', 'id', 'asol_Activity', 'asol_activity', 'id', 'asol_eventssol_activity_c', 'asol_event87f4_events_ida', 'asol_event8042ctivity_idb', 'many-to-many', NULL, NULL, 0, 0),
('a4031dc5-35f6-23ec-75a2-5536080068fb', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('a415da0f-6d57-16ef-7d8f-55360852e961', 'asol_process_asol_activity', 'asol_Process', 'asol_process', 'id', 'asol_Activity', 'asol_activity', 'id', 'asol_process_asol_activity_c', 'asol_process_asol_activityasol_process_ida', 'asol_process_asol_activityasol_activity_idb', 'many-to-many', NULL, NULL, 0, 0),
('a4362904-5cc1-ea8f-57ae-5536087e4c1c', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4499ecc-9890-14b8-5dca-5536082ebcbf', 'asol_process_asol_events', 'asol_Process', 'asol_process', 'id', 'asol_Events', 'asol_events', 'id', 'asol_proces_asol_events_c', 'asol_proce6f14process_ida', 'asol_procea8ca_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('a479da24-7f52-c1a0-c4cb-553608ad22b3', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a47dd0a9-69ad-3d5e-85f2-55360876cd2f', 'asol_process_asol_events_1', 'asol_Process', 'asol_process', 'id', 'asol_Events', 'asol_events', 'id', 'asol_process_asol_events_1_c', 'asol_process_asol_events_1asol_process_ida', 'asol_process_asol_events_1asol_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('a4b15bf1-c6ae-4545-c7d3-553608ed1899', 'asol_process_asol_task', 'asol_Process', 'asol_process', 'id', 'asol_Task', 'asol_task', 'id', 'asol_process_asol_task_c', 'asol_process_asol_taskasol_process_ida', 'asol_process_asol_taskasol_task_idb', 'many-to-many', NULL, NULL, 0, 0),
('b5d444d3-a4de-561a-d8fb-553608087b60', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b618cff6-598d-c862-0c3b-5536089acb84', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('b6581385-549a-b8e1-21e2-553608c9a5de', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('b71770df-735f-d844-e49d-553608aaa1a9', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b74d5fa8-23d6-78e1-984b-553608ce1aa5', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b78686f0-8331-ea6a-ccad-5536086ad541', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b7b946ba-cb7a-0872-5ceb-553608668a00', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b9d2c027-c16c-4cd3-9365-5536086c5f08', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ba0f8720-510f-52c7-7ac2-553608444940', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ba4700f9-6cfa-fc6c-5f77-55360870ed4a', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ba7f0cee-d729-cc88-cb5b-553608cbfaeb', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bab82c00-2934-8648-09fa-553608b2c7b0', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bff1cfcf-d841-d1c9-9631-5536081b36ed', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c02092b8-57cc-a3a4-62ff-55360801ddb8', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('c063e887-30f7-85ab-aa28-5536083f7225', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('c0a2ad03-c101-5df8-f513-553608149780', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('c0dcfc4b-fb09-ee74-d5d2-553608743afc', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('c1149822-f04b-fe88-2ad8-5536089de450', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('c1500947-72b8-b106-4692-55360878f61c', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c189c6eb-4294-5c94-37d1-553608b342d5', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1c504b1-87a8-c13a-e535-553608e4b51f', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1fb5b40-fcb3-e876-29d1-553608d5936c', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cb93409b-b9d2-e2ff-17fc-5536084cd96b', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('cbd10da0-7a28-1600-5771-553608e96a1b', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('cc23aa23-e3b7-27bb-3ff5-5536084752f6', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('cc59cf6a-ccb3-8ee8-fbbb-553608e5d071', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('cc8b3e38-bae1-9a2c-e39b-55360860c954', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('ccb9d85a-54a1-d641-a385-553608945d99', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ccebab69-f94d-173e-085f-553608dc91a3', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cd1b7e46-303b-d623-f296-5536082a15df', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ce5248ca-bbf4-2284-e595-553608612b8e', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('ce89efa8-eca3-1346-dfa4-5536087929fe', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('d7862bdd-30cd-4af7-9670-553608ac687a', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d8398a41-67e4-7ea9-00ad-553608f34f95', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d87c79e1-7427-4719-9a08-5536086ba0d2', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('d8af0eaf-cb93-53c2-4c2d-5536089bff3c', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d8e23110-be9c-6c29-062d-5536082e818f', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d911c0c1-2ce1-2b3c-e19a-5536088ad47f', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d9557408-d49b-2a63-1f76-553608b5ee6c', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d997ba37-f933-c6d9-3a42-553608eac414', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d9ce9d04-81c9-5c0a-d69b-5536087dc217', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('da03dc63-39ad-4e00-df22-55360879c865', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('da3da2ee-2eb3-cdd4-9e3e-5536082c9ef0', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('da6fcc3a-5d52-ffd0-bfcf-553608b264fd', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('daa2de35-d153-b2dd-a4cd-553608bfb4b9', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dada4163-65a8-acbc-1484-5536089ce2b7', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e0d27a76-163b-a3a3-e4de-553608a952af', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'prospectlists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e3410f83-6803-6eaf-400d-5536086c2c44', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e37d685d-1741-d668-3a55-553608fbcaf9', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e3b49473-6678-591b-dae1-553608183151', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e3eace53-409c-7ff1-8583-553608c3b4f8', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('e41e4aa4-2d5e-f49d-da4f-553608752861', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('e450f168-d939-08f2-e1c7-553608b6dc38', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('e481b6a6-2954-dd48-3529-55360850f095', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('e4b17567-44f3-46ff-70ed-553608a87bb4', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('e4e0b97d-3a6c-69fd-3e0a-553608b9a22a', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('e510bb77-95d1-8529-dea6-5536088b29a0', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('e53fcaee-3ae5-9c4a-aeda-5536080a0419', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('e88405b2-267b-b71c-8d3a-553608663e2f', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f32f5125-7efa-996a-1298-553608b68a13', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `releases`
--

DROP TABLE IF EXISTS `releases`;
CREATE TABLE IF NOT EXISTS `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
CREATE TABLE IF NOT EXISTS `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE IF NOT EXISTS `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
CREATE TABLE IF NOT EXISTS `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
CREATE TABLE IF NOT EXISTS `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('3a4b6e0a-bfa4-c043-4403-5529d537eca1', 0, '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2005-01-01 11:45:01', '2020-12-31 23:59:59', '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('3b57b321-1548-caf7-1d3d-5529d5f90b26', 0, '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxes', '2005-01-01 16:30:01', '2020-12-31 23:59:59', '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('3c6d0f47-530a-cc67-37f1-5529d58687c4', 0, '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2005-01-01 07:45:01', '2020-12-31 23:59:59', '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('3d29dc63-6e19-9e63-6c3e-5529d523831c', 0, '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2005-01-01 13:45:01', '2020-12-31 23:59:59', '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('3dcf6747-3c97-1c45-1543-5529d5f9828e', 0, '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2005-01-01 18:00:01', '2020-12-31 23:59:59', '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('44129b31-d3bb-076d-764d-5529d5b78a7d', 0, '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2008-01-01 11:15:01', '2020-12-31 23:59:59', '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('44da931c-7a6f-208c-76b3-5529d543ef7e', 0, '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2012-01-01 09:30:01', '2030-12-31 23:59:59', '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('457f37fb-0abd-cfed-2474-5529d55b6630', 0, '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2012-01-01 08:15:01', '2030-12-31 23:59:59', '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('46271c50-9fad-04db-23bf-5529d57f97d6', 0, '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '1', 'Prune SugarFeed Tables', 'function::trimSugarFeeds', '2005-01-01 09:30:01', '2020-12-31 23:59:59', '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('661277fe-afcc-cddf-0744-5529d745e756', 0, '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'wfm_engine_crontab', 'url::http://localhost/fzglsys/index.php?entryPoint=wfm_engine&execution_type=crontab', '2005-01-01 06:00:01', NULL, '*/1::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('66e8b057-c13f-560a-d253-5529d7292fd7', 0, '2015-04-12 02:24:42', '2015-04-12 02:24:42', '1', '1', 'wfm_scheduled_task', 'url::http://localhost/fzglsys/index.php?entryPoint=wfm_scheduled_task', '2005-01-01 12:30:01', NULL, '*/1::*::*::*::*', NULL, NULL, NULL, 'Active', 1);

-- --------------------------------------------------------

--
-- 表的结构 `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
CREATE TABLE IF NOT EXISTS `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `status`, `date_due_flag`, `date_due`, `date_start_flag`, `date_start`, `parent_type`, `parent_id`, `contact_id`, `priority`) VALUES
('f02e52fd-d3b3-6173-9d79-552bbdc986f3', 'test task', '2015-04-13 12:59:13', '2015-04-13 13:09:14', '1', '1', 'adfasdfzxcZXCZXc', 0, '1', 'In Progress', 1, NULL, 1, NULL, 'Accounts', '', '', 'High');

-- --------------------------------------------------------

--
-- 表的结构 `tracker`
--

DROP TABLE IF EXISTS `tracker`;
CREATE TABLE IF NOT EXISTS `tracker` (
`id` int(11) NOT NULL,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(32, 'dbd8c2de-cc13-16fe-5cae-552bbda8c345', '1', 'asol_Process', '4de0b4e3-efb6-f2ff-f09a-5529de10b428', '放款流程', '2015-04-13 12:57:40', 'detailview', 'h8ohf07aod3n16gbvs35aek833', 1, 0),
(46, '175a3685-83ba-026c-3f28-552bbfde8a5b', '23d39e87-2c70-3cc2-270c-552b2baee075', 'Tasks', 'f02e52fd-d3b3-6173-9d79-552bbdc986f3', 'test task', '2015-04-13 13:08:19', 'detailview', 'df902ganvr5l2mi4lrttarqku3', 1, 0),
(52, '223eff28-c334-fe2f-c9b9-552caeb90b2f', '1', 'asol_Process', '203b174f-6776-2fd4-ecc5-552caea28e18', 'test wfm', '2015-04-14 06:08:02', 'save', 'm19m6rveffe9cmg47al22k2e21', 1, 0),
(53, 'e01b7d06-185e-d7de-7d0a-552cb0b521e6', '1', 'asol_Process', 'd592cd05-af65-91a7-2665-552cb04682b0', 'test wfm', '2015-04-14 06:13:20', 'save', 'loukog5ue1935tt2tqtlqviop1', 1, 0),
(54, '33285f7f-64c6-6040-761b-552cb05fe2b3', '1', 'asol_Events', '4a08f41f-1d6f-9bf7-5b28-552cb09dfd5a', 'Event_ 1', '2015-04-14 06:15:43', 'detailview', 'loukog5ue1935tt2tqtlqviop1', 1, 0),
(55, '68f20269-0eb1-738a-e261-552cb1a447e1', '1', 'EmailTemplates', '60dc19bf-680d-b76b-a117-5529d5a68b05', 'System-generated password email', '2015-04-14 06:17:36', 'detailview', 'loukog5ue1935tt2tqtlqviop1', 1, 0),
(69, '6bcd08f1-fccd-003e-fe4b-552ddbf3c2b6', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'Employees', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'Liu Jack', '2015-04-15 03:29:32', 'detailview', 'cg0qgaa9blcajagedelq4ifg83', 1, 0),
(72, 'c50f249c-fd46-ec7b-da56-552ddbf095ba', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'fzgls_employer_info', '1eb1aa75-c25e-3e51-8911-552ddade7ecd', '先生 小军 曹', '2015-04-15 03:30:08', 'detailview', 'cg0qgaa9blcajagedelq4ifg83', 0, 0),
(78, '17016d22-36bb-28e8-6ef6-552ddb36a4b8', '23d39e87-2c70-3cc2-270c-552b2baee075', 'Employees', '1', 'Cao Jeff', '2015-04-15 03:31:20', 'detailview', 'q25c4bb8tdtao4s6hv57qp7pk1', 1, 0),
(79, '1f24f3a9-02be-641b-14f1-552ddb678972', '23d39e87-2c70-3cc2-270c-552b2baee075', 'Employees', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'Liu Jack', '2015-04-15 03:31:25', 'detailview', 'q25c4bb8tdtao4s6hv57qp7pk1', 1, 0),
(80, '70eee013-fe37-7b96-a88c-552ddb105680', '23d39e87-2c70-3cc2-270c-552b2baee075', 'Employees', '23d39e87-2c70-3cc2-270c-552b2baee075', 'Meng Jun', '2015-04-15 03:31:31', 'detailview', 'q25c4bb8tdtao4s6hv57qp7pk1', 1, 0),
(82, '531a11e8-b958-c3e8-a95d-552ddc0031af', '1', 'fzgls_employer_info', '1eb1aa75-c25e-3e51-8911-552ddade7ecd', '先生 小军 曹', '2015-04-15 03:34:41', 'detailview', 'rr3qslptvgvjtdnctc0t9qgiq1', 0, 0),
(92, '3519caa3-b6a2-4c32-3e1c-552f79368674', '1', 'Project', '1016d779-1c6f-8925-e5ff-552b8319a11b', 'test', '2015-04-16 08:59:41', 'detailview', 'bton1utit39v1n2lodgfulr295', 1, 0),
(155, '42726950-39e8-4038-d754-552fcd1966bf', '1', 'Tasks', 'f02e52fd-d3b3-6173-9d79-552bbdc986f3', 'test task', '2015-04-16 14:56:05', 'detailview', 'b2dso63sttp742e3oj2dgh56f2', 1, 0),
(161, '9cc17d2e-2ce2-f18c-772a-5530c6865697', '1', 'fzgls_jiekuangren_dangan', '779e8342-7025-906b-ddd8-5530c6ca7276', '小姐 ddf adsf', '2015-04-17 08:36:17', 'detailview', 'bton1utit39v1n2lodgfulr295', 0, 0),
(164, '3c8dd477-cc1a-939d-11c4-5530c915e74c', '1', 'fzgls_jiekuangren_dangan', '76faa869-0129-1da4-7626-5530c9778e1d', '小姐 adf asdf', '2015-04-17 08:50:34', 'detailview', 'bton1utit39v1n2lodgfulr295', 0, 0),
(165, 'e560e662-b555-20ae-c5c0-5530c94fcfb3', '1', 'fzgls_jiekuangren_dangan', 'c025d754-325a-1bba-b210-5530c9485e48', '小姐 fasd asdfasf', '2015-04-17 08:53:03', 'detailview', 'bton1utit39v1n2lodgfulr295', 0, 0),
(167, '720365a4-2240-eb15-b9c3-553125b4df99', '1', 'fzgls_jiekuangren_dangan', 'e4dfbf56-910d-f8e1-b4c0-553122657e96', '博士 5345 sdgf', '2015-04-17 15:21:46', 'detailview', 'o4iqic7ng91outa7nacsvu1bd3', 0, 0),
(169, 'cead63f1-29a4-99ef-a30d-553125e61013', '1', 'fzgls_jiekuangren_dangan', 'ef875075-ac3b-f123-833b-553125e983f9', '女士 2342 234', '2015-04-17 15:22:09', 'detailview', 'o4iqic7ng91outa7nacsvu1bd3', 0, 0),
(170, '32ad90e1-f778-bdf6-0477-55312518b36c', '1', 'fzgls_jiekuangren_dangan', 'ec3e2c4e-e5aa-7668-3119-55312570ad26', '博士 34234 23424', '2015-04-17 15:22:19', 'detailview', 'o4iqic7ng91outa7nacsvu1bd3', 0, 0),
(171, '69d24a47-015d-ea5b-6d67-5531269be2aa', '1', 'fzgls_jiekuangren_dangan', '30ed8e4d-c4f3-90e6-0f79-553126dbd0d9', '小姐 2323 3123', '2015-04-17 15:26:13', 'detailview', 'o4iqic7ng91outa7nacsvu1bd3', 0, 0),
(172, 'e4f8153e-5f11-2fa4-ad38-55312634f89c', '1', 'fzgls_jiekuangren_dangan', '71893b41-7755-7141-8f11-5531264f1855', '博士 5757 5675', '2015-04-17 15:27:07', 'detailview', 'o4iqic7ng91outa7nacsvu1bd3', 0, 0),
(173, '4cc77da1-be64-79f2-2b78-553128c2adca', '1', 'fzgls_jiekuangren_dangan', 'da470de7-3214-f08e-e5fb-553128c98984', '小姐 asdf asdf', '2015-04-17 15:34:25', 'detailview', 'e48a4umi4a1utef79lj96tfs65', 0, 0),
(174, '6bfee509-6e4f-3618-277a-5531282803b9', '1', 'fzgls_jiekuangren_dangan', '2b0ab487-8e59-11f8-fd22-5531288dd936', '博士 werwer 6456', '2015-04-17 15:38:20', 'detailview', 'e48a4umi4a1utef79lj96tfs65', 0, 0),
(175, 'ee441b5e-a657-a6e8-8e35-55312a84c267', '1', 'fzgls_jiekuangren_dangan', '86c77ef7-e022-2b69-56b8-55312a1cdf65', '女士 34532 23424', '2015-04-17 15:43:59', 'detailview', 'e48a4umi4a1utef79lj96tfs65', 0, 0),
(176, '132456c2-dc31-a1ff-5d9b-55312b8e4f59', '1', 'fzgls_jiekuangren_dangan', 'b3de828c-4d48-6c38-d805-55312b209567', '小姐 w23 3424', '2015-04-17 15:47:52', 'detailview', 'e48a4umi4a1utef79lj96tfs65', 0, 0),
(177, '43d29917-a006-fb9b-f679-55312dc970e9', '1', 'fzgls_jiekuangren_dangan', 'ee2af3c9-e15d-f7ee-2cff-55312d7ac513', '博士 35 345', '2015-04-17 15:56:32', 'detailview', 'e48a4umi4a1utef79lj96tfs65', 0, 0),
(180, 'ddb93ad7-3545-a933-ec3c-55347b0cff48', '1', 'fzgls_jiekuangren_dangan', '742d3ede-6648-049d-0c50-55347b90799e', '小姐 2342 234', '2015-04-20 04:06:04', 'editview', '79inhuvrejpl2td4ivos9d7ug1', 0, 0),
(184, '6289f842-8612-84ef-d7d7-55360d45d5ae', '1', 'Users', '1', 'Cao Jeff', '2015-04-21 08:44:46', 'detailview', '79inhuvrejpl2td4ivos9d7ug1', 1, 0),
(186, '6aca47f4-eefa-b21d-dcae-55360e1da0b3', '1', 'fzgls_fenggongsi_info', '8b4afdce-d416-d9c4-904e-552f7132e06e', '南京第一分公司', '2015-04-21 08:44:54', 'detailview', '79inhuvrejpl2td4ivos9d7ug1', 1, 0),
(188, 'ceb5da75-77dc-0238-9f33-55360e9d1d56', '1', 'Users', 'dcc5fa9d-a761-2542-e599-552b2bd91094', '刘 海', '2015-04-21 08:45:04', 'detailview', '79inhuvrejpl2td4ivos9d7ug1', 1, 0),
(191, '4294d10e-dfbe-9087-7e61-553614f6e388', '1', 'fzgls_jiekuangren_dangan', '94600e9a-450a-be7f-b66c-55360ddbbf68', '小姐 伟 周', '2015-04-21 09:10:38', 'editview', '79inhuvrejpl2td4ivos9d7ug1', 0, 0),
(193, '5a3ded95-0f8f-6100-c4e9-553614afb958', '1', 'fzgls_bumeng_mataine', '23ef85c4-2c84-ed6d-90b9-552f7273dd02', '开发一部', '2015-04-21 09:12:46', 'detailview', '79inhuvrejpl2td4ivos9d7ug1', 1, 0),
(197, '654502e4-6d9c-c043-fdc0-553615d574e2', '1', 'Users', '23d39e87-2c70-3cc2-270c-552b2baee075', '孟 军', '2015-04-21 09:16:50', 'detailview', '79inhuvrejpl2td4ivos9d7ug1', 1, 0),
(200, '787848d2-4173-ce4b-0715-553617d2f300', '1', 'fzgls_jiekuangren_dangan', 'b35510b2-910b-de36-9190-55361491c812', 'werwerv werw', '2015-04-21 09:24:13', 'detailview', '79inhuvrejpl2td4ivos9d7ug1', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
CREATE TABLE IF NOT EXISTS `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `upgrade_history`
--

INSERT INTO `upgrade_history` (`id`, `filename`, `md5sum`, `type`, `status`, `version`, `name`, `description`, `id_name`, `manifest`, `date_entered`, `enabled`) VALUES
('334ca19e-e8ce-56e7-97c8-5529d77bbdbc', 'upload/upgrades/module/_fix_sugarcrm6.5.X_module_selfReferencing_bug__version2.0.zip', 'c25933f41bd6d27539d29c37cbc088e3', 'module', 'installed', '2', 'fix_sugarcrm6510_self_referencing', 'Fix SugarCRM 6.5.10 module-self_referencing-bug', 'fix_sugarcrm6510_self_referencing', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEyOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6NDoiYXNvbCI7czo2OiJhdXRob3IiO3M6OToiQWxpbmVhU29sIjtzOjExOiJkZXNjcmlwdGlvbiI7czo0NzoiRml4IFN1Z2FyQ1JNIDYuNS4xMCBtb2R1bGUtc2VsZl9yZWZlcmVuY2luZy1idWciO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6MzM6ImZpeF9zdWdhcmNybTY1MTBfc2VsZl9yZWZlcmVuY2luZyI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTA6IjIwMTMtMDItMTgiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7ZDoyO31zOjExOiJpbnN0YWxsZGVmcyI7YTo1OntzOjI6ImlkIjtzOjMzOiJmaXhfc3VnYXJjcm02NTEwX3NlbGZfcmVmZXJlbmNpbmciO3M6NToiYmVhbnMiO2E6MDp7fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6NDoiY29weSI7YTozOntpOjA7YToyOntzOjQ6ImZyb20iO3M6MzY6IjxiYXNlcGF0aD4vZmlsZXMvTTJNUmVsYXRpb25zaGlwLnBocCI7czoyOiJ0byI7czozODoiZGF0YS9SZWxhdGlvbnNoaXBzL00yTVJlbGF0aW9uc2hpcC5waHAiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6MjY6IjxiYXNlcGF0aD4vZmlsZXMvTGluazIucGhwIjtzOjI6InRvIjtzOjE0OiJkYXRhL0xpbmsyLnBocCI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czozODoiPGJhc2VwYXRoPi9maWxlcy9PbmUyTVJlbGF0aW9uc2hpcC5waHAiO3M6MjoidG8iO3M6NDA6ImRhdGEvUmVsYXRpb25zaGlwcy9PbmUyTVJlbGF0aW9uc2hpcC5waHAiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2015-04-12 02:25:13', 1),
('435cced7-9247-ada5-6ac0-5529d76dcb3b', 'upload/upgrades/module/AlineaSolCommonBase_v1.3.zip', '8dd396b2ac5412e95a0458bb5d55214b', 'module', 'installed', '1.3', 'AlineaSol Common Base', '', 'AlineaSolCommonBase', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjA6e31zOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9czo2OiJyZWFkbWUiO3M6MDoiIjtzOjM6ImtleSI7czo0OiJhc29sIjtzOjY6ImF1dGhvciI7czo5OiJBbGluZWFTb2wiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoyMToiQWxpbmVhU29sIENvbW1vbiBCYXNlIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxMDoiMjAxNC0wOC0yOCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtzOjM6IjEuMyI7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YToxMDp7czoyOiJpZCI7czoxOToiQWxpbmVhU29sQ29tbW9uQmFzZSI7czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToyOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDY6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQWRtaW5pc3RyYXRpb24iO3M6MjoidG8iO3M6MjI6Im1vZHVsZXMvQWRtaW5pc3RyYXRpb24iO31pOjE7YToyOntzOjQ6ImZyb20iO3M6MTc6IjxiYXNlcGF0aD4vY3VzdG9tIjtzOjI6InRvIjtzOjY6ImN1c3RvbSI7fX1zOjg6Imxhbmd1YWdlIjthOjU6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9sYW5ndWFnZS9lbl91cy5hZG1pbmlzdHJhdGlvbi5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9sYW5ndWFnZS9zcF92ZS5hZG1pbmlzdHJhdGlvbi5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJzcF92ZSI7fWk6MjthOjM6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9sYW5ndWFnZS9lc19lcy5hZG1pbmlzdHJhdGlvbi5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlc19lcyI7fWk6MzthOjM6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9sYW5ndWFnZS9mcl9GUi5hZG1pbmlzdHJhdGlvbi5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJmcl9GUiI7fWk6NDthOjM6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9sYW5ndWFnZS9wdF9QVC5hZG1pbmlzdHJhdGlvbi5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJwdF9QVCI7fX1zOjExOiJwcmVfZXhlY3V0ZSI7YToxOntpOjA7czozNDoiPGJhc2VwYXRoPi9hY3Rpb25zL3ByZV9pbnN0YWxsLnBocCI7fXM6MTI6InBvc3RfZXhlY3V0ZSI7YToxOntpOjA7czozNToiPGJhc2VwYXRoPi9hY3Rpb25zL3Bvc3RfaW5zdGFsbC5waHAiO31zOjEzOiJwcmVfdW5pbnN0YWxsIjthOjE6e2k6MDtzOjM2OiI8YmFzZXBhdGg+L2FjdGlvbnMvcHJlX3VuaW5zdGFsbC5waHAiO31zOjE0OiJwb3N0X3VuaW5zdGFsbCI7YToxOntpOjA7czozNzoiPGJhc2VwYXRoPi9hY3Rpb25zL3Bvc3RfdW5pbnN0YWxsLnBocCI7fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2015-04-12 02:23:12', 1),
('44242779-b084-ce1a-2b24-5529da2c8763', 'upload/upgrades/module/AlineaSolAjaxPostRequestsIE10Compatibility.zip', '8375ed2fe2a62bc5efc0adf169507088', 'module', 'installed', '1.0', 'AlineaSol Ajax Post Requests IE10 Compatibility', 'AlineaSol: This module fixes a bug with IE10 & SugarCRM AjaxUI Feature', 'AlineaSolAjaxPostRequestsIE10Compatibility', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEwOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MDp7fXM6MjU6ImFjY2VwdGFibGVfc3VnYXJfdmVyc2lvbnMiO2E6MDp7fXM6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6NDc6IkFsaW5lYVNvbCBBamF4IFBvc3QgUmVxdWVzdHMgSUUxMCBDb21wYXRpYmlsaXR5IjtzOjExOiJkZXNjcmlwdGlvbiI7czo3MDoiQWxpbmVhU29sOiBUaGlzIG1vZHVsZSBmaXhlcyBhIGJ1ZyB3aXRoIElFMTAgJiBTdWdhckNSTSBBamF4VUkgRmVhdHVyZSI7czo2OiJhdXRob3IiO3M6OToiQWxpbmVhU29sIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxMDoiMjAxMy8wOC8xNiI7czo3OiJ2ZXJzaW9uIjtzOjM6IjEuMCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo0OiJpY29uIjtzOjA6IiI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjM6e3M6MjoiaWQiO3M6NDI6IkFsaW5lYVNvbEFqYXhQb3N0UmVxdWVzdHNJRTEwQ29tcGF0aWJpbGl0eSI7czoxMjoicG9zdF9leGVjdXRlIjthOjE6e2k6MDtzOjM1OiI8YmFzZXBhdGg+L2FjdGlvbnMvcG9zdF9pbnN0YWxsLnBocCI7fXM6MTQ6InBvc3RfdW5pbnN0YWxsIjthOjE6e2k6MDtzOjM3OiI8YmFzZXBhdGg+L2FjdGlvbnMvcG9zdF91bmluc3RhbGwucGhwIjt9fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2015-04-12 02:37:31', 1),
('67b17cde-bbff-81f7-f8c8-5529db0b6e4f', 'upload/upgrades/langpack/SugarCRM-LangPack-zh_cn-6.5.2.zip', '2e78ad1c858adb9cd82dcf71f249a7f1', 'langpack', 'installed', '6.5.2', 'SugarCRM-LangPack-zh_cn-6.5.2', '', '', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEwOntpOjA7YToyOntzOjEzOiJleGFjdF9tYXRjaGVzIjthOjA6e31zOjEzOiJyZWdleF9tYXRjaGVzIjthOjE6e2k6MDtzOjg6IjZcLjVcLjA/Ijt9fXM6MjQ6ImFjY2VwdGFibGVfc3VnYXJfZmxhdm9ycyI7YTozOntpOjA7czoyOiJDRSI7aToxO3M6MzoiUFJPIjtpOjI7czozOiJFTlQiO31zOjQ6Im5hbWUiO3M6Njc6IlN1Z2FyQ1JN566A5L2T5Lit5paH6K+t6KiA5YyF77yIU2ltcGxpZmllZCBDaGluZXNlIExhbmd1YWdlIFBhY2vvvIkiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjcyOiJTdWdhckNSTeeugOS9k+S4reaWh+ivreiogOWMhe+8iFNpbXBsaWZpZWQgQ2hpbmVzZSBMYW5ndWFnZSBQYWNr77yJNi41LjIiO3M6NjoiYXV0aG9yIjtzOjE2OiJoaWxlb25AZ21haWwuY29tIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxMDoiMjAxMi8wNy8zMSI7czo3OiJ2ZXJzaW9uIjtzOjU6IjYuNS4yIjtzOjQ6InR5cGUiO3M6ODoibGFuZ3BhY2siO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTt9czoxMToiaW5zdGFsbGRlZnMiO2E6Mzp7czoyOiJpZCI7czo1OiJ6aF9jbiI7czo0OiJjb3B5IjthOjM6e2k6MDthOjI6e3M6NDoiZnJvbSI7czoxODoiPGJhc2VwYXRoPi9tb2R1bGVzIjtzOjI6InRvIjtzOjc6Im1vZHVsZXMiO31pOjE7YToxOntzOjQ6ImZyb20iO3M6Mjc6IjxiYXNlcGF0aD4vaW5jbHVkZS9sYW5ndWFnZSI7fXM6MjoidG8iO3M6MTY6ImluY2x1ZGUvbGFuZ3VhZ2UiO31pOjA7YToyOntzOjQ6ImZyb20iO3M6Mjc6IjxiYXNlcGF0aD4vaW5zdGFsbC9sYW5ndWFnZSI7czoyOiJ0byI7czoxNjoiaW5zdGFsbC9sYW5ndWFnZSI7fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2015-04-12 02:43:51', 1),
('a016f14e-2e27-6e67-0965-5529dc5307b2', 'upload/upgrades/module/fzgl_sys_module2015_04_11_100502.zip', '1f6efd6823834a133f6b56ea8ea53ddb', 'module', 'installed', '1428739502', 'fzgl_sys_module', '', 'fzgl_sys_module', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6NToiZnpnbHMiO3M6NjoiYXV0aG9yIjtzOjA6IiI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjE1OiJmemdsX3N5c19tb2R1bGUiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDE1LTA0LTExIDA4OjA1OjAyIjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTQyODczOTUwMjtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjc6e3M6MjoiaWQiO3M6MTU6ImZ6Z2xfc3lzX21vZHVsZSI7czo1OiJiZWFucyI7YTo3OntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoyMDoiZnpnbHNfYnVtZW5nX21hdGFpbmUiO3M6NToiY2xhc3MiO3M6MjA6ImZ6Z2xzX2J1bWVuZ19tYXRhaW5lIjtzOjQ6InBhdGgiO3M6NTM6Im1vZHVsZXMvZnpnbHNfYnVtZW5nX21hdGFpbmUvZnpnbHNfYnVtZW5nX21hdGFpbmUucGhwIjtzOjM6InRhYiI7YjoxO31pOjE7YTo0OntzOjY6Im1vZHVsZSI7czoxOToiZnpnbHNfZW1wbG95ZXJfaW5mbyI7czo1OiJjbGFzcyI7czoxOToiZnpnbHNfZW1wbG95ZXJfaW5mbyI7czo0OiJwYXRoIjtzOjUxOiJtb2R1bGVzL2Z6Z2xzX2VtcGxveWVyX2luZm8vZnpnbHNfZW1wbG95ZXJfaW5mby5waHAiO3M6MzoidGFiIjtiOjE7fWk6MjthOjQ6e3M6NjoibW9kdWxlIjtzOjIxOiJmemdsc19mZW5nZ29uZ3NpX2luZm8iO3M6NToiY2xhc3MiO3M6MjE6ImZ6Z2xzX2Zlbmdnb25nc2lfaW5mbyI7czo0OiJwYXRoIjtzOjU1OiJtb2R1bGVzL2Z6Z2xzX2Zlbmdnb25nc2lfaW5mby9memdsc19mZW5nZ29uZ3NpX2luZm8ucGhwIjtzOjM6InRhYiI7YjoxO31pOjM7YTo0OntzOjY6Im1vZHVsZSI7czoyMzoiZnpnbHNfaGV6dW9fd2FpYnVfcXVkYW8iO3M6NToiY2xhc3MiO3M6MjM6ImZ6Z2xzX2hlenVvX3dhaWJ1X3F1ZGFvIjtzOjQ6InBhdGgiO3M6NTk6Im1vZHVsZXMvZnpnbHNfaGV6dW9fd2FpYnVfcXVkYW8vZnpnbHNfaGV6dW9fd2FpYnVfcXVkYW8ucGhwIjtzOjM6InRhYiI7YjoxO31pOjQ7YTo0OntzOjY6Im1vZHVsZSI7czoyNDoiZnpnbHNfamlla3VhbmdyZW5fZGFuZ2FuIjtzOjU6ImNsYXNzIjtzOjI0OiJmemdsc19qaWVrdWFuZ3Jlbl9kYW5nYW4iO3M6NDoicGF0aCI7czo2MToibW9kdWxlcy9memdsc19qaWVrdWFuZ3Jlbl9kYW5nYW4vZnpnbHNfamlla3VhbmdyZW5fZGFuZ2FuLnBocCI7czozOiJ0YWIiO2I6MTt9aTo1O2E6NDp7czo2OiJtb2R1bGUiO3M6MjA6ImZ6Z2xzX2pzamdfYmFzZV9pbmZvIjtzOjU6ImNsYXNzIjtzOjIwOiJmemdsc19qc2pnX2Jhc2VfaW5mbyI7czo0OiJwYXRoIjtzOjUzOiJtb2R1bGVzL2Z6Z2xzX2pzamdfYmFzZV9pbmZvL2Z6Z2xzX2pzamdfYmFzZV9pbmZvLnBocCI7czozOiJ0YWIiO2I6MTt9aTo2O2E6NDp7czo2OiJtb2R1bGUiO3M6MTk6ImZ6Z2xzX2tlZnVfbGl1Y2hlbmciO3M6NToiY2xhc3MiO3M6MTk6ImZ6Z2xzX2tlZnVfbGl1Y2hlbmciO3M6NDoicGF0aCI7czo1MToibW9kdWxlcy9memdsc19rZWZ1X2xpdWNoZW5nL2Z6Z2xzX2tlZnVfbGl1Y2hlbmcucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YTo3OntpOjA7YToyOntzOjQ6ImZyb20iO3M6NTI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvZnpnbHNfYnVtZW5nX21hdGFpbmUiO3M6MjoidG8iO3M6Mjg6Im1vZHVsZXMvZnpnbHNfYnVtZW5nX21hdGFpbmUiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6NTE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvZnpnbHNfZW1wbG95ZXJfaW5mbyI7czoyOiJ0byI7czoyNzoibW9kdWxlcy9memdsc19lbXBsb3llcl9pbmZvIjt9aToyO2E6Mjp7czo0OiJmcm9tIjtzOjUzOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2Z6Z2xzX2Zlbmdnb25nc2lfaW5mbyI7czoyOiJ0byI7czoyOToibW9kdWxlcy9memdsc19mZW5nZ29uZ3NpX2luZm8iO31pOjM7YToyOntzOjQ6ImZyb20iO3M6NTU6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvZnpnbHNfaGV6dW9fd2FpYnVfcXVkYW8iO3M6MjoidG8iO3M6MzE6Im1vZHVsZXMvZnpnbHNfaGV6dW9fd2FpYnVfcXVkYW8iO31pOjQ7YToyOntzOjQ6ImZyb20iO3M6NTY6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvZnpnbHNfamlla3VhbmdyZW5fZGFuZ2FuIjtzOjI6InRvIjtzOjMyOiJtb2R1bGVzL2Z6Z2xzX2ppZWt1YW5ncmVuX2RhbmdhbiI7fWk6NTthOjI6e3M6NDoiZnJvbSI7czo1MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9memdsc19qc2pnX2Jhc2VfaW5mbyI7czoyOiJ0byI7czoyODoibW9kdWxlcy9memdsc19qc2pnX2Jhc2VfaW5mbyI7fWk6NjthOjI6e3M6NDoiZnJvbSI7czo1MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9memdsc19rZWZ1X2xpdWNoZW5nIjtzOjI6InRvIjtzOjI3OiJtb2R1bGVzL2Z6Z2xzX2tlZnVfbGl1Y2hlbmciO319czo4OiJsYW5ndWFnZSI7YToyOntpOjA7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL3poX2NuLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfY24iO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2015-04-12 02:48:01', 1),
('a4ccd636-5dfb-d532-94f2-5529d77d6576', 'upload/upgrades/module/AlineaSolWorkFlowManager_Community_v5.1.zip', 'c84504c37169ccfbff3d3cb2c33f345a', 'module', 'installed', '5.1', 'AlineaSol WorkFlowManager - Community Edition', 'You do not need to uninstall previous WFM version. Please, see README.txt', 'AlineaSolWorkFlowManager', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjE0OntzOjE2OiJidWlsdF9pbl92ZXJzaW9uIjtzOjc6IjcuNS4wLjAiO3M6MjU6ImFjY2VwdGFibGVfc3VnYXJfdmVyc2lvbnMiO2E6MTp7aTowO3M6MDoiIjt9czoyNDoiYWNjZXB0YWJsZV9zdWdhcl9mbGF2b3JzIjthOjU6e2k6MDtzOjI6IkNFIjtpOjE7czozOiJQUk8iO2k6MjtzOjM6IkVOVCI7aTozO3M6NDoiQ09SUCI7aTo0O3M6MzoiVUxUIjt9czo2OiJyZWFkbWUiO3M6MDoiIjtzOjM6ImtleSI7czo0OiJhc29sIjtzOjY6ImF1dGhvciI7czo5OiJBbGluZWFTb2wiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjczOiJZb3UgZG8gbm90IG5lZWQgdG8gdW5pbnN0YWxsIHByZXZpb3VzIFdGTSB2ZXJzaW9uLiBQbGVhc2UsIHNlZSBSRUFETUUudHh0IjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjQ1OiJBbGluZWFTb2wgV29ya0Zsb3dNYW5hZ2VyIC0gQ29tbXVuaXR5IEVkaXRpb24iO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjEwOiIyMDE1LTAxLTIxIjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO3M6MzoiNS4xIjtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjEyOntzOjI6ImlkIjtzOjI0OiJBbGluZWFTb2xXb3JrRmxvd01hbmFnZXIiO3M6NToiYmVhbnMiO2E6ODp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MTM6ImFzb2xfQWN0aXZpdHkiO3M6NToiY2xhc3MiO3M6MTM6ImFzb2xfQWN0aXZpdHkiO3M6NDoicGF0aCI7czozOToibW9kdWxlcy9hc29sX0FjdGl2aXR5L2Fzb2xfQWN0aXZpdHkucGhwIjtzOjM6InRhYiI7YjowO31pOjE7YTo0OntzOjY6Im1vZHVsZSI7czoxMToiYXNvbF9FdmVudHMiO3M6NToiY2xhc3MiO3M6MTE6ImFzb2xfRXZlbnRzIjtzOjQ6InBhdGgiO3M6MzU6Im1vZHVsZXMvYXNvbF9FdmVudHMvYXNvbF9FdmVudHMucGhwIjtzOjM6InRhYiI7YjowO31pOjI7YTo0OntzOjY6Im1vZHVsZSI7czoxMToiYXNvbF9PbkhvbGQiO3M6NToiY2xhc3MiO3M6MTE6ImFzb2xfT25Ib2xkIjtzOjQ6InBhdGgiO3M6MzU6Im1vZHVsZXMvYXNvbF9PbkhvbGQvYXNvbF9PbkhvbGQucGhwIjtzOjM6InRhYiI7YjowO31pOjM7YTo0OntzOjY6Im1vZHVsZSI7czoxMjoiYXNvbF9Qcm9jZXNzIjtzOjU6ImNsYXNzIjtzOjEyOiJhc29sX1Byb2Nlc3MiO3M6NDoicGF0aCI7czozNzoibW9kdWxlcy9hc29sX1Byb2Nlc3MvYXNvbF9Qcm9jZXNzLnBocCI7czozOiJ0YWIiO2I6MTt9aTo0O2E6NDp7czo2OiJtb2R1bGUiO3M6MjE6ImFzb2xfUHJvY2Vzc0luc3RhbmNlcyI7czo1OiJjbGFzcyI7czoyMToiYXNvbF9Qcm9jZXNzSW5zdGFuY2VzIjtzOjQ6InBhdGgiO3M6NTU6Im1vZHVsZXMvYXNvbF9Qcm9jZXNzSW5zdGFuY2VzL2Fzb2xfUHJvY2Vzc0luc3RhbmNlcy5waHAiO3M6MzoidGFiIjtiOjA7fWk6NTthOjQ6e3M6NjoibW9kdWxlIjtzOjk6ImFzb2xfVGFzayI7czo1OiJjbGFzcyI7czo5OiJhc29sX1Rhc2siO3M6NDoicGF0aCI7czozMToibW9kdWxlcy9hc29sX1Rhc2svYXNvbF9UYXNrLnBocCI7czozOiJ0YWIiO2I6MDt9aTo2O2E6NDp7czo2OiJtb2R1bGUiO3M6MTc6ImFzb2xfV29ya2luZ05vZGVzIjtzOjU6ImNsYXNzIjtzOjE3OiJhc29sX1dvcmtpbmdOb2RlcyI7czo0OiJwYXRoIjtzOjQ3OiJtb2R1bGVzL2Fzb2xfV29ya2luZ05vZGVzL2Fzb2xfV29ya2luZ05vZGVzLnBocCI7czozOiJ0YWIiO2I6MDt9aTo3O2E6NDp7czo2OiJtb2R1bGUiO3M6MjY6ImFzb2xfV29ya0Zsb3dNYW5hZ2VyQ29tbW9uIjtzOjU6ImNsYXNzIjtzOjI2OiJhc29sX1dvcmtGbG93TWFuYWdlckNvbW1vbiI7czo0OiJwYXRoIjtzOjY1OiJtb2R1bGVzL2Fzb2xfV29ya0Zsb3dNYW5hZ2VyQ29tbW9uL2Fzb2xfV29ya0Zsb3dNYW5hZ2VyQ29tbW9uLnBocCI7czozOiJ0YWIiO2I6MDt9fXM6MTA6ImxheW91dGRlZnMiO2E6ODp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjkwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xheW91dGRlZnMvYXNvbF9ldmVudHNfYXNvbF9hY3Rpdml0eV9hc29sX0V2ZW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhc29sX0V2ZW50cyI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo5MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL2Fzb2xfcHJvY2Vzc19hc29sX2V2ZW50c19hc29sX1Byb2Nlc3MucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMjoiYXNvbF9Qcm9jZXNzIjt9aToyO2E6Mjp7czo0OiJmcm9tIjtzOjk0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xheW91dGRlZnMvYXNvbF9hY3Rpdml0eV9hc29sX2FjdGl2aXR5X2Fzb2xfQWN0aXZpdHkucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiYXNvbF9BY3Rpdml0eSI7fWk6MzthOjI6e3M6NDoiZnJvbSI7czo5MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL2Fzb2xfYWN0aXZpdHlfYXNvbF90YXNrX2Fzb2xfQWN0aXZpdHkucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiYXNvbF9BY3Rpdml0eSI7fWk6NDthOjI6e3M6NDoiZnJvbSI7czo5MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL2Fzb2xfZXZlbnRzX2Fzb2xfYWN0aXZpdHlfYXNvbF9BY3Rpdml0eS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJhc29sX0FjdGl2aXR5Ijt9aTo3O2E6Mjp7czo0OiJmcm9tIjtzOjkyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xheW91dGRlZnMvYXNvbF9wcm9jZXNzX2Fzb2xfZXZlbnRzXzFfYXNvbF9Qcm9jZXNzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6ImFzb2xfUHJvY2VzcyI7fWk6ODthOjI6e3M6NDoiZnJvbSI7czo5MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL2Fzb2xfcHJvY2Vzc19hc29sX2FjdGl2aXR5X2Fzb2xfUHJvY2Vzcy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJhc29sX1Byb2Nlc3MiO31pOjk7YToyOntzOjQ6ImZyb20iO3M6ODg6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGF5b3V0ZGVmcy9hc29sX3Byb2Nlc3NfYXNvbF90YXNrX2Fzb2xfUHJvY2Vzcy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJhc29sX1Byb2Nlc3MiO319czoxMzoicmVsYXRpb25zaGlwcyI7YTo3OntpOjA7YToxOntzOjk6Im1ldGFfZGF0YSI7czo4OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9yZWxhdGlvbnNoaXBzL2Fzb2xfZXZlbnRzX2Fzb2xfYWN0aXZpdHlNZXRhRGF0YS5waHAiO31pOjE7YToxOntzOjk6Im1ldGFfZGF0YSI7czo4ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9yZWxhdGlvbnNoaXBzL2Fzb2xfcHJvY2Vzc19hc29sX2V2ZW50c01ldGFEYXRhLnBocCI7fWk6MjthOjE6e3M6OToibWV0YV9kYXRhIjtzOjkxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3JlbGF0aW9uc2hpcHMvYXNvbF9hY3Rpdml0eV9hc29sX2FjdGl2aXR5TWV0YURhdGEucGhwIjt9aTozO2E6MTp7czo5OiJtZXRhX2RhdGEiO3M6ODc6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvcmVsYXRpb25zaGlwcy9hc29sX2FjdGl2aXR5X2Fzb2xfdGFza01ldGFEYXRhLnBocCI7fWk6NTthOjE6e3M6OToibWV0YV9kYXRhIjtzOjkwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3JlbGF0aW9uc2hpcHMvYXNvbF9wcm9jZXNzX2Fzb2xfZXZlbnRzXzFNZXRhRGF0YS5waHAiO31pOjY7YToxOntzOjk6Im1ldGFfZGF0YSI7czo5MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9yZWxhdGlvbnNoaXBzL2Fzb2xfcHJvY2Vzc19hc29sX2FjdGl2aXR5TWV0YURhdGEucGhwIjt9aTo3O2E6MTp7czo5OiJtZXRhX2RhdGEiO3M6ODY6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvcmVsYXRpb25zaGlwcy9hc29sX3Byb2Nlc3NfYXNvbF90YXNrTWV0YURhdGEucGhwIjt9fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTA6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo0NToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9hc29sX0FjdGl2aXR5IjtzOjI6InRvIjtzOjIxOiJtb2R1bGVzL2Fzb2xfQWN0aXZpdHkiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6NDM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvYXNvbF9FdmVudHMiO3M6MjoidG8iO3M6MTk6Im1vZHVsZXMvYXNvbF9FdmVudHMiO31pOjI7YToyOntzOjQ6ImZyb20iO3M6NDM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvYXNvbF9PbkhvbGQiO3M6MjoidG8iO3M6MTk6Im1vZHVsZXMvYXNvbF9PbkhvbGQiO31pOjM7YToyOntzOjQ6ImZyb20iO3M6NDQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvYXNvbF9Qcm9jZXNzIjtzOjI6InRvIjtzOjIwOiJtb2R1bGVzL2Fzb2xfUHJvY2VzcyI7fWk6NDthOjI6e3M6NDoiZnJvbSI7czo1MzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9hc29sX1Byb2Nlc3NJbnN0YW5jZXMiO3M6MjoidG8iO3M6Mjk6Im1vZHVsZXMvYXNvbF9Qcm9jZXNzSW5zdGFuY2VzIjt9aTo1O2E6Mjp7czo0OiJmcm9tIjtzOjQxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2Fzb2xfVGFzayI7czoyOiJ0byI7czoxNzoibW9kdWxlcy9hc29sX1Rhc2siO31pOjY7YToyOntzOjQ6ImZyb20iO3M6NDk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvYXNvbF9Xb3JraW5nTm9kZXMiO3M6MjoidG8iO3M6MjU6Im1vZHVsZXMvYXNvbF9Xb3JraW5nTm9kZXMiO31pOjc7YToyOntzOjQ6ImZyb20iO3M6MTc6IjxiYXNlcGF0aD4vY3VzdG9tIjtzOjI6InRvIjtzOjY6ImN1c3RvbSI7fWk6ODthOjI6e3M6NDoiZnJvbSI7czozOToiPGJhc2VwYXRoPi9pbmNsdWRlL2dlbmVyaWMvU3VnYXJXaWRnZXRzIjtzOjI6InRvIjtzOjI4OiJpbmNsdWRlL2dlbmVyaWMvU3VnYXJXaWRnZXRzIjt9aTo5O2E6Mjp7czo0OiJmcm9tIjtzOjU4OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2Fzb2xfV29ya0Zsb3dNYW5hZ2VyQ29tbW9uIjtzOjI6InRvIjtzOjM0OiJtb2R1bGVzL2Fzb2xfV29ya0Zsb3dNYW5hZ2VyQ29tbW9uIjt9fXM6ODoibGFuZ3VhZ2UiO2E6MTg6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo3MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lbl91cy5hc29sX0FjdGl2aXR5LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTM6ImFzb2xfQWN0aXZpdHkiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6Njg6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZW5fdXMuYXNvbF9FdmVudHMucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXNvbF9FdmVudHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjI7YTozOntzOjQ6ImZyb20iO3M6Njk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZW5fdXMuYXNvbF9Qcm9jZXNzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6ImFzb2xfUHJvY2VzcyI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MzthOjM6e3M6NDoiZnJvbSI7czo2NjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lbl91cy5hc29sX1Rhc2sucGhwIjtzOjk6InRvX21vZHVsZSI7czo5OiJhc29sX1Rhc2siO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjQ7YTozOntzOjQ6ImZyb20iO3M6Njc6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLkFsaW5lYVNvbFdGTS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6NTthOjM6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9sYW5ndWFnZS9lbl91cy5hZG1pbmlzdHJhdGlvbi5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTA7YTozOntzOjQ6ImZyb20iO3M6NzA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2Uvc3BfdmUuYXNvbF9BY3Rpdml0eS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJhc29sX0FjdGl2aXR5IjtzOjg6Imxhbmd1YWdlIjtzOjU6InNwX3ZlIjt9aToxMTthOjM6e3M6NDoiZnJvbSI7czo2ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9zcF92ZS5hc29sX0V2ZW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhc29sX0V2ZW50cyI7czo4OiJsYW5ndWFnZSI7czo1OiJzcF92ZSI7fWk6MTI7YTozOntzOjQ6ImZyb20iO3M6Njk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2Uvc3BfdmUuYXNvbF9Qcm9jZXNzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6ImFzb2xfUHJvY2VzcyI7czo4OiJsYW5ndWFnZSI7czo1OiJzcF92ZSI7fWk6MTM7YTozOntzOjQ6ImZyb20iO3M6NjY6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2Uvc3BfdmUuYXNvbF9UYXNrLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6OToiYXNvbF9UYXNrIjtzOjg6Imxhbmd1YWdlIjtzOjU6InNwX3ZlIjt9aToxNDthOjM6e3M6NDoiZnJvbSI7czo2NzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vc3BfdmUuQWxpbmVhU29sV0ZNLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InNwX3ZlIjt9aToxNTthOjM6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9sYW5ndWFnZS9zcF92ZS5hZG1pbmlzdHJhdGlvbi5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJzcF92ZSI7fWk6MjA7YTozOntzOjQ6ImZyb20iO3M6NzA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZnJfRlIuYXNvbF9BY3Rpdml0eS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJhc29sX0FjdGl2aXR5IjtzOjg6Imxhbmd1YWdlIjtzOjU6ImZyX0ZSIjt9aToyMTthOjM6e3M6NDoiZnJvbSI7czo2ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9mcl9GUi5hc29sX0V2ZW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhc29sX0V2ZW50cyI7czo4OiJsYW5ndWFnZSI7czo1OiJmcl9GUiI7fWk6MjI7YTozOntzOjQ6ImZyb20iO3M6Njk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZnJfRlIuYXNvbF9Qcm9jZXNzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6ImFzb2xfUHJvY2VzcyI7czo4OiJsYW5ndWFnZSI7czo1OiJmcl9GUiI7fWk6MjM7YTozOntzOjQ6ImZyb20iO3M6NjY6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZnJfRlIuYXNvbF9UYXNrLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6OToiYXNvbF9UYXNrIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImZyX0ZSIjt9aToyNDthOjM6e3M6NDoiZnJvbSI7czo2NzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZnJfRlIuQWxpbmVhU29sV0ZNLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImZyX0ZSIjt9aToyNTthOjM6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9sYW5ndWFnZS9mcl9GUi5hZG1pbmlzdHJhdGlvbi5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJmcl9GUiI7fX1zOjc6InZhcmRlZnMiO2E6MTM6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo4OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2Fzb2xfZXZlbnRzX2Fzb2xfYWN0aXZpdHlfYXNvbF9BY3Rpdml0eS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJhc29sX0FjdGl2aXR5Ijt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjg3OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvYXNvbF9ldmVudHNfYXNvbF9hY3Rpdml0eV9hc29sX0V2ZW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhc29sX0V2ZW50cyI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czo4NjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2Fzb2xfcHJvY2Vzc19hc29sX2V2ZW50c19hc29sX0V2ZW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhc29sX0V2ZW50cyI7fWk6MzthOjI6e3M6NDoiZnJvbSI7czo4NzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2Fzb2xfcHJvY2Vzc19hc29sX2V2ZW50c19hc29sX1Byb2Nlc3MucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMjoiYXNvbF9Qcm9jZXNzIjt9aTo0O2E6Mjp7czo0OiJmcm9tIjtzOjkxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvYXNvbF9hY3Rpdml0eV9hc29sX2FjdGl2aXR5X2Fzb2xfQWN0aXZpdHkucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiYXNvbF9BY3Rpdml0eSI7fWk6NTthOjI6e3M6NDoiZnJvbSI7czo4NzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2Fzb2xfYWN0aXZpdHlfYXNvbF90YXNrX2Fzb2xfQWN0aXZpdHkucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiYXNvbF9BY3Rpdml0eSI7fWk6NjthOjI6e3M6NDoiZnJvbSI7czo4MzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2Fzb2xfYWN0aXZpdHlfYXNvbF90YXNrX2Fzb2xfVGFzay5waHAiO3M6OToidG9fbW9kdWxlIjtzOjk6ImFzb2xfVGFzayI7fWk6OTthOjI6e3M6NDoiZnJvbSI7czo4ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2Fzb2xfcHJvY2Vzc19hc29sX2V2ZW50c18xX2Fzb2xfRXZlbnRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFzb2xfRXZlbnRzIjt9aToxMDthOjI6e3M6NDoiZnJvbSI7czo4OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2Fzb2xfcHJvY2Vzc19hc29sX2V2ZW50c18xX2Fzb2xfUHJvY2Vzcy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJhc29sX1Byb2Nlc3MiO31pOjExO2E6Mjp7czo0OiJmcm9tIjtzOjkwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvYXNvbF9wcm9jZXNzX2Fzb2xfYWN0aXZpdHlfYXNvbF9BY3Rpdml0eS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJhc29sX0FjdGl2aXR5Ijt9aToxMjthOjI6e3M6NDoiZnJvbSI7czo4OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2Fzb2xfcHJvY2Vzc19hc29sX2FjdGl2aXR5X2Fzb2xfUHJvY2Vzcy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJhc29sX1Byb2Nlc3MiO31pOjEzO2E6Mjp7czo0OiJmcm9tIjtzOjgyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvYXNvbF9wcm9jZXNzX2Fzb2xfdGFza19hc29sX1Rhc2sucGhwIjtzOjk6InRvX21vZHVsZSI7czo5OiJhc29sX1Rhc2siO31pOjE0O2E6Mjp7czo0OiJmcm9tIjtzOjg1OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvYXNvbF9wcm9jZXNzX2Fzb2xfdGFza19hc29sX1Byb2Nlc3MucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMjoiYXNvbF9Qcm9jZXNzIjt9fXM6MTI6ImxheW91dGZpZWxkcyI7YTozOntpOjA7YToxOntzOjE3OiJhZGRpdGlvbmFsX2ZpZWxkcyI7YTowOnt9fWk6MTthOjE6e3M6MTc6ImFkZGl0aW9uYWxfZmllbGRzIjthOjA6e319aToyO2E6MTp7czoxNzoiYWRkaXRpb25hbF9maWVsZHMiO2E6MDp7fX19czoxMToicHJlX2V4ZWN1dGUiO2E6MTp7aTowO3M6MzQ6IjxiYXNlcGF0aD4vYWN0aW9ucy9wcmVfaW5zdGFsbC5waHAiO31zOjEyOiJwb3N0X2V4ZWN1dGUiO2E6MTp7aTowO3M6MzU6IjxiYXNlcGF0aD4vYWN0aW9ucy9wb3N0X2luc3RhbGwucGhwIjt9czoxNDoicG9zdF91bmluc3RhbGwiO2E6MTp7aTowO3M6Mzc6IjxiYXNlcGF0aD4vYWN0aW9ucy9wb3N0X3VuaW5zdGFsbC5waHAiO319czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2015-04-12 02:24:42', 1),
('bd1ab5e7-26b1-c75e-5f81-5529d608fa7f', 'upload/upgrades/module/AlineaSolUninstallableAsolModulesPatch_v1.0.zip', 'aafb9696add069ea169266e3e2bb6a3e', 'module', 'installed', '1.0', 'AlineaSol Uninstallable Modules Patch', 'AlineaSol: This module fixes a problem with AlineaSol Modules and Uninstalling Button', 'AlineaSolUninstallableModulesPatch', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEwOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MDp7fXM6MjU6ImFjY2VwdGFibGVfc3VnYXJfdmVyc2lvbnMiO2E6MDp7fXM6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6Mzc6IkFsaW5lYVNvbCBVbmluc3RhbGxhYmxlIE1vZHVsZXMgUGF0Y2giO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjg1OiJBbGluZWFTb2w6IFRoaXMgbW9kdWxlIGZpeGVzIGEgcHJvYmxlbSB3aXRoIEFsaW5lYVNvbCBNb2R1bGVzIGFuZCBVbmluc3RhbGxpbmcgQnV0dG9uIjtzOjY6ImF1dGhvciI7czo5OiJBbGluZWFTb2wiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjEwOiIyMDEyLzAyLzA2IjtzOjc6InZlcnNpb24iO3M6MzoiMS4wIjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjQ6Imljb24iO3M6MDoiIjt9czoxMToiaW5zdGFsbGRlZnMiO2E6Mzp7czoyOiJpZCI7czozNDoiQWxpbmVhU29sVW5pbnN0YWxsYWJsZU1vZHVsZXNQYXRjaCI7czoxMjoicG9zdF9leGVjdXRlIjthOjE6e2k6MDtzOjM1OiI8YmFzZXBhdGg+L2FjdGlvbnMvcG9zdF9pbnN0YWxsLnBocCI7fXM6MTQ6InBvc3RfdW5pbnN0YWxsIjthOjE6e2k6MDtzOjM3OiI8YmFzZXBhdGg+L2FjdGlvbnMvcG9zdF91bmluc3RhbGwucGhwIjt9fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2015-04-12 02:22:16', 1);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`) VALUES
('1', 'admin', '$1$Ftr7BjVE$4DxSlrgXYelshc0rVw4gn.', 0, NULL, NULL, 1, 'Cao', 'Jeff', 1, 0, 1, NULL, '2015-04-12 02:17:29', '2015-04-16 14:08:28', '1', '', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0),
('23d39e87-2c70-3cc2-270c-552b2baee075', 'mengjun', '$1$z4YZeWUF$sKmUpk2qFxU/YnNvORPOK.', 0, '2015-04-13 13:06:00', NULL, 1, '孟', '军', 0, 0, 1, NULL, '2015-04-13 02:35:00', '2015-04-16 14:42:37', '1', '1', NULL, NULL, NULL, '234234124', '35345345341234', NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0),
('dcc5fa9d-a761-2542-e599-552b2bd91094', 'jack', '$1$A71qJAE1$6e/z.DKfFWbR3UBhJolps0', 0, '2015-04-15 03:28:00', NULL, 1, '刘', '海', 0, 0, 1, NULL, '2015-04-13 02:35:29', '2015-04-16 14:42:10', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `users_cstm`
--

DROP TABLE IF EXISTS `users_cstm`;
CREATE TABLE IF NOT EXISTS `users_cstm` (
  `id_c` char(36) NOT NULL,
  `gong_hao_c` varchar(6) DEFAULT NULL,
  `yuangong_status_c` varchar(100) DEFAULT 'yuangong_status_02',
  `duty_type_c` varchar(100) DEFAULT 'duty_type_01',
  `xinbie_type_c` varchar(100) DEFAULT 'xinbie_type_man',
  `shenfen_zheng_c` varchar(20) DEFAULT NULL,
  `guding_gongzi_c` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `gongzi_butie_c` decimal(26,6) DEFAULT NULL,
  `gongzi_jixiao_c` decimal(26,6) DEFAULT NULL,
  `fzgls_bumeng_mataine_id_c` char(36) DEFAULT NULL,
  `fzgls_fenggongsi_info_id_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users_cstm`
--

INSERT INTO `users_cstm` (`id_c`, `gong_hao_c`, `yuangong_status_c`, `duty_type_c`, `xinbie_type_c`, `shenfen_zheng_c`, `guding_gongzi_c`, `currency_id`, `gongzi_butie_c`, `gongzi_jixiao_c`, `fzgls_bumeng_mataine_id_c`, `fzgls_fenggongsi_info_id_c`) VALUES
('1', '100027', 'yuangong_status_02', 'duty_type_01', 'xinbie_type_man', '74613146456131354', NULL, '', NULL, NULL, '23ef85c4-2c84-ed6d-90b9-552f7273dd02', '8b4afdce-d416-d9c4-904e-552f7132e06e'),
('23d39e87-2c70-3cc2-270c-552b2baee075', '100026', 'yuangong_status_02', 'duty_type_01', 'xinbie_type_man', '978641313131', NULL, '', NULL, NULL, '23ef85c4-2c84-ed6d-90b9-552f7273dd02', '8b4afdce-d416-d9c4-904e-552f7132e06e'),
('dcc5fa9d-a761-2542-e599-552b2bd91094', '100025', 'yuangong_status_02', 'duty_type_01', 'xinbie_type_man', '4643213164565', NULL, '', NULL, NULL, '23ef85c4-2c84-ed6d-90b9-552f7273dd02', '8b4afdce-d416-d9c4-904e-552f7132e06e');

-- --------------------------------------------------------

--
-- 表的结构 `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
CREATE TABLE IF NOT EXISTS `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
CREATE TABLE IF NOT EXISTS `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
CREATE TABLE IF NOT EXISTS `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users_password_link`
--

INSERT INTO `users_password_link` (`id`, `username`, `date_generated`, `deleted`) VALUES
('184ed358-8ef7-be6f-311d-552bbe7d86b0', 'mengjun', '2015-04-13 13:02:25', NULL),
('791d5d97-3db5-2d99-6885-552bbf155f5a', 'mengjun', '2015-04-13 13:05:13', 1);

-- --------------------------------------------------------

--
-- 表的结构 `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
CREATE TABLE IF NOT EXISTS `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
CREATE TABLE IF NOT EXISTS `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('138948f6-f1cc-33aa-ff63-552bbf40d422', 'Home', 0, '2015-04-13 13:07:09', '2015-04-13 13:07:09', '23d39e87-2c70-3cc2-270c-552b2baee075', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6ImRhMGQ1OGIzLTdhZTQtMGQxOS02OGMzLTU1MmJiZjI3NzE2YyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czozMDoiTEJMX0RBU0hMRVRfRElTQ09WRVJfU1VHQVJfUFJPIjtzOjM6InVybCI7czo0MjoiaHR0cHM6Ly93d3cuc3VnYXJjcm0uY29tL2NybS9wcm9kdWN0L2dvcHJvIjtzOjY6ImhlaWdodCI7aTozMTU7fX1zOjM2OiJkYTE0ODhlNC1mNDM2LTllN2QtYmQwNC01NTJiYmZhYTA1MTkiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjQ6Im1vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiJkYTE3YzBlMC01ZjU0LTg4YTItZWYxOC01NTJiYmY3OTc0NmYiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTM6ImlGcmFtZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjQ6IkhvbWUiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjE7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvaUZyYW1lRGFzaGxldC9pRnJhbWVEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjM6e3M6MTA6InRpdGxlTGFiZWwiO3M6MjI6IkxCTF9EQVNITEVUX1NVR0FSX05FV1MiO3M6MzoidXJsIjtzOjQxOiJodHRwczovL3d3dy5zdWdhcmNybS5jb20vY3JtL3Byb2R1Y3QvbmV3cyI7czo2OiJoZWlnaHQiO2k6MzE1O319czozNjoiZGUwMzAyODUtNzZlNS0xM2M1LWNmMjAtNTUyYmJmYmZhM2E1IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhbGxzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FsbHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiZGYzODBjMGQtYTUwYS0wOTA1LTIwNTctNTUyYmJmMDI3YWZiIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiTWVldGluZ3MiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL01lZXRpbmdzL0Rhc2hsZXRzL015TWVldGluZ3NEYXNobGV0L015TWVldGluZ3NEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiZTAwNzliNzItN2YzZi0wZTJhLWUxMTctNTUyYmJmM2FmMzM5IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJlMWFjOTBiNS1kZmRmLTlhYTUtNmJkYi01NTJiYmY3ZmNmMzkiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15QWNjb3VudHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJBY2NvdW50cyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJlMzFhYWNiMC01MDQ3LTAzYTctZTAxNS01NTJiYmZhMTRmZGMiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJMZWFkcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX19czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Njp7aTowO3M6MzY6ImRhMGQ1OGIzLTdhZTQtMGQxOS02OGMzLTU1MmJiZjI3NzE2YyI7aToxO3M6MzY6ImRlMDMwMjg1LTc2ZTUtMTNjNS1jZjIwLTU1MmJiZmJmYTNhNSI7aToyO3M6MzY6ImRmMzgwYzBkLWE1MGEtMDkwNS0yMDU3LTU1MmJiZjAyN2FmYiI7aTozO3M6MzY6ImUwMDc5YjcyLTdmM2YtMGUyYS1lMTE3LTU1MmJiZjNhZjMzOSI7aTo0O3M6MzY6ImUxYWM5MGI1LWRmZGYtOWFhNS02YmRiLTU1MmJiZjdmY2YzOSI7aTo1O3M6MzY6ImUzMWFhY2IwLTUwNDctMDNhNy1lMDE1LTU1MmJiZmExNGZkYyI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiZGExNDg4ZTQtZjQzNi05ZTdkLWJkMDQtNTUyYmJmYWEwNTE5IjtpOjE7czozNjoiZGExN2MwZTAtNWY1NC04OGEyLWVmMTgtNTUyYmJmNzk3NDZmIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),
('1c561dec-4e58-a2bc-3987-552bbf4fb152', 'Home2_CALL', 0, '2015-04-13 13:07:09', '2015-04-13 13:07:09', '23d39e87-2c70-3cc2-270c-552b2baee075', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('24b1caf8-7db9-4961-ded7-5529d69564dc', 'ETag', 0, '2015-04-12 02:20:59', '2015-04-12 02:48:01', '1', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Nzt9'),
('276405b1-a36c-133b-a609-5529df5ccc79', 'asol_Task2_ASOL_TASK', 0, '2015-04-12 02:57:05', '2015-04-12 02:57:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2c7bf96b-3627-7e97-8bf2-552bbfee62fd', 'Home2_MEETING', 0, '2015-04-13 13:07:09', '2015-04-13 13:07:09', '23d39e87-2c70-3cc2-270c-552b2baee075', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('314ba0be-6be5-5fff-49e5-5529d68a98aa', 'Home', 0, '2015-04-12 02:20:59', '2015-04-12 02:20:59', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6ImQyOTk0ZGViLTVmZjAtYjE5Ni0wNjQyLTU1MjlkNjQ0ZGE5NyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czozMDoiTEJMX0RBU0hMRVRfRElTQ09WRVJfU1VHQVJfUFJPIjtzOjM6InVybCI7czo0MjoiaHR0cHM6Ly93d3cuc3VnYXJjcm0uY29tL2NybS9wcm9kdWN0L2dvcHJvIjtzOjY6ImhlaWdodCI7aTozMTU7fX1zOjM2OiJkMjljOGNjMC1jMjYwLWE4MmYtY2FiMC01NTI5ZDZjZGEwOWYiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjQ6Im1vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiJkMjllMmYwZi1kODljLWU4OGYtZDdjMC01NTI5ZDZkNjRkNGUiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTM6ImlGcmFtZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjQ6IkhvbWUiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjE7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvaUZyYW1lRGFzaGxldC9pRnJhbWVEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjM6e3M6MTA6InRpdGxlTGFiZWwiO3M6MjI6IkxCTF9EQVNITEVUX1NVR0FSX05FV1MiO3M6MzoidXJsIjtzOjQxOiJodHRwczovL3d3dy5zdWdhcmNybS5jb20vY3JtL3Byb2R1Y3QvbmV3cyI7czo2OiJoZWlnaHQiO2k6MzE1O319czozNjoiZDllYmI1MWUtNzM5My0zMGM4LWRjODAtNTUyOWQ2ODc3NDI2IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhbGxzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FsbHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiZGMwYzgzNzAtMzQzZS0zODFmLWRlZjAtNTUyOWQ2MWMwODYyIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiTWVldGluZ3MiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL01lZXRpbmdzL0Rhc2hsZXRzL015TWVldGluZ3NEYXNobGV0L015TWVldGluZ3NEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiZGRkNDY4NTMtNDQxYi1kYmMzLTM3ZTAtNTUyOWQ2Zjc0OGU1IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJlMDE5NjQ4Zi00OWNlLTA0ZjctNWIzZS01NTI5ZDZjZjVlZTMiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15QWNjb3VudHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJBY2NvdW50cyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJlMmFlMmQ0MC1jNDMwLTliNWEtODE3YS01NTI5ZDZkMDRhZWIiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJMZWFkcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX19czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Njp7aTowO3M6MzY6ImQyOTk0ZGViLTVmZjAtYjE5Ni0wNjQyLTU1MjlkNjQ0ZGE5NyI7aToxO3M6MzY6ImQ5ZWJiNTFlLTczOTMtMzBjOC1kYzgwLTU1MjlkNjg3NzQyNiI7aToyO3M6MzY6ImRjMGM4MzcwLTM0M2UtMzgxZi1kZWYwLTU1MjlkNjFjMDg2MiI7aTozO3M6MzY6ImRkZDQ2ODUzLTQ0MWItZGJjMy0zN2UwLTU1MjlkNmY3NDhlNSI7aTo0O3M6MzY6ImUwMTk2NDhmLTQ5Y2UtMDRmNy01YjNlLTU1MjlkNmNmNWVlMyI7aTo1O3M6MzY6ImUyYWUyZDQwLWM0MzAtOWI1YS04MTdhLTU1MjlkNmQwNGFlYiI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiZDI5YzhjYzAtYzI2MC1hODJmLWNhYjAtNTUyOWQ2Y2RhMDlmIjtpOjE7czozNjoiZDI5ZTJmMGYtZDg5Yy1lODhmLWQ3YzAtNTUyOWQ2ZDY0ZDRlIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),
('3241b237-7049-1e2f-e6ec-552bbfcf74f7', 'Home2_OPPORTUNITY', 0, '2015-04-13 13:07:09', '2015-04-13 13:07:09', '23d39e87-2c70-3cc2-270c-552b2baee075', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('331f264e-9fbb-7d4e-c46b-552bbf8ac28a', 'Home2_ACCOUNT', 0, '2015-04-13 13:07:09', '2015-04-13 13:07:09', '23d39e87-2c70-3cc2-270c-552b2baee075', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('339f647c-5a71-ce1c-e45d-552bbffc18c9', 'Home2_LEAD', 0, '2015-04-13 13:07:09', '2015-04-13 13:07:09', '23d39e87-2c70-3cc2-270c-552b2baee075', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('34117231-76de-3e24-7849-552bbf2b8b98', 'Home2_SUGARFEED', 0, '2015-04-13 13:07:09', '2015-04-13 13:07:09', '23d39e87-2c70-3cc2-270c-552b2baee075', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('37bd3ce8-6a87-1f92-3e06-5529d6cdb412', 'Home2_CALL', 0, '2015-04-12 02:20:59', '2015-04-12 02:20:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('38329739-8243-5fc0-13fb-5529d67d0b70', 'Home2_MEETING', 0, '2015-04-12 02:20:59', '2015-04-12 02:20:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('388ec0d6-8c2c-6163-92f2-5529d6526cd9', 'Home2_OPPORTUNITY', 0, '2015-04-12 02:20:59', '2015-04-12 02:20:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('38944ce5-6015-b342-89ce-5529d5695d04', 'global', 0, '2015-04-12 02:17:29', '2015-04-21 09:12:38', '1', 'YTozMDp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjM4NjhlMzg2LWUyODItZDBmNC1kMzA4LTU1MjlkNWNkZGU2MiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjY6IuaJgOaciSI7czoxMDoiRW1wbG95ZWVzUSI7YTozOntzOjY6Im1vZHVsZSI7czo5OiJFbXBsb3llZXMiO3M6NjoiYWN0aW9uIjtzOjU6ImluZGV4IjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO31zOjI1OiJmemdsc19qaWVrdWFuZ3Jlbl9kYW5nYW5RIjthOjEyOntzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czo2OiJtb2R1bGUiO3M6MjQ6ImZ6Z2xzX2ppZWt1YW5ncmVuX2RhbmdhbiI7czo5OiJhamF4X2xvYWQiO3M6MToiMSI7czoxNDoibG9hZExhbmd1YWdlSlMiO3M6MToiMSI7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7czoxNzoic2VhcmNoX25hbWVfYmFzaWMiO3M6MDoiIjtzOjIzOiJjdXJyZW50X3VzZXJfb25seV9iYXNpYyI7czoxOiIwIjtzOjY6ImJ1dHRvbiI7czo2OiLmn6Xmib4iO3M6MTQ6ImZvclF1aWNrQ3JlYXRlIjtiOjE7fXM6MjE6ImZ6Z2xzX2J1bWVuZ19tYXRhaW5lUSI7YToxMzp7czo2OiJtb2R1bGUiO3M6MjA6ImZ6Z2xzX2J1bWVuZ19tYXRhaW5lIjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6MTM6Im5hbWVfYWR2YW5jZWQiO3M6MDoiIjtzOjk6InNob3dTU0RJViI7czoyOiJubyI7czoxNzoic2F2ZWRfc2VhcmNoX25hbWUiO3M6MDoiIjtzOjEzOiJzZWFyY2hfbW9kdWxlIjtzOjA6IiI7czoxOToic2F2ZWRfc2VhcmNoX2FjdGlvbiI7czowOiIiO3M6MTQ6ImRpc3BsYXlDb2x1bW5zIjtzOjA6IiI7czo4OiJoaWRlVGFicyI7czowOiIiO3M6Nzoib3JkZXJCeSI7czo0OiJOQU1FIjtzOjY6ImJ1dHRvbiI7czo2OiLmn6Xmib4iO319'),
('3906eb96-404a-81f1-7e7e-5529d6046856', 'Home2_ACCOUNT', 0, '2015-04-12 02:20:59', '2015-04-12 02:20:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3fdf22e5-cc6c-9d8f-ca7f-5529dc01cc19', 'Employees2_EMPLOYEE', 0, '2015-04-12 02:45:53', '2015-04-12 02:45:53', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('42fbb3bf-c874-0a1f-af0c-552f7a04f105', 'Contacts2_CONTACT', 0, '2015-04-16 09:00:20', '2015-04-16 09:00:20', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('44ebae8f-4008-e7b8-393b-552ddb7b7c46', 'Employees2_EMPLOYEE', 0, '2015-04-15 03:30:29', '2015-04-15 03:30:29', '23d39e87-2c70-3cc2-270c-552b2baee075', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('46605bfe-58d8-7d06-58b2-552bbdd38934', 'ETag', 0, '2015-04-13 13:00:33', '2015-04-13 13:07:08', '23d39e87-2c70-3cc2-270c-552b2baee075', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mzt9'),
('47cb933e-625f-e7af-548f-5529d6e883c2', 'Home2_LEAD', 0, '2015-04-12 02:20:59', '2015-04-12 02:20:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4838078f-c816-4b5b-33ba-5529d67360bd', 'Home2_SUGARFEED', 0, '2015-04-12 02:20:59', '2015-04-12 02:20:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4ad26be5-428d-9880-7a7c-552ddb4da1cb', 'Employees2_EMPLOYEE', 0, '2015-04-15 03:29:30', '2015-04-15 03:29:30', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4f89a888-10b3-a524-ac36-5529e221701f', 'asol_Activity2_ASOL_ACTIVITY', 0, '2015-04-12 03:11:29', '2015-04-12 03:11:29', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5588e453-8f5c-68c2-c64e-5529db5212d0', 'asol_Process2_ASOL_PROCESS', 0, '2015-04-12 02:42:33', '2015-04-12 02:42:33', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5643e71d-7481-1aeb-f13e-552cac399528', 'Accounts2_ACCOUNT', 0, '2015-04-14 06:00:15', '2015-04-14 06:00:15', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('61000570-a95c-9f23-e1da-552bbfdb92f6', 'Tasks2_TASK', 0, '2015-04-13 13:07:35', '2015-04-13 13:07:35', '23d39e87-2c70-3cc2-270c-552b2baee075', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('639e39b0-990b-93fb-b1af-552b824e0c77', 'Project2_PROJECT', 0, '2015-04-13 08:48:12', '2015-04-13 08:48:12', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6961c21b-970d-230b-2625-552bbf095bd8', 'Users2_USER', 0, '2015-04-13 13:08:12', '2015-04-13 13:08:12', '23d39e87-2c70-3cc2-270c-552b2baee075', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6aa9c81a-6059-76d4-b392-552f7a75dc8e', 'Cases2_CASE', 0, '2015-04-16 09:00:07', '2015-04-16 09:00:07', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6d19ba21-7d99-a936-bd10-552e2fb7365f', 'fzgls_hezuo_waibu_qudao2_FZGLS_HEZUO_WAIBU_QUDAO', 0, '2015-04-15 09:30:44', '2015-04-15 09:30:44', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6db36a81-d049-94b3-3602-552ddb937ffa', 'ETag', 0, '2015-04-15 03:29:06', '2015-04-15 03:29:06', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),
('7b92056d-facf-5b98-36ea-552b82b654cf', 'Users2_USER', 0, '2015-04-13 08:48:57', '2015-04-13 08:50:08', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo4OiJpc19hZG1pbiI7czo5OiJzb3J0T3JkZXIiO3M6MzoiQVNDIjt9fQ=='),
('7ef34fb1-f7a7-4943-dd46-552fc291b0fe', 'fzgls_jiekuangren_dangan2_FZGLS_JIEKUANGREN_DANGAN', 0, '2015-04-16 14:09:27', '2015-04-16 14:09:27', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('810acfc7-5193-c7b3-4dfc-552b84cb056c', 'global', 0, '2015-04-13 08:55:31', '2015-04-15 03:30:29', '23d39e87-2c70-3cc2-270c-552b2baee075', 'YTozNTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOi0xO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjE1OiJsb2dpbmV4cGlyYXRpb24iO3M6MToiMCI7czo3OiJsb2Nrb3V0IjtzOjA6IiI7czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6Njoi5omA5pyJIjtzOjEwOiJFbXBsb3llZXNRIjthOjM6e3M6NjoibW9kdWxlIjtzOjk6IkVtcGxveWVlcyI7czo2OiJhY3Rpb24iO3M6NToiaW5kZXgiO3M6NToicXVlcnkiO3M6NDoidHJ1ZSI7fX0='),
('8c6592b7-7d3e-6256-85a3-552f7a1cc03e', 'ProjectTask2_PROJECTTASK', 0, '2015-04-16 09:00:16', '2015-04-16 09:00:16', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('978938ab-6bea-2d97-74a9-552ddbfa9a5a', 'fzgls_employer_info2_FZGLS_EMPLOYER_INFO', 0, '2015-04-15 03:29:15', '2015-04-15 03:29:15', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('98fce003-7662-0892-251f-552cb0ce8ec4', 'EmailTemplates2_EMAILTEMPLATE', 0, '2015-04-14 06:17:28', '2015-04-14 06:17:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('99c741e7-8863-c435-02ca-5529e30aa0ce', 'fzgls_jsjg_base_info2_FZGLS_JSJG_BASE_INFO', 0, '2015-04-12 03:15:21', '2015-04-12 03:15:21', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a10d9627-9b9c-b313-2e0d-552ddb0ae1e3', 'fzgls_employer_info2_FZGLS_EMPLOYER_INFO', 0, '2015-04-15 03:30:25', '2015-04-15 03:30:25', '23d39e87-2c70-3cc2-270c-552b2baee075', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b544a446-9d08-b2e2-25c6-552cb2347f13', 'Schedulers2_SCHEDULER', 0, '2015-04-14 06:23:00', '2015-04-14 06:23:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bee851f2-873c-ebf7-d1d7-552cb10d1732', 'fzgls_bumeng_mataine2_FZGLS_BUMENG_MATAINE', 0, '2015-04-14 06:18:04', '2015-04-21 09:12:38', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo0OiJuYW1lIjtzOjk6InNvcnRPcmRlciI7czowOiIiO319'),
('c2c7af8f-7e4c-73be-9116-552cb060d2e6', 'fzgls_kefu_liucheng2_FZGLS_KEFU_LIUCHENG', 0, '2015-04-14 06:16:23', '2015-04-14 06:16:23', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c4652c33-0448-390d-30fa-552ddbd6321b', 'Home', 0, '2015-04-15 03:29:06', '2015-04-15 03:29:06', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6ImExYzc0MGYyLTBkMDgtZGJkYi1mMmYwLTU1MmRkYjNkYzFkYyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czozMDoiTEJMX0RBU0hMRVRfRElTQ09WRVJfU1VHQVJfUFJPIjtzOjM6InVybCI7czo0MjoiaHR0cHM6Ly93d3cuc3VnYXJjcm0uY29tL2NybS9wcm9kdWN0L2dvcHJvIjtzOjY6ImhlaWdodCI7aTozMTU7fX1zOjM2OiJhMWM5NWNiMy1lMjRlLWNlYzEtMjgxNy01NTJkZGI1YjlhYTgiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjQ6Im1vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiJhMWNhNWZlMS0zZmQzLWFiMjEtNTg5Mi01NTJkZGJhY2U5YzUiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTM6ImlGcmFtZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjQ6IkhvbWUiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjE7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvaUZyYW1lRGFzaGxldC9pRnJhbWVEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjM6e3M6MTA6InRpdGxlTGFiZWwiO3M6MjI6IkxCTF9EQVNITEVUX1NVR0FSX05FV1MiO3M6MzoidXJsIjtzOjQxOiJodHRwczovL3d3dy5zdWdhcmNybS5jb20vY3JtL3Byb2R1Y3QvbmV3cyI7czo2OiJoZWlnaHQiO2k6MzE1O319czozNjoiYTI0OWM4ZDQtZDM1Ni1jMjkzLTU4MjctNTUyZGRiY2Y5YmU0IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhbGxzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FsbHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYTJmMTBkODEtNDMyOS01MjEyLTMwMWYtNTUyZGRiODlmMDM4IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiTWVldGluZ3MiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL01lZXRpbmdzL0Rhc2hsZXRzL015TWVldGluZ3NEYXNobGV0L015TWVldGluZ3NEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYTM1MGE1YzItOTMxMy0wYTFhLWY2ZjAtNTUyZGRiYTZkNTdjIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJhM2M4ZWNmOC02MmQ2LWI4NzctYjBhYi01NTJkZGI5OTVhNzYiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15QWNjb3VudHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJBY2NvdW50cyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJhNDU0NWFlOC1hZDAwLWZhNmQtMWEyZi01NTJkZGJkYjA1MzUiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJMZWFkcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX19czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Njp7aTowO3M6MzY6ImExYzc0MGYyLTBkMDgtZGJkYi1mMmYwLTU1MmRkYjNkYzFkYyI7aToxO3M6MzY6ImEyNDljOGQ0LWQzNTYtYzI5My01ODI3LTU1MmRkYmNmOWJlNCI7aToyO3M6MzY6ImEyZjEwZDgxLTQzMjktNTIxMi0zMDFmLTU1MmRkYjg5ZjAzOCI7aTozO3M6MzY6ImEzNTBhNWMyLTkzMTMtMGExYS1mNmYwLTU1MmRkYmE2ZDU3YyI7aTo0O3M6MzY6ImEzYzhlY2Y4LTYyZDYtYjg3Ny1iMGFiLTU1MmRkYjk5NWE3NiI7aTo1O3M6MzY6ImE0NTQ1YWU4LWFkMDAtZmE2ZC0xYTJmLTU1MmRkYmRiMDUzNSI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiYTFjOTVjYjMtZTI0ZS1jZWMxLTI4MTctNTUyZGRiNWI5YWE4IjtpOjE7czozNjoiYTFjYTVmZTEtM2ZkMy1hYjIxLTU4OTItNTUyZGRiYWNlOWM1Ijt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),
('c4dae592-fff3-59f6-7bb8-552ddb62586b', 'Home2_CALL', 0, '2015-04-15 03:29:06', '2015-04-15 03:29:06', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c5174f72-e689-378c-ea22-552ddbf2eba2', 'Home2_MEETING', 0, '2015-04-15 03:29:06', '2015-04-15 03:29:06', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c549eb26-553d-d300-5448-552ddb1a8a38', 'Home2_OPPORTUNITY', 0, '2015-04-15 03:29:06', '2015-04-15 03:29:06', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c57e6ced-8b9a-e9ab-dc00-552ddb2ec4a2', 'Home2_ACCOUNT', 0, '2015-04-15 03:29:06', '2015-04-15 03:29:06', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c5bafc64-d557-bb72-d2d7-552ddbb6fe0d', 'Home2_LEAD', 0, '2015-04-15 03:29:06', '2015-04-15 03:29:06', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c5ec9a32-8684-95bf-329f-552ddb2d4784', 'Home2_SUGARFEED', 0, '2015-04-15 03:29:06', '2015-04-15 03:29:06', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d3a402aa-46f7-0762-51a8-553614c83280', 'fzgls_bumeng_mataine', 0, '2015-04-21 09:12:25', '2015-04-21 09:12:25', '1', 'YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),
('d8cde9c7-197b-6579-29f1-552b836708e9', 'fzgls_employer_info2_FZGLS_EMPLOYER_INFO', 0, '2015-04-13 08:52:16', '2015-04-13 08:52:16', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e8e70082-3740-3bd4-df05-552f65a7a74e', 'fzgls_fenggongsi_info2_FZGLS_FENGGONGSI_INFO', 0, '2015-04-16 07:33:10', '2015-04-16 07:33:10', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e90b61cf-6916-a4b7-286b-552dd91730a7', 'global', 0, '2015-04-15 03:24:45', '2015-04-15 03:29:30', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YTozNTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOi0xO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjE1OiJsb2dpbmV4cGlyYXRpb24iO3M6MToiMCI7czo3OiJsb2Nrb3V0IjtzOjA6IiI7czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6Njoi5omA5pyJIjtzOjEwOiJFbXBsb3llZXNRIjthOjM6e3M6NjoibW9kdWxlIjtzOjk6IkVtcGxveWVlcyI7czo2OiJhY3Rpb24iO3M6NToiaW5kZXgiO3M6NToicXVlcnkiO3M6NDoidHJ1ZSI7fX0='),
('eab5d965-7293-c1de-96e0-552cb15d38ad', 'Emails', 0, '2015-04-14 06:17:52', '2015-04-14 06:17:52', '1', 'YToxOntzOjExOiJmb2N1c0ZvbGRlciI7czo2MjoiYToyOntzOjQ6ImllSWQiO3M6OToidW5kZWZpbmVkIjtzOjY6ImZvbGRlciI7czo5OiJ1bmRlZmluZWQiO30iO30='),
('ed6020b7-b6ec-4521-e7f8-552bbd132351', 'Tasks2_TASK', 0, '2015-04-13 12:58:21', '2015-04-13 12:58:21', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('edeae7e0-d9eb-ef46-134b-5529e1cf899f', 'asol_Events2_ASOL_EVENTS', 0, '2015-04-12 03:07:17', '2015-04-12 03:07:17', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');

-- --------------------------------------------------------

--
-- 表的结构 `vcals`
--

DROP TABLE IF EXISTS `vcals`;
CREATE TABLE IF NOT EXISTS `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `versions`
--

DROP TABLE IF EXISTS `versions`;
CREATE TABLE IF NOT EXISTS `versions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_version` varchar(255) DEFAULT NULL,
  `db_version` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `versions`
--

INSERT INTO `versions` (`id`, `deleted`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `file_version`, `db_version`) VALUES
('4d3b23b0-77f9-58bc-e4d6-5529d5aee51e', 0, '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '1', 'Chart Data Cache', '3.5.1', '3.5.1'),
('4de29ab3-8a4c-519a-af3f-5529d5ae2159', 0, '2015-04-12 02:17:29', '2015-04-12 02:17:29', '1', '1', 'htaccess', '3.5.1', '3.5.1'),
('a522945e-87b3-b473-4040-55360835e9bd', 0, '2015-04-21 08:19:36', '2015-04-21 08:19:36', '1', '1', 'Rebuild Relationships', '4.0.0', '4.0.0'),
('b1764343-16b2-06da-d8f2-55360890f3ba', 0, '2015-04-21 08:19:36', '2015-04-21 08:19:36', '1', '1', 'Rebuild Extensions', '4.0.0', '4.0.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_accnt_id_del` (`id`,`deleted`), ADD KEY `idx_accnt_name_del` (`name`,`deleted`), ADD KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`), ADD KEY `idx_accnt_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_audit`
--
ALTER TABLE `accounts_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_accounts_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_bugs`
--
ALTER TABLE `accounts_bugs`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_acc_bug_acc` (`account_id`), ADD KEY `idx_acc_bug_bug` (`bug_id`), ADD KEY `idx_account_bug` (`account_id`,`bug_id`);

--
-- Indexes for table `accounts_cases`
--
ALTER TABLE `accounts_cases`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_acc_case_acc` (`account_id`), ADD KEY `idx_acc_acc_case` (`case_id`);

--
-- Indexes for table `accounts_contacts`
--
ALTER TABLE `accounts_contacts`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_account_contact` (`account_id`,`contact_id`), ADD KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`);

--
-- Indexes for table `accounts_opportunities`
--
ALTER TABLE `accounts_opportunities`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_account_opportunity` (`account_id`,`opportunity_id`), ADD KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`);

--
-- Indexes for table `acl_actions`
--
ALTER TABLE `acl_actions`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aclaction_id_del` (`id`,`deleted`), ADD KEY `idx_category_name` (`category`,`name`);

--
-- Indexes for table `acl_roles`
--
ALTER TABLE `acl_roles`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aclrole_id_del` (`id`,`deleted`);

--
-- Indexes for table `acl_roles_actions`
--
ALTER TABLE `acl_roles_actions`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_acl_role_id` (`role_id`), ADD KEY `idx_acl_action_id` (`action_id`), ADD KEY `idx_aclrole_action` (`role_id`,`action_id`);

--
-- Indexes for table `acl_roles_users`
--
ALTER TABLE `acl_roles_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aclrole_id` (`role_id`), ADD KEY `idx_acluser_id` (`user_id`), ADD KEY `idx_aclrole_user` (`role_id`,`user_id`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
 ADD KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`);

--
-- Indexes for table `asol_activisol_activity_c`
--
ALTER TABLE `asol_activisol_activity_c`
 ADD PRIMARY KEY (`id`), ADD KEY `asol_activi_asol_activity_ida1` (`asol_activ898activity_ida`), ADD KEY `asol_activi_asol_activity_alt` (`asol_activ9e2dctivity_idb`);

--
-- Indexes for table `asol_activity`
--
ALTER TABLE `asol_activity`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asol_activity_asol_task_c`
--
ALTER TABLE `asol_activity_asol_task_c`
 ADD PRIMARY KEY (`id`), ADD KEY `asol_activity_asol_task_ida1` (`asol_activ5b86ctivity_ida`), ADD KEY `asol_activity_asol_task_alt` (`asol_activf613ol_task_idb`);

--
-- Indexes for table `asol_activity_audit`
--
ALTER TABLE `asol_activity_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_asol_activity_parent_id` (`parent_id`);

--
-- Indexes for table `asol_config`
--
ALTER TABLE `asol_config`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asol_events`
--
ALTER TABLE `asol_events`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asol_eventssol_activity_c`
--
ALTER TABLE `asol_eventssol_activity_c`
 ADD PRIMARY KEY (`id`), ADD KEY `asol_events_asol_activity_alt` (`asol_event87f4_events_ida`,`asol_event8042ctivity_idb`);

--
-- Indexes for table `asol_events_audit`
--
ALTER TABLE `asol_events_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_asol_events_parent_id` (`parent_id`);

--
-- Indexes for table `asol_onhold`
--
ALTER TABLE `asol_onhold`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asol_onhold_audit`
--
ALTER TABLE `asol_onhold_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_asol_onhold_parent_id` (`parent_id`);

--
-- Indexes for table `asol_process`
--
ALTER TABLE `asol_process`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asol_processinstances`
--
ALTER TABLE `asol_processinstances`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asol_processinstances_audit`
--
ALTER TABLE `asol_processinstances_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_asol_processinstances_parent_id` (`parent_id`);

--
-- Indexes for table `asol_process_asol_activity_c`
--
ALTER TABLE `asol_process_asol_activity_c`
 ADD PRIMARY KEY (`id`), ADD KEY `asol_process_asol_activity_ida1` (`asol_process_asol_activityasol_process_ida`), ADD KEY `asol_process_asol_activity_alt` (`asol_process_asol_activityasol_activity_idb`);

--
-- Indexes for table `asol_process_asol_events_1_c`
--
ALTER TABLE `asol_process_asol_events_1_c`
 ADD PRIMARY KEY (`id`), ADD KEY `asol_process_asol_events_1_ida1` (`asol_process_asol_events_1asol_process_ida`), ADD KEY `asol_process_asol_events_1_alt` (`asol_process_asol_events_1asol_events_idb`);

--
-- Indexes for table `asol_process_asol_task_c`
--
ALTER TABLE `asol_process_asol_task_c`
 ADD PRIMARY KEY (`id`), ADD KEY `asol_process_asol_task_ida1` (`asol_process_asol_taskasol_process_ida`), ADD KEY `asol_process_asol_task_alt` (`asol_process_asol_taskasol_task_idb`);

--
-- Indexes for table `asol_process_audit`
--
ALTER TABLE `asol_process_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_asol_process_parent_id` (`parent_id`);

--
-- Indexes for table `asol_proces_asol_events_c`
--
ALTER TABLE `asol_proces_asol_events_c`
 ADD PRIMARY KEY (`id`), ADD KEY `asol_process_asol_events_ida1` (`asol_proce6f14process_ida`), ADD KEY `asol_process_asol_events_alt` (`asol_procea8ca_events_idb`);

--
-- Indexes for table `asol_task`
--
ALTER TABLE `asol_task`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asol_task_audit`
--
ALTER TABLE `asol_task_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_asol_task_parent_id` (`parent_id`);

--
-- Indexes for table `asol_workflowmanagercommon`
--
ALTER TABLE `asol_workflowmanagercommon`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asol_workflowmanagercommon_audit`
--
ALTER TABLE `asol_workflowmanagercommon_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_asol_workflowmanagercommon_parent_id` (`parent_id`);

--
-- Indexes for table `asol_workingnodes`
--
ALTER TABLE `asol_workingnodes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asol_workingnodes_audit`
--
ALTER TABLE `asol_workingnodes_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_asol_workingnodes_parent_id` (`parent_id`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `bugsnumk` (`bug_number`), ADD KEY `bug_number` (`bug_number`), ADD KEY `idx_bug_name` (`name`), ADD KEY `idx_bugs_assigned_user` (`assigned_user_id`);

--
-- Indexes for table `bugs_audit`
--
ALTER TABLE `bugs_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_bugs_parent_id` (`parent_id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_call_name` (`name`), ADD KEY `idx_status` (`status`), ADD KEY `idx_calls_date_start` (`date_start`), ADD KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`), ADD KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `calls_contacts`
--
ALTER TABLE `calls_contacts`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_con_call_call` (`call_id`), ADD KEY `idx_con_call_con` (`contact_id`), ADD KEY `idx_call_contact` (`call_id`,`contact_id`);

--
-- Indexes for table `calls_leads`
--
ALTER TABLE `calls_leads`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_lead_call_call` (`call_id`), ADD KEY `idx_lead_call_lead` (`lead_id`), ADD KEY `idx_call_lead` (`call_id`,`lead_id`);

--
-- Indexes for table `calls_users`
--
ALTER TABLE `calls_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_usr_call_call` (`call_id`), ADD KEY `idx_usr_call_usr` (`user_id`), ADD KEY `idx_call_users` (`call_id`,`user_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
 ADD PRIMARY KEY (`id`), ADD KEY `camp_auto_tracker_key` (`tracker_key`), ADD KEY `idx_campaign_name` (`name`);

--
-- Indexes for table `campaigns_audit`
--
ALTER TABLE `campaigns_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_campaigns_parent_id` (`parent_id`);

--
-- Indexes for table `campaign_log`
--
ALTER TABLE `campaign_log`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_camp_tracker` (`target_tracker_key`), ADD KEY `idx_camp_campaign_id` (`campaign_id`), ADD KEY `idx_camp_more_info` (`more_information`), ADD KEY `idx_target_id` (`target_id`), ADD KEY `idx_target_id_deleted` (`target_id`,`deleted`);

--
-- Indexes for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
 ADD PRIMARY KEY (`id`), ADD KEY `campaign_tracker_key_idx` (`tracker_key`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `casesnumk` (`case_number`), ADD KEY `case_number` (`case_number`), ADD KEY `idx_case_name` (`name`), ADD KEY `idx_account_id` (`account_id`), ADD KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`);

--
-- Indexes for table `cases_audit`
--
ALTER TABLE `cases_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_cases_parent_id` (`parent_id`);

--
-- Indexes for table `cases_bugs`
--
ALTER TABLE `cases_bugs`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_cas_bug_cas` (`case_id`), ADD KEY `idx_cas_bug_bug` (`bug_id`), ADD KEY `idx_case_bug` (`case_id`,`bug_id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
 ADD KEY `idx_config_cat` (`category`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`), ADD KEY `idx_contacts_del_last` (`deleted`,`last_name`), ADD KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`), ADD KEY `idx_reports_to_id` (`reports_to_id`), ADD KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`), ADD KEY `idx_cont_assigned` (`assigned_user_id`);

--
-- Indexes for table `contacts_audit`
--
ALTER TABLE `contacts_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_contacts_parent_id` (`parent_id`);

--
-- Indexes for table `contacts_bugs`
--
ALTER TABLE `contacts_bugs`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_con_bug_con` (`contact_id`), ADD KEY `idx_con_bug_bug` (`bug_id`), ADD KEY `idx_contact_bug` (`contact_id`,`bug_id`);

--
-- Indexes for table `contacts_cases`
--
ALTER TABLE `contacts_cases`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_con_case_con` (`contact_id`), ADD KEY `idx_con_case_case` (`case_id`), ADD KEY `idx_contacts_cases` (`contact_id`,`case_id`);

--
-- Indexes for table `contacts_users`
--
ALTER TABLE `contacts_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_con_users_con` (`contact_id`), ADD KEY `idx_con_users_user` (`user_id`), ADD KEY `idx_contacts_users` (`contact_id`,`user_id`);

--
-- Indexes for table `cron_remove_documents`
--
ALTER TABLE `cron_remove_documents`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_cron_remove_document_bean_id` (`bean_id`), ADD KEY `idx_cron_remove_document_stamp` (`date_modified`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_currency_name` (`name`,`deleted`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
 ADD KEY `idx_beanid_set_num` (`bean_id`,`set_num`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_doc_cat` (`category_id`,`subcategory_id`);

--
-- Indexes for table `documents_accounts`
--
ALTER TABLE `documents_accounts`
 ADD PRIMARY KEY (`id`), ADD KEY `documents_accounts_account_id` (`account_id`,`document_id`), ADD KEY `documents_accounts_document_id` (`document_id`,`account_id`);

--
-- Indexes for table `documents_bugs`
--
ALTER TABLE `documents_bugs`
 ADD PRIMARY KEY (`id`), ADD KEY `documents_bugs_bug_id` (`bug_id`,`document_id`), ADD KEY `documents_bugs_document_id` (`document_id`,`bug_id`);

--
-- Indexes for table `documents_cases`
--
ALTER TABLE `documents_cases`
 ADD PRIMARY KEY (`id`), ADD KEY `documents_cases_case_id` (`case_id`,`document_id`), ADD KEY `documents_cases_document_id` (`document_id`,`case_id`);

--
-- Indexes for table `documents_contacts`
--
ALTER TABLE `documents_contacts`
 ADD PRIMARY KEY (`id`), ADD KEY `documents_contacts_contact_id` (`contact_id`,`document_id`), ADD KEY `documents_contacts_document_id` (`document_id`,`contact_id`);

--
-- Indexes for table `documents_opportunities`
--
ALTER TABLE `documents_opportunities`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`), ADD KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`);

--
-- Indexes for table `document_revisions`
--
ALTER TABLE `document_revisions`
 ADD PRIMARY KEY (`id`), ADD KEY `documentrevision_mimetype` (`file_mime_type`);

--
-- Indexes for table `eapm`
--
ALTER TABLE `eapm`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`);

--
-- Indexes for table `emailman`
--
ALTER TABLE `emailman`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`), ADD KEY `idx_eman_campaign_id` (`campaign_id`), ADD KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_email_name` (`name`), ADD KEY `idx_message_id` (`message_id`), ADD KEY `idx_email_parent_id` (`parent_id`), ADD KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`);

--
-- Indexes for table `emails_beans`
--
ALTER TABLE `emails_beans`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_emails_beans_bean_id` (`bean_id`), ADD KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`);

--
-- Indexes for table `emails_email_addr_rel`
--
ALTER TABLE `emails_email_addr_rel`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_eearl_email_id` (`email_id`,`address_type`), ADD KEY `idx_eearl_address_id` (`email_address_id`);

--
-- Indexes for table `emails_text`
--
ALTER TABLE `emails_text`
 ADD PRIMARY KEY (`email_id`), ADD KEY `emails_textfromaddr` (`from_addr`);

--
-- Indexes for table `email_addresses`
--
ALTER TABLE `email_addresses`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`), ADD KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`);

--
-- Indexes for table `email_addr_bean_rel`
--
ALTER TABLE `email_addr_bean_rel`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_email_address_id` (`email_address_id`), ADD KEY `idx_bean_id` (`bean_id`,`bean_module`);

--
-- Indexes for table `email_cache`
--
ALTER TABLE `email_cache`
 ADD KEY `idx_ie_id` (`ie_id`), ADD KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`), ADD KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`), ADD KEY `idx_mail_subj` (`subject`), ADD KEY `idx_mail_to` (`toaddr`);

--
-- Indexes for table `email_marketing`
--
ALTER TABLE `email_marketing`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_emmkt_name` (`name`), ADD KEY `idx_emmkit_del` (`deleted`);

--
-- Indexes for table `email_marketing_prospect_lists`
--
ALTER TABLE `email_marketing_prospect_lists`
 ADD PRIMARY KEY (`id`), ADD KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_email_template_name` (`name`);

--
-- Indexes for table `fields_meta_data`
--
ALTER TABLE `fields_meta_data`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_meta_id_del` (`id`,`deleted`), ADD KEY `idx_meta_cm_del` (`custom_module`,`deleted`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_parent_folder` (`parent_folder`);

--
-- Indexes for table `folders_rel`
--
ALTER TABLE `folders_rel`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`), ADD KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`);

--
-- Indexes for table `folders_subscriptions`
--
ALTER TABLE `folders_subscriptions`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`);

--
-- Indexes for table `fzgls_bumeng_mataine`
--
ALTER TABLE `fzgls_bumeng_mataine`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fzgls_bumeng_mataine_audit`
--
ALTER TABLE `fzgls_bumeng_mataine_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_fzgls_bumeng_mataine_parent_id` (`parent_id`);

--
-- Indexes for table `fzgls_bumeng_mataine_cstm`
--
ALTER TABLE `fzgls_bumeng_mataine_cstm`
 ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `fzgls_employer_info`
--
ALTER TABLE `fzgls_employer_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fzgls_employer_info_audit`
--
ALTER TABLE `fzgls_employer_info_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_fzgls_employer_info_parent_id` (`parent_id`);

--
-- Indexes for table `fzgls_fenggongsi_info`
--
ALTER TABLE `fzgls_fenggongsi_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fzgls_fenggongsi_info_audit`
--
ALTER TABLE `fzgls_fenggongsi_info_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_fzgls_fenggongsi_info_parent_id` (`parent_id`);

--
-- Indexes for table `fzgls_fenggongsi_info_cstm`
--
ALTER TABLE `fzgls_fenggongsi_info_cstm`
 ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `fzgls_hezuo_waibu_qudao`
--
ALTER TABLE `fzgls_hezuo_waibu_qudao`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fzgls_hezuo_waibu_qudao_audit`
--
ALTER TABLE `fzgls_hezuo_waibu_qudao_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_fzgls_hezuo_waibu_qudao_parent_id` (`parent_id`);

--
-- Indexes for table `fzgls_jiekuangren_dangan`
--
ALTER TABLE `fzgls_jiekuangren_dangan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fzgls_jiekuangren_dangan_audit`
--
ALTER TABLE `fzgls_jiekuangren_dangan_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_fzgls_jiekuangren_dangan_parent_id` (`parent_id`);

--
-- Indexes for table `fzgls_jiekuangren_dangan_cstm`
--
ALTER TABLE `fzgls_jiekuangren_dangan_cstm`
 ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `fzgls_jsjg_base_info`
--
ALTER TABLE `fzgls_jsjg_base_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fzgls_jsjg_base_info_audit`
--
ALTER TABLE `fzgls_jsjg_base_info_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_fzgls_jsjg_base_info_parent_id` (`parent_id`);

--
-- Indexes for table `fzgls_kefu_liucheng`
--
ALTER TABLE `fzgls_kefu_liucheng`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `fzgls_kefu_liuchengnumk` (`fzgls_kefu_liucheng_number`);

--
-- Indexes for table `fzgls_kefu_liucheng_audit`
--
ALTER TABLE `fzgls_kefu_liucheng_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_fzgls_kefu_liucheng_parent_id` (`parent_id`);

--
-- Indexes for table `import_maps`
--
ALTER TABLE `import_maps`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Indexes for table `inbound_email`
--
ALTER TABLE `inbound_email`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbound_email_autoreply`
--
ALTER TABLE `inbound_email_autoreply`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_ie_autoreplied_to` (`autoreplied_to`);

--
-- Indexes for table `inbound_email_cache_ts`
--
ALTER TABLE `inbound_email_cache_ts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_queue`
--
ALTER TABLE `job_queue`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_status_scheduler` (`status`,`scheduler_id`), ADD KEY `idx_status_time` (`status`,`execute_time`,`date_entered`), ADD KEY `idx_status_entered` (`status`,`date_entered`), ADD KEY `idx_status_modified` (`status`,`date_modified`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_lead_acct_name_first` (`account_name`,`deleted`), ADD KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`), ADD KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`), ADD KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`), ADD KEY `idx_leads_acct_del` (`account_id`,`deleted`), ADD KEY `idx_del_user` (`deleted`,`assigned_user_id`), ADD KEY `idx_lead_assigned` (`assigned_user_id`), ADD KEY `idx_lead_contact` (`contact_id`), ADD KEY `idx_reports_to` (`reports_to_id`), ADD KEY `idx_lead_phone_work` (`phone_work`), ADD KEY `idx_leads_id_del` (`id`,`deleted`);

--
-- Indexes for table `leads_audit`
--
ALTER TABLE `leads_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Indexes for table `linked_documents`
--
ALTER TABLE `linked_documents`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_mtg_name` (`name`), ADD KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`), ADD KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`), ADD KEY `idx_meet_date_start` (`date_start`);

--
-- Indexes for table `meetings_contacts`
--
ALTER TABLE `meetings_contacts`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_con_mtg_mtg` (`meeting_id`), ADD KEY `idx_con_mtg_con` (`contact_id`), ADD KEY `idx_meeting_contact` (`meeting_id`,`contact_id`);

--
-- Indexes for table `meetings_leads`
--
ALTER TABLE `meetings_leads`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_lead_meeting_meeting` (`meeting_id`), ADD KEY `idx_lead_meeting_lead` (`lead_id`), ADD KEY `idx_meeting_lead` (`meeting_id`,`lead_id`);

--
-- Indexes for table `meetings_users`
--
ALTER TABLE `meetings_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_usr_mtg_mtg` (`meeting_id`), ADD KEY `idx_usr_mtg_usr` (`user_id`), ADD KEY `idx_meeting_users` (`meeting_id`,`user_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_note_name` (`name`), ADD KEY `idx_notes_parent` (`parent_id`,`parent_type`), ADD KEY `idx_note_contact` (`contact_id`), ADD KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `ckey` (`c_key`);

--
-- Indexes for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
 ADD PRIMARY KEY (`conskey`,`nonce`), ADD KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`);

--
-- Indexes for table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
 ADD PRIMARY KEY (`id`,`deleted`), ADD KEY `oauth_state_ts` (`tstate`,`token_ts`), ADD KEY `constoken_key` (`consumer`);

--
-- Indexes for table `opportunities`
--
ALTER TABLE `opportunities`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_opp_name` (`name`), ADD KEY `idx_opp_assigned` (`assigned_user_id`), ADD KEY `idx_opp_id_deleted` (`id`,`deleted`);

--
-- Indexes for table `opportunities_audit`
--
ALTER TABLE `opportunities_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_opportunities_parent_id` (`parent_id`);

--
-- Indexes for table `opportunities_contacts`
--
ALTER TABLE `opportunities_contacts`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_con_opp_con` (`contact_id`), ADD KEY `idx_con_opp_opp` (`opportunity_id`), ADD KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`);

--
-- Indexes for table `outbound_email`
--
ALTER TABLE `outbound_email`
 ADD PRIMARY KEY (`id`), ADD KEY `oe_user_id_idx` (`id`,`user_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_accounts`
--
ALTER TABLE `projects_accounts`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_proj_acct_proj` (`project_id`), ADD KEY `idx_proj_acct_acct` (`account_id`), ADD KEY `projects_accounts_alt` (`project_id`,`account_id`);

--
-- Indexes for table `projects_bugs`
--
ALTER TABLE `projects_bugs`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_proj_bug_proj` (`project_id`), ADD KEY `idx_proj_bug_bug` (`bug_id`), ADD KEY `projects_bugs_alt` (`project_id`,`bug_id`);

--
-- Indexes for table `projects_cases`
--
ALTER TABLE `projects_cases`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_proj_case_proj` (`project_id`), ADD KEY `idx_proj_case_case` (`case_id`), ADD KEY `projects_cases_alt` (`project_id`,`case_id`);

--
-- Indexes for table `projects_contacts`
--
ALTER TABLE `projects_contacts`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_proj_con_proj` (`project_id`), ADD KEY `idx_proj_con_con` (`contact_id`), ADD KEY `projects_contacts_alt` (`project_id`,`contact_id`);

--
-- Indexes for table `projects_opportunities`
--
ALTER TABLE `projects_opportunities`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_proj_opp_proj` (`project_id`), ADD KEY `idx_proj_opp_opp` (`opportunity_id`), ADD KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`);

--
-- Indexes for table `projects_products`
--
ALTER TABLE `projects_products`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_proj_prod_project` (`project_id`), ADD KEY `idx_proj_prod_product` (`product_id`), ADD KEY `projects_products_alt` (`project_id`,`product_id`);

--
-- Indexes for table `project_task`
--
ALTER TABLE `project_task`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_task_audit`
--
ALTER TABLE `project_task_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_project_task_parent_id` (`parent_id`);

--
-- Indexes for table `prospects`
--
ALTER TABLE `prospects`
 ADD PRIMARY KEY (`id`), ADD KEY `prospect_auto_tracker_key` (`tracker_key`), ADD KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`), ADD KEY `idx_prospecs_del_last` (`last_name`,`deleted`), ADD KEY `idx_prospects_id_del` (`id`,`deleted`), ADD KEY `idx_prospects_assigned` (`assigned_user_id`);

--
-- Indexes for table `prospect_lists`
--
ALTER TABLE `prospect_lists`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_prospect_list_name` (`name`);

--
-- Indexes for table `prospect_lists_prospects`
--
ALTER TABLE `prospect_lists_prospects`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_plp_pro_id` (`prospect_list_id`), ADD KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`);

--
-- Indexes for table `prospect_list_campaigns`
--
ALTER TABLE `prospect_list_campaigns`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_pro_id` (`prospect_list_id`), ADD KEY `idx_cam_id` (`campaign_id`), ADD KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_rel_name` (`relationship_name`);

--
-- Indexes for table `releases`
--
ALTER TABLE `releases`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_releases` (`name`,`deleted`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_role_id_del` (`id`,`deleted`);

--
-- Indexes for table `roles_modules`
--
ALTER TABLE `roles_modules`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_role_id` (`role_id`), ADD KEY `idx_module_id` (`module_id`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_ru_role_id` (`role_id`), ADD KEY `idx_ru_user_id` (`user_id`);

--
-- Indexes for table `saved_search`
--
ALTER TABLE `saved_search`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_desc` (`name`,`deleted`);

--
-- Indexes for table `schedulers`
--
ALTER TABLE `schedulers`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_schedule` (`date_time_start`,`deleted`);

--
-- Indexes for table `sugarfeed`
--
ALTER TABLE `sugarfeed`
 ADD PRIMARY KEY (`id`), ADD KEY `sgrfeed_date` (`date_entered`,`deleted`), ADD KEY `idx_sgrfeed_rmod_rid_date` (`related_module`,`related_id`,`date_entered`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_tsk_name` (`name`), ADD KEY `idx_task_con_del` (`contact_id`,`deleted`), ADD KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`), ADD KEY `idx_task_assigned` (`assigned_user_id`), ADD KEY `idx_task_status` (`status`);

--
-- Indexes for table `tracker`
--
ALTER TABLE `tracker`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_tracker_iid` (`item_id`), ADD KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`), ADD KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`), ADD KEY `idx_tracker_monitor_id` (`monitor_id`), ADD KEY `idx_tracker_date_modified` (`date_modified`);

--
-- Indexes for table `upgrade_history`
--
ALTER TABLE `upgrade_history`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`);

--
-- Indexes for table `users_cstm`
--
ALTER TABLE `users_cstm`
 ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `users_feeds`
--
ALTER TABLE `users_feeds`
 ADD KEY `idx_ud_user_id` (`user_id`,`feed_id`);

--
-- Indexes for table `users_last_import`
--
ALTER TABLE `users_last_import`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Indexes for table `users_password_link`
--
ALTER TABLE `users_password_link`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_username` (`username`);

--
-- Indexes for table `users_signatures`
--
ALTER TABLE `users_signatures`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_usersig_uid` (`user_id`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_userprefnamecat` (`assigned_user_id`,`category`);

--
-- Indexes for table `vcals`
--
ALTER TABLE `vcals`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_vcal` (`type`,`user_id`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_version` (`name`,`deleted`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
MODIFY `bug_number` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
MODIFY `case_number` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emailman`
--
ALTER TABLE `emailman`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fzgls_kefu_liucheng`
--
ALTER TABLE `fzgls_kefu_liucheng`
MODIFY `fzgls_kefu_liucheng_number` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prospects`
--
ALTER TABLE `prospects`
MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=201;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
