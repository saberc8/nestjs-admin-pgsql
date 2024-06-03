-- CreateTable
CREATE TABLE "sys_web" (
    "webId" SERIAL NOT NULL,
    "theme" VARCHAR(50) DEFAULT '#409EFF',
    "sideTheme" VARCHAR(50) DEFAULT '',
    "topNav" BOOLEAN,
    "tagsView" BOOLEAN,
    "fixedHeader" BOOLEAN,
    "sidebarLogo" BOOLEAN,
    "dynamicTitle" BOOLEAN,
    "createBy" VARCHAR(64) NOT NULL,
    "createTime" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updateBy" VARCHAR(64) DEFAULT '',
    "updateTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "sys_web_pkey" PRIMARY KEY ("webId")
);

-- CreateTable
CREATE TABLE "sys_table" (
    "tableId" VARCHAR(100) NOT NULL,
    "createBy" VARCHAR(64) NOT NULL,
    "createTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updateBy" VARCHAR(64) DEFAULT '',
    "updateTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "tableJsonConfig" TEXT,

    CONSTRAINT "sys_table_pkey" PRIMARY KEY ("tableId","createBy")
);

-- CreateTable
CREATE TABLE "sys_config" (
    "configId" SERIAL NOT NULL,
    "configName" VARCHAR(100) DEFAULT '',
    "configKey" VARCHAR(100),
    "configValue" VARCHAR(500) DEFAULT '',
    "configType" CHAR(1) DEFAULT 'N',
    "createBy" VARCHAR(64) DEFAULT '',
    "createTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updateBy" VARCHAR(64) DEFAULT '',
    "updateTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "remark" VARCHAR(500),

    CONSTRAINT "sys_config_pkey" PRIMARY KEY ("configId")
);

-- CreateTable
CREATE TABLE "sys_dept" (
    "deptId" SERIAL NOT NULL,
    "parentId" INTEGER,
    "ancestors" VARCHAR(50) NOT NULL DEFAULT '',
    "deptName" VARCHAR(30) DEFAULT '',
    "orderNum" INTEGER DEFAULT 0,
    "leader" VARCHAR(20),
    "phone" VARCHAR(11),
    "email" VARCHAR(50),
    "status" CHAR(1) DEFAULT '0',
    "delFlag" CHAR(1) DEFAULT '0',
    "createBy" VARCHAR(64) DEFAULT '',
    "createTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updateBy" VARCHAR(64) DEFAULT '',
    "updateTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "sys_dept_pkey" PRIMARY KEY ("deptId")
);

-- CreateTable
CREATE TABLE "sys_dict_data" (
    "dictCode" SERIAL NOT NULL,
    "dictSort" INTEGER DEFAULT 0,
    "dictLabel" VARCHAR(100) DEFAULT '',
    "dictValue" VARCHAR(100) DEFAULT '',
    "dictType" VARCHAR(100) DEFAULT '',
    "cssClass" VARCHAR(100),
    "listClass" VARCHAR(100),
    "isDefault" CHAR(1) DEFAULT 'N',
    "status" CHAR(1) DEFAULT '0',
    "createBy" VARCHAR(64) DEFAULT '',
    "createTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updateBy" VARCHAR(64) DEFAULT '',
    "updateTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "remark" VARCHAR(500),

    CONSTRAINT "sys_dict_data_pkey" PRIMARY KEY ("dictCode")
);

-- CreateTable
CREATE TABLE "sys_dict_type" (
    "dictId" SERIAL NOT NULL,
    "dictName" VARCHAR(100) DEFAULT '',
    "dictType" VARCHAR(100) DEFAULT '',
    "status" CHAR(1) DEFAULT '0',
    "createBy" VARCHAR(64) DEFAULT '',
    "createTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updateBy" VARCHAR(64) DEFAULT '',
    "updateTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "remark" VARCHAR(500),

    CONSTRAINT "sys_dict_type_pkey" PRIMARY KEY ("dictId")
);

-- CreateTable
CREATE TABLE "sys_job" (
    "jobId" SERIAL NOT NULL,
    "jobName" VARCHAR(64) NOT NULL DEFAULT '',
    "jobGroup" VARCHAR(64) NOT NULL DEFAULT 'DEFAULT',
    "invokeTarget" VARCHAR(500) NOT NULL,
    "cronExpression" VARCHAR(255) DEFAULT '',
    "misfirePolicy" VARCHAR(20) DEFAULT '3',
    "concurrent" CHAR(1) DEFAULT '1',
    "status" CHAR(1) DEFAULT '0',
    "createBy" VARCHAR(64) DEFAULT '',
    "createTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updateBy" VARCHAR(64) DEFAULT '',
    "updateTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "remark" VARCHAR(500) DEFAULT '',

    CONSTRAINT "sys_job_pkey" PRIMARY KEY ("jobId")
);

-- CreateTable
CREATE TABLE "sys_job_log" (
    "jobLogId" SERIAL NOT NULL,
    "jobName" VARCHAR(64) NOT NULL,
    "jobGroup" VARCHAR(64) NOT NULL,
    "invokeTarget" VARCHAR(500) NOT NULL,
    "jobMessage" VARCHAR(500),
    "status" CHAR(1) DEFAULT '0',
    "exceptionInfo" VARCHAR(2000) DEFAULT '',
    "createTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "sys_job_log_pkey" PRIMARY KEY ("jobLogId")
);

-- CreateTable
CREATE TABLE "sys_login_infor" (
    "infoId" SERIAL NOT NULL,
    "userName" VARCHAR(50) DEFAULT '',
    "ipaddr" VARCHAR(128) DEFAULT '',
    "loginLocation" VARCHAR(255) DEFAULT '',
    "browser" VARCHAR(50) DEFAULT '',
    "os" VARCHAR(50) DEFAULT '',
    "status" CHAR(1) DEFAULT '0',
    "msg" VARCHAR(255) DEFAULT '',
    "loginTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "sys_login_infor_pkey" PRIMARY KEY ("infoId")
);

-- CreateTable
CREATE TABLE "sys_menu" (
    "menuId" SERIAL NOT NULL,
    "menuName" VARCHAR(50) NOT NULL,
    "parentId" INTEGER,
    "orderNum" INTEGER DEFAULT 0,
    "path" VARCHAR(200) DEFAULT '',
    "component" VARCHAR(255),
    "query" VARCHAR(255),
    "isFrame" CHAR(1) DEFAULT '1',
    "isCache" CHAR(1) DEFAULT '0',
    "menuType" CHAR(1) DEFAULT '',
    "visible" CHAR(1) DEFAULT '0',
    "status" CHAR(1) DEFAULT '0',
    "perms" VARCHAR(100),
    "icon" VARCHAR(100) DEFAULT '#',
    "createBy" VARCHAR(64) DEFAULT '',
    "createTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updateBy" VARCHAR(64) DEFAULT '',
    "updateTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "remark" VARCHAR(500) DEFAULT '',

    CONSTRAINT "sys_menu_pkey" PRIMARY KEY ("menuId")
);

-- CreateTable
CREATE TABLE "sys_notice" (
    "noticeId" SERIAL NOT NULL,
    "noticeTitle" VARCHAR(50) NOT NULL,
    "noticeType" CHAR(1) NOT NULL,
    "noticeContent" TEXT,
    "status" CHAR(1) DEFAULT '0',
    "createBy" VARCHAR(64) DEFAULT '',
    "createTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updateBy" VARCHAR(64) DEFAULT '',
    "updateTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "remark" VARCHAR(255),

    CONSTRAINT "sys_notice_pkey" PRIMARY KEY ("noticeId")
);

-- CreateTable
CREATE TABLE "sys_oper_log" (
    "operId" SERIAL NOT NULL,
    "title" VARCHAR(50) DEFAULT '',
    "businessType" CHAR(2) DEFAULT '0',
    "method" VARCHAR(100) DEFAULT '',
    "requestMethod" VARCHAR(10) DEFAULT '',
    "operatorType" INTEGER DEFAULT 0,
    "operName" VARCHAR(50) DEFAULT '',
    "deptName" VARCHAR(50) DEFAULT '',
    "operUrl" VARCHAR(255) DEFAULT '',
    "operIp" VARCHAR(128) DEFAULT '',
    "operLocation" VARCHAR(255) DEFAULT '',
    "operParam" TEXT,
    "jsonResult" TEXT,
    "status" CHAR(1) DEFAULT '0',
    "errorMsg" TEXT,
    "operTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "costTime" INTEGER DEFAULT 0,

    CONSTRAINT "sys_oper_log_pkey" PRIMARY KEY ("operId")
);

-- CreateTable
CREATE TABLE "sys_post" (
    "postId" SERIAL NOT NULL,
    "postCode" VARCHAR(64) NOT NULL,
    "postName" VARCHAR(50) NOT NULL,
    "postSort" INTEGER NOT NULL,
    "status" CHAR(1) NOT NULL,
    "createBy" VARCHAR(64) DEFAULT '',
    "createTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updateBy" VARCHAR(64) DEFAULT '',
    "updateTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "remark" VARCHAR(500),

    CONSTRAINT "sys_post_pkey" PRIMARY KEY ("postId")
);

-- CreateTable
CREATE TABLE "sys_role" (
    "roleId" SERIAL NOT NULL,
    "createBy" VARCHAR(64) DEFAULT '',
    "createTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "dataScope" CHAR(1) DEFAULT '1',
    "delFlag" CHAR(1) DEFAULT '0',
    "deptCheckStrictly" BOOLEAN DEFAULT true,
    "menuCheckStrictly" BOOLEAN DEFAULT true,
    "remark" VARCHAR(500),
    "roleKey" VARCHAR(100) NOT NULL,
    "roleName" VARCHAR(30) NOT NULL,
    "roleSort" INTEGER NOT NULL,
    "status" CHAR(1) NOT NULL,
    "updateBy" VARCHAR(64) DEFAULT '',
    "updateTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "sys_role_pkey" PRIMARY KEY ("roleId")
);

-- CreateTable
CREATE TABLE "sys_user" (
    "userId" SERIAL NOT NULL,
    "avatar" VARCHAR(100) DEFAULT '',
    "createBy" VARCHAR(64) DEFAULT '',
    "createTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "delFlag" CHAR(1) DEFAULT '0',
    "deptId" INTEGER,
    "email" VARCHAR(50) DEFAULT '',
    "loginDate" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "loginIp" VARCHAR(128) DEFAULT '',
    "nickName" VARCHAR(30) NOT NULL,
    "password" VARCHAR(100) DEFAULT '',
    "phonenumber" VARCHAR(11) DEFAULT '',
    "remark" VARCHAR(500),
    "sex" CHAR(1) DEFAULT '0',
    "status" CHAR(1) DEFAULT '0',
    "updateBy" VARCHAR(64) DEFAULT '',
    "updateTime" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "userName" VARCHAR(30) NOT NULL,
    "userType" VARCHAR(2) DEFAULT '00',

    CONSTRAINT "sys_user_pkey" PRIMARY KEY ("userId")
);

-- CreateTable
CREATE TABLE "_sys_dept_to_sys_role" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_sys_menu_to_sys_role" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_sys_post_to_sys_user" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_sys_role_to_sys_user" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "sys_web_createBy_key" ON "sys_web"("createBy");

-- CreateIndex
CREATE UNIQUE INDEX "sys_config_configKey_key" ON "sys_config"("configKey");

-- CreateIndex
CREATE INDEX "sys_dict_data_dictType_fkey_unique" ON "sys_dict_data"("dictType");

-- CreateIndex
CREATE UNIQUE INDEX "dictType" ON "sys_dict_type"("dictType");

-- CreateIndex
CREATE INDEX "idxSysLogininforLt" ON "sys_login_infor"("loginTime");

-- CreateIndex
CREATE INDEX "idxSysLogininforS" ON "sys_login_infor"("status");

-- CreateIndex
CREATE INDEX "idxSysOperLogBt" ON "sys_oper_log"("businessType");

-- CreateIndex
CREATE INDEX "idxSysOperLogOt" ON "sys_oper_log"("operTime");

-- CreateIndex
CREATE INDEX "idxSysOperLogS" ON "sys_oper_log"("status");

-- CreateIndex
CREATE UNIQUE INDEX "sys_post_postCode_key" ON "sys_post"("postCode");

-- CreateIndex
CREATE UNIQUE INDEX "sys_user_userName_key" ON "sys_user"("userName");

-- CreateIndex
CREATE INDEX "sys_user_deptId_fkey" ON "sys_user"("deptId");

-- CreateIndex
CREATE UNIQUE INDEX "_sys_dept_to_sys_role_AB_unique" ON "_sys_dept_to_sys_role"("A", "B");

-- CreateIndex
CREATE INDEX "_sys_dept_to_sys_role_B_index" ON "_sys_dept_to_sys_role"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_sys_menu_to_sys_role_AB_unique" ON "_sys_menu_to_sys_role"("A", "B");

-- CreateIndex
CREATE INDEX "_sys_menu_to_sys_role_B_index" ON "_sys_menu_to_sys_role"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_sys_post_to_sys_user_AB_unique" ON "_sys_post_to_sys_user"("A", "B");

-- CreateIndex
CREATE INDEX "_sys_post_to_sys_user_B_index" ON "_sys_post_to_sys_user"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_sys_role_to_sys_user_AB_unique" ON "_sys_role_to_sys_user"("A", "B");

-- CreateIndex
CREATE INDEX "_sys_role_to_sys_user_B_index" ON "_sys_role_to_sys_user"("B");

-- AddForeignKey
ALTER TABLE "sys_dept" ADD CONSTRAINT "sys_dept_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES "sys_dept"("deptId") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "sys_dict_data" ADD CONSTRAINT "sys_dict_data_dictType_fkey" FOREIGN KEY ("dictType") REFERENCES "sys_dict_type"("dictType") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "sys_menu" ADD CONSTRAINT "sys_menu_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES "sys_menu"("menuId") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "sys_user" ADD CONSTRAINT "sys_user_deptId_fkey_relation" FOREIGN KEY ("deptId") REFERENCES "sys_dept"("deptId") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_sys_dept_to_sys_role" ADD CONSTRAINT "_sys_dept_to_sys_role_A_fkey" FOREIGN KEY ("A") REFERENCES "sys_dept"("deptId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_sys_dept_to_sys_role" ADD CONSTRAINT "_sys_dept_to_sys_role_B_fkey" FOREIGN KEY ("B") REFERENCES "sys_role"("roleId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_sys_menu_to_sys_role" ADD CONSTRAINT "_sys_menu_to_sys_role_A_fkey" FOREIGN KEY ("A") REFERENCES "sys_menu"("menuId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_sys_menu_to_sys_role" ADD CONSTRAINT "_sys_menu_to_sys_role_B_fkey" FOREIGN KEY ("B") REFERENCES "sys_role"("roleId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_sys_post_to_sys_user" ADD CONSTRAINT "_sys_post_to_sys_user_A_fkey" FOREIGN KEY ("A") REFERENCES "sys_post"("postId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_sys_post_to_sys_user" ADD CONSTRAINT "_sys_post_to_sys_user_B_fkey" FOREIGN KEY ("B") REFERENCES "sys_user"("userId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_sys_role_to_sys_user" ADD CONSTRAINT "_sys_role_to_sys_user_A_fkey" FOREIGN KEY ("A") REFERENCES "sys_role"("roleId") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_sys_role_to_sys_user" ADD CONSTRAINT "_sys_role_to_sys_user_B_fkey" FOREIGN KEY ("B") REFERENCES "sys_user"("userId") ON DELETE CASCADE ON UPDATE CASCADE;
