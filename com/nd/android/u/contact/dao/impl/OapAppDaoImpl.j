.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/OapAppDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/OapAppDao
.inner class static synthetic inner com/nd/android/u/contact/dao/impl/OapAppDaoImpl$1
.inner class private static final OapAppMapper inner com/nd/android/u/contact/dao/impl/OapAppDaoImpl$OapAppMapper outer com/nd/android/u/contact/dao/impl/OapAppDaoImpl

.field private 'sqliteTemplate' Lcom/common/android/utils/db/SqliteTemplate;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/common/android/utils/db/SqliteTemplate
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/SqliteTemplate/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
putfield com/nd/android/u/contact/dao/impl/OapAppDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private appToValues(Lcom/product/android/commonInterface/contact/OapApp;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "appid"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getAppid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "code"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getCode()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "name"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getName()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "menutype"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getMenutype()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "url"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getOpen_url()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "bussurl"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getBuss_url()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "packet_name"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getPacket_name()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "product_code"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getProduct_code()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "target"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getTarget()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "display"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getDisplay()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "ver"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getVer()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "vername"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getVername()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "downurl"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getDown_url()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "md5"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getMd5()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "notes"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getNotes()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "updatetime"
aload 1
getfield com/product/android/commonInterface/contact/OapApp/updatetime I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public final deleteOapApp()Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_app"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapAppDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 2
.limit stack 3
.end method

.method public final deleteOapApp(I)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_app"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 2
ldc "appid = ?"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapAppDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 3
.limit stack 4
.end method

.method public final deleteOapApp(ILjava/lang/String;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_app"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "appid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "code = ?"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapAppDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public final findOapApp(ILjava/lang/String;)Lcom/product/android/commonInterface/contact/OapApp;
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_app"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "appid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
ldc "code = ?"
aload 2
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapAppDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/OapAppDaoImpl$OapAppMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapAppDaoImpl$OapAppMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapAppDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapApp
areturn
.limit locals 4
.limit stack 5
.end method

.method public final getOapAppVer(ILjava/lang/String;)Ljava/lang/Integer;
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_app"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "appid = ?"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "code = ?"
aload 2
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapAppDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/OapAppDaoImpl$OapAppMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapAppDaoImpl$OapAppMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapAppDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapApp
astore 2
aload 2
ifnull L0
aload 2
invokevirtual com/product/android/commonInterface/contact/OapApp/getVer()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L0:
iconst_m1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 4
.limit stack 5
.end method

.method public final insertOapApp(Lcom/product/android/commonInterface/contact/OapApp;)V
aload 1
ifnull L0
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getAppid()I
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getCode()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dao/impl/OapAppDaoImpl/isExists(ILjava/lang/String;)Z
ifeq L1
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/OapAppDaoImpl/updateOapApp(Lcom/product/android/commonInterface/contact/OapApp;)Z
pop
L0:
return
L1:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/OapAppDaoImpl/insertOapAppInfo(Lcom/product/android/commonInterface/contact/OapApp;)J
pop2
return
.limit locals 2
.limit stack 3
.end method

.method public final insertOapApp(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapApp;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifeq L0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapApp
invokevirtual com/nd/android/u/contact/dao/impl/OapAppDaoImpl/insertOapApp(Lcom/product/android/commonInterface/contact/OapApp;)V
goto L1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public final insertOapAppInfo(Lcom/product/android/commonInterface/contact/OapApp;)J
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_app"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapAppDaoImpl/appToValues(Lcom/product/android/commonInterface/contact/OapApp;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapAppDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/insert(Lcom/common/android/utils/db/Query;)J
lreturn
.limit locals 3
.limit stack 3
.end method

.method public final isExists(ILjava/lang/String;)Z
new com/common/android/utils/db/Query
dup
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokespecial com/common/android/utils/db/Query/<init>(Landroid/database/sqlite/SQLiteDatabase;)V
astore 4
aload 4
ldc "uu_app"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 4
ldc "appid = ?"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "code = ?"
aload 2
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 4
invokevirtual com/common/android/utils/db/Query/select()Landroid/database/Cursor;
astore 2
aload 2
ifnull L0
aload 2
invokeinterface android/database/Cursor/getCount()I 0
ifle L0
iconst_1
istore 3
L1:
aload 2
ifnull L2
aload 2
invokeinterface android/database/Cursor/close()V 0
L2:
iload 3
ireturn
L0:
iconst_0
istore 3
goto L1
.limit locals 5
.limit stack 4
.end method

.method public final searchOapApps(Ljava/lang/String;)Ljava/util/Vector;
.signature "(Ljava/lang/String;)Ljava/util/Vector<Lcom/product/android/commonInterface/contact/OapApp;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_app"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "menutype = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "' and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "display"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "=1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapAppDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
new com/nd/android/u/contact/dao/impl/OapAppDaoImpl$OapAppMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapAppDaoImpl$OapAppMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapAppDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForVector(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/Vector;
areturn
.limit locals 3
.limit stack 5
.end method

.method public final searchOapAppsAll()Ljava/util/Vector;
.signature "()Ljava/util/Vector<Lcom/product/android/commonInterface/contact/OapApp;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_app"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapAppDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
new com/nd/android/u/contact/dao/impl/OapAppDaoImpl$OapAppMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapAppDaoImpl$OapAppMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapAppDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForVector(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/Vector;
areturn
.limit locals 2
.limit stack 5
.end method

.method public final searchOapAppsDisplay()Ljava/util/Vector;
.signature "()Ljava/util/Vector<Lcom/product/android/commonInterface/contact/OapApp;>;"
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 1
aload 1
ldc "uu_app"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "display=1"
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapAppDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 1
new com/nd/android/u/contact/dao/impl/OapAppDaoImpl$OapAppMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapAppDaoImpl$OapAppMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapAppDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForVector(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/util/Vector;
areturn
.limit locals 2
.limit stack 5
.end method

.method public final updateOapApp(Lcom/product/android/commonInterface/contact/OapApp;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_app"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 2
ldc "appid = ?"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
getfield com/product/android/commonInterface/contact/OapApp/appid I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "code = ?"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getCode()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapAppDaoImpl/appToValues(Lcom/product/android/commonInterface/contact/OapApp;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapAppDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/upload(Lcom/common/android/utils/db/Query;)I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method
