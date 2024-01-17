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
    "os" TEXT,
    "icon" text,
    "register_time" INTEGER default 0
);
drop table if exists tb_message;
CREATE TABLE "tb_message" (
    "msgId" INTEGER primary key autoincrement,
    "from_entity" INTEGER,
    "from_id" INTEGER,
    "to_id" INTEGER,
    "to_entity" INTEGER,
    "message_type" INTEGER,
    "content" TEXT,
    "status" integer,
    "timestamp" INTEGER NOT null default 0
);

drop table if exists tb_security_code;
CREATE TABLE "tb_security_code" (
    "codeId" INTEGER PRIMARY KEY autoincrement,
    "uni_key" TEXT NOT NULL,
    "code" TEXT,
    "expire_time" INTEGER default 0
);
drop table if exists tb_token;
CREATE TABLE "tb_token" (
    "tokenId" INTEGER primary key autoincrement,
    "uid" INTEGER,
    "expire_time" INTEGER,
    "token" TEXT,
    "is_expire" INTEGER NOT null default 0
);

drop table if exists tb_user_address;
create table "tb_user_address" (
    'id' integer primary key autoincrement ,
    "userId" integer,
    "addressUserId" integer
);

drop table if exists tb_file;
CREATE TABLE "tb_file" (
    "fileId" INTEGER primary key autoincrement,
    "filePath" Text,
    "file_md5" INTEGER
);



SELECT msgId,from_id,from_entity,to_id,to_entity,content,message_type,timestamp,status FROM tb_message WHERE (timestamp = 1705389773);