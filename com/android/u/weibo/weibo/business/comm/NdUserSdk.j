.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/comm/NdUserSdk
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public bindWeibo(Landroid/content/Context;J)Z
.throws java/io/IOException
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/BIND_WEIBO Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 1
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
aload 4
ldc "weibo_uid"
lload 2
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
aload 4
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoPost(Lorg/json/JSONObject;)I
sipush 200
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method public getUserPageInfo(Landroid/content/Context;J)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_USER_PAGE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
istore 4
aload 1
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
astore 1
iload 4
sipush 200
if_icmpne L0
new com/android/u/weibo/weibo/business/parser/UserPageInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/UserPageInfoParser/<init>()V
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/weibo/business/parser/UserPageInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
areturn
L0:
iload 4
sipush 404
if_icmpne L1
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 4
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
L1:
new com/android/u/weibo/weibo/controller/WeiBoException
dup
iload 4
aload 1
invokespecial com/android/u/weibo/weibo/controller/WeiBoException/<init>(ILjava/lang/String;)V
athrow
.limit locals 5
.limit stack 6
.end method

.method public getWeiboMsgUnreadCount(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
getstatic com/android/u/weibo/weibo/business/comm/WbRequireUrl/GET_WEIBO_MSG_UNREAD_COUNT Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new com/android/u/weibo/weibo/business/comm/NdHttpToolkit
dup
aload 1
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/business/comm/NdHttpToolkit/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 3
aload 3
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/DoGet()I
istore 2
new org/json/JSONObject
dup
aload 3
invokevirtual com/android/u/weibo/weibo/business/comm/NdHttpToolkit/getResponse()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 3
iload 2
sipush 200
if_icmpne L0
new com/android/u/weibo/weibo/business/parser/WbUnreadMsgInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/WbUnreadMsgInfoParser/<init>()V
aload 3
invokevirtual com/android/u/weibo/weibo/business/parser/WbUnreadMsgInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
areturn
L0:
aload 1
iload 2
aload 3
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/parseWeiboErrMsg(Landroid/content/Context;ILorg/json/JSONObject;)V
aconst_null
areturn
.limit locals 4
.limit stack 4
.end method

.method public setSinaUid(Landroid/content/Context;J)Z
.throws java/lang/IllegalStateException
.throws java/io/UnsupportedEncodingException
.throws java/io/IOException
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
aload 0
aload 1
lload 2
invokevirtual com/android/u/weibo/weibo/business/comm/NdUserSdk/bindWeibo(Landroid/content/Context;J)Z
ireturn
.limit locals 4
.limit stack 4
.end method
