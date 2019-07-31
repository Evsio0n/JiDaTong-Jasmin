.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/parser/RootTopicParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/android/u/weibo/weibo/business/bean/RootTopic;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractObjParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/RootTopic;
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/bean/RootTopic
dup
invokespecial com/android/u/weibo/weibo/business/bean/RootTopic/<init>()V
astore 2
aload 1
ifnonnull L0
L1:
aload 2
areturn
L0:
aload 2
aload 1
ldc "exists"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/RootTopic/exists I
aload 2
getfield com/android/u/weibo/weibo/business/bean/RootTopic/exists I
iconst_1
if_icmpne L1
aload 2
new com/android/u/weibo/weibo/business/parser/TopicInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoParser/<init>()V
aload 1
ldc "topic"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
putfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/RootTopicParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/RootTopic;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/android/u/weibo/weibo/business/bean/RootTopic;)Lorg/json/JSONObject;
.throws org/json/JSONException
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
aload 1
ifnonnull L0
L1:
aload 2
areturn
L0:
aload 2
ldc "exists"
aload 1
getfield com/android/u/weibo/weibo/business/bean/RootTopic/exists I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 1
getfield com/android/u/weibo/weibo/business/bean/RootTopic/exists I
iconst_1
if_icmpne L1
aload 2
ldc "topic"
new com/android/u/weibo/weibo/business/parser/TopicInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoParser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
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
checkcast com/android/u/weibo/weibo/business/bean/RootTopic
invokevirtual com/android/u/weibo/weibo/business/parser/RootTopicParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/RootTopic;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method
