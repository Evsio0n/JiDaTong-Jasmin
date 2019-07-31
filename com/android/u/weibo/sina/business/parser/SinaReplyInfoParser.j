.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/parser/SinaReplyInfoParser
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
L1:
aload 2
areturn
L0:
aload 1
ldc "created_at"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/length()I
bipush 15
if_icmple L2
aload 2
aload 1
ldc "created_at"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
ldc "EEE MMM dd HH:mm:ss z yyyy"
invokestatic com/android/u/weibo/sina/utils/SinaUtil/sinaDate2Long(Ljava/lang/String;Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
L3:
aload 2
aload 1
ldc "id"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
aload 2
aload 1
ldc "text"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/content Ljava/lang/String;
aload 1
ldc "source"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/xiaoyou I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L4
aload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/nd_91u I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L5
L4:
aload 2
aload 3
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/from_string Ljava/lang/String;
L6:
aload 2
new com/android/u/weibo/sina/business/parser/SinaUserParser
dup
invokespecial com/android/u/weibo/sina/business/parser/SinaUserParser/<init>()V
aload 1
ldc "user"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/android/u/weibo/sina/business/parser/SinaUserParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/WbUserInfo;
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 2
iconst_1
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/isOnlySina Z
aload 1
ldc "status"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 3
aload 3
ifnull L7
aload 2
new com/android/u/weibo/weibo/business/bean/RootTopic
dup
invokespecial com/android/u/weibo/weibo/business/bean/RootTopic/<init>()V
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
aload 2
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
iconst_1
putfield com/android/u/weibo/weibo/business/bean/RootTopic/exists I
aload 2
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
new com/android/u/weibo/sina/business/parser/StatusParser
dup
invokespecial com/android/u/weibo/sina/business/parser/StatusParser/<init>()V
aload 3
invokevirtual com/android/u/weibo/sina/business/parser/StatusParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
putfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 2
aload 2
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_tid J
aload 2
aload 2
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/uid J
L7:
aload 1
ldc "reply_comment"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
aload 1
ifnull L1
aload 2
new com/android/u/weibo/weibo/business/bean/ToReply
dup
invokespecial com/android/u/weibo/weibo/business/bean/ToReply/<init>()V
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_reply Lcom/android/u/weibo/weibo/business/bean/ToReply;
aload 2
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_reply Lcom/android/u/weibo/weibo/business/bean/ToReply;
iconst_1
putfield com/android/u/weibo/weibo/business/bean/ToReply/exists I
aload 2
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_reply Lcom/android/u/weibo/weibo/business/bean/ToReply;
new com/android/u/weibo/sina/business/parser/SinaReplyInfoParser
dup
invokespecial com/android/u/weibo/sina/business/parser/SinaReplyInfoParser/<init>()V
aload 1
invokevirtual com/android/u/weibo/sina/business/parser/SinaReplyInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
putfield com/android/u/weibo/weibo/business/bean/ToReply/reply Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
aload 2
aload 2
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_reply Lcom/android/u/weibo/weibo/business/bean/ToReply;
getfield com/android/u/weibo/weibo/business/bean/ToReply/reply Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_rid J
aload 2
areturn
L2:
aload 2
aload 1
ldc "created_at"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
goto L3
L5:
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/from_sina I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/ReplyInfo/from_string Ljava/lang/String;
goto L6
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/sina/business/parser/SinaReplyInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
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
ldc "id"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/rid J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "text"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/content Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "created_at"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/post_time J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "source"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/from_string Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
ifnull L2
aload 2
ldc "user"
new com/android/u/weibo/sina/business/parser/SinaUserParser
dup
invokespecial com/android/u/weibo/sina/business/parser/SinaUserParser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
invokevirtual com/android/u/weibo/sina/business/parser/SinaUserParser/toJSONObject(Lcom/product/android/commonInterface/weibo/WbUserInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L2:
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_reply Lcom/android/u/weibo/weibo/business/bean/ToReply;
ifnull L3
aload 2
ldc "reply_comment"
new com/android/u/weibo/sina/business/parser/SinaReplyInfoParser
dup
invokespecial com/android/u/weibo/sina/business/parser/SinaReplyInfoParser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_reply Lcom/android/u/weibo/weibo/business/bean/ToReply;
getfield com/android/u/weibo/weibo/business/bean/ToReply/reply Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
invokevirtual com/android/u/weibo/sina/business/parser/SinaReplyInfoParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
ifnull L1
aload 2
ldc "status"
new com/android/u/weibo/sina/business/parser/StatusParser
dup
invokespecial com/android/u/weibo/sina/business/parser/StatusParser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokevirtual com/android/u/weibo/sina/business/parser/StatusParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lorg/json/JSONObject;
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
invokevirtual com/android/u/weibo/sina/business/parser/SinaReplyInfoParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method
