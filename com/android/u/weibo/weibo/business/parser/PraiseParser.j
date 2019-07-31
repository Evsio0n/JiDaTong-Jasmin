.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/parser/PraiseParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/android/u/weibo/weibo/business/bean/Praise;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractObjParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/Praise;
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/bean/Praise
dup
invokespecial com/android/u/weibo/weibo/business/bean/Praise/<init>()V
astore 2
aload 1
ifnonnull L0
aload 2
areturn
L0:
aload 2
aload 1
ldc "id"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/Praise/id J
aload 2
new com/product/android/commonInterface/weibo/parser/WbUserInfoParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/WbUserInfoParser/<init>()V
aload 1
ldc "user"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/WbUserInfo;
putfield com/android/u/weibo/weibo/business/bean/Praise/mUser Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 2
new com/android/u/weibo/weibo/business/parser/TopicInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoParser/<init>()V
aload 1
ldc "topic"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
putfield com/android/u/weibo/weibo/business/bean/Praise/mTopic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 2
aload 1
ldc "praise_time"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/Praise/praise_time J
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/PraiseParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/Praise;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/android/u/weibo/weibo/business/bean/Praise;)Lorg/json/JSONObject;
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
getfield com/android/u/weibo/weibo/business/bean/Praise/id J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "praise_time"
aload 1
getfield com/android/u/weibo/weibo/business/bean/Praise/praise_time J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "user"
new com/product/android/commonInterface/weibo/parser/WbUserInfoParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/WbUserInfoParser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/Praise/mUser Lcom/product/android/commonInterface/weibo/WbUserInfo;
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/toJSONObject(Lcom/product/android/commonInterface/weibo/WbUserInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "topic"
new com/android/u/weibo/weibo/business/parser/TopicInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoParser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/Praise/mTopic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/Praise
invokevirtual com/android/u/weibo/weibo/business/parser/PraiseParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/Praise;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method
