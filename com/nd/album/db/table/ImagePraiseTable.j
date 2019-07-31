.bytecode 50.0
.class public final synchronized com/nd/album/db/table/ImagePraiseTable
.super java/lang/Object

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table image_praise (uid  BIGINT not null ,image_id  BIGINT, isPraised integer, primary key(uid, image_id))"

.field public static final 'FIELD_IMAGEID' Ljava/lang/String; = "image_id"

.field public static final 'FIELD_IS_PRAISED' Ljava/lang/String; = "isPraised"

.field public static final 'FIELD_UID' Ljava/lang/String; = "uid"

.field public static final 'TABLE_NAME' Ljava/lang/String; = "image_praise"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method
