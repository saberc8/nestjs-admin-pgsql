/*
PostgreSQL Backup
Database: qundd_v1/public
Backup Time: 2024-06-28 09:50:21
*/

DROP SEQUENCE IF EXISTS "public"."admin_wechat_adminWechatId_seq";
DROP SEQUENCE IF EXISTS "public"."banner_bannerId_seq";
DROP SEQUENCE IF EXISTS "public"."news_comment_newsCommentId_seq";
DROP SEQUENCE IF EXISTS "public"."news_newsId_seq";
DROP SEQUENCE IF EXISTS "public"."news_type_newsTypeId_seq";
DROP SEQUENCE IF EXISTS "public"."province_provinceId_seq";
DROP SEQUENCE IF EXISTS "public"."qun_qunId_seq";
DROP SEQUENCE IF EXISTS "public"."qun_type_qunTypeId_seq";
DROP SEQUENCE IF EXISTS "public"."sys_config_configId_seq";
DROP SEQUENCE IF EXISTS "public"."sys_dept_deptId_seq";
DROP SEQUENCE IF EXISTS "public"."sys_dict_data_dictCode_seq";
DROP SEQUENCE IF EXISTS "public"."sys_dict_type_dictId_seq";
DROP SEQUENCE IF EXISTS "public"."sys_job_jobId_seq";
DROP SEQUENCE IF EXISTS "public"."sys_job_log_jobLogId_seq";
DROP SEQUENCE IF EXISTS "public"."sys_login_infor_infoId_seq";
DROP SEQUENCE IF EXISTS "public"."sys_menu_menuId_seq";
DROP SEQUENCE IF EXISTS "public"."sys_notice_noticeId_seq";
DROP SEQUENCE IF EXISTS "public"."sys_oper_log_operId_seq";
DROP SEQUENCE IF EXISTS "public"."sys_post_postId_seq";
DROP SEQUENCE IF EXISTS "public"."sys_role_roleId_seq";
DROP SEQUENCE IF EXISTS "public"."sys_user_userId_seq";
DROP SEQUENCE IF EXISTS "public"."sys_web_webId_seq";
DROP SEQUENCE IF EXISTS "public"."wx_user_wxUserId_seq";
DROP TABLE IF EXISTS "public"."_prisma_migrations";
DROP TABLE IF EXISTS "public"."_qun_to_qun_type";
DROP TABLE IF EXISTS "public"."_sys_dept_to_sys_role";
DROP TABLE IF EXISTS "public"."_sys_menu_to_sys_role";
DROP TABLE IF EXISTS "public"."_sys_post_to_sys_user";
DROP TABLE IF EXISTS "public"."_sys_role_to_sys_user";
DROP TABLE IF EXISTS "public"."admin_wechat";
DROP TABLE IF EXISTS "public"."banner";
DROP TABLE IF EXISTS "public"."news";
DROP TABLE IF EXISTS "public"."news_comment";
DROP TABLE IF EXISTS "public"."news_type";
DROP TABLE IF EXISTS "public"."province";
DROP TABLE IF EXISTS "public"."qun";
DROP TABLE IF EXISTS "public"."qun_type";
DROP TABLE IF EXISTS "public"."sys_config";
DROP TABLE IF EXISTS "public"."sys_dept";
DROP TABLE IF EXISTS "public"."sys_dict_data";
DROP TABLE IF EXISTS "public"."sys_dict_type";
DROP TABLE IF EXISTS "public"."sys_job";
DROP TABLE IF EXISTS "public"."sys_job_log";
DROP TABLE IF EXISTS "public"."sys_login_infor";
DROP TABLE IF EXISTS "public"."sys_menu";
DROP TABLE IF EXISTS "public"."sys_notice";
DROP TABLE IF EXISTS "public"."sys_oper_log";
DROP TABLE IF EXISTS "public"."sys_post";
DROP TABLE IF EXISTS "public"."sys_role";
DROP TABLE IF EXISTS "public"."sys_table";
DROP TABLE IF EXISTS "public"."sys_user";
DROP TABLE IF EXISTS "public"."sys_web";
DROP TABLE IF EXISTS "public"."wx_user";
CREATE SEQUENCE "admin_wechat_adminWechatId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "banner_bannerId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "news_comment_newsCommentId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "news_newsId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "news_type_newsTypeId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "province_provinceId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "qun_qunId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "qun_type_qunTypeId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "sys_config_configId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "sys_dept_deptId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "sys_dict_data_dictCode_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "sys_dict_type_dictId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "sys_job_jobId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "sys_job_log_jobLogId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "sys_login_infor_infoId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "sys_menu_menuId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "sys_notice_noticeId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "sys_oper_log_operId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "sys_post_postId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "sys_role_roleId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "sys_user_userId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "sys_web_webId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "wx_user_wxUserId_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE TABLE "_prisma_migrations" (
  "id" varchar(36) COLLATE "pg_catalog"."default" NOT NULL,
  "checksum" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "finished_at" timestamptz(6),
  "migration_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "logs" text COLLATE "pg_catalog"."default",
  "rolled_back_at" timestamptz(6),
  "started_at" timestamptz(6) NOT NULL DEFAULT now(),
  "applied_steps_count" int4 NOT NULL DEFAULT 0
)
;
ALTER TABLE "_prisma_migrations" OWNER TO "postgres";
CREATE TABLE "_qun_to_qun_type" (
  "A" int4 NOT NULL,
  "B" int4 NOT NULL
)
;
ALTER TABLE "_qun_to_qun_type" OWNER TO "postgres";
CREATE TABLE "_sys_dept_to_sys_role" (
  "A" int4 NOT NULL,
  "B" int4 NOT NULL
)
;
ALTER TABLE "_sys_dept_to_sys_role" OWNER TO "postgres";
CREATE TABLE "_sys_menu_to_sys_role" (
  "A" int4 NOT NULL,
  "B" int4 NOT NULL
)
;
ALTER TABLE "_sys_menu_to_sys_role" OWNER TO "postgres";
CREATE TABLE "_sys_post_to_sys_user" (
  "A" int4 NOT NULL,
  "B" int4 NOT NULL
)
;
ALTER TABLE "_sys_post_to_sys_user" OWNER TO "postgres";
CREATE TABLE "_sys_role_to_sys_user" (
  "A" int4 NOT NULL,
  "B" int4 NOT NULL
)
;
ALTER TABLE "_sys_role_to_sys_user" OWNER TO "postgres";
CREATE TABLE "admin_wechat" (
  "adminWechatId" int4 NOT NULL DEFAULT nextval('"admin_wechat_adminWechatId_seq"'::regclass),
  "nickName" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "avatar" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "qrcode" varchar(100) COLLATE "pg_catalog"."default",
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "delFlag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "type" text COLLATE "pg_catalog"."default" DEFAULT '0'::text,
  "wechatid" varchar(50) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "admin_wechat" OWNER TO "postgres";
CREATE TABLE "banner" (
  "bannerId" int4 NOT NULL DEFAULT nextval('"banner_bannerId_seq"'::regclass),
  "title" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "imageUrl" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "redirectType" char(1) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::bpchar,
  "redirectInfo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "orderNum" int4 NOT NULL DEFAULT 0,
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "delFlag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar
)
;
ALTER TABLE "banner" OWNER TO "postgres";
CREATE TABLE "news" (
  "newsId" int4 NOT NULL DEFAULT nextval('"news_newsId_seq"'::regclass),
  "title" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "content" text COLLATE "pg_catalog"."default",
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "delFlag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "typeId" int4
)
;
ALTER TABLE "news" OWNER TO "postgres";
CREATE TABLE "news_comment" (
  "newsCommentId" int4 NOT NULL DEFAULT nextval('"news_comment_newsCommentId_seq"'::regclass),
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "delFlag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "newsId" int4 NOT NULL
)
;
ALTER TABLE "news_comment" OWNER TO "postgres";
CREATE TABLE "news_type" (
  "newsTypeId" int4 NOT NULL DEFAULT nextval('"news_type_newsTypeId_seq"'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "delFlag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar
)
;
ALTER TABLE "news_type" OWNER TO "postgres";
CREATE TABLE "province" (
  "provinceId" int4 NOT NULL DEFAULT nextval('"province_provinceId_seq"'::regclass),
  "provinceName" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "shortName" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "avatar" varchar(250) COLLATE "pg_catalog"."default",
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "delFlag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar
)
;
ALTER TABLE "province" OWNER TO "postgres";
CREATE TABLE "qun" (
  "qunId" int4 NOT NULL DEFAULT nextval('"qun_qunId_seq"'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "announcement" text COLLATE "pg_catalog"."default",
  "avatar" text COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "orderNum" int4,
  "keyword" varchar(255) COLLATE "pg_catalog"."default",
  "wxid" varchar(255) COLLATE "pg_catalog"."default",
  "provinceId" int4,
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "delFlag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "tags" text COLLATE "pg_catalog"."default",
  "adminWechatId" int4
)
;
ALTER TABLE "qun" OWNER TO "postgres";
CREATE TABLE "qun_type" (
  "qunTypeId" int4 NOT NULL DEFAULT nextval('"qun_type_qunTypeId_seq"'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "delFlag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "iconActive" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "iconNormal" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "orderNum" int4 DEFAULT 0,
  "color" varchar(50) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "qun_type" OWNER TO "postgres";
CREATE TABLE "sys_config" (
  "configId" int4 NOT NULL DEFAULT nextval('"sys_config_configId_seq"'::regclass),
  "configName" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "configKey" varchar(100) COLLATE "pg_catalog"."default",
  "configValue" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "configType" char(1) COLLATE "pg_catalog"."default" DEFAULT 'N'::bpchar,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "sys_config" OWNER TO "postgres";
CREATE TABLE "sys_dept" (
  "deptId" int4 NOT NULL DEFAULT nextval('"sys_dept_deptId_seq"'::regclass),
  "parentId" int4,
  "ancestors" varchar(50) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "deptName" varchar(30) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "orderNum" int4 DEFAULT 0,
  "leader" varchar(20) COLLATE "pg_catalog"."default",
  "phone" varchar(11) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "delFlag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP
)
;
ALTER TABLE "sys_dept" OWNER TO "postgres";
CREATE TABLE "sys_dict_data" (
  "dictCode" int4 NOT NULL DEFAULT nextval('"sys_dict_data_dictCode_seq"'::regclass),
  "dictSort" int4 DEFAULT 0,
  "dictLabel" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dictValue" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dictType" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "cssClass" varchar(100) COLLATE "pg_catalog"."default",
  "listClass" varchar(100) COLLATE "pg_catalog"."default",
  "isDefault" char(1) COLLATE "pg_catalog"."default" DEFAULT 'N'::bpchar,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "sys_dict_data" OWNER TO "postgres";
CREATE TABLE "sys_dict_type" (
  "dictId" int4 NOT NULL DEFAULT nextval('"sys_dict_type_dictId_seq"'::regclass),
  "dictName" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dictType" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "sys_dict_type" OWNER TO "postgres";
CREATE TABLE "sys_job" (
  "jobId" int4 NOT NULL DEFAULT nextval('"sys_job_jobId_seq"'::regclass),
  "jobName" varchar(64) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "jobGroup" varchar(64) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'DEFAULT'::character varying,
  "invokeTarget" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "cronExpression" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "misfirePolicy" varchar(20) COLLATE "pg_catalog"."default" DEFAULT '3'::character varying,
  "concurrent" char(1) COLLATE "pg_catalog"."default" DEFAULT '1'::bpchar,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
ALTER TABLE "sys_job" OWNER TO "postgres";
CREATE TABLE "sys_job_log" (
  "jobLogId" int4 NOT NULL DEFAULT nextval('"sys_job_log_jobLogId_seq"'::regclass),
  "jobName" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "jobGroup" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "invokeTarget" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "jobMessage" varchar(500) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "exceptionInfo" varchar(2000) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP
)
;
ALTER TABLE "sys_job_log" OWNER TO "postgres";
CREATE TABLE "sys_login_infor" (
  "infoId" int4 NOT NULL DEFAULT nextval('"sys_login_infor_infoId_seq"'::regclass),
  "userName" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "ipaddr" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "loginLocation" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "browser" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "os" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "msg" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "loginTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP
)
;
ALTER TABLE "sys_login_infor" OWNER TO "postgres";
CREATE TABLE "sys_menu" (
  "menuId" int4 NOT NULL DEFAULT nextval('"sys_menu_menuId_seq"'::regclass),
  "menuName" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "parentId" int4,
  "orderNum" int4 DEFAULT 0,
  "path" varchar(200) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "component" varchar(255) COLLATE "pg_catalog"."default",
  "query" varchar(255) COLLATE "pg_catalog"."default",
  "isFrame" char(1) COLLATE "pg_catalog"."default" DEFAULT '1'::bpchar,
  "isCache" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "menuType" char(1) COLLATE "pg_catalog"."default" DEFAULT ''::bpchar,
  "visible" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "perms" varchar(100) COLLATE "pg_catalog"."default",
  "icon" varchar(100) COLLATE "pg_catalog"."default" DEFAULT '#'::character varying,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
ALTER TABLE "sys_menu" OWNER TO "postgres";
CREATE TABLE "sys_notice" (
  "noticeId" int4 NOT NULL DEFAULT nextval('"sys_notice_noticeId_seq"'::regclass),
  "noticeTitle" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "noticeType" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "noticeContent" text COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "sys_notice" OWNER TO "postgres";
CREATE TABLE "sys_oper_log" (
  "operId" int4 NOT NULL DEFAULT nextval('"sys_oper_log_operId_seq"'::regclass),
  "title" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "businessType" char(2) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "method" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "requestMethod" varchar(10) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "operatorType" int4 DEFAULT 0,
  "operName" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "deptName" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "operUrl" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "operIp" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "operLocation" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "operParam" text COLLATE "pg_catalog"."default",
  "jsonResult" text COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "errorMsg" text COLLATE "pg_catalog"."default",
  "operTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "costTime" int4 DEFAULT 0
)
;
ALTER TABLE "sys_oper_log" OWNER TO "postgres";
CREATE TABLE "sys_post" (
  "postId" int4 NOT NULL DEFAULT nextval('"sys_post_postId_seq"'::regclass),
  "postCode" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "postName" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "postSort" int4 NOT NULL,
  "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "sys_post" OWNER TO "postgres";
CREATE TABLE "sys_role" (
  "roleId" int4 NOT NULL DEFAULT nextval('"sys_role_roleId_seq"'::regclass),
  "createBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "dataScope" char(1) COLLATE "pg_catalog"."default" DEFAULT '1'::bpchar,
  "delFlag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "deptCheckStrictly" bool DEFAULT true,
  "menuCheckStrictly" bool DEFAULT true,
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "roleKey" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "roleName" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "roleSort" int4 NOT NULL,
  "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP
)
;
ALTER TABLE "sys_role" OWNER TO "postgres";
CREATE TABLE "sys_table" (
  "tableId" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "tableJsonConfig" text COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "sys_table" OWNER TO "postgres";
CREATE TABLE "sys_user" (
  "userId" int4 NOT NULL DEFAULT nextval('"sys_user_userId_seq"'::regclass),
  "avatar" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "delFlag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "deptId" int4,
  "email" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "loginDate" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "loginIp" varchar(128) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "nickName" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "phonenumber" varchar(11) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "sex" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "userName" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "userType" varchar(2) COLLATE "pg_catalog"."default" DEFAULT '00'::character varying
)
;
ALTER TABLE "sys_user" OWNER TO "postgres";
CREATE TABLE "sys_web" (
  "webId" int4 NOT NULL DEFAULT nextval('"sys_web_webId_seq"'::regclass),
  "theme" varchar(50) COLLATE "pg_catalog"."default" DEFAULT '#409EFF'::character varying,
  "sideTheme" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "topNav" bool,
  "tagsView" bool,
  "fixedHeader" bool,
  "sidebarLogo" bool,
  "dynamicTitle" bool,
  "createBy" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "createTime" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updateBy" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "updateTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP
)
;
ALTER TABLE "sys_web" OWNER TO "postgres";
CREATE TABLE "wx_user" (
  "wxUserId" int4 NOT NULL DEFAULT nextval('"wx_user_wxUserId_seq"'::regclass),
  "nickName" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "avatarUrl" varchar(250) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "city" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "country" text COLLATE "pg_catalog"."default" DEFAULT ''::text,
  "province" varchar COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "openid" varchar COLLATE "pg_catalog"."default",
  "sessionKey" varchar COLLATE "pg_catalog"."default",
  "from" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "gender" int4 DEFAULT 0,
  "isWeixin" bool DEFAULT true,
  "isAdmin" bool DEFAULT false,
  "email" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "password" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "phonenumber" varchar(11) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "createTime" timestamp(3) DEFAULT CURRENT_TIMESTAMP,
  "delFlag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "remark" varchar COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "wx_user" OWNER TO "postgres";
BEGIN;
LOCK TABLE "public"."_prisma_migrations" IN SHARE MODE;
DELETE FROM "public"."_prisma_migrations";
INSERT INTO "public"."_prisma_migrations" ("id","checksum","finished_at","migration_name","logs","rolled_back_at","started_at","applied_steps_count") VALUES ('03040d7f-3eed-4f32-a91f-cf82de41f329', 'af38c6bf0c42e4951c5fe2ea403dc04b0a961e64df2ef9bdee7fa0dbc50838bb', '2024-06-01 10:43:37.592925+08', '20240601024337_0init', NULL, NULL, '2024-06-01 10:43:37.537922+08', 1)
;
COMMIT;
BEGIN;
LOCK TABLE "public"."_qun_to_qun_type" IN SHARE MODE;
DELETE FROM "public"."_qun_to_qun_type";
INSERT INTO "public"."_qun_to_qun_type" ("A","B") VALUES (1, 2),(2, 2),(3, 2),(3, 4),(1, 5),(5, 2)
;
COMMIT;
BEGIN;
LOCK TABLE "public"."_sys_dept_to_sys_role" IN SHARE MODE;
DELETE FROM "public"."_sys_dept_to_sys_role";
INSERT INTO "public"."_sys_dept_to_sys_role" ("A","B") VALUES (100, 1)
;
COMMIT;
BEGIN;
LOCK TABLE "public"."_sys_menu_to_sys_role" IN SHARE MODE;
DELETE FROM "public"."_sys_menu_to_sys_role";
INSERT INTO "public"."_sys_menu_to_sys_role" ("A","B") VALUES (1, 2),(107, 2),(1035, 2),(1036, 2),(1037, 2),(1038, 2),(2, 3),(109, 3),(112, 3),(1046, 3),(1047, 3),(1048, 3)
;
COMMIT;
BEGIN;
LOCK TABLE "public"."_sys_post_to_sys_user" IN SHARE MODE;
DELETE FROM "public"."_sys_post_to_sys_user";
INSERT INTO "public"."_sys_post_to_sys_user" ("A","B") VALUES (1, 3),(2, 3),(3, 3)
;
COMMIT;
BEGIN;
LOCK TABLE "public"."_sys_role_to_sys_user" IN SHARE MODE;
DELETE FROM "public"."_sys_role_to_sys_user";
INSERT INTO "public"."_sys_role_to_sys_user" ("A","B") VALUES (1, 1),(1, 3),(2, 4),(2, 5),(3, 6)
;
COMMIT;
BEGIN;
LOCK TABLE "public"."admin_wechat" IN SHARE MODE;
DELETE FROM "public"."admin_wechat";
INSERT INTO "public"."admin_wechat" ("adminWechatId","nickName","avatar","qrcode","createTime","updateTime","createBy","updateBy","delFlag","type","wechatid") VALUES (1, '余森林', 'https://qiniu.linkxspace.cn/wechat/bot/avatar_100001.jpeg', 'https://qiniu.linkxspace.cn/qdd/group_master_001.jpeg', '2024-06-27 22:04:07.21', '2024-06-27 22:04:07.21', '', '', '0', '0', 'saber1122')
;
COMMIT;
BEGIN;
LOCK TABLE "public"."banner" IN SHARE MODE;
DELETE FROM "public"."banner";
INSERT INTO "public"."banner" ("bannerId","title","imageUrl","redirectType","redirectInfo","orderNum","createTime","updateTime","createBy","updateBy","delFlag") VALUES (2, '1', 'https://qiniu.linkxspace.cn/0b5f5769-683e-4f80-bb27-6b9887d153ba', '1', '1', 1, '2024-06-27 14:14:16.463', '2024-06-27 14:14:16.463', '', '', '0'),(3, '2', 'https://qiniu.linkxspace.cn/wechat/bot/avatar_100001.jpeg', '1', '1', 2, '2024-06-27 20:15:00.405', '2024-06-27 20:15:00.405', '', '', '0')
;
COMMIT;
BEGIN;
LOCK TABLE "public"."news" IN SHARE MODE;
DELETE FROM "public"."news";
COMMIT;
BEGIN;
LOCK TABLE "public"."news_comment" IN SHARE MODE;
DELETE FROM "public"."news_comment";
COMMIT;
BEGIN;
LOCK TABLE "public"."news_type" IN SHARE MODE;
DELETE FROM "public"."news_type";
COMMIT;
BEGIN;
LOCK TABLE "public"."province" IN SHARE MODE;
DELETE FROM "public"."province";
COMMIT;
BEGIN;
LOCK TABLE "public"."qun" IN SHARE MODE;
DELETE FROM "public"."qun";
INSERT INTO "public"."qun" ("qunId","name","announcement","avatar","longitude","latitude","orderNum","keyword","wxid","provinceId","createTime","updateTime","createBy","updateBy","delFlag","tags","adminWechatId") VALUES (1, '薅羊毛群', '一起来', 'https://qiniu.linkxspace.cn/wechat/q1.png', 121, 121, 0, '羊毛', 'yangmao', NULL, '2024-06-27 14:47:12.693', '2024-06-27 14:47:12.693', '', '', '0', '省钱,和谐,大神多,专业', NULL),(21, '212121', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_1000020.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:16:30.355', '2024-06-27 20:16:30.355', '', '', '0', NULL, NULL),(22, '222222', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_1000021.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:16:34.317', '2024-06-27 20:16:34.317', '', '', '0', NULL, NULL),(23, '232323', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_1000022.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:16:38.347', '2024-06-27 20:16:38.347', '', '', '0', NULL, NULL),(2, '打工人互助群1', '打工人互助群1', 'https://qiniu.linkxspace.cn/wechat/bot/avatar_100001.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 14:51:13.101', '2024-06-27 14:51:13.101', '', '', '0', NULL, NULL),(3, '上海搭子群', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_100002.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 14:51:40.195', '2024-06-27 14:51:40.195', '', '', '0', NULL, NULL),(4, '3', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_100003.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:15:15.756', '2024-06-27 20:15:15.756', '', '', '0', NULL, NULL),(5, '4', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_100004.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:15:19.847', '2024-06-27 20:15:19.847', '', '', '0', NULL, NULL),(6, '5', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_100005.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:15:22.831', '2024-06-27 20:15:22.831', '', '', '0', NULL, NULL),(7, '6', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_100006.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:15:25.709', '2024-06-27 20:15:25.709', '', '', '0', NULL, NULL),(8, '8', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_100007.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:15:30.064', '2024-06-27 20:15:30.064', '', '', '0', NULL, NULL),(9, '999', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_100008.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:15:34.45', '2024-06-27 20:15:34.45', '', '', '0', NULL, NULL),(10, '101010', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_100009.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:15:38.796', '2024-06-27 20:15:38.796', '', '', '0', NULL, NULL),(11, '111111', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_1000010.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:15:42.713', '2024-06-27 20:15:42.713', '', '', '0', NULL, NULL),(12, '121212', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_1000011.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:15:49.772', '2024-06-27 20:15:49.772', '', '', '0', NULL, NULL),(13, '131313', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_1000012.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:15:54.61', '2024-06-27 20:15:54.61', '', '', '0', NULL, NULL),(14, '141414', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_1000013.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:15:58.8', '2024-06-27 20:15:58.8', '', '', '0', NULL, NULL),(15, '151515', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_1000014.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:16:02.51', '2024-06-27 20:16:02.51', '', '', '0', NULL, NULL),(16, '161616', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_1000015.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:16:06.942', '2024-06-27 20:16:06.942', '', '', '0', NULL, NULL),(17, '171717', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_1000016.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:16:10.676', '2024-06-27 20:16:10.676', '', '', '0', NULL, NULL),(18, '181818', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_1000017.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:16:14.674', '2024-06-27 20:16:14.674', '', '', '0', NULL, NULL),(19, '191919', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_1000018.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:16:18.742', '2024-06-27 20:16:18.742', '', '', '0', NULL, NULL),(20, '202020', NULL, 'https://qiniu.linkxspace.cn/wechat/bot/avatar_1000019.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-27 20:16:22.451', '2024-06-27 20:16:22.451', '', '', '0', NULL, NULL)
;
COMMIT;
BEGIN;
LOCK TABLE "public"."qun_type" IN SHARE MODE;
DELETE FROM "public"."qun_type";
INSERT INTO "public"."qun_type" ("qunTypeId","name","createTime","updateTime","createBy","updateBy","delFlag","iconActive","iconNormal","orderNum","color") VALUES (2, '热门', '2024-06-27 14:28:39.567', '2024-06-27 14:28:39.567', '', '', '0', '/assets/images/home/hot_0.svg', '/assets/images/home/hot_1.svg', 0, '#5e92f7'),(4, '行业', '2024-06-27 14:33:59.636', '2024-06-27 14:33:59.636', '', '', '0', '/assets/images/home/industry_0.svg', '/assets/images/home/industry_1.svg', 1, '#ff556e'),(5, '闲聊', '2024-06-27 14:34:26.599', '2024-06-27 14:34:26.599', '', '', '0', '/assets/images/home/chat_0.svg', '/assets/images/home/chat_1.svg', 3, '#00da6e'),(7, '游戏', '2024-06-27 14:34:58.661', '2024-06-27 14:34:58.661', '', '', '0', '/assets/images/home/game_0.svg', '/assets/images/home/game_1.svg', 4, '#ffa13c'),(10, '休闲', '2024-06-27 21:15:58.272', '2024-06-27 21:15:58.272', '', '', '0', '/assets/images/home/sport_0.svg', '/assets/images/home/sport_1.svg', 5, '#c773ff'),(11, '同城', '2024-06-27 21:16:37.968', '2024-06-27 21:16:37.968', '', '', '0', '/assets/images/home/city_0.svg', '/assets/images/home/city_1.svg', 6, '#fece02'),(14, '学习', '2024-06-27 21:17:06.342', '2024-06-27 21:17:06.342', '', '', '0', '/assets/images/home/study_0.svg', '/assets/images/home/study_1.svg', 7, '#0dcac8')
;
COMMIT;
BEGIN;
LOCK TABLE "public"."sys_config" IN SHARE MODE;
DELETE FROM "public"."sys_config";
INSERT INTO "public"."sys_config" ("configId","configName","configKey","configValue","configType","createBy","createTime","updateBy","updateTime","remark") VALUES (1, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-05-17 16:07:16', '', NULL, '初始化密码 123456')
;
COMMIT;
BEGIN;
LOCK TABLE "public"."sys_dept" IN SHARE MODE;
DELETE FROM "public"."sys_dept";
INSERT INTO "public"."sys_dept" ("deptId","parentId","ancestors","deptName","orderNum","leader","phone","email","status","delFlag","createBy","createTime","updateBy","updateTime") VALUES (106, 101, ',100,101,106,', '财务部门', 4, '小蒋', '13006133172', '87789771@qq.com', '0', '0', 'admin', '2024-05-17 16:07:16', '', NULL),(109, 102, ',100,102,109,', '财务部门', 2, '小蒋', '13006133172', '87789771@qq.com', '0', '1', 'admin', '2024-05-17 16:07:16', '', NULL),(108, 102, ',100,102,108,', '市场部门', 1, '小蒋', '13006133172', '87789771@qq.com', '0', '1', 'admin', '2024-05-17 16:07:16', '', NULL),(1, 102, ',100,102,1,', '1', 0, NULL, NULL, NULL, '0', '1', 'admin', '2024-06-01 07:11:02', '', '2024-06-01 07:11:02.484'),(102, 100, ',102,', '阜阳分公司', 2, '小蒋', '13006133172', '87789771@qq.com', '0', '0', 'admin', '2024-05-17 16:07:16', 'admin', '2024-06-01 07:12:19'),(107, 101, ',100,101,107,', '运维部门', 5, '小蒋', '13006133172', '87789771@qq.com', '0', '1', 'admin', '2024-05-17 16:07:16', '', NULL),(103, 101, ',100,101,103,', '研发部门', 1, '小蒋', '13006133172', '87789771@qq.com', '0', '1', 'admin', '2024-05-17 16:07:16', '', NULL),(104, 101, ',100,101,104,', '市场部门', 2, '小蒋', '13006133172', '87789771@qq.com', '0', '1', 'admin', '2024-05-17 16:07:16', '', NULL),(105, 101, ',100,101,105,', '测试部门1', 3, '小蒋', '13006133172', '87789771@qq.com', '0', '0', 'admin', '2024-05-17 16:07:16', 'admin', '2024-06-01 07:28:43'),(101, 100, ',101,', '合肥总公司12', 1, '小蒋', '13006133172', '87789771@qq.com', '0', '0', 'admin', '2024-05-17 16:07:16', 'admin', '2024-06-01 07:36:53'),(100, NULL, ',', '鸥憩', 0, '玫瑰', '13006133172', '87789771@qq.com', '0', '0', 'admin', '2024-05-17 16:07:16', 'admin', '2024-06-01 07:39:44')
;
COMMIT;
BEGIN;
LOCK TABLE "public"."sys_dict_data" IN SHARE MODE;
DELETE FROM "public"."sys_dict_data";
INSERT INTO "public"."sys_dict_data" ("dictCode","dictSort","dictLabel","dictValue","dictType","cssClass","listClass","isDefault","status","createBy","createTime","updateBy","updateTime","remark") VALUES (1, 1, '男', '0', 'sys_user_sex', NULL, NULL, 'Y', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '性别男'),(2, 2, '女', '1', 'sys_user_sex', NULL, NULL, 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '性别女'),(3, 3, '未知', '2', 'sys_user_sex', NULL, NULL, 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '性别未知'),(4, 1, '显示', '0', 'sys_show_hide', NULL, 'primary', 'Y', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '显示菜单'),(5, 2, '隐藏', '1', 'sys_show_hide', NULL, 'danger', 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '隐藏菜单'),(6, 1, '正常', '0', 'sys_normal_disable', NULL, 'primary', 'Y', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '正常状态'),(7, 2, '停用', '1', 'sys_normal_disable', NULL, 'danger', 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '停用状态'),(8, 1, '正常', '0', 'sys_job_status', NULL, 'primary', 'Y', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '正常状态'),(9, 2, '暂停', '1', 'sys_job_status', NULL, 'danger', 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '停用状态'),(10, 1, '默认', 'DEFAULT', 'sys_job_group', NULL, NULL, 'Y', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '默认分组'),(11, 2, '系统', 'SYSTEM', 'sys_job_group', NULL, NULL, 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '系统分组'),(12, 1, '是', 'Y', 'sys_yes_no', NULL, 'primary', 'Y', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '系统默认是'),(13, 2, '否', 'N', 'sys_yes_no', NULL, 'danger', 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '系统默认否'),(14, 1, '通知', '1', 'sys_notice_type', NULL, 'warning', 'Y', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '通知'),(15, 2, '公告', '2', 'sys_notice_type', NULL, 'success', 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '公告'),(16, 1, '正常', '0', 'sys_notice_status', NULL, 'primary', 'Y', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '正常状态'),(17, 2, '关闭', '1', 'sys_notice_status', NULL, 'danger', 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '关闭状态'),(18, 99, '其他', '0', 'sys_oper_type', NULL, 'info', 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '其他操作'),(19, 1, '新增', '1', 'sys_oper_type', NULL, 'info', 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '新增操作'),(20, 2, '修改', '2', 'sys_oper_type', NULL, 'info', 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '修改操作'),(21, 3, '删除', '3', 'sys_oper_type', NULL, 'danger', 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '删除操作'),(22, 4, '授权', '4', 'sys_oper_type', NULL, 'primary', 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '授权操作'),(23, 5, '导出', '5', 'sys_oper_type', NULL, 'warning', 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '导出操作'),(24, 6, '导入', '6', 'sys_oper_type', NULL, 'warning', 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '导入操作'),(25, 7, '强退', '7', 'sys_oper_type', NULL, 'danger', 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '强退操作'),(26, 8, '生成代码', '8', 'sys_oper_type', NULL, 'warning', 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '生成操作'),(27, 9, '清空数据', '9', 'sys_oper_type', NULL, 'danger', 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '清空操作'),(28, 1, '成功', '0', 'sys_common_status', NULL, 'primary', 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '正常状态'),(29, 2, '失败', '1', 'sys_common_status', NULL, 'danger', 'N', '0', 'admin', '2024-05-17 16:07:16', '', NULL, '停用状态')
;
COMMIT;
BEGIN;
LOCK TABLE "public"."sys_dict_type" IN SHARE MODE;
DELETE FROM "public"."sys_dict_type";
INSERT INTO "public"."sys_dict_type" ("dictId","dictName","dictType","status","createBy","createTime","updateBy","updateTime","remark") VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-04-18 16:07:17', '', NULL, '用户性别列表'),(2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-04-18 16:07:17', '', NULL, '菜单状态列表'),(3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-04-18 16:07:17', '', NULL, '系统开关列表'),(4, '任务状态', 'sys_job_status', '0', 'admin', '2024-04-18 16:07:17', '', NULL, '任务状态列表'),(5, '任务分组', 'sys_job_group', '0', 'admin', '2024-04-18 16:07:17', '', NULL, '任务分组列表'),(6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-04-18 16:07:17', '', NULL, '系统是否列表'),(7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-04-18 16:07:17', '', NULL, '通知类型列表'),(8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-04-18 16:07:17', '', NULL, '通知状态列表'),(9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-04-18 16:07:17', '', NULL, '操作类型列表'),(10, '系统状态', 'sys_common_status', '0', 'admin', '2024-04-18 16:07:17', '', NULL, '登录状态列表')
;
COMMIT;
BEGIN;
LOCK TABLE "public"."sys_job" IN SHARE MODE;
DELETE FROM "public"."sys_job";
INSERT INTO "public"."sys_job" ("jobId","jobName","jobGroup","invokeTarget","cronExpression","misfirePolicy","concurrent","status","createBy","createTime","updateBy","updateTime","remark") VALUES (1, '测试任务', 'DEFAULT', 'JobService.demo(1,2,3,true)', '0/10 * * * * ?', '1', '1', '1', 'admin', '2024-05-17 14:02:53', '', NULL, '')
;
COMMIT;
BEGIN;
LOCK TABLE "public"."sys_job_log" IN SHARE MODE;
DELETE FROM "public"."sys_job_log";
INSERT INTO "public"."sys_job_log" ("jobLogId","jobName","jobGroup","invokeTarget","jobMessage","status","exceptionInfo","createTime") VALUES (1, '测试任务', 'DEFAULT', 'JobService.demo(1,2,3,true)', '执行成功', '0', '', '2024-05-17 14:03:05')
;
COMMIT;
BEGIN;
LOCK TABLE "public"."sys_login_infor" IN SHARE MODE;
DELETE FROM "public"."sys_login_infor";
INSERT INTO "public"."sys_login_infor" ("infoId","userName","ipaddr","loginLocation","browser","os","status","msg","loginTime") VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 03:28:37'),(2, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 05:01:08'),(3, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 05:05:18'),(4, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 05:22:50'),(5, '1111', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '1', '用户名或密码错误', '2024-06-01 05:24:08'),(6, 'bob', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '1', '验证码错误', '2024-06-01 05:24:12'),(7, 'bob', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '1', '用户名或密码错误', '2024-06-01 05:24:16'),(8, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 05:24:26'),(9, 'admin1', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '1', '用户名或密码错误', '2024-06-01 05:24:48'),(10, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 05:24:56'),(11, 'admin2', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '1', '用户名或密码错误', '2024-06-01 05:25:21'),(12, 'admin2', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '1', '验证码错误', '2024-06-01 05:25:24'),(13, 'admin2', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 05:25:28'),(14, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '1', '用户名或密码错误', '2024-06-01 05:25:44'),(15, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 05:26:40'),(16, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 05:35:00'),(17, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 05:41:42'),(18, 'admin2', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '1', '验证码错误', '2024-06-01 05:47:43'),(19, 'admin2', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '1', '验证码错误', '2024-06-01 05:47:49'),(20, 'admin2', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '1', '验证码错误', '2024-06-01 05:48:15'),(21, 'admin2', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '1', '用户名或密码错误', '2024-06-01 05:48:20'),(22, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 05:48:29'),(23, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '1', '验证码错误', '2024-06-01 05:49:56'),(24, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 05:50:02'),(25, 'admin4', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 05:53:52'),(26, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 05:54:04'),(27, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 05:55:06'),(28, 'admin4', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 05:59:54'),(29, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 06:01:02'),(30, 'admin4', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 06:03:22'),(31, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 06:04:08'),(32, 'admin4', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 06:04:27'),(33, 'admin4', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '1', '验证码错误', '2024-06-01 06:06:29'),(34, 'admin4', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '1', '验证码错误', '2024-06-01 06:11:55'),(35, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 06:12:55'),(36, 'admin4', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '1', '验证码错误', '2024-06-01 06:13:37'),(37, 'admin4', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 06:19:59'),(38, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 06:20:47'),(39, 'admin4', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 06:24:55'),(40, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 06:25:07'),(41, 'admin4', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 06:26:46'),(42, 'admin', '127.0.0.1', '内网IP', 'Chrome124', 'Mac OS10.15.7', '0', '登录成功', '2024-06-01 07:03:10')
;
COMMIT;
BEGIN;
LOCK TABLE "public"."sys_menu" IN SHARE MODE;
DELETE FROM "public"."sys_menu";
INSERT INTO "public"."sys_menu" ("menuId","menuName","parentId","orderNum","path","component","query","isFrame","isCache","menuType","visible","status","perms","icon","createBy","createTime","updateBy","updateTime","remark") VALUES (1, '系统管理', NULL, 1, 'system', NULL, NULL, '1', '0', 'M', '0', '0', NULL, 'system', 'admin', '2024-04-18 16:07:17', '', NULL, '系统管理目录'),(2, '系统监控', NULL, 2, 'monitor', NULL, NULL, '1', '0', 'M', '0', '0', NULL, 'monitor', 'admin', '2024-04-18 16:07:17', '', NULL, '系统监控目录'),(3, '系统工具', NULL, 3, 'tool', NULL, NULL, '1', '0', 'M', '0', '1', NULL, 'tool', 'admin', '2024-04-18 16:07:17', 'admin', '2024-05-17 13:57:49', '系统工具目录'),(100, '用户管理', 1, 1, 'user', 'system/user/index', NULL, '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-04-18 16:07:17', '', NULL, '用户管理菜单'),(101, '角色管理', 1, 2, 'role', 'system/role/index', NULL, '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-04-18 16:07:17', '', NULL, '角色管理菜单'),(102, '菜单管理', 1, 3, 'menu', 'system/menu/index', NULL, '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-04-18 16:07:17', '', NULL, '菜单管理菜单'),(103, '部门管理', 1, 4, 'dept', 'system/dept/index', NULL, '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-04-18 16:07:17', '', NULL, '部门管理菜单'),(104, '岗位管理', 1, 5, 'post', 'system/post/index', NULL, '1', '0', 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-04-18 16:07:17', '', NULL, '岗位管理菜单'),(105, '字典管理', 1, 6, 'dict', 'system/dict/index', NULL, '1', '0', 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-04-18 16:07:17', '', NULL, '字典管理菜单'),(106, '参数设置', 1, 7, 'config', 'system/config/index', NULL, '1', '0', 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-04-18 16:07:17', '', NULL, '参数设置菜单'),(107, '通知公告', 1, 8, 'notice', 'system/notice/index', NULL, '1', '0', 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-04-18 16:07:17', '', NULL, '通知公告菜单'),(108, '日志管理', 1, 9, 'log', NULL, NULL, '1', '0', 'M', '0', '0', NULL, 'log', 'admin', '2024-04-18 16:07:17', '', NULL, '日志管理菜单'),(109, '在线用户', 2, 1, 'online', 'monitor/online/index', NULL, '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-04-18 16:07:17', '', NULL, '在线用户菜单'),(110, '定时任务', 2, 2, 'job', 'monitor/job/index', NULL, '1', '0', 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-04-18 16:07:17', '', NULL, '定时任务菜单'),(112, '服务监控', 2, 4, 'server', 'monitor/server/index', NULL, '1', '0', 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-04-18 16:07:17', '', NULL, '服务监控菜单'),(113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', NULL, '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-04-18 16:07:17', '', NULL, '缓存监控菜单'),(114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', NULL, '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-04-18 16:07:17', '', NULL, '缓存列表菜单'),(115, '表单构建', 3, 1, 'build', 'tool/build/index', NULL, '1', '0', 'C', '0', '1', 'tool:build:list', 'build', 'admin', '2024-04-18 16:07:17', 'admin', '2024-05-17 13:57:27', '表单构建菜单'),(116, '代码生成', 3, 2, 'gen', 'tool/gen/index', NULL, '1', '0', 'C', '0', '1', 'tool:gen:list', 'code', 'admin', '2024-04-18 16:07:17', 'admin', '2024-05-17 13:51:22', '代码生成菜单'),(117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', NULL, '1', '0', 'C', '0', '1', 'tool:swagger:list', 'swagger', 'admin', '2024-04-18 16:07:17', 'admin', '2024-05-17 13:51:28', '系统接口菜单'),(500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', NULL, '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-04-18 16:07:17', '', NULL, '操作日志菜单'),(501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', NULL, '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-04-18 16:07:17', '', NULL, '登录日志菜单'),(1000, '用户查询', 100, 1, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1001, '用户新增', 100, 2, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1002, '用户修改', 100, 3, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1003, '用户删除', 100, 4, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1004, '用户导出', 100, 5, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1005, '用户导入', 100, 6, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1006, '重置密码', 100, 7, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1007, '角色查询', 101, 1, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1008, '角色新增', 101, 2, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1009, '角色修改', 101, 3, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1010, '角色删除', 101, 4, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1011, '角色导出', 101, 5, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1012, '菜单查询', 102, 1, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1013, '菜单新增', 102, 2, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1014, '菜单修改', 102, 3, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1015, '菜单删除', 102, 4, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1016, '部门查询', 103, 1, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1017, '部门新增', 103, 2, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1018, '部门修改', 103, 3, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1019, '部门删除', 103, 4, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1020, '岗位查询', 104, 1, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1021, '岗位新增', 104, 2, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1022, '岗位修改', 104, 3, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1023, '岗位删除', 104, 4, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1024, '岗位导出', 104, 5, NULL, NULL, NULL, '1', '0', 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1025, '字典查询', 105, 1, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1026, '字典新增', 105, 2, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1027, '字典修改', 105, 3, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1028, '字典删除', 105, 4, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1029, '字典导出', 105, 5, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1030, '参数查询', 106, 1, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1031, '参数新增', 106, 2, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1032, '参数修改', 106, 3, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1033, '参数删除', 106, 4, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1034, '参数导出', 106, 5, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1035, '公告查询', 107, 1, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1036, '公告新增', 107, 2, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1037, '公告修改', 107, 3, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1038, '公告删除', 107, 4, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1039, '操作查询', 500, 1, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1040, '操作删除', 500, 2, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1041, '日志导出', 500, 3, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1042, '登录查询', 501, 1, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1043, '登录删除', 501, 2, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1044, '日志导出', 501, 3, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1045, '账户解锁', 501, 4, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1046, '在线查询', 109, 1, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1047, '批量强退', 109, 2, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1048, '单条强退', 109, 3, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1049, '任务查询', 110, 1, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1050, '任务新增', 110, 2, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1051, '任务修改', 110, 3, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1052, '任务删除', 110, 4, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1053, '状态修改', 110, 5, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1054, '任务导出', 110, 6, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1055, '生成查询', 116, 1, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1056, '生成修改', 116, 2, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1057, '生成删除', 116, 3, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1058, '导入代码', 116, 4, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1059, '预览代码', 116, 5, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL),(1060, '生成代码', 116, 6, '#', NULL, NULL, '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-04-18 16:07:17', '', NULL, NULL)
;
COMMIT;
BEGIN;
LOCK TABLE "public"."sys_notice" IN SHARE MODE;
DELETE FROM "public"."sys_notice";
INSERT INTO "public"."sys_notice" ("noticeId","noticeTitle","noticeType","noticeContent","status","createBy","createTime","updateBy","updateTime","remark") VALUES (1, '测试一个小公告', '1', '6998295530094458059285750682190129113759160612698108719025561649264812150976574', '0', 'admin', '2024-05-17 13:50:01', '', NULL, NULL)
;
COMMIT;
BEGIN;
LOCK TABLE "public"."sys_oper_log" IN SHARE MODE;
DELETE FROM "public"."sys_oper_log";
INSERT INTO "public"."sys_oper_log" ("operId","title","businessType","method","requestMethod","operatorType","operName","deptName","operUrl","operIp","operLocation","operParam","jsonResult","status","errorMsg","operTime","costTime") VALUES (11, '用户管理', '2 ', 'SysUserController.uplate()', 'PUT', 0, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"userId":7,"avatar":"","createBy":"admin","createTime":"2024-06-01T05:57:12.000Z","delFlag":"0","deptId":100,"email":"","loginDate":"2024-06-01T05:57:12.475Z","loginIp":"","nickName":"131","password":"$2b$10$eiw5/zPIntCXuri84jzBxuJdMT5gVHwRf0EPnht6ghwrMiklPI6z2","phonenumber":"","remark":null,"sex":"0","status":"0","updateBy":"","updateTime":"2024-06-01T05:57:12.475Z","userName":"13","userType":"00","dept":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null},"posts":[],"roles":[],"postIds":[],"roleIds":[]}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 05:59:28', 43),(12, '用户管理', '2 ', 'SysUserController.uplate()', 'PUT', 0, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"userId":6,"avatar":"","createBy":"admin","createTime":"2024-06-01T05:53:39.000Z","delFlag":"0","deptId":100,"email":"","loginDate":"2024-06-01T05:53:39.638Z","loginIp":"","nickName":"admin4","password":"$2b$10$yUhmBJCWvr0rDQ0u9htFA.Eyzvq35Cy14QqVgGvpfJztCK/eNdEfW","phonenumber":"","remark":null,"sex":"0","status":"0","updateBy":"admin","updateTime":"2024-06-01T05:56:32.000Z","userName":"admin4","userType":"00","dept":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null},"posts":[],"roles":[{"roleId":2,"createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","dataScope":"2   ","delFlag":"0","deptCheckStrictly":true,"menuCheckStrictly":true,"remark":"普通角色","roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0","updateBy":"","updateTime":null}],"postIds":[],"roleIds":[1]}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 05:59:41', 29),(13, '用户管理', '2 ', 'SysUserController.uplate()', 'PUT', 0, 'admin4', '槑槑科技', '/system/user', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"userId":6,"avatar":"","createBy":"admin","createTime":"2024-06-01T05:53:39.000Z","delFlag":"0","deptId":100,"email":"","loginDate":"2024-06-01T05:53:39.638Z","loginIp":"","nickName":"admin4","password":"$2b$10$yUhmBJCWvr0rDQ0u9htFA.Eyzvq35Cy14QqVgGvpfJztCK/eNdEfW","phonenumber":"","remark":null,"sex":"0","status":"0","updateBy":"admin","updateTime":"2024-06-01T05:59:41.000Z","userName":"admin4","userType":"00","dept":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null},"posts":[],"roles":[{"roleId":1,"createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","dataScope":"1   ","delFlag":"0","deptCheckStrictly":true,"menuCheckStrictly":true,"remark":"超级管理员","roleKey":"admin","roleName":"超级管理员","roleSort":1,"status":"0","updateBy":"","updateTime":null}],"postIds":[],"roleIds":[2]}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 06:00:01', 29),(14, '角色管理', '2 ', 'SysRoleController.uplate()', 'PUT', 0, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"roleId":2,"createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","dataScope":"2   ","delFlag":"0","deptCheckStrictly":true,"menuCheckStrictly":true,"remark":"普通角色","roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0","updateBy":"","updateTime":null,"menuIds":[1,107,1035,1036,1037,1038]}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 06:01:21', 76),(15, '用户管理', '2 ', 'SysUserController.uplate()', 'PUT', 0, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"userId":6,"avatar":"","createBy":"admin","createTime":"2024-06-01T05:53:39.000Z","delFlag":"0","deptId":103,"email":"","loginDate":"2024-06-01T05:53:39.638Z","loginIp":"","nickName":"admin4","password":"$2b$10$yUhmBJCWvr0rDQ0u9htFA.Eyzvq35Cy14QqVgGvpfJztCK/eNdEfW","phonenumber":"","remark":null,"sex":"0","status":"0","updateBy":"admin4","updateTime":"2024-06-01T06:00:01.000Z","userName":"admin4","userType":"00","dept":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null},"posts":[],"roles":[{"roleId":2,"createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","dataScope":"2   ","delFlag":"0","deptCheckStrictly":true,"menuCheckStrictly":true,"remark":"普通角色","roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0","updateBy":"admin","updateTime":"2024-06-01T06:01:21.000Z"}],"postIds":[],"roleIds":[2]}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 06:04:18', 34),(16, '角色管理', '1 ', 'SysRoleController.add()', 'POST', 0, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"roleName":"访客","roleKey":"3","roleSort":3,"status":"0","menuIds":[2,112],"deptIds":[],"menuCheckStrictly":true,"deptCheckStrictly":true}}', '{"code":500,"msg":"PrismaClientKnownRequestError: \nInvalid `this.prisma.sysRole.create()` invocation in\n/Users/yusenlin/Avalon/workspace/zhzz/oriental-stork/server/src/modules/sys/sys-role/sys-role.service.ts:56:38\n\n  53 if (role) throw new ApiException(''权限字符已存在，请更换后再试。'');\n  54 const params: AddSysRoleDto = JSON.parse(JSON.stringify(addSysRoleDto));\n  55 delete params.menuIds;\n→ 56 return await this.prisma.sysRole.create(\nUnique constraint failed on the fields: (`roleId`)"}', '1', 'PrismaClientKnownRequestError: 
Invalid `this.prisma.sysRole.create()` invocation in
/Users/yusenlin/Avalon/workspace/zhzz/oriental-stork/server/src/modules/sys/sys-role/sys-role.service.ts:56:38

  53 if (role) throw new ApiException(''权限字符已存在，请更换后再试。'');
  54 const params: AddSysRoleDto = JSON.parse(JSON.stringify(addSysRoleDto));
  55 delete params.menuIds;
→ 56 return await this.prisma.sysRole.create(
Unique constraint failed on the fields: (`roleId`)', '2024-06-01 06:25:39', 51),(17, '角色管理', '1 ', 'SysRoleController.add()', 'POST', 0, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"roleName":"访客","roleKey":"common","roleSort":3,"status":"0","menuIds":[2,109,1046,1047,1048,112],"deptIds":[],"menuCheckStrictly":true,"deptCheckStrictly":true}}', '{"code":500,"msg":"权限字符已存在，请更换后再试。"}', '1', '权限字符已存在，请更换后再试。', '2024-06-01 06:25:49', 9),(35, '部门管理', '2 ', 'SysDeptController.uplate()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技222","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '1', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '2024-06-01 07:20:56', 2),(18, '角色管理', '1 ', 'SysRoleController.add()', 'POST', 0, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"roleName":"访客","roleKey":"visit","roleSort":3,"status":"0","menuIds":[2,109,1046,1047,1048,112],"deptIds":[],"menuCheckStrictly":true,"deptCheckStrictly":true}}', '{"code":500,"msg":"PrismaClientKnownRequestError: \nInvalid `this.prisma.sysRole.create()` invocation in\n/Users/yusenlin/Avalon/workspace/zhzz/oriental-stork/server/src/modules/sys/sys-role/sys-role.service.ts:56:38\n\n  53 if (role) throw new ApiException(''权限字符已存在，请更换后再试。'');\n  54 const params: AddSysRoleDto = JSON.parse(JSON.stringify(addSysRoleDto));\n  55 delete params.menuIds;\n→ 56 return await this.prisma.sysRole.create(\nUnique constraint failed on the fields: (`roleId`)"}', '1', 'PrismaClientKnownRequestError: 
Invalid `this.prisma.sysRole.create()` invocation in
/Users/yusenlin/Avalon/workspace/zhzz/oriental-stork/server/src/modules/sys/sys-role/sys-role.service.ts:56:38

  53 if (role) throw new ApiException(''权限字符已存在，请更换后再试。'');
  54 const params: AddSysRoleDto = JSON.parse(JSON.stringify(addSysRoleDto));
  55 delete params.menuIds;
→ 56 return await this.prisma.sysRole.create(
Unique constraint failed on the fields: (`roleId`)', '2024-06-01 06:25:55', 37),(19, '角色管理', '1 ', 'SysRoleController.add()', 'POST', 0, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"roleName":"访客","roleKey":"visit","roleSort":2,"status":"0","menuIds":[2,109,1046,1047,1048,112],"deptIds":[],"menuCheckStrictly":true,"deptCheckStrictly":true}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 06:26:15', 45),(20, '角色管理', '2 ', 'SysRoleController.uplate()', 'PUT', 0, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"roleId":3,"createBy":"admin","createTime":"2024-06-01T06:26:15.000Z","dataScope":"4","delFlag":"0","deptCheckStrictly":true,"menuCheckStrictly":true,"remark":null,"roleKey":"visit","roleName":"访客","roleSort":3,"status":"0","updateBy":"","updateTime":"2024-06-01T06:26:15.586Z","menuIds":[2,109,1046,1047,1048,112]}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 06:26:23', 56),(21, '用户管理', '2 ', 'SysUserController.uplate()', 'PUT', 0, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"userId":6,"avatar":"","createBy":"admin","createTime":"2024-06-01T05:53:39.000Z","delFlag":"0","deptId":103,"email":"","loginDate":"2024-06-01T05:53:39.638Z","loginIp":"","nickName":"admin4","password":"$2b$10$yUhmBJCWvr0rDQ0u9htFA.Eyzvq35Cy14QqVgGvpfJztCK/eNdEfW","phonenumber":"","remark":null,"sex":"0","status":"0","updateBy":"admin","updateTime":"2024-06-01T06:04:17.000Z","userName":"admin4","userType":"00","dept":{"deptId":103,"parentId":101,"ancestors":",100,101,103,","deptName":"研发部门","orderNum":1,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null},"posts":[],"roles":[{"roleId":2,"createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","dataScope":"2","delFlag":"0","deptCheckStrictly":true,"menuCheckStrictly":true,"remark":"普通角色","roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0","updateBy":"admin","updateTime":"2024-06-01T06:01:21.000Z"}],"postIds":[],"roleIds":[3]}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 06:26:37', 52),(22, '部门管理', '3 ', 'SysDeptController.delete()', 'DELETE', 0, 'admin', '研发部门', '/system/dept/102', '127.0.0.1', '内网IP', '{"params":{"deptIds":"102"},"query":{},"body":{}}', '{"code":500,"msg":"该菜单下存在其他子菜单，无法删除"}', '1', '该菜单下存在其他子菜单，无法删除', '2024-06-01 07:10:45', 9),(23, '部门管理', '3 ', 'SysDeptController.delete()', 'DELETE', 0, 'admin', '研发部门', '/system/dept/109', '127.0.0.1', '内网IP', '{"params":{"deptIds":"109"},"query":{},"body":{}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 07:10:50', 28),(24, '部门管理', '3 ', 'SysDeptController.delete()', 'DELETE', 0, 'admin', '研发部门', '/system/dept/108', '127.0.0.1', '内网IP', '{"params":{"deptIds":"108"},"query":{},"body":{}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 07:10:52', 10),(25, '部门管理', '1 ', 'SysDeptController.add()', 'POST', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"parentId":102,"deptName":"1","orderNum":0,"status":"0"}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 07:11:02', 12),(26, '部门管理', '3 ', 'SysDeptController.delete()', 'DELETE', 0, 'admin', '研发部门', '/system/dept/1', '127.0.0.1', '内网IP', '{"params":{"deptIds":"1"},"query":{},"body":{}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 07:11:08', 26),(27, '部门管理', '3 ', 'SysDeptController.delete()', 'DELETE', 0, 'admin', '研发部门', '/system/dept/102', '127.0.0.1', '内网IP', '{"params":{"deptIds":"102"},"query":{},"body":{}}', '{"code":500,"msg":"该菜单下存在其他子菜单，无法删除"}', '1', '该菜单下存在其他子菜单，无法删除', '2024-06-01 07:11:10', 9),(28, '部门管理', '3 ', 'SysDeptController.delete()', 'DELETE', 0, 'admin', '研发部门', '/system/dept/102', '127.0.0.1', '内网IP', '{"params":{"deptIds":"102"},"query":{},"body":{}}', '{"code":500,"msg":"该菜单下存在其他子菜单，无法删除"}', '1', '该菜单下存在其他子菜单，无法删除', '2024-06-01 07:11:23', 13),(29, '部门管理', '2 ', 'SysDeptController.uplate()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":102,"parentId":100,"ancestors":",100,102,","deptName":"阜阳分公司1","orderNum":2,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 07:12:15', 16),(30, '部门管理', '2 ', 'SysDeptController.uplate()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":102,"parentId":100,"ancestors":",102,","deptName":"阜阳分公司","orderNum":2,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"admin","updateTime":"2024-06-01T07:12:15.000Z"}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 07:12:19', 31),(31, '部门管理', '3 ', 'SysDeptController.delete()', 'DELETE', 0, 'admin', '研发部门', '/system/dept/107', '127.0.0.1', '内网IP', '{"params":{"deptIds":"107"},"query":{},"body":{}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 07:12:25', 21),(32, '部门管理', '3 ', 'SysDeptController.delete()', 'DELETE', 0, 'admin', '研发部门', '/system/dept/103', '127.0.0.1', '内网IP', '{"params":{"deptIds":"103"},"query":{},"body":{}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 07:12:28', 7),(33, '部门管理', '3 ', 'SysDeptController.delete()', 'DELETE', 0, 'admin', '研发部门', '/system/dept/104', '127.0.0.1', '内网IP', '{"params":{"deptIds":"104"},"query":{},"body":{}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 07:12:31', 12),(34, '部门管理', '2 ', 'SysDeptController.uplate()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":100,"parentId":null,"ancestors":",","deptName":"test1","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '1', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '2024-06-01 07:20:12', 8),(36, '部门管理', '2 ', 'SysDeptController.uplate()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技222","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '1', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '2024-06-01 07:22:12', 4),(37, '部门管理', '2 ', 'SysDeptController.uplate()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技222","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '1', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '2024-06-01 07:22:50', 4),(38, '部门管理', '2 ', 'SysDeptController.uplate()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技222","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '1', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '2024-06-01 07:23:34', 4),(39, '部门管理', '2 ', 'SysDeptController.uplate()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技222","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '1', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '2024-06-01 07:24:41', 3),(40, '部门管理', '2 ', 'SysDeptController.uplate()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技1","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '1', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '2024-06-01 07:26:28', 2),(41, '部门管理', '2 ', 'SysDeptController.update()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技1","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '1', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '2024-06-01 07:27:58', 4),(42, '部门管理', '2 ', 'SysDeptController.update()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技1","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '1', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '2024-06-01 07:28:14', 7),(43, '部门管理', '2 ', 'SysDeptController.update()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":105,"parentId":101,"ancestors":",100,101,105,","deptName":"测试部门1","orderNum":3,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 07:28:43', 26),(44, '部门管理', '2 ', 'SysDeptController.update()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技1","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '1', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '2024-06-01 07:29:02', 2),(45, '部门管理', '2 ', 'SysDeptController.update()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技1","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '1', '{"code":400,"msg":["parentId must be a number conforming to the specified constraints"]}', '2024-06-01 07:32:00', 4),(46, '部门管理', '2 ', 'SysDeptController.update()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技1","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":500,"msg":"PrismaClientValidationError: \nInvalid `prisma.sysDept.findUnique()` invocation in\n/Users/yusenlin/Avalon/workspace/zhzz/oriental-stork/server/src/modules/sys/sys-dept/sys-dept.service.ts:93:47\n\n  90 if (!dept) throw new ApiException(''该记录不存在，请重新查询后操作。'');\n  91 const { parentId } = updateSysDeptDto;\n  92 console.log(parentId, ''parentIdparentIdparentId'');\n→ 93 const parentDept = await prisma.sysDept.findUnique({\n       where: {\n     +   deptId: Int\n       }\n     })\n\nArgument `deptId` must not be null."}', '1', '{"code":500,"msg":"PrismaClientValidationError: \nInvalid `prisma.sysDept.findUnique()` invocation in\n/Users/yusenlin/Avalon/workspace/zhzz/oriental-stork/server/src/modules/sys/sys-dept/sys-dept.service.ts:93:47\n\n  90 if (!dept) throw new ApiException(''该记录不存在，请重新查询后操作。'');\n  91 const { parentId } = updateSysDeptDto;\n  92 console.log(parentId, ''parentIdparentIdparentId'');\n→ 93 const parentDept = await prisma.sysDept.findUnique({\n       where: {\n     +   deptId: Int\n       }\n     })\n\nArgument `deptId` must not be null."}', '2024-06-01 07:33:16', 32),(47, '部门管理', '2 ', 'SysDeptController.update()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技1","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":500,"msg":"PrismaClientValidationError: \nInvalid `prisma.sysDept.findUnique()` invocation in\n/Users/yusenlin/Avalon/workspace/zhzz/oriental-stork/server/src/modules/sys/sys-dept/sys-dept.service.ts:93:47\n\n  90 if (!dept) throw new ApiException(''该记录不存在，请重新查询后操作。'');\n  91 const { parentId } = updateSysDeptDto;\n  92 console.log(parentId, ''parentIdparentIdparentId'');\n→ 93 const parentDept = await prisma.sysDept.findUnique({\n       where: {\n     +   deptId: Int\n       }\n     })\n\nArgument `deptId` must not be null."}', '1', '{"code":500,"msg":"PrismaClientValidationError: \nInvalid `prisma.sysDept.findUnique()` invocation in\n/Users/yusenlin/Avalon/workspace/zhzz/oriental-stork/server/src/modules/sys/sys-dept/sys-dept.service.ts:93:47\n\n  90 if (!dept) throw new ApiException(''该记录不存在，请重新查询后操作。'');\n  91 const { parentId } = updateSysDeptDto;\n  92 console.log(parentId, ''parentIdparentIdparentId'');\n→ 93 const parentDept = await prisma.sysDept.findUnique({\n       where: {\n     +   deptId: Int\n       }\n     })\n\nArgument `deptId` must not be null."}', '2024-06-01 07:33:39', 27),(48, '部门管理', '2 ', 'SysDeptController.update()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":101,"parentId":100,"ancestors":",100,101,","deptName":"合肥总公司1","orderNum":1,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 07:33:54', 18),(49, '部门管理', '2 ', 'SysDeptController.update()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技2","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":500,"msg":"PrismaClientValidationError: \nInvalid `prisma.sysDept.findUnique()` invocation in\n/Users/yusenlin/Avalon/workspace/zhzz/oriental-stork/server/src/modules/sys/sys-dept/sys-dept.service.ts:94:47\n\n  91 if (!dept) throw new ApiException(''该记录不存在，请重新查询后操作。'');\n  92 const { parentId } = updateSysDeptDto;\n  93 console.log(parentId, ''parentIdparentIdparentId'');\n→ 94 const parentDept = await prisma.sysDept.findUnique({\n       where: {\n     +   deptId: Int\n       }\n     })\n\nArgument `deptId` must not be null."}', '1', '{"code":500,"msg":"PrismaClientValidationError: \nInvalid `prisma.sysDept.findUnique()` invocation in\n/Users/yusenlin/Avalon/workspace/zhzz/oriental-stork/server/src/modules/sys/sys-dept/sys-dept.service.ts:94:47\n\n  91 if (!dept) throw new ApiException(''该记录不存在，请重新查询后操作。'');\n  92 const { parentId } = updateSysDeptDto;\n  93 console.log(parentId, ''parentIdparentIdparentId'');\n→ 94 const parentDept = await prisma.sysDept.findUnique({\n       where: {\n     +   deptId: Int\n       }\n     })\n\nArgument `deptId` must not be null."}', '2024-06-01 07:35:20', 22),(50, '部门管理', '2 ', 'SysDeptController.update()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":101,"parentId":100,"ancestors":",101,","deptName":"合肥总公司12","orderNum":1,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"admin","updateTime":"2024-06-01T07:33:54.000Z"}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 07:36:53', 30),(51, '部门管理', '2 ', 'SysDeptController.update()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技11","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":500,"msg":"PrismaClientValidationError: \nInvalid `prisma.sysDept.findUnique()` invocation in\n/Users/yusenlin/Avalon/workspace/zhzz/oriental-stork/server/src/modules/sys/sys-dept/sys-dept.service.ts:94:47\n\n  91 if (!dept) throw new ApiException(''该记录不存在，请重新查询后操作。'');\n  92 const { parentId } = updateSysDeptDto;\n  93 console.log(parentId, ''parentIdparentIdparentId'');\n→ 94 const parentDept = await prisma.sysDept.findUnique({\n       where: {\n     +   deptId: Int\n       }\n     })\n\nArgument `deptId` must not be null."}', '1', '{"code":500,"msg":"PrismaClientValidationError: \nInvalid `prisma.sysDept.findUnique()` invocation in\n/Users/yusenlin/Avalon/workspace/zhzz/oriental-stork/server/src/modules/sys/sys-dept/sys-dept.service.ts:94:47\n\n  91 if (!dept) throw new ApiException(''该记录不存在，请重新查询后操作。'');\n  92 const { parentId } = updateSysDeptDto;\n  93 console.log(parentId, ''parentIdparentIdparentId'');\n→ 94 const parentDept = await prisma.sysDept.findUnique({\n       where: {\n     +   deptId: Int\n       }\n     })\n\nArgument `deptId` must not be null."}', '2024-06-01 07:36:56', 40),(52, '部门管理', '2 ', 'SysDeptController.update()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技11","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":500,"msg":"PrismaClientValidationError: \nInvalid `prisma.sysDept.findUnique()` invocation in\n/Users/yusenlin/Avalon/workspace/zhzz/oriental-stork/server/src/modules/sys/sys-dept/sys-dept.service.ts:94:47\n\n  91 if (!dept) throw new ApiException(''该记录不存在，请重新查询后操作。'');\n  92 const { parentId } = updateSysDeptDto;\n  93 console.log(parentId, ''parentIdparentIdparentId'');\n→ 94 const parentDept = await prisma.sysDept.findUnique({\n       where: {\n     +   deptId: Int\n       }\n     })\n\nArgument `deptId` must not be null."}', '1', '{"code":500,"msg":"PrismaClientValidationError: \nInvalid `prisma.sysDept.findUnique()` invocation in\n/Users/yusenlin/Avalon/workspace/zhzz/oriental-stork/server/src/modules/sys/sys-dept/sys-dept.service.ts:94:47\n\n  91 if (!dept) throw new ApiException(''该记录不存在，请重新查询后操作。'');\n  92 const { parentId } = updateSysDeptDto;\n  93 console.log(parentId, ''parentIdparentIdparentId'');\n→ 94 const parentDept = await prisma.sysDept.findUnique({\n       where: {\n     +   deptId: Int\n       }\n     })\n\nArgument `deptId` must not be null."}', '2024-06-01 07:37:38', 33),(53, '部门管理', '2 ', 'SysDeptController.update()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":100,"parentId":null,"ancestors":",","deptName":"槑槑科技11","orderNum":0,"leader":"小蒋","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"","updateTime":null}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 07:38:45', 30),(54, '部门管理', '2 ', 'SysDeptController.update()', 'PUT', 0, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{"params":{},"query":{},"body":{"deptId":100,"parentId":null,"ancestors":",","deptName":"鸥憩","orderNum":0,"leader":"玫瑰","phone":"13006133172","email":"87789771@qq.com","status":"0","delFlag":"0","createBy":"admin","createTime":"2024-05-17T16:07:16.000Z","updateBy":"admin","updateTime":"2024-06-01T07:38:45.000Z"}}', '{"code":200,"msg":"操作成功"}', '0', NULL, '2024-06-01 07:39:44', 19)
;
COMMIT;
BEGIN;
LOCK TABLE "public"."sys_post" IN SHARE MODE;
DELETE FROM "public"."sys_post";
INSERT INTO "public"."sys_post" ("postId","postCode","postName","postSort","status","createBy","createTime","updateBy","updateTime","remark") VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-04-18 16:07:16', '', NULL, NULL),(2, 'se', '项目经理', 2, '0', 'admin', '2024-04-18 16:07:16', '', NULL, NULL),(3, 'hr', '人力资源', 3, '0', 'admin', '2024-04-18 16:07:16', '', NULL, NULL),(4, 'user', '普通员工', 4, '0', 'admin', '2024-04-18 16:07:16', '', NULL, NULL)
;
COMMIT;
BEGIN;
LOCK TABLE "public"."sys_role" IN SHARE MODE;
DELETE FROM "public"."sys_role";
INSERT INTO "public"."sys_role" ("roleId","createBy","createTime","dataScope","delFlag","deptCheckStrictly","menuCheckStrictly","remark","roleKey","roleName","roleSort","status","updateBy","updateTime") VALUES (1, 'admin', '2024-05-17 16:07:16', '1', '0', 't', 't', '超级管理员', 'admin', '超级管理员', 1, '0', '', NULL),(2, 'admin', '2024-05-17 16:07:16', '2', '0', 't', 't', '普通角色', 'common', '普通角色', 2, '0', 'admin', '2024-06-01 06:01:21'),(3, 'admin', '2024-06-01 06:26:15', '4', '0', 't', 't', NULL, 'visit', '访客', 3, '0', 'admin', '2024-06-01 06:26:23')
;
COMMIT;
BEGIN;
LOCK TABLE "public"."sys_table" IN SHARE MODE;
DELETE FROM "public"."sys_table";
INSERT INTO "public"."sys_table" ("tableId","createBy","createTime","updateBy","updateTime","tableJsonConfig") VALUES ('system_user_1', 'admin', '2024-05-17 14:11:38', '', NULL, '[{\"minWidth\":40,\"showOverflowTooltip\":false,\"align\":\"center\",\"hide\":false,\"noExport\":false,\"sort\":0,\"prop\":\"勾选框\",\"label\":\"勾选框\",\"type\":\"selection\"},{\"minWidth\":100,\"showOverflowTooltip\":true,\"align\":\"center\",\"hide\":false,\"noExport\":false,\"sort\":1,\"prop\":\"userId\",\"label\":\"用户编号\"},{\"minWidth\":100,\"showOverflowTooltip\":true,\"align\":\"left\",\"hide\":false,\"noExport\":false,\"sort\":2,\"prop\":\"userName\",\"label\":\"用户名称\"},{\"minWidth\":100,\"showOverflowTooltip\":true,\"align\":\"left\",\"hide\":false,\"noExport\":false,\"sort\":3,\"prop\":\"nickName\",\"label\":\"用户昵称\"},{\"minWidth\":140,\"showOverflowTooltip\":true,\"align\":\"left\",\"hide\":false,\"noExport\":false,\"sort\":4,\"prop\":\"dept.deptName\",\"label\":\"部门\"},{\"minWidth\":80,\"showOverflowTooltip\":true,\"align\":\"center\",\"hide\":false,\"noExport\":false,\"sort\":5,\"prop\":\"status\",\"label\":\"状态\",\"slot\":\"status\"},{\"minWidth\":160,\"showOverflowTooltip\":true,\"align\":\"center\",\"hide\":false,\"noExport\":false,\"sort\":6,\"prop\":\"createTime\",\"label\":\"创建时间\",\"slot\":\"createTime\"},{\"minWidth\":160,\"showOverflowTooltip\":false,\"align\":\"center\",\"hide\":false,\"noExport\":false,\"sort\":7,\"prop\":\"操作\",\"label\":\"操作\",\"slot\":\"operate\"}]')
;
COMMIT;
BEGIN;
LOCK TABLE "public"."sys_user" IN SHARE MODE;
DELETE FROM "public"."sys_user";
INSERT INTO "public"."sys_user" ("userId","avatar","createBy","createTime","delFlag","deptId","email","loginDate","loginIp","nickName","password","phonenumber","remark","sex","status","updateBy","updateTime","userName","userType") VALUES (1, NULL, 'admin', '2024-05-17 16:07:16', '0', 103, '87789771@qq.com', NULL, '', '小蒋', '$2b$10$dfDByASRziLltpJ9OQ8cTuSeaz3Kqv.BR1MWQoQ1bR3UfgEKYE0w6', '15888888888', '管理员', '1', '0', 'admin', NULL, 'admin', '00'),(2, NULL, 'admin', '2024-05-17 16:07:16', '0', 105, '87789771@qq.com', NULL, '', '槑槑', '$2b$10$eOA3TW08QKta3zRSlhY6f.RXnOuzDwM0OGWAYh8zwVYMFwCkF.dme', '15666666666', '测试员', '1', '0', 'admin', '2024-05-18 02:16:37', 'meimei', '00'),(3, '', 'admin', '2024-06-01 05:23:47', '0', 100, '1111@qq.com', '2024-06-01 05:23:47.451', '', 'admin1', '$2b$10$rTfzwPLl/Zkr2WG4k42efuvhWlPZh9jQ5n6y3BZl6z.pGmSSnPZ/C', '18655339637', '1', '0', '0', 'admin', '2024-06-01 05:24:38', '1111', '00'),(4, '', 'admin', '2024-06-01 05:25:11', '0', 100, '', '2024-06-01 05:25:11.181', '', 'admin2', '$2b$10$jhHkKxTBJ4e7zyCliyX9lOBqrUHCI0GwARco7sl5yCZvgQcuPKnUW', '', NULL, '0', '0', 'admin', '2024-06-01 05:46:59', 'admin2', '00'),(5, '', 'admin', '2024-06-01 05:48:53', '0', 103, '', '2024-06-01 05:48:53.287', '', 'admin3', '$2b$10$K0Cu6TNyfM0.zvxA.iB7s.bd2/s/gmyS/4zQd/lHVElUvz5HfXkfq', '', NULL, '0', '0', '', '2024-06-01 05:48:53.287', 'admin3', '00'),(7, '', 'admin', '2024-06-01 05:57:12', '0', 100, '', '2024-06-01 05:57:12.475', '', '131', '$2b$10$eiw5/zPIntCXuri84jzBxuJdMT5gVHwRf0EPnht6ghwrMiklPI6z2', '', NULL, '0', '0', 'admin', '2024-06-01 05:59:28', '13', '00'),(6, '', 'admin', '2024-06-01 05:53:39', '0', 103, '', '2024-06-01 05:53:39.638', '', 'admin4', '$2b$10$yUhmBJCWvr0rDQ0u9htFA.Eyzvq35Cy14QqVgGvpfJztCK/eNdEfW', '', NULL, '0', '0', 'admin', '2024-06-01 06:26:37', 'admin4', '00')
;
COMMIT;
BEGIN;
LOCK TABLE "public"."sys_web" IN SHARE MODE;
DELETE FROM "public"."sys_web";
INSERT INTO "public"."sys_web" ("webId","theme","sideTheme","topNav","tagsView","fixedHeader","sidebarLogo","dynamicTitle","createBy","createTime","updateBy","updateTime") VALUES (1, '#59C359', 'theme-dark', 'f', 't', 't', 't', 'f', 'admin', '2024-06-01 07:07:34', '', '2024-06-01 07:07:01.707')
;
COMMIT;
BEGIN;
LOCK TABLE "public"."wx_user" IN SHARE MODE;
DELETE FROM "public"."wx_user";
COMMIT;
ALTER TABLE "_prisma_migrations" ADD CONSTRAINT "_prisma_migrations_pkey" PRIMARY KEY ("id");
CREATE UNIQUE INDEX "_qun_to_qun_type_AB_unique" ON "_qun_to_qun_type" USING btree (
  "A" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "B" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "_qun_to_qun_type_B_index" ON "_qun_to_qun_type" USING btree (
  "B" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "_sys_dept_to_sys_role_AB_unique" ON "_sys_dept_to_sys_role" USING btree (
  "A" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "B" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "_sys_dept_to_sys_role_B_index" ON "_sys_dept_to_sys_role" USING btree (
  "B" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "_sys_menu_to_sys_role_AB_unique" ON "_sys_menu_to_sys_role" USING btree (
  "A" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "B" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "_sys_menu_to_sys_role_B_index" ON "_sys_menu_to_sys_role" USING btree (
  "B" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "_sys_post_to_sys_user_AB_unique" ON "_sys_post_to_sys_user" USING btree (
  "A" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "B" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "_sys_post_to_sys_user_B_index" ON "_sys_post_to_sys_user" USING btree (
  "B" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "_sys_role_to_sys_user_AB_unique" ON "_sys_role_to_sys_user" USING btree (
  "A" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "B" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "_sys_role_to_sys_user_B_index" ON "_sys_role_to_sys_user" USING btree (
  "B" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "admin_wechat" ADD CONSTRAINT "admin_wechat_pkey" PRIMARY KEY ("adminWechatId");
ALTER TABLE "banner" ADD CONSTRAINT "banner_pkey" PRIMARY KEY ("bannerId");
ALTER TABLE "news" ADD CONSTRAINT "news_pkey" PRIMARY KEY ("newsId");
ALTER TABLE "news_comment" ADD CONSTRAINT "news_comment_pkey" PRIMARY KEY ("newsCommentId");
ALTER TABLE "news_type" ADD CONSTRAINT "news_type_pkey" PRIMARY KEY ("newsTypeId");
ALTER TABLE "province" ADD CONSTRAINT "province_pkey" PRIMARY KEY ("provinceId");
ALTER TABLE "qun" ADD CONSTRAINT "qun_pkey" PRIMARY KEY ("qunId");
ALTER TABLE "qun_type" ADD CONSTRAINT "qun_type_pkey" PRIMARY KEY ("qunTypeId");
ALTER TABLE "sys_config" ADD CONSTRAINT "sys_config_pkey" PRIMARY KEY ("configId");
CREATE UNIQUE INDEX "sys_config_configKey_key" ON "sys_config" USING btree (
  "configKey" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
ALTER TABLE "sys_dept" ADD CONSTRAINT "sys_dept_pkey" PRIMARY KEY ("deptId");
ALTER TABLE "sys_dict_data" ADD CONSTRAINT "sys_dict_data_pkey" PRIMARY KEY ("dictCode");
CREATE INDEX "sys_dict_data_dictType_fkey_unique" ON "sys_dict_data" USING btree (
  "dictType" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
ALTER TABLE "sys_dict_type" ADD CONSTRAINT "sys_dict_type_pkey" PRIMARY KEY ("dictId");
CREATE UNIQUE INDEX "dictType" ON "sys_dict_type" USING btree (
  "dictType" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
ALTER TABLE "sys_job" ADD CONSTRAINT "sys_job_pkey" PRIMARY KEY ("jobId");
ALTER TABLE "sys_job_log" ADD CONSTRAINT "sys_job_log_pkey" PRIMARY KEY ("jobLogId");
ALTER TABLE "sys_login_infor" ADD CONSTRAINT "sys_login_infor_pkey" PRIMARY KEY ("infoId");
CREATE INDEX "idxSysLogininforLt" ON "sys_login_infor" USING btree (
  "loginTime" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "idxSysLogininforS" ON "sys_login_infor" USING btree (
  "status" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST
);
ALTER TABLE "sys_menu" ADD CONSTRAINT "sys_menu_pkey" PRIMARY KEY ("menuId");
ALTER TABLE "sys_notice" ADD CONSTRAINT "sys_notice_pkey" PRIMARY KEY ("noticeId");
ALTER TABLE "sys_oper_log" ADD CONSTRAINT "sys_oper_log_pkey" PRIMARY KEY ("operId");
CREATE INDEX "idxSysOperLogBt" ON "sys_oper_log" USING btree (
  "businessType" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST
);
CREATE INDEX "idxSysOperLogOt" ON "sys_oper_log" USING btree (
  "operTime" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "idxSysOperLogS" ON "sys_oper_log" USING btree (
  "status" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST
);
ALTER TABLE "sys_post" ADD CONSTRAINT "sys_post_pkey" PRIMARY KEY ("postId");
CREATE UNIQUE INDEX "sys_post_postCode_key" ON "sys_post" USING btree (
  "postCode" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
ALTER TABLE "sys_role" ADD CONSTRAINT "sys_role_pkey" PRIMARY KEY ("roleId");
ALTER TABLE "sys_table" ADD CONSTRAINT "sys_table_pkey" PRIMARY KEY ("tableId", "createBy");
ALTER TABLE "sys_user" ADD CONSTRAINT "sys_user_pkey" PRIMARY KEY ("userId");
CREATE INDEX "sys_user_deptId_fkey" ON "sys_user" USING btree (
  "deptId" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "sys_user_userName_key" ON "sys_user" USING btree (
  "userName" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
ALTER TABLE "sys_web" ADD CONSTRAINT "sys_web_pkey" PRIMARY KEY ("webId");
CREATE UNIQUE INDEX "sys_web_createBy_key" ON "sys_web" USING btree (
  "createBy" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
ALTER TABLE "wx_user" ADD CONSTRAINT "wx_user_pkey" PRIMARY KEY ("wxUserId");
CREATE UNIQUE INDEX "wx_user_openid_key" ON "wx_user" USING btree (
  "openid" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
ALTER TABLE "_qun_to_qun_type" ADD CONSTRAINT "_qun_to_qun_type_A_fkey" FOREIGN KEY ("A") REFERENCES "public"."qun" ("qunId") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "_qun_to_qun_type" ADD CONSTRAINT "_qun_to_qun_type_B_fkey" FOREIGN KEY ("B") REFERENCES "public"."qun_type" ("qunTypeId") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "_sys_dept_to_sys_role" ADD CONSTRAINT "_sys_dept_to_sys_role_A_fkey" FOREIGN KEY ("A") REFERENCES "public"."sys_dept" ("deptId") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "_sys_dept_to_sys_role" ADD CONSTRAINT "_sys_dept_to_sys_role_B_fkey" FOREIGN KEY ("B") REFERENCES "public"."sys_role" ("roleId") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "_sys_menu_to_sys_role" ADD CONSTRAINT "_sys_menu_to_sys_role_A_fkey" FOREIGN KEY ("A") REFERENCES "public"."sys_menu" ("menuId") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "_sys_menu_to_sys_role" ADD CONSTRAINT "_sys_menu_to_sys_role_B_fkey" FOREIGN KEY ("B") REFERENCES "public"."sys_role" ("roleId") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "_sys_post_to_sys_user" ADD CONSTRAINT "_sys_post_to_sys_user_A_fkey" FOREIGN KEY ("A") REFERENCES "public"."sys_post" ("postId") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "_sys_post_to_sys_user" ADD CONSTRAINT "_sys_post_to_sys_user_B_fkey" FOREIGN KEY ("B") REFERENCES "public"."sys_user" ("userId") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "_sys_role_to_sys_user" ADD CONSTRAINT "_sys_role_to_sys_user_A_fkey" FOREIGN KEY ("A") REFERENCES "public"."sys_role" ("roleId") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "_sys_role_to_sys_user" ADD CONSTRAINT "_sys_role_to_sys_user_B_fkey" FOREIGN KEY ("B") REFERENCES "public"."sys_user" ("userId") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "news" ADD CONSTRAINT "news_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES "public"."news_type" ("newsTypeId") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE "news_comment" ADD CONSTRAINT "news_comment_newsId_fkey" FOREIGN KEY ("newsId") REFERENCES "public"."news" ("newsId") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "qun" ADD CONSTRAINT "qun_adminWechatId_fkey" FOREIGN KEY ("adminWechatId") REFERENCES "public"."admin_wechat" ("adminWechatId") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE "qun" ADD CONSTRAINT "qun_provinceId_fkey" FOREIGN KEY ("provinceId") REFERENCES "public"."province" ("provinceId") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE "sys_dept" ADD CONSTRAINT "sys_dept_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES "public"."sys_dept" ("deptId") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE "sys_dict_data" ADD CONSTRAINT "sys_dict_data_dictType_fkey" FOREIGN KEY ("dictType") REFERENCES "public"."sys_dict_type" ("dictType") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE "sys_menu" ADD CONSTRAINT "sys_menu_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES "public"."sys_menu" ("menuId") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE "sys_user" ADD CONSTRAINT "sys_user_deptId_fkey_relation" FOREIGN KEY ("deptId") REFERENCES "public"."sys_dept" ("deptId") ON DELETE SET NULL ON UPDATE CASCADE;
ALTER SEQUENCE "admin_wechat_adminWechatId_seq"
OWNED BY "admin_wechat"."adminWechatId";
SELECT setval('"admin_wechat_adminWechatId_seq"', 1, true);
ALTER SEQUENCE "admin_wechat_adminWechatId_seq" OWNER TO "postgres";
ALTER SEQUENCE "banner_bannerId_seq"
OWNED BY "banner"."bannerId";
SELECT setval('"banner_bannerId_seq"', 3, true);
ALTER SEQUENCE "banner_bannerId_seq" OWNER TO "postgres";
ALTER SEQUENCE "news_comment_newsCommentId_seq"
OWNED BY "news_comment"."newsCommentId";
SELECT setval('"news_comment_newsCommentId_seq"', 1, false);
ALTER SEQUENCE "news_comment_newsCommentId_seq" OWNER TO "postgres";
ALTER SEQUENCE "news_newsId_seq"
OWNED BY "news"."newsId";
SELECT setval('"news_newsId_seq"', 1, false);
ALTER SEQUENCE "news_newsId_seq" OWNER TO "postgres";
ALTER SEQUENCE "news_type_newsTypeId_seq"
OWNED BY "news_type"."newsTypeId";
SELECT setval('"news_type_newsTypeId_seq"', 1, false);
ALTER SEQUENCE "news_type_newsTypeId_seq" OWNER TO "postgres";
ALTER SEQUENCE "province_provinceId_seq"
OWNED BY "province"."provinceId";
SELECT setval('"province_provinceId_seq"', 1, false);
ALTER SEQUENCE "province_provinceId_seq" OWNER TO "postgres";
ALTER SEQUENCE "qun_qunId_seq"
OWNED BY "qun"."qunId";
SELECT setval('"qun_qunId_seq"', 23, true);
ALTER SEQUENCE "qun_qunId_seq" OWNER TO "postgres";
ALTER SEQUENCE "qun_type_qunTypeId_seq"
OWNED BY "qun_type"."qunTypeId";
SELECT setval('"qun_type_qunTypeId_seq"', 14, true);
ALTER SEQUENCE "qun_type_qunTypeId_seq" OWNER TO "postgres";
ALTER SEQUENCE "sys_config_configId_seq"
OWNED BY "sys_config"."configId";
SELECT setval('"sys_config_configId_seq"', 1, false);
ALTER SEQUENCE "sys_config_configId_seq" OWNER TO "postgres";
ALTER SEQUENCE "sys_dept_deptId_seq"
OWNED BY "sys_dept"."deptId";
SELECT setval('"sys_dept_deptId_seq"', 1, true);
ALTER SEQUENCE "sys_dept_deptId_seq" OWNER TO "postgres";
ALTER SEQUENCE "sys_dict_data_dictCode_seq"
OWNED BY "sys_dict_data"."dictCode";
SELECT setval('"sys_dict_data_dictCode_seq"', 1, false);
ALTER SEQUENCE "sys_dict_data_dictCode_seq" OWNER TO "postgres";
ALTER SEQUENCE "sys_dict_type_dictId_seq"
OWNED BY "sys_dict_type"."dictId";
SELECT setval('"sys_dict_type_dictId_seq"', 1, false);
ALTER SEQUENCE "sys_dict_type_dictId_seq" OWNER TO "postgres";
ALTER SEQUENCE "sys_job_jobId_seq"
OWNED BY "sys_job"."jobId";
SELECT setval('"sys_job_jobId_seq"', 1, false);
ALTER SEQUENCE "sys_job_jobId_seq" OWNER TO "postgres";
ALTER SEQUENCE "sys_job_log_jobLogId_seq"
OWNED BY "sys_job_log"."jobLogId";
SELECT setval('"sys_job_log_jobLogId_seq"', 1, false);
ALTER SEQUENCE "sys_job_log_jobLogId_seq" OWNER TO "postgres";
ALTER SEQUENCE "sys_login_infor_infoId_seq"
OWNED BY "sys_login_infor"."infoId";
SELECT setval('"sys_login_infor_infoId_seq"', 42, true);
ALTER SEQUENCE "sys_login_infor_infoId_seq" OWNER TO "postgres";
ALTER SEQUENCE "sys_menu_menuId_seq"
OWNED BY "sys_menu"."menuId";
SELECT setval('"sys_menu_menuId_seq"', 1, false);
ALTER SEQUENCE "sys_menu_menuId_seq" OWNER TO "postgres";
ALTER SEQUENCE "sys_notice_noticeId_seq"
OWNED BY "sys_notice"."noticeId";
SELECT setval('"sys_notice_noticeId_seq"', 1, false);
ALTER SEQUENCE "sys_notice_noticeId_seq" OWNER TO "postgres";
ALTER SEQUENCE "sys_oper_log_operId_seq"
OWNED BY "sys_oper_log"."operId";
SELECT setval('"sys_oper_log_operId_seq"', 54, true);
ALTER SEQUENCE "sys_oper_log_operId_seq" OWNER TO "postgres";
ALTER SEQUENCE "sys_post_postId_seq"
OWNED BY "sys_post"."postId";
SELECT setval('"sys_post_postId_seq"', 1, false);
ALTER SEQUENCE "sys_post_postId_seq" OWNER TO "postgres";
ALTER SEQUENCE "sys_role_roleId_seq"
OWNED BY "sys_role"."roleId";
SELECT setval('"sys_role_roleId_seq"', 3, true);
ALTER SEQUENCE "sys_role_roleId_seq" OWNER TO "postgres";
ALTER SEQUENCE "sys_user_userId_seq"
OWNED BY "sys_user"."userId";
SELECT setval('"sys_user_userId_seq"', 7, true);
ALTER SEQUENCE "sys_user_userId_seq" OWNER TO "postgres";
ALTER SEQUENCE "sys_web_webId_seq"
OWNED BY "sys_web"."webId";
SELECT setval('"sys_web_webId_seq"', 2, true);
ALTER SEQUENCE "sys_web_webId_seq" OWNER TO "postgres";
ALTER SEQUENCE "wx_user_wxUserId_seq"
OWNED BY "wx_user"."wxUserId";
SELECT setval('"wx_user_wxUserId_seq"', 1, false);
ALTER SEQUENCE "wx_user_wxUserId_seq" OWNER TO "postgres";
