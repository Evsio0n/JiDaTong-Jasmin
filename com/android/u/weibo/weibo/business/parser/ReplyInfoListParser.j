.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/parser/ReplyInfoListParser
.super com/common/android/utils/parser/AbstractArrayParser
.signature "Lcom/common/android/utils/parser/AbstractArrayParser<Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractArrayParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/bean/ReplyInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/ReplyInfoList/<init>()V
astore 4
aload 1
ifnonnull L0
L1:
aload 4
areturn
L0:
new com/android/u/weibo/weibo/business/parser/ReplyInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/ReplyInfoParser/<init>()V
astore 5
iconst_0
istore 2
aload 1
invokevirtual org/json/JSONArray/length()I
istore 3
L2:
iload 2
iload 3
if_icmpge L1
aload 4
aload 5
aload 1
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
ldc "reply"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/android/u/weibo/weibo/business/parser/ReplyInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
invokevirtual com/android/u/weibo/weibo/business/bean/ReplyInfoList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 6
.limit stack 4
.end method

.method public volatile synthetic parse(Lorg/json/JSONArray;)Ljava/util/List;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/ReplyInfoListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
.signature "(Ljava/util/List<Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;>;)Lorg/json/JSONArray;"
.throws org/json/JSONException
aload 1
ifnonnull L0
aconst_null
astore 1
L1:
aload 1
areturn
L0:
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 2
new com/android/u/weibo/weibo/business/parser/ReplyInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/ReplyInfoParser/<init>()V
astore 3
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L2:
aload 2
astore 1
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
aload 3
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
invokevirtual com/android/u/weibo/weibo/business/parser/ReplyInfoParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONArray/put(Ljava/lang/Object;)Lorg/json/JSONArray;
pop
goto L2
.limit locals 5
.limit stack 3
.end method
