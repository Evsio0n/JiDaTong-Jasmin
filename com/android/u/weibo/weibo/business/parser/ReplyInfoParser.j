.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/parser/ReplyInfoParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractObjParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/bean/ReplyInfo
dup
invokespecial com/android/u/weibo/weibo/business/bean/ReplyInfo/<init>()V
astore 2
aload 1
ifnonnull L0
aload 2
new com/product/android/commonInterface/weibo/WbUserInfo
dup
invokespecial com/product/android/commonInterface/weibo/WbUserInfo/<init>()V
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
L1:
aload 2
areturn
L0:
aload 2
aload 1
ldc "rid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
aload 2
aload 1
ldc "content"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/content Ljava/lang/String;
aload 2
aload 1
ldc "post_time"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
aload 2
aload 1
ldc "from_string"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/from_string Ljava/lang/String;
aload 2
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/uid J
aload 2
new com/product/android/commonInterface/weibo/parser/WbUserInfoParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/WbUserInfoParser/<init>()V
aload 1
ldc "user"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/WbUserInfo;
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 2
aload 1
ldc "to_tid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_tid J
aload 1
ldc "to_topic"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 3
aload 3
ifnull L2
aload 2
new com/android/u/weibo/weibo/business/parser/RootTopicParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/RootTopicParser/<init>()V
aload 3
invokevirtual com/android/u/weibo/weibo/business/parser/RootTopicParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/RootTopic;
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
L2:
aload 2
aload 1
ldc "to_rid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_rid J
aload 1
ldc "to_reply"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
aload 1
ifnull L1
aload 2
new com/android/u/weibo/weibo/business/parser/ToReplyParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/ToReplyParser/<init>()V
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/ToReplyParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/ToReply;
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_reply Lcom/android/u/weibo/weibo/business/bean/ToReply;
aload 2
areturn
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/ReplyInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)Lorg/json/JSONObject;
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
ldc "rid"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "content"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/content Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "post_time"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "from_string"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/from_string Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "uid"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/uid J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
ifnull L2
aload 2
ldc "user"
new com/product/android/commonInterface/weibo/parser/WbUserInfoParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/WbUserInfoParser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/toJSONObject(Lcom/product/android/commonInterface/weibo/WbUserInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L2:
aload 2
ldc "rid"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_reply Lcom/android/u/weibo/weibo/business/bean/ToReply;
ifnull L1
aload 2
ldc "to_reply"
new com/android/u/weibo/weibo/business/parser/ToReplyParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/ToReplyParser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_reply Lcom/android/u/weibo/weibo/business/bean/ToReply;
invokevirtual com/android/u/weibo/weibo/business/parser/ToReplyParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/ToReply;)Lorg/json/JSONObject;
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
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
invokevirtual com/android/u/weibo/weibo/business/parser/ReplyInfoParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method
