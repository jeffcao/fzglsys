-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2015-04-16 11:41:44
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
('fzgls_bumeng_matainebumeng_name_c', 'bumeng_name_c', 'LBL_FZGLS_BUMENG_NAME', '', '', 'fzgls_bumeng_mataine', 'varchar', 255, 1, '', '2015-04-16 02:48:50', 0, 0, 0, 0, 1, 'required', '', '', '', ''),
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
('fzgls_fenggongsi_infogongsi_name_c', 'gongsi_name_c', 'LBL_FZGLS_GONGSI_NAME', '', '', 'fzgls_fenggongsi_info', 'varchar', 255, 1, '', '2015-04-16 06:13:06', 0, 0, 0, 0, 1, 'required', '', '', '', ''),
('fzgls_fenggongsi_infogongsi_num_c', 'gongsi_num_c', 'LBL_FZGLS_GONGSI_NUM', '', '', 'fzgls_fenggongsi_info', 'varchar', 255, 1, '', '2015-04-16 06:13:32', 0, 0, 0, 0, 1, 'required', '', '', '', ''),
('fzgls_fenggongsi_infogongsi_phone_c', 'gongsi_phone_c', 'LBL_FZGLS_GONGSI_PHONE', '', '', 'fzgls_fenggongsi_info', 'varchar', 255, 0, '', '2015-04-16 06:22:56', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('fzgls_fenggongsi_infogongsi_youbian_c', 'gongsi_youbian_c', 'LBL_FZGLS_GONGSI_YOUBIAN', '', '', 'fzgls_fenggongsi_info', 'varchar', 255, 0, '', '2015-04-16 06:14:47', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
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
('Usersyuangong_name_c', 'yuangong_name_c', 'LBL_FZGLS_YUANGONG_NAME', '', '', 'Users', 'varchar', 255, 1, '', '2015-04-16 07:28:17', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
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
('23ef85c4-2c84-ed6d-90b9-552f7273dd02', NULL, '2015-04-16 08:26:32', '2015-04-16 08:26:32', '1', '1', '开发部', 0, NULL);

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
  `bumeng_name_c` varchar(255) DEFAULT NULL,
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

INSERT INTO `fzgls_bumeng_mataine_cstm` (`id_c`, `bumeng_name_c`, `bumeng_num_c`, `suoshu_fengongsi_c`, `fuzeren_name_c`, `fuzeren_phone_c`, `youbian_c`, `dizhi_c`, `phone_c`) VALUES
('23ef85c4-2c84-ed6d-90b9-552f7273dd02', '开发部', 'KF001', '南京分公司', '李红', '1477366478', '79451432', '南京XXX路234豪门大酒店', '');

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
('8b4afdce-d416-d9c4-904e-552f7132e06e', NULL, '2015-04-16 08:24:57', '2015-04-16 08:24:57', '1', '1', '南京人和科技公司是一家高科持公司', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  `gongsi_name_c` varchar(255) DEFAULT NULL,
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

INSERT INTO `fzgls_fenggongsi_info_cstm` (`id_c`, `gongsi_name_c`, `gongsi_num_c`, `gongsi_youbian_c`, `gongsi_dizhi_c`, `gongsi_phone_c`, `fuzeren_name_c`, `fuzeren_phone_c`) VALUES
('8b4afdce-d416-d9c4-904e-552f7132e06e', '南京人和科技公司', 'NJ458967', '121213', '南京xx街道xx号', '123123', '刘明', '13578964589');

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
('2d77864c-5518-9691-168b-552f7f7a4030', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2dc0ce66-958e-5ffb-b8d0-552f7f213516', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2de913c3-bb00-29f6-c693-552f7f3d36a0', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2e174c6e-af9e-2de0-955c-552f7f19b8d7', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('2e416805-e311-42fe-90c7-552f7fa6fa98', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('2e6bacc7-2364-c6ca-6358-552f7f0e0c17', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2e9167e1-a49f-43b2-86e9-552f7f423365', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('2eb96d9d-74c8-d2a2-a31f-552f7f96f43f', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('2efb3148-26d5-e6f9-7451-552f7fe7f46f', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('2f229b0b-2372-dc99-9a2a-552f7fcc0818', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('2f4771c1-38e5-e1db-f8f7-552f7fbc8f17', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('2f6be4e6-cff2-2cd7-12de-552f7f6e536b', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('3097c922-4c24-0f54-3e4b-552f7f891a3d', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('30c2c173-22a1-f7a6-f01d-552f7f3de933', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('30ea6f14-8a6f-ebcf-6962-552f7f513bb7', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('310dddfb-4c5b-9729-a8cf-552f7fde4a74', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('31310f47-e7e2-6160-ff84-552f7fbcbd6c', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('31573274-80f3-390d-a9a0-552f7f2f27ca', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('3178f7a9-27bf-85f2-c81d-552f7f71eddc', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('319d013d-daa2-e9e0-7498-552f7fdf46d0', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('3313a028-01be-39e7-f38f-552f7f092b0a', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('33452d28-2ed8-183f-4604-552f7f28dd1d', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3370ff8c-3924-c726-9305-552f7fe576b9', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('33a32cbf-7d82-f063-4fc9-552f7f8df63e', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('33cb3e5e-3787-5b45-3221-552f7fbb273b', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('33efca33-089b-cd41-d02a-552f7f01fa47', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('341519be-deb1-00e1-bf93-552f7fbedc3b', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('343afb78-33e1-a7b6-2f30-552f7f8afcf6', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('34606af1-740a-718d-1e83-552f7f63baaa', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('34a31fef-538c-0962-0343-552f7f4291f2', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('35210114-899d-7fbc-c5e1-552f7f9c4ba1', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3548eb38-d4db-745a-43c3-552f7f9a4b94', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('356dac9c-229d-5763-a7e7-552f7ff278b4', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('3637b359-5c02-5854-ac40-552f7f0df748', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3664c0e4-0680-ace3-a5a4-552f7f8d58ab', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('368e1d94-7e39-85e7-b260-552f7f4ebff4', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('36b2e7ee-c4a1-239e-b5c5-552f7fc032d3', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('36d6981c-4035-3678-f795-552f7f91c103', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('37c3853e-fa51-3bbc-529b-552f7f94d176', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('37f0b86b-ce86-931b-7382-552f7fdf1504', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('3815915b-aea8-8981-1ed2-552f7f244012', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('38399e66-ce5b-4385-a672-552f7f4a2a63', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('38798526-bb0d-da54-fe4b-552f7f0d9197', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('38a6cc52-29dc-4bb8-647b-552f7fc689cb', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('38d38a95-3a3b-8b2c-9d88-552f7f8ee423', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3900b64d-929d-b214-2711-552f7fc3a8ab', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('39291011-3ac6-35fc-4b03-552f7f68c60b', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3a455e89-3ea0-bb44-411c-552f7f5c31f7', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('3a7930f4-c9c2-eba9-955d-552f7fdbc481', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('3aa927ba-0bc9-726c-0dbc-552f7fca01ef', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('3ad548d6-b737-f822-f0b4-552f7f4c8450', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('3afb2b97-6c7e-c47c-ca63-552f7f71b940', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('3b206541-7958-92a5-aa2a-552f7f8f8b16', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b4a9502-db3e-807a-7aaa-552f7fba4209', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b8c3a94-a39a-9ac0-07fc-552f7f059b1b', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3ccdde73-9172-eb90-28f3-552f7f08a3e0', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3cf90711-b533-2d6c-c7db-552f7f84f79f', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3d1d8143-3175-37b0-ba52-552f7f81518f', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3d41e932-bdad-25eb-5ddf-552f7f852adb', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3d6598d3-d2c6-cc24-7212-552f7f61a0d8', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3d88c042-2955-24d7-7b3c-552f7fd223f5', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3dadbcf1-e8cf-ea02-a6cd-552f7f1c5ede', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3dd19c57-1bcf-5cca-bd23-552f7f1d9582', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3df37b9e-5234-e0de-78a9-552f7f5e11af', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3e150c23-e055-c956-1a1b-552f7fef6a04', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3e3b6581-5b8a-a2d5-fdd0-552f7f56563b', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3e6b069b-8136-3e54-76e0-552f7faa4122', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3e8e6477-0ea5-fc30-b010-552f7f8e2835', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3f63758b-dc5d-ef17-d30d-552f7fa4f20e', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'prospectlists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('40df82c9-ea42-95df-7fa9-552f7f838773', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('411009d6-bea0-7fce-e41a-552f7fd94829', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('413789a0-c873-83d5-fff6-552f7f44c245', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('415a4257-f3e0-6392-fe8d-552f7f4a70e8', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('419ee817-0105-5c95-5b1b-552f7fb1d5f7', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('41c7bcaf-15c4-d9a7-13b6-552f7fc5619c', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('41f2593b-3011-b864-079d-552f7ffd1d32', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('421df4f2-81fb-06fa-1551-552f7fb84386', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('4242ac68-f979-d0fe-b57a-552f7fc2cada', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('426820f3-acf5-6418-47e0-552f7fc50ee8', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('4290eeda-d9aa-b304-3cca-552f7f46a658', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('433d8d3b-0953-9c5c-02d8-552f7f464634', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43e60224-9047-d863-9705-552f7ffab495', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('46efa882-01c1-fd5a-1160-552f7fd479a6', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('4718334c-50e4-b0a5-191b-552f7fb26081', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('473e0629-a925-3e4d-1d73-552f7f6a38ad', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('478a4737-3e70-9152-e638-552f7f850451', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'schedulersjobs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4963cc6e-8ba8-bd25-5db5-552f7f131afb', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4990e6be-bf40-f000-fa14-552f7f1c6cbf', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('49b3ec86-d322-3459-949e-552f7fbb031f', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('49d79610-707f-d4a9-b449-552f7f1028ca', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('49fb787c-1489-eb87-e3a1-552f7f788c12', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('4a252fcc-78ef-cb31-14e0-552f7f066323', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4a46fba3-c6aa-4583-8a80-552f7f6ec105', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4a683b0d-1b85-81cb-8040-552f7fb329af', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4a89c549-2c1e-88e9-c828-552f7f131ceb', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4aaa07b8-2788-7835-e27a-552f7ff62c0d', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('4ad0f168-31df-0c51-7dcd-552f7f2f1e99', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('4b083e48-c026-8d2e-3684-552f7f5e7f9f', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('4c9ae795-267b-95cd-4f5f-552f7f393857', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4cc248c1-9fb8-616b-c94d-552f7f88bfc0', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4ce780c0-b94f-2a9d-3a51-552f7f031b8b', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4d15bc7d-e91a-4607-c044-552f7fa8e590', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('4d35adf3-337d-44f9-2b98-552f7ff8304c', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('4d55a1a8-52f1-0cb2-e741-552f7f51b08b', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4d8cd625-c0f0-112d-c6a6-552f7fbf850d', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4dae3ac7-3a7b-a466-3c7c-552f7f46c56d', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('4dd2495f-f20a-cd4f-9825-552f7fb07a3a', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('4df432fb-d9af-4955-ea2c-552f7fbea0c8', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('4e161738-c9b7-2f1d-8e59-552f7fe60b48', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('4e397585-eb1c-8786-9b11-552f7f7cecc0', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('4e5baf93-4376-2eb7-22db-552f7f052b39', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4e7e9eed-6ed2-159a-e254-552f7fbbfe5b', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('4fccc900-35f2-6e9b-8deb-552f7fb35da8', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4ffc37fa-433f-adb6-644d-552f7f28e569', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('50210e72-06bb-6482-d792-552f7fe72491', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5044c004-887a-c828-975e-552f7fac695d', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('5075ddac-5a7e-a861-5bde-552f7ffaca2a', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('509620eb-63ae-c86c-d748-552f7fb47643', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('50b64548-108c-1f19-117d-552f7f40d530', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('50dc4fff-fe0e-2a0a-6a3b-552f7f1ae049', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('50fcab0e-6a1e-fbe9-82fc-552f7f6fbc5f', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5122db4e-7e3a-fca5-7fd5-552f7fd340c9', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('51464fd0-1e37-d3c1-2db2-552f7f6da7c6', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('521e98b5-3260-c819-1f3a-552f7ffe2ed9', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('531bd607-0e41-7b44-9386-552f7f336814', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('534618fd-4c1c-458c-3367-552f7fecca97', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('53704988-4b20-e406-782d-552f7f1e7bbc', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('54cb3122-567d-3891-f206-552f7f879a22', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('54f6c933-d972-d191-a395-552f7f04f6df', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('552006d7-4a95-4029-5aef-552f7f04e582', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5543d059-5985-9f48-f920-552f7f84d3ea', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('580453f4-0662-57b4-cdfe-552f7f5b6ab0', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('582fc849-c147-637a-8c23-552f7f4c8e36', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('585524c9-995c-ca3a-624e-552f7fb02144', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('58789e88-6756-078a-7b7e-552f7f907655', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('589c509e-3e5b-3c63-131c-552f7f0d3619', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('58c04683-e625-48ef-2edb-552f7ff86f90', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('58ed4661-1b96-35a9-8afc-552f7fada7ca', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('590e4b5b-536c-3655-f922-552f7f6c46ea', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5a7ae9a4-211d-957b-f2b2-552f7ff713f0', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5aa4fdee-d336-d4f9-5832-552f7fcab2a7', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5ac9a8cd-02b8-52d3-6131-552f7f5bb7b1', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5aecd920-50a8-0888-b1f3-552f7fb2e1f6', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('5c0e0813-13e8-f516-1ace-552f7f2ee15b', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5c437875-2afc-7fe4-bd49-552f7fb3023f', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5c798e32-29fe-63e8-57f7-552f7fbceeb3', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5ca9da93-b5c2-8a24-3890-552f7f4a2272', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('62676560-f835-c257-05e7-552f7fc79f3a', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6295d1dc-ee75-6977-cf7d-552f7f72c275', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('62bfd361-7812-362f-916a-552f7f2e6d59', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('62e78b82-d00d-6238-1cdc-552f7f34553c', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('639135b7-b1f5-8656-e05a-552f7f6bd73e', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('673c409d-fefa-3562-5ddd-552f7fbfd6b0', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('676e5461-bdf9-7170-4cea-552f7f38c275', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('6840d1bf-8498-cfd8-0840-552f7f49eb28', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6a31efde-4f5d-e3e9-9b1f-552f7f6f4551', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6a661493-241f-2439-a4d8-552f7f1aeb8c', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6a8d30bc-cd3f-7f98-1278-552f7f629efd', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d84d74f-7c8e-3184-2807-552f7faac69b', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6db4f28c-7da9-efb9-59e9-552f7f95000c', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6ddeda89-a0e1-b473-aecc-552f7f66ac38', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6ed287c6-be5c-48c1-b4e0-552f7f2067b0', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6ef7411a-1184-2e7b-0dff-552f7f505c02', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6f190e4a-ba71-bd2b-10ec-552f7f7698bb', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6fc018c2-0105-6479-6bc1-552f7f07a659', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6fedf385-59ed-8e9f-b112-552f7f42df71', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('713f66b9-8e38-8f7e-f72e-552f7fc28759', 'asol_activity_modified_user', 'Users', 'users', 'id', 'asol_Activity', 'asol_activity', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7169bfa1-d6df-1d61-ecfb-552f7ff04484', 'asol_activity_created_by', 'Users', 'users', 'id', 'asol_Activity', 'asol_activity', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7191be64-d94a-204f-ce18-552f7f95d198', 'asol_activity_assigned_user', 'Users', 'users', 'id', 'asol_Activity', 'asol_activity', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('727f1a5c-1721-851d-29c8-552f7f7cf7a7', 'asol_events_modified_user', 'Users', 'users', 'id', 'asol_Events', 'asol_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('72ab6a48-66ac-d075-2f96-552f7fd5af5b', 'asol_events_created_by', 'Users', 'users', 'id', 'asol_Events', 'asol_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('72d1184e-56a9-b565-c58c-552f7f65531c', 'asol_events_assigned_user', 'Users', 'users', 'id', 'asol_Events', 'asol_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('73af6e00-6b77-884b-8f6b-552f7f3b912d', 'asol_onhold_modified_user', 'Users', 'users', 'id', 'asol_OnHold', 'asol_onhold', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('73db9786-44b2-7851-f8f5-552f7fa31f8a', 'asol_onhold_created_by', 'Users', 'users', 'id', 'asol_OnHold', 'asol_onhold', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7402a12f-2c80-0b57-ee8f-552f7f8be53b', 'asol_onhold_assigned_user', 'Users', 'users', 'id', 'asol_OnHold', 'asol_onhold', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('74fd9b89-035a-a458-64bb-552f7f8487d9', 'asol_process_modified_user', 'Users', 'users', 'id', 'asol_Process', 'asol_process', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('752d0a95-82db-5761-55e1-552f7f43d555', 'asol_process_created_by', 'Users', 'users', 'id', 'asol_Process', 'asol_process', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('754f1c95-63a4-5248-7421-552f7f3e5135', 'asol_process_assigned_user', 'Users', 'users', 'id', 'asol_Process', 'asol_process', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7616000d-2d97-480a-de21-552f7fcd8712', 'asol_processinstances_modified_user', 'Users', 'users', 'id', 'asol_ProcessInstances', 'asol_processinstances', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('763c2298-e8a6-3677-eedb-552f7f4626e4', 'asol_processinstances_created_by', 'Users', 'users', 'id', 'asol_ProcessInstances', 'asol_processinstances', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('765f5b9d-4309-a8be-4db1-552f7ff7d860', 'asol_processinstances_assigned_user', 'Users', 'users', 'id', 'asol_ProcessInstances', 'asol_processinstances', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7742a249-9a2f-3137-97bf-552f7f4bbfb5', 'asol_task_modified_user', 'Users', 'users', 'id', 'asol_Task', 'asol_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7771d051-de04-8932-23e2-552f7ff8f287', 'asol_task_created_by', 'Users', 'users', 'id', 'asol_Task', 'asol_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('779dc23d-8663-93d4-5ea0-552f7fe7fc1f', 'asol_task_assigned_user', 'Users', 'users', 'id', 'asol_Task', 'asol_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('78b9c1e8-d146-083d-7b55-552f7f98b474', 'asol_workingnodes_modified_user', 'Users', 'users', 'id', 'asol_WorkingNodes', 'asol_workingnodes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('78df910d-c071-f51c-9153-552f7fb89d81', 'asol_workingnodes_created_by', 'Users', 'users', 'id', 'asol_WorkingNodes', 'asol_workingnodes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7904a77b-e365-c504-5306-552f7fd0806c', 'asol_workingnodes_assigned_user', 'Users', 'users', 'id', 'asol_WorkingNodes', 'asol_workingnodes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('79c4a5c4-dd28-794e-7a29-552f7fd63418', 'asol_workflowmanagercommon_modified_user', 'Users', 'users', 'id', 'asol_WorkFlowManagerCommon', 'asol_workflowmanagercommon', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('79e7ccf0-e864-ae0c-6b75-552f7f44e78f', 'asol_workflowmanagercommon_created_by', 'Users', 'users', 'id', 'asol_WorkFlowManagerCommon', 'asol_workflowmanagercommon', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a0ca062-c083-7278-14c9-552f7f926016', 'asol_workflowmanagercommon_assigned_user', 'Users', 'users', 'id', 'asol_WorkFlowManagerCommon', 'asol_workflowmanagercommon', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b24e6a5-0581-49b0-07ef-552f7f8de58c', 'fzgls_bumeng_mataine_modified_user', 'Users', 'users', 'id', 'fzgls_bumeng_mataine', 'fzgls_bumeng_mataine', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b47b9f0-8918-e589-e1c9-552f7f28aa53', 'fzgls_bumeng_mataine_created_by', 'Users', 'users', 'id', 'fzgls_bumeng_mataine', 'fzgls_bumeng_mataine', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b675108-b30a-2e59-3d59-552f7faa43fa', 'fzgls_bumeng_mataine_assigned_user', 'Users', 'users', 'id', 'fzgls_bumeng_mataine', 'fzgls_bumeng_mataine', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7cb9acd6-71a6-1c3e-b4ad-552f7f1890e0', 'fzgls_employer_info_modified_user', 'Users', 'users', 'id', 'fzgls_employer_info', 'fzgls_employer_info', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ce029dd-5b3d-a30e-6466-552f7f88c68a', 'fzgls_employer_info_created_by', 'Users', 'users', 'id', 'fzgls_employer_info', 'fzgls_employer_info', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d0181cc-c379-e84a-5359-552f7fa63749', 'fzgls_employer_info_assigned_user', 'Users', 'users', 'id', 'fzgls_employer_info', 'fzgls_employer_info', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d243cad-0bed-8d5a-e470-552f7f4bc6d2', 'fzgls_employer_info_email_addresses', 'fzgls_employer_info', 'fzgls_employer_info', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'fzgls_employer_info', 0, 0),
('7d4e6a9f-402e-d6c1-56c8-552f7fecd6e7', 'fzgls_employer_info_email_addresses_primary', 'fzgls_employer_info', 'fzgls_employer_info', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('7eb74623-7b97-207a-b0e5-552f7f928fbe', 'fzgls_fenggongsi_info_modified_user', 'Users', 'users', 'id', 'fzgls_fenggongsi_info', 'fzgls_fenggongsi_info', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7eeb9295-e338-0c8d-0dd8-552f7f6eceb7', 'fzgls_fenggongsi_info_created_by', 'Users', 'users', 'id', 'fzgls_fenggongsi_info', 'fzgls_fenggongsi_info', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f0f3202-24b3-bb9c-3ca6-552f7fbf8cb5', 'fzgls_fenggongsi_info_assigned_user', 'Users', 'users', 'id', 'fzgls_fenggongsi_info', 'fzgls_fenggongsi_info', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f33cadd-b35b-8efb-07c1-552f7fbcf2de', 'fzgls_fenggongsi_info_email_addresses', 'fzgls_fenggongsi_info', 'fzgls_fenggongsi_info', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'fzgls_fenggongsi_info', 0, 0),
('7f549833-9a5f-ad8f-c98c-552f7f65937c', 'fzgls_fenggongsi_info_email_addresses_primary', 'fzgls_fenggongsi_info', 'fzgls_fenggongsi_info', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('80676856-a59e-2422-1feb-552f7f7011e1', 'fzgls_hezuo_waibu_qudao_modified_user', 'Users', 'users', 'id', 'fzgls_hezuo_waibu_qudao', 'fzgls_hezuo_waibu_qudao', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('808f26e4-fa33-747d-1086-552f7f98dcb6', 'fzgls_hezuo_waibu_qudao_created_by', 'Users', 'users', 'id', 'fzgls_hezuo_waibu_qudao', 'fzgls_hezuo_waibu_qudao', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80b6b57f-2028-67f9-3b11-552f7fb46408', 'fzgls_hezuo_waibu_qudao_assigned_user', 'Users', 'users', 'id', 'fzgls_hezuo_waibu_qudao', 'fzgls_hezuo_waibu_qudao', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80da3aa6-55cc-768d-0b64-552f7f85ffa2', 'fzgls_hezuo_waibu_qudao_email_addresses', 'fzgls_hezuo_waibu_qudao', 'fzgls_hezuo_waibu_qudao', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'fzgls_hezuo_waibu_qudao', 0, 0),
('80ffff54-2943-7393-7af0-552f7f0fcab4', 'fzgls_hezuo_waibu_qudao_email_addresses_primary', 'fzgls_hezuo_waibu_qudao', 'fzgls_hezuo_waibu_qudao', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('8226f0da-fabc-21e7-d93d-552f7f24be41', 'fzgls_jiekuangren_dangan_modified_user', 'Users', 'users', 'id', 'fzgls_jiekuangren_dangan', 'fzgls_jiekuangren_dangan', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('824f5db7-464a-961f-9ef2-552f7f10a5ae', 'fzgls_jiekuangren_dangan_created_by', 'Users', 'users', 'id', 'fzgls_jiekuangren_dangan', 'fzgls_jiekuangren_dangan', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('827778f2-66a3-1b65-8bc3-552f7f412ceb', 'fzgls_jiekuangren_dangan_assigned_user', 'Users', 'users', 'id', 'fzgls_jiekuangren_dangan', 'fzgls_jiekuangren_dangan', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8299dd94-d768-8ed0-c890-552f7f81894d', 'fzgls_jiekuangren_dangan_email_addresses', 'fzgls_jiekuangren_dangan', 'fzgls_jiekuangren_dangan', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'fzgls_jiekuangren_dangan', 0, 0),
('82c136e5-626a-cd12-ba35-552f7f6dc403', 'fzgls_jiekuangren_dangan_email_addresses_primary', 'fzgls_jiekuangren_dangan', 'fzgls_jiekuangren_dangan', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('83cc8574-6a9d-6ae5-ca24-552f7f8fa9ee', 'fzgls_jsjg_base_info_modified_user', 'Users', 'users', 'id', 'fzgls_jsjg_base_info', 'fzgls_jsjg_base_info', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('83ff412d-2617-c831-f6c1-552f7f19a5aa', 'fzgls_jsjg_base_info_created_by', 'Users', 'users', 'id', 'fzgls_jsjg_base_info', 'fzgls_jsjg_base_info', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8425cd77-9a1e-84c2-08d7-552f7fc418ae', 'fzgls_jsjg_base_info_assigned_user', 'Users', 'users', 'id', 'fzgls_jsjg_base_info', 'fzgls_jsjg_base_info', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('84473336-57e6-da32-7388-552f7f354b3b', 'fzgls_jsjg_base_info_email_addresses', 'fzgls_jsjg_base_info', 'fzgls_jsjg_base_info', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'fzgls_jsjg_base_info', 0, 0),
('846d7216-6aa0-5c77-3c11-552f7fd034df', 'fzgls_jsjg_base_info_email_addresses_primary', 'fzgls_jsjg_base_info', 'fzgls_jsjg_base_info', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('853d85a8-dd0c-c00a-098d-552f7f91043a', 'fzgls_kefu_liucheng_modified_user', 'Users', 'users', 'id', 'fzgls_kefu_liucheng', 'fzgls_kefu_liucheng', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8562595e-a176-ebbe-974b-552f7f216942', 'fzgls_kefu_liucheng_created_by', 'Users', 'users', 'id', 'fzgls_kefu_liucheng', 'fzgls_kefu_liucheng', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('85967c5b-0ff1-072a-ce1e-552f7fab894e', 'fzgls_kefu_liucheng_assigned_user', 'Users', 'users', 'id', 'fzgls_kefu_liucheng', 'fzgls_kefu_liucheng', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8a6f3a76-abcf-d4c4-bb78-552f7fec66cc', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('8a9b935e-3010-5aff-224e-552f7f9c9380', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('8abeeda5-8fb1-47b6-734e-552f7f83a924', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('8ae59d93-99b2-6a45-e68c-552f7f5e6cb8', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('8b2c97ed-89f5-14e1-1d18-552f7f5f7e89', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('8b529b9a-c5b5-5acb-2ab6-552f7fda0ffb', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('8b77cb05-6ef4-ee84-882d-552f7f88db9c', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('8b987c3d-7a8e-db3a-64a6-552f7f01b134', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('8bbc2a88-1005-3380-e9bc-552f7ff2998a', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('8bde6ef7-89b1-26c9-67b1-552f7fe912dd', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('8c0b56ac-0681-91c1-284a-552f7ff79a54', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('8c2ca935-8893-0921-7eb9-552f7fce962e', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('8c62179e-9402-167f-f76c-552f7f4d1f85', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('8c82fa67-7381-4966-8624-552f7fea53cd', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('8ca3d398-3e9a-7de1-c5b8-552f7fd8e83a', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('8cc67d03-0b8d-d94d-366c-552f7fd7173e', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('8ce93789-5d0e-b6df-fa94-552f7f7e4c30', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('8d082bfe-0d31-5e40-7d4e-552f7fccd657', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('8d2b696d-f5d6-0f3c-7a0c-552f7fa83b91', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('8d4ed6d9-85fb-b04d-2a7b-552f7ff3b164', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('8d788ebf-47c2-f0b9-5a94-552f7f2d86d3', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('8d9d1fe7-1a7e-cc33-ddc8-552f7f0df3e4', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('8dc25eb0-c031-0b61-57cf-552f7f56b4a8', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('8de2ea84-d0c4-3cea-c7c4-552f7fe6e6bf', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('8e12fded-5d95-cb98-7728-552f7ff703a2', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('8e33b40f-ddeb-4877-0799-552f7f4fe105', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('8e5b2085-eb27-2688-8eab-552f7f95f9d7', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('8e827b13-88e8-eba1-721f-552f7ff3c430', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('8eae84de-6771-4b98-13c8-552f7f9f7aae', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('8ed3c7f2-83a1-3ffe-da30-552f7fa10cb4', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('8ef5b179-5749-dd51-af90-552f7ff26d5d', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('8f166f61-4fd3-a6b0-86b9-552f7f4b39a9', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('8f39661b-d9ae-dfd6-d338-552f7f4a3046', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('8f5b7977-5238-53b7-99dc-552f7f7d4d9c', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('8f7e3149-f22b-307d-f40e-552f7f3ebb06', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('8fa2ded9-b1c4-eb7b-9017-552f7f89f1d4', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('8fc7e0f6-c11d-cda7-e0ee-552f7f62e079', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('8feb60a6-76b5-2ac2-1398-552f7f50f429', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('901b5a13-a9ed-30c9-7c17-552f7feb3edd', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('9042b6fb-2205-dc1e-ebc2-552f7f4bf2b8', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('9065b274-c319-ac22-928b-552f7f0bb529', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('90872c44-7356-eebf-2a30-552f7f9dbb44', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('90a6d596-7280-7fbd-2e2e-552f7fec6901', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('90c9a670-5a8d-1f80-1d2e-552f7f7dc704', 'asol_activity_asol_activity', 'asol_Activity', 'asol_activity', 'id', 'asol_Activity', 'asol_activity', 'id', 'asol_activisol_activity_c', 'asol_activ898activity_ida', 'asol_activ9e2dctivity_idb', 'many-to-many', NULL, NULL, 0, 0),
('90ecbc42-49ab-a6ec-b641-552f7f94a7c5', 'asol_activity_asol_task', 'asol_Activity', 'asol_activity', 'id', 'asol_Task', 'asol_task', 'id', 'asol_activity_asol_task_c', 'asol_activ5b86ctivity_ida', 'asol_activf613ol_task_idb', 'many-to-many', NULL, NULL, 0, 0),
('9112c5b6-9afd-88e6-ca0a-552f7fa32110', 'asol_events_asol_activity', 'asol_Events', 'asol_events', 'id', 'asol_Activity', 'asol_activity', 'id', 'asol_eventssol_activity_c', 'asol_event87f4_events_ida', 'asol_event8042ctivity_idb', 'many-to-many', NULL, NULL, 0, 0),
('913dc5e4-aef1-054f-45ff-552f7f490e78', 'asol_process_asol_activity', 'asol_Process', 'asol_process', 'id', 'asol_Activity', 'asol_activity', 'id', 'asol_process_asol_activity_c', 'asol_process_asol_activityasol_process_ida', 'asol_process_asol_activityasol_activity_idb', 'many-to-many', NULL, NULL, 0, 0),
('9160aba6-8e0b-8593-4a7b-552f7ffe1e17', 'asol_process_asol_events', 'asol_Process', 'asol_process', 'id', 'asol_Events', 'asol_events', 'id', 'asol_proces_asol_events_c', 'asol_proce6f14process_ida', 'asol_procea8ca_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('9182f545-0029-314c-9a30-552f7f1210a5', 'asol_process_asol_events_1', 'asol_Process', 'asol_process', 'id', 'asol_Events', 'asol_events', 'id', 'asol_process_asol_events_1_c', 'asol_process_asol_events_1asol_process_ida', 'asol_process_asol_events_1asol_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('91a872b7-5711-b750-1538-552f7f6669ef', 'asol_process_asol_task', 'asol_Process', 'asol_process', 'id', 'asol_Task', 'asol_task', 'id', 'asol_process_asol_task_c', 'asol_process_asol_taskasol_process_ida', 'asol_process_asol_taskasol_task_idb', 'many-to-many', NULL, NULL, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

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
(64, '369ac70b-f742-51d5-95e4-552dda8f29e6', '1', 'Users', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'Liu Jack', '2015-04-15 03:25:42', 'detailview', 'rr3qslptvgvjtdnctc0t9qgiq1', 1, 0),
(69, '6bcd08f1-fccd-003e-fe4b-552ddbf3c2b6', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'Employees', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'Liu Jack', '2015-04-15 03:29:32', 'detailview', 'cg0qgaa9blcajagedelq4ifg83', 1, 0),
(72, 'c50f249c-fd46-ec7b-da56-552ddbf095ba', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'fzgls_employer_info', '1eb1aa75-c25e-3e51-8911-552ddade7ecd', '先生 小军 曹', '2015-04-15 03:30:08', 'detailview', 'cg0qgaa9blcajagedelq4ifg83', 0, 0),
(78, '17016d22-36bb-28e8-6ef6-552ddb36a4b8', '23d39e87-2c70-3cc2-270c-552b2baee075', 'Employees', '1', 'Cao Jeff', '2015-04-15 03:31:20', 'detailview', 'q25c4bb8tdtao4s6hv57qp7pk1', 1, 0),
(79, '1f24f3a9-02be-641b-14f1-552ddb678972', '23d39e87-2c70-3cc2-270c-552b2baee075', 'Employees', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'Liu Jack', '2015-04-15 03:31:25', 'detailview', 'q25c4bb8tdtao4s6hv57qp7pk1', 1, 0),
(80, '70eee013-fe37-7b96-a88c-552ddb105680', '23d39e87-2c70-3cc2-270c-552b2baee075', 'Employees', '23d39e87-2c70-3cc2-270c-552b2baee075', 'Meng Jun', '2015-04-15 03:31:31', 'detailview', 'q25c4bb8tdtao4s6hv57qp7pk1', 1, 0),
(82, '531a11e8-b958-c3e8-a95d-552ddc0031af', '1', 'fzgls_employer_info', '1eb1aa75-c25e-3e51-8911-552ddade7ecd', '先生 小军 曹', '2015-04-15 03:34:41', 'detailview', 'rr3qslptvgvjtdnctc0t9qgiq1', 0, 0),
(84, '1c1cb9d6-65cb-2b0f-8d23-552f66013156', '1', 'Employees', '1', 'Cao Jeff', '2015-04-16 07:35:22', 'detailview', 'bton1utit39v1n2lodgfulr295', 1, 0),
(85, 'afdfff8a-09e8-4a6e-5984-552f714e719b', '1', 'fzgls_fenggongsi_info', '8b4afdce-d416-d9c4-904e-552f7132e06e', NULL, '2015-04-16 08:24:57', 'detailview', 'bton1utit39v1n2lodgfulr295', 1, 0),
(86, '4e619eb3-aa03-7208-3e26-552f72e01dcb', '1', 'fzgls_bumeng_mataine', '23ef85c4-2c84-ed6d-90b9-552f7273dd02', NULL, '2015-04-16 08:26:32', 'detailview', 'bton1utit39v1n2lodgfulr295', 1, 0),
(89, 'c1841522-f85f-0be1-a95b-552f732bf5d5', '1', 'Employees', '23d39e87-2c70-3cc2-270c-552b2baee075', 'Meng Jun', '2015-04-16 08:30:10', 'detailview', 'bton1utit39v1n2lodgfulr295', 1, 0),
(92, '3519caa3-b6a2-4c32-3e1c-552f79368674', '1', 'Project', '1016d779-1c6f-8925-e5ff-552b8319a11b', 'test', '2015-04-16 08:59:41', 'detailview', 'bton1utit39v1n2lodgfulr295', 1, 0),
(96, '78d1f857-f544-a660-3a87-552f7a79ccee', '1', 'Tasks', 'f02e52fd-d3b3-6173-9d79-552bbdc986f3', 'test task', '2015-04-16 09:02:00', 'editview', 'bton1utit39v1n2lodgfulr295', 1, 0);

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
  `first_name` varchar(30) DEFAULT NULL,
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
('1', 'admin', '$1$Ftr7BjVE$4DxSlrgXYelshc0rVw4gn.', 0, NULL, NULL, 1, 'Cao', 'Jeff', 1, 0, 1, NULL, '2015-04-12 02:17:29', '2015-04-12 02:20:59', '1', '', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0),
('23d39e87-2c70-3cc2-270c-552b2baee075', 'mengjun', '$1$z4YZeWUF$sKmUpk2qFxU/YnNvORPOK.', 0, '2015-04-13 13:06:00', NULL, 1, 'Meng', 'Jun', 0, 0, 1, NULL, '2015-04-13 02:35:00', '2015-04-13 13:07:08', '23d39e87-2c70-3cc2-270c-552b2baee075', '1', NULL, NULL, NULL, '234234124', '35345345341234', NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0),
('dcc5fa9d-a761-2542-e599-552b2bd91094', 'jack', '$1$A71qJAE1$6e/z.DKfFWbR3UBhJolps0', 0, '2015-04-15 03:28:00', NULL, 1, 'Liu', 'Jack', 0, 0, 1, NULL, '2015-04-13 02:35:29', '2015-04-15 03:29:06', 'dcc5fa9d-a761-2542-e599-552b2bd91094', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0);

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
  `fzgls_fenggongsi_info_id_c` char(36) DEFAULT NULL,
  `yuangong_name_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
('38944ce5-6015-b342-89ce-5529d5695d04', 'global', 0, '2015-04-12 02:17:29', '2015-04-14 06:22:42', '1', 'YToyODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjM4NjhlMzg2LWUyODItZDBmNC1kMzA4LTU1MjlkNWNkZGU2MiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjY6IuaJgOaciSI7czoxMDoiRW1wbG95ZWVzUSI7YTozOntzOjY6Im1vZHVsZSI7czo5OiJFbXBsb3llZXMiO3M6NjoiYWN0aW9uIjtzOjU6ImluZGV4IjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO319'),
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
('810acfc7-5193-c7b3-4dfc-552b84cb056c', 'global', 0, '2015-04-13 08:55:31', '2015-04-15 03:30:29', '23d39e87-2c70-3cc2-270c-552b2baee075', 'YTozNTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOi0xO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjE1OiJsb2dpbmV4cGlyYXRpb24iO3M6MToiMCI7czo3OiJsb2Nrb3V0IjtzOjA6IiI7czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6Njoi5omA5pyJIjtzOjEwOiJFbXBsb3llZXNRIjthOjM6e3M6NjoibW9kdWxlIjtzOjk6IkVtcGxveWVlcyI7czo2OiJhY3Rpb24iO3M6NToiaW5kZXgiO3M6NToicXVlcnkiO3M6NDoidHJ1ZSI7fX0='),
('8c6592b7-7d3e-6256-85a3-552f7a1cc03e', 'ProjectTask2_PROJECTTASK', 0, '2015-04-16 09:00:16', '2015-04-16 09:00:16', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('978938ab-6bea-2d97-74a9-552ddbfa9a5a', 'fzgls_employer_info2_FZGLS_EMPLOYER_INFO', 0, '2015-04-15 03:29:15', '2015-04-15 03:29:15', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('98fce003-7662-0892-251f-552cb0ce8ec4', 'EmailTemplates2_EMAILTEMPLATE', 0, '2015-04-14 06:17:28', '2015-04-14 06:17:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('99c741e7-8863-c435-02ca-5529e30aa0ce', 'fzgls_jsjg_base_info2_FZGLS_JSJG_BASE_INFO', 0, '2015-04-12 03:15:21', '2015-04-12 03:15:21', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a10d9627-9b9c-b313-2e0d-552ddb0ae1e3', 'fzgls_employer_info2_FZGLS_EMPLOYER_INFO', 0, '2015-04-15 03:30:25', '2015-04-15 03:30:25', '23d39e87-2c70-3cc2-270c-552b2baee075', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b544a446-9d08-b2e2-25c6-552cb2347f13', 'Schedulers2_SCHEDULER', 0, '2015-04-14 06:23:00', '2015-04-14 06:23:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bee851f2-873c-ebf7-d1d7-552cb10d1732', 'fzgls_bumeng_mataine2_FZGLS_BUMENG_MATAINE', 0, '2015-04-14 06:18:04', '2015-04-16 08:29:29', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiYnVtZW5nX251bV9jIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO319'),
('c2c7af8f-7e4c-73be-9116-552cb060d2e6', 'fzgls_kefu_liucheng2_FZGLS_KEFU_LIUCHENG', 0, '2015-04-14 06:16:23', '2015-04-14 06:16:23', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c4652c33-0448-390d-30fa-552ddbd6321b', 'Home', 0, '2015-04-15 03:29:06', '2015-04-15 03:29:06', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6ImExYzc0MGYyLTBkMDgtZGJkYi1mMmYwLTU1MmRkYjNkYzFkYyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czozMDoiTEJMX0RBU0hMRVRfRElTQ09WRVJfU1VHQVJfUFJPIjtzOjM6InVybCI7czo0MjoiaHR0cHM6Ly93d3cuc3VnYXJjcm0uY29tL2NybS9wcm9kdWN0L2dvcHJvIjtzOjY6ImhlaWdodCI7aTozMTU7fX1zOjM2OiJhMWM5NWNiMy1lMjRlLWNlYzEtMjgxNy01NTJkZGI1YjlhYTgiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjQ6Im1vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiJhMWNhNWZlMS0zZmQzLWFiMjEtNTg5Mi01NTJkZGJhY2U5YzUiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTM6ImlGcmFtZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjQ6IkhvbWUiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjE7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvaUZyYW1lRGFzaGxldC9pRnJhbWVEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjM6e3M6MTA6InRpdGxlTGFiZWwiO3M6MjI6IkxCTF9EQVNITEVUX1NVR0FSX05FV1MiO3M6MzoidXJsIjtzOjQxOiJodHRwczovL3d3dy5zdWdhcmNybS5jb20vY3JtL3Byb2R1Y3QvbmV3cyI7czo2OiJoZWlnaHQiO2k6MzE1O319czozNjoiYTI0OWM4ZDQtZDM1Ni1jMjkzLTU4MjctNTUyZGRiY2Y5YmU0IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhbGxzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FsbHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYTJmMTBkODEtNDMyOS01MjEyLTMwMWYtNTUyZGRiODlmMDM4IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiTWVldGluZ3MiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL01lZXRpbmdzL0Rhc2hsZXRzL015TWVldGluZ3NEYXNobGV0L015TWVldGluZ3NEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYTM1MGE1YzItOTMxMy0wYTFhLWY2ZjAtNTUyZGRiYTZkNTdjIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJhM2M4ZWNmOC02MmQ2LWI4NzctYjBhYi01NTJkZGI5OTVhNzYiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15QWNjb3VudHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJBY2NvdW50cyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJhNDU0NWFlOC1hZDAwLWZhNmQtMWEyZi01NTJkZGJkYjA1MzUiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJMZWFkcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX19czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Njp7aTowO3M6MzY6ImExYzc0MGYyLTBkMDgtZGJkYi1mMmYwLTU1MmRkYjNkYzFkYyI7aToxO3M6MzY6ImEyNDljOGQ0LWQzNTYtYzI5My01ODI3LTU1MmRkYmNmOWJlNCI7aToyO3M6MzY6ImEyZjEwZDgxLTQzMjktNTIxMi0zMDFmLTU1MmRkYjg5ZjAzOCI7aTozO3M6MzY6ImEzNTBhNWMyLTkzMTMtMGExYS1mNmYwLTU1MmRkYmE2ZDU3YyI7aTo0O3M6MzY6ImEzYzhlY2Y4LTYyZDYtYjg3Ny1iMGFiLTU1MmRkYjk5NWE3NiI7aTo1O3M6MzY6ImE0NTQ1YWU4LWFkMDAtZmE2ZC0xYTJmLTU1MmRkYmRiMDUzNSI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiYTFjOTVjYjMtZTI0ZS1jZWMxLTI4MTctNTUyZGRiNWI5YWE4IjtpOjE7czozNjoiYTFjYTVmZTEtM2ZkMy1hYjIxLTU4OTItNTUyZGRiYWNlOWM1Ijt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),
('c4dae592-fff3-59f6-7bb8-552ddb62586b', 'Home2_CALL', 0, '2015-04-15 03:29:06', '2015-04-15 03:29:06', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c5174f72-e689-378c-ea22-552ddbf2eba2', 'Home2_MEETING', 0, '2015-04-15 03:29:06', '2015-04-15 03:29:06', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c549eb26-553d-d300-5448-552ddb1a8a38', 'Home2_OPPORTUNITY', 0, '2015-04-15 03:29:06', '2015-04-15 03:29:06', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c57e6ced-8b9a-e9ab-dc00-552ddb2ec4a2', 'Home2_ACCOUNT', 0, '2015-04-15 03:29:06', '2015-04-15 03:29:06', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c5bafc64-d557-bb72-d2d7-552ddbb6fe0d', 'Home2_LEAD', 0, '2015-04-15 03:29:06', '2015-04-15 03:29:06', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c5ec9a32-8684-95bf-329f-552ddb2d4784', 'Home2_SUGARFEED', 0, '2015-04-15 03:29:06', '2015-04-15 03:29:06', 'dcc5fa9d-a761-2542-e599-552b2bd91094', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
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
('91ec8d3a-2f2a-d6f9-8c22-552f7fb3daf0', 0, '2015-04-16 09:21:24', '2015-04-16 09:21:24', '1', '1', 'Rebuild Relationships', '4.0.0', '4.0.0'),
('965feb44-a377-fcb2-dd24-552f7fb266d8', 0, '2015-04-16 09:21:24', '2015-04-16 09:21:24', '1', '1', 'Rebuild Extensions', '4.0.0', '4.0.0');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=97;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
