-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2015-05-03 17:41:30
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
('10570b61-0f8c-80f0-d9fe-5542c1fe30cb', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'Project', 'module', 90, 0),
('18107fb1-03fa-7c02-8005-5542f8533c1c', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'access', 'yuang_fengongsi_info', 'module', 89, 0),
('18a5740a-a547-1572-d88e-5542f8dfa6e8', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'view', 'yuang_fengongsi_info', 'module', 90, 0),
('192f334c-c633-6500-7b84-5542f8da2e88', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'list', 'yuang_fengongsi_info', 'module', 90, 0),
('19850bb5-f797-8512-2703-5542c1bd9ecc', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'Project', 'module', 90, 0),
('199c044f-3aae-ecba-9a6e-5542c123a221', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('19b11f05-08e0-a133-e9e6-5542f827fbc3', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'edit', 'yuang_fengongsi_info', 'module', 90, 0),
('1a155778-858f-b1d8-7e5b-5542c15511dc', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('1a5e3c23-1832-4102-3936-5542f821fb69', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'delete', 'yuang_fengongsi_info', 'module', 90, 0),
('1a8f4c4e-833d-62b3-5762-5542c19484b5', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('1aea2dea-0341-06a8-6b1f-5542f8f566b3', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'import', 'yuang_fengongsi_info', 'module', 90, 0),
('1afe709b-b2de-3a83-0298-5542c148800b', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('1b642813-8512-c884-f19a-5542f8ea7db3', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'export', 'yuang_fengongsi_info', 'module', 90, 0),
('1b842ae0-109a-7973-5846-5542c1723130', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('1bd90ed6-e745-48e0-ac9e-5542f8223808', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'massupdate', 'yuang_fengongsi_info', 'module', 90, 0),
('1c03a67b-f544-4293-52ab-5542c10abd60', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('1c71c3e8-afd4-f1ce-803d-5542c14f4b59', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('1d003d9f-82be-ea07-ca5b-5542c10eb38f', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('22a80ba6-12fe-f9e4-23ee-5542c1396d3e', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'Project', 'module', 90, 0),
('22c9ecf2-b6d3-8f88-40d9-5542c1230910', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('2357ffea-b978-4477-103b-5542c17e2cd1', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('24017e70-dfec-c92a-2bda-5542c104abda', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('2481a314-daf7-d7d9-d5aa-5542c1b19b7c', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('24f58819-31fb-df51-286f-5542c18f0083', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('2569359a-dc93-60e6-8a48-5542c1e885b7', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('25e47a0f-67d6-930a-2f31-5542c1f30556', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('26700be8-f51e-b689-5ddd-5542c1ed582c', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('27eec85f-a152-d488-ab5e-5542c10f562f', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'Cases', 'module', 89, 0),
('2888b3a1-6c4e-35ce-e7c9-5542c1f09706', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'Cases', 'module', 90, 0),
('2904ab54-b43c-7056-0f9d-5542c19cad7f', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'Cases', 'module', 90, 0),
('291b0604-9ede-3c86-514b-5542c19dc9d4', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'Project', 'module', 90, 0),
('297e28c5-a3f8-5ce6-7010-5542c117e72b', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'Cases', 'module', 90, 0),
('29fd8574-1f1f-d5cd-4a78-5542c15c35a8', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'Cases', 'module', 90, 0),
('2a7a9aca-c33f-970f-5e66-5542c1acc5ef', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'Cases', 'module', 90, 0),
('2af63c36-7d0d-98dd-c4f5-5542c1e6bed2', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'Cases', 'module', 90, 0),
('2b82b489-c2e8-9fc2-f3c6-5542c1591ac7', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('2fc80f6d-733f-c455-84d9-5542c17046f8', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'Project', 'module', 90, 0),
('36420cea-a8f8-5d9f-29bb-5542c1a78bef', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('3ce5b019-d3ed-2975-2d64-5542c2d25b37', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'EAPM', 'module', 89, 0),
('3dff8c4a-51b3-ad6c-0d3e-5542c2ea039c', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'EAPM', 'module', 90, 0),
('3edc9389-738d-eaad-7ab7-5542c258cf60', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'EAPM', 'module', 90, 0),
('3fb5a435-6453-b73f-fc49-5542c2fadc89', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('4098511c-91ca-7252-b80c-5542c25a24cf', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('412f1eb8-178a-f511-8de0-5542c22f5677', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'EAPM', 'module', 90, 0),
('41a6b1d5-76bc-2df1-713f-5542c1fd5e31', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'Accounts', 'module', 89, 0),
('41b24ca3-72e8-d0ec-f935-5542c2042908', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'EAPM', 'module', 90, 0),
('423319c3-69b8-1d22-e7f5-5542c1808846', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'Accounts', 'module', 90, 0),
('42441dec-8548-5b68-eb8d-5542c278d5af', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('4442dfe9-957d-cdae-068a-554364ac4494', '2015-05-01 11:31:10', '2015-05-01 11:31:10', '1', '1', 'access', 'liuch_fzgl_fangkuang_liucheng', 'module', 89, 0),
('4678ca5b-b2cb-e855-eceb-5542c1b020cc', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'Accounts', 'module', 90, 0),
('46f1a782-9503-842e-f65d-5542c1d8b8ed', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('476c8331-ecc5-1ed2-2120-5542c1cd9842', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('47e1b45f-b979-682d-d845-5542c1cd831e', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'Accounts', 'module', 90, 0),
('4863eb0c-2015-6e68-33dd-5542c15f33e1', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'Accounts', 'module', 90, 0),
('48de391f-2452-5fd1-c308-5542c1401e29', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('491191f9-fa3d-d51b-cb0c-55436476fda2', '2015-05-01 11:31:10', '2015-05-01 11:31:10', '1', '1', 'view', 'liuch_fzgl_fangkuang_liucheng', 'module', 90, 0),
('498df564-1af1-3a29-5b28-5543648b0af9', '2015-05-01 11:31:10', '2015-05-01 11:31:10', '1', '1', 'list', 'liuch_fzgl_fangkuang_liucheng', 'module', 90, 0),
('4a0f35b5-748f-b92e-4cdf-55436432d9b1', '2015-05-01 11:31:10', '2015-05-01 11:31:10', '1', '1', 'edit', 'liuch_fzgl_fangkuang_liucheng', 'module', 90, 0),
('4a80a9d5-8206-67a7-166b-5543644fa7c7', '2015-05-01 11:31:10', '2015-05-01 11:31:10', '1', '1', 'delete', 'liuch_fzgl_fangkuang_liucheng', 'module', 90, 0),
('4af1accc-f149-3be2-cd46-5543644f1ebd', '2015-05-01 11:31:10', '2015-05-01 11:31:10', '1', '1', 'import', 'liuch_fzgl_fangkuang_liucheng', 'module', 90, 0),
('4b790f4d-696c-e673-57ce-55436443b8af', '2015-05-01 11:31:10', '2015-05-01 11:31:10', '1', '1', 'export', 'liuch_fzgl_fangkuang_liucheng', 'module', 90, 0),
('4bef0822-0727-34f1-22e6-55436480113f', '2015-05-01 11:31:10', '2015-05-01 11:31:10', '1', '1', 'massupdate', 'liuch_fzgl_fangkuang_liucheng', 'module', 90, 0),
('4cda4f54-6e10-6ec1-b3c9-5542c17141f7', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'Calls', 'module', 89, 0),
('4d275fea-95f4-5cd7-e075-5543487167bd', '2015-05-01 09:33:03', '2015-05-01 09:33:03', '1', '1', 'access', 'liuch_fangkuang_liucheng', 'module', 89, 0),
('4d51ef91-3b4d-21fb-87d1-5542c1920039', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'Calls', 'module', 90, 0),
('4dd51c52-e8bd-8b51-84f8-5542c1f9db8e', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'Calls', 'module', 90, 0),
('4e5247ee-c533-cd6b-791f-5542c190d690', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'Calls', 'module', 90, 0),
('4edcda55-9e63-e995-328a-5542c1275114', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'Calls', 'module', 90, 0),
('4f5b875d-0799-a123-6abc-5542c1ce9b9f', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'Calls', 'module', 90, 0),
('4fe1da95-b8f5-7f19-3d5b-5542c1f69ea2', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'Calls', 'module', 90, 0),
('505ed258-f4e4-35b9-9990-5542c1862be2', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('52055ac3-f033-ff86-027a-55434890f87c', '2015-05-01 09:33:03', '2015-05-01 09:33:03', '1', '1', 'view', 'liuch_fangkuang_liucheng', 'module', 90, 0),
('529effae-c348-0138-0c80-55434825a2b0', '2015-05-01 09:33:03', '2015-05-01 09:33:03', '1', '1', 'list', 'liuch_fangkuang_liucheng', 'module', 90, 0),
('534e6377-4908-1cba-4d35-5543487fc618', '2015-05-01 09:33:03', '2015-05-01 09:33:03', '1', '1', 'edit', 'liuch_fangkuang_liucheng', 'module', 90, 0),
('53bef55c-5cd7-aa91-d7e0-5543482af0ac', '2015-05-01 09:33:03', '2015-05-01 09:33:03', '1', '1', 'delete', 'liuch_fangkuang_liucheng', 'module', 90, 0),
('5436c87e-16e8-e988-948e-554348798940', '2015-05-01 09:33:03', '2015-05-01 09:33:03', '1', '1', 'import', 'liuch_fangkuang_liucheng', 'module', 90, 0),
('54bd3342-f5ff-690f-60ad-554348e3e639', '2015-05-01 09:33:03', '2015-05-01 09:33:03', '1', '1', 'export', 'liuch_fangkuang_liucheng', 'module', 90, 0),
('55324745-30be-3be0-b4e5-554348a83aa7', '2015-05-01 09:33:03', '2015-05-01 09:33:03', '1', '1', 'massupdate', 'liuch_fangkuang_liucheng', 'module', 90, 0),
('5678b2ff-d364-6fc4-65d0-5542f83fdc11', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'access', 'yuang_waibu_qudao_info', 'module', 89, 0),
('572a53a6-6c0e-d366-e2cf-5542f8c33988', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'view', 'yuang_waibu_qudao_info', 'module', 90, 0),
('57a85cf0-202d-d4e6-5463-5542f856a104', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'list', 'yuang_waibu_qudao_info', 'module', 90, 0),
('580f041d-02c3-f277-2311-5542c1ac3cec', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'Notes', 'module', 89, 0),
('5828a6cc-eb40-ca8f-48cb-5542f85ea803', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'edit', 'yuang_waibu_qudao_info', 'module', 90, 0),
('589db8c3-8fdf-3bb6-6867-5542f8aeba0a', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'delete', 'yuang_waibu_qudao_info', 'module', 90, 0),
('59213ffe-5078-ae9e-43d9-5542f8e9fc48', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'import', 'yuang_waibu_qudao_info', 'module', 90, 0),
('59fe3a3a-1a47-4572-96a7-5542f87c94c7', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'export', 'yuang_waibu_qudao_info', 'module', 90, 0),
('5aa0a1ff-653b-df8e-a9eb-5542f81a17f4', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'massupdate', 'yuang_waibu_qudao_info', 'module', 90, 0),
('5ed78c06-3282-9750-2233-5542c1869f00', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'Bugs', 'module', 89, 0),
('5f619f99-ea89-c0a8-8e4f-5542c137db04', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'Bugs', 'module', 90, 0),
('5fe7c272-1df8-ab3e-212e-5542c19e138a', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'Bugs', 'module', 90, 0),
('6067f99c-96f2-c7e1-ebc4-5542c177e5c1', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('60e447cd-9b06-74b6-51ba-5542c19bb9a9', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('610e0e0c-f64f-a9b3-253f-5542c148b7b9', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'Contacts', 'module', 89, 0),
('615cf298-810a-c29f-3f37-5542c193e49a', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'Bugs', 'module', 90, 0),
('61cb5a5f-ff47-391b-75fd-5542c11aa79d', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'Bugs', 'module', 90, 0),
('623510dd-1039-c1a8-855a-5542c1772e0f', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('62780844-ee5b-f492-abc5-5542c1234f71', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'Notes', 'module', 90, 0),
('641f4463-11d3-6995-4f99-5543015965a7', '2015-05-01 04:32:53', '2015-05-01 04:32:53', '1', '1', 'access', 'daik_jinrong_jigou_info', 'module', 89, 0),
('64b44864-5151-8c03-1b3c-5542c1d9a865', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('64f163ff-cdd7-154e-0e87-55430193c99b', '2015-05-01 04:32:53', '2015-05-01 04:32:53', '1', '1', 'view', 'daik_jinrong_jigou_info', 'module', 90, 0),
('6525ad18-1e0c-3ebc-b349-5542c10b6919', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('6590d427-7d84-7634-45a5-5542c130466f', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('65a6b430-52f8-7716-60e7-55430161b135', '2015-05-01 04:32:53', '2015-05-01 04:32:53', '1', '1', 'list', 'daik_jinrong_jigou_info', 'module', 90, 0),
('65f926c2-25b9-f48b-957d-5542c1325843', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('66529e3c-32d5-0d1e-0ed0-55430147a50c', '2015-05-01 04:32:53', '2015-05-01 04:32:53', '1', '1', 'edit', 'daik_jinrong_jigou_info', 'module', 90, 0),
('6660432b-8c3b-bfcd-641f-5542c17eb5d1', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('66d8c82c-68c8-d560-c365-5542c113c7cb', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('67085002-3c46-6c12-dffb-5543017218d0', '2015-05-01 04:32:53', '2015-05-01 04:32:53', '1', '1', 'delete', 'daik_jinrong_jigou_info', 'module', 90, 0),
('673fd4c5-a5b0-dcd9-8f5f-5542c1aadd89', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('67a7bbe4-9d7c-74e2-9c98-5542c16a6e53', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('67a85149-65df-8731-8aa9-554301818060', '2015-05-01 04:32:53', '2015-05-01 04:32:53', '1', '1', 'import', 'daik_jinrong_jigou_info', 'module', 90, 0),
('685b4cfa-9428-1624-efa4-5543019cb099', '2015-05-01 04:32:53', '2015-05-01 04:32:53', '1', '1', 'export', 'daik_jinrong_jigou_info', 'module', 90, 0),
('6903ee5d-cff7-a1bd-ded3-5543017375ca', '2015-05-01 04:32:53', '2015-05-01 04:32:53', '1', '1', 'massupdate', 'daik_jinrong_jigou_info', 'module', 90, 0),
('691802f0-1da7-9b32-4867-5542c11879e1', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'Contacts', 'module', 90, 0),
('6c3a0d13-9ceb-a3c4-e1d8-5542c13b18f2', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'Notes', 'module', 90, 0),
('6fb80aca-32f4-6c78-b121-5542c1e35b8c', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'Contacts', 'module', 90, 0),
('732b09f8-822a-7975-383e-5542c1424440', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'Notes', 'module', 90, 0),
('74f50c50-e4b8-275a-28d7-554301485ad1', '2015-05-01 04:32:53', '2015-05-01 04:32:53', '1', '1', 'access', 'daik_jiekuangren_info', 'module', 89, 0),
('7652087b-8f9d-6542-97a6-5542c138af54', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('79c104fe-e19f-b6ab-456d-5542c1ecda1a', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'Notes', 'module', 90, 0),
('7f1e034a-4986-6fc9-d55e-5542c1bac198', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('7f500bda-bc5f-7c3b-9142-5542c18013ed', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'Project', 'module', 90, 0),
('802205a0-2048-e150-a7f4-5542c17113c9', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'Notes', 'module', 90, 0),
('869e0f3d-ae62-7237-23d2-5542c16350d5', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'Contacts', 'module', 90, 0),
('87a607a8-134f-f513-723c-5542c1100bcb', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'Notes', 'module', 90, 0),
('8be843c5-6ad6-165d-e4fa-5542d0161021', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'access', 'asol_Process', 'module', 89, 0),
('8bf2c511-8f10-dd6c-3f5e-5542f80ea7ac', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'access', 'yuang_yuangong_guanli', 'module', 89, 0),
('8c884a03-ccc8-5116-d786-5542f818ae2b', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'view', 'yuang_yuangong_guanli', 'module', 90, 0),
('8ca50dfc-db22-1a07-4e25-5542d00ba33c', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'view', 'asol_Process', 'module', 90, 0),
('8d2770f0-d5f2-c25b-7b42-5542d0bab8d3', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'list', 'asol_Process', 'module', 90, 0),
('8d4062d6-7d85-433f-a8f6-5542f85cb9a2', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'list', 'yuang_yuangong_guanli', 'module', 90, 0),
('8d470e18-caa8-0db0-47ba-5542c18dead8', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'Contacts', 'module', 90, 0),
('8da0c060-eb08-081e-6112-5542d0043f6d', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'edit', 'asol_Process', 'module', 90, 0),
('8dcc1b38-ac06-57c3-2801-5542f8528959', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'edit', 'yuang_yuangong_guanli', 'module', 90, 0),
('8e0f3efd-9866-5586-cb88-5542d07dda6b', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'delete', 'asol_Process', 'module', 90, 0),
('8e88bdd2-cbcd-732c-f45f-5542d0151d41', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'import', 'asol_Process', 'module', 90, 0),
('8f0927c0-12bb-9c82-b284-5542d06a7b47', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'export', 'asol_Process', 'module', 90, 0),
('8f4d0f7a-511d-239e-22f5-5542c112a228', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('8f936834-1c23-76c5-9334-5542d0ff1499', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'massupdate', 'asol_Process', 'module', 90, 0),
('90be1d3e-4a14-192a-4f1c-5542c194c3a9', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'Emails', 'module', 89, 0),
('916f8ddf-aee3-efb6-ccf4-5542c1d9cfc4', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'Emails', 'module', 90, 0),
('91d655e8-a837-0426-fee3-5542f80d0ea6', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'delete', 'yuang_yuangong_guanli', 'module', 90, 0),
('92027580-ee6b-384d-0028-5542c1084417', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'Emails', 'module', 90, 0),
('9256c91b-66b2-15b1-e467-5542d095770d', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'access', 'asol_Events', 'module', 89, 0),
('925ec5a0-a034-8a44-92f1-5542f84517ba', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'import', 'yuang_yuangong_guanli', 'module', 90, 0),
('927ff05d-e5d5-6627-9a59-5542c10a0064', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'Emails', 'module', 90, 0),
('92d6552d-49b4-f29b-2ade-5542d0878c5f', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'view', 'asol_Events', 'module', 90, 0),
('92fad443-d06b-b561-307d-5542c186a82a', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'Emails', 'module', 90, 0),
('931f1c8e-e1b0-f255-c565-5542f8c5e037', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'export', 'yuang_yuangong_guanli', 'module', 90, 0),
('9341acfe-dbc8-1b7b-0c28-5542c11548d6', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('934a0ecf-a762-9526-ebc0-5542d01fea0a', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'list', 'asol_Events', 'module', 90, 0),
('93916a95-4a6b-3c66-f4a2-5542c1eea67d', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'Emails', 'module', 90, 0),
('93ab4713-73e5-16d7-cbb2-5542f81c4f5e', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'massupdate', 'yuang_yuangong_guanli', 'module', 90, 0),
('93d135e4-21cd-be9f-f896-5542d09f0362', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'edit', 'asol_Events', 'module', 90, 0),
('93d41018-91c3-f49f-dc6f-5542c1a1235a', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('93e10878-1657-64fd-f05e-5542c1bcd1ec', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('940d13b6-5e65-a668-1ba8-5542c1bc8978', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'Emails', 'module', 90, 0),
('944700f2-875f-c196-254b-5542c1bdef15', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('94575178-12d3-8f5e-fc92-5542d09e5aa1', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'delete', 'asol_Events', 'module', 90, 0),
('949402bf-db48-a54f-2bb2-5542c1f07409', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('94b3dae9-2331-899b-dfec-5542c1dabd33', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('94d97434-d25e-feff-f786-5542d010851f', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'import', 'asol_Events', 'module', 90, 0),
('953e8cd0-90a2-a89b-d967-5542c12d1e74', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('9574c72b-0acf-da22-3096-5542d053005e', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'export', 'asol_Events', 'module', 90, 0),
('95b777cd-3f4f-80bc-64a9-5542c115491a', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('95f00338-4c2a-765c-5e1e-5542d0bdc670', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'massupdate', 'asol_Events', 'module', 90, 0),
('963ef876-c576-5c17-3a6b-5542c18422ea', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('96b90084-dbaf-446c-e135-5542c1d3fc2a', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('986a531e-ad3b-d3c9-0ab1-5542d0279012', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'access', 'asol_Activity', 'module', 89, 0),
('98e6be09-2b15-581e-2ae5-5542d056b47c', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'view', 'asol_Activity', 'module', 90, 0),
('995a6c5f-10ec-18ce-5f19-5542d02a68c6', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'list', 'asol_Activity', 'module', 90, 0),
('99d7d591-d444-8d81-7069-5542d069f87b', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'edit', 'asol_Activity', 'module', 90, 0),
('9a5f699c-2ec5-8d3b-9ee9-5542d02f25d4', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'delete', 'asol_Activity', 'module', 90, 0),
('9a7ac59b-3d2c-1139-3883-5542c1d009a7', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'Documents', 'module', 89, 0),
('9ae5c656-6f08-53b4-084d-5542d07c29d8', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'import', 'asol_Activity', 'module', 90, 0),
('9aecadf6-6a84-8a63-5e07-5542c15d6817', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'Documents', 'module', 90, 0),
('9b6a18da-3ca1-fac4-c998-5542d0e7b30a', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'export', 'asol_Activity', 'module', 90, 0),
('9beffb0d-de39-c1d4-e3de-5542d03243f2', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'massupdate', 'asol_Activity', 'module', 90, 0),
('9e30884e-da68-2216-297b-5542c1220faa', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'Documents', 'module', 90, 0),
('9e9d1760-b8fc-83c8-fdc2-5542c17217ff', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'Documents', 'module', 90, 0),
('9ea3c7f9-766c-0e56-df02-5542d0a1696a', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'access', 'asol_Task', 'module', 89, 0),
('9f05de10-bc71-bd6c-114e-5542c1b3cfbe', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'Documents', 'module', 90, 0),
('9f538666-eeec-926d-20bc-5542d034c3ba', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'view', 'asol_Task', 'module', 90, 0),
('9f6cfe56-0192-ff3b-3aff-5542c167f716', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'Documents', 'module', 90, 0),
('9fd1a211-0c88-12d7-1b16-5542d00be58e', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'list', 'asol_Task', 'module', 90, 0),
('9fd399ce-ade9-bab9-1e14-5542c1f081fe', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'Documents', 'module', 90, 0),
('a03b0382-d31f-402e-3f34-5542c127b5cf', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('a051fa16-f740-9d9e-61b2-5542d06cf744', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'edit', 'asol_Task', 'module', 90, 0),
('a0c775d0-9303-3e08-ff45-5542d0e7818c', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'delete', 'asol_Task', 'module', 90, 0),
('a139ff4c-42bf-f2ef-66f5-5542d0884281', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'import', 'asol_Task', 'module', 90, 0),
('a1d9cd00-6cc5-ecee-ff87-5542d0ce18c6', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'export', 'asol_Task', 'module', 90, 0),
('a26ed239-c5f7-1057-4cc6-5542d0c83495', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'massupdate', 'asol_Task', 'module', 90, 0),
('a59828b3-a093-c58f-d59b-5542c1c3d82b', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'Users', 'module', 89, 0),
('a619333f-9da6-8f8d-70bb-5542c10e5b8f', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'Users', 'module', 90, 0),
('a68e506c-0a5e-7d4c-bcca-5542f808795d', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'access', 'yuang_bumen_info', 'module', 89, 0),
('a691e242-d124-4b72-48c8-5542c16ad9d5', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'Users', 'module', 90, 0),
('a699bf36-caea-8fd7-1924-5542d0074db4', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'access', 'asol_ProcessInstances', 'module', 89, 0),
('a7082ce0-55f0-a423-dcda-5542c1211947', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'Users', 'module', 90, 0),
('a72a4b2f-a657-798b-ae37-5542d0af3b9a', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'view', 'asol_ProcessInstances', 'module', 90, 0),
('a77e75d8-6935-2951-f935-5542c1cf159d', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'Users', 'module', 90, 0),
('a7b48017-f5be-5d18-5262-5542d05b22c9', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'list', 'asol_ProcessInstances', 'module', 90, 0),
('a7f97a26-902b-df2e-4152-5542c1ea605d', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('a7fe9100-a4cf-3d63-da8d-5542c1ab323b', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'Users', 'module', 90, 0),
('a83ed388-7e2d-9a81-ff81-5542d0ccc791', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'edit', 'asol_ProcessInstances', 'module', 90, 0),
('a87c159e-2fc7-d64c-7dc8-5542c1fb1684', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('a88e8e1b-bad6-5e13-e766-5542c17cad7f', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'Users', 'module', 90, 0),
('a8ba415e-eac3-bea9-4762-5542d001e1cf', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'delete', 'asol_ProcessInstances', 'module', 90, 0),
('a8f761eb-74fe-487e-131f-5542c1f2e6dc', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('a90e8436-fcc1-fdfd-b5ab-5542c18f7815', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('a92f2061-b991-f492-1d6d-5542d03808d8', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'import', 'asol_ProcessInstances', 'module', 90, 0),
('a9803898-c7e0-9a17-ebfb-5542c1156b0f', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('a9c016f8-981c-1db3-b15a-5542d095c557', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'export', 'asol_ProcessInstances', 'module', 90, 0),
('a9f8466f-be56-569b-1845-5542c113e819', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('aa4c5647-dc40-c53d-dba7-5542d017b384', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'massupdate', 'asol_ProcessInstances', 'module', 90, 0),
('aa6ba14f-d44a-df8e-5597-5542c1858eb4', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('aad53ec5-77ed-07fa-11d0-5542c1895617', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('ab307c45-cde7-f073-020d-5542f8b47093', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'view', 'yuang_bumen_info', 'module', 90, 0),
('ab470e6a-45fe-82a2-b73b-5542c1709013', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('abb6ccc8-d9af-a301-2391-5542f80a18d9', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'list', 'yuang_bumen_info', 'module', 90, 0),
('ac51d2a5-1806-6d67-897e-5542f886df04', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'edit', 'yuang_bumen_info', 'module', 90, 0),
('ac919274-8622-f482-363d-5542d0a968ec', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'access', 'asol_WorkingNodes', 'module', 89, 0),
('ad0d7f8d-67f9-270c-6b96-5542f8f8097a', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'delete', 'yuang_bumen_info', 'module', 90, 0),
('ad103655-142b-9b4e-96cd-5542d0f72744', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'view', 'asol_WorkingNodes', 'module', 90, 0),
('ad83307e-3e5e-7a11-2e67-5542f8876ca9', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'import', 'yuang_bumen_info', 'module', 90, 0),
('ad8596d1-e425-8f17-30d4-5542d03d84ed', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'list', 'asol_WorkingNodes', 'module', 90, 0),
('adf5d459-3bb5-12b0-770a-5542f8708c29', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'export', 'yuang_bumen_info', 'module', 90, 0),
('ae0d4303-6b95-309a-a2fe-5542d0e72680', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'edit', 'asol_WorkingNodes', 'module', 90, 0),
('ae6b5076-6842-584e-ab80-5542f88d1bbd', '2015-05-01 03:51:47', '2015-05-01 03:51:47', '1', '1', 'massupdate', 'yuang_bumen_info', 'module', 90, 0),
('ae93a463-86c6-b336-ed31-5542d0cbf86f', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'delete', 'asol_WorkingNodes', 'module', 90, 0),
('af18af83-1227-c6e8-3946-5542d09a5d27', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'import', 'asol_WorkingNodes', 'module', 90, 0),
('af9fcb03-f98a-b3b3-2261-5542d00f15fd', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'export', 'asol_WorkingNodes', 'module', 90, 0),
('b037bebd-4e4e-5311-af73-5542d012f673', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'massupdate', 'asol_WorkingNodes', 'module', 90, 0),
('b25e2ea3-b839-e574-90d4-5542d0a4047d', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'access', 'asol_OnHold', 'module', 89, 0),
('b2eaa43b-5fbf-e3a8-1a80-5542d0970bf6', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'view', 'asol_OnHold', 'module', 90, 0),
('b36feaef-205f-5373-5ac0-5542d0e5d5a0', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'list', 'asol_OnHold', 'module', 90, 0),
('b4026ba5-e962-3bbc-d81e-5542d05bd26c', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'edit', 'asol_OnHold', 'module', 90, 0),
('b47b036c-06da-c4db-d17f-5542d01f5824', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'delete', 'asol_OnHold', 'module', 90, 0),
('b4efc461-f162-3b9a-8dfd-5542d0b48177', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'import', 'asol_OnHold', 'module', 90, 0),
('b5430fb1-0a7f-676e-145c-5542c1b648c7', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'Meetings', 'module', 89, 0),
('b5691b5d-48ca-6740-ad22-5542d0d95914', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'export', 'asol_OnHold', 'module', 90, 0),
('b5d97655-daed-f229-a370-5542d08dbb59', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'massupdate', 'asol_OnHold', 'module', 90, 0),
('b5e7df56-761c-133f-0fed-5542c1cda1e5', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'Meetings', 'module', 90, 0),
('b69cbabf-a0a8-da9b-9478-5542c14118b7', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'Meetings', 'module', 90, 0),
('b73a1de3-8d1f-50fa-b0eb-5542c1945e6f', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('b7c0448e-9dc2-fe44-a1cb-5542c1a1f982', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('b7da3bf9-5078-d816-d53b-5542d0e03977', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'access', 'asol_WorkFlowManagerCommon', 'module', 89, 0),
('b84fbfb8-1a98-da7b-a5ca-5542c1089988', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'Meetings', 'module', 90, 0),
('b857fb9b-d20b-5a13-d96b-5542d085b020', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'view', 'asol_WorkFlowManagerCommon', 'module', 90, 0),
('b8cc33d6-7b0d-ec05-1178-5542d07a81fe', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'list', 'asol_WorkFlowManagerCommon', 'module', 90, 0),
('b8da4cbd-b435-6181-b239-5542c15f75c1', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'Meetings', 'module', 90, 0),
('b93c154a-fdc4-07f2-fac7-5542d003d663', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'edit', 'asol_WorkFlowManagerCommon', 'module', 90, 0),
('b941d436-0889-98e4-8577-5542c19f0b5f', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('b9cb4ed8-db61-fa1d-7f29-5542d0f3b791', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'delete', 'asol_WorkFlowManagerCommon', 'module', 90, 0),
('ba5712ff-177e-fbdf-8a56-5542d0d32227', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'import', 'asol_WorkFlowManagerCommon', 'module', 90, 0),
('bace133b-8a30-999f-25a9-5542d02e3a07', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'export', 'asol_WorkFlowManagerCommon', 'module', 90, 0),
('bb44bd0b-d2e8-c2b6-6c56-5542d04c5cda', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'massupdate', 'asol_WorkFlowManagerCommon', 'module', 90, 0),
('bd9c0038-9c07-1463-7b90-5543016b2d4f', '2015-05-01 04:32:53', '2015-05-01 04:32:53', '1', '1', 'view', 'daik_jiekuangren_info', 'module', 90, 0),
('c718049d-ca6d-2014-630a-5543012ad47f', '2015-05-01 04:32:53', '2015-05-01 04:32:53', '1', '1', 'list', 'daik_jiekuangren_info', 'module', 90, 0),
('cb64d13b-641f-1223-3f17-5542c1913255', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'Prospects', 'module', 89, 0),
('cbe81719-9f4e-cc22-c77c-5542c11c41e4', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'Prospects', 'module', 90, 0),
('cc6c3d00-e73a-4321-4db3-5542c1aabefd', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'Prospects', 'module', 90, 0),
('cce46784-1b5e-4dfe-ef35-5542c15bcfd9', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('cd4e8c6f-c076-a998-db0a-5542c10ea8fd', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('cdb82f0e-ff77-5375-d315-5542c1bf817e', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'Prospects', 'module', 90, 0),
('ce30517c-90ed-f8db-d45f-5542c1e3958b', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'Prospects', 'module', 90, 0),
('cea866fb-960a-7f56-657e-5542c1230b96', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('cf520bd7-db89-cc18-68e6-5543011c3090', '2015-05-01 04:32:53', '2015-05-01 04:32:53', '1', '1', 'edit', 'daik_jiekuangren_info', 'module', 90, 0),
('d6813fed-6ceb-ecc8-372d-5542c13b52bd', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'Leads', 'module', 89, 0),
('d707a835-d11f-1937-3e60-5542c1643ac3', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'Leads', 'module', 90, 0),
('d77ce947-d4e7-1232-f311-5542c1cea70f', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'Leads', 'module', 90, 0),
('d7cd07a3-288a-0b3e-2e47-554301e7ccec', '2015-05-01 04:32:53', '2015-05-01 04:32:53', '1', '1', 'delete', 'daik_jiekuangren_info', 'module', 90, 0),
('d815ea5d-94e9-9964-8067-5542c14a9606', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'Leads', 'module', 90, 0),
('d89bfa8c-5078-59ce-1b8d-5542c1f75c64', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'Leads', 'module', 90, 0),
('d912adf6-a620-557b-21ea-5542c1d27d7a', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'Leads', 'module', 90, 0),
('d981f750-6cb3-5110-2759-5542c153dd10', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'Leads', 'module', 90, 0),
('d9ed631b-64eb-874f-ce0b-5542c12c6586', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('da354f21-58d1-6552-a355-5542c159b549', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('dac3545b-c470-c1ce-2187-5542c1c82cea', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('db526e4f-2671-cc42-f5c5-5542c1f9b913', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('dbe2cec5-c268-b5b5-a4b6-5542c17e5239', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('dc62ee65-4fb4-009e-96b1-5542c1c860f4', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('dce2abc2-5685-5e18-3bb9-5542c11ca072', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('dd6d7f88-0c3d-0257-3bcc-5542c1e2e6d7', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('ddfbdf17-f978-7828-d14d-5542c1a3f816', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('de797d90-506f-d73b-c1df-5542c153a0ac', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'Tasks', 'module', 89, 0),
('df0c6d7d-d45f-1019-7c36-5542c181b0f9', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'view', 'Tasks', 'module', 90, 0),
('df8b1d1c-4ed9-2fbb-9e26-5542c1674ac2', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'list', 'Tasks', 'module', 90, 0),
('dfe5095e-12da-1bc7-f85f-55430147a00a', '2015-05-01 04:32:53', '2015-05-01 04:32:53', '1', '1', 'import', 'daik_jiekuangren_info', 'module', 90, 0),
('e006326c-55ef-7d1a-6072-5542c1b79527', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('e08a877d-f711-8a33-b1dd-5542c1d0568c', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('e110b846-b377-344b-8b04-5542c139fcba', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'import', 'Tasks', 'module', 90, 0),
('e189301f-e715-7ba4-2bf5-5542c1a3b3ed', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'export', 'Tasks', 'module', 90, 0),
('e235e907-d052-2333-4978-5542c1e3d788', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('e7ee0ed2-e67b-08ad-7155-554301d26f84', '2015-05-01 04:32:53', '2015-05-01 04:32:53', '1', '1', 'export', 'daik_jiekuangren_info', 'module', 90, 0),
('f00208fb-f375-4399-8855-5543010b3a7c', '2015-05-01 04:32:53', '2015-05-01 04:32:53', '1', '1', 'massupdate', 'daik_jiekuangren_info', 'module', 90, 0),
('f4107d98-971b-a31e-93df-5542c16f4c46', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '', 'access', 'Project', 'module', 89, 0);

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

--
-- 转存表中的数据 `asol_activity`
--

INSERT INTO `asol_activity` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `conditions`, `delay`, `type`) VALUES
('2bc2fb35-99cb-6509-343e-5544c32f4d10', 'Activity_ 1', '2015-05-02 12:29:14', '2015-05-02 12:29:22', '1', '1', NULL, 1, NULL, NULL, 'minutes - 0', NULL);

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
('1', 'admin', '2010-01-01 00:00:00', '2015-05-03 03:57:11', '1', '1', 0, '1|15|landscape|1|120|7|localhost');

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
('1058a449-4347-bce2-5bd2-5544c3dc0b3f', 'Event_ 3', '2015-05-02 12:29:45', '2015-05-02 15:40:49', '1', '1', NULL, 1, NULL, 'start', 'logic_hook', 'on_modify', NULL, NULL, '', ''),
('23b1b4b1-10d7-b32d-a299-5544f026b471', 'Event_ 1', '2015-05-02 15:41:35', '2015-05-02 15:53:09', '1', '1', NULL, 0, '1', 'start', 'logic_hook', 'on_modify', 'danju_zhuangtai${comma}LBL_DANJU_ZHUANGTAI${comma}单据状态${dp}new\\_bean${dp}true${dp}equals${dp}dai_fengkong_shenhe${dp}${dp}enum${dp}${dp}false${dp}11${dp}options${dp}fzglsys_daikuang_shenqing_status_list${dp}0:${dp}0${comma}', NULL, NULL, NULL),
('7d50351b-bb7c-0bdf-9984-5544c2b45df4', 'Event_ 2', '2015-05-02 12:28:05', '2015-05-02 12:29:07', '1', '1', NULL, 1, '', 'start', 'scheduled', NULL, NULL, NULL, 'sequential', NULL),
('e192475b-f4eb-bd28-38be-5544c2edc223', 'Event_ 1', '2015-05-02 12:25:44', '2015-05-02 15:40:49', '1', '1', NULL, 1, '', 'start', 'logic_hook', 'on_create', NULL, NULL, NULL, NULL),
('ec170d7d-1083-c7f6-ea4b-5544f3476967', 'Event_ 2', '2015-05-02 15:55:50', '2015-05-02 15:55:50', '1', '1', NULL, 0, NULL, '', 'scheduled', '', NULL, NULL, 'sequential', '');

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

--
-- 转存表中的数据 `asol_eventssol_activity_c`
--

INSERT INTO `asol_eventssol_activity_c` (`id`, `date_modified`, `deleted`, `asol_event87f4_events_ida`, `asol_event8042ctivity_idb`) VALUES
('31278102-5bd4-44b3-9732-5544c319c91b', '2015-05-02 12:29:22', 1, 'e192475b-f4eb-bd28-38be-5544c2edc223', '2bc2fb35-99cb-6509-343e-5544c32f4d10');

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
('9b38d0e4-8884-7d21-7754-5544f2055e10', '23b1b4b1-10d7-b32d-a299-5544f026b471', '2015-05-02 15:53:09', '1', 'assigned_user_id', 'relate', NULL, '1', NULL, NULL);

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

--
-- 转存表中的数据 `asol_process`
--

INSERT INTO `asol_process` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `status`, `trigger_module`, `alternative_database`, `event_counter`, `activity_counter`, `task_counter`, `wfe_operation_counter`) VALUES
('96c98c77-e4e3-2d73-b958-5544c202cfa2', '放款流程', '2015-05-02 12:25:02', '2015-05-02 15:40:41', '1', '1', NULL, 1, '', 'inactive', 'liuch_fzgl_fangkuang_liucheng', '-1', 3, 1, 0, 7),
('adf701e6-626e-63e1-56cc-5544f05ea200', '放款流程', '2015-05-02 15:41:11', '2015-05-02 15:55:50', '1', '1', NULL, 0, '', 'inactive', 'liuch_fangkuang_liucheng', '-1', 2, 0, 0, 3);

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
('36cea734-6d3c-d4c0-e8ee-5544c3ef2f08', '2015-05-02 12:29:07', 1, '96c98c77-e4e3-2d73-b958-5544c202cfa2', '7d50351b-bb7c-0bdf-9984-5544c2b45df4');

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
('119c0327-eccc-5409-96aa-5544c343daf3', '2015-05-02 15:40:41', 1, '96c98c77-e4e3-2d73-b958-5544c202cfa2', '1058a449-4347-bce2-5bd2-5544c3dc0b3f'),
('25239f6c-c4f3-e787-a658-5544f0608963', '2015-05-02 15:41:35', 0, 'adf701e6-626e-63e1-56cc-5544f05ea200', '23b1b4b1-10d7-b32d-a299-5544f026b471'),
('7eab3174-6520-0322-6e04-5544c2f137a3', '2015-05-02 12:28:50', 1, '96c98c77-e4e3-2d73-b958-5544c202cfa2', '7d50351b-bb7c-0bdf-9984-5544c2b45df4'),
('e2f83008-fb01-1b6f-7e33-5544c2354b03', '2015-05-02 15:40:41', 1, '96c98c77-e4e3-2d73-b958-5544c202cfa2', 'e192475b-f4eb-bd28-38be-5544c2edc223'),
('ed96415f-28f5-9162-9f15-5544f3d35b30', '2015-05-02 15:55:50', 0, 'adf701e6-626e-63e1-56cc-5544f05ea200', 'ec170d7d-1083-c7f6-ea4b-5544f3476967');

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
('cleanCache', 'cleanCache', '2015-05-01 01:01:39', '2015-05-02 12:25:02', '1', '1', NULL, 0, '', 'false'),
('releaseVersion', 'releaseVersion', '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', NULL, 0, NULL, '5.1');

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
('notify', 'fromname', 'fzglsys_v3'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', '6.5.20'),
('MySettings', 'tab', 'YTo4OntpOjA7czo0OiJIb21lIjtpOjE7czoxMjoiYXNvbF9Qcm9jZXNzIjtpOjI7czoxNjoieXVhbmdfYnVtZW5faW5mbyI7aTozO3M6MjA6Inl1YW5nX2ZlbmdvbmdzaV9pbmZvIjtpOjQ7czoyMjoieXVhbmdfd2FpYnVfcXVkYW9faW5mbyI7aTo1O3M6MjE6ImRhaWtfamlla3VhbmdyZW5faW5mbyI7aTo2O3M6MjM6ImRhaWtfamlucm9uZ19qaWdvdV9pbmZvIjtpOjc7czoyNDoibGl1Y2hfZmFuZ2t1YW5nX2xpdWNoZW5nIjt9'),
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
('notify', 'allow_default_outbound', '0'),
('proxy', 'on', '0'),
('proxy', 'host', ''),
('proxy', 'port', ''),
('proxy', 'auth', '0'),
('proxy', 'username', ''),
('proxy', 'password', ''),
('MySettings', 'disable_useredit', 'yes'),
('MySettings', 'hide_subpanels', 'YToxMzp7czo5OiJwcm9zcGVjdHMiO3M6OToicHJvc3BlY3RzIjtzOjU6ImxlYWRzIjtzOjU6ImxlYWRzIjtzOjU6Im5vdGVzIjtzOjU6Im5vdGVzIjtzOjExOiJjYW1wYWlnbmxvZyI7czoxMToiY2FtcGFpZ25sb2ciO3M6MTM6InByb3NwZWN0bGlzdHMiO3M6MTM6InByb3NwZWN0bGlzdHMiO3M6OToiZG9jdW1lbnRzIjtzOjk6ImRvY3VtZW50cyI7czo4OiJhY2NvdW50cyI7czo4OiJhY2NvdW50cyI7czo4OiJtZWV0aW5ncyI7czo4OiJtZWV0aW5ncyI7czo3OiJwcm9qZWN0IjtzOjc6InByb2plY3QiO3M6NToiY2FzZXMiO3M6NToiY2FzZXMiO3M6NDoiYnVncyI7czo0OiJidWdzIjtzOjEzOiJvcHBvcnR1bml0aWVzIjtzOjEzOiJvcHBvcnR1bml0aWVzIjtzOjg6ImNvbnRhY3RzIjtzOjg6ImNvbnRhY3RzIjt9');

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
-- 表的结构 `daik_jiekuangren_info`
--

DROP TABLE IF EXISTS `daik_jiekuangren_info`;
CREATE TABLE IF NOT EXISTS `daik_jiekuangren_info` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `danang_bianhao` varchar(255) DEFAULT NULL,
  `zhengjian_leixin` varchar(100) DEFAULT 'shenfenzheng',
  `zhengjian_haoma` varchar(255) DEFAULT NULL,
  `hunyin_zhuangkuang` varchar(255) DEFAULT NULL,
  `qita_lianxiren_xinming` varchar(255) DEFAULT NULL,
  `qita_lianxiren_dianhua` varchar(255) DEFAULT NULL,
  `qita_lianren_guanxi` varchar(255) DEFAULT NULL,
  `jiekuanren_peiou_xinming` varchar(255) DEFAULT NULL,
  `peiou_zhengjian_leixin` varchar(100) DEFAULT 'shenfenzheng',
  `peiou_zhengjian_haoma` varchar(255) DEFAULT NULL,
  `peiou_gongzuo_danwei` varchar(255) DEFAULT NULL,
  `peiou_zhiwu` varchar(255) DEFAULT NULL,
  `jiating_zhizhu` varchar(255) DEFAULT NULL,
  `lianxi_dianhua` varchar(255) DEFAULT NULL,
  `gongzuo_danwei` varchar(255) DEFAULT NULL,
  `zhiwu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `daik_jiekuangren_info`
--

INSERT INTO `daik_jiekuangren_info` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `danang_bianhao`, `zhengjian_leixin`, `zhengjian_haoma`, `hunyin_zhuangkuang`, `qita_lianxiren_xinming`, `qita_lianxiren_dianhua`, `qita_lianren_guanxi`, `jiekuanren_peiou_xinming`, `peiou_zhengjian_leixin`, `peiou_zhengjian_haoma`, `peiou_gongzuo_danwei`, `peiou_zhiwu`, `jiating_zhizhu`, `lianxi_dianhua`, `gongzuo_danwei`, `zhiwu`) VALUES
('7c400e83-2ca0-0b69-5b33-5544482d4dd2', '李本人', '2015-05-02 03:44:45', '2015-05-02 03:44:45', '1', '1', '', 0, NULL, '201505000002', 'huzhao', '65757', '', '456757', '78678', '567', '', 'shenfenzheng', '', '', '', '346546', '65876868', '', '3423423'),
('eae96076-9bae-c708-abcd-554447a2df6a', '刘某人', '2015-05-02 03:43:57', '2015-05-02 03:43:57', '1', '1', '', 0, NULL, '201505000001', 'shenfenzheng', '234234234', '', '234', '234234', '234234', '', 'shenfenzheng', '', '', '', '234234234', '456456456', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `daik_jiekuangren_info_audit`
--

DROP TABLE IF EXISTS `daik_jiekuangren_info_audit`;
CREATE TABLE IF NOT EXISTS `daik_jiekuangren_info_audit` (
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
-- 表的结构 `daik_jiekuangren_info_cstm`
--

DROP TABLE IF EXISTS `daik_jiekuangren_info_cstm`;
CREATE TABLE IF NOT EXISTS `daik_jiekuangren_info_cstm` (
  `id_c` char(36) NOT NULL,
  `user_id_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `daik_jiekuangren_info_cstm`
--

INSERT INTO `daik_jiekuangren_info_cstm` (`id_c`, `user_id_c`) VALUES
('7c400e83-2ca0-0b69-5b33-5544482d4dd2', '1'),
('eae96076-9bae-c708-abcd-554447a2df6a', '1');

-- --------------------------------------------------------

--
-- 表的结构 `daik_jinrong_jigou_info`
--

DROP TABLE IF EXISTS `daik_jinrong_jigou_info`;
CREATE TABLE IF NOT EXISTS `daik_jinrong_jigou_info` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `jigou_leixin` varchar(100) DEFAULT 'shangye_yinhang',
  `jigou_bianma` varchar(255) DEFAULT NULL,
  `fenzhi_jigou` varchar(255) DEFAULT NULL,
  `fenzhi_jigou_bianma` varchar(255) DEFAULT NULL,
  `youbian` varchar(255) DEFAULT NULL,
  `dizhi` varchar(255) DEFAULT NULL,
  `lianxiren_xinming` varchar(255) DEFAULT NULL,
  `lianxiren_dianhua` varchar(255) DEFAULT NULL,
  `wangzhan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `daik_jinrong_jigou_info_audit`
--

DROP TABLE IF EXISTS `daik_jinrong_jigou_info_audit`;
CREATE TABLE IF NOT EXISTS `daik_jinrong_jigou_info_audit` (
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
('2fc085be-853e-b29e-35f1-55443469bbbc', '2015-05-02 02:21:37', '2015-05-02 02:21:37', NULL, '1', '1', 0, '2015-05-02 02:21:37', NULL, 'New account information', 'archived', 'sent', NULL, NULL, 'pick', NULL, 'User', NULL);

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
('582c95a1-a05a-8ede-4a8c-5544348e6118', '2fc085be-853e-b29e-35f1-55443469bbbc', 'from', '4fffd428-6b09-59bf-2e19-5544342fc312', 0);

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
('2fc085be-853e-b29e-35f1-55443469bbbc', '', '', '', '', '', '<div><table width="550"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : mengjun </p><p>Password : BsfB6n </p><br /><p>http://localhost/fzglsys</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>', NULL, NULL, 0);

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
('126fdab5-14b9-306b-3230-5542c36df014', 'jeff.cao.cn@gmail.com', 'JEFF.CAO.CN@GMAIL.COM', 0, 0, '2015-05-01 00:07:41', '2015-05-01 00:07:41', 0),
('4fffd428-6b09-59bf-2e19-5544342fc312', 'jeffcaocom@163.com', 'JEFFCAOCOM@163.COM', 0, 0, '2015-05-02 02:21:37', '2015-05-02 02:21:37', 0),
('78cc0d98-adc5-1e72-8c78-5544341c6a78', 'jeffcao7902@163.com', 'JEFFCAO7902@163.COM', 0, 0, '2015-05-02 02:21:37', '2015-05-02 02:21:37', 0);

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
('124336b0-71b7-7c8f-93ab-5542c308fa8a', '126fdab5-14b9-306b-3230-5542c36df014', '1', 'Users', 1, 0, '2015-05-01 00:07:41', '2015-05-01 00:07:41', 0),
('78b34dfe-6c0b-33e6-96e2-554434841699', '78cc0d98-adc5-1e72-8c78-5544341c6a78', '880d930e-94ac-ba6d-2144-554434911d8e', 'Users', 1, 0, '2015-05-02 02:21:37', '2015-05-02 02:21:37', 0);

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
('3f44b261-2282-e90b-6d8b-5542c28bc773', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', '\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.', '<div><table width="550"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL),
('419f8bd5-e60e-aa7d-c474-5542c2d5d57a', '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user''s account password.', 'Reset your account password', '\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid', '<div><table width="550"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL);

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
('daik_jiekuangren_infouser_id_c', 'user_id_c', 'LBL_XINDAI_GUWEN_USER_ID', '', '', 'daik_jiekuangren_info', 'id', 36, 0, NULL, '2015-05-02 03:33:24', 0, 0, 0, 0, 0, 'true', '', '', '', ''),
('daik_jiekuangren_infoxindai_guwen_c', 'xindai_guwen_c', 'LBL_XINDAI_GUWEN', '', '', 'daik_jiekuangren_info', 'relate', 255, 1, NULL, '2015-05-02 03:33:24', 0, 0, 0, 0, 1, 'true', '', 'Users', 'user_id_c', ''),
('liuch_fangkuang_liuchengdaik_jiekuangren_info_id_c', 'daik_jiekuangren_info_id_c', 'LBL_JIEKUANGREN_DAIK_JIEKUANGREN_INFO_ID', '', '', 'liuch_fangkuang_liucheng', 'id', 36, 0, NULL, '2015-05-03 06:31:53', 0, 0, 0, 0, 0, 'true', '', '', '', ''),
('liuch_fangkuang_liuchengjiekuangren_c', 'jiekuangren_c', 'LBL_JIEKUANGREN', NULL, NULL, 'liuch_fangkuang_liucheng', 'relate', 255, 1, NULL, '2015-05-03 06:40:01', 0, 0, 0, 0, 1, 'true', NULL, 'daik_jiekuangren_info', 'daik_jiekuangren_info_id_c', NULL),
('Usersbumen_c', 'bumen_c', 'LBL_BUMEN', '', '', 'Users', 'relate', 255, 0, NULL, '2015-05-01 11:54:24', 0, 0, 0, 0, 1, 'true', '', 'yuang_bumen_info', 'yuang_bumen_info_id_c', ''),
('Usersbutie_c', 'butie_c', 'LBL_BUTIE', '', '', 'Users', 'currency', 26, 0, '', '2015-05-01 11:52:13', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Userscurrency_id', 'currency_id', 'LBL_CURRENCY', '', '', 'Users', 'currency_id', 36, 0, NULL, '2015-05-01 11:52:13', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Usersfengongsi_c', 'fengongsi_c', 'LBL_FENGONGSI', '', '', 'Users', 'relate', 255, 0, NULL, '2015-05-01 11:54:48', 0, 0, 0, 0, 1, 'true', '', 'yuang_fengongsi_info', 'yuang_fengongsi_info_id_c', ''),
('Usersgangwei_leixin_c', 'gangwei_leixin_c', 'LBL_GANGWEI_LEIXIN', NULL, NULL, 'Users', 'enum', 100, 0, 'xindai_guwen', '2015-05-01 12:01:57', 0, 0, 0, 0, 1, 'true', 'fzglsys_zhiwu_type_list', NULL, NULL, NULL),
('Usersgonghao_c', 'gonghao_c', 'LBL_GONGHAO', '', '', 'Users', 'varchar', 255, 1, '', '2015-05-01 11:51:50', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Usersgongzi_c', 'gongzi_c', 'LBL_GONGZI', '', '', 'Users', 'currency', 26, 0, '', '2015-05-01 11:52:53', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Usersjixiao_c', 'jixiao_c', 'LBL_JIXIAO', '', '', 'Users', 'currency', 26, 0, '', '2015-05-01 11:52:34', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Usersshengfenzheng_hao_c', 'shengfenzheng_hao_c', 'LBL_SHENGFENZHENG_HAO', '', '', 'Users', 'varchar', 255, 0, '', '2015-05-01 11:53:44', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Usersxiebie_c', 'xiebie_c', 'LBL_XIEBIE', '', '', 'Users', 'enum', 100, 0, 'nan', '2015-05-01 11:55:15', 0, 0, 0, 0, 1, 'true', 'fzglsys_xinbie_type_list', '', '', ''),
('Usersyuang_bumen_info_id_c', 'yuang_bumen_info_id_c', 'LBL_BUMEN_YUANG_BUMEN_INFO_ID', '', '', 'Users', 'id', 36, 0, NULL, '2015-05-01 11:54:24', 0, 0, 0, 0, 0, 'true', '', '', '', ''),
('Usersyuang_fengongsi_info_id_c', 'yuang_fengongsi_info_id_c', 'LBL_FENGONGSI_YUANG_FENGONGSI_INFO_ID', '', '', 'Users', 'id', 36, 0, NULL, '2015-05-01 11:54:48', 0, 0, 0, 0, 0, 'true', '', '', '', ''),
('Userszaizhi_zhuangtai_c', 'zaizhi_zhuangtai_c', 'LBL_ZAIZHI_ZHUANGTAI', NULL, NULL, 'Users', 'enum', 100, 1, 'yi_lizhi', '2015-05-02 02:19:56', 0, 0, 0, 0, 1, 'true', 'fzglsys_yuangong_status_list', NULL, NULL, NULL),
('yuang_bumen_infofengongsi_c', 'fengongsi_c', 'LBL_FENGONGSI', '', '', 'yuang_bumen_info', 'relate', 255, 0, NULL, '2015-05-01 11:03:12', 0, 0, 0, 0, 1, 'true', '', 'yuang_fengongsi_info', 'yuang_fengongsi_info_id_c', ''),
('yuang_bumen_infoyuang_fengongsi_info_id_c', 'yuang_fengongsi_info_id_c', 'LBL_FENGONGSI_YUANG_FENGONGSI_INFO_ID', '', '', 'yuang_bumen_info', 'id', 36, 0, NULL, '2015-05-01 11:03:12', 0, 0, 0, 0, 0, 'true', '', '', '', '');

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
-- 表的结构 `liuch_fangkuang_liucheng`
--

DROP TABLE IF EXISTS `liuch_fangkuang_liucheng`;
CREATE TABLE IF NOT EXISTS `liuch_fangkuang_liucheng` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `zhidan_date` date DEFAULT NULL,
  `danju_zhuangtai` varchar(100) DEFAULT 'zhidanzhong',
  `shenqing_jine` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `huankuang_zhouqi` date DEFAULT NULL,
  `daikuang_leixin` varchar(100) DEFAULT 'diya',
  `yuqi_yongjin` decimal(26,6) DEFAULT NULL,
  `yuqi_yongjin_bili` float(18,8) DEFAULT NULL,
  `yuqi_shoukuang_type` varchar(100) DEFAULT 'xianjin',
  `fenkong_option` varchar(100) DEFAULT 'tongyi',
  `fenkong_beizhu` text,
  `fenkong_shengpi_date` date DEFAULT NULL,
  `bumen_shengpi_option` varchar(100) DEFAULT 'tongyi',
  `bumen_beizhu` text,
  `bumen_shengpi_date` date DEFAULT NULL,
  `chanpin_shengpi_option` varchar(100) DEFAULT 'tongyi',
  `yinhang_shengpi_date` date DEFAULT NULL,
  `fangkuang_date` date DEFAULT NULL,
  `fangkuang_jine` decimal(26,6) DEFAULT NULL,
  `daikuang_daoqiri` date DEFAULT NULL,
  `shiji_yongjin` decimal(26,6) DEFAULT NULL,
  `shiji_yongjin_bili` float(18,8) DEFAULT NULL,
  `chanpin_shoukuang_type` varchar(100) DEFAULT 'xianjin',
  `chanpin_beizhu` text,
  `chanpin_shengpi_date` date DEFAULT NULL,
  `kefu_ziliao_guidang` text,
  `kefu_beizhu` text,
  `kefu_chuli_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `liuch_fangkuang_liucheng`
--

INSERT INTO `liuch_fangkuang_liucheng` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `zhidan_date`, `danju_zhuangtai`, `shenqing_jine`, `currency_id`, `huankuang_zhouqi`, `daikuang_leixin`, `yuqi_yongjin`, `yuqi_yongjin_bili`, `yuqi_shoukuang_type`, `fenkong_option`, `fenkong_beizhu`, `fenkong_shengpi_date`, `bumen_shengpi_option`, `bumen_beizhu`, `bumen_shengpi_date`, `chanpin_shengpi_option`, `yinhang_shengpi_date`, `fangkuang_date`, `fangkuang_jine`, `daikuang_daoqiri`, `shiji_yongjin`, `shiji_yongjin_bili`, `chanpin_shoukuang_type`, `chanpin_beizhu`, `chanpin_shengpi_date`, `kefu_ziliao_guidang`, `kefu_beizhu`, `kefu_chuli_date`) VALUES
('31e24f7e-d659-cf91-9bfd-554601304ec3', '2015050004', '2015-05-03 11:06:33', '2015-05-03 11:06:33', '1', '1', '', 0, NULL, '2015-05-03', 'zhidanzhong', '456.000000', NULL, '2015-05-22', 'diya', '456456.000000', 6.00000000, 'xianjin', 'tongyi', '', '2015-05-03', 'tongyi', '', NULL, 'tongyi', NULL, NULL, NULL, NULL, NULL, NULL, 'xianjin', '', NULL, '', '', NULL),
('44566f11-a804-08f2-480c-5545ff09eb45', '2015050003', '2015-05-03 11:00:49', '2015-05-03 11:05:54', '1', '1', '', 1, NULL, '2015-05-03', 'zhidanzhong', '454.000000', NULL, '2015-05-21', 'diya', '454545.000000', 5.00000000, 'xianjin', 'tongyi', '', '2015-05-03', 'tongyi', '', NULL, 'tongyi', NULL, NULL, NULL, NULL, NULL, NULL, 'xianjin', '', NULL, '', '', NULL),
('4a388f74-b30f-ae43-ae29-554601805554', '2015050006', '2015-05-03 11:09:30', '2015-05-03 11:12:38', '1', '1', NULL, 0, '', '2015-05-03', 'zhidanzhong', '3243.000000', '', '2015-05-09', 'diya', '4.000000', 34.00000000, 'xianjin', 'tongyi', NULL, '2015-05-03', 'tongyi', NULL, NULL, 'tongyi', NULL, NULL, NULL, NULL, NULL, NULL, 'xianjin', NULL, NULL, NULL, NULL, NULL),
('b3aec49a-ab07-9ec4-a79e-5545c8a0f512', '2015050003', '2015-05-03 07:04:13', '2015-05-03 10:58:19', '1', '1', NULL, 0, '', '2015-05-03', 'zhidanzhong', '345345.000000', '', '2015-05-28', 'diya', '345345.000000', 34.00000000, 'xianjin', 'tongyi', NULL, '2015-05-03', 'tongyi', NULL, NULL, 'tongyi', NULL, NULL, NULL, NULL, NULL, NULL, 'xianjin', NULL, NULL, NULL, NULL, NULL),
('cb942cff-649e-73c5-8f9f-5545c82a57e8', '2015050001', '2015-05-03 07:02:40', '2015-05-03 07:02:40', '1', '1', '', 0, NULL, '2015-05-03', 'zhidanzhong', '4324234.000000', NULL, '2015-05-23', 'diya', '2323.000000', 0.10000000, 'xianjin', 'tongyi', '', '2015-05-03', 'tongyi', '', NULL, 'tongyi', NULL, NULL, NULL, NULL, NULL, NULL, 'xianjin', '', NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `liuch_fangkuang_liucheng_audit`
--

DROP TABLE IF EXISTS `liuch_fangkuang_liucheng_audit`;
CREATE TABLE IF NOT EXISTS `liuch_fangkuang_liucheng_audit` (
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
-- 表的结构 `liuch_fangkuang_liucheng_cstm`
--

DROP TABLE IF EXISTS `liuch_fangkuang_liucheng_cstm`;
CREATE TABLE IF NOT EXISTS `liuch_fangkuang_liucheng_cstm` (
  `id_c` char(36) NOT NULL,
  `daik_jiekuangren_info_id_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `liuch_fangkuang_liucheng_cstm`
--

INSERT INTO `liuch_fangkuang_liucheng_cstm` (`id_c`, `daik_jiekuangren_info_id_c`) VALUES
('31e24f7e-d659-cf91-9bfd-554601304ec3', 'eae96076-9bae-c708-abcd-554447a2df6a'),
('44566f11-a804-08f2-480c-5545ff09eb45', '7c400e83-2ca0-0b69-5b33-5544482d4dd2'),
('4a388f74-b30f-ae43-ae29-554601805554', '7c400e83-2ca0-0b69-5b33-5544482d4dd2'),
('b3aec49a-ab07-9ec4-a79e-5545c8a0f512', 'eae96076-9bae-c708-abcd-554447a2df6a'),
('cb942cff-649e-73c5-8f9f-5545c82a57e8', '7c400e83-2ca0-0b69-5b33-5544482d4dd2');

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
('60f8d8de-182f-ef4d-67d0-554433344bcf', 'system', 'system-override', '1', 'SMTP', 'other', 'smtp.163.com', 25, '', '', 1, 0),
('dfc11266-5403-2b86-ca43-5542c281b05e', 'system', 'system', '1', 'SMTP', 'other', 'smtp.163.com', 25, 'jeffcaocom@163.com', 'AxpSS6sQQbMAZu0gbhwwsw==', 1, 0);

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
('1007d687-20a5-53a2-2167-554641dd2549', 'asol_process_asol_events', 'asol_Process', 'asol_process', 'id', 'asol_Events', 'asol_events', 'id', 'asol_proces_asol_events_c', 'asol_proce6f14process_ida', 'asol_procea8ca_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('104174a3-680b-f6b3-c662-554641538d0a', 'asol_process_asol_events_1', 'asol_Process', 'asol_process', 'id', 'asol_Events', 'asol_events', 'id', 'asol_process_asol_events_1_c', 'asol_process_asol_events_1asol_process_ida', 'asol_process_asol_events_1asol_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('10888e65-92eb-2e40-f8e3-554641579a4b', 'asol_process_asol_task', 'asol_Process', 'asol_process', 'id', 'asol_Task', 'asol_task', 'id', 'asol_process_asol_task_c', 'asol_process_asol_taskasol_process_ida', 'asol_process_asol_taskasol_task_idb', 'many-to-many', NULL, NULL, 0, 0),
('10dc068c-4bef-f0af-4804-5546413aa541', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('155707d1-9980-dd3e-0f78-55464145b9a1', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('190f0cc7-329f-b6b9-5206-554641760b92', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('1d8e078c-2764-b3c9-8623-554641a9fe0d', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('21e80140-b48b-021b-e5e0-554641830f6f', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('259b0ef8-8937-b0f1-1b5b-554641027b48', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('2a870ffd-8151-3d04-b9fa-5546417fcae8', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('2e5208d6-b91f-783e-ffad-554641d2590b', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('321c0071-cc90-ed60-cd62-5546411a68f7', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('362d0783-5d0d-14b0-d351-55464166d05d', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('3ffd086e-e900-bf2c-5838-5546412db5a8', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('46660b37-53c2-09ca-6ea6-554641f31793', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('4d7100bd-5618-be2f-d8d0-5546418bf25f', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('4fea6703-4ce2-4bd0-d57c-554641e1045f', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('50d2694a-4791-b416-2914-55464117a718', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('512582a0-9720-32f8-78cb-5546410467d3', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5165e342-b9e9-cf8d-d563-554641f2559a', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('5169052f-5aae-9315-b530-55464191f010', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('51a487e2-b0ea-d8bc-ddbe-55464198eb0c', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('51ea201a-e9dd-1458-dc20-5546416852de', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('522141c7-109c-0e18-5ac3-5546416fe8d0', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('5257a842-6a20-80c4-b4e7-55464169b196', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('528cab9e-c962-8fe9-f20f-554641003e45', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('52c13559-6733-f929-d573-554641029098', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('52f65e59-965f-2670-1b48-554641d2d0a9', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('533a745b-5a16-676e-ccf9-554641843f95', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('54e601dc-f074-015f-2a7f-5546417f4790', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('55254bac-0e9f-787a-ebf7-554641c4da17', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55600ea7-8b8e-90a9-aec2-5546418c1454', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55a7e8d3-56e8-ac04-2db3-5546410f328b', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55ef4cf6-86a0-10d3-da1c-554641e92adf', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('56292eb1-35cd-9811-130e-5546417fcfc9', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('565f4629-c8c9-f4f3-5741-55464189d0fd', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('5694e643-9824-ec6d-0223-55464138031c', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('56deadbd-2fbd-95b1-259b-554641b8f81c', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('58f318b9-185e-f527-0722-554641a09a6e', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('594520e4-36f1-f5ec-d573-55464183b9b2', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('596f0ef8-b7de-4bb0-8075-55464146e713', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('598afa29-de37-c843-6049-554641c93301', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('59cf6d11-0a89-10a7-0867-554641ed99fe', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('5a0ecd16-d771-425a-1a6c-554641b5d86f', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('5a4d0a39-003c-012d-63fc-55464135b7af', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('5a82409c-6e6f-c4f9-b512-554641a2d54b', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('5abee883-fc07-7b3b-eeef-55464141909c', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('5b07663d-39ee-6506-6e15-554641fba30d', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5b476ce9-a31e-5461-3162-55464150633a', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5c10950d-fd1c-4e82-d3b3-554641dacc6a', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5c543ad2-2b07-69b3-2dbb-5546415aaf96', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('5c911133-8aea-5a70-dc57-5546410ad7ba', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('5dae066e-e330-0bcf-fa0d-5546410c11ac', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('5e0e53d8-2684-710b-540c-55464141db84', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5e501dfd-8ed8-4ad2-8589-554641977f35', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5e89125f-1bbc-bccf-51ac-554641878886', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5ed8bdc6-9949-bebb-1858-554641886c9e', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5f1aa094-f77c-7a2d-6bcd-5546415a1870', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6179be10-48d5-e205-15b9-554641de608c', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('61cd082c-0790-dc23-e1f9-554641bb7c1b', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('61dea3e0-6ec5-070a-d3ad-5546416fbd5e', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('623e2267-bbb7-7528-e32b-55464171aea1', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('62a07eff-fd79-cc47-2315-5546411e6ad7', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('63067d7b-363e-7d0f-75ea-554641cbd7f8', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('636f9153-535a-8bba-0ace-554641ff259a', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('63b3e74e-1a14-a0af-7f92-554641063c47', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6402231f-90d1-c5e9-9a96-554641bc9324', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6449f343-9099-11e9-f1bf-5546412cfd8f', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('66420279-c75f-1642-2405-554641abdaab', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('666e0336-a13c-d5c5-44b9-554641c61a43', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('6687618a-f635-e06e-5529-5546414eb8c3', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('66d2b336-91b2-1755-14f9-55464146e970', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('673238ae-69ea-98da-7535-5546413a2345', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('67777c0c-356e-f309-c0cc-554641f4f32d', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('67bb9eea-e502-3686-dea6-5546417f4f7f', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('681b9eab-087d-ea92-d8e2-5546417a4d0c', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('68707fa8-a4ca-7ac6-bc69-554641bc19bb', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6a6af0cf-412d-034b-91c2-554641488903', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6aa590d2-3a39-f84e-7db9-5546412fbe84', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6add0df7-94fc-8219-6e6b-5546416bab8a', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6aee05b8-0ed8-fa4c-8c6e-554641e98d27', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('6b2866ab-366e-82dd-8325-554641eab924', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b71f60b-2fc5-fe7c-b45a-5546414a2184', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6bb3d918-a7b5-d6f7-9dff-554641c5f455', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6befb82e-92ba-e15b-359a-5546410e1346', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6c36761d-697f-3f70-0955-5546412b028e', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6c7501c3-391d-5024-3473-554641fa20da', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6cc6491b-3807-84d4-9fa5-554641bd780a', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d0114b6-e968-ac2e-8dac-554641ba586d', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d3c7cfd-d318-8934-827b-554641eb0cbf', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d79425a-e85d-0331-6606-554641b190a2', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6eb20323-37df-4ddc-76a9-5546412b22f0', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('6f00763b-7554-737a-8a7d-554641da8f7e', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'prospectlists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7184fda5-a871-576b-c60c-554641cb530e', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('71cd5575-dac6-039c-3e67-5546410e1116', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('720b7fb7-86b0-e017-6500-554641e7dd33', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7246dc65-f06b-f50a-b578-554641e90287', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('72580d04-033d-3d73-1e7f-5546411f49d8', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('7285b8eb-b89e-ba31-a497-554641aeebf0', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('72f0bdc7-06ab-5808-1154-55464159ac99', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('733c42da-0cd5-b768-5c35-554641be2c59', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('73812ae8-afd9-cef0-5b0c-55464179e4e6', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('73c12619-3bd3-308c-f89b-5546411bbf4c', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('73fe2327-9ab4-335d-a91e-554641fc94f6', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('743a30b8-2881-e8a6-feb8-55464120b0a3', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('755b00f7-e58c-b7a9-be82-554641b8b401', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('76510925-d72f-7fdc-6de2-554641eed72b', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('766502a7-020d-408f-8ddc-554641d371b1', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a590004-d11f-65ce-ad6b-554641f169fe', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('7b739ad9-0bd6-94b0-3ae0-554641277033', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('7bcab628-0073-7e71-3d17-5546415c352b', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c31cc3c-0ede-d36a-6762-55464185f755', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7cef3388-1968-e0e0-6694-554641a8e66c', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'schedulersjobs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7dcc0387-1110-c345-8507-5546414c798b', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('801d9b48-cda1-72db-cebc-55464120a478', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8073aa84-9c61-7eec-b606-554641189e7d', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80bb10b0-43e7-8f4c-38fe-554641c2caf4', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80fbe5a2-56d4-c6ac-97fb-554641a38d98', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('8150fe5a-5415-9c2f-8ff8-554641cd09f7', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('819fa8ad-d360-9009-3d84-5546413a7d43', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81fa1483-8642-d5f1-5795-5546416510bc', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8264476d-9671-d108-0f06-5546410cd398', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('82a8ccdf-b93b-57db-aff9-554641e8b89e', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('82e107e8-8cc1-7dd2-3e4b-554641699f2f', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('82feb52e-1c37-2879-d9f2-55464178c882', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('833d7537-58c6-ee0a-ee09-554641480d07', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('8379d2de-8cb2-bbf9-245a-554641c8744e', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('86350fa1-b583-51b2-48cb-55464165ac58', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('8665e55a-7c47-4e15-896e-5546418a883d', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86b531fa-9e53-473f-a689-5546410c46f2', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86f01a3f-63bd-8590-34b1-554641e299f8', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('898708d7-c371-c467-803d-554641f828ec', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('89e97ff9-4faa-9e42-1154-554641ec3b31', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('8a2d88e9-b927-63b8-6bcb-554641e1b28b', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('8a71b1c5-4d41-f073-6d60-55464171f3c9', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8aacba5d-539d-a790-fc3a-554641b49ee7', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ae4933c-8b05-6464-29c2-5546414e6a03', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('8be3b8a7-4ff9-e555-99a7-55464191fe0a', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('8c248c8c-7b48-97f0-1010-554641c4c5c4', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('8c62376a-66d6-93d3-ea1e-554641b7693e', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('8c9e328b-8f26-9d89-c902-5546417abe96', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('8cda6ed9-c415-1913-e6d9-5546411d36dc', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d14e0ef-a203-d0c7-b3a3-554641db1578', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('8d150156-3e8c-fa1f-fc85-554641b5c444', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('8f63349b-ba42-8ea8-ca23-554641a347e4', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8fa694a8-8d71-5aa6-14cd-554641370b4a', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8fe34ae3-74f0-4e4c-5209-554641221702', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('90208c35-b2b0-1fc6-6476-554641895208', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('9072f5df-2a03-6b5b-4a90-554641f33d60', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('90b0eefb-ee55-84d2-20ad-5546415ca106', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('90c10fde-2772-c25c-ca08-5546418307c3', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('90f608fa-a85e-7599-679c-5546418c2f6a', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('914d681e-70db-b403-7ca6-554641e1f2e1', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('919a95ae-75e3-775f-2fd2-55464108ce08', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('91f7ac03-6897-a4ae-d6d0-554641bfaa0b', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('924fd71d-fa91-c3c4-b8de-554641c5eb44', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('93ed88ff-540f-598a-7413-55464150e208', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('958f0d2a-904d-186f-99f6-554641faf6d5', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('95e9aa42-21c7-17d8-e77d-5546418c8bf8', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('963ce9f6-5c9e-17e2-75d9-55464160fcac', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('96b6d9d8-60cc-0fa4-1445-55464140325c', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99cc959a-96ff-a83c-f89b-5546410aa288', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a290c19-1c6f-64c2-ec92-554641cc1395', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('9a2e33ba-45e2-2bc3-4e2d-5546416ad3de', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a7c4f22-005a-b246-acb4-5546411ea400', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ab1e0b3-6b93-049a-e7cd-554641dfe0de', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('9f0f077b-7ab9-3d4a-f12c-554641ae1b0f', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('9f7e4c28-b671-3077-edd1-5546415948b6', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9fbdbec4-7fae-8bc7-b429-5546410b82f5', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ff7dec2-119b-1a36-d843-554641b8c420', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a02fa13a-690a-cec4-ca0d-554641f32a3c', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a05fae5a-e658-f931-9b68-55464113898a', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('a0906151-41fd-b776-70e1-554641faca9a', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('a10070d4-c195-29f5-77d3-55464118d511', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('a15d180b-7b35-d3ba-1da1-55464114d47a', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a2e20730-529e-c248-4489-5546416beedd', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('a407304a-8927-8ea8-d7a1-554641d02a8a', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a45a7fdb-84bc-5da3-81e0-554641cf31b7', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4928d99-622c-020f-c782-5546414ef36b', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4c994e7-a23c-5c81-70cf-55464198a0fb', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('a6960fc4-9e0f-dac5-fe4d-55464168ecbf', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('a6e3c767-5fd9-fd7a-9089-5546415b1c27', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7316c59-2e53-3f67-b2e1-554641ff40f3', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a772f1dd-b376-4935-bb29-5546414a826d', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7b01fb3-edb0-15c9-7f05-55464117b419', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ab4e0bc2-403f-dc89-8b4e-5546411d5ad4', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('af580a6b-49bd-dff7-8577-554641041278', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('b1a9556d-f438-6d63-5c81-5546416d394c', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b1feb651-a4c8-e877-7a86-554641a77bef', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b25141ae-d7d4-b343-c183-554641d104dd', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b29275d6-5839-49b7-a43d-5546411c8169', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b31d08c0-fd48-e1df-6a0b-554641fa528e', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('b3dab4d9-bec5-b687-b3b7-5546416702f2', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b8dec3ed-26ea-61fd-9bdc-554641a33205', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('b93bbac5-b510-eba3-a01c-554641bd0188', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('badc66bd-a79f-2ca4-aee0-554641da3cd3', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be587a4c-773b-6649-3b2d-5546412ef902', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be96fa48-27e9-b5a7-2f23-554641a30057', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bedf94a6-f7d5-8b62-9e27-554641b2b6e3', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c3df4b97-fe7a-5aa1-6106-55464196f4f7', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c42340fd-7656-b877-e7dc-554641723edd', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c463d1bf-5735-4bbe-113d-554641d724f1', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c63e0804-fe15-9811-46bd-5546416885e9', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c6a578fd-a7da-4b3d-e081-554641205acd', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c6f00b17-20bb-d035-f5a2-554641822d2f', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c8272ce5-3230-e753-6802-5546411ed815', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c875f03c-7998-ca5f-3c91-554641244dcb', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cab8b99b-e12b-f5e8-34e4-5546411d02d2', 'asol_activity_modified_user', 'Users', 'users', 'id', 'asol_Activity', 'asol_activity', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cb211902-6785-1593-4cd6-554641cfbbc3', 'asol_activity_created_by', 'Users', 'users', 'id', 'asol_Activity', 'asol_activity', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cb702d76-b807-9ea2-ee1f-5546419925d3', 'asol_activity_assigned_user', 'Users', 'users', 'id', 'asol_Activity', 'asol_activity', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cd56bfeb-cb3d-46c1-b95a-554641d05ccb', 'asol_events_modified_user', 'Users', 'users', 'id', 'asol_Events', 'asol_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cdaa1f69-124b-0522-13c4-5546410b520c', 'asol_events_created_by', 'Users', 'users', 'id', 'asol_Events', 'asol_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cde4c261-c24c-fa93-3652-5546419ca668', 'asol_events_assigned_user', 'Users', 'users', 'id', 'asol_Events', 'asol_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cf8e8bb7-0fc9-e426-7c74-554641d9a630', 'asol_onhold_modified_user', 'Users', 'users', 'id', 'asol_OnHold', 'asol_onhold', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cff339dc-3293-8ed1-92e8-5546413a2137', 'asol_onhold_created_by', 'Users', 'users', 'id', 'asol_OnHold', 'asol_onhold', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d055b6ef-f80d-a3bb-447d-55464108a687', 'asol_onhold_assigned_user', 'Users', 'users', 'id', 'asol_OnHold', 'asol_onhold', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d2191ae6-7403-0fb7-bf77-554641d51a35', 'asol_process_modified_user', 'Users', 'users', 'id', 'asol_Process', 'asol_process', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d25b19c2-5377-a576-fc3c-554641357eeb', 'asol_process_created_by', 'Users', 'users', 'id', 'asol_Process', 'asol_process', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d2a9d23b-4d00-60bc-2f0f-554641e71830', 'asol_process_assigned_user', 'Users', 'users', 'id', 'asol_Process', 'asol_process', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d4409452-607d-f3e8-efeb-554641a45764', 'asol_processinstances_modified_user', 'Users', 'users', 'id', 'asol_ProcessInstances', 'asol_processinstances', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d4bcb35f-a8ea-5a03-3a44-554641e95d2d', 'asol_processinstances_created_by', 'Users', 'users', 'id', 'asol_ProcessInstances', 'asol_processinstances', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d5113d91-c7b3-1ea2-0bad-554641155406', 'asol_processinstances_assigned_user', 'Users', 'users', 'id', 'asol_ProcessInstances', 'asol_processinstances', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d6cc0fe9-fd48-7cbd-4167-554641bab2b7', 'asol_task_modified_user', 'Users', 'users', 'id', 'asol_Task', 'asol_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d707169b-75d6-ab0a-91e4-5546416f8d37', 'asol_task_created_by', 'Users', 'users', 'id', 'asol_Task', 'asol_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d74e8928-024a-e219-47cb-5546411d9d8c', 'asol_task_assigned_user', 'Users', 'users', 'id', 'asol_Task', 'asol_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d94a02ea-ad9b-3f59-1682-5546418bae83', 'asol_workingnodes_modified_user', 'Users', 'users', 'id', 'asol_WorkingNodes', 'asol_workingnodes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d9a59251-899a-01a2-d561-5546413e7a0b', 'asol_workingnodes_created_by', 'Users', 'users', 'id', 'asol_WorkingNodes', 'asol_workingnodes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d9ee1876-b661-fae3-33c0-554641f62840', 'asol_workingnodes_assigned_user', 'Users', 'users', 'id', 'asol_WorkingNodes', 'asol_workingnodes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('db6f5e09-849e-db41-8e43-554641abb43f', 'asol_workflowmanagercommon_modified_user', 'Users', 'users', 'id', 'asol_WorkFlowManagerCommon', 'asol_workflowmanagercommon', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dbc7c571-f6b8-3b9d-75cd-554641adc85c', 'asol_workflowmanagercommon_created_by', 'Users', 'users', 'id', 'asol_WorkFlowManagerCommon', 'asol_workflowmanagercommon', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dc1a6537-240e-5fdd-c33a-554641afcb6b', 'asol_workflowmanagercommon_assigned_user', 'Users', 'users', 'id', 'asol_WorkFlowManagerCommon', 'asol_workflowmanagercommon', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dd650a2f-8b92-b30a-cb10-5546412506da', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('de5e6af6-438c-1577-2cd9-55464119529a', 'daik_jiekuangren_info_modified_user', 'Users', 'users', 'id', 'daik_jiekuangren_info', 'daik_jiekuangren_info', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('deb1f461-867e-52fa-937b-5546418b5f07', 'daik_jiekuangren_info_created_by', 'Users', 'users', 'id', 'daik_jiekuangren_info', 'daik_jiekuangren_info', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('df00cfba-169e-20bd-a8ae-55464131c171', 'daik_jiekuangren_info_assigned_user', 'Users', 'users', 'id', 'daik_jiekuangren_info', 'daik_jiekuangren_info', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e0ca3b0f-1ef4-d5e0-e15a-554641f6a55e', 'daik_jinrong_jigou_info_modified_user', 'Users', 'users', 'id', 'daik_jinrong_jigou_info', 'daik_jinrong_jigou_info', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e10ce6b0-1434-bdd5-6c38-554641609c16', 'daik_jinrong_jigou_info_created_by', 'Users', 'users', 'id', 'daik_jinrong_jigou_info', 'daik_jinrong_jigou_info', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e14b3a6e-4a94-0e6b-9f6e-554641cc8df8', 'daik_jinrong_jigou_info_assigned_user', 'Users', 'users', 'id', 'daik_jinrong_jigou_info', 'daik_jinrong_jigou_info', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e16c00bc-c78e-bb51-7bb9-554641f8fe2c', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('e413d0ac-cd9f-5e13-a6dd-55464107b657', 'liuch_fangkuang_liucheng_modified_user', 'Users', 'users', 'id', 'liuch_fangkuang_liucheng', 'liuch_fangkuang_liucheng', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e45cd399-0653-1daa-6c5e-5546413a405c', 'liuch_fangkuang_liucheng_created_by', 'Users', 'users', 'id', 'liuch_fangkuang_liucheng', 'liuch_fangkuang_liucheng', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e4b217f8-7e88-c6b2-8fb0-554641e63b33', 'liuch_fangkuang_liucheng_assigned_user', 'Users', 'users', 'id', 'liuch_fangkuang_liucheng', 'liuch_fangkuang_liucheng', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e565c5f8-33dd-9386-19ff-554641a3ac59', 'yuang_bumen_info_modified_user', 'Users', 'users', 'id', 'yuang_bumen_info', 'yuang_bumen_info', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e5ab0360-8bf1-fb33-e625-554641ddb80b', 'yuang_bumen_info_created_by', 'Users', 'users', 'id', 'yuang_bumen_info', 'yuang_bumen_info', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e5e249c6-8e38-d92e-f0bc-55464174d3a8', 'yuang_bumen_info_assigned_user', 'Users', 'users', 'id', 'yuang_bumen_info', 'yuang_bumen_info', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e64f0cc6-99bc-21be-25cb-554641babfaa', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('e6750dde-bbe1-34b2-cf48-55464181699e', 'yuang_fengongsi_info_modified_user', 'Users', 'users', 'id', 'yuang_fengongsi_info', 'yuang_fengongsi_info', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e6ac2ca1-488a-a2a4-6ee4-554641a7cb98', 'yuang_fengongsi_info_created_by', 'Users', 'users', 'id', 'yuang_fengongsi_info', 'yuang_fengongsi_info', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e6fd6ffc-765f-34e0-8631-5546418ce2c4', 'yuang_fengongsi_info_assigned_user', 'Users', 'users', 'id', 'yuang_fengongsi_info', 'yuang_fengongsi_info', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e88ca1b5-7836-dbd2-4566-554641ce346f', 'yuang_waibu_qudao_info_modified_user', 'Users', 'users', 'id', 'yuang_waibu_qudao_info', 'yuang_waibu_qudao_info', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e8cf0f3d-1609-a7e1-7c69-554641f2280f', 'yuang_waibu_qudao_info_created_by', 'Users', 'users', 'id', 'yuang_waibu_qudao_info', 'yuang_waibu_qudao_info', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e917e77e-1e83-a185-f584-55464108f22c', 'yuang_waibu_qudao_info_assigned_user', 'Users', 'users', 'id', 'yuang_waibu_qudao_info', 'yuang_waibu_qudao_info', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ea3005c5-cfd4-0f79-5761-554641ff3409', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('eb0715cb-ea13-eae8-fbff-55464165d3fc', 'yuang_yuangong_guanli_modified_user', 'Users', 'users', 'id', 'yuang_yuangong_guanli', 'yuang_yuangong_guanli', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb6dd769-6f6a-091b-a22e-5546418b8034', 'yuang_yuangong_guanli_created_by', 'Users', 'users', 'id', 'yuang_yuangong_guanli', 'yuang_yuangong_guanli', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ebc1024e-04df-213e-e137-5546414f13ec', 'yuang_yuangong_guanli_assigned_user', 'Users', 'users', 'id', 'yuang_yuangong_guanli', 'yuang_yuangong_guanli', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('edd80039-fb5d-fe00-bc5a-55464181377d', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('f17b0b6e-31a4-5871-a2a5-554641efd4ec', 'asol_activity_asol_activity', 'asol_Activity', 'asol_activity', 'id', 'asol_Activity', 'asol_activity', 'id', 'asol_activisol_activity_c', 'asol_activ898activity_ida', 'asol_activ9e2dctivity_idb', 'many-to-many', NULL, NULL, 0, 0),
('f5180184-f465-2b54-e8c6-554641a816ec', 'asol_activity_asol_task', 'asol_Activity', 'asol_activity', 'id', 'asol_Task', 'asol_task', 'id', 'asol_activity_asol_task_c', 'asol_activ5b86ctivity_ida', 'asol_activf613ol_task_idb', 'many-to-many', NULL, NULL, 0, 0),
('f8ba0830-fa0f-356b-3774-55464144448a', 'asol_events_asol_activity', 'asol_Events', 'asol_events', 'id', 'asol_Activity', 'asol_activity', 'id', 'asol_eventssol_activity_c', 'asol_event87f4_events_ida', 'asol_event8042ctivity_idb', 'many-to-many', NULL, NULL, 0, 0),
('fcb302ce-f036-4ea7-b12a-554641888da6', 'asol_process_asol_activity', 'asol_Process', 'asol_process', 'id', 'asol_Activity', 'asol_activity', 'id', 'asol_process_asol_activity_c', 'asol_process_asol_activityasol_process_ida', 'asol_process_asol_activityasol_activity_idb', 'many-to-many', NULL, NULL, 0, 0);

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
-- 表的结构 `roles_homepage`
--

DROP TABLE IF EXISTS `roles_homepage`;
CREATE TABLE IF NOT EXISTS `roles_homepage` (
  `id` char(36) NOT NULL,
  `role_id` varchar(255) NOT NULL,
  `tab_id` smallint(6) NOT NULL,
  `tab_name` varchar(255) NOT NULL,
  `tab_order` smallint(6) DEFAULT '1',
  `user_owner` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `home_priority` tinyint(4) DEFAULT '0',
  `custom_home` tinyint(4) DEFAULT '0',
  `home_hash_stored` text,
  `home_hash_published` text,
  `asol_domain_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `roles_homepage`
--

INSERT INTO `roles_homepage` (`id`, `role_id`, `tab_id`, `tab_name`, `tab_order`, `user_owner`, `date_entered`, `date_modified`, `home_priority`, `custom_home`, `home_hash_stored`, `home_hash_published`, `asol_domain_id`) VALUES
('2e14c957-736e-f8e2-7611-5544345771c0', 'default', 1, 'Main Tab', 1, '880d930e-94ac-ba6d-2144-554434911d8e', '2015-05-02 02:21:38', '2015-05-02 02:21:38', 0, 0, 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6IjdjNmMyMDBkLWY0Y2EtNDRlZS1mOWZmLTU1NDJjMzBmODNlYSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czozMDoiTEJMX0RBU0hMRVRfRElTQ09WRVJfU1VHQVJfUFJPIjtzOjM6InVybCI7czo0MjoiaHR0cHM6Ly93d3cuc3VnYXJjcm0uY29tL2NybS9wcm9kdWN0L2dvcHJvIjtzOjY6ImhlaWdodCI7aTozMTU7fX1zOjM2OiI3YzcyZDYyMi1lYTNkLWY4OGEtMGY2ZC01NTQyYzM0YTJiYWIiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjQ6Im1vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiI3Yzc4YjBkZS0xZWQ1LWUzYWYtM2QyNi01NTQyYzM1YWRjZmQiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTM6ImlGcmFtZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjQ6IkhvbWUiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjE7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvaUZyYW1lRGFzaGxldC9pRnJhbWVEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjM6e3M6MTA6InRpdGxlTGFiZWwiO3M6MjI6IkxCTF9EQVNITEVUX1NVR0FSX05FV1MiO3M6MzoidXJsIjtzOjQxOiJodHRwczovL3d3dy5zdWdhcmNybS5jb20vY3JtL3Byb2R1Y3QvbmV3cyI7czo2OiJoZWlnaHQiO2k6MzE1O319czozNjoiODI0NTA4ZmYtYWVjZS00OTQyLWYxOGMtNTU0MmMzODYwMzI5IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhbGxzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FsbHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiODNkM2JjMmItOTgxZC1kYTI0LTU1MzYtNTU0MmMzYWJkZDFiIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiTWVldGluZ3MiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL01lZXRpbmdzL0Rhc2hsZXRzL015TWVldGluZ3NEYXNobGV0L015TWVldGluZ3NEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiODUyOGQ0MjQtODZlZC0yYzMyLTI3ZDAtNTU0MmMzZmQ4Yzc2IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiI4NmQ4MzhhMC03MDk3LWIzNzEtZmIxYi01NTQyYzNmMmRiMmYiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15QWNjb3VudHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJBY2NvdW50cyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiI4OTA2ODNkNC0zYzkxLTUzY2ItZDM3MS01NTQyYzNmNjljN2QiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJMZWFkcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX19czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Njp7aTowO3M6MzY6IjdjNmMyMDBkLWY0Y2EtNDRlZS1mOWZmLTU1NDJjMzBmODNlYSI7aToxO3M6MzY6IjgyNDUwOGZmLWFlY2UtNDk0Mi1mMThjLTU1NDJjMzg2MDMyOSI7aToyO3M6MzY6IjgzZDNiYzJiLTk4MWQtZGEyNC01NTM2LTU1NDJjM2FiZGQxYiI7aTozO3M6MzY6Ijg1MjhkNDI0LTg2ZWQtMmMzMi0yN2QwLTU1NDJjM2ZkOGM3NiI7aTo0O3M6MzY6Ijg2ZDgzOGEwLTcwOTctYjM3MS1mYjFiLTU1NDJjM2YyZGIyZiI7aTo1O3M6MzY6Ijg5MDY4M2Q0LTNjOTEtNTNjYi1kMzcxLTU1NDJjM2Y2OWM3ZCI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiN2M3MmQ2MjItZWEzZC1mODhhLTBmNmQtNTU0MmMzNGEyYmFiIjtpOjE7czozNjoiN2M3OGIwZGUtMWVkNS1lM2FmLTNkMjYtNTU0MmMzNWFkY2ZkIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19', '', NULL),
('356dec13-60f7-7858-0938-5542d16fff43', 'default', 1, 'Main Tab', 1, '1', '2015-05-01 01:07:55', '2015-05-01 01:07:55', 0, 0, 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6IjdjNmMyMDBkLWY0Y2EtNDRlZS1mOWZmLTU1NDJjMzBmODNlYSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czozMDoiTEJMX0RBU0hMRVRfRElTQ09WRVJfU1VHQVJfUFJPIjtzOjM6InVybCI7czo0MjoiaHR0cHM6Ly93d3cuc3VnYXJjcm0uY29tL2NybS9wcm9kdWN0L2dvcHJvIjtzOjY6ImhlaWdodCI7aTozMTU7fX1zOjM2OiI3YzcyZDYyMi1lYTNkLWY4OGEtMGY2ZC01NTQyYzM0YTJiYWIiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjQ6Im1vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiI3Yzc4YjBkZS0xZWQ1LWUzYWYtM2QyNi01NTQyYzM1YWRjZmQiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTM6ImlGcmFtZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjQ6IkhvbWUiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjE7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvaUZyYW1lRGFzaGxldC9pRnJhbWVEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjM6e3M6MTA6InRpdGxlTGFiZWwiO3M6MjI6IkxCTF9EQVNITEVUX1NVR0FSX05FV1MiO3M6MzoidXJsIjtzOjQxOiJodHRwczovL3d3dy5zdWdhcmNybS5jb20vY3JtL3Byb2R1Y3QvbmV3cyI7czo2OiJoZWlnaHQiO2k6MzE1O319czozNjoiODI0NTA4ZmYtYWVjZS00OTQyLWYxOGMtNTU0MmMzODYwMzI5IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhbGxzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FsbHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiODNkM2JjMmItOTgxZC1kYTI0LTU1MzYtNTU0MmMzYWJkZDFiIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiTWVldGluZ3MiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL01lZXRpbmdzL0Rhc2hsZXRzL015TWVldGluZ3NEYXNobGV0L015TWVldGluZ3NEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiODUyOGQ0MjQtODZlZC0yYzMyLTI3ZDAtNTU0MmMzZmQ4Yzc2IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiI4NmQ4MzhhMC03MDk3LWIzNzEtZmIxYi01NTQyYzNmMmRiMmYiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15QWNjb3VudHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJBY2NvdW50cyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiI4OTA2ODNkNC0zYzkxLTUzY2ItZDM3MS01NTQyYzNmNjljN2QiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJMZWFkcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX19czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Njp7aTowO3M6MzY6IjdjNmMyMDBkLWY0Y2EtNDRlZS1mOWZmLTU1NDJjMzBmODNlYSI7aToxO3M6MzY6IjgyNDUwOGZmLWFlY2UtNDk0Mi1mMThjLTU1NDJjMzg2MDMyOSI7aToyO3M6MzY6IjgzZDNiYzJiLTk4MWQtZGEyNC01NTM2LTU1NDJjM2FiZGQxYiI7aTozO3M6MzY6Ijg1MjhkNDI0LTg2ZWQtMmMzMi0yN2QwLTU1NDJjM2ZkOGM3NiI7aTo0O3M6MzY6Ijg2ZDgzOGEwLTcwOTctYjM3MS1mYjFiLTU1NDJjM2YyZGIyZiI7aTo1O3M6MzY6Ijg5MDY4M2Q0LTNjOTEtNTNjYi1kMzcxLTU1NDJjM2Y2OWM3ZCI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiN2M3MmQ2MjItZWEzZC1mODhhLTBmNmQtNTU0MmMzNGEyYmFiIjtpOjE7czozNjoiN2M3OGIwZGUtMWVkNS1lM2FmLTNkMjYtNTU0MmMzNWFkY2ZkIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6IjdjNmMyMDBkLWY0Y2EtNDRlZS1mOWZmLTU1NDJjMzBmODNlYSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czozMDoiTEJMX0RBU0hMRVRfRElTQ09WRVJfU1VHQVJfUFJPIjtzOjM6InVybCI7czo0MjoiaHR0cHM6Ly93d3cuc3VnYXJjcm0uY29tL2NybS9wcm9kdWN0L2dvcHJvIjtzOjY6ImhlaWdodCI7aTozMTU7fX1zOjM2OiI3YzcyZDYyMi1lYTNkLWY4OGEtMGY2ZC01NTQyYzM0YTJiYWIiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjQ6Im1vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiI3Yzc4YjBkZS0xZWQ1LWUzYWYtM2QyNi01NTQyYzM1YWRjZmQiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTM6ImlGcmFtZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjQ6IkhvbWUiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjE7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvaUZyYW1lRGFzaGxldC9pRnJhbWVEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjM6e3M6MTA6InRpdGxlTGFiZWwiO3M6MjI6IkxCTF9EQVNITEVUX1NVR0FSX05FV1MiO3M6MzoidXJsIjtzOjQxOiJodHRwczovL3d3dy5zdWdhcmNybS5jb20vY3JtL3Byb2R1Y3QvbmV3cyI7czo2OiJoZWlnaHQiO2k6MzE1O319czozNjoiODI0NTA4ZmYtYWVjZS00OTQyLWYxOGMtNTU0MmMzODYwMzI5IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhbGxzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FsbHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiODNkM2JjMmItOTgxZC1kYTI0LTU1MzYtNTU0MmMzYWJkZDFiIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiTWVldGluZ3MiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL01lZXRpbmdzL0Rhc2hsZXRzL015TWVldGluZ3NEYXNobGV0L015TWVldGluZ3NEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiODUyOGQ0MjQtODZlZC0yYzMyLTI3ZDAtNTU0MmMzZmQ4Yzc2IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiI4NmQ4MzhhMC03MDk3LWIzNzEtZmIxYi01NTQyYzNmMmRiMmYiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15QWNjb3VudHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJBY2NvdW50cyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiI4OTA2ODNkNC0zYzkxLTUzY2ItZDM3MS01NTQyYzNmNjljN2QiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJMZWFkcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX19czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Njp7aTowO3M6MzY6IjdjNmMyMDBkLWY0Y2EtNDRlZS1mOWZmLTU1NDJjMzBmODNlYSI7aToxO3M6MzY6IjgyNDUwOGZmLWFlY2UtNDk0Mi1mMThjLTU1NDJjMzg2MDMyOSI7aToyO3M6MzY6IjgzZDNiYzJiLTk4MWQtZGEyNC01NTM2LTU1NDJjM2FiZGQxYiI7aTozO3M6MzY6Ijg1MjhkNDI0LTg2ZWQtMmMzMi0yN2QwLTU1NDJjM2ZkOGM3NiI7aTo0O3M6MzY6Ijg2ZDgzOGEwLTcwOTctYjM3MS1mYjFiLTU1NDJjM2YyZGIyZiI7aTo1O3M6MzY6Ijg5MDY4M2Q0LTNjOTEtNTNjYi1kMzcxLTU1NDJjM2Y2OWM3ZCI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiN2M3MmQ2MjItZWEzZC1mODhhLTBmNmQtNTU0MmMzNGEyYmFiIjtpOjE7czozNjoiN2M3OGIwZGUtMWVkNS1lM2FmLTNkMjYtNTU0MmMzNWFkY2ZkIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19', NULL);

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
('109a2d8b-03e4-84c5-97c7-5542c25d4fd8', 0, '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2012-01-01 08:30:01', '2030-12-31 23:59:59', '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('145ce41d-1034-b5a2-90d0-5542c2c8708b', 0, '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '1', 'Prune SugarFeed Tables', 'function::trimSugarFeeds', '2005-01-01 17:00:01', '2020-12-31 23:59:59', '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('52590f97-9b93-c25b-b168-5542c2a62c5d', 0, '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2005-01-01 16:00:01', '2020-12-31 23:59:59', '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('75e002b6-c0f2-7977-82ce-5542c2286f2c', 0, '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxes', '2005-01-01 12:45:01', '2020-12-31 23:59:59', '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('77a5bf1f-2374-8c73-3fd9-5542d09b804a', 0, '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'wfm_engine_crontab', 'url::http://localhost/fzglsys/index.php?entryPoint=wfm_engine&execution_type=crontab', '2005-01-01 11:15:01', NULL, '*/1::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('7b26438d-fa7a-09a3-2efb-5542d08bb805', 0, '2015-05-01 01:01:39', '2015-05-01 01:01:39', '1', '1', 'wfm_scheduled_task', 'url::http://localhost/fzglsys/index.php?entryPoint=wfm_scheduled_task', '2005-01-01 09:45:01', NULL, '*/1::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('98290e62-806c-163e-04d1-5542c28bf13d', 0, '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2005-01-01 10:45:01', '2020-12-31 23:59:59', '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('b05008db-e011-98ee-967d-5542c2eb4612', 0, '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2005-01-01 12:45:01', '2020-12-31 23:59:59', '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('c3ea004a-2399-f3aa-b75f-5542c2fab86d', 0, '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2005-01-01 17:15:01', '2020-12-31 23:59:59', '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('d3630129-e40e-f4eb-6784-5542c2cd1373', 0, '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2008-01-01 07:15:01', '2020-12-31 23:59:59', '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('e1ae0d8a-8cd5-01f4-7260-5542c232b1af', 0, '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2012-01-01 06:15:01', '2030-12-31 23:59:59', '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(50, '39df75d3-1c7e-9a30-de5b-554433f18daf', '1', 'yuang_fengongsi_info', '59c880e4-3a36-c1c3-7310-55435e848c0a', '南京第一分公司', '2015-05-02 02:17:13', 'detailview', '38h28vrmm905p3r4dee7d34js2', 1, 0),
(52, 'd30df3b7-9f5f-e729-5913-554433769980', '1', 'yuang_bumen_info', 'd555c22f-ddbd-7436-7927-55435e310057', '销售一部', '2015-05-02 02:17:41', 'detailview', '38h28vrmm905p3r4dee7d34js2', 1, 0),
(66, 'aea47042-997f-7316-3802-55444808a992', '1', 'daik_jiekuangren_info', 'eae96076-9bae-c708-abcd-554447a2df6a', '刘某人', '2015-05-02 03:44:08', 'detailview', '38h28vrmm905p3r4dee7d34js2', 1, 0),
(68, '9747793a-4a6b-1f1f-b199-5544c265417b', '1', 'asol_Process', '96c98c77-e4e3-2d73-b958-5544c202cfa2', '放款流程', '2015-05-02 12:25:02', 'save', '38h28vrmm905p3r4dee7d34js2', 0, 0),
(70, 'e4d56e91-917a-fe63-472b-5544c313cf55', '1', 'Users', '1', 'Cao Jeff', '2015-05-02 12:32:09', 'detailview', '38h28vrmm905p3r4dee7d34js2', 1, 0),
(83, '16649ae9-871e-b9dd-630d-5544ef36ddd6', '1', 'asol_Events', 'e192475b-f4eb-bd28-38be-5544c2edc223', 'Event_ 1', '2015-05-02 15:40:22', 'detailview', 'ohjbih1df4nsukcfoedbj0giv1', 0, 0),
(93, 'aa735906-9137-7792-2ffe-554571e908f6', '1', 'asol_Events', '23b1b4b1-10d7-b32d-a299-5544f026b471', 'Event_ 1', '2015-05-03 00:52:38', 'detailview', 'u62dhocf4jtiquo2e2qgfc8bt4', 1, 0),
(94, 'd1b2e0be-abc3-fe6d-8db8-55457f71e5e2', '1', 'Users', '880d930e-94ac-ba6d-2144-554434911d8e', '孟 军', '2015-05-03 01:54:04', 'detailview', 'u62dhocf4jtiquo2e2qgfc8bt4', 1, 0),
(95, '65659678-5285-7272-eac3-5545b4ec28da', '1', 'asol_Process', 'adf701e6-626e-63e1-56cc-5544f05ea200', '放款流程', '2015-05-03 05:37:08', 'detailview', 'u62dhocf4jtiquo2e2qgfc8bt4', 1, 0),
(96, '25bcf2b5-41bf-b8a8-a577-5545c81c42c6', '1', 'liuch_fangkuang_liucheng', 'cb942cff-649e-73c5-8f9f-5545c82a57e8', '2015050001', '2015-05-03 07:02:41', 'detailview', 'u62dhocf4jtiquo2e2qgfc8bt4', 1, 0),
(108, '4ecfb914-8eb5-4b4a-e9b5-5545ff009d97', '1', 'liuch_fangkuang_liucheng', 'b3aec49a-ab07-9ec4-a79e-5545c8a0f512', '2015050003', '2015-05-03 10:58:59', 'detailview', 'u62dhocf4jtiquo2e2qgfc8bt4', 1, 0),
(110, '1335d0d0-9c77-5827-c995-55460002e48f', '1', 'liuch_fangkuang_liucheng', '44566f11-a804-08f2-480c-5545ff09eb45', '2015050003', '2015-05-03 11:05:19', 'detailview', 'u62dhocf4jtiquo2e2qgfc8bt4', 0, 0),
(135, 'eed17108-d4f4-0910-58d3-5546064e7e12', '1', 'daik_jiekuangren_info', '7c400e83-2ca0-0b69-5b33-5544482d4dd2', '李本人', '2015-05-03 11:30:37', 'detailview', 'u62dhocf4jtiquo2e2qgfc8bt4', 1, 0),
(150, '18ec291b-daf3-5153-fff9-554640d84dd5', '1', 'liuch_fangkuang_liucheng', '4a388f74-b30f-ae43-ae29-554601805554', '2015050006', '2015-05-03 15:38:31', 'detailview', 'u62dhocf4jtiquo2e2qgfc8bt4', 1, 0),
(152, '8d7233dc-16b4-3fdf-aae7-55464111bcf1', '1', 'liuch_fangkuang_liucheng', '31e24f7e-d659-cf91-9bfd-554601304ec3', '2015050004', '2015-05-03 15:40:03', 'editview', 'u62dhocf4jtiquo2e2qgfc8bt4', 1, 0);

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
('214d99cb-8654-43f8-488f-5542d0f9acc5', 'upload/upgrades/module/AlineaSolAjaxPostRequestsIE10Compatibility.zip', '8375ed2fe2a62bc5efc0adf169507088', 'module', 'installed', '1.0', 'AlineaSol Ajax Post Requests IE10 Compatibility', 'AlineaSol: This module fixes a bug with IE10 & SugarCRM AjaxUI Feature', 'AlineaSolAjaxPostRequestsIE10Compatibility', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEwOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MDp7fXM6MjU6ImFjY2VwdGFibGVfc3VnYXJfdmVyc2lvbnMiO2E6MDp7fXM6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6NDc6IkFsaW5lYVNvbCBBamF4IFBvc3QgUmVxdWVzdHMgSUUxMCBDb21wYXRpYmlsaXR5IjtzOjExOiJkZXNjcmlwdGlvbiI7czo3MDoiQWxpbmVhU29sOiBUaGlzIG1vZHVsZSBmaXhlcyBhIGJ1ZyB3aXRoIElFMTAgJiBTdWdhckNSTSBBamF4VUkgRmVhdHVyZSI7czo2OiJhdXRob3IiO3M6OToiQWxpbmVhU29sIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxMDoiMjAxMy8wOC8xNiI7czo3OiJ2ZXJzaW9uIjtzOjM6IjEuMCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo0OiJpY29uIjtzOjA6IiI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjM6e3M6MjoiaWQiO3M6NDI6IkFsaW5lYVNvbEFqYXhQb3N0UmVxdWVzdHNJRTEwQ29tcGF0aWJpbGl0eSI7czoxMjoicG9zdF9leGVjdXRlIjthOjE6e2k6MDtzOjM1OiI8YmFzZXBhdGg+L2FjdGlvbnMvcG9zdF9pbnN0YWxsLnBocCI7fXM6MTQ6InBvc3RfdW5pbnN0YWxsIjthOjE6e2k6MDtzOjM3OiI8YmFzZXBhdGg+L2FjdGlvbnMvcG9zdF91bmluc3RhbGwucGhwIjt9fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2015-05-01 01:00:50', 1),
('4300f7a5-8c41-4135-0a8e-554301ab57bb', 'upload/upgrades/module/fzglsys_daikuang_info_module2015_05_01_063253.zip', 'dd4f18824318e0b22a09ad1a6de4e02a', 'module', 'installed', '1430454773', 'fzglsys_daikuang_info_module', 'fzglsys_daikuang_info_module', 'fzglsys_daikuang_info_module', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6NDoiZGFpayI7czo2OiJhdXRob3IiO3M6MDoiIjtzOjExOiJkZXNjcmlwdGlvbiI7czoyODoiZnpnbHN5c19kYWlrdWFuZ19pbmZvX21vZHVsZSI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoyODoiZnpnbHN5c19kYWlrdWFuZ19pbmZvX21vZHVsZSI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTUtMDUtMDEgMDQ6MzI6NTMiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNDMwNDU0NzczO3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czoyODoiZnpnbHN5c19kYWlrdWFuZ19pbmZvX21vZHVsZSI7czo1OiJiZWFucyI7YToyOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoyMToiZGFpa19qaWVrdWFuZ3Jlbl9pbmZvIjtzOjU6ImNsYXNzIjtzOjIxOiJkYWlrX2ppZWt1YW5ncmVuX2luZm8iO3M6NDoicGF0aCI7czo1NToibW9kdWxlcy9kYWlrX2ppZWt1YW5ncmVuX2luZm8vZGFpa19qaWVrdWFuZ3Jlbl9pbmZvLnBocCI7czozOiJ0YWIiO2I6MTt9aToxO2E6NDp7czo2OiJtb2R1bGUiO3M6MjM6ImRhaWtfamlucm9uZ19qaWdvdV9pbmZvIjtzOjU6ImNsYXNzIjtzOjIzOiJkYWlrX2ppbnJvbmdfamlnb3VfaW5mbyI7czo0OiJwYXRoIjtzOjU5OiJtb2R1bGVzL2RhaWtfamlucm9uZ19qaWdvdV9pbmZvL2RhaWtfamlucm9uZ19qaWdvdV9pbmZvLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6Mjp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjUzOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2RhaWtfamlla3VhbmdyZW5faW5mbyI7czoyOiJ0byI7czoyOToibW9kdWxlcy9kYWlrX2ppZWt1YW5ncmVuX2luZm8iO31pOjE7YToyOntzOjQ6ImZyb20iO3M6NTU6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvZGFpa19qaW5yb25nX2ppZ291X2luZm8iO3M6MjoidG8iO3M6MzE6Im1vZHVsZXMvZGFpa19qaW5yb25nX2ppZ291X2luZm8iO319czo4OiJsYW5ndWFnZSI7YToyOntpOjA7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL3poX2NuLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiemhfY24iO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2015-05-01 04:32:53', 1),
('5bc6a228-6c73-f675-3716-5542f8f2d403', 'upload/upgrades/module/fzglsys_yuangong_module2015_05_01_055148.zip', '7945c895dc1f429b3deb179304074b15', 'module', 'installed', '1430452308', 'fzglsys_yuangong_module', 'fzglsys_yuangong_module', 'fzglsys_yuangong_module', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6NToieXVhbmciO3M6NjoiYXV0aG9yIjtzOjA6IiI7czoxMToiZGVzY3JpcHRpb24iO3M6MjM6ImZ6Z2xzeXNfeXVhbmdvbmdfbW9kdWxlIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjIzOiJmemdsc3lzX3l1YW5nb25nX21vZHVsZSI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTUtMDUtMDEgMDM6NTE6NDciO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNDMwNDUyMzA4O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czoyMzoiZnpnbHN5c195dWFuZ29uZ19tb2R1bGUiO3M6NToiYmVhbnMiO2E6NDp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MTY6Inl1YW5nX2J1bWVuX2luZm8iO3M6NToiY2xhc3MiO3M6MTY6Inl1YW5nX2J1bWVuX2luZm8iO3M6NDoicGF0aCI7czo0NToibW9kdWxlcy95dWFuZ19idW1lbl9pbmZvL3l1YW5nX2J1bWVuX2luZm8ucGhwIjtzOjM6InRhYiI7YjoxO31pOjE7YTo0OntzOjY6Im1vZHVsZSI7czoyMDoieXVhbmdfZmVuZ29uZ3NpX2luZm8iO3M6NToiY2xhc3MiO3M6MjA6Inl1YW5nX2ZlbmdvbmdzaV9pbmZvIjtzOjQ6InBhdGgiO3M6NTM6Im1vZHVsZXMveXVhbmdfZmVuZ29uZ3NpX2luZm8veXVhbmdfZmVuZ29uZ3NpX2luZm8ucGhwIjtzOjM6InRhYiI7YjoxO31pOjI7YTo0OntzOjY6Im1vZHVsZSI7czoyMjoieXVhbmdfd2FpYnVfcXVkYW9faW5mbyI7czo1OiJjbGFzcyI7czoyMjoieXVhbmdfd2FpYnVfcXVkYW9faW5mbyI7czo0OiJwYXRoIjtzOjU3OiJtb2R1bGVzL3l1YW5nX3dhaWJ1X3F1ZGFvX2luZm8veXVhbmdfd2FpYnVfcXVkYW9faW5mby5waHAiO3M6MzoidGFiIjtiOjE7fWk6MzthOjQ6e3M6NjoibW9kdWxlIjtzOjIxOiJ5dWFuZ195dWFuZ29uZ19ndWFubGkiO3M6NToiY2xhc3MiO3M6MjE6Inl1YW5nX3l1YW5nb25nX2d1YW5saSI7czo0OiJwYXRoIjtzOjU1OiJtb2R1bGVzL3l1YW5nX3l1YW5nb25nX2d1YW5saS95dWFuZ195dWFuZ29uZ19ndWFubGkucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YTo0OntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDg6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMveXVhbmdfYnVtZW5faW5mbyI7czoyOiJ0byI7czoyNDoibW9kdWxlcy95dWFuZ19idW1lbl9pbmZvIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjUyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL3l1YW5nX2ZlbmdvbmdzaV9pbmZvIjtzOjI6InRvIjtzOjI4OiJtb2R1bGVzL3l1YW5nX2ZlbmdvbmdzaV9pbmZvIjt9aToyO2E6Mjp7czo0OiJmcm9tIjtzOjU0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL3l1YW5nX3dhaWJ1X3F1ZGFvX2luZm8iO3M6MjoidG8iO3M6MzA6Im1vZHVsZXMveXVhbmdfd2FpYnVfcXVkYW9faW5mbyI7fWk6MzthOjI6e3M6NDoiZnJvbSI7czo1MzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy95dWFuZ195dWFuZ29uZ19ndWFubGkiO3M6MjoidG8iO3M6Mjk6Im1vZHVsZXMveXVhbmdfeXVhbmdvbmdfZ3VhbmxpIjt9fXM6ODoibGFuZ3VhZ2UiO2E6Mjp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi96aF9jbi5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InpoX2NuIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2015-05-01 03:51:47', 1),
('86336df3-a588-49f6-2304-5542d16e1b69', 'upload/upgrades/module/_fix_sugarcrm6.5.X_module_selfReferencing_bug__version2.0.zip', 'c25933f41bd6d27539d29c37cbc088e3', 'module', 'installed', '2', 'fix_sugarcrm6510_self_referencing', 'Fix SugarCRM 6.5.10 module-self_referencing-bug', 'fix_sugarcrm6510_self_referencing', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEyOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6NDoiYXNvbCI7czo2OiJhdXRob3IiO3M6OToiQWxpbmVhU29sIjtzOjExOiJkZXNjcmlwdGlvbiI7czo0NzoiRml4IFN1Z2FyQ1JNIDYuNS4xMCBtb2R1bGUtc2VsZl9yZWZlcmVuY2luZy1idWciO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6MzM6ImZpeF9zdWdhcmNybTY1MTBfc2VsZl9yZWZlcmVuY2luZyI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTA6IjIwMTMtMDItMTgiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7ZDoyO31zOjExOiJpbnN0YWxsZGVmcyI7YTo1OntzOjI6ImlkIjtzOjMzOiJmaXhfc3VnYXJjcm02NTEwX3NlbGZfcmVmZXJlbmNpbmciO3M6NToiYmVhbnMiO2E6MDp7fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6NDoiY29weSI7YTozOntpOjA7YToyOntzOjQ6ImZyb20iO3M6MzY6IjxiYXNlcGF0aD4vZmlsZXMvTTJNUmVsYXRpb25zaGlwLnBocCI7czoyOiJ0byI7czozODoiZGF0YS9SZWxhdGlvbnNoaXBzL00yTVJlbGF0aW9uc2hpcC5waHAiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6MjY6IjxiYXNlcGF0aD4vZmlsZXMvTGluazIucGhwIjtzOjI6InRvIjtzOjE0OiJkYXRhL0xpbmsyLnBocCI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czozODoiPGJhc2VwYXRoPi9maWxlcy9PbmUyTVJlbGF0aW9uc2hpcC5waHAiO3M6MjoidG8iO3M6NDA6ImRhdGEvUmVsYXRpb25zaGlwcy9PbmUyTVJlbGF0aW9uc2hpcC5waHAiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2015-05-01 01:05:50', 1),
('97ce03cd-9bfd-57ae-cf84-5542d19c59de', 'upload/upgrades/langpack/SugarCRM-LangPack-zh_cn-6.5.2.zip', '2e78ad1c858adb9cd82dcf71f249a7f1', 'langpack', 'installed', '6.5.2', 'SugarCRM简体中文语言包（Simplified Chinese Language Pack）', 'SugarCRM简体中文语言包（Simplified Chinese Language Pack）6.5.2', 'zh_cn', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEwOntpOjA7YToyOntzOjEzOiJleGFjdF9tYXRjaGVzIjthOjA6e31zOjEzOiJyZWdleF9tYXRjaGVzIjthOjE6e2k6MDtzOjg6IjZcLjVcLjA/Ijt9fXM6MjQ6ImFjY2VwdGFibGVfc3VnYXJfZmxhdm9ycyI7YTozOntpOjA7czoyOiJDRSI7aToxO3M6MzoiUFJPIjtpOjI7czozOiJFTlQiO31zOjQ6Im5hbWUiO3M6Njc6IlN1Z2FyQ1JN566A5L2T5Lit5paH6K+t6KiA5YyF77yIU2ltcGxpZmllZCBDaGluZXNlIExhbmd1YWdlIFBhY2vvvIkiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjcyOiJTdWdhckNSTeeugOS9k+S4reaWh+ivreiogOWMhe+8iFNpbXBsaWZpZWQgQ2hpbmVzZSBMYW5ndWFnZSBQYWNr77yJNi41LjIiO3M6NjoiYXV0aG9yIjtzOjE2OiJoaWxlb25AZ21haWwuY29tIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxMDoiMjAxMi8wNy8zMSI7czo3OiJ2ZXJzaW9uIjtzOjU6IjYuNS4yIjtzOjQ6InR5cGUiO3M6ODoibGFuZ3BhY2siO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTt9czoxMToiaW5zdGFsbGRlZnMiO2E6Mzp7czoyOiJpZCI7czo1OiJ6aF9jbiI7czo0OiJjb3B5IjthOjM6e2k6MDthOjI6e3M6NDoiZnJvbSI7czoxODoiPGJhc2VwYXRoPi9tb2R1bGVzIjtzOjI6InRvIjtzOjc6Im1vZHVsZXMiO31pOjE7YToxOntzOjQ6ImZyb20iO3M6Mjc6IjxiYXNlcGF0aD4vaW5jbHVkZS9sYW5ndWFnZSI7fXM6MjoidG8iO3M6MTY6ImluY2x1ZGUvbGFuZ3VhZ2UiO31pOjA7YToyOntzOjQ6ImZyb20iO3M6Mjc6IjxiYXNlcGF0aD4vaW5zdGFsbC9sYW5ndWFnZSI7czoyOiJ0byI7czoxNjoiaW5zdGFsbC9sYW5ndWFnZSI7fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2015-05-01 01:07:21', 1),
('ad9564ea-0822-a217-717c-55436427a62a', 'upload/upgrades/module/fzglsys_fangkuang_liucheng_module2015_05_01_133321.zip', 'c647956921dcca612498b8b52a89fe31', 'module', 'installed', '1430480001', 'fzglsys_fangkuang_liucheng_module', 'fzglsys_fangkuang_liucheng_module', 'fzglsys_fangkuang_liucheng_module', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6NToibGl1Y2giO3M6NjoiYXV0aG9yIjtzOjA6IiI7czoxMToiZGVzY3JpcHRpb24iO3M6MzM6ImZ6Z2xzeXNfZmFuZ2t1YW5nX2xpdWNoZW5nX21vZHVsZSI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czozMzoiZnpnbHN5c19mYW5na3VhbmdfbGl1Y2hlbmdfbW9kdWxlIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxNS0wNS0wMSAxMTozMzoyMSI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE0MzA0ODAwMDE7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjMzOiJmemdsc3lzX2ZhbmdrdWFuZ19saXVjaGVuZ19tb2R1bGUiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MjQ6ImxpdWNoX2ZhbmdrdWFuZ19saXVjaGVuZyI7czo1OiJjbGFzcyI7czoyNDoibGl1Y2hfZmFuZ2t1YW5nX2xpdWNoZW5nIjtzOjQ6InBhdGgiO3M6NjE6Im1vZHVsZXMvbGl1Y2hfZmFuZ2t1YW5nX2xpdWNoZW5nL2xpdWNoX2ZhbmdrdWFuZ19saXVjaGVuZy5waHAiO3M6MzoidGFiIjtiOjE7fX1zOjEwOiJsYXlvdXRkZWZzIjthOjA6e31zOjEzOiJyZWxhdGlvbnNoaXBzIjthOjA6e31zOjk6ImltYWdlX2RpciI7czoxNjoiPGJhc2VwYXRoPi9pY29ucyI7czo0OiJjb3B5IjthOjE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo1NjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9saXVjaF9mYW5na3VhbmdfbGl1Y2hlbmciO3M6MjoidG8iO3M6MzI6Im1vZHVsZXMvbGl1Y2hfZmFuZ2t1YW5nX2xpdWNoZW5nIjt9fXM6ODoibGFuZ3VhZ2UiO2E6Mjp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi96aF9jbi5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InpoX2NuIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2015-05-01 11:33:21', 1),
('adff638b-e355-7a41-857e-5542d02c4c80', 'upload/upgrades/module/AlineaSolUninstallableAsolModulesPatch_v1.0.zip', 'aafb9696add069ea169266e3e2bb6a3e', 'module', 'installed', '1.0', 'AlineaSol Uninstallable Modules Patch', 'AlineaSol: This module fixes a problem with AlineaSol Modules and Uninstalling Button', 'AlineaSolUninstallableModulesPatch', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEwOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MDp7fXM6MjU6ImFjY2VwdGFibGVfc3VnYXJfdmVyc2lvbnMiO2E6MDp7fXM6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6Mzc6IkFsaW5lYVNvbCBVbmluc3RhbGxhYmxlIE1vZHVsZXMgUGF0Y2giO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjg1OiJBbGluZWFTb2w6IFRoaXMgbW9kdWxlIGZpeGVzIGEgcHJvYmxlbSB3aXRoIEFsaW5lYVNvbCBNb2R1bGVzIGFuZCBVbmluc3RhbGxpbmcgQnV0dG9uIjtzOjY6ImF1dGhvciI7czo5OiJBbGluZWFTb2wiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjEwOiIyMDEyLzAyLzA2IjtzOjc6InZlcnNpb24iO3M6MzoiMS4wIjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjQ6Imljb24iO3M6MDoiIjt9czoxMToiaW5zdGFsbGRlZnMiO2E6Mzp7czoyOiJpZCI7czozNDoiQWxpbmVhU29sVW5pbnN0YWxsYWJsZU1vZHVsZXNQYXRjaCI7czoxMjoicG9zdF9leGVjdXRlIjthOjE6e2k6MDtzOjM1OiI8YmFzZXBhdGg+L2FjdGlvbnMvcG9zdF9pbnN0YWxsLnBocCI7fXM6MTQ6InBvc3RfdW5pbnN0YWxsIjthOjE6e2k6MDtzOjM3OiI8YmFzZXBhdGg+L2FjdGlvbnMvcG9zdF91bmluc3RhbGwucGhwIjt9fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2015-05-01 00:59:31', 1),
('cd0f9f9a-f00e-d747-f854-5542d004ea78', 'upload/upgrades/module/AlineaSolPublishHomePage_Community_v4.3.zip', '744d7f6d04689a4fa675264badb1e84b', 'module', 'installed', '4.3', 'AlineaSol Publish Homepage', 'AlineaSol Publish Homepage', 'AlineaSolPublishHomePage', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6MjQ6ImFjY2VwdGFibGVfc3VnYXJfZmxhdm9ycyI7YTowOnt9czo0OiJuYW1lIjtzOjI2OiJBbGluZWFTb2wgUHVibGlzaCBIb21lcGFnZSI7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjI2OiJBbGluZWFTb2wgUHVibGlzaCBIb21lcGFnZSI7czo2OiJhdXRob3IiO3M6OToiQWxpbmVhU29sIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxMDoiMjAxNS8wMi8wNCI7czo3OiJ2ZXJzaW9uIjtzOjM6IjQuMyI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjI0OiJBbGluZWFTb2xQdWJsaXNoSG9tZVBhZ2UiO3M6NDoiY29weSI7YToyOntpOjA7YToyOntzOjQ6ImZyb20iO3M6MTk6IjxiYXNlcGF0aD4vbW9kdWxlcy8iO3M6MjoidG8iO3M6ODoibW9kdWxlcy8iO31pOjE7YToyOntzOjQ6ImZyb20iO3M6MTg6IjxiYXNlcGF0aD4vY3VzdG9tLyI7czoyOiJ0byI7czo3OiJjdXN0b20vIjt9fXM6ODoibGFuZ3VhZ2UiO2E6Mzp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjM0OiI8YmFzZXBhdGg+L2xhbmd1YWdlL2VuX3VzLmhvbWUucGhwIjtzOjk6InRvX21vZHVsZSI7czo0OiJIb21lIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjM0OiI8YmFzZXBhdGg+L2xhbmd1YWdlL3NwX3ZlLmhvbWUucGhwIjtzOjk6InRvX21vZHVsZSI7czo0OiJIb21lIjtzOjg6Imxhbmd1YWdlIjtzOjU6InNwX3ZlIjt9aToyO2E6Mzp7czo0OiJmcm9tIjtzOjM0OiI8YmFzZXBhdGg+L2xhbmd1YWdlL2VzX2VzLmhvbWUucGhwIjtzOjk6InRvX21vZHVsZSI7czo0OiJIb21lIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVzX2VzIjt9fXM6MTE6InByZV9leGVjdXRlIjthOjE6e2k6MDtzOjM0OiI8YmFzZXBhdGg+L2FjdGlvbnMvcHJlX2luc3RhbGwucGhwIjt9czoxMjoicG9zdF9leGVjdXRlIjthOjE6e2k6MDtzOjM1OiI8YmFzZXBhdGg+L2FjdGlvbnMvcG9zdF9pbnN0YWxsLnBocCI7fXM6MTM6InByZV91bmluc3RhbGwiO2E6MTp7aTowO3M6MzY6IjxiYXNlcGF0aD4vYWN0aW9ucy9wcmVfdW5pbnN0YWxsLnBocCI7fXM6MTQ6InBvc3RfdW5pbnN0YWxsIjthOjE6e2k6MDtzOjM3OiI8YmFzZXBhdGg+L2FjdGlvbnMvcG9zdF91bmluc3RhbGwucGhwIjt9fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2015-05-01 01:01:13', 1),
('dfb99b6e-59a4-53d9-9f43-5542d0627ab5', 'upload/upgrades/module/AlineaSolWorkFlowManager_Community_v5.1.zip', 'c84504c37169ccfbff3d3cb2c33f345a', 'module', 'installed', '5.1', 'AlineaSol WorkFlowManager - Community Edition', 'You do not need to uninstall previous WFM version. Please, see README.txt', 'AlineaSolWorkFlowManager', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjE0OntzOjE2OiJidWlsdF9pbl92ZXJzaW9uIjtzOjc6IjcuNS4wLjAiO3M6MjU6ImFjY2VwdGFibGVfc3VnYXJfdmVyc2lvbnMiO2E6MTp7aTowO3M6MDoiIjt9czoyNDoiYWNjZXB0YWJsZV9zdWdhcl9mbGF2b3JzIjthOjU6e2k6MDtzOjI6IkNFIjtpOjE7czozOiJQUk8iO2k6MjtzOjM6IkVOVCI7aTozO3M6NDoiQ09SUCI7aTo0O3M6MzoiVUxUIjt9czo2OiJyZWFkbWUiO3M6MDoiIjtzOjM6ImtleSI7czo0OiJhc29sIjtzOjY6ImF1dGhvciI7czo5OiJBbGluZWFTb2wiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjczOiJZb3UgZG8gbm90IG5lZWQgdG8gdW5pbnN0YWxsIHByZXZpb3VzIFdGTSB2ZXJzaW9uLiBQbGVhc2UsIHNlZSBSRUFETUUudHh0IjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjQ1OiJBbGluZWFTb2wgV29ya0Zsb3dNYW5hZ2VyIC0gQ29tbXVuaXR5IEVkaXRpb24iO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjEwOiIyMDE1LTAxLTIxIjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO3M6MzoiNS4xIjtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjEyOntzOjI6ImlkIjtzOjI0OiJBbGluZWFTb2xXb3JrRmxvd01hbmFnZXIiO3M6NToiYmVhbnMiO2E6ODp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MTM6ImFzb2xfQWN0aXZpdHkiO3M6NToiY2xhc3MiO3M6MTM6ImFzb2xfQWN0aXZpdHkiO3M6NDoicGF0aCI7czozOToibW9kdWxlcy9hc29sX0FjdGl2aXR5L2Fzb2xfQWN0aXZpdHkucGhwIjtzOjM6InRhYiI7YjowO31pOjE7YTo0OntzOjY6Im1vZHVsZSI7czoxMToiYXNvbF9FdmVudHMiO3M6NToiY2xhc3MiO3M6MTE6ImFzb2xfRXZlbnRzIjtzOjQ6InBhdGgiO3M6MzU6Im1vZHVsZXMvYXNvbF9FdmVudHMvYXNvbF9FdmVudHMucGhwIjtzOjM6InRhYiI7YjowO31pOjI7YTo0OntzOjY6Im1vZHVsZSI7czoxMToiYXNvbF9PbkhvbGQiO3M6NToiY2xhc3MiO3M6MTE6ImFzb2xfT25Ib2xkIjtzOjQ6InBhdGgiO3M6MzU6Im1vZHVsZXMvYXNvbF9PbkhvbGQvYXNvbF9PbkhvbGQucGhwIjtzOjM6InRhYiI7YjowO31pOjM7YTo0OntzOjY6Im1vZHVsZSI7czoxMjoiYXNvbF9Qcm9jZXNzIjtzOjU6ImNsYXNzIjtzOjEyOiJhc29sX1Byb2Nlc3MiO3M6NDoicGF0aCI7czozNzoibW9kdWxlcy9hc29sX1Byb2Nlc3MvYXNvbF9Qcm9jZXNzLnBocCI7czozOiJ0YWIiO2I6MTt9aTo0O2E6NDp7czo2OiJtb2R1bGUiO3M6MjE6ImFzb2xfUHJvY2Vzc0luc3RhbmNlcyI7czo1OiJjbGFzcyI7czoyMToiYXNvbF9Qcm9jZXNzSW5zdGFuY2VzIjtzOjQ6InBhdGgiO3M6NTU6Im1vZHVsZXMvYXNvbF9Qcm9jZXNzSW5zdGFuY2VzL2Fzb2xfUHJvY2Vzc0luc3RhbmNlcy5waHAiO3M6MzoidGFiIjtiOjA7fWk6NTthOjQ6e3M6NjoibW9kdWxlIjtzOjk6ImFzb2xfVGFzayI7czo1OiJjbGFzcyI7czo5OiJhc29sX1Rhc2siO3M6NDoicGF0aCI7czozMToibW9kdWxlcy9hc29sX1Rhc2svYXNvbF9UYXNrLnBocCI7czozOiJ0YWIiO2I6MDt9aTo2O2E6NDp7czo2OiJtb2R1bGUiO3M6MTc6ImFzb2xfV29ya2luZ05vZGVzIjtzOjU6ImNsYXNzIjtzOjE3OiJhc29sX1dvcmtpbmdOb2RlcyI7czo0OiJwYXRoIjtzOjQ3OiJtb2R1bGVzL2Fzb2xfV29ya2luZ05vZGVzL2Fzb2xfV29ya2luZ05vZGVzLnBocCI7czozOiJ0YWIiO2I6MDt9aTo3O2E6NDp7czo2OiJtb2R1bGUiO3M6MjY6ImFzb2xfV29ya0Zsb3dNYW5hZ2VyQ29tbW9uIjtzOjU6ImNsYXNzIjtzOjI2OiJhc29sX1dvcmtGbG93TWFuYWdlckNvbW1vbiI7czo0OiJwYXRoIjtzOjY1OiJtb2R1bGVzL2Fzb2xfV29ya0Zsb3dNYW5hZ2VyQ29tbW9uL2Fzb2xfV29ya0Zsb3dNYW5hZ2VyQ29tbW9uLnBocCI7czozOiJ0YWIiO2I6MDt9fXM6MTA6ImxheW91dGRlZnMiO2E6ODp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjkwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xheW91dGRlZnMvYXNvbF9ldmVudHNfYXNvbF9hY3Rpdml0eV9hc29sX0V2ZW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhc29sX0V2ZW50cyI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo5MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL2Fzb2xfcHJvY2Vzc19hc29sX2V2ZW50c19hc29sX1Byb2Nlc3MucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMjoiYXNvbF9Qcm9jZXNzIjt9aToyO2E6Mjp7czo0OiJmcm9tIjtzOjk0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xheW91dGRlZnMvYXNvbF9hY3Rpdml0eV9hc29sX2FjdGl2aXR5X2Fzb2xfQWN0aXZpdHkucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiYXNvbF9BY3Rpdml0eSI7fWk6MzthOjI6e3M6NDoiZnJvbSI7czo5MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL2Fzb2xfYWN0aXZpdHlfYXNvbF90YXNrX2Fzb2xfQWN0aXZpdHkucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiYXNvbF9BY3Rpdml0eSI7fWk6NDthOjI6e3M6NDoiZnJvbSI7czo5MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL2Fzb2xfZXZlbnRzX2Fzb2xfYWN0aXZpdHlfYXNvbF9BY3Rpdml0eS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJhc29sX0FjdGl2aXR5Ijt9aTo3O2E6Mjp7czo0OiJmcm9tIjtzOjkyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xheW91dGRlZnMvYXNvbF9wcm9jZXNzX2Fzb2xfZXZlbnRzXzFfYXNvbF9Qcm9jZXNzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6ImFzb2xfUHJvY2VzcyI7fWk6ODthOjI6e3M6NDoiZnJvbSI7czo5MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL2Fzb2xfcHJvY2Vzc19hc29sX2FjdGl2aXR5X2Fzb2xfUHJvY2Vzcy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJhc29sX1Byb2Nlc3MiO31pOjk7YToyOntzOjQ6ImZyb20iO3M6ODg6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGF5b3V0ZGVmcy9hc29sX3Byb2Nlc3NfYXNvbF90YXNrX2Fzb2xfUHJvY2Vzcy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJhc29sX1Byb2Nlc3MiO319czoxMzoicmVsYXRpb25zaGlwcyI7YTo3OntpOjA7YToxOntzOjk6Im1ldGFfZGF0YSI7czo4OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9yZWxhdGlvbnNoaXBzL2Fzb2xfZXZlbnRzX2Fzb2xfYWN0aXZpdHlNZXRhRGF0YS5waHAiO31pOjE7YToxOntzOjk6Im1ldGFfZGF0YSI7czo4ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9yZWxhdGlvbnNoaXBzL2Fzb2xfcHJvY2Vzc19hc29sX2V2ZW50c01ldGFEYXRhLnBocCI7fWk6MjthOjE6e3M6OToibWV0YV9kYXRhIjtzOjkxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3JlbGF0aW9uc2hpcHMvYXNvbF9hY3Rpdml0eV9hc29sX2FjdGl2aXR5TWV0YURhdGEucGhwIjt9aTozO2E6MTp7czo5OiJtZXRhX2RhdGEiO3M6ODc6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvcmVsYXRpb25zaGlwcy9hc29sX2FjdGl2aXR5X2Fzb2xfdGFza01ldGFEYXRhLnBocCI7fWk6NTthOjE6e3M6OToibWV0YV9kYXRhIjtzOjkwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3JlbGF0aW9uc2hpcHMvYXNvbF9wcm9jZXNzX2Fzb2xfZXZlbnRzXzFNZXRhRGF0YS5waHAiO31pOjY7YToxOntzOjk6Im1ldGFfZGF0YSI7czo5MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9yZWxhdGlvbnNoaXBzL2Fzb2xfcHJvY2Vzc19hc29sX2FjdGl2aXR5TWV0YURhdGEucGhwIjt9aTo3O2E6MTp7czo5OiJtZXRhX2RhdGEiO3M6ODY6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvcmVsYXRpb25zaGlwcy9hc29sX3Byb2Nlc3NfYXNvbF90YXNrTWV0YURhdGEucGhwIjt9fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTA6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo0NToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9hc29sX0FjdGl2aXR5IjtzOjI6InRvIjtzOjIxOiJtb2R1bGVzL2Fzb2xfQWN0aXZpdHkiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6NDM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvYXNvbF9FdmVudHMiO3M6MjoidG8iO3M6MTk6Im1vZHVsZXMvYXNvbF9FdmVudHMiO31pOjI7YToyOntzOjQ6ImZyb20iO3M6NDM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvYXNvbF9PbkhvbGQiO3M6MjoidG8iO3M6MTk6Im1vZHVsZXMvYXNvbF9PbkhvbGQiO31pOjM7YToyOntzOjQ6ImZyb20iO3M6NDQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvYXNvbF9Qcm9jZXNzIjtzOjI6InRvIjtzOjIwOiJtb2R1bGVzL2Fzb2xfUHJvY2VzcyI7fWk6NDthOjI6e3M6NDoiZnJvbSI7czo1MzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9hc29sX1Byb2Nlc3NJbnN0YW5jZXMiO3M6MjoidG8iO3M6Mjk6Im1vZHVsZXMvYXNvbF9Qcm9jZXNzSW5zdGFuY2VzIjt9aTo1O2E6Mjp7czo0OiJmcm9tIjtzOjQxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2Fzb2xfVGFzayI7czoyOiJ0byI7czoxNzoibW9kdWxlcy9hc29sX1Rhc2siO31pOjY7YToyOntzOjQ6ImZyb20iO3M6NDk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvYXNvbF9Xb3JraW5nTm9kZXMiO3M6MjoidG8iO3M6MjU6Im1vZHVsZXMvYXNvbF9Xb3JraW5nTm9kZXMiO31pOjc7YToyOntzOjQ6ImZyb20iO3M6MTc6IjxiYXNlcGF0aD4vY3VzdG9tIjtzOjI6InRvIjtzOjY6ImN1c3RvbSI7fWk6ODthOjI6e3M6NDoiZnJvbSI7czozOToiPGJhc2VwYXRoPi9pbmNsdWRlL2dlbmVyaWMvU3VnYXJXaWRnZXRzIjtzOjI6InRvIjtzOjI4OiJpbmNsdWRlL2dlbmVyaWMvU3VnYXJXaWRnZXRzIjt9aTo5O2E6Mjp7czo0OiJmcm9tIjtzOjU4OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2Fzb2xfV29ya0Zsb3dNYW5hZ2VyQ29tbW9uIjtzOjI6InRvIjtzOjM0OiJtb2R1bGVzL2Fzb2xfV29ya0Zsb3dNYW5hZ2VyQ29tbW9uIjt9fXM6ODoibGFuZ3VhZ2UiO2E6MTg6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo3MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lbl91cy5hc29sX0FjdGl2aXR5LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTM6ImFzb2xfQWN0aXZpdHkiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6Njg6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZW5fdXMuYXNvbF9FdmVudHMucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXNvbF9FdmVudHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjI7YTozOntzOjQ6ImZyb20iO3M6Njk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZW5fdXMuYXNvbF9Qcm9jZXNzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6ImFzb2xfUHJvY2VzcyI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MzthOjM6e3M6NDoiZnJvbSI7czo2NjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lbl91cy5hc29sX1Rhc2sucGhwIjtzOjk6InRvX21vZHVsZSI7czo5OiJhc29sX1Rhc2siO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjQ7YTozOntzOjQ6ImZyb20iO3M6Njc6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLkFsaW5lYVNvbFdGTS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6NTthOjM6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9sYW5ndWFnZS9lbl91cy5hZG1pbmlzdHJhdGlvbi5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTA7YTozOntzOjQ6ImZyb20iO3M6NzA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2Uvc3BfdmUuYXNvbF9BY3Rpdml0eS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJhc29sX0FjdGl2aXR5IjtzOjg6Imxhbmd1YWdlIjtzOjU6InNwX3ZlIjt9aToxMTthOjM6e3M6NDoiZnJvbSI7czo2ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9zcF92ZS5hc29sX0V2ZW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhc29sX0V2ZW50cyI7czo4OiJsYW5ndWFnZSI7czo1OiJzcF92ZSI7fWk6MTI7YTozOntzOjQ6ImZyb20iO3M6Njk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2Uvc3BfdmUuYXNvbF9Qcm9jZXNzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6ImFzb2xfUHJvY2VzcyI7czo4OiJsYW5ndWFnZSI7czo1OiJzcF92ZSI7fWk6MTM7YTozOntzOjQ6ImZyb20iO3M6NjY6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2Uvc3BfdmUuYXNvbF9UYXNrLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6OToiYXNvbF9UYXNrIjtzOjg6Imxhbmd1YWdlIjtzOjU6InNwX3ZlIjt9aToxNDthOjM6e3M6NDoiZnJvbSI7czo2NzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vc3BfdmUuQWxpbmVhU29sV0ZNLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InNwX3ZlIjt9aToxNTthOjM6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9sYW5ndWFnZS9zcF92ZS5hZG1pbmlzdHJhdGlvbi5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJzcF92ZSI7fWk6MjA7YTozOntzOjQ6ImZyb20iO3M6NzA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZnJfRlIuYXNvbF9BY3Rpdml0eS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJhc29sX0FjdGl2aXR5IjtzOjg6Imxhbmd1YWdlIjtzOjU6ImZyX0ZSIjt9aToyMTthOjM6e3M6NDoiZnJvbSI7czo2ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9mcl9GUi5hc29sX0V2ZW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhc29sX0V2ZW50cyI7czo4OiJsYW5ndWFnZSI7czo1OiJmcl9GUiI7fWk6MjI7YTozOntzOjQ6ImZyb20iO3M6Njk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZnJfRlIuYXNvbF9Qcm9jZXNzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6ImFzb2xfUHJvY2VzcyI7czo4OiJsYW5ndWFnZSI7czo1OiJmcl9GUiI7fWk6MjM7YTozOntzOjQ6ImZyb20iO3M6NjY6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZnJfRlIuYXNvbF9UYXNrLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6OToiYXNvbF9UYXNrIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImZyX0ZSIjt9aToyNDthOjM6e3M6NDoiZnJvbSI7czo2NzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZnJfRlIuQWxpbmVhU29sV0ZNLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImZyX0ZSIjt9aToyNTthOjM6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9sYW5ndWFnZS9mcl9GUi5hZG1pbmlzdHJhdGlvbi5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJmcl9GUiI7fX1zOjc6InZhcmRlZnMiO2E6MTM6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo4OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2Fzb2xfZXZlbnRzX2Fzb2xfYWN0aXZpdHlfYXNvbF9BY3Rpdml0eS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJhc29sX0FjdGl2aXR5Ijt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjg3OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvYXNvbF9ldmVudHNfYXNvbF9hY3Rpdml0eV9hc29sX0V2ZW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhc29sX0V2ZW50cyI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czo4NjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2Fzb2xfcHJvY2Vzc19hc29sX2V2ZW50c19hc29sX0V2ZW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhc29sX0V2ZW50cyI7fWk6MzthOjI6e3M6NDoiZnJvbSI7czo4NzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2Fzb2xfcHJvY2Vzc19hc29sX2V2ZW50c19hc29sX1Byb2Nlc3MucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMjoiYXNvbF9Qcm9jZXNzIjt9aTo0O2E6Mjp7czo0OiJmcm9tIjtzOjkxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvYXNvbF9hY3Rpdml0eV9hc29sX2FjdGl2aXR5X2Fzb2xfQWN0aXZpdHkucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiYXNvbF9BY3Rpdml0eSI7fWk6NTthOjI6e3M6NDoiZnJvbSI7czo4NzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2Fzb2xfYWN0aXZpdHlfYXNvbF90YXNrX2Fzb2xfQWN0aXZpdHkucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiYXNvbF9BY3Rpdml0eSI7fWk6NjthOjI6e3M6NDoiZnJvbSI7czo4MzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2Fzb2xfYWN0aXZpdHlfYXNvbF90YXNrX2Fzb2xfVGFzay5waHAiO3M6OToidG9fbW9kdWxlIjtzOjk6ImFzb2xfVGFzayI7fWk6OTthOjI6e3M6NDoiZnJvbSI7czo4ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2Fzb2xfcHJvY2Vzc19hc29sX2V2ZW50c18xX2Fzb2xfRXZlbnRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFzb2xfRXZlbnRzIjt9aToxMDthOjI6e3M6NDoiZnJvbSI7czo4OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2Fzb2xfcHJvY2Vzc19hc29sX2V2ZW50c18xX2Fzb2xfUHJvY2Vzcy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJhc29sX1Byb2Nlc3MiO31pOjExO2E6Mjp7czo0OiJmcm9tIjtzOjkwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvYXNvbF9wcm9jZXNzX2Fzb2xfYWN0aXZpdHlfYXNvbF9BY3Rpdml0eS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJhc29sX0FjdGl2aXR5Ijt9aToxMjthOjI6e3M6NDoiZnJvbSI7czo4OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2Fzb2xfcHJvY2Vzc19hc29sX2FjdGl2aXR5X2Fzb2xfUHJvY2Vzcy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJhc29sX1Byb2Nlc3MiO31pOjEzO2E6Mjp7czo0OiJmcm9tIjtzOjgyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvYXNvbF9wcm9jZXNzX2Fzb2xfdGFza19hc29sX1Rhc2sucGhwIjtzOjk6InRvX21vZHVsZSI7czo5OiJhc29sX1Rhc2siO31pOjE0O2E6Mjp7czo0OiJmcm9tIjtzOjg1OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvYXNvbF9wcm9jZXNzX2Fzb2xfdGFza19hc29sX1Byb2Nlc3MucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMjoiYXNvbF9Qcm9jZXNzIjt9fXM6MTI6ImxheW91dGZpZWxkcyI7YTozOntpOjA7YToxOntzOjE3OiJhZGRpdGlvbmFsX2ZpZWxkcyI7YTowOnt9fWk6MTthOjE6e3M6MTc6ImFkZGl0aW9uYWxfZmllbGRzIjthOjA6e319aToyO2E6MTp7czoxNzoiYWRkaXRpb25hbF9maWVsZHMiO2E6MDp7fX19czoxMToicHJlX2V4ZWN1dGUiO2E6MTp7aTowO3M6MzQ6IjxiYXNlcGF0aD4vYWN0aW9ucy9wcmVfaW5zdGFsbC5waHAiO31zOjEyOiJwb3N0X2V4ZWN1dGUiO2E6MTp7aTowO3M6MzU6IjxiYXNlcGF0aD4vYWN0aW9ucy9wb3N0X2luc3RhbGwucGhwIjt9czoxNDoicG9zdF91bmluc3RhbGwiO2E6MTp7aTowO3M6Mzc6IjxiYXNlcGF0aD4vYWN0aW9ucy9wb3N0X3VuaW5zdGFsbC5waHAiO319czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2015-05-01 01:01:39', 1),
('ee464fca-d00c-a87d-f933-5542cf965913', 'upload/upgrades/module/AlineaSolCommonBase_v1.3.zip', '8dd396b2ac5412e95a0458bb5d55214b', 'module', 'installed', '1.3', 'AlineaSol Common Base', '', 'AlineaSolCommonBase', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjA6e31zOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9czo2OiJyZWFkbWUiO3M6MDoiIjtzOjM6ImtleSI7czo0OiJhc29sIjtzOjY6ImF1dGhvciI7czo5OiJBbGluZWFTb2wiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoyMToiQWxpbmVhU29sIENvbW1vbiBCYXNlIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxMDoiMjAxNC0wOC0yOCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtzOjM6IjEuMyI7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YToxMDp7czoyOiJpZCI7czoxOToiQWxpbmVhU29sQ29tbW9uQmFzZSI7czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToyOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDY6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQWRtaW5pc3RyYXRpb24iO3M6MjoidG8iO3M6MjI6Im1vZHVsZXMvQWRtaW5pc3RyYXRpb24iO31pOjE7YToyOntzOjQ6ImZyb20iO3M6MTc6IjxiYXNlcGF0aD4vY3VzdG9tIjtzOjI6InRvIjtzOjY6ImN1c3RvbSI7fX1zOjg6Imxhbmd1YWdlIjthOjU6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9sYW5ndWFnZS9lbl91cy5hZG1pbmlzdHJhdGlvbi5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9sYW5ndWFnZS9zcF92ZS5hZG1pbmlzdHJhdGlvbi5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJzcF92ZSI7fWk6MjthOjM6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9sYW5ndWFnZS9lc19lcy5hZG1pbmlzdHJhdGlvbi5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlc19lcyI7fWk6MzthOjM6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9sYW5ndWFnZS9mcl9GUi5hZG1pbmlzdHJhdGlvbi5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJmcl9GUiI7fWk6NDthOjM6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9sYW5ndWFnZS9wdF9QVC5hZG1pbmlzdHJhdGlvbi5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJwdF9QVCI7fX1zOjExOiJwcmVfZXhlY3V0ZSI7YToxOntpOjA7czozNDoiPGJhc2VwYXRoPi9hY3Rpb25zL3ByZV9pbnN0YWxsLnBocCI7fXM6MTI6InBvc3RfZXhlY3V0ZSI7YToxOntpOjA7czozNToiPGJhc2VwYXRoPi9hY3Rpb25zL3Bvc3RfaW5zdGFsbC5waHAiO31zOjEzOiJwcmVfdW5pbnN0YWxsIjthOjE6e2k6MDtzOjM2OiI8YmFzZXBhdGg+L2FjdGlvbnMvcHJlX3VuaW5zdGFsbC5waHAiO31zOjE0OiJwb3N0X3VuaW5zdGFsbCI7YToxOntpOjA7czozNzoiPGJhc2VwYXRoPi9hY3Rpb25zL3Bvc3RfdW5pbnN0YWxsLnBocCI7fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2015-05-01 00:58:46', 1);

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
  `last_name` varchar(30) DEFAULT NULL,
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
('1', 'admin', '$1$LG9yy5X9$rSJ6LCxGD.7nPf2R/e7bb1', 0, NULL, NULL, 1, 'Cao', 'Jeff', 1, 0, 1, NULL, '2015-04-30 23:59:51', '2015-05-02 02:20:17', '1', '', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0),
('880d930e-94ac-ba6d-2144-554434911d8e', 'mengjun', '$1$0FBxzrop$S45BPOmTStz4I080DxJ2o.', 1, '2015-05-02 02:21:00', NULL, 1, '孟', '军', 0, 0, 1, NULL, '2015-05-02 02:21:37', '2015-05-02 02:38:24', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `users_cstm`
--

DROP TABLE IF EXISTS `users_cstm`;
CREATE TABLE IF NOT EXISTS `users_cstm` (
  `id_c` char(36) NOT NULL,
  `gangwei_leixin_c` varchar(100) DEFAULT 'xindai_guwen',
  `gonghao_c` varchar(255) DEFAULT NULL,
  `butie_c` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `jixiao_c` decimal(26,6) DEFAULT NULL,
  `gongzi_c` decimal(26,6) DEFAULT NULL,
  `shengfenzheng_hao_c` varchar(255) DEFAULT NULL,
  `yuang_bumen_info_id_c` char(36) DEFAULT NULL,
  `yuang_fengongsi_info_id_c` char(36) DEFAULT NULL,
  `xiebie_c` varchar(100) DEFAULT 'nan',
  `zaizhi_zhuangtai_c` varchar(100) DEFAULT 'yi_lizhi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users_cstm`
--

INSERT INTO `users_cstm` (`id_c`, `gangwei_leixin_c`, `gonghao_c`, `butie_c`, `currency_id`, `jixiao_c`, `gongzi_c`, `shengfenzheng_hao_c`, `yuang_bumen_info_id_c`, `yuang_fengongsi_info_id_c`, `xiebie_c`, `zaizhi_zhuangtai_c`) VALUES
('1', 'xindai_guwen', 'nj0025', NULL, '', NULL, NULL, '', 'd555c22f-ddbd-7436-7927-55435e310057', '59c880e4-3a36-c1c3-7310-55435e848c0a', 'nan', 'zaizhi'),
('880d930e-94ac-ba6d-2144-554434911d8e', 'fengkong_jingli', '64646', NULL, '', NULL, NULL, '64646', 'd555c22f-ddbd-7436-7927-55435e310057', '59c880e4-3a36-c1c3-7310-55435e848c0a', 'nan', 'yi_lizhi');

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
('110a0743-a5fa-2f02-02a3-5544569e6bda', 'liuch_fangkuang_liucheng2_LIUCH_FANGKUANG_LIUCHENG', 0, '2015-05-02 04:43:43', '2015-05-02 04:43:43', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('13b60c3d-e185-3b44-91a3-5542c20d5edc', 'global', 0, '2015-04-30 23:59:51', '2015-05-01 12:07:55', '1', 'YToyODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImNhZjAwZjZjLTdhM2EtMmY2My0xNTczLTU1NDJjMmMxNDYxOSI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjY6IuaJgOaciSI7czoxMDoiRW1wbG95ZWVzUSI7YTozOntzOjY6Im1vZHVsZSI7czo5OiJFbXBsb3llZXMiO3M6NjoiYWN0aW9uIjtzOjU6ImluZGV4IjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO319'),
('1648145f-d2f2-c854-e9e3-5544a578d0d0', 'asol_WorkingNodes2_ASOL_WORKINGNODES', 0, '2015-05-02 10:24:42', '2015-05-02 10:24:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('166e13e4-1f4d-1c83-4425-5542c357f95a', 'ETag', 0, '2015-05-01 00:07:41', '2015-05-01 11:33:21', '1', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTI7fQ=='),
('209cfc3c-7723-239b-2d16-5544a57ee4de', 'asol_ProcessInstances2_ASOL_PROCESSINSTANCES', 0, '2015-05-02 10:24:49', '2015-05-02 10:24:49', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2e35323a-f433-b47f-24ae-5544a60ed93d', 'asol_OnHold2_ASOL_ONHOLD', 0, '2015-05-02 10:25:06', '2015-05-02 10:25:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('56b9a821-f1b3-dd8d-c954-554354cf6c29', 'yuang_yuangong_guanli2_YUANG_YUANGONG_GUANLI', 0, '2015-05-01 10:24:34', '2015-05-01 10:24:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('61cc0572-ba3c-a5a8-0688-554354ae94b3', 'asol_Events2_ASOL_EVENTS', 0, '2015-05-01 10:24:26', '2015-05-01 10:24:26', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('864e864c-5495-31cd-fa8f-554433c4e001', 'yuang_waibu_qudao_info2_YUANG_WAIBU_QUDAO_INFO', 0, '2015-05-02 02:17:15', '2015-05-02 02:17:15', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8b92a3d3-14f8-746c-c9ff-5544a5b561d2', 'asol_Task2_ASOL_TASK', 0, '2015-05-02 10:24:40', '2015-05-02 10:24:40', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8e9ea00a-9dd8-4256-775d-55435429fae7', 'daik_jiekuangren_info2_DAIK_JIEKUANGREN_INFO', 0, '2015-05-01 10:24:40', '2015-05-01 10:24:40', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8fb208dc-f697-8a84-2527-5543593f54d9', 'yuang_fengongsi_info2_YUANG_FENGONGSI_INFO', 0, '2015-05-01 10:48:23', '2015-05-01 10:48:23', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9c368852-65b6-ce94-f750-554354e06699', 'yuang_bumen_info2_YUANG_BUMEN_INFO', 0, '2015-05-01 10:24:36', '2015-05-01 10:24:36', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9fd028dd-e29e-1116-0433-554434ebfb02', 'global', 0, '2015-05-02 02:21:37', '2015-05-02 02:21:37', '880d930e-94ac-ba6d-2144-554434911d8e', 'YTozNTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6LTE7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvQmVybGluIjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjEyOiJzbXRwLjE2My5jb20iO3M6MTM6Im1haWxfc210cHVzZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwYXNzIjtzOjA6IiI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjA6ImNhbGVuZGFyX3B1Ymxpc2hfa2V5IjtzOjM2OiI5ZjkyYzQzYi03ZDk4LWExNGEtNzI5ZS01NTQ0MzQ5OTgxMDIiO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),
('b5f6a8f2-82d7-09c1-729e-5544a5e5fc2f', 'asol_Activity2_ASOL_ACTIVITY', 0, '2015-05-02 10:24:38', '2015-05-02 10:24:38', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b9c765b4-ab90-5b93-fdd7-5542c30443e6', 'Home', 0, '2015-05-01 00:07:41', '2015-05-03 01:56:36', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6IjdjNmMyMDBkLWY0Y2EtNDRlZS1mOWZmLTU1NDJjMzBmODNlYSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czozMDoiTEJMX0RBU0hMRVRfRElTQ09WRVJfU1VHQVJfUFJPIjtzOjM6InVybCI7czo0MjoiaHR0cHM6Ly93d3cuc3VnYXJjcm0uY29tL2NybS9wcm9kdWN0L2dvcHJvIjtzOjY6ImhlaWdodCI7aTozMTU7fX1zOjM2OiI3YzcyZDYyMi1lYTNkLWY4OGEtMGY2ZC01NTQyYzM0YTJiYWIiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjQ6Im1vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiI3Yzc4YjBkZS0xZWQ1LWUzYWYtM2QyNi01NTQyYzM1YWRjZmQiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTM6ImlGcmFtZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjQ6IkhvbWUiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjE7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvaUZyYW1lRGFzaGxldC9pRnJhbWVEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjM6e3M6MTA6InRpdGxlTGFiZWwiO3M6MjI6IkxCTF9EQVNITEVUX1NVR0FSX05FV1MiO3M6MzoidXJsIjtzOjQxOiJodHRwczovL3d3dy5zdWdhcmNybS5jb20vY3JtL3Byb2R1Y3QvbmV3cyI7czo2OiJoZWlnaHQiO2k6MzE1O319czozNjoiODI0NTA4ZmYtYWVjZS00OTQyLWYxOGMtNTU0MmMzODYwMzI5IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhbGxzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FsbHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiODNkM2JjMmItOTgxZC1kYTI0LTU1MzYtNTU0MmMzYWJkZDFiIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiTWVldGluZ3MiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL01lZXRpbmdzL0Rhc2hsZXRzL015TWVldGluZ3NEYXNobGV0L015TWVldGluZ3NEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiODUyOGQ0MjQtODZlZC0yYzMyLTI3ZDAtNTU0MmMzZmQ4Yzc2IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiI4NmQ4MzhhMC03MDk3LWIzNzEtZmIxYi01NTQyYzNmMmRiMmYiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15QWNjb3VudHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJBY2NvdW50cyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiI4OTA2ODNkNC0zYzkxLTUzY2ItZDM3MS01NTQyYzNmNjljN2QiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJMZWFkcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX19czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Njp7aTowO3M6MzY6IjdjNmMyMDBkLWY0Y2EtNDRlZS1mOWZmLTU1NDJjMzBmODNlYSI7aToxO3M6MzY6IjgyNDUwOGZmLWFlY2UtNDk0Mi1mMThjLTU1NDJjMzg2MDMyOSI7aToyO3M6MzY6IjgzZDNiYzJiLTk4MWQtZGEyNC01NTM2LTU1NDJjM2FiZGQxYiI7aTozO3M6MzY6Ijg1MjhkNDI0LTg2ZWQtMmMzMi0yN2QwLTU1NDJjM2ZkOGM3NiI7aTo0O3M6MzY6Ijg2ZDgzOGEwLTcwOTctYjM3MS1mYjFiLTU1NDJjM2YyZGIyZiI7aTo1O3M6MzY6Ijg5MDY4M2Q0LTNjOTEtNTNjYi1kMzcxLTU1NDJjM2Y2OWM3ZCI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiN2M3MmQ2MjItZWEzZC1mODhhLTBmNmQtNTU0MmMzNGEyYmFiIjtpOjE7czozNjoiN2M3OGIwZGUtMWVkNS1lM2FmLTNkMjYtNTU0MmMzNWFkY2ZkIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),
('ba9faa2e-bd38-b140-daea-5542c3c4d002', 'Home2_CALL', 0, '2015-05-01 00:07:41', '2015-05-01 00:07:41', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bb40c65c-219a-2dc3-6be8-5542c36fc69c', 'Home2_MEETING', 0, '2015-05-01 00:07:41', '2015-05-01 00:07:41', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bb7e0411-3589-2463-dcd3-55436ceb680c', 'Employees2_EMPLOYEE', 0, '2015-05-01 12:07:55', '2015-05-01 12:07:55', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bbcbbd67-8633-5b5b-67df-5542c3814c27', 'Home2_OPPORTUNITY', 0, '2015-05-01 00:07:41', '2015-05-01 00:07:41', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bbd801de-b4f8-a956-0820-5543546015a5', 'daik_jinrong_jigou_info2_DAIK_JINRONG_JIGOU_INFO', 0, '2015-05-01 10:24:38', '2015-05-01 10:24:38', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bc3c73fd-5862-d810-c37b-5542c3a779b5', 'Home2_ACCOUNT', 0, '2015-05-01 00:07:41', '2015-05-01 00:07:41', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bcabb844-137a-6e91-2c2f-5542c3405c9b', 'Home2_LEAD', 0, '2015-05-01 00:07:41', '2015-05-01 00:07:41', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bd37496a-9294-cc24-4048-5542c30601ab', 'Home2_SUGARFEED', 0, '2015-05-01 00:07:41', '2015-05-01 00:07:41', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c72815cf-9b74-32dc-48d6-5544343e0235', 'ETag', 0, '2015-05-02 02:22:06', '2015-05-02 02:38:24', '880d930e-94ac-ba6d-2144-554434911d8e', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),
('e69c0309-5390-27a9-ee4b-554354892030', 'asol_Process2_ASOL_PROCESS', 0, '2015-05-01 10:24:04', '2015-05-01 10:24:04', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f00f08cf-857c-f63f-cb59-554433f0d175', 'Users2_USER', 0, '2015-05-02 02:17:35', '2015-05-02 02:17:35', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');

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
('10e45f75-6c57-edd7-cd8b-5546417e3f26', 0, '2015-05-03 15:39:22', '2015-05-03 15:39:22', '1', '1', 'Rebuild Relationships', '4.0.0', '4.0.0'),
('29ef6838-0f8b-216f-5d0b-5542c27e2c25', 0, '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '1', 'Chart Data Cache', '3.5.1', '3.5.1'),
('2da5efec-73f8-0295-72f9-5542c2d5c1ae', 0, '2015-04-30 23:59:51', '2015-04-30 23:59:51', '1', '1', 'htaccess', '3.5.1', '3.5.1'),
('8ac082b0-22f6-51b5-4faf-554641b6dc6f', 0, '2015-05-03 15:39:04', '2015-05-03 15:39:04', '1', '1', 'Rebuild Extensions', '4.0.0', '4.0.0');

-- --------------------------------------------------------

--
-- 表的结构 `yuang_bumen_info`
--

DROP TABLE IF EXISTS `yuang_bumen_info`;
CREATE TABLE IF NOT EXISTS `yuang_bumen_info` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bumen_bianhao` varchar(255) DEFAULT NULL,
  `dianhua` varchar(255) DEFAULT NULL,
  `youbian` varchar(255) DEFAULT NULL,
  `dizhi` varchar(255) DEFAULT NULL,
  `fuzeren_ximing` varchar(255) DEFAULT NULL,
  `fuzeren_dianhua` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yuang_bumen_info`
--

INSERT INTO `yuang_bumen_info` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `bumen_bianhao`, `dianhua`, `youbian`, `dizhi`, `fuzeren_ximing`, `fuzeren_dianhua`) VALUES
('d555c22f-ddbd-7436-7927-55435e310057', '销售一部', '2015-05-01 11:05:36', '2015-05-01 11:06:58', '1', '1', 'asdfasdf', 0, '', 'XS0001', NULL, NULL, NULL, 'Jeff', '54632132');

-- --------------------------------------------------------

--
-- 表的结构 `yuang_bumen_info_audit`
--

DROP TABLE IF EXISTS `yuang_bumen_info_audit`;
CREATE TABLE IF NOT EXISTS `yuang_bumen_info_audit` (
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
-- 表的结构 `yuang_bumen_info_cstm`
--

DROP TABLE IF EXISTS `yuang_bumen_info_cstm`;
CREATE TABLE IF NOT EXISTS `yuang_bumen_info_cstm` (
  `id_c` char(36) NOT NULL,
  `yuang_fengongsi_info_id_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yuang_bumen_info_cstm`
--

INSERT INTO `yuang_bumen_info_cstm` (`id_c`, `yuang_fengongsi_info_id_c`) VALUES
('d555c22f-ddbd-7436-7927-55435e310057', '59c880e4-3a36-c1c3-7310-55435e848c0a');

-- --------------------------------------------------------

--
-- 表的结构 `yuang_fengongsi_info`
--

DROP TABLE IF EXISTS `yuang_fengongsi_info`;
CREATE TABLE IF NOT EXISTS `yuang_fengongsi_info` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `fengongsi_bianhao` varchar(255) DEFAULT NULL,
  `youbian` varchar(255) DEFAULT NULL,
  `dizhi` varchar(255) DEFAULT NULL,
  `dianhau` varchar(255) DEFAULT NULL,
  `fuzeren_dianhua` varchar(255) DEFAULT NULL,
  `fuzeren_xinming` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yuang_fengongsi_info`
--

INSERT INTO `yuang_fengongsi_info` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `fengongsi_bianhao`, `youbian`, `dizhi`, `dianhau`, `fuzeren_dianhua`, `fuzeren_xinming`) VALUES
('59c880e4-3a36-c1c3-7310-55435e848c0a', '南京第一分公司', '2015-05-01 11:06:42', '2015-05-01 11:06:42', '1', '1', 'asdf', 0, NULL, 'NJB0001', '', '南京X路XX号', '2342342', '454654654', 'Jeff');

-- --------------------------------------------------------

--
-- 表的结构 `yuang_fengongsi_info_audit`
--

DROP TABLE IF EXISTS `yuang_fengongsi_info_audit`;
CREATE TABLE IF NOT EXISTS `yuang_fengongsi_info_audit` (
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
-- 表的结构 `yuang_waibu_qudao_info`
--

DROP TABLE IF EXISTS `yuang_waibu_qudao_info`;
CREATE TABLE IF NOT EXISTS `yuang_waibu_qudao_info` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bianhao` varchar(255) DEFAULT NULL,
  `lianxiren_xinming` varchar(255) DEFAULT NULL,
  `lianxiren_dianhua` varchar(255) DEFAULT NULL,
  `dizhi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `yuang_waibu_qudao_info_audit`
--

DROP TABLE IF EXISTS `yuang_waibu_qudao_info_audit`;
CREATE TABLE IF NOT EXISTS `yuang_waibu_qudao_info_audit` (
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
-- 表的结构 `yuang_yuangong_guanli`
--

DROP TABLE IF EXISTS `yuang_yuangong_guanli`;
CREATE TABLE IF NOT EXISTS `yuang_yuangong_guanli` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `gonghao` varchar(255) DEFAULT NULL,
  `xiebie` varchar(100) DEFAULT 'nan',
  `shengfenzheng_haoma` varchar(255) DEFAULT NULL,
  `gangwei` varchar(100) DEFAULT 'xindai_guwen',
  `dianhua` varchar(255) DEFAULT NULL,
  `guding_gongzi` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `butie` decimal(26,6) DEFAULT NULL,
  `jixiao` decimal(26,6) DEFAULT NULL,
  `zaizhi_zhuangtai` varchar(100) DEFAULT 'yi_lizhi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `yuang_yuangong_guanli_audit`
--

DROP TABLE IF EXISTS `yuang_yuangong_guanli_audit`;
CREATE TABLE IF NOT EXISTS `yuang_yuangong_guanli_audit` (
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
-- Indexes for table `daik_jiekuangren_info`
--
ALTER TABLE `daik_jiekuangren_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daik_jiekuangren_info_audit`
--
ALTER TABLE `daik_jiekuangren_info_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_daik_jiekuangren_info_parent_id` (`parent_id`);

--
-- Indexes for table `daik_jiekuangren_info_cstm`
--
ALTER TABLE `daik_jiekuangren_info_cstm`
 ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `daik_jinrong_jigou_info`
--
ALTER TABLE `daik_jinrong_jigou_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daik_jinrong_jigou_info_audit`
--
ALTER TABLE `daik_jinrong_jigou_info_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_daik_jinrong_jigou_info_parent_id` (`parent_id`);

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
-- Indexes for table `liuch_fangkuang_liucheng`
--
ALTER TABLE `liuch_fangkuang_liucheng`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liuch_fangkuang_liucheng_audit`
--
ALTER TABLE `liuch_fangkuang_liucheng_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_liuch_fangkuang_liucheng_parent_id` (`parent_id`);

--
-- Indexes for table `liuch_fangkuang_liucheng_cstm`
--
ALTER TABLE `liuch_fangkuang_liucheng_cstm`
 ADD PRIMARY KEY (`id_c`);

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
-- Indexes for table `roles_homepage`
--
ALTER TABLE `roles_homepage`
 ADD PRIMARY KEY (`id`);

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
-- Indexes for table `yuang_bumen_info`
--
ALTER TABLE `yuang_bumen_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yuang_bumen_info_audit`
--
ALTER TABLE `yuang_bumen_info_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_yuang_bumen_info_parent_id` (`parent_id`);

--
-- Indexes for table `yuang_bumen_info_cstm`
--
ALTER TABLE `yuang_bumen_info_cstm`
 ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `yuang_fengongsi_info`
--
ALTER TABLE `yuang_fengongsi_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yuang_fengongsi_info_audit`
--
ALTER TABLE `yuang_fengongsi_info_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_yuang_fengongsi_info_parent_id` (`parent_id`);

--
-- Indexes for table `yuang_waibu_qudao_info`
--
ALTER TABLE `yuang_waibu_qudao_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yuang_waibu_qudao_info_audit`
--
ALTER TABLE `yuang_waibu_qudao_info_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_yuang_waibu_qudao_info_parent_id` (`parent_id`);

--
-- Indexes for table `yuang_yuangong_guanli`
--
ALTER TABLE `yuang_yuangong_guanli`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yuang_yuangong_guanli_audit`
--
ALTER TABLE `yuang_yuangong_guanli_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_yuang_yuangong_guanli_parent_id` (`parent_id`);

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
-- AUTO_INCREMENT for table `prospects`
--
ALTER TABLE `prospects`
MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=153;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
