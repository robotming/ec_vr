/*
Navicat MySQL Data Transfer

Source Server         : 192.168.217.135
Source Server Version : 50724
Source Host           : 192.168.217.135:3306
Source Database       : yunji

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-05-31 08:29:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yunji_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `yunji_admin_user`;
CREATE TABLE `yunji_admin_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_salt` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(10) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_list` text COLLATE utf8mb4_unicode_ci,
  `nav_list` text COLLATE utf8mb4_unicode_ci,
  `lang_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agency_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `suppliers_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `todolist` longtext COLLATE utf8mb4_unicode_ci,
  `role_id` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of yunji_admin_user
-- ----------------------------
INSERT INTO `yunji_admin_user` VALUES ('1', 'admin', 'admin@admin.com', '240a13658c3d69adb24857136d825891', '1007', '1558019825', '1558019856', '192.168.217.1', 'all', '商品列表|index.php?m=goods&c=admin&a=init,订单列表|index.php?m=orders&c=admin&a=init,会员列表|index.php?m=user&c=admin&a=init,自营店铺|index.php?m=store&c=admin&a=init', null, '0', '0', null, '0');

-- ----------------------------
-- Table structure for yunji_cart
-- ----------------------------
DROP TABLE IF EXISTS `yunji_cart`;
CREATE TABLE `yunji_cart` (
  `rec_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `session_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goods_id` mediumint(9) NOT NULL,
  `goods_sn` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goods_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `goods_buy_weight` decimal(10,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '散装商品购买总重量',
  `goods_attr` text COLLATE utf8mb4_unicode_ci,
  `is_real` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rec_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_gift` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_shipping` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mark_changed` tinyint(1) NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopping_fee` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `is_checked` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '选中状态，0未选中，1选中',
  `pendorder_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '挂单id',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rec_id`),
  KEY `store_id` (`store_id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of yunji_cart
-- ----------------------------

-- ----------------------------
-- Table structure for yunji_category
-- ----------------------------
DROP TABLE IF EXISTS `yunji_category`;
CREATE TABLE `yunji_category` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `template_file` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `measure_unit` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_in_nav` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `style` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filter_attr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of yunji_category
-- ----------------------------
INSERT INTO `yunji_category` VALUES ('1032', '水果蔬菜2', 'data/category/1492544130404920454.png', '', '', '1032', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1033', '水果', 'data/category/1459099587459021592.jpg', '', '', '1032', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1034', '蔬菜', 'data/category/1458865195914261363.jpg', '', '', '1032', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1035', '苹果', 'data/category/1489964568142008168.png', '', '', '1033', '1', '', '', '0', '', '1', '0', '883');
INSERT INTO `yunji_category` VALUES ('1036', '梨', 'data/category/1489964582799353289.png', '', '', '1033', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1037', '其他水果', 'data/category/1489964900578077521.png', '', '', '1033', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1038', '瓜类', 'data/category/1489964792107078059.png', '', '', '1033', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1039', '猕猴桃', 'data/category/1489964856919691324.png', '', '', '1033', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1040', '桔柚', 'data/category/1489964867481932539.png', '', '', '1033', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1041', '根茎类', 'data/category/1489968767534003301.png', '', '', '1034', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1042', '叶菜类', 'data/category/1489968780015498291.png', '', '', '1034', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1044', '瓜果类', 'data/category/1489968793377150320.png', '', '', '1034', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1045', '菇菌类', 'data/category/1489968808623176624.png', '', '', '1034', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1046', '调味类', 'data/category/1489968826906135782.png', '', '', '1034', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1047', '肉禽蛋奶', 'data/category/1492544292666510685.png', '', '', '0', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1048', '牛羊猪禽', 'data/category/1458865390542758527.jpg', '', '', '1047', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1049', '水产海鲜', 'data/category/1458865342069809919.jpg', '', '', '1047', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1050', '奶制品', 'data/category/1458865358019369414.jpg', '', '', '1047', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1051', '牛肉类', 'data/category/1489969881597908243.png', '', '', '1048', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1052', '羊肉', 'data/category/1489969892653424466.png', '', '', '1048', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1053', '猪肉', 'data/category/1489969903894305531.png', '', '', '1048', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1054', '内脏', 'data/category/1489971487362581120.png', '', '', '1048', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1055', '禽类', 'data/category/1489969924330410714.png', '', '', '1048', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1056', '鱼类', 'data/category/1489969938964800542.png', '', '', '1049', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1057', '虾蟹类', 'data/category/1489969949983499401.png', '', '', '1049', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1058', '其他水产', 'data/category/1489969960861811056.png', '', '', '1049', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1059', '牛奶', 'data/category/1489969973433845718.png', '', '', '1050', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1060', '酸奶', 'data/category/1489969985435860398.png', '', '', '1050', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1061', '乳酪类', 'data/category/1489970015843616057.png', '', '', '1047', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1062', '加味奶', 'data/category/1489969998481438932.png', '', '', '1050', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1063', '豆浆豆奶', 'data/category/1489970059471285761.png', '', '', '1050', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1064', '冷热速食', 'data/category/1492544304078010576.png', '', '', '0', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1065', '低温速食', 'data/category/1458865449861715783.jpg', '', '', '1064', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1066', '高温速食', 'data/category/1458865527439462801.jpg', '', '', '1064', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1067', '火锅丸类', 'data/category/1489972058949351179.png', '', '', '1065', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1068', '汤圆', 'data/category/1489972068228365949.png', '', '', '1065', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1069', '水饺/混沌', 'data/category/1489972079320527924.png', '', '', '1065', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1070', '速食肉类', 'data/category/1489972090994967311.png', '', '', '1065', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1071', '冷藏面制品', 'data/category/1489972102486211013.png', '', '', '1065', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1072', '方便面/粉', 'data/category/1489972114347115972.png', '', '', '1066', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1073', '酱菜类', 'data/category/1489972124960112441.png', '', '', '1066', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1074', '火腿肠', 'data/category/1489972134424116385.png', '', '', '1066', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1075', '罐头', 'data/category/1489972150275311082.png', '', '', '1066', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1076', '八宝粥', 'data/category/1489972160845703088.png', '', '', '1066', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1077', '果酱', 'data/category/1489972555068175274.png', '', '', '1066', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1078', '休闲食品', 'data/category/1492544324860507201.png', '', '', '0', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1079', '零食', 'data/category/1458865649384560215.jpg', '', '', '1078', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1080', '饼干/糕点', 'data/category/1458865692179514745.jpg', '', '', '1078', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1081', '膨化食品', 'data/category/1489972942026859584.png', '', '', '1079', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1082', '果干蜜饯', 'data/category/1489972952085639997.png', '', '', '1079', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1083', '肉感肉脯', 'data/category/1489972963173977993.png', '', '', '1079', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1084', '坚果', 'data/category/1489972971196534541.png', '', '', '1079', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1085', '巧克力', 'data/category/1489972981199263104.png', '', '', '1079', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1086', '果冻', 'data/category/1489972993960257880.png', '', '', '1079', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1087', '糖果', 'data/category/1489973003353424528.png', '', '', '1079', '7', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1088', '口香糖', 'data/category/1489973015958634005.png', '', '', '1079', '8', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1089', '面包', 'data/category/1489973164060678349.png', '', '', '1080', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1090', '饼干/威化', 'data/category/1489973172965968224.png', '', '', '1080', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1091', '糕点', 'data/category/1489973185715640518.png', '', '', '1080', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1092', '酒水饮料', 'data/category/1492544336420812446.png', '', '', '0', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1093', '酒', 'data/category/1458865720134241958.jpg', '', '', '1092', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1094', '饮料', 'data/category/1458865766156077800.jpg', '', '', '1092', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1095', '冲调类', 'data/category/1458866243376641634.png', '', '', '1092', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1096', '啤酒', 'data/category/1489974003793919908.png', '', '', '1093', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1097', '白酒', 'data/category/1489974014933128699.png', '', '', '1093', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1098', '洋酒', 'data/category/1489974025689188757.png', '', '', '1093', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1099', '红酒', 'data/category/1489974036410386833.png', '', '', '1093', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1100', '黄酒', 'data/category/1489974046203678271.png', '', '', '1093', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1101', '其他酒', 'data/category/1489974057191439738.png', '', '', '1093', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1102', '水', 'data/category/1489974067378050038.png', '', '', '1094', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1103', '碳酸饮料', 'data/category/1489974076007046705.png', '', '', '1094', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1104', '功能性饮料', 'data/category/1489974106937812939.png', '', '', '1094', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1105', '茶饮料', 'data/category/1489974095172645685.png', '', '', '1094', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1106', '果汁', 'data/category/1489974117742786728.png', '', '', '1094', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1107', '其他饮料', 'data/category/1489974127618149871.png', '', '', '1094', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1108', '茶叶', 'data/category/1489974137548266990.png', '', '', '1095', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1109', '咖啡', 'data/category/1489974189319177491.png', '', '', '1095', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1110', '麦片谷物类', 'data/category/1489974200421339234.png', '', '', '1095', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1111', '成人奶粉', 'data/category/1489974213894124904.png', '', '', '1095', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1112', '果珍', 'data/category/1489974229505726853.png', '', '', '1095', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1113', '其他冲调类', 'data/category/1489974240112414057.png', '', '', '1095', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1114', '粮油调味', 'data/category/1492544349452153817.png', '', '', '0', '7', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1115', '米面杂粮', 'data/category/1458865896397146029.jpg', '', '', '1114', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1116', '油', 'data/category/1458865941015476647.jpg', '', '', '1114', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1117', '调味品', 'data/category/1458865990382084901.jpg', '', '', '1114', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1118', '干货', 'data/category/1458866031702406638.jpg', '', '', '1114', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1119', '大米', 'data/category/1489975728957746726.png', '', '', '1115', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1120', '面粉', 'data/category/1489975754071614930.png', '', '', '1115', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1121', '挂面', 'data/category/1489975786066874748.png', '', '', '1115', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1122', '杂粮', 'data/category/1489975797258342642.png', '', '', '1115', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1123', '调和油', 'data/category/1489975809777742833.png', '', '', '1116', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1124', '花生油', 'data/category/1489975859770396239.png', '', '', '1116', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1125', '大豆油', 'data/category/1489975869212345304.png', '', '', '1116', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1126', '橄榄油', 'data/category/1489975904802013235.png', '', '', '1116', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1127', '葵花油', 'data/category/1489975913190894745.png', '', '', '1116', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1128', '其他油', 'data/category/1489976054961338475.png', '', '', '1116', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1129', '盐/糖/味精', 'data/category/1489976066210858418.png', '', '', '1117', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1130', '其他调味', 'data/category/1489976079967804288.png', '', '', '1117', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1131', '酱料/醋', 'data/category/1489976090460676360.png', '', '', '1117', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1132', '南北干货', 'data/category/1489976101269547780.png', '', '', '1118', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1133', '水产干货', 'data/category/1489976119267347075.png', '', '', '1118', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1134', '粉丝/粉条', 'data/category/1489976128660583933.png', '', '', '1118', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1135', '清洁日化', 'data/category/1492544362636255524.png', '', '', '0', '8', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1136', '面部护理', 'data/category/1458877041877528103.png', '', '', '1135', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1137', '身体护理', 'data/category/1458866498644836847.png', '', '', '1135', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1138', '洗发染发', 'data/category/1458866667694559214.png', '', '', '1135', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1139', '口腔洗浴', 'data/category/1458866687524419547.png', '', '', '1135', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1140', '衣物护理', 'data/category/1458866708212180282.png', '', '', '1135', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1141', '厨卫清洁', 'data/category/1458866736501578418.png', '', '', '1135', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1142', '洁面', 'data/category/1458866429770650501.png', '', '', '1136', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1143', '护肤', 'data/category/1489978095277119050.png', '', '', '1136', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1144', '面膜', 'data/category/1489978104602373663.png', '', '', '1136', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1145', '剃须', 'data/category/1489978115827371812.png', '', '', '1136', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1146', '美妆', 'data/category/1489978126431705546.png', '', '', '1136', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1147', '眼部保养', 'data/category/1489978139738485923.png', '', '', '1136', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1148', '沐浴露', 'data/category/1489978152507982337.png', '', '', '1137', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1149', '身体保养', 'data/category/1489978166956879420.png', '', '', '1137', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1150', '身体清洁', 'data/category/1489978177080945665.png', '', '', '1137', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1151', '洗发', 'data/category/1489978188116623571.png', '', '', '1138', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1152', '染发定型', 'data/category/1489978198990315015.png', '', '', '1138', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1153', '牙膏', 'data/category/1489978210916049697.png', '', '', '1139', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1154', '牙刷', 'data/category/1489978220819101330.png', '', '', '1139', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1155', '牙齿护理', 'data/category/1489978231125961031.png', '', '', '1139', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1156', '洗衣液', 'data/category/1489978241620365872.png', '', '', '1140', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1157', '洗衣粉', 'data/category/1489978254202870171.png', '', '', '1140', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1158', '柔顺剂', 'data/category/1489978264292891104.png', '', '', '1140', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1159', '洗衣皂', 'data/category/1489978286732890124.png', '', '', '1140', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1160', '衣物除菌剂', 'data/category/1489978307322222295.png', '', '', '1140', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1161', '消毒液', 'data/category/1489978333182365275.png', '', '', '1141', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1162', '杀虫用品', 'data/category/1489978346163183161.png', '', '', '1141', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1163', '地板清洁', 'data/category/1489978367325402038.png', '', '', '1141', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1164', '洗洁精', 'data/category/1489978458170925724.png', '', '', '1141', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1165', '油烟净', 'data/category/1489978392580083595.png', '', '', '1141', '255', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1166', '其他清洁工具', 'data/category/1489978381042657581.png', '', '', '1141', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1167', '家居用品', 'data/category/1492544372710848948.png', '', '', '0', '9', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1168', '家用电器', 'data/category/1458866944516490134.png', '', '', '1167', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1169', '厨具', 'data/category/1458866961527540453.png', '', '', '1167', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1170', '宠物生活', 'data/category/1458866988626895776.png', '', '', '1167', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1171', '纸品湿巾', 'data/category/1458867009449848674.png', '', '', '1167', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1172', '一次性用品', 'data/category/1458867032748076802.png', '', '', '1167', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1173', '家用电器', 'data/category/1489979189824759217.png', '', '', '1168', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1174', '电池', 'data/category/1489979198090761604.png', '', '', '1168', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1175', '餐具', 'data/category/1489979218718186032.png', '', '', '1169', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1176', '水杯/水壶', 'data/category/1489979229337503494.png', '', '', '1169', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1177', '狗粮', 'data/category/1489979241148644172.png', '', '', '1170', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1178', '猫粮', 'data/category/1489979253766063830.png', '', '', '1170', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1179', '宠物用品', 'data/category/1489979263405824365.png', '', '', '1170', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1180', '卫生纸', 'data/category/1489979274105706952.png', '', '', '1171', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1181', '湿巾', 'data/category/1489979286084697323.png', '', '', '1171', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1182', '抽纸', 'data/category/1489979296649636570.png', '', '', '1171', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1183', '垃圾袋', 'data/category/1489979308409077210.png', '', '', '1172', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1184', '纸杯', 'data/category/1489979317307435782.png', '', '', '1172', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1185', '一次性餐具', 'data/category/1489979327282334485.png', '', '', '1172', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1186', '鲜花蛋糕', 'data/category/1492544383324835917.png', '', '', '0', '10', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1187', '鲜花', 'data/category/1458867200348290600.png', '', '', '1186', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1188', '绿植多肉', 'data/category/1458867217995412503.png', '', '', '1186', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1189', '蛋糕', 'data/category/1458867235365628830.png', '', '', '1168', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1190', '外带美食', 'data/category/1458869434871096941.png', '', '', '1186', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1191', '礼品鲜花', 'data/category/1489981069354516937.png', '', '', '1187', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1192', '家庭鲜花', 'data/category/1489981079541436901.png', '', '', '1187', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1193', '庆典用花', 'data/category/1489981090599134117.png', '', '', '1187', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1194', '创意鲜花', 'data/category/1489981101802879334.png', '', '', '1187', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1195', '绿植', 'data/category/1489981118980859364.png', '', '', '1188', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1196', '多肉', 'data/category/1489981129208138644.png', '', '', '1188', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1200', '西式简餐', 'data/category/1489981179146283024.png', '', '', '1190', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1201', '炸品', 'data/category/1489981365298511624.png', '', '', '1190', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1202', '风味小吃', 'data/category/1489981382639433972.png', '', '', '1190', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1203', '其他面食', 'data/category/1489981392966933292.png', '', '', '1190', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1240', '上门服务', 'data/category/1492544395052605614.png', '', '', '0', '12', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1241', '家政保洁', 'data/category/1458868212808252812.png', '', '', '1240', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1242', '家电清洗', 'data/category/1458868276532812407.png', '', '', '1240', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1243', '洗衣洗鞋', 'data/category/1458868300684763629.png', '', '', '1240', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1244', '生活周边', 'data/category/1458868335876839764.png', '', '', '1240', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1245', '母婴护理', 'data/category/1458876645108152499.png', '', '', '1240', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1246', '按摩美业', 'data/category/1458868371918731191.png', '', '', '1240', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1247', '安装维修', 'data/category/1458868395900985882.png', '', '', '1240', '7', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1248', '汽车服务', 'data/category/1458868414366255990.png', '', '', '1240', '8', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1249', '日常保洁', 'data/category/1489983240662660689.png', '', '', '1241', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1250', '深度保洁', 'data/category/1489983252782860564.png', '', '', '1241', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1251', '除尘除螨', 'data/category/1489983263804965751.png', '', '', '1241', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1252', '组合套餐', 'data/category/1489983279562319118.png', '', '', '1242', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1253', '空调清洗', 'data/category/1489983302708445927.png', '', '', '1242', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1254', '冰箱清洗', 'data/category/1489983315739334662.png', '', '', '1242', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1255', '抽油烟机', 'data/category/1489983325227411062.png', '', '', '1242', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1256', '洗衣机', 'data/category/1489983338679840016.png', '', '', '1242', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1257', '饮水机', 'data/category/1489983348347987819.png', '', '', '1242', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1258', '微波炉', 'data/category/1489983374614884730.png', '', '', '1242', '7', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1259', '其他家电清洗', 'data/category/1489983386566716255.png', '', '', '1242', '8', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1260', '洗衣', 'data/category/1489983402557424614.png', '', '', '1243', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1261', '洗鞋', 'data/category/1489983412966197795.png', '', '', '1243', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1262', '家居家纺', 'data/category/1489983422219408316.png', '', '', '1243', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1263', '奢侈品护理', 'data/category/1489983435168563253.png', '', '', '1243', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1264', '宠物服务', 'data/category/1489983448343748833.png', '', '', '1244', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1265', '厨师', 'data/category/1489983458595396324.png', '', '', '1244', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1266', '月嫂', 'data/category/1489983470720266930.png', '', '', '1245', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1267', '育儿护理', 'data/category/1489983483750048951.png', '', '', '1245', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1268', '中医推拿', 'data/category/1489983492985979139.png', '', '', '1246', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1269', 'spa/足疗', 'data/category/1489983504860286250.png', '', '', '1246', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1270', '小儿/刮痧', 'data/category/1489983517161058158.png', '', '', '1246', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1271', '美容/美体', 'data/category/1489983527620444053.png', '', '', '1246', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1272', '美甲/美妆', 'data/category/1489983537038018273.png', '', '', '1246', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1273', '上门维修', 'data/category/1489983547597096912.png', '', '', '1247', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1276', '热带水果', 'data/category/1459099501226196792.jpg', '', '', '1032', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1277', '进口水果', 'data/category/1459099636383749651.jpg', '', '', '1032', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1278', '时令水果', 'data/category/1459099687078475267.jpg', '', '', '1032', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1279', '冷冻蔬菜', 'data/category/1459099779639967502.jpg', '', '', '1032', '8', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1280', '蛋', 'data/category/1459099868560307722.jpg', '', '', '1047', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1281', '特色禽类', 'data/category/1459099929218432413.jpg', '', '', '1047', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1282', '海产干货', 'data/category/1459100054924779845.jpg', '', '', '1047', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1283', '冷冻点心', 'data/category/1459100123821288425.jpg', '', '', '1064', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1284', '冷餐熟食', 'data/category/1459100187060184473.jpg', '', '', '1064', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1285', '中式主食', 'data/category/1459100308487419292.jpg', '', '', '1064', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1286', '甜品', 'data/category/1459100497724915472.jpg', '', '', '1078', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1287', '稀奶油', 'data/category/1459100608316391911.jpg', '', '', '1078', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1289', '茄果瓜果类', 'data/category/1459100860099879676.jpg', '', '', '1032', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1290', '水', 'data/category/1459101040213914235.jpg', '', '', '1092', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1291', '茄子', 'data/category/1489968841361823590.png', '', '', '1289', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1292', '番茄', 'data/category/1489968856754237133.png', '', '', '1289', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1293', '黄瓜', 'data/category/1489968873938741156.png', '', '', '1289', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category` VALUES ('1294', '123', null, null, null, '1033', '50', null, null, '0', null, '1', '0', '0');
INSERT INTO `yunji_category` VALUES ('1295', '123', '20190528/记录.txt', null, null, '1033', '50', null, null, '0', null, '1', '0', '0');
INSERT INTO `yunji_category` VALUES ('1298', '水果蔬菜2', '20190529/logo-icon.png', null, null, '1298', '50', null, null, '0', null, '1', '0', '0');

-- ----------------------------
-- Table structure for yunji_category_copy
-- ----------------------------
DROP TABLE IF EXISTS `yunji_category_copy`;
CREATE TABLE `yunji_category_copy` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `template_file` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `measure_unit` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_in_nav` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `style` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filter_attr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1298 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of yunji_category_copy
-- ----------------------------
INSERT INTO `yunji_category_copy` VALUES ('1032', '水果蔬菜', 'data/category/1492544130404920454.png', '', '', '0', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1033', '水果', 'data/category/1459099587459021592.jpg', '', '', '1032', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1034', '蔬菜', 'data/category/1458865195914261363.jpg', '', '', '1032', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1035', '苹果', 'data/category/1489964568142008168.png', '', '', '1033', '1', '', '', '0', '', '1', '0', '883');
INSERT INTO `yunji_category_copy` VALUES ('1036', '梨', 'data/category/1489964582799353289.png', '', '', '1033', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1037', '其他水果', 'data/category/1489964900578077521.png', '', '', '1033', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1038', '瓜类', 'data/category/1489964792107078059.png', '', '', '1033', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1039', '猕猴桃', 'data/category/1489964856919691324.png', '', '', '1033', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1040', '桔柚', 'data/category/1489964867481932539.png', '', '', '1033', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1041', '根茎类', 'data/category/1489968767534003301.png', '', '', '1034', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1042', '叶菜类', 'data/category/1489968780015498291.png', '', '', '1034', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1044', '瓜果类', 'data/category/1489968793377150320.png', '', '', '1034', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1045', '菇菌类', 'data/category/1489968808623176624.png', '', '', '1034', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1046', '调味类', 'data/category/1489968826906135782.png', '', '', '1034', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1047', '肉禽蛋奶', 'data/category/1492544292666510685.png', '', '', '0', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1048', '牛羊猪禽', 'data/category/1458865390542758527.jpg', '', '', '1047', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1049', '水产海鲜', 'data/category/1458865342069809919.jpg', '', '', '1047', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1050', '奶制品', 'data/category/1458865358019369414.jpg', '', '', '1047', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1051', '牛肉类', 'data/category/1489969881597908243.png', '', '', '1048', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1052', '羊肉', 'data/category/1489969892653424466.png', '', '', '1048', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1053', '猪肉', 'data/category/1489969903894305531.png', '', '', '1048', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1054', '内脏', 'data/category/1489971487362581120.png', '', '', '1048', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1055', '禽类', 'data/category/1489969924330410714.png', '', '', '1048', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1056', '鱼类', 'data/category/1489969938964800542.png', '', '', '1049', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1057', '虾蟹类', 'data/category/1489969949983499401.png', '', '', '1049', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1058', '其他水产', 'data/category/1489969960861811056.png', '', '', '1049', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1059', '牛奶', 'data/category/1489969973433845718.png', '', '', '1050', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1060', '酸奶', 'data/category/1489969985435860398.png', '', '', '1050', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1061', '乳酪类', 'data/category/1489970015843616057.png', '', '', '1047', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1062', '加味奶', 'data/category/1489969998481438932.png', '', '', '1050', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1063', '豆浆豆奶', 'data/category/1489970059471285761.png', '', '', '1050', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1064', '冷热速食', 'data/category/1492544304078010576.png', '', '', '0', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1065', '低温速食', 'data/category/1458865449861715783.jpg', '', '', '1064', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1066', '高温速食', 'data/category/1458865527439462801.jpg', '', '', '1064', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1067', '火锅丸类', 'data/category/1489972058949351179.png', '', '', '1065', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1068', '汤圆', 'data/category/1489972068228365949.png', '', '', '1065', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1069', '水饺/混沌', 'data/category/1489972079320527924.png', '', '', '1065', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1070', '速食肉类', 'data/category/1489972090994967311.png', '', '', '1065', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1071', '冷藏面制品', 'data/category/1489972102486211013.png', '', '', '1065', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1072', '方便面/粉', 'data/category/1489972114347115972.png', '', '', '1066', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1073', '酱菜类', 'data/category/1489972124960112441.png', '', '', '1066', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1074', '火腿肠', 'data/category/1489972134424116385.png', '', '', '1066', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1075', '罐头', 'data/category/1489972150275311082.png', '', '', '1066', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1076', '八宝粥', 'data/category/1489972160845703088.png', '', '', '1066', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1077', '果酱', 'data/category/1489972555068175274.png', '', '', '1066', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1078', '休闲食品', 'data/category/1492544324860507201.png', '', '', '0', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1079', '零食', 'data/category/1458865649384560215.jpg', '', '', '1078', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1080', '饼干/糕点', 'data/category/1458865692179514745.jpg', '', '', '1078', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1081', '膨化食品', 'data/category/1489972942026859584.png', '', '', '1079', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1082', '果干蜜饯', 'data/category/1489972952085639997.png', '', '', '1079', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1083', '肉感肉脯', 'data/category/1489972963173977993.png', '', '', '1079', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1084', '坚果', 'data/category/1489972971196534541.png', '', '', '1079', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1085', '巧克力', 'data/category/1489972981199263104.png', '', '', '1079', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1086', '果冻', 'data/category/1489972993960257880.png', '', '', '1079', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1087', '糖果', 'data/category/1489973003353424528.png', '', '', '1079', '7', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1088', '口香糖', 'data/category/1489973015958634005.png', '', '', '1079', '8', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1089', '面包', 'data/category/1489973164060678349.png', '', '', '1080', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1090', '饼干/威化', 'data/category/1489973172965968224.png', '', '', '1080', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1091', '糕点', 'data/category/1489973185715640518.png', '', '', '1080', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1092', '酒水饮料', 'data/category/1492544336420812446.png', '', '', '0', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1093', '酒', 'data/category/1458865720134241958.jpg', '', '', '1092', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1094', '饮料', 'data/category/1458865766156077800.jpg', '', '', '1092', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1095', '冲调类', 'data/category/1458866243376641634.png', '', '', '1092', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1096', '啤酒', 'data/category/1489974003793919908.png', '', '', '1093', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1097', '白酒', 'data/category/1489974014933128699.png', '', '', '1093', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1098', '洋酒', 'data/category/1489974025689188757.png', '', '', '1093', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1099', '红酒', 'data/category/1489974036410386833.png', '', '', '1093', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1100', '黄酒', 'data/category/1489974046203678271.png', '', '', '1093', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1101', '其他酒', 'data/category/1489974057191439738.png', '', '', '1093', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1102', '水', 'data/category/1489974067378050038.png', '', '', '1094', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1103', '碳酸饮料', 'data/category/1489974076007046705.png', '', '', '1094', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1104', '功能性饮料', 'data/category/1489974106937812939.png', '', '', '1094', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1105', '茶饮料', 'data/category/1489974095172645685.png', '', '', '1094', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1106', '果汁', 'data/category/1489974117742786728.png', '', '', '1094', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1107', '其他饮料', 'data/category/1489974127618149871.png', '', '', '1094', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1108', '茶叶', 'data/category/1489974137548266990.png', '', '', '1095', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1109', '咖啡', 'data/category/1489974189319177491.png', '', '', '1095', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1110', '麦片谷物类', 'data/category/1489974200421339234.png', '', '', '1095', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1111', '成人奶粉', 'data/category/1489974213894124904.png', '', '', '1095', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1112', '果珍', 'data/category/1489974229505726853.png', '', '', '1095', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1113', '其他冲调类', 'data/category/1489974240112414057.png', '', '', '1095', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1114', '粮油调味', 'data/category/1492544349452153817.png', '', '', '0', '7', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1115', '米面杂粮', 'data/category/1458865896397146029.jpg', '', '', '1114', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1116', '油', 'data/category/1458865941015476647.jpg', '', '', '1114', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1117', '调味品', 'data/category/1458865990382084901.jpg', '', '', '1114', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1118', '干货', 'data/category/1458866031702406638.jpg', '', '', '1114', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1119', '大米', 'data/category/1489975728957746726.png', '', '', '1115', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1120', '面粉', 'data/category/1489975754071614930.png', '', '', '1115', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1121', '挂面', 'data/category/1489975786066874748.png', '', '', '1115', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1122', '杂粮', 'data/category/1489975797258342642.png', '', '', '1115', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1123', '调和油', 'data/category/1489975809777742833.png', '', '', '1116', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1124', '花生油', 'data/category/1489975859770396239.png', '', '', '1116', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1125', '大豆油', 'data/category/1489975869212345304.png', '', '', '1116', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1126', '橄榄油', 'data/category/1489975904802013235.png', '', '', '1116', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1127', '葵花油', 'data/category/1489975913190894745.png', '', '', '1116', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1128', '其他油', 'data/category/1489976054961338475.png', '', '', '1116', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1129', '盐/糖/味精', 'data/category/1489976066210858418.png', '', '', '1117', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1130', '其他调味', 'data/category/1489976079967804288.png', '', '', '1117', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1131', '酱料/醋', 'data/category/1489976090460676360.png', '', '', '1117', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1132', '南北干货', 'data/category/1489976101269547780.png', '', '', '1118', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1133', '水产干货', 'data/category/1489976119267347075.png', '', '', '1118', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1134', '粉丝/粉条', 'data/category/1489976128660583933.png', '', '', '1118', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1135', '清洁日化', 'data/category/1492544362636255524.png', '', '', '0', '8', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1136', '面部护理', 'data/category/1458877041877528103.png', '', '', '1135', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1137', '身体护理', 'data/category/1458866498644836847.png', '', '', '1135', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1138', '洗发染发', 'data/category/1458866667694559214.png', '', '', '1135', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1139', '口腔洗浴', 'data/category/1458866687524419547.png', '', '', '1135', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1140', '衣物护理', 'data/category/1458866708212180282.png', '', '', '1135', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1141', '厨卫清洁', 'data/category/1458866736501578418.png', '', '', '1135', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1142', '洁面', 'data/category/1458866429770650501.png', '', '', '1136', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1143', '护肤', 'data/category/1489978095277119050.png', '', '', '1136', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1144', '面膜', 'data/category/1489978104602373663.png', '', '', '1136', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1145', '剃须', 'data/category/1489978115827371812.png', '', '', '1136', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1146', '美妆', 'data/category/1489978126431705546.png', '', '', '1136', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1147', '眼部保养', 'data/category/1489978139738485923.png', '', '', '1136', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1148', '沐浴露', 'data/category/1489978152507982337.png', '', '', '1137', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1149', '身体保养', 'data/category/1489978166956879420.png', '', '', '1137', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1150', '身体清洁', 'data/category/1489978177080945665.png', '', '', '1137', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1151', '洗发', 'data/category/1489978188116623571.png', '', '', '1138', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1152', '染发定型', 'data/category/1489978198990315015.png', '', '', '1138', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1153', '牙膏', 'data/category/1489978210916049697.png', '', '', '1139', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1154', '牙刷', 'data/category/1489978220819101330.png', '', '', '1139', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1155', '牙齿护理', 'data/category/1489978231125961031.png', '', '', '1139', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1156', '洗衣液', 'data/category/1489978241620365872.png', '', '', '1140', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1157', '洗衣粉', 'data/category/1489978254202870171.png', '', '', '1140', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1158', '柔顺剂', 'data/category/1489978264292891104.png', '', '', '1140', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1159', '洗衣皂', 'data/category/1489978286732890124.png', '', '', '1140', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1160', '衣物除菌剂', 'data/category/1489978307322222295.png', '', '', '1140', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1161', '消毒液', 'data/category/1489978333182365275.png', '', '', '1141', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1162', '杀虫用品', 'data/category/1489978346163183161.png', '', '', '1141', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1163', '地板清洁', 'data/category/1489978367325402038.png', '', '', '1141', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1164', '洗洁精', 'data/category/1489978458170925724.png', '', '', '1141', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1165', '油烟净', 'data/category/1489978392580083595.png', '', '', '1141', '255', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1166', '其他清洁工具', 'data/category/1489978381042657581.png', '', '', '1141', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1167', '家居用品', 'data/category/1492544372710848948.png', '', '', '0', '9', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1168', '家用电器', 'data/category/1458866944516490134.png', '', '', '1167', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1169', '厨具', 'data/category/1458866961527540453.png', '', '', '1167', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1170', '宠物生活', 'data/category/1458866988626895776.png', '', '', '1167', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1171', '纸品湿巾', 'data/category/1458867009449848674.png', '', '', '1167', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1172', '一次性用品', 'data/category/1458867032748076802.png', '', '', '1167', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1173', '家用电器', 'data/category/1489979189824759217.png', '', '', '1168', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1174', '电池', 'data/category/1489979198090761604.png', '', '', '1168', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1175', '餐具', 'data/category/1489979218718186032.png', '', '', '1169', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1176', '水杯/水壶', 'data/category/1489979229337503494.png', '', '', '1169', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1177', '狗粮', 'data/category/1489979241148644172.png', '', '', '1170', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1178', '猫粮', 'data/category/1489979253766063830.png', '', '', '1170', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1179', '宠物用品', 'data/category/1489979263405824365.png', '', '', '1170', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1180', '卫生纸', 'data/category/1489979274105706952.png', '', '', '1171', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1181', '湿巾', 'data/category/1489979286084697323.png', '', '', '1171', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1182', '抽纸', 'data/category/1489979296649636570.png', '', '', '1171', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1183', '垃圾袋', 'data/category/1489979308409077210.png', '', '', '1172', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1184', '纸杯', 'data/category/1489979317307435782.png', '', '', '1172', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1185', '一次性餐具', 'data/category/1489979327282334485.png', '', '', '1172', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1186', '鲜花蛋糕', 'data/category/1492544383324835917.png', '', '', '0', '10', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1187', '鲜花', 'data/category/1458867200348290600.png', '', '', '1186', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1188', '绿植多肉', 'data/category/1458867217995412503.png', '', '', '1186', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1189', '蛋糕', 'data/category/1458867235365628830.png', '', '', '1168', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1190', '外带美食', 'data/category/1458869434871096941.png', '', '', '1186', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1191', '礼品鲜花', 'data/category/1489981069354516937.png', '', '', '1187', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1192', '家庭鲜花', 'data/category/1489981079541436901.png', '', '', '1187', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1193', '庆典用花', 'data/category/1489981090599134117.png', '', '', '1187', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1194', '创意鲜花', 'data/category/1489981101802879334.png', '', '', '1187', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1195', '绿植', 'data/category/1489981118980859364.png', '', '', '1188', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1196', '多肉', 'data/category/1489981129208138644.png', '', '', '1188', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1200', '西式简餐', 'data/category/1489981179146283024.png', '', '', '1190', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1201', '炸品', 'data/category/1489981365298511624.png', '', '', '1190', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1202', '风味小吃', 'data/category/1489981382639433972.png', '', '', '1190', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1203', '其他面食', 'data/category/1489981392966933292.png', '', '', '1190', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1240', '上门服务', 'data/category/1492544395052605614.png', '', '', '0', '12', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1241', '家政保洁', 'data/category/1458868212808252812.png', '', '', '1240', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1242', '家电清洗', 'data/category/1458868276532812407.png', '', '', '1240', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1243', '洗衣洗鞋', 'data/category/1458868300684763629.png', '', '', '1240', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1244', '生活周边', 'data/category/1458868335876839764.png', '', '', '1240', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1245', '母婴护理', 'data/category/1458876645108152499.png', '', '', '1240', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1246', '按摩美业', 'data/category/1458868371918731191.png', '', '', '1240', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1247', '安装维修', 'data/category/1458868395900985882.png', '', '', '1240', '7', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1248', '汽车服务', 'data/category/1458868414366255990.png', '', '', '1240', '8', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1249', '日常保洁', 'data/category/1489983240662660689.png', '', '', '1241', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1250', '深度保洁', 'data/category/1489983252782860564.png', '', '', '1241', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1251', '除尘除螨', 'data/category/1489983263804965751.png', '', '', '1241', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1252', '组合套餐', 'data/category/1489983279562319118.png', '', '', '1242', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1253', '空调清洗', 'data/category/1489983302708445927.png', '', '', '1242', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1254', '冰箱清洗', 'data/category/1489983315739334662.png', '', '', '1242', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1255', '抽油烟机', 'data/category/1489983325227411062.png', '', '', '1242', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1256', '洗衣机', 'data/category/1489983338679840016.png', '', '', '1242', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1257', '饮水机', 'data/category/1489983348347987819.png', '', '', '1242', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1258', '微波炉', 'data/category/1489983374614884730.png', '', '', '1242', '7', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1259', '其他家电清洗', 'data/category/1489983386566716255.png', '', '', '1242', '8', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1260', '洗衣', 'data/category/1489983402557424614.png', '', '', '1243', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1261', '洗鞋', 'data/category/1489983412966197795.png', '', '', '1243', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1262', '家居家纺', 'data/category/1489983422219408316.png', '', '', '1243', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1263', '奢侈品护理', 'data/category/1489983435168563253.png', '', '', '1243', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1264', '宠物服务', 'data/category/1489983448343748833.png', '', '', '1244', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1265', '厨师', 'data/category/1489983458595396324.png', '', '', '1244', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1266', '月嫂', 'data/category/1489983470720266930.png', '', '', '1245', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1267', '育儿护理', 'data/category/1489983483750048951.png', '', '', '1245', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1268', '中医推拿', 'data/category/1489983492985979139.png', '', '', '1246', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1269', 'spa/足疗', 'data/category/1489983504860286250.png', '', '', '1246', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1270', '小儿/刮痧', 'data/category/1489983517161058158.png', '', '', '1246', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1271', '美容/美体', 'data/category/1489983527620444053.png', '', '', '1246', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1272', '美甲/美妆', 'data/category/1489983537038018273.png', '', '', '1246', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1273', '上门维修', 'data/category/1489983547597096912.png', '', '', '1247', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1276', '热带水果', 'data/category/1459099501226196792.jpg', '', '', '1032', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1277', '进口水果', 'data/category/1459099636383749651.jpg', '', '', '1032', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1278', '时令水果', 'data/category/1459099687078475267.jpg', '', '', '1032', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1279', '冷冻蔬菜', 'data/category/1459099779639967502.jpg', '', '', '1032', '8', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1280', '蛋', 'data/category/1459099868560307722.jpg', '', '', '1047', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1281', '特色禽类', 'data/category/1459099929218432413.jpg', '', '', '1047', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1282', '海产干货', 'data/category/1459100054924779845.jpg', '', '', '1047', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1283', '冷冻点心', 'data/category/1459100123821288425.jpg', '', '', '1064', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1284', '冷餐熟食', 'data/category/1459100187060184473.jpg', '', '', '1064', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1285', '中式主食', 'data/category/1459100308487419292.jpg', '', '', '1064', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1286', '甜品', 'data/category/1459100497724915472.jpg', '', '', '1078', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1287', '稀奶油', 'data/category/1459100608316391911.jpg', '', '', '1078', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1289', '茄果瓜果类', 'data/category/1459100860099879676.jpg', '', '', '1032', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1290', '水', 'data/category/1459101040213914235.jpg', '', '', '1092', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1291', '茄子', 'data/category/1489968841361823590.png', '', '', '1289', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1292', '番茄', 'data/category/1489968856754237133.png', '', '', '1289', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1293', '黄瓜', 'data/category/1489968873938741156.png', '', '', '1289', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `yunji_category_copy` VALUES ('1294', '123', null, null, null, '1033', '50', null, null, '0', null, '1', '0', '0');
INSERT INTO `yunji_category_copy` VALUES ('1295', '123', '20190528/记录.txt', null, null, '1033', '50', null, null, '0', null, '1', '0', '0');
INSERT INTO `yunji_category_copy` VALUES ('1296', '123', '20190528/21312312313123.jpg', null, null, '1033', '50', null, null, '0', null, '1', '0', '0');
INSERT INTO `yunji_category_copy` VALUES ('1297', '123', '20190528/logo-icon.png', null, null, '1034', '50', null, null, '0', null, '1', '0', '0');

-- ----------------------------
-- Table structure for yunji_goods
-- ----------------------------
DROP TABLE IF EXISTS `yunji_goods`;
CREATE TABLE `yunji_goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cat_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goods_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unit_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '单价',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goods_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `goods_img` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_on_sale` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_hot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yunji_goods
-- ----------------------------
INSERT INTO `yunji_goods` VALUES ('2', '0', '1048', null, '123123', '鸡蛋', '0', '122.00', null, '测试', null, '1', '0');
INSERT INTO `yunji_goods` VALUES ('3', '0', '1049', null, '123123', '鸡蛋', '0', '123.00', null, '委屈翁', '/tmp/phphmDimg', '1', '0');
INSERT INTO `yunji_goods` VALUES ('4', '0', '1047', null, '123123', '鸡蛋', '0', '123.00', null, 'qwe', 'goods/20190529/468_G_1459127208058.jpg', '1', '0');
INSERT INTO `yunji_goods` VALUES ('5', '0', '1047', null, '2', '鸡蛋', '0', '2.00', null, '2222', 'goods/20190529/468_G_1459127208058.jpg', '1', '0');

-- ----------------------------
-- Table structure for yunji_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `yunji_order_goods`;
CREATE TABLE `yunji_order_goods` (
  `rec_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `goods_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goods_sn` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `goods_buy_weight` decimal(10,3) NOT NULL DEFAULT '0.000' COMMENT '散装商品购买总重量',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_attr` text COLLATE utf8mb4_unicode_ci,
  `send_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_real` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `model_attr` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of yunji_order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for yunji_order_info
-- ----------------------------
DROP TABLE IF EXISTS `yunji_order_info`;
CREATE TABLE `yunji_order_info` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_sn` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `province` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `district` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `street` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '街道地区码',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经度',
  `latitude` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '纬度',
  `zipcode` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_time` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sign_building` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postscript` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_id` tinyint(4) NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expect_shipping_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '预期送货时间',
  `pay_id` tinyint(4) NOT NULL DEFAULT '0',
  `pay_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `how_oos` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `how_surplus` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pack_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inv_payee` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inv_content` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goods_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `insure_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pack_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `card_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `surplus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `from_ad` smallint(6) NOT NULL DEFAULT '0',
  `referer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  `auto_delivery_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pack_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `card_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension_code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `to_buyer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `inv_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_separate` tinyint(4) NOT NULL DEFAULT '0',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_delete` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `delete_time` datetime DEFAULT NULL COMMENT '删除时间',
  `is_settlement` tinyint(4) NOT NULL DEFAULT '0',
  `sign_time` int(10) unsigned NOT NULL DEFAULT '0',
  `separate_order_sn` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '多商家统一结算主订单号',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `store_order` (`order_id`,`store_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `extension_code` (`extension_code`,`extension_id`),
  KEY `store_id` (`store_id`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`),
  KEY `agency_id` (`agency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of yunji_order_info
-- ----------------------------
