.bytecode 50.0
.class public synchronized com/nd/rj/common/login/atomoperation/OperUserInfo
.super java/lang/Object

.field private static 'mAtom' Lcom/nd/rj/common/login/atomoperation/OperUserInfo;

.field private 'mDBHelper' Lcom/nd/rj/common/util/db/IDataBaseRef;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/getInstance()Lcom/nd/rj/common/util/db/IDataBaseRef;
putfield com/nd/rj/common/login/atomoperation/OperUserInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
return
.limit locals 1
.limit stack 2
.end method

.method public static getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
getstatic com/nd/rj/common/login/atomoperation/OperUserInfo/mAtom Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
ifnonnull L0
new com/nd/rj/common/login/atomoperation/OperUserInfo
dup
invokespecial com/nd/rj/common/login/atomoperation/OperUserInfo/<init>()V
putstatic com/nd/rj/common/login/atomoperation/OperUserInfo/mAtom Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
L0:
getstatic com/nd/rj/common/login/atomoperation/OperUserInfo/mAtom Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
areturn
.limit locals 0
.limit stack 2
.end method

.method public static getLastLoginDT(Landroid/database/sqlite/SQLiteDatabase;)I
.catch all from L0 to L1 using L2
aload 0
ldc "SELECT JULIANDAY(IFNULL(MAX(LAST_LOGIN_DT), 0)) FROM USERINFO;"
invokevirtual java/lang/String/toString()Ljava/lang/String;
aconst_null
invokevirtual android/database/sqlite/SQLiteDatabase/rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
astore 0
aload 0
ifnull L3
L0:
aload 0
invokeinterface android/database/Cursor/getCount()I 0
ifle L3
aload 0
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 0
iconst_0
invokeinterface android/database/Cursor/getInt(I)I 1
istore 1
L1:
aload 0
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/closeCursor(Landroid/database/Cursor;)V
iload 1
ireturn
L3:
aload 0
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/closeCursor(Landroid/database/Cursor;)V
iconst_0
ireturn
L2:
astore 2
aload 0
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/closeCursor(Landroid/database/Cursor;)V
aload 2
athrow
.limit locals 3
.limit stack 3
.end method

.method public DeleteUserInfo(J)I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
ldc "delete from USERINFO where UAP_UID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/rj/common/login/atomoperation/OperUserInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/execSql(Ljava/lang/String;)I 1
ireturn
.limit locals 4
.limit stack 3
.end method

.method public DeleteUsers(Ljava/util/List;)I
.signature "(Ljava/util/List<Ljava/lang/Long;>;)I"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
iconst_0
ireturn
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
ldc "delete from USERINFO where UAP_UID IN ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L2:
iload 2
iload 3
if_icmpge L3
aload 4
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
iload 2
iload 3
iconst_1
isub
if_icmpne L4
aload 4
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L5:
iload 2
iconst_1
iadd
istore 2
goto L2
L4:
aload 4
ldc ", "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L5
L3:
aload 0
getfield com/nd/rj/common/login/atomoperation/OperUserInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/execSql(Ljava/lang/String;)I 1
ireturn
.limit locals 5
.limit stack 3
.end method

.method public GetJobNumberUsers()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/business/bean/UserInfo;>;"
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
ldc "SELECT * FROM USERINFO WHERE USER_NAME LIKE '%@jmu';"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/rj/common/login/atomoperation/OperUserInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;)Landroid/database/Cursor; 1
astore 3
aload 3
ifnull L4
L0:
aload 3
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L5
L1:
new com/product/android/business/bean/UserInfo
dup
invokespecial com/product/android/business/bean/UserInfo/<init>()V
astore 4
aload 4
aload 3
invokevirtual com/product/android/business/bean/UserInfo/LoadFormCursor(Landroid/database/Cursor;)Z
pop
aload 2
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
invokeinterface android/database/Cursor/moveToNext()Z 0
istore 1
L3:
iload 1
ifne L1
L5:
aload 3
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/closeCursor(Landroid/database/Cursor;)V
L4:
aload 2
areturn
L2:
astore 2
aload 3
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/closeCursor(Landroid/database/Cursor;)V
aload 2
athrow
.limit locals 5
.limit stack 2
.end method

.method public GetLastUserInfo()Lcom/product/android/business/bean/UserInfo;
aload 0
lconst_0
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/GetUserInfo(J)Lcom/product/android/business/bean/UserInfo;
areturn
.limit locals 1
.limit stack 3
.end method

.method public GetUserByUserName(Ljava/lang/String;)Lcom/product/android/business/bean/UserInfo;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L4
aconst_null
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
ldc "SELECT * FROM USERINFO"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " WHERE USER_NAME='"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "' "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/rj/common/login/atomoperation/OperUserInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;)Landroid/database/Cursor; 1
astore 3
aload 2
astore 1
aload 3
ifnull L3
aload 2
astore 1
L0:
aload 3
invokeinterface android/database/Cursor/getCount()I 0
ifle L3
new com/product/android/business/bean/UserInfo
dup
invokespecial com/product/android/business/bean/UserInfo/<init>()V
astore 1
L1:
aload 3
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 1
aload 3
invokevirtual com/product/android/business/bean/UserInfo/LoadFormCursor(Landroid/database/Cursor;)Z
pop
L3:
aload 3
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/closeCursor(Landroid/database/Cursor;)V
aload 1
areturn
L2:
astore 1
L5:
aload 3
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/closeCursor(Landroid/database/Cursor;)V
aload 1
athrow
L4:
astore 1
goto L5
.limit locals 4
.limit stack 3
.end method

.method public GetUserInfo(J)Lcom/product/android/business/bean/UserInfo;
.catch all from L0 to L1 using L2
new com/product/android/business/bean/UserInfo
dup
invokespecial com/product/android/business/bean/UserInfo/<init>()V
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
ldc "SELECT * FROM USERINFO"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
lload 1
lconst_0
lcmp
ifle L3
aload 4
ldc " WHERE USER_ID=%d "
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L4:
aload 0
getfield com/nd/rj/common/login/atomoperation/OperUserInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;)Landroid/database/Cursor; 1
astore 4
aload 4
ifnull L1
L0:
aload 4
invokeinterface android/database/Cursor/getCount()I 0
ifle L1
aload 4
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 3
aload 4
invokevirtual com/product/android/business/bean/UserInfo/LoadFormCursor(Landroid/database/Cursor;)Z
pop
L1:
aload 4
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/closeCursor(Landroid/database/Cursor;)V
aload 3
areturn
L3:
aload 4
ldc " order by LAST_LOGIN_DT desc limit 1;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L4
L2:
astore 3
aload 4
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/closeCursor(Landroid/database/Cursor;)V
aload 3
athrow
.limit locals 5
.limit stack 7
.end method

.method public SetUserInfo(Lcom/product/android/business/bean/UserInfo;)I
getstatic com/nd/rj/common/R$string/nd_set_user_info_error I
istore 2
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getUserPass()Ljava/lang/String;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
ldc "INSERT OR REPLACE INTO USERINFO([UAP_UID],[USER_NAME],[USER_NICK_NAME],[USER_PASS],"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getLoginType()I 0
iconst_1
if_icmpeq L0
aload 4
ldc "[USER_PASS_MD5],[USER_PASS_MIXED_MD5],[BLOWFISH],[TICKET],[ISADMIN],[OAP_UNIT_ID],[OAP_UID],[ISSAVEACCOUNT],[ISAUTOLOGIN],[LAST_LOGIN_DT],[VAR_EXT],[IDENTITY],[ISPHONE])"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L1:
aload 4
ldc " VALUES("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getUapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "',"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getUserNickName()Ljava/lang/String;
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "',"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/quotedString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "',"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getUserPassMd5()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "',"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getUserPassMixedMd5()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "',"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getBlowfish()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "',"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getTicket()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "',"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getIsAdmin()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "',"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getOapUnitId()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%b"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getIsSaveAccount()Z
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "',"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%b"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getIsAutoLogin()Z
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "',"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getLoginType()I 0
iconst_1
if_icmpeq L2
aload 4
aload 0
getfield com/nd/rj/common/login/atomoperation/OperUserInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/getDb()Landroid/database/sqlite/SQLiteDatabase; 0
invokestatic com/nd/rj/common/login/LoginPro/getNextLoginDT(Landroid/database/sqlite/SQLiteDatabase;)I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L2:
aload 4
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getmVar_ext()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "',"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getIdentity()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getIs_phone()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/rj/common/login/atomoperation/OperUserInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/execSql(Ljava/lang/String;)I 1
ireturn
L0:
aload 4
ldc "[USER_PASS_MD5],[USER_PASS_MIXED_MD5],[BLOWFISH],[TICKET],[ISADMIN],[OAP_UNIT_ID],[OAP_UID],[ISSAVEACCOUNT],[ISAUTOLOGIN],[VAR_EXT],[IDENTITY],[ISPHONE])"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L1
.limit locals 5
.limit stack 6
.end method

.method public UpdateLastUserInfo(JJ)V
.catch all from L0 to L1 using L2
new com/product/android/business/bean/UserInfo
dup
invokespecial com/product/android/business/bean/UserInfo/<init>()V
astore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 6
aload 6
ldc "SELECT * FROM USERINFO"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 6
ldc " order by LAST_LOGIN_DT desc limit 1;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/rj/common/login/atomoperation/OperUserInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;)Landroid/database/Cursor; 1
astore 6
aload 6
ifnull L1
L0:
aload 6
invokeinterface android/database/Cursor/getCount()I 0
ifle L1
aload 6
invokeinterface android/database/Cursor/moveToFirst()Z 0
pop
aload 5
aload 6
invokevirtual com/product/android/business/bean/UserInfo/LoadFormCursor(Landroid/database/Cursor;)Z
pop
L1:
aload 6
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/closeCursor(Landroid/database/Cursor;)V
aload 5
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
lload 3
lcmp
ifne L3
aload 5
invokevirtual com/product/android/business/bean/UserInfo/getOapUnitId()I
i2l
lload 1
lcmp
ifeq L4
L3:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " update USERINFO set OAP_UNIT_ID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ", OAP_UID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " where uap_uid = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/product/android/business/bean/UserInfo/getUapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
aload 0
getfield com/nd/rj/common/login/atomoperation/OperUserInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 5
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/execSql(Ljava/lang/String;)I 1
ifeq L4
ldc "NdCommonLibs"
ldc "UpdateLastUserInfo error"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
return
L2:
astore 5
aload 6
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/closeCursor(Landroid/database/Cursor;)V
aload 5
athrow
.limit locals 7
.limit stack 4
.end method

.method public clearAllPasswordFlag()I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 1
ldc "update USERINFO set ISSAVEACCOUNT = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%b"
iconst_1
anewarray java/lang/Object
dup
iconst_0
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "', ISAUTOLOGIN = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%b"
iconst_1
anewarray java/lang/Object
dup
iconst_0
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "', USER_PASS = '', USER_PASS_MD5 = ''"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/rj/common/login/atomoperation/OperUserInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/execSql(Ljava/lang/String;)I 1
ireturn
.limit locals 2
.limit stack 6
.end method

.method public clearUserPassWord(J)I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
ldc "update USERINFO set ISSAVEACCOUNT = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%b"
iconst_1
anewarray java/lang/Object
dup
iconst_0
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "', "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
ldc " USER_PASS = '' where UAP_UID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/rj/common/login/atomoperation/OperUserInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/execSql(Ljava/lang/String;)I 1
ireturn
.limit locals 4
.limit stack 6
.end method

.method public clearUserSaveCount(J)I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
ldc "update USERINFO set ISSAVEACCOUNT = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "%b"
iconst_1
anewarray java/lang/Object
dup
iconst_0
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " where UAP_UID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/rj/common/login/atomoperation/OperUserInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/execSql(Ljava/lang/String;)I 1
ireturn
.limit locals 4
.limit stack 6
.end method

.method public deleteAllUsers()I
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 1
ldc "delete from USERINFO"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/rj/common/login/atomoperation/OperUserInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/execSql(Ljava/lang/String;)I 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public setExtInfo(JLjava/lang/String;)I
getstatic com/nd/rj/common/R$string/nd_set_user_info_error I
istore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " update USERINFO set VAR_EXT = '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "'  where uap_uid = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/rj/common/login/atomoperation/OperUserInfo/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/execSql(Ljava/lang/String;)I 1
ireturn
.limit locals 6
.limit stack 4
.end method
