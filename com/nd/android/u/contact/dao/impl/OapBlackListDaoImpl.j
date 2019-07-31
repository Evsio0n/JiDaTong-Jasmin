.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/OapBlackListDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/OapBlackListDao

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
putfield com/nd/android/u/contact/dao/impl/OapBlackListDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
return
.limit locals 1
.limit stack 5
.end method

.method private getBlackPersonFromCursor(Landroid/database/Cursor;)Lcom/product/android/commonInterface/contact/BlackListPerson;
new com/product/android/commonInterface/contact/BlackListPerson
dup
invokespecial com/product/android/commonInterface/contact/BlackListPerson/<init>()V
astore 2
aload 2
aload 1
aload 1
ldc "uid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/product/android/commonInterface/contact/BlackListPerson/uid J
aload 2
aload 1
aload 1
ldc "myoapid"
invokeinterface android/database/Cursor/getColumnIndex(Ljava/lang/String;)I 1
invokeinterface android/database/Cursor/getLong(I)J 1
putfield com/product/android/commonInterface/contact/BlackListPerson/myoapid J
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public addBlackList(Ljava/util/ArrayList;)Z
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/BlackListPerson;>;)Z"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
iconst_0
istore 4
iconst_0
istore 3
iconst_0
istore 2
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 5
L1:
iload 2
istore 3
L3:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L13
L4:
iload 2
istore 3
L5:
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/BlackListPerson
astore 6
L6:
iload 2
istore 3
L7:
aload 0
aload 6
invokevirtual com/nd/android/u/contact/dao/impl/OapBlackListDaoImpl/setBlackListPerson(Lcom/product/android/commonInterface/contact/BlackListPerson;)V
L8:
iload 2
istore 3
L9:
aload 6
getfield com/product/android/commonInterface/contact/BlackListPerson/uid J
iconst_0
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/weiboDelLocalFollow(JI)V
L10:
iload 2
iconst_1
iadd
istore 2
goto L1
L13:
iload 2
istore 3
L11:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L12:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
iload 2
aload 1
invokevirtual java/util/ArrayList/size()I
if_icmpne L14
iconst_1
istore 4
L14:
iload 4
ireturn
L2:
astore 5
aload 5
invokevirtual java/lang/Exception/printStackTrace()V
iload 3
istore 2
goto L12
.limit locals 7
.limit stack 3
.end method

.method public addBlackListPerson(Lcom/product/android/commonInterface/contact/BlackListPerson;)Z
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 4
aload 4
ldc "myoapid"
aload 1
getfield com/product/android/commonInterface/contact/BlackListPerson/myoapid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 4
ldc "uid"
aload 1
getfield com/product/android/commonInterface/contact/BlackListPerson/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_blacklist"
aconst_null
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
lstore 2
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
aload 1
getfield com/product/android/commonInterface/contact/BlackListPerson/uid J
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/isExists(J)Z 2
ifeq L0
aload 1
getfield com/product/android/commonInterface/contact/BlackListPerson/uid J
iconst_0
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/weiboDelLocalFollow(JI)V
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
aload 1
getfield com/product/android/commonInterface/contact/BlackListPerson/uid J
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/deleteFriendRelation(J)Z 2
pop
L0:
lload 2
lconst_0
lcmp
ifle L1
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method public final checkUidIsBlackList(JJ)Z
.catch all from L0 to L1 using L2
iconst_0
istore 6
iconst_0
istore 7
lload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L3
iconst_0
ireturn
L3:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "select * from uu_blacklist where uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 8
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
aload 8
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 8
aload 8
ifnull L4
L0:
aload 8
invokeinterface android/database/Cursor/getCount()I 0
istore 5
L1:
iload 7
istore 6
iload 5
ifle L5
iconst_1
istore 6
L5:
aload 8
invokeinterface android/database/Cursor/close()V 0
L4:
iload 6
ireturn
L2:
astore 9
aload 8
invokeinterface android/database/Cursor/close()V 0
aload 9
athrow
.limit locals 10
.limit stack 4
.end method

.method public final clearBlackList()V
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_blacklist"
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 4
.end method

.method public final deleteBlackList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/BlackListPerson;>;)V"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/BlackListPerson
invokevirtual com/nd/android/u/contact/dao/impl/OapBlackListDaoImpl/deleteBlackListPerson(Lcom/product/android/commonInterface/contact/BlackListPerson;)V
L3:
goto L1
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L6:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L4:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L5:
goto L6
.limit locals 2
.limit stack 2
.end method

.method public final deleteBlackListPerson(Lcom/product/android/commonInterface/contact/BlackListPerson;)V
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 2
aload 2
ldc "uu_blacklist"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 2
ldc "myoapid = ?"
aload 1
getfield com/product/android/commonInterface/contact/BlackListPerson/myoapid J
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 2
ldc "uid = ?"
aload 1
getfield com/product/android/commonInterface/contact/BlackListPerson/uid J
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapBlackListDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 2
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
pop
return
.limit locals 3
.limit stack 4
.end method

.method public deleteBlackListPerson(J)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_blacklist"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "uid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapBlackListDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public deleteBlackListPersonByID(J)Z
new com/common/android/utils/db/Query
dup
invokespecial com/common/android/utils/db/Query/<init>()V
astore 3
aload 3
ldc "uu_blacklist"
aconst_null
invokevirtual com/common/android/utils/db/Query/from(Ljava/lang/String;[Ljava/lang/String;)Lcom/common/android/utils/db/Query;
pop
aload 3
ldc "uid = ?"
lload 1
invokevirtual com/common/android/utils/db/Query/where(Ljava/lang/String;J)Lcom/common/android/utils/db/Query;
pop
aload 0
getfield com/nd/android/u/contact/dao/impl/OapBlackListDaoImpl/sqliteTemplate Lcom/common/android/utils/db/SqliteTemplate;
aload 3
invokevirtual com/common/android/utils/db/SqliteTemplate/delete(Lcom/common/android/utils/db/Query;)Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public getBlackList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/BlackListPerson;>;"
.catch all from L0 to L1 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_blacklist"
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 1
aload 1
ifnull L3
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L3
L0:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
aload 2
aload 0
aload 1
invokespecial com/nd/android/u/contact/dao/impl/OapBlackListDaoImpl/getBlackPersonFromCursor(Landroid/database/Cursor;)Lcom/product/android/commonInterface/contact/BlackListPerson;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L1:
goto L0
L2:
astore 2
aload 1
invokeinterface android/database/Cursor/close()V 0
aload 2
athrow
L4:
aload 1
invokeinterface android/database/Cursor/close()V 0
L3:
aload 2
areturn
.limit locals 3
.limit stack 8
.end method

.method public final getBlackList(J)Ljava/util/ArrayList;
.signature "(J)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/BlackListPerson;>;"
.catch all from L0 to L1 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_blacklist"
aconst_null
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "myoapid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 3
aload 3
ifnull L3
aload 3
invokeinterface android/database/Cursor/getCount()I 0
ifle L3
L0:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
aload 4
aload 0
aload 3
invokespecial com/nd/android/u/contact/dao/impl/OapBlackListDaoImpl/getBlackPersonFromCursor(Landroid/database/Cursor;)Lcom/product/android/commonInterface/contact/BlackListPerson;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L1:
goto L0
L2:
astore 4
aload 3
invokeinterface android/database/Cursor/close()V 0
aload 4
athrow
L4:
aload 3
invokeinterface android/database/Cursor/close()V 0
L3:
aload 4
areturn
.limit locals 5
.limit stack 8
.end method

.method public final getBlackList(JII)Ljava/util/ArrayList;
.signature "(JII)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/BlackListPerson;>;"
.catch all from L0 to L1 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
astore 5
iload 3
ifne L3
iload 4
ifne L3
aload 5
ldc "uu_blacklist"
aconst_null
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "myoapid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 5
L4:
aload 5
ifnull L5
aload 5
invokeinterface android/database/Cursor/getCount()I 0
ifle L5
L0:
aload 5
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L6
aload 6
aload 0
aload 5
invokespecial com/nd/android/u/contact/dao/impl/OapBlackListDaoImpl/getBlackPersonFromCursor(Landroid/database/Cursor;)Lcom/product/android/commonInterface/contact/BlackListPerson;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L1:
goto L0
L2:
astore 6
aload 5
invokeinterface android/database/Cursor/close()V 0
aload 6
athrow
L3:
aload 5
ldc "uu_blacklist"
aconst_null
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "myoapid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
aconst_null
aconst_null
aconst_null
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "limit "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " offset "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/database/sqlite/SQLiteDatabase/query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 5
goto L4
L6:
aload 5
invokeinterface android/database/Cursor/close()V 0
L5:
aload 6
areturn
.limit locals 7
.limit stack 10
.end method

.method public final setBlackList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/BlackListPerson;>;)V"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/BlackListPerson
astore 2
aload 0
aload 2
invokevirtual com/nd/android/u/contact/dao/impl/OapBlackListDaoImpl/setBlackListPerson(Lcom/product/android/commonInterface/contact/BlackListPerson;)V
aload 2
getfield com/product/android/commonInterface/contact/BlackListPerson/uid J
iconst_0
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/weiboDelLocalFollow(JI)V
L3:
goto L1
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L6:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L4:
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L5:
goto L6
.limit locals 3
.limit stack 3
.end method

.method public final setBlackListPerson(Lcom/product/android/commonInterface/contact/BlackListPerson;)V
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "myoapid"
aload 1
getfield com/product/android/commonInterface/contact/BlackListPerson/myoapid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "uid"
aload 1
getfield com/product/android/commonInterface/contact/BlackListPerson/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_blacklist"
aconst_null
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
return
.limit locals 3
.limit stack 4
.end method
