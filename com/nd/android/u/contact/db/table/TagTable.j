.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/TagTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_ability (_id integer primary key autoincrement, uid  BIGINT not null ,tigid integer,tagname text )"

.field public static final 'FIELD_TAGNAME' Ljava/lang/String; = "tagname"

.field public static final 'FIELD_TIGID' Ljava/lang/String; = "tigid"

.field public static final 'FIELD_UID' Ljava/lang/String; = "uid"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_ability"

.field public static final 'TAG' Ljava/lang/String; = "AlbumTable"

.method static <clinit>()V
iconst_4
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "uid"
aastore
dup
iconst_2
ldc "tigid"
aastore
dup
iconst_3
ldc "tagname"
aastore
putstatic com/nd/android/u/contact/db/table/TagTable/TABLE_COLUMNS [Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/product/android/commonInterface/contact/TagInfo;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
ldc "AlbumTable"
ldc "Cann't parse Cursor, bacause cursor is null or empty."
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L1:
new com/product/android/commonInterface/contact/TagInfo
dup
invokespecial com/product/android/commonInterface/contact/TagInfo/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
invokevirtual com/product/android/commonInterface/contact/TagInfo/setUid(J)V
aload 1
aload 0
aload 0
ldc "tigid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/TagInfo/setTagid(I)V
aload 1
aload 0
aload 0
ldc "tagname"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/TagInfo/setTagname(Ljava/lang/String;)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
