.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dao/impl/MySeniorDaoImpl
.super java/lang/Object
.implements com/nd/android/u/contact/dao/MySeniorDao

.field 'db' Landroid/database/sqlite/SQLiteDatabase;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
putfield com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
return
.limit locals 1
.limit stack 3
.end method

.method public clearDatas(Ljava/lang/String;J)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " and unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
aload 0
getfield com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
astore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "fid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
astore 6
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
bipush 55
if_icmpne L0
ldc ""
astore 4
L0:
aload 5
aload 1
aload 6
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
.limit locals 7
.limit stack 4
.end method

.method public getMySeniorCount(J)I
iconst_0
istore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " and unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "select * from uu_senior where fid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
astore 5
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
bipush 55
if_icmpne L0
ldc ""
astore 4
L0:
aload 5
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
aload 0
getfield com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
aload 4
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 4
aload 4
ifnull L1
aload 4
invokeinterface android/database/Cursor/getCount()I 0
istore 3
L1:
aload 4
ifnull L2
aload 4
invokeinterface android/database/Cursor/close()V 0
L2:
iload 3
ireturn
.limit locals 6
.limit stack 3
.end method

.method public insertFindSenior(Lcom/nd/android/u/contact/dataStructure/SeniorInfo;)V
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 2
aload 2
ldc "fid"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 2
ldc "tid"
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
bipush 55
if_icmpeq L0
aload 2
ldc "unitid"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
L0:
aload 2
ldc "gender"
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/gender I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 2
ldc "name"
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/nickname Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "majorname"
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/majorname Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "joindate"
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/joindate Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "nativeplace"
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/nativePlace Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "highschool"
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/highschool Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_find_senior"
aconst_null
aload 2
invokevirtual android/database/sqlite/SQLiteDatabase/insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
return
.limit locals 3
.limit stack 4
.end method

.method public insertFindSeniorList(ILcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aload 0
getfield com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
iload 1
iconst_1
if_icmpne L7
L0:
aload 0
ldc "uu_find_senior"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/clearDatas(Ljava/lang/String;J)V
L1:
goto L7
L3:
iload 1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/size()I
if_icmpge L5
aload 0
aload 2
iload 1
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/SeniorInfo
invokevirtual com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/insertFindSenior(Lcom/nd/android/u/contact/dataStructure/SeniorInfo;)V
L4:
iload 1
iconst_1
iadd
istore 1
goto L3
L5:
aload 0
getfield com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L6:
aload 0
getfield com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L2:
astore 2
aload 0
getfield com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 2
athrow
L7:
iconst_0
istore 1
goto L3
.limit locals 3
.limit stack 4
.end method

.method public insertMySenior(Lcom/nd/android/u/contact/dataStructure/SeniorInfo;)V
new android/content/ContentValues
dup
invokespecial android/content/ContentValues/<init>()V
astore 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 2
aload 4
ldc "fid"
lload 2
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 4
ldc "tid"
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Long;)V
aload 4
ldc "name"
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/nickname Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
aload 4
ldc "gender"
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/gender I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
aload 4
ldc "signture"
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/signture Ljava/lang/String;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
bipush 55
if_icmpeq L0
aload 4
ldc "unitid"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/content/ContentValues/put(Ljava/lang/String;Ljava/lang/Integer;)V
L0:
aload 0
lload 2
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/uid J
invokevirtual com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/isExist(JJ)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_senior"
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "fid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "tid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/uid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
pop
return
L1:
aload 0
getfield com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
ldc "uu_senior"
aconst_null
aload 4
invokevirtual android/database/sqlite/SQLiteDatabase/insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
pop2
return
.limit locals 5
.limit stack 6
.end method

.method public insertMySeniorList(ILcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aload 0
getfield com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
iload 1
iconst_1
if_icmpne L7
L0:
aload 0
ldc "uu_senior"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/clearDatas(Ljava/lang/String;J)V
L1:
goto L7
L3:
iload 1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/size()I
if_icmpge L5
aload 0
aload 2
iload 1
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/SeniorInfo
invokevirtual com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/insertMySenior(Lcom/nd/android/u/contact/dataStructure/SeniorInfo;)V
L4:
iload 1
iconst_1
iadd
istore 1
goto L3
L5:
aload 0
getfield com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L6:
aload 0
getfield com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L2:
astore 2
aload 0
getfield com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
aload 2
athrow
L7:
iconst_0
istore 1
goto L3
.limit locals 3
.limit stack 4
.end method

.method public isExist(JJ)Z
iconst_0
istore 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " and unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "select * from uu_senior where fid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "tid"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
astore 8
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
bipush 55
if_icmpne L0
ldc ""
astore 7
L0:
aload 8
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
aload 0
getfield com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
aload 7
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 7
iload 6
istore 5
aload 7
ifnull L1
iload 6
istore 5
aload 7
invokeinterface android/database/Cursor/getCount()I 0
ifle L1
iconst_1
istore 5
L1:
aload 7
ifnull L2
aload 7
invokeinterface android/database/Cursor/close()V 0
L2:
iload 5
ireturn
.limit locals 9
.limit stack 3
.end method

.method public queryFindSeniorList(J)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " and unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "select * from uu_find_senior where fid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
astore 4
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
bipush 55
if_icmpne L0
ldc ""
astore 3
L0:
aload 4
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
aload 3
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 3
new com/nd/android/u/contact/dataStructure/SeniorInfoListResult
dup
invokespecial com/nd/android/u/contact/dataStructure/SeniorInfoListResult/<init>()V
astore 4
aload 3
ifnull L1
aload 3
invokeinterface android/database/Cursor/getCount()I 0
ifle L1
L2:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L1
aload 4
aload 3
invokestatic com/nd/android/u/contact/db/table/FindSeniorTable/parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/add(Ljava/lang/Object;)Z
pop
goto L2
L1:
aload 3
ifnull L3
aload 3
invokeinterface android/database/Cursor/close()V 0
L3:
aload 4
areturn
.limit locals 5
.limit stack 3
.end method

.method public queryMySeniorList(J)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " and unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "select * from uu_senior where fid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
astore 4
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
bipush 55
if_icmpne L0
ldc ""
astore 3
L0:
aload 4
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/u/contact/dao/impl/MySeniorDaoImpl/db Landroid/database/sqlite/SQLiteDatabase;
aload 3
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 3
new com/nd/android/u/contact/dataStructure/SeniorInfoListResult
dup
invokespecial com/nd/android/u/contact/dataStructure/SeniorInfoListResult/<init>()V
astore 4
aload 3
ifnull L1
aload 3
invokeinterface android/database/Cursor/getCount()I 0
ifle L1
L2:
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L1
aload 4
aload 3
invokestatic com/nd/android/u/contact/db/table/MySeniorTable/parseCursor(Landroid/database/Cursor;)Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/add(Ljava/lang/Object;)Z
pop
goto L2
L1:
aload 3
ifnull L3
aload 3
invokeinterface android/database/Cursor/close()V 0
L3:
aload 4
areturn
.limit locals 5
.limit stack 3
.end method
