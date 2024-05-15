
.open database.db;

drop table if exists tb_user;
CREATE TABLE "tb_user" (
    "userId" INTEGER PRIMARY KEY autoincrement,
    "username" TEXT,
    "email" TEXT,
    "status" INTEGER,
    "password" TEXT,
    "vip_status" INTEGER,
    "vip_expired" INTEGER,
    "icon" text,
	"deleted" INTEGER default 0,
	"user_ids" text,
	"group_ids" text,
    "register_time" INTEGER default 0
);

drop table if exists tb_message;
CREATE TABLE "tb_message" (
    "msgId" INTEGER primary key autoincrement,
    "from_entity" INTEGER,
    "from_id" INTEGER,
    "to_id" INTEGER,
    "to_entity" INTEGER,
	"entity_type" INTEGER,
	"entity_id" INTEGER,	
    "message_type" INTEGER,
    "content" TEXT,
    "status" integer,
	"deleted" INTEGER default 0,
    "timestamp" INTEGER NOT null default 0
);

drop table if exists tb_msg_status;
CREATE table "tb_msg_status" (
	"status_id" INTEGER primary key autoincrement,
	"msg_id" INTEGER NOT null,
	"user_id" INTEGER NOT null
);

drop table if exists tb_security_code;
CREATE TABLE "tb_security_code" (
    "codeId" INTEGER PRIMARY KEY autoincrement,
    "uni_key" TEXT NOT NULL,
    "code" TEXT,
	"deleted" INTEGER default 0,
    "expire_time" INTEGER default 0
);


drop table if exists tb_token;
CREATE TABLE "tb_token" (
    "tokenId" INTEGER primary key autoincrement,
    "uid" INTEGER,
    "expire_time" INTEGER,
    "token" TEXT,
    "os" TEXT,
	"deleted" INTEGER default 0,
    "is_expire" INTEGER NOT null default 0
);



drop table if exists tb_file;
CREATE TABLE "tb_file" (
    "fileId" INTEGER primary key autoincrement,
    "file_path" Text,
    "file_md5" INTEGER,
    "width" INTEGER,
	"deleted" INTEGER default 0,
    "height" INTEGER
);


drop table if exists tb_group;
CREATE TABLE "tb_group" (
    "group_id" INTEGER primary key autoincrement,
    "name" Text,
    "user_ids" Text,
	"own_user_id" INTEGER,
	"deleted" INTEGER default 0,
	"m_user_ids" Text
);

ALTER TABLE tb_user ADD group_ids INTEGER;
