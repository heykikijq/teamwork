/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80036
 Source Host           : localhost:3306
 Source Schema         : jiajiao

 Target Server Type    : MySQL
 Target Server Version : 80036
 File Encoding         : 65001

 Date: 25/06/2024 10:28:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456', '管理员', 'http://localhost:9090/files/1719281652356-log.png', 'ADMIN', '13677889922', 'admin@xm.com');

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `teacher_id` int NULL DEFAULT NULL COMMENT '教员ID',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '教员编号',
  `birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出生年月',
  `school` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '所在学校',
  `speciality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '所学专业',
  `education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '最高学历',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '所在省份',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '授课方式',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '目前住址',
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '所授科目',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '个人介绍',
  `plan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '授课安排',
  `star` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '教员星级',
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '教员身份',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核状态',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核理由',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '教员资料表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES (1, 1, '20240325173219', '1990-08-08', '同济大学', '应用数学', '硕士', '上海市', '线上授课', '上海市浦东新区666号', '数学家教', '本人985应用数学硕士，很牛逼，很强！', '每天下午18:00到22:00均可以授课', '4', '优秀教员', '审核通过', '资料符合条件');
INSERT INTO `info` VALUES (2, 2, '20240325174337', '2024-03-05', '清华大学', '对外汉语教育', '博士', '北京市', '线上授课', '北京市海淀区888号', '语文家教', '专业对口，非常专业！', '每日下午18:00到21:30均可以', '5', '金牌教员', '审核通过', '资料符合条件');

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '资讯封面',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '资讯标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '资讯内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '家教资讯表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES (1, 'http://localhost:9090/files/1711530814938-金毛.jpeg', '家教行业现状：快速发展中的机遇与挑战并存', '<p>家教行业在近年来呈现出快速发展的态势，成为教育领域的一大亮点。随着社会对教育的日益重视，家长们对于孩子学习成绩和综合素质的关注度不断提升，家教市场逐渐成为一个充满机遇与挑战并存的新兴行业。</p><p>一方面，家教行业面临着巨大的市场需求。越来越多的家长开始意识到个性化教育的重要性，他们希望通过家教为孩子提供更为精准、针对性的辅导服务。尤其是在一些重点学校和热门学科领域，家教需求更是旺盛，为家教从业者提供了广阔的发展空间。</p><p>另一方面，家教行业的快速发展也带来了一些挑战。首先，市场竞争日益激烈。家教市场上涌现出大量的机构和个体从业者，他们之间的竞争愈发激烈，需要不断提升服务质量和教学水平才能脱颖而出。其次，家教行业的监管和规范尚待加强。目前，家教市场的准入门槛相对较低，一些不具备专业资质和经验的从业者也能轻易进入市场，给家长和孩子带来了一定的风险。</p><p>此外，家教行业的发展还受到一些外部因素的影响。例如，随着线上教育的兴起，一些家长开始选择通过网络平台进行远程家教，这对传统的家教模式构成了一定的冲击。同时，教育政策的调整也会对家教行业产生一定的影响，需要从业者密切关注市场动态和政策变化。</p><p>综上所述，家教行业在快速发展的同时，既面临着巨大的机遇，也伴随着一些挑战。家教从业者需要不断提升自身的专业素养和教学能力，积极应对市场竞争和政策变化，为家长和孩子提供更为优质、高效的家教服务。同时，相关部门也应加强对家教市场的监管和规范，促进家教行业的健康发展。</p>', '2024-03-27 17:14:32');
INSERT INTO `information` VALUES (2, 'http://localhost:9090/files/1711530876355-萨摩耶.jpeg', '家教行业现状：蓬勃发展中的变革与挑战', '<p>当前，家教行业正经历着前所未有的蓬勃发展。随着社会对教育的重视程度不断提升，家长们对于孩子学习成绩和全面发展的期望也日益增加，这为家教行业提供了广阔的市场空间。</p><p>家教行业现状呈现出以下几个显著特点：</p><p>首先，家教市场需求旺盛。越来越多的家长认识到个性化教育的重要性，他们希望通过家教为孩子提供量身定制的学习方案，以满足孩子不同的学习需求。因此，家教市场的需求量持续增长，为家教从业者提供了丰富的机会。</p><p>其次，家教服务形式多样化。除了传统的上门家教形式外，线上家教也逐渐兴起。通过网络平台，家长可以更方便地找到合适的家教老师，实现远程教学。这种形式的家教不仅节省了时间和成本，还为家长和孩子提供了更多的选择。</p><p>然而，家教行业在蓬勃发展的同时，也面临着一些挑战。一方面，家教市场的竞争日益激烈。越来越多的家教机构和独立家教老师进入市场，使得家长在选择家教时面临更多的选择困难。另一方面，家教行业的监管和规范尚不完善。一些家教从业者缺乏专业资质和教学经验，甚至存在违规行为，给家长和孩子带来了一定的风险。</p><p><img src=\"http://localhost:9090/files/1711611378124-萨摩耶.jpeg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p><p>针对这些挑战，家教行业需要进一步加强自律和规范。一方面，家教从业者应该不断提升自己的专业素养和教学能力，确保能够为孩子提供高质量的教学服务。另一方面，相关部门也应该加强对家教市场的监管和管理，制定更加完善的法规和政策，规范家教行业的发展。</p><p>综上所述，家教行业在蓬勃发展的同时，也面临着变革和挑战。只有不断提升服务质量、加强行业自律和规范管理，家教行业才能持续健康发展，为更多孩子提供优质的教育服务。</p>', '2024-03-27 17:14:40');
INSERT INTO `information` VALUES (8, NULL, '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '<p>啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>', '2024-06-23 22:13:45');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户角色',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '留言内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '留言时间',
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '反馈内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '留言反馈表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, 1, 'USER', '我来测试一波看看！', '2024-03-29', '来吧来吧');
INSERT INTO `message` VALUES (2, 1, 'USER', '我再来测试一波看看！', '2024-03-29', '没问题没问题');
INSERT INTO `message` VALUES (3, 1, 'USER', '我再三来测试一波看看！', '2024-03-29', '可以可以');
INSERT INTO `message` VALUES (4, 1, 'USER', '我再三来测试一波看看！我再三来测试一波看看！我再三来测试一波看看！我再三来测试一波看看！我再三来测试一波看看！我再三来测试一波看看！我再三来测试一波看看！我再三来测试一波看看！我再三来测试一波看看！我再三来测试一波看看！我再三来测试一波看看！我再三来测试一波看看！', '2024-03-29', '好的好的');
INSERT INTO `message` VALUES (5, 1, 'TEACHER', '我也来测试一波看看！', '2024-03-29', '你来瞎起什么哄！');
INSERT INTO `message` VALUES (6, 1, 'USER', '遭到否决哦i阿斯顿', '2024-06-21', NULL);
INSERT INTO `message` VALUES (7, 1, 'USER', '啊实打实的', '2024-06-22', NULL);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '今天系统正式上线，开始内测', '今天系统正式上线，开始内测', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (2, '所有功能都已完成，可以正常使用', '所有功能都已完成，可以正常使用', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (3, '今天天气很不错，可以出去一起玩了', '今天天气很不错，可以出去一起玩了', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (4, 'asdasdasd', 'asdasdasdadasdasdasdasd', '2024-06-21', 'admin');

-- ----------------------------
-- Table structure for publish
-- ----------------------------
DROP TABLE IF EXISTS `publish`;
CREATE TABLE `publish`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int NULL DEFAULT NULL COMMENT '发布人ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `teacher_id` int NULL DEFAULT NULL COMMENT '接单人ID',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '发布家教表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of publish
-- ----------------------------
INSERT INTO `publish` VALUES (1, 1, '急找一位语文家教，我家孩子语文实在是太差了！价格面议', '<p>我家孩子今年三年级，语文成绩一直很差，感觉一直提不上兴趣，急找一位文科专业的家教老师来辅导一下我家孩子，要求：最好是能趣味点，如果有这方面的经验的小伙伴，欢迎联系我，价格可商量！!<br/></p>', '2024-03-28 16:22:00', NULL, '待接单');
INSERT INTO `publish` VALUES (2, 2, '急需一位物理老师', '<p>孩子快要中考了，物理比较差，需要一位有经验的老师来帮忙恶补一下，线上线下都可以，联系电话13245679564<br/></p>', '2024-03-28 16:28:47', 1, '已接单');

-- ----------------------------
-- Table structure for reserve
-- ----------------------------
DROP TABLE IF EXISTS `reserve`;
CREATE TABLE `reserve`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int NULL DEFAULT NULL COMMENT '家长ID',
  `teacher_id` int NULL DEFAULT NULL COMMENT '教员ID',
  `start` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '开始时间',
  `end` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '结束时间',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '预约说明',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '预约状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '家教预约表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reserve
-- ----------------------------
INSERT INTO `reserve` VALUES (1, 1, 1, '2024-03-27', '2024-03-30', '1111122312', '待确认');
INSERT INTO `reserve` VALUES (3, 2, 1, '2024-03-27', '2024-03-30', '啦啦啦啦啦嘿', '已接受');
INSERT INTO `reserve` VALUES (4, 1, 2, NULL, NULL, 'asdsad ', '待确认');
INSERT INTO `reserve` VALUES (17, 2, 2, NULL, NULL, NULL, '待确认');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '教员表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, 'zhang', '123456', '张老师', 'http://localhost:9090/files/1719281619524-log.png', 'TEACHER', '18800008888', 'zhang@xm.com');
INSERT INTO `teacher` VALUES (3, 'qian', '123456', '钱老师', 'http://localhost:9090/files/1719281625609-log.png', 'TEACHER', '18877776666', 'qian@xm.com');
INSERT INTO `teacher` VALUES (4, 'sun', '123456', 'sun', 'http://localhost:9090/files/1719281632545-log.png', 'TEACHER', NULL, NULL);
INSERT INTO `teacher` VALUES (6, 'zhao', '123', '赵老师', 'http://localhost:9090/files/1719281639910-log.png', 'TEACHER', '1889999000', 'zhao@xm.com');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类小类',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '分类表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '语文家教', '普通文化课', 'http://localhost:9090/files/1718896347428-logo.png');
INSERT INTO `type` VALUES (2, '数学家教', '普通文化课', 'http://localhost:9090/files/1710927479850-sx.png');
INSERT INTO `type` VALUES (3, '英语家教', '普通文化课', 'http://localhost:9090/files/1710927525830-yy.png');
INSERT INTO `type` VALUES (4, '物理家教', '普通文化课', 'http://localhost:9090/files/1710927711653-wl.png');
INSERT INTO `type` VALUES (5, '化学家教', '普通文化课', 'http://localhost:9090/files/1710927729165-hx.png');
INSERT INTO `type` VALUES (6, '生物家教', '普通文化课', 'http://localhost:9090/files/1710927747259-sw.png');
INSERT INTO `type` VALUES (7, '政治家教', '普通文化课', 'http://localhost:9090/files/1710927784965-zz.png');
INSERT INTO `type` VALUES (8, '历史家教', '普通文化课', 'http://localhost:9090/files/1710927803934-ls.png');
INSERT INTO `type` VALUES (9, '地理家教', '普通文化课', 'http://localhost:9090/files/1710927818232-dl.png');
INSERT INTO `type` VALUES (10, '计算机', '兴趣拔高课', 'http://localhost:9090/files/1710927846675-jsj.png');
INSERT INTO `type` VALUES (11, '经济金融', '兴趣拔高课', 'http://localhost:9090/files/1710927868003-jj.png');
INSERT INTO `type` VALUES (12, '大学课程', '兴趣拔高课', 'http://localhost:9090/files/1710927882748-dx.png');
INSERT INTO `type` VALUES (13, '小语种', '兴趣拔高课', 'http://localhost:9090/files/1710927898875-xyz.png');
INSERT INTO `type` VALUES (14, '体育运动', '兴趣拔高课', 'http://localhost:9090/files/1710927913529-ty.png');
INSERT INTO `type` VALUES (15, '艺术美术', '兴趣拔高课', 'http://localhost:9090/files/1710927929125-ys.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '家长表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'zhangsan', '123456', '张三', 'USER', '18877776666', 'zhangsan@xm.com', 'http://localhost:9090/files/1719281661896-log.png');
INSERT INTO `user` VALUES (2, 'lisi', '123456', '李四aaa', 'USER', '18866665555', 'lisi@xm.com', 'http://localhost:9090/files/1719281667884-log.png');
INSERT INTO `user` VALUES (3, 'zhaoliu', '123456', 'zhaoliu', 'USER', NULL, NULL, NULL);
INSERT INTO `user` VALUES (4, 'wangwu', '123456', 'wangwu', 'USER', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
