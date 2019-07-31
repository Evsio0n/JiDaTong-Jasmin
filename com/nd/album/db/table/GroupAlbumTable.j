.bytecode 50.0
.class public synchronized com/nd/album/db/table/GroupAlbumTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_group_album ( imageId BIGINT , creator_uid integer, gid integer not null, thumburl text, largeurl text, file_dna text, navcnt integer, create_time text, update_time text, commentcnt integer, praisecnt integer, ismypraise  integer, primary key(gid, file_dna) ) "

.field public static final 'FIELD_COMMENT_CNT' Ljava/lang/String; = "commentcnt"

.field public static final 'FIELD_CREATETIME' Ljava/lang/String; = "create_time"

.field public static final 'FIELD_CREATEUID' Ljava/lang/String; = "creator_uid"

.field public static final 'FIELD_FILE_DNA' Ljava/lang/String; = "file_dna"

.field public static final 'FIELD_GID' Ljava/lang/String; = "gid"

.field public static final 'FIELD_IMAGEID' Ljava/lang/String; = "imageId"

.field public static final 'FIELD_IMG_LARGE_URL' Ljava/lang/String; = "largeurl"

.field public static final 'FIELD_IMG_THUMB_URL' Ljava/lang/String; = "thumburl"

.field public static final 'FIELD_IS_MY_PRAISE' Ljava/lang/String; = "ismypraise"

.field public static final 'FIELD_NAV_CNT' Ljava/lang/String; = "navcnt"

.field public static final 'FIELD_PRAISE_CNT' Ljava/lang/String; = "praisecnt"

.field public static final 'FIELD_UPDATETIME' Ljava/lang/String; = "update_time"

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_group_album"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method
