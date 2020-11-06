/*
 Navicat Premium Data Transfer

 Source Server         : PARCIALDOS
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : bd_blog

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 06/11/2020 04:40:00
*/
CREATE DATABASE bd_blog;
USE bd_blog;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for permisos
-- ----------------------------
DROP TABLE IF EXISTS `permisos`;
CREATE TABLE `permisos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NULL DEFAULT NULL,
  `id_rol` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_usuario`(`id_usuario`) USING BTREE,
  INDEX `id_rol`(`id_rol`) USING BTREE,
  CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of permisos
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Secretaria');
INSERT INTO `roles` VALUES (2, 'Gerente');
INSERT INTO `roles` VALUES (3, 'Portero');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `correo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `clave` varbinary(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 'admin', 'adonaijerusalain@hotmail.com', 0x6531306164633339343962613539616262653536653035376632306638383365);
INSERT INTO `usuarios` VALUES (2, 'zole', 'zole@hotmail.com', 0x6531306164633339343962613539616262653536653035376632306638383365);
INSERT INTO `usuarios` VALUES (3, 'marizol', 'marizol@hotmail.com', 0x6531306164633339343962613539616262653536653035376632306638383365);
INSERT INTO `usuarios` VALUES (4, 'Raul', 'Raul@hotmail.com', 0x6531306164633339343962613539616262653536653035376632306638383365);
INSERT INTO `usuarios` VALUES (5, 'Marcos', 'marco@hotmail.com', 0x6531306164633339343962613539616262653536653035376632306638383365);
INSERT INTO `usuarios` VALUES (6, 'Pedro', 'pedro@hotmail.com', 0x6466646332306362616234383263386431353966343264333235306431663763);
INSERT INTO `usuarios` VALUES (7, 'zole', 'zole@hotmail.com', 0x6531306164633339343962613539616262653536653035376632306638383365);
INSERT INTO `usuarios` VALUES (8, 'Jose', 'jose@gmail.com', 0x6466646332306362616234383263386431353966343264333235306431663763);
INSERT INTO `usuarios` VALUES (9, 'Pablo', 'pablo@gmail.com', 0x6466646332306362616234383263386431353966343264333235306431663763);
INSERT INTO `usuarios` VALUES (10, 'Lucy', 'lucy@gmail.com', 0x6466646332306362616234383263386431353966343264333235306431663763);

SET FOREIGN_KEY_CHECKS = 1;
