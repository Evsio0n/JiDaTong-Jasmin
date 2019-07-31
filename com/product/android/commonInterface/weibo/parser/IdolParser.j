.bytecode 50.0
.class public synchronized com/product/android/commonInterface/weibo/parser/IdolParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/product/android/commonInterface/weibo/Idol;>;"

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
invokevirtual com/product/android/commonInterface/weibo/parser/IdolParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/Idol;
areturn
.limit locals 2
.limit stack 2
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/Idol;
.throws org/json/JSONException
new com/product/android/commonInterface/weibo/Idol
dup
invokespecial com/product/android/commonInterface/weibo/Idol/<init>()V
astore 2
aload 1
ifnonnull L0
aload 2
areturn
L0:
aload 2
aload 1
ldc "is_following"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/product/android/commonInterface/weibo/Idol/setIsFollowing(I)V
aload 2
aload 1
ldc "id"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
i2l
putfield com/product/android/commonInterface/weibo/Idol/id J
aload 2
aload 1
ldc "idols"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/weibo/Idol/idols I
aload 2
aload 1
ldc "fans"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/product/android/commonInterface/weibo/Idol/fans I
aload 2
new com/product/android/commonInterface/weibo/parser/WbUserInfoParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/WbUserInfoParser/<init>()V
aload 1
ldc "user"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/WbUserInfo;
putfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 2
aload 1
ldc "weibo_uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/product/android/commonInterface/weibo/Idol/sinaUid J
aload 2
aload 1
ldc "change_type"
iconst_1
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
putfield com/product/android/commonInterface/weibo/Idol/change_type I
aload 2
aload 1
ldc "ts"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/product/android/commonInterface/weibo/Idol/ts J
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/product/android/commonInterface/weibo/Idol
invokevirtual com/product/android/commonInterface/weibo/parser/IdolParser/toJSONObject(Lcom/product/android/commonInterface/weibo/Idol;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/product/android/commonInterface/weibo/Idol;)Lorg/json/JSONObject;
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
ldc "is_following"
aload 1
invokevirtual com/product/android/commonInterface/weibo/Idol/getIsFollowing()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "id"
aload 1
getfield com/product/android/commonInterface/weibo/Idol/id J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "fans"
aload 1
getfield com/product/android/commonInterface/weibo/Idol/fans I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "idols"
aload 1
getfield com/product/android/commonInterface/weibo/Idol/idols I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "user"
new com/product/android/commonInterface/weibo/parser/WbUserInfoParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/WbUserInfoParser/<init>()V
aload 1
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/toJSONObject(Lcom/product/android/commonInterface/weibo/WbUserInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "weibo_uid"
aload 1
getfield com/product/android/commonInterface/weibo/Idol/sinaUid J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
areturn
.limit locals 3
.limit stack 4
.end method
