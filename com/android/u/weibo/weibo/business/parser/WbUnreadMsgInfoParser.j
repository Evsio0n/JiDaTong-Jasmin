.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/parser/WbUnreadMsgInfoParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractObjParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo
dup
invokespecial com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/<init>()V
astore 2
aload 2
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/uid I
aload 2
aload 1
ldc "t_at"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_at I
aload 2
aload 1
ldc "cmt"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt I
aload 2
aload 1
ldc "cmt_at"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt_at I
aload 2
aload 1
ldc "t_praised"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_praise I
aload 2
aload 1
ldc "fans"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/fans I
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/WbUnreadMsgInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 1
ifnull L0
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
aload 2
ldc "uid"
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/uid I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "t_at"
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_at I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "cmt"
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "cmt_at"
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt_at I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "t_praised"
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_praise I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "fans"
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/fans I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo
invokevirtual com/android/u/weibo/weibo/business/parser/WbUnreadMsgInfoParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method
