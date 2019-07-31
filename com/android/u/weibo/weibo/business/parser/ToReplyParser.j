.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/parser/ToReplyParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/android/u/weibo/weibo/business/bean/ToReply;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractObjParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/ToReply;
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/bean/ToReply
dup
invokespecial com/android/u/weibo/weibo/business/bean/ToReply/<init>()V
astore 2
aload 2
aload 1
ldc "exists"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/ToReply/exists I
aload 2
getfield com/android/u/weibo/weibo/business/bean/ToReply/exists I
iconst_1
if_icmpne L0
aload 2
new com/android/u/weibo/weibo/business/parser/ReplyInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/ReplyInfoParser/<init>()V
aload 1
ldc "reply"
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/android/u/weibo/weibo/business/parser/ReplyInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
putfield com/android/u/weibo/weibo/business/bean/ToReply/reply Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
L0:
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/ToReplyParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/ToReply;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/android/u/weibo/weibo/business/bean/ToReply;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 1
ifnonnull L0
aconst_null
astore 2
L1:
aload 2
areturn
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
aload 3
ldc "exists"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ToReply/exists I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 3
astore 2
aload 1
getfield com/android/u/weibo/weibo/business/bean/ToReply/exists I
iconst_1
if_icmpne L1
aload 3
ldc "reply"
new com/android/u/weibo/weibo/business/parser/ReplyInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/ReplyInfoParser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/ToReply/reply Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
invokevirtual com/android/u/weibo/weibo/business/parser/ReplyInfoParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/ToReply
invokevirtual com/android/u/weibo/weibo/business/parser/ToReplyParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/ToReply;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method
