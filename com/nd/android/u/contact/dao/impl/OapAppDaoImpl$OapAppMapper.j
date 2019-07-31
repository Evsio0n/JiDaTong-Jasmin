.bytecode 50.0
.class final synchronized com/nd/android/u/contact/dao/impl/OapAppDaoImpl$OapAppMapper
.super java/lang/Object
.implements com/common/android/utils/db/RowMapper
.signature "Ljava/lang/Object;Lcom/common/android/utils/db/RowMapper<Lcom/product/android/commonInterface/contact/OapApp;>;"
.inner class private static final OapAppMapper inner com/nd/android/u/contact/dao/impl/OapAppDaoImpl$OapAppMapper outer com/nd/android/u/contact/dao/impl/OapAppDaoImpl

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/dao/impl/OapAppDaoImpl$1;)V
aload 0
invokespecial com/nd/android/u/contact/dao/impl/OapAppDaoImpl$OapAppMapper/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public mapRow(Landroid/database/Cursor;I)Lcom/product/android/commonInterface/contact/OapApp;
new com/product/android/commonInterface/contact/OapApp
dup
invokespecial com/product/android/commonInterface/contact/OapApp/<init>()V
astore 3
aload 1
ifnull L0
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
aload 3
aload 1
aload 1
ldc "appid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setAppid(I)V
aload 3
aload 1
aload 1
ldc "code"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setCode(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setName(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "menutype"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setMenutype(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "url"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setOpen_url(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "bussurl"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setBuss_url(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "packet_name"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setPacket_name(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "product_code"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setProduct_code(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "target"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setTarget(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "display"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setDisplay(I)V
aload 3
aload 1
aload 1
ldc "ver"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setVer(I)V
aload 3
aload 1
aload 1
ldc "vername"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setVername(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "downurl"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setDown_url(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "md5"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setMd5(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "notes"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getString(I)Ljava/lang/String; 1
invokevirtual com/product/android/commonInterface/contact/OapApp/setNotes(Ljava/lang/String;)V
aload 3
aload 1
aload 1
ldc "updatetime"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getInt(I)I 1
putfield com/product/android/commonInterface/contact/OapApp/updatetime I
L0:
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic mapRow(Landroid/database/Cursor;I)Ljava/lang/Object;
aload 0
aload 1
iload 2
invokevirtual com/nd/android/u/contact/dao/impl/OapAppDaoImpl$OapAppMapper/mapRow(Landroid/database/Cursor;I)Lcom/product/android/commonInterface/contact/OapApp;
areturn
.limit locals 3
.limit stack 3
.end method
