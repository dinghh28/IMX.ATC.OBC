/*
 Navicat Premium Data Transfer

 Source Server         : DeviceDataBase
 Source Server Type    : SQLite
 Source Server Version : 3035005 (3.35.5)
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3035005 (3.35.5)
 File Encoding         : 65001

 Date: 29/05/2023 02:55:58
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for DBCInfoDB
-- ----------------------------
DROP TABLE IF EXISTS "DBCInfoDB";
CREATE TABLE "DBCInfoDB" (
  "ID" INTEGER NOT NULL,
  "DBCFilePath" TEXT,
  "ReportDataDBName" TEXT,
  "SendDataDBName" TEXT,
  PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of DBCInfoDB
-- ----------------------------

-- ----------------------------
-- Table structure for DBCMessageConfigDB
-- ----------------------------
DROP TABLE IF EXISTS "DBCMessageConfigDB";
CREATE TABLE "DBCMessageConfigDB" (
  "ID" INTEGER NOT NULL,
  "dbc_SignalName" TEXT,
  "dbc_OperationType" TEXT,
  "dbc_ConSigNameEN" TEXT,
  "dbc_ConSigNameCN" TEXT,
  "dbc_IniValue" TEXT NOT NULL DEFAULT 0,
  PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of DBCMessageConfigDB
-- ----------------------------

-- ----------------------------
-- Table structure for EquipOperationDB
-- ----------------------------
DROP TABLE IF EXISTS "EquipOperationDB";
CREATE TABLE "EquipOperationDB" (
  "ID" INTEGER NOT NULL,
  "EuipOperationEN" TEXT,
  "EuipOperationCN" TEXT,
  PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of EquipOperationDB
-- ----------------------------

-- ----------------------------
-- Table structure for EquipTypeDB
-- ----------------------------
DROP TABLE IF EXISTS "EquipTypeDB";
CREATE TABLE "EquipTypeDB" (
  "ID" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "EquipmentType" text,
  "EquipmentModel" text,
  "DeviceComType" text
);

-- ----------------------------
-- Records of EquipTypeDB
-- ----------------------------
INSERT INTO "EquipTypeDB" VALUES (1, '设备类型', '设备型号', '设备通讯接口');
INSERT INTO "EquipTypeDB" VALUES (2, 'ACSource', 'ANFS090A', 'Ethernet');
INSERT INTO "EquipTypeDB" VALUES (3, 'ACLoad', 'DS91030', 'CAN');
INSERT INTO "EquipTypeDB" VALUES (4, 'KL12', 'DP800', 'USB');
INSERT INTO "EquipTypeDB" VALUES (5, 'DCLoad', 'DD0640', 'RS485');
INSERT INTO "EquipTypeDB" VALUES (6, 'TemperatureBox', 'X1TK8070', 'RS485');
INSERT INTO "EquipTypeDB" VALUES (7, 'WaterBath', 'LingGong', 'LAN');
INSERT INTO "EquipTypeDB" VALUES (8, 'RelayBoards', 'ZhongShen', 'RS485');

-- ----------------------------
-- Table structure for sqlite_sequence
-- ----------------------------
DROP TABLE IF EXISTS "sqlite_sequence";
CREATE TABLE "sqlite_sequence" (
  "name",
  "seq"
);

-- ----------------------------
-- Records of sqlite_sequence
-- ----------------------------
INSERT INTO "sqlite_sequence" VALUES ('EquipTypeDB', 8);

-- ----------------------------
-- Auto increment value for EquipTypeDB
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 8 WHERE name = 'EquipTypeDB';

PRAGMA foreign_keys = true;
