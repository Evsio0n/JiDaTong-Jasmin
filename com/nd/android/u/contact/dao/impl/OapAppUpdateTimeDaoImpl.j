.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/OapAppUpdateTimeDao
.inner class static synthetic inner com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl$1
.inner class private static final OapAppUpdateTimeMapper inner com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl$OapAppUpdateTimeMapper outer com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl

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
putfield com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private appUpdateTimeToValues(Lcom/nd/android/u/contact/dataStructure/OapAppUpdateTime;)Landroid/content/ContentValues;
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "appid"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapAppUpdateTime/getAppid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "code"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapAppUpdateTime/getCode()Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "updatetime"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapAppUpdateTime/getUpdatetime()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public final deleteOapAppUpdateTime(ILjava/lang/String;)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_appupdatetime"
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "appid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "code =  '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 4
.limit stack 3
.end method

.method public final findOapAppUpdateTime(ILjava/lang/String;)Lcom/nd/android/u/contact/dataStructure/OapAppUpdateTime;
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_appupdatetime"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
ldc "appid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "code =  '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
new com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl$OapAppUpdateTimeMapper
dup
aconst_null
invokespecial com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl$OapAppUpdateTimeMapper/<init>(Lcom/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl$1;)V
invokevirtual com/common/android/utils/db/SqliteTemplate/queryForObject(Lcom/common/android/utils/db/Query;Lcom/common/android/utils/db/RowMapper;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/OapAppUpdateTime
areturn
.limit locals 4
.limit stack 5
.end method

.method public final insertOapAppUpdateTime(Lcom/nd/android/u/contact/dataStructure/OapAppUpdateTime;)J
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapAppUpdateTime/getAppid()I
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapAppUpdateTime/getCode()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl/isExists(ILjava/lang/String;)Z
ifeq L0
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl/updateOapAppUpdateTime(Lcom/nd/android/u/contact/dataStructure/OapAppUpdateTime;)V
ldc2_w -1L
lreturn
L0:
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_appupdatetime"
invokevirtual com/common/android/utils/db/Query/into(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl/appUpdateTimeToValues(Lcom/nd/android/u/contact/dataStructure/OapAppUpdateTime;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
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
ldc "uu_appupdatetime"
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 4
ldc "appid = ?"
iload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "code =  '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
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

.method public final updateOapAppUpdateTime(Lcom/nd/android/u/contact/dataStructure/OapAppUpdateTime;)V
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_appupdatetime"
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 2
ldc "appid = ?"
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapAppUpdateTime/getAppid()I
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;I)Lcom/common/android/utils/db/Query;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "code =  '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapAppUpdateTime/getCode()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "' "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;)Lcom/common/android/utils/db/Query;
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl/appUpdateTimeToValues(Lcom/nd/android/u/contact/dataStructure/OapAppUpdateTime;)Landroid/content/ContentValues;
invokevirtual com/common/android/utils/db/Query/values(Landroid/content/ContentValues;)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapAppUpdateTimeDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/upload(Lcom/common/android/utils/db/Query;)I
pop
return
.limit locals 3
.limit stack 3
.end method
