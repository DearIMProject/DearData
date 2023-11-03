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
    "register_time" INTEGER default 0
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