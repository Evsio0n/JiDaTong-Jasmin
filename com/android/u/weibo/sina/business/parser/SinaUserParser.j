.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/parser/SinaUserParser
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
invokevirtual com/android/u/weibo/sina/business/parser/SinaUserParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/WbUserInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/WbUserInfo;
.throws org/json/JSONException
new com/product/android/commonInterface/weibo/WbUserInfo
dup
invokespecial com/product/android/commonInterface/weibo/WbUserInfo/<init>()V
astore 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/user_exist I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 2
aload 1
ifnonnull L0
aload 4
aload 2
putfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
aload 4
areturn
L0:
aload 4
aload 1
ldc "id"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 1
ldc "name"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
L2:
aload 4
aload 2
putfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
aload 4
aload 1
ldc "avatar_hd"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/weibo/WbUserInfo/avatar Ljava/lang/String;
aload 4
areturn
L1:
aload 3
astore 2
goto L2
.limit locals 5
.limit stack 3
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/product/android/commonInterface/weibo/WbUserInfo
invokevirtual com/android/u/weibo/sina/business/parser/SinaUserParser/toJSONObject(Lcom/product/android/commonInterface/weibo/WbUserInfo;)Lorg/json/JSONObject;
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
ldc "id"
aload 1
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "name"
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
ldc "avatar_hd"
aload 1
getfield com/product/android/commonInterface/weibo/WbUserInfo/avatar Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
areturn
.limit locals 3
.limit stack 4
.end method
