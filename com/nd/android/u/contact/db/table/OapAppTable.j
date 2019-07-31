.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/db/table/OapAppTable
.super java/lang/Object
.implements android/provider/BaseColumns

.field public static final 'CREATE_TABLE' Ljava/lang/String; = "create table uu_app (_id integer , appid integer ,code text ,name text ,menutype text ,url text ,bussurl text ,packet_name text ,product_code text ,target text ,display integer ,ver integer ,vername text ,downurl text ,md5 text ,notes text ,updatetime integer , constraint pk_t3 primary key (appid ,code ))"

.field public static final 'FIELD_APPID' Ljava/lang/String; = "appid"

.field public static final 'FIELD_BUSSURL' Ljava/lang/String; = "bussurl"

.field public static final 'FIELD_CODE' Ljava/lang/String; = "code"

.field public static final 'FIELD_DISPLAY' Ljava/lang/String; = "display"

.field public static final 'FIELD_DOWNLOAD_URL' Ljava/lang/String; = "downurl"

.field public static final 'FIELD_MD5' Ljava/lang/String; = "md5"

.field public static final 'FIELD_MENUTYPE' Ljava/lang/String; = "menutype"

.field public static final 'FIELD_NAME' Ljava/lang/String; = "name"

.field public static final 'FIELD_NOTES' Ljava/lang/String; = "notes"

.field public static final 'FIELD_PACKET_CODE' Ljava/lang/String; = "product_code"

.field public static final 'FIELD_PACKET_NAME' Ljava/lang/String; = "packet_name"

.field public static final 'FIELD_TARGET' Ljava/lang/String; = "target"

.field public static final 'FIELD_UPDATETIME' Ljava/lang/String; = "updatetime"

.field public static final 'FIELD_URL' Ljava/lang/String; = "url"

.field public static final 'FIELD_VER' Ljava/lang/String; = "ver"

.field public static final 'FIELD_VERNAME' Ljava/lang/String; = "vername"

.field public static final 'TABLE_COLUMNS' [Ljava/lang/String;

.field public static final 'TABLE_NAME' Ljava/lang/String; = "uu_app"

.field public static final 'TAG' Ljava/lang/String; = "OapAppTable"

.method static <clinit>()V
bipush 17
anewarray java/lang/String
dup
iconst_0
ldc "_id"
aastore
dup
iconst_1
ldc "appid"
aastore
dup
iconst_2
ldc "code"
aastore
dup
iconst_3
ldc "name"
aastore
dup
iconst_4
ldc "menutype"
aastore
dup
iconst_5
ldc "url"
aastore
dup
bipush 6
ldc "bussurl"
aastore
dup
bipush 7
ldc "packet_name"
aastore
dup
bipush 8
ldc "product_code"
aastore
dup
bipush 9
ldc "target"
aastore
dup
bipush 10
ldc "display"
aastore
dup
bipush 11
ldc "ver"
aastore
dup
bipush 12
ldc "vername"
aastore
dup
bipush 13
ldc "downurl"
aastore
dup
bipush 14
ldc "md5"
aastore
dup
bipush 15
ldc "notes"
aastore
dup
bipush 16
ldc "updatetime"
aastore
putstatic com/nd/android/u/contact/db/table/OapAppTable/TABLE_COLUMNS [Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static parseCursor(Landroid/database/Cursor;)Lcom/product/android/commonInterface/contact/OapApp;
aload 0
ifnull L0
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifne L1
L0:
ldc "OapAppTable"
ldc "Cann't parse Cursor, bacause cursor is null or empty."
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L1:
new com/product/android/commonInterface/contact/OapApp
dup
invokespecial com/product/android/commonInterface/contact/OapApp/<init>()V
astore 1
aload 1
aload 0
aload 0
ldc "appid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setAppid(I)V
aload 1
aload 0
aload 0
ldc "code"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setCode(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setName(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "menutype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setMenutype(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "url"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setOpen_url(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "bussurl"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setBuss_url(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "packet_name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setPacket_name(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "product_code"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setProduct_code(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "target"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setTarget(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "display"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setDisplay(I)V
aload 1
aload 0
aload 0
ldc "ver"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setVer(I)V
aload 1
aload 0
aload 0
ldc "vername"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setVername(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "downurl"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setDown_url(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "md5"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setMd5(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "notes"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setNotes(Ljava/lang/String;)V
aload 1
aload 0
aload 0
ldc "updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/product/android/commonInterface/contact/OapApp/updatetime I
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
