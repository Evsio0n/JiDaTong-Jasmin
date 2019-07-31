.bytecode 50.0
.class public synchronized com/product/android/commonInterface/weibo/parser/WbUserInfoParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/product/android/commonInterface/weibo/WbUserInfo;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractObjParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/WbUserInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/WbUserInfo;
.throws org/json/JSONException
new com/product/android/commonInterface/weibo/WbUserInfo
dup
invokespecial com/product/android/commonInterface/weibo/WbUserInfo/<init>()V
astore 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/user_exist I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 2
aload 1
ifnonnull L0
aload 3
aload 2
putfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
aload 3
areturn
L0:
aload 3
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 1
ldc "nickname"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 4
ifnull L1
aload 4
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
L1:
aload 3
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
lconst_0
lcmp
ifeq L3
aload 3
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
astore 2
L3:
aload 3
aload 2
putfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
L4:
aload 3
aload 1
ldc "gender"
iconst_0
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
putfield com/product/android/commonInterface/weibo/WbUserInfo/gender I
aload 1
ldc "sysavatar"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L5
aload 3
aload 1
ldc "sysavatar"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
aload 3
areturn
L2:
aload 3
aload 4
putfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
goto L4
L5:
aload 3
aload 3
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic com/product/android/commonInterface/allCommonInterfaceImpl/AllCommonCallOtherModel$ContactModel/getUserSysAvatarId(J)I
putfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
aload 3
areturn
.limit locals 5
.limit stack 4
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/product/android/commonInterface/weibo/WbUserInfo
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/toJSONObject(Lcom/product/android/commonInterface/weibo/WbUserInfo;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/product/android/commonInterface/weibo/WbUserInfo;)Lorg/json/JSONObject;
.throws org/json/JSONException
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
aload 1
ifnonnull L0
aload 2
areturn
L0:
aload 2
ldc "uid"
aload 1
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "nickname"
aload 1
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "gender"
aload 1
getfield com/product/android/commonInterface/weibo/WbUserInfo/gender I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "sysavatar"
aload 1
getfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
areturn
.limit locals 3
.limit stack 4
.end method
