.bytecode 50.0
.class public synchronized com/nd/album/db/table/AlbumTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_album (imageId  BIGINT not null primary key, creator_id  BIGINT not null ,file_url text,thumburl text,largeurl text, file_dna text, navcnt integer, commentcnt integer, praisecnt integer, album_id  BIGINT )"

.field public static final 'FIELD_ALBUM_ID' Ljava/lang/String; = "album_id"

.field public static final 'FIELD_COMMENT_CNT' Ljava/lang/String; = "commentcnt"

.field public static final 'FIELD_CREATORID' Ljava/lang/String; = "creator_id"

.field public static final 'FIELD_FILE_DNA' Ljava/lang/String; = "file_dna"

.field public static final 'FIELD_IMAGEID' Ljava/lang/String; = "imageId"

.field public static final 'FIELD_IMG_LARGE_URL' Ljava/lang/String; = "largeurl"

.field public static final 'FIELD_IMG_THUMB_URL' Ljava/lang/String; = "thumburl"

.field public static final 'FIELD_IMG_TYPE' Ljava/lang/String; = "image_type"

.field public static final 'FIELD_NAV_CNT' Ljava/lang/String; = "navcnt"

.field public static final 'FIELD_PRAISE_CNT' Ljava/lang/String; = "praisecnt"

.field public static final 'FIELD_URL' Ljava/lang/String; = "file_url"

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_album"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method
