.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/parser/UserPageInfoParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractObjParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/bean/UserPageInfo
dup
invokespecial com/android/u/weibo/weibo/business/bean/UserPageInfo/<init>()V
astore 2
aload 1
ifnonnull L0
aload 2
areturn
L0:
aload 2
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/UserPageInfo/uid J
aload 2
aload 1
ldc "topics"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/UserPageInfo/topics I
aload 2
aload 1
ldc "latest_tid"
lconst_0
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
putfield com/android/u/weibo/weibo/business/bean/UserPageInfo/latest_tid J
aload 2
aload 1
ldc "latest_topic"
ldc ""
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/UserPageInfo/latest_topic Ljava/lang/String;
aload 2
aload 1
ldc "idols"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/UserPageInfo/idols I
aload 2
aload 1
ldc "fans"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/UserPageInfo/fans I
aload 2
aload 1
ldc "weibo_uid"
lconst_0
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;J)J
putfield com/android/u/weibo/weibo/business/bean/UserPageInfo/weibo_uid J
aload 2
aload 1
ldc "is_following"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/android/u/weibo/weibo/business/bean/UserPageInfo/setFollowing(I)V
aload 2
aload 1
ldc "nickname"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/UserPageInfo/nickName Ljava/lang/String;
aload 2
areturn
.limit locals 3
.limit stack 5
.end method

.method public volatile synthetic parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/UserPageInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;)Lorg/json/JSONObject;
.throws org/json/JSONException
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/UserPageInfo
invokevirtual com/android/u/weibo/weibo/business/parser/UserPageInfoParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method
