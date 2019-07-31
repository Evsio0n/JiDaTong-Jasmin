.bytecode 50.0
.class public synchronized com/nd/rj/common/login/LoginPro
.super java/lang/Object

.field private static 'mLoginPro' Lcom/nd/rj/common/login/LoginPro;

.field private static final 'tag' Ljava/lang/String; = "debug"

.field private 'ctx' Landroid/content/Context;

.field private 'mDBHelper' Lcom/nd/rj/common/util/db/IDataBaseRef;

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/getInstance()Lcom/nd/rj/common/util/db/IDataBaseRef;
putfield com/nd/rj/common/login/LoginPro/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 0
getfield com/nd/rj/common/login/LoginPro/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
aconst_null
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/open(Landroid/content/Context;Ljava/lang/String;)I 2
pop
aload 0
aload 1
putfield com/nd/rj/common/login/LoginPro/ctx Landroid/content/Context;
return
.limit locals 2
.limit stack 3
.end method

.method public static clearAllPasswordFlag()V
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/clearAllPasswordFlag()V
return
.limit locals 0
.limit stack 0
.end method

.method private doAfterRegist(ILcom/product/android/business/bean/UserInfo;Ljava/lang/StringBuilder;Z)I
aload 2
iconst_1
invokevirtual com/product/android/business/bean/UserInfo/setIsSaveAccount(Z)V
iload 1
iconst_1
if_icmpne L0
iload 4
ifeq L1
iconst_0
ireturn
L1:
aload 3
iconst_0
aload 3
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 0
aload 2
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getOapUnitId()I
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
aconst_null
aload 3
invokespecial com/nd/rj/common/login/LoginPro/loginOapByTicket(Lcom/product/android/business/bean/UserInfo;IJLcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
ireturn
L0:
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
aload 2
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/SetUserInfo(Lcom/product/android/business/bean/UserInfo;)I
ireturn
.limit locals 5
.limit stack 7
.end method

.method public static getAllUserList(Landroid/content/Context;)Ljava/util/List;
.signature "(Landroid/content/Context;)Ljava/util/List<Ljava/lang/Object;>;"
.catch java/lang/NumberFormatException from L0 to L1 using L2
.catch java/lang/NumberFormatException from L3 to L4 using L5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 9
aload 0
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
invokevirtual com/nd/rj/common/login/LoginPro/get91AccountUserList()Ljava/util/ArrayList;
astore 0
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/getUserList()Ljava/util/ArrayList;
astore 10
aload 0
invokevirtual java/util/ArrayList/size()I
istore 7
aload 10
invokevirtual java/util/ArrayList/size()I
istore 8
iload 7
iflt L6
iconst_1
istore 4
L7:
iload 8
iflt L8
iconst_1
istore 3
L9:
iconst_0
istore 2
iconst_0
istore 1
L10:
iload 4
ifeq L11
iload 3
ifne L12
L11:
iload 4
ifeq L13
iload 2
iconst_1
iadd
istore 5
aload 9
aload 10
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 5
iload 8
if_icmplt L14
iconst_1
istore 3
L15:
iload 5
istore 2
goto L10
L6:
iconst_0
istore 4
goto L7
L8:
iconst_0
istore 3
goto L9
L14:
iconst_0
istore 3
goto L15
L13:
iload 3
ifeq L16
iload 1
iconst_1
iadd
istore 5
aload 9
aload 0
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 5
iload 7
if_icmplt L17
iconst_1
istore 4
L18:
iload 5
istore 1
goto L10
L17:
iconst_0
istore 4
goto L18
L16:
aload 0
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/business/bean/UserInfo
astore 11
L0:
aload 11
invokevirtual com/product/android/business/bean/UserInfo/getLastLoginDt()Ljava/lang/String;
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 5
L1:
aload 10
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/business/login/JobNumberUserInfo
astore 11
L3:
aload 11
invokevirtual com/product/android/business/login/JobNumberUserInfo/getLast_login_dt()Ljava/lang/String;
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 6
L4:
iload 5
iload 6
if_icmple L19
iload 1
iconst_1
iadd
istore 5
aload 9
aload 0
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 5
iload 7
if_icmplt L20
iconst_1
istore 1
L21:
iload 1
istore 4
iload 5
istore 1
L22:
goto L10
L2:
astore 11
iconst_0
istore 5
goto L1
L5:
astore 11
iconst_0
istore 6
goto L4
L20:
iconst_0
istore 1
goto L21
L19:
iload 2
iconst_1
iadd
istore 5
aload 9
aload 10
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 5
iload 8
if_icmplt L23
iconst_1
istore 2
L24:
iload 2
istore 3
iload 5
istore 2
goto L22
L23:
iconst_0
istore 2
goto L24
L12:
aload 9
areturn
.limit locals 12
.limit stack 3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
getstatic com/nd/rj/common/login/LoginPro/mLoginPro Lcom/nd/rj/common/login/LoginPro;
ifnonnull L0
new com/nd/rj/common/login/LoginPro
dup
aload 0
invokespecial com/nd/rj/common/login/LoginPro/<init>(Landroid/content/Context;)V
putstatic com/nd/rj/common/login/LoginPro/mLoginPro Lcom/nd/rj/common/login/LoginPro;
L0:
getstatic com/nd/rj/common/login/LoginPro/mLoginPro Lcom/nd/rj/common/login/LoginPro;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getLastUserInfo(Landroid/content/Context;)Ljava/lang/Object;
.catch java/lang/NumberFormatException from L0 to L1 using L2
.catch java/lang/NumberFormatException from L1 to L3 using L4
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/GetLastUserInfo()Lcom/product/android/business/bean/UserInfo;
astore 0
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/GetLastUserInfo()Lcom/product/android/business/login/JobNumberUserInfo;
astore 3
aload 0
ifnull L5
aload 0
invokevirtual com/product/android/business/bean/UserInfo/getTicket()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
L5:
iconst_0
istore 1
L7:
aload 3
ifnull L8
aload 3
invokevirtual com/product/android/business/login/JobNumberUserInfo/getTicket()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L9
L8:
iconst_0
istore 2
L10:
iload 1
ifeq L11
iload 2
ifeq L12
L0:
aload 0
invokevirtual com/product/android/business/bean/UserInfo/getLastLoginDt()Ljava/lang/String;
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 1
L1:
aload 3
invokevirtual com/product/android/business/login/JobNumberUserInfo/getLast_login_dt()Ljava/lang/String;
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
L3:
iload 1
iload 2
if_icmple L13
L12:
aload 0
areturn
L6:
iconst_1
istore 1
goto L7
L9:
iconst_1
istore 2
goto L10
L2:
astore 4
iconst_0
istore 1
goto L1
L4:
astore 4
iconst_0
istore 2
goto L3
L13:
aload 3
areturn
L11:
iload 2
ifeq L14
aload 3
areturn
L14:
aconst_null
areturn
.limit locals 5
.limit stack 2
.end method

.method public static getNextLoginDT(Landroid/database/sqlite/SQLiteDatabase;)I
.catch all from L0 to L1 using L2
aload 0
ldc "SELECT MAX((SELECT JULIANDAY(IFNULL(MAX(LAST_LOGIN_DT), 0)) FROM USERINFO), (SELECT JULIANDAY(IFNULL(MAX(LAST_LOGIN_DT), 0)) FROM uu_worker_userInfo)) + 1;"
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

.method private getUserNickName(JLjava/lang/String;)Ljava/lang/String;
.catch org/json/JSONException from L0 to L1 using L2
aconst_null
astore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 0
getfield com/nd/rj/common/login/LoginPro/ctx Landroid/content/Context;
invokestatic com/nd/rj/common/login/communication/uapCom/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/communication/uapCom;
lload 1
aload 3
aload 5
invokevirtual com/nd/rj/common/login/communication/uapCom/getUserInfo(JLjava/lang/String;Ljava/lang/StringBuilder;)I
ifne L1
L0:
new org/json/JSONObject
dup
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "nickname"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 4
L1:
aload 4
areturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 6
.limit stack 5
.end method

.method public static hasLoginBefore()Z
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/GetLastUserInfo()Lcom/product/android/business/bean/UserInfo;
astore 0
aload 0
ifnull L0
aload 0
invokevirtual com/product/android/business/bean/UserInfo/getTicket()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
L1:
iconst_1
ireturn
L0:
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/GetLastUserInfo()Lcom/product/android/business/login/JobNumberUserInfo;
astore 0
aload 0
ifnull L2
aload 0
invokevirtual com/product/android/business/login/JobNumberUserInfo/getTicket()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
L2:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static jmuLoginInfoConvert()V
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/GetJobNumberUsers()Ljava/util/List;
astore 1
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L0
return
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/business/bean/UserInfo
astore 2
new com/product/android/business/login/JobNumberUserInfo
dup
invokespecial com/product/android/business/login/JobNumberUserInfo/<init>()V
astore 3
aload 3
aload 2
invokevirtual com/product/android/business/login/JobNumberUserInfo/converToWorkerUserInfo(Lcom/product/android/business/bean/UserInfo;)V
aload 3
iconst_m1
invokevirtual com/product/android/business/login/JobNumberUserInfo/setIdentity(I)V
aload 3
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/SetUserInfo(Lcom/product/android/business/login/JobNumberUserInfo;)I
iconst_m1
if_icmpeq L1
aload 0
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getUapUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L2:
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
aload 0
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/DeleteUsers(Ljava/util/List;)I
pop
return
.limit locals 4
.limit stack 3
.end method

.method private loginOapByCookie(Ljava/lang/String;Lcom/product/android/business/bean/UserInfo;Lcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
.catch org/json/JSONException from L3 to L4 using L2
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
astore 6
aload 0
getfield com/nd/rj/common/login/LoginPro/ctx Landroid/content/Context;
invokestatic com/nd/rj/common/login/communication/OapCom/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/communication/OapCom;
aload 1
aload 6
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getOapUnitId()I
i2l
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
aload 3
aload 4
invokevirtual com/nd/rj/common/login/communication/OapCom/userLoginCookie(Ljava/lang/String;Ljava/lang/String;JJLcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
istore 5
iload 5
ifne L5
L0:
new org/json/JSONObject
dup
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 2
aload 1
ldc "uap_sid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setSessionId(Ljava/lang/String;)V
aload 2
aload 1
ldc "uap_uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
invokevirtual com/product/android/business/bean/UserInfo/setUapUid(J)V
aload 2
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
invokevirtual com/product/android/business/bean/UserInfo/setOapUid(J)V
aload 2
aload 1
ldc "unitid"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/product/android/business/bean/UserInfo/setOapUnitId(I)V
aload 2
aload 1
ldc "isphone"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/product/android/business/bean/UserInfo/setIs_phone(I)V
aload 0
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getUapUid()J
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokespecial com/nd/rj/common/login/LoginPro/getUserNickName(JLjava/lang/String;)Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 2
aload 3
invokevirtual com/product/android/business/bean/UserInfo/setUserNickName(Ljava/lang/String;)V
L1:
aload 2
aload 1
ldc "ticket"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setTicket(Ljava/lang/String;)V
aload 2
aload 6
invokevirtual com/product/android/business/bean/UserInfo/setBlowfish(Ljava/lang/String;)V
aload 1
ldc "isorgadmin"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L3
aload 2
aload 1
ldc "isorgadmin"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/product/android/business/bean/UserInfo/setIsOrgAdmin(I)V
L3:
aload 2
aload 1
ldc "type"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/product/android/business/bean/UserInfo/setIdentity(I)V
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
aload 2
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/SetUserInfo(Lcom/product/android/business/bean/UserInfo;)I
istore 5
L4:
iload 5
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/nd/rj/common/R$string/nd_json_error I
ireturn
L5:
aload 4
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
pop
iload 5
ireturn
.limit locals 7
.limit stack 9
.end method

.method private loginOapByTicket(Lcom/product/android/business/bean/UserInfo;IJLcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
aload 6
iconst_0
aload 6
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 1
ifnonnull L3
getstatic com/nd/rj/common/R$string/nd_uap_login_error I
istore 2
L4:
iload 2
ireturn
L3:
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getTicket()Ljava/lang/String;
astore 8
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getBlowfish()Ljava/lang/String;
astore 9
aload 9
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 8
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
L5:
getstatic com/nd/rj/common/R$string/nd_uap_login_error I
ireturn
L6:
aload 0
getfield com/nd/rj/common/login/LoginPro/ctx Landroid/content/Context;
invokestatic com/nd/rj/common/login/communication/OapCom/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/communication/OapCom;
aload 8
aload 9
iload 2
i2l
lload 3
aload 5
aload 6
invokevirtual com/nd/rj/common/login/communication/OapCom/userLoginTicket(Ljava/lang/String;Ljava/lang/String;JJLcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
istore 7
iload 7
istore 2
iload 7
ifne L4
L0:
new org/json/JSONObject
dup
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 5
aload 1
aload 5
ldc "uap_sid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setSessionId(Ljava/lang/String;)V
aload 1
aload 5
ldc "uap_uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
invokevirtual com/product/android/business/bean/UserInfo/setUapUid(J)V
aload 1
aload 5
ldc "uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
invokevirtual com/product/android/business/bean/UserInfo/setOapUid(J)V
aload 1
aload 5
ldc "unitid"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/product/android/business/bean/UserInfo/setOapUnitId(I)V
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
aload 1
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/SetUserInfo(Lcom/product/android/business/bean/UserInfo;)I
istore 2
L1:
iload 2
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/nd/rj/common/R$string/nd_json_error I
ireturn
.limit locals 10
.limit stack 9
.end method

.method private loginUapByCookie(Ljava/lang/String;Lcom/product/android/business/bean/UserInfo;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
aload 3
iconst_0
aload 3
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
astore 8
aload 0
getfield com/nd/rj/common/login/LoginPro/ctx Landroid/content/Context;
invokestatic com/nd/rj/common/login/communication/uapCom/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/communication/uapCom;
aload 1
aload 8
aload 2
aload 3
invokevirtual com/nd/rj/common/login/communication/uapCom/getTicketByCookie(Ljava/lang/String;Ljava/lang/String;Lcom/product/android/business/bean/UserInfo;Ljava/lang/StringBuilder;)I
istore 5
iload 5
istore 4
iload 5
ifne L3
iload 5
istore 4
aload 3
invokevirtual java/lang/StringBuilder/length()I
ifle L3
L0:
new org/json/JSONObject
dup
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
lstore 6
aload 3
ldc "sid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 3
ldc "ticket"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 2
lload 6
invokevirtual com/product/android/business/bean/UserInfo/setUapUid(J)V
aload 2
aload 1
invokevirtual com/product/android/business/bean/UserInfo/setSessionId(Ljava/lang/String;)V
aload 2
aload 8
invokevirtual com/product/android/business/bean/UserInfo/setBlowfish(Ljava/lang/String;)V
aload 2
aload 3
invokevirtual com/product/android/business/bean/UserInfo/setTicket(Ljava/lang/String;)V
aload 0
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getUapUid()J
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokespecial com/nd/rj/common/login/LoginPro/getUserNickName(JLjava/lang/String;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 2
aload 1
invokevirtual com/product/android/business/bean/UserInfo/setUserNickName(Ljava/lang/String;)V
L1:
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
aload 2
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/SetUserInfo(Lcom/product/android/business/bean/UserInfo;)I
istore 4
L3:
iload 4
ireturn
L2:
astore 1
getstatic com/nd/rj/common/R$string/nd_json_error I
istore 4
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iload 4
ireturn
.limit locals 9
.limit stack 5
.end method

.method private loginUapByTicket(Lcom/product/android/business/bean/UserInfo;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
aload 2
iconst_0
aload 2
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getTicket()Ljava/lang/String;
astore 7
aload 1
invokevirtual com/product/android/business/bean/UserInfo/getBlowfish()Ljava/lang/String;
astore 8
aload 8
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 7
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
L3:
getstatic com/nd/rj/common/R$string/nd_login_ticket_403 I
istore 3
L5:
iload 3
ireturn
L4:
aload 0
getfield com/nd/rj/common/login/LoginPro/ctx Landroid/content/Context;
invokestatic com/nd/rj/common/login/communication/uapCom/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/communication/uapCom;
aload 7
aload 8
aload 2
invokevirtual com/nd/rj/common/login/communication/uapCom/userLoginTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 4
iload 4
istore 3
iload 4
ifne L5
iload 4
istore 3
aload 2
invokevirtual java/lang/StringBuilder/length()I
ifle L5
L0:
new org/json/JSONObject
dup
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 2
aload 2
ldc "uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
lstore 5
aload 2
ldc "sid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 1
lload 5
invokevirtual com/product/android/business/bean/UserInfo/setUapUid(J)V
aload 1
aload 2
invokevirtual com/product/android/business/bean/UserInfo/setSessionId(Ljava/lang/String;)V
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
aload 1
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/SetUserInfo(Lcom/product/android/business/bean/UserInfo;)I
istore 3
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "userLoginTicket:uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 5
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
iload 3
ireturn
L2:
astore 1
getstatic com/nd/rj/common/R$string/nd_json_error I
istore 3
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iload 3
ireturn
.limit locals 9
.limit stack 4
.end method

.method public static saveUserInfo(Ljava/lang/Object;)V
aload 0
instanceof com/product/android/business/bean/UserInfo
ifeq L0
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
aload 0
checkcast com/product/android/business/bean/UserInfo
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/SetUserInfo(Lcom/product/android/business/bean/UserInfo;)I
pop
L1:
return
L0:
aload 0
instanceof com/product/android/business/login/JobNumberUserInfo
ifeq L1
aload 0
checkcast com/product/android/business/login/JobNumberUserInfo
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/SetUserInfo(Lcom/product/android/business/login/JobNumberUserInfo;)I
pop
return
.limit locals 1
.limit stack 2
.end method

.method public checkSessionId(Landroid/content/Context;Ljava/lang/String;)J
.catch java/lang/Exception from L0 to L1 using L2
lconst_0
lstore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 7
lload 5
lstore 3
aload 1
invokestatic com/nd/rj/common/login/communication/uapCom/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/communication/uapCom;
aload 2
aload 7
invokevirtual com/nd/rj/common/login/communication/uapCom/checkSession(Ljava/lang/String;Ljava/lang/StringBuilder;)I
ifne L1
lload 5
lstore 3
aload 7
invokevirtual java/lang/StringBuilder/length()I
ifle L1
L0:
new org/json/JSONObject
dup
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
lstore 3
L1:
lload 3
lreturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
lconst_0
lreturn
.limit locals 8
.limit stack 3
.end method

.method public clearPassWord(J)I
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method public deleteAllUsers()I
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/deleteAllUsers()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public deleteUser(J)V
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
lload 1
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/DeleteUserInfo(J)I
pop
return
.limit locals 3
.limit stack 3
.end method

.method public deleteWorker(J)V
aload 0
getfield com/nd/rj/common/login/LoginPro/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/getDb()Landroid/database/sqlite/SQLiteDatabase; 0
astore 3
aload 3
ifnull L0
aload 3
lload 1
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/DeleteUserInfo(Landroid/database/sqlite/SQLiteDatabase;J)Z
pop
L0:
return
.limit locals 4
.limit stack 3
.end method

.method public get91AccountUserList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/business/bean/UserInfo;>;"
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 0
getfield com/nd/rj/common/login/LoginPro/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
ldc "select * from USERINFO order by LAST_LOGIN_DT desc"
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/querySql(Ljava/lang/String;)Landroid/database/Cursor; 1
astore 1
aload 1
ifnull L4
L0:
aload 1
invokeinterface android/database/Cursor/getCount()I 0
ifle L4
L1:
aload 1
invokeinterface android/database/Cursor/moveToNext()Z 0
ifeq L4
new com/product/android/business/bean/UserInfo
dup
invokespecial com/product/android/business/bean/UserInfo/<init>()V
astore 3
aload 3
aload 1
invokevirtual com/product/android/business/bean/UserInfo/LoadFormCursor(Landroid/database/Cursor;)Z
pop
aload 2
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L3:
goto L1
L2:
astore 2
aload 1
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/closeCursor(Landroid/database/Cursor;)V
aload 2
athrow
L4:
aload 1
invokestatic com/nd/rj/common/login/dbreposit/CfgDBHelper/closeCursor(Landroid/database/Cursor;)V
aload 2
areturn
.limit locals 4
.limit stack 2
.end method

.method public getLastLoginType()Lcom/product/android/business/ApplicationVariable$LoginType;
aload 0
getfield com/nd/rj/common/login/LoginPro/mDBHelper Lcom/nd/rj/common/util/db/IDataBaseRef;
invokeinterface com/nd/rj/common/util/db/IDataBaseRef/getDb()Landroid/database/sqlite/SQLiteDatabase; 0
astore 3
aload 3
ifnonnull L0
L1:
aconst_null
areturn
L0:
aload 3
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getLastLoginDT(Landroid/database/sqlite/SQLiteDatabase;)I
istore 1
aload 3
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/getLastLoginDT(Landroid/database/sqlite/SQLiteDatabase;)I
istore 2
iload 1
iload 2
if_icmpeq L1
iload 1
iload 2
if_icmple L2
getstatic com/product/android/business/ApplicationVariable$LoginType/_99_ACCOUNT_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
areturn
L2:
getstatic com/product/android/business/ApplicationVariable$LoginType/_JOB_NUMBER_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
areturn
.limit locals 4
.limit stack 2
.end method

.method public getLastUserInfo()Lcom/product/android/business/bean/UserInfo;
aload 0
invokevirtual com/nd/rj/common/login/LoginPro/getLastLoginType()Lcom/product/android/business/ApplicationVariable$LoginType;
getstatic com/product/android/business/ApplicationVariable$LoginType/_99_ACCOUNT_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
if_acmpne L0
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/GetLastUserInfo()Lcom/product/android/business/bean/UserInfo;
areturn
L0:
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/GetLastUserInfo()Lcom/product/android/business/login/JobNumberUserInfo;
invokevirtual com/product/android/business/login/JobNumberUserInfo/converToUserInfo()Lcom/product/android/business/bean/UserInfo;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getUserByUserName(Ljava/lang/String;)Lcom/product/android/business/bean/UserInfo;
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
aload 1
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/GetUserByUserName(Ljava/lang/String;)Lcom/product/android/business/bean/UserInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getUserList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/business/bean/UserInfo;>;"
aload 0
invokevirtual com/nd/rj/common/login/LoginPro/getLastLoginType()Lcom/product/android/business/ApplicationVariable$LoginType;
astore 1
aload 1
ifnonnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
L1:
aload 1
areturn
L0:
aload 1
getstatic com/product/android/business/ApplicationVariable$LoginType/_99_ACCOUNT_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
if_acmpne L2
aload 0
invokevirtual com/nd/rj/common/login/LoginPro/get91AccountUserList()Ljava/util/ArrayList;
areturn
L2:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
invokestatic com/nd/rj/common/login/entity/WorkerUserInfoTable/getUserList()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L3:
aload 2
astore 1
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/business/login/JobNumberUserInfo
invokevirtual com/product/android/business/login/JobNumberUserInfo/converToUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L3
.limit locals 4
.limit stack 2
.end method

.method public getWlSid(JILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
aload 6
iconst_0
aload 6
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
aload 5
iconst_0
aload 5
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 7
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",siteid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/rj/common/login/LoginPro/ctx Landroid/content/Context;
invokestatic com/nd/rj/common/login/communication/uapCom/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/communication/uapCom;
lload 1
iload 3
aload 4
aload 7
invokevirtual com/nd/rj/common/login/communication/uapCom/getWlSid(JILjava/lang/String;Ljava/lang/StringBuilder;)I
istore 3
iload 3
ifne L3
L0:
aload 5
new org/json/JSONObject
dup
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "charge"
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
ldc "SessionId"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L1:
iload 3
ireturn
L2:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
ldc "debug"
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
getstatic com/nd/rj/common/R$string/nd_json_error I
ireturn
L3:
aload 6
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
pop
iload 3
ireturn
.limit locals 8
.limit stack 6
.end method

.method public logOut(JLjava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/LoginPro/ctx Landroid/content/Context;
invokestatic com/nd/rj/common/login/communication/uapCom/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/communication/uapCom;
lload 1
aload 3
invokevirtual com/nd/rj/common/login/communication/uapCom/logOut(JLjava/lang/String;)V
return
.limit locals 4
.limit stack 4
.end method

.method public regPhone(ILcom/product/android/business/bean/UserInfo;Ljava/lang/String;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L7
aload 4
iconst_0
aload 4
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 7
aload 0
getfield com/nd/rj/common/login/LoginPro/ctx Landroid/content/Context;
invokestatic com/nd/rj/common/login/communication/uapCom/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/communication/uapCom;
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getUserPass()Ljava/lang/String;
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getUserNickName()Ljava/lang/String;
aload 3
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getBlowfish()Ljava/lang/String;
aload 7
invokevirtual com/nd/rj/common/login/communication/uapCom/regPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 5
iload 5
iconst_1
if_icmpne L8
L0:
new org/json/JSONObject
dup
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 3
L1:
aload 3
ifnull L4
L3:
aload 4
new org/json/JSONObject
dup
aload 3
ldc "msg"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "binderr"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L4:
iconst_0
istore 5
L9:
iload 5
istore 6
iload 5
ifne L6
L5:
new org/json/JSONObject
dup
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 3
aload 2
aload 3
ldc "sid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setSessionId(Ljava/lang/String;)V
aload 2
aload 3
ldc "uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokevirtual com/product/android/business/bean/UserInfo/setUapUid(J)V
aload 2
aload 3
ldc "ticket"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setTicket(Ljava/lang/String;)V
aload 2
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getUserPass()Ljava/lang/String;
ldc "ECBC644F598318E42CA7ED92497BFB8019D4C166B62A60D0E83E73321FC6CE8596421F981545CAF93EE8231CA4D544BEBF0A6AEA3F9305A6ED675C96A4CA87A9"
ldc "10001"
invokestatic com/nd/rj/common/login/NdLoginComFun/RSAEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPass(Ljava/lang/String;)V
aload 2
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getUserPass()Ljava/lang/String;
ldc "GB2312"
invokestatic com/nd/rj/common/util/EncryptTool/getMD5str(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPassMixedMd5(Ljava/lang/String;)V
aload 0
iload 1
aload 2
aload 4
iconst_1
invokespecial com/nd/rj/common/login/LoginPro/doAfterRegist(ILcom/product/android/business/bean/UserInfo;Ljava/lang/StringBuilder;Z)I
istore 6
L6:
iload 6
ireturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/nd/rj/common/R$string/nd_json_error I
istore 5
goto L4
L8:
iload 5
sipush 204
if_icmpne L10
aload 4
aload 0
getfield com/nd/rj/common/login/LoginPro/ctx Landroid/content/Context;
getstatic com/nd/rj/common/R$string/nd_code_wrong I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L9
L10:
aload 4
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
pop
goto L9
L7:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/nd/rj/common/R$string/nd_json_error I
ireturn
.limit locals 8
.limit stack 7
.end method

.method public sendCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
aload 3
iconst_0
aload 3
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 0
getfield com/nd/rj/common/login/LoginPro/ctx Landroid/content/Context;
invokestatic com/nd/rj/common/login/communication/uapCom/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/communication/uapCom;
aload 1
aload 2
aload 5
invokevirtual com/nd/rj/common/login/communication/uapCom/sendCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 4
aload 3
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
pop
iload 4
ireturn
.limit locals 6
.limit stack 4
.end method

.method public setExtInfo(JLjava/lang/String;)I
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
lload 1
aload 3
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/setExtInfo(JLjava/lang/String;)I
ireturn
.limit locals 4
.limit stack 4
.end method

.method public setUserInfo(Lcom/product/android/business/bean/UserInfo;)I
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
aload 1
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/SetUserInfo(Lcom/product/android/business/bean/UserInfo;)I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public updateLastUserInfo(JJ)V
invokestatic com/nd/rj/common/login/atomoperation/OperUserInfo/getInstance()Lcom/nd/rj/common/login/atomoperation/OperUserInfo;
lload 1
lload 3
invokevirtual com/nd/rj/common/login/atomoperation/OperUserInfo/UpdateLastUserInfo(JJ)V
return
.limit locals 5
.limit stack 5
.end method

.method public userLoginByCookie(ILjava/lang/String;Lcom/product/android/business/bean/UserInfo;Lcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
iload 1
tableswitch 0
L0
L1
default : L2
L2:
iconst_m1
ireturn
L0:
ldc "debug"
ldc "userLoginByCookie:UAP"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
aload 2
aload 3
aload 5
invokespecial com/nd/rj/common/login/LoginPro/loginUapByCookie(Ljava/lang/String;Lcom/product/android/business/bean/UserInfo;Ljava/lang/StringBuilder;)I
ireturn
L1:
ldc "debug"
ldc "userLoginByCookie:OAP"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
aload 2
aload 3
aload 4
aload 5
invokespecial com/nd/rj/common/login/LoginPro/loginOapByCookie(Ljava/lang/String;Lcom/product/android/business/bean/UserInfo;Lcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
ireturn
.limit locals 6
.limit stack 5
.end method

.method public userLoginByTicket(ILcom/product/android/business/bean/UserInfo;IJLcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
iload 1
tableswitch 0
L0
L1
default : L2
L2:
iconst_m1
ireturn
L0:
ldc "debug"
ldc "userLoginByTicket:UAP"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
aload 2
aload 7
invokespecial com/nd/rj/common/login/LoginPro/loginUapByTicket(Lcom/product/android/business/bean/UserInfo;Ljava/lang/StringBuilder;)I
ireturn
L1:
ldc "debug"
ldc "userLoginByTicket:OAP"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
aload 2
iload 3
lload 4
aload 6
aload 7
invokespecial com/nd/rj/common/login/LoginPro/loginOapByTicket(Lcom/product/android/business/bean/UserInfo;IJLcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
ireturn
.limit locals 8
.limit stack 7
.end method

.method public userLoginByTicket(ILcom/product/android/business/bean/UserInfo;IJLjava/lang/StringBuilder;)I
aload 0
iload 1
aload 2
iload 3
lload 4
aconst_null
aload 6
invokevirtual com/nd/rj/common/login/LoginPro/userLoginByTicket(ILcom/product/android/business/bean/UserInfo;IJLcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
ireturn
.limit locals 7
.limit stack 8
.end method

.method public userLoginByTicket(ILcom/product/android/business/bean/UserInfo;Lcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
iload 1
tableswitch 0
L0
L1
default : L2
L2:
iconst_m1
ireturn
L0:
ldc "debug"
ldc "userLoginByTicket:UAP"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
aload 2
aload 4
invokespecial com/nd/rj/common/login/LoginPro/loginUapByTicket(Lcom/product/android/business/bean/UserInfo;Ljava/lang/StringBuilder;)I
ireturn
L1:
ldc "debug"
ldc "userLoginByTicket:OAP"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
aload 2
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getOapUnitId()I
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
aload 3
aload 4
invokespecial com/nd/rj/common/login/LoginPro/loginOapByTicket(Lcom/product/android/business/bean/UserInfo;IJLcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
ireturn
.limit locals 5
.limit stack 7
.end method

.method public userLoginByTicket(ILcom/product/android/business/bean/UserInfo;Ljava/lang/StringBuilder;)I
aload 0
iload 1
aload 2
aconst_null
aload 3
invokevirtual com/nd/rj/common/login/LoginPro/userLoginByTicket(ILcom/product/android/business/bean/UserInfo;Lcom/nd/rj/common/login/entity/ClientInfo;Ljava/lang/StringBuilder;)I
ireturn
.limit locals 4
.limit stack 5
.end method

.method public userRegist(ILcom/product/android/business/bean/UserInfo;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
aload 3
iconst_0
aload 3
invokevirtual java/lang/StringBuilder/length()I
invokevirtual java/lang/StringBuilder/delete(II)Ljava/lang/StringBuilder;
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 0
getfield com/nd/rj/common/login/LoginPro/ctx Landroid/content/Context;
invokestatic com/nd/rj/common/login/communication/uapCom/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/communication/uapCom;
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getUserPass()Ljava/lang/String;
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getUserNickName()Ljava/lang/String;
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getBlowfish()Ljava/lang/String;
aload 5
invokevirtual com/nd/rj/common/login/communication/uapCom/userRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 4
iload 4
ifne L3
L0:
new org/json/JSONObject
dup
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 5
aload 2
aload 5
ldc "sid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setSessionId(Ljava/lang/String;)V
aload 2
aload 5
ldc "uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
invokevirtual com/product/android/business/bean/UserInfo/setUapUid(J)V
aload 2
aload 5
ldc "username"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserName(Ljava/lang/String;)V
aload 2
aload 5
ldc "ticket"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setTicket(Ljava/lang/String;)V
aload 0
iload 1
aload 2
aload 3
iconst_0
invokespecial com/nd/rj/common/login/LoginPro/doAfterRegist(ILcom/product/android/business/bean/UserInfo;Ljava/lang/StringBuilder;Z)I
istore 1
L1:
iload 1
ireturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/nd/rj/common/R$string/nd_json_error I
ireturn
L3:
aload 3
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
pop
iload 4
ireturn
.limit locals 6
.limit stack 6
.end method
