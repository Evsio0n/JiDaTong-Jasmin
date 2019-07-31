.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/comm/NdBaseSdk
.super java/lang/Object

.field public static final 'ID_MAX' J

.field public static final 'PAGE_SIZE' I = 20


.method static <clinit>()V
getstatic com/product/android/business/config/Configuration/DEBUG Z
ifeq L0
ldc2_w 2147483647L
lstore 0
L1:
lload 0
putstatic com/android/u/weibo/weibo/business/comm/NdBaseSdk/ID_MAX J
return
L0:
ldc2_w 9223372036854775807L
lstore 0
goto L1
.limit locals 2
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static addSidAndUid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
aload 0
new java/lang/StringBuilder
dup
aload 1
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokestatic com/android/u/weibo/weibo/business/comm/NdBaseSdk/addSidAndUid(Landroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method

.method public static addSidAndUid(Landroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;
aload 1
ldc "?"
invokevirtual java/lang/StringBuilder/indexOf(Ljava/lang/String;)I
iconst_m1
if_icmpeq L0
aload 1
ldc "&cuid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L1:
aload 1
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getSid(Landroid/content/Context;)Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getSid(Landroid/content/Context;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L3:
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
aload 1
ldc "?cuid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L1
L2:
ldc "addSidAndUid"
ldc "sid is null"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L3
.limit locals 2
.limit stack 3
.end method

.method public addIdMaxParam(Ljava/lang/StringBuilder;J)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 0
lload 2
invokevirtual com/android/u/weibo/weibo/business/comm/NdBaseSdk/checkIsValidParam(J)Z
ifeq L1
aload 1
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "id_max"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
return
.limit locals 4
.limit stack 3
.end method

.method public addIdMinParam(Ljava/lang/StringBuilder;J)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 0
lload 2
invokevirtual com/android/u/weibo/weibo/business/comm/NdBaseSdk/checkIsValidParam(J)Z
ifeq L1
aload 1
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "id_min"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 2
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
return
.limit locals 4
.limit stack 3
.end method

.method public addRequestParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
aload 1
ifnonnull L0
return
L0:
aload 1
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
return
.limit locals 4
.limit stack 2
.end method

.method public checkIsValidParam(J)Z
lload 1
lconst_0
lcmp
ifle L0
lload 1
getstatic com/android/u/weibo/weibo/business/comm/NdBaseSdk/ID_MAX J
lcmp
ifge L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method

.method protected parseAtReplyInfoListFromResponse(Landroid/content/Context;ILjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new org/json/JSONObject
dup
aload 3
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 3
iload 2
sipush 200
if_icmpne L0
aload 3
ldc "replylist"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
aload 1
ifnull L1
aload 1
invokevirtual org/json/JSONArray/length()I
ifne L2
L1:
new com/android/u/weibo/weibo/business/bean/ReplyInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/ReplyInfoList/<init>()V
areturn
L2:
new com/android/u/weibo/weibo/business/parser/AtReplyInfoListParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/AtReplyInfoListParser/<init>()V
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/AtReplyInfoListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
astore 1
aload 1
aload 3
ldc "total"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/ReplyInfoList/mTotal I
aload 1
areturn
L0:
aload 1
iload 2
aload 3
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/parseWeiboErrMsg(Landroid/content/Context;ILorg/json/JSONObject;)V
aconst_null
areturn
.limit locals 4
.limit stack 3
.end method

.method protected parseAtTopicInfoListFromResponse(Landroid/content/Context;ILjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new org/json/JSONObject
dup
aload 3
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 3
iload 2
sipush 200
if_icmpne L0
aload 3
ldc "topics"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
aload 1
ifnull L1
aload 1
invokevirtual org/json/JSONArray/length()I
ifne L2
L1:
new com/android/u/weibo/weibo/business/bean/TopicInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfoList/<init>()V
areturn
L2:
new com/android/u/weibo/weibo/business/parser/AtTopicInfoListParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/AtTopicInfoListParser/<init>()V
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/AtTopicInfoListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 1
aload 1
aload 3
ldc "total"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/TopicInfoList/mTotal I
aload 1
areturn
L0:
aload 1
iload 2
aload 3
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/parseWeiboErrMsg(Landroid/content/Context;ILorg/json/JSONObject;)V
aconst_null
areturn
.limit locals 4
.limit stack 3
.end method

.method protected parseReplyInfoFromResponse(Landroid/content/Context;ILjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new org/json/JSONObject
dup
aload 3
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 3
iload 2
sipush 200
if_icmpne L0
new com/android/u/weibo/weibo/business/parser/ReplyInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/ReplyInfoParser/<init>()V
aload 3
invokevirtual com/android/u/weibo/weibo/business/parser/ReplyInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
areturn
L0:
aload 1
iload 2
aload 3
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/parseWeiboErrMsg(Landroid/content/Context;ILorg/json/JSONObject;)V
aconst_null
areturn
.limit locals 4
.limit stack 3
.end method

.method protected parseReplyInfoListFromResponse(Landroid/content/Context;ILjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new org/json/JSONObject
dup
aload 3
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 3
iload 2
sipush 200
if_icmpne L0
aload 3
ldc "replylist"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
aload 1
ifnull L1
aload 1
invokevirtual org/json/JSONArray/length()I
ifne L2
L1:
new com/android/u/weibo/weibo/business/bean/ReplyInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/ReplyInfoList/<init>()V
astore 1
L3:
aload 1
aload 3
ldc "total"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/ReplyInfoList/mTotal I
aload 1
areturn
L2:
new com/android/u/weibo/weibo/business/parser/ReplyInfoListParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/ReplyInfoListParser/<init>()V
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/ReplyInfoListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
astore 1
goto L3
L0:
aload 1
iload 2
aload 3
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/parseWeiboErrMsg(Landroid/content/Context;ILorg/json/JSONObject;)V
aconst_null
areturn
.limit locals 4
.limit stack 3
.end method

.method protected parseTopicInfoFromResponse(Landroid/content/Context;ILjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new org/json/JSONObject
dup
aload 3
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 3
iload 2
sipush 200
if_icmpne L0
new com/android/u/weibo/weibo/business/parser/TopicInfoParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoParser/<init>()V
aload 3
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
areturn
L0:
aload 1
iload 2
aload 3
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/parseWeiboErrMsg(Landroid/content/Context;ILorg/json/JSONObject;)V
aconst_null
areturn
.limit locals 4
.limit stack 3
.end method

.method protected parseTopicInfoListFromResponse(Landroid/content/Context;ILjava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
.throws org/json/JSONException
.throws com/android/u/weibo/weibo/controller/WeiBoException
new org/json/JSONObject
dup
aload 3
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 3
iload 2
sipush 200
if_icmpne L0
aload 3
ldc "topics"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
aload 1
ifnull L1
aload 1
invokevirtual org/json/JSONArray/length()I
ifne L2
L1:
new com/android/u/weibo/weibo/business/bean/TopicInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfoList/<init>()V
astore 1
L3:
aload 1
aload 3
ldc "total"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/TopicInfoList/mTotal I
aload 1
areturn
L2:
new com/android/u/weibo/weibo/business/parser/TopicInfoListParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/TopicInfoListParser/<init>()V
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 1
goto L3
L0:
aload 1
iload 2
aload 3
invokestatic com/android/u/weibo/weibo/business/comm/NdHttpToolkit/parseWeiboErrMsg(Landroid/content/Context;ILorg/json/JSONObject;)V
aconst_null
areturn
.limit locals 4
.limit stack 3
.end method
