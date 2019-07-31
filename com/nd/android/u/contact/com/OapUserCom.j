.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/OapUserCom
.super com/nd/android/u/contact/com/base/OapUserSupportCom
.inner class inner com/nd/android/u/contact/com/OapUserCom$1

.field private static final 'TAG' Ljava/lang/String; = "OapUserCom"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/OapUserSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final getBindUserInfo(J)Lcom/product/android/business/login/BindUser;
.throws com/common/android/utils/http/HttpException
aload 0
lload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/getSupportUserInfo(J)Lorg/json/JSONObject;
astore 4
aconst_null
astore 3
aload 4
ifnull L0
new com/product/android/business/login/BindUser
dup
aload 4
invokespecial com/product/android/business/login/BindUser/<init>(Lorg/json/JSONObject;)V
astore 3
L0:
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public final getBindUserList(I)Ljava/util/ArrayList;
.signature "(I)Ljava/util/ArrayList<Lcom/product/android/business/login/BindUser;>;"
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
aconst_null
astore 3
aload 0
iload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/getSupportUserList(I)Lorg/json/JSONObject;
astore 4
aload 3
astore 2
aload 4
ifnull L0
aload 4
ldc "bind_users"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
aload 3
astore 2
aload 4
ifnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
iconst_0
istore 1
L1:
aload 3
astore 2
iload 1
aload 4
invokevirtual org/json/JSONArray/length()I
if_icmpge L0
aload 4
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 2
aload 2
ifnull L2
new com/product/android/business/login/BindUser
dup
invokespecial com/product/android/business/login/BindUser/<init>()V
astore 5
aload 5
aload 2
invokevirtual com/product/android/business/login/BindUser/initUserBybindlistJson(Lorg/json/JSONObject;)V
aload 3
aload 5
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L2:
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
aload 2
areturn
.limit locals 6
.limit stack 2
.end method

.method public final getUnitNameByBindUserList(I)Ljava/lang/String;
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
ldc ""
astore 3
aload 0
iload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/getSupportUserList(I)Lorg/json/JSONObject;
astore 4
aload 3
astore 2
aload 4
ifnull L0
aload 4
ldc "bind_users"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
aload 3
astore 2
aload 4
ifnull L0
aload 3
astore 2
aload 4
invokevirtual org/json/JSONArray/length()I
ifle L0
aload 4
iconst_0
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 4
aload 3
astore 2
aload 4
ifnull L0
aload 4
ldc "unitname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
astore 2
L0:
aload 2
areturn
.limit locals 5
.limit stack 2
.end method

.method public final getUserInfo(J)Lcom/product/android/commonInterface/contact/OapUser;
.throws com/common/android/utils/http/HttpException
aload 0
lload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/getSupportUserInfo(J)Lorg/json/JSONObject;
astore 4
aconst_null
astore 3
aload 4
ifnull L0
new com/product/android/commonInterface/contact/OapUser
dup
aload 4
invokespecial com/product/android/commonInterface/contact/OapUser/<init>(Lorg/json/JSONObject;)V
astore 3
L0:
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public final getUserInfoExt(JLcom/product/android/business/login/BindUser;)Lcom/product/android/business/login/BindUser;
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
aload 0
lload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/getSupportUserInfoExt(J)Lorg/json/JSONArray;
astore 4
aload 4
ifnull L0
aload 4
invokevirtual org/json/JSONArray/length()I
ifle L0
aload 3
ifnull L1
aload 3
aload 4
iconst_0
invokevirtual org/json/JSONArray/get(I)Ljava/lang/Object;
checkcast org/json/JSONObject
invokevirtual com/product/android/business/login/BindUser/setJsonObject(Lorg/json/JSONObject;)V
L0:
aload 3
areturn
L1:
new com/product/android/business/login/BindUser
dup
aload 4
iconst_0
invokevirtual org/json/JSONArray/get(I)Ljava/lang/Object;
checkcast org/json/JSONObject
invokespecial com/product/android/business/login/BindUser/<init>(Lorg/json/JSONObject;)V
areturn
.limit locals 5
.limit stack 4
.end method

.method public final getUserInfoupdate(Lcom/product/android/business/login/BindUser;)Lcom/product/android/business/login/BindUser;
.throws com/common/android/utils/http/HttpException
aload 0
invokevirtual com/nd/android/u/contact/com/OapUserCom/getUserInfoUpdate()Lorg/json/JSONObject;
astore 2
aload 2
ifnull L0
aload 1
ifnull L1
aload 1
aload 2
invokevirtual com/product/android/business/login/BindUser/setJsonUpdatetime(Lorg/json/JSONObject;)V
L0:
aload 1
areturn
L1:
ldc "OapUserCom"
ldc "BindUser is null"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
new com/product/android/business/login/BindUser
dup
invokespecial com/product/android/business/login/BindUser/<init>()V
astore 1
aload 1
aload 2
invokevirtual com/product/android/business/login/BindUser/setJsonUpdatetime(Lorg/json/JSONObject;)V
aload 1
areturn
.limit locals 3
.limit stack 2
.end method

.method public final getUserList(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
aconst_null
astore 3
aload 0
iload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/getSupportUserList(I)Lorg/json/JSONObject;
astore 4
aload 3
astore 2
aload 4
ifnull L0
aload 4
ldc "bind_users"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
aload 3
astore 2
aload 4
ifnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
iconst_0
istore 1
L1:
aload 3
astore 2
iload 1
aload 4
invokevirtual org/json/JSONArray/length()I
if_icmpge L0
aload 4
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 2
aload 2
ifnull L2
aload 3
new com/product/android/commonInterface/contact/OapUser
dup
aload 2
invokespecial com/product/android/commonInterface/contact/OapUser/<init>(Lorg/json/JSONObject;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L2:
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
aload 2
areturn
.limit locals 5
.limit stack 4
.end method

.method public final getUserListInfo(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
aconst_null
astore 3
aload 0
aload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/getSupportUserListInfo(Ljava/lang/String;)Lorg/json/JSONObject;
astore 4
aload 3
astore 1
aload 4
ifnull L0
aload 4
ldc "users"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
aload 3
astore 1
aload 4
ifnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
iconst_0
istore 2
L1:
aload 3
astore 1
iload 2
aload 4
invokevirtual org/json/JSONArray/length()I
if_icmpge L0
aload 4
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 1
aload 1
ifnull L2
new com/product/android/commonInterface/contact/OapUser
dup
aload 1
invokespecial com/product/android/commonInterface/contact/OapUser/<init>(Lorg/json/JSONObject;)V
astore 1
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual com/product/android/commonInterface/contact/OapUser/setUnitid(I)V
aload 3
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L2:
iload 2
iconst_1
iadd
istore 2
goto L1
L0:
aload 1
areturn
.limit locals 5
.limit stack 3
.end method

.method public final modifyUserSign(Ljava/lang/String;)Z
.throws com/common/android/utils/http/HttpException
aload 0
aload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/modifyUserSignatrue(Ljava/lang/String;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public final searchUser(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
aload 0
aconst_null
aload 1
aload 2
aconst_null
aconst_null
invokevirtual com/nd/android/u/contact/com/OapUserCom/searchUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
areturn
.limit locals 3
.limit stack 6
.end method

.method public final searchUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
aload 0
aload 1
aload 2
aload 3
aload 4
aload 5
invokevirtual com/nd/android/u/contact/com/OapUserCom/searchSupportUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
astore 4
aconst_null
astore 3
aconst_null
astore 2
aload 3
astore 1
aload 4
ifnull L3
aload 4
ldc "users"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
aload 3
astore 1
aload 4
ifnull L3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
iconst_0
istore 6
L4:
aload 3
astore 1
iload 6
aload 4
invokevirtual org/json/JSONArray/length()I
if_icmpge L3
L0:
aload 4
iload 6
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 1
L1:
aload 1
ifnull L5
aload 3
new com/product/android/commonInterface/contact/OapUser
dup
aload 1
invokespecial com/product/android/commonInterface/contact/OapUser/<init>(Lorg/json/JSONObject;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L5:
iload 6
iconst_1
iadd
istore 6
aload 1
astore 2
goto L4
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aload 2
astore 1
goto L1
L3:
aload 1
areturn
.limit locals 7
.limit stack 6
.end method

.method public final searchUserByKey(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
aload 0
aload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/searchSupportUserByKey(Ljava/lang/String;)Lorg/json/JSONObject;
astore 6
aconst_null
astore 4
aconst_null
astore 3
aload 4
astore 1
aload 6
ifnull L3
aload 6
ldc "data"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 5
aload 5
ifnull L4
aload 5
invokevirtual org/json/JSONArray/length()I
ifle L4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
iconst_0
istore 2
L5:
aload 4
astore 1
iload 2
aload 5
invokevirtual org/json/JSONArray/length()I
if_icmpge L3
L0:
aload 5
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 1
L1:
aload 1
astore 3
L6:
aload 3
ifnull L7
new com/product/android/commonInterface/contact/OapUserSimple
dup
invokespecial com/product/android/commonInterface/contact/OapUserSimple/<init>()V
astore 1
aload 1
aload 3
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/commonInterface/contact/OapUserSimple/fid J
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
lconst_0
lcmp
ifgt L8
L7:
iload 2
iconst_1
iadd
istore 2
goto L5
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L6
L8:
aload 1
aload 3
ldc "workid"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUserSimple/workid Ljava/lang/String;
aload 1
aload 3
ldc "gender"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUserSimple/gender I
aload 1
aload 3
ldc "type"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUserSimple/type I
aload 1
aload 3
ldc "name"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
aload 1
aload 3
ldc "isfollow"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUserSimple/isfollow I
aload 1
aload 3
ldc "signature"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUserSimple/signature Ljava/lang/String;
aload 4
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L7
L4:
aload 4
astore 1
aload 5
ifnonnull L3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
new com/product/android/commonInterface/contact/OapUserSimple
dup
invokespecial com/product/android/commonInterface/contact/OapUserSimple/<init>()V
astore 3
aload 3
aload 6
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
putfield com/product/android/commonInterface/contact/OapUserSimple/fid J
aload 3
aload 6
ldc "workid"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUserSimple/workid Ljava/lang/String;
aload 3
aload 6
ldc "gender"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
putfield com/product/android/commonInterface/contact/OapUserSimple/gender I
aload 3
aload 6
ldc "username"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
aload 1
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L3:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 1
ifnull L9
aload 3
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L9:
new java/lang/Thread
dup
new com/nd/android/u/contact/com/OapUserCom$1
dup
aload 0
aload 3
invokespecial com/nd/android/u/contact/com/OapUserCom$1/<init>(Lcom/nd/android/u/contact/com/OapUserCom;Ljava/util/List;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
aload 1
areturn
.limit locals 7
.limit stack 6
.end method

.method public final searchUserByUsername(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.throws com/common/android/utils/http/HttpException
aload 0
aload 1
aconst_null
aconst_null
aconst_null
aconst_null
invokevirtual com/nd/android/u/contact/com/OapUserCom/searchUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 6
.end method
