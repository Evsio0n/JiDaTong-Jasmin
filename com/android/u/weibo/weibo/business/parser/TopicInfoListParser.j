.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/parser/TopicInfoListParser
.super com/common/android/utils/parser/AbstractArrayParser
.signature "Lcom/common/android/utils/parser/AbstractArrayParser<Lcom/android/u/weibo/weibo/business/bean/TopicInfo;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractArrayParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/bean/TopicInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfoList/<init>()V
astore 4
aload 1
ifnull L0
aload 1
invokevirtual org/json/JSONArray/length()I
ifne L1
L0:
aload 4
areturn
L1:
new com/android/u/weibo/weibo/business/parser/TopicInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoParser/<init>()V
astore 5
iconst_0
istore 2
aload 1
invokevirtual org/json/JSONArray/length()I
istore 3
L2:
iload 2
iload 3
if_icmpge L0
aload 1
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
ldc "topic"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 6
aload 6
ifnull L3
aload 4
aload 5
aload 6
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/add(Ljava/lang/Object;)Z
pop
L3:
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 7
.limit stack 3
.end method

.method public volatile synthetic parse(Lorg/json/JSONArray;)Ljava/util/List;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
.signature "(Ljava/util/List<Lcom/android/u/weibo/weibo/business/bean/TopicInfo;>;)Lorg/json/JSONArray;"
.throws org/json/JSONException
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method
