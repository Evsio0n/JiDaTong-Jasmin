.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/BirthdayRemindTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_birthdaymind (fid integer not null ,usertype integer, username text, workid text, birthday text, mind integer default 0,primary key(fid))"

.field public static final 'FIELD_BIRTHDAY' Ljava/lang/String; = "birthday"

.field public static final 'FIELD_FID' Ljava/lang/String; = "fid"

.field public static final 'FIELD_MIND' Ljava/lang/String; = "mind"

.field public static final 'FIELD_USERNAME' Ljava/lang/String; = "username"

.field public static final 'FIELD_USERTYPE' Ljava/lang/String; = "usertype"

.field public static final 'FIELD_WORKID' Ljava/lang/String; = "workid"

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_birthdaymind"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method
