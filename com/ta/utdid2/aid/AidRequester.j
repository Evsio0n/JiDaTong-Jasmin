.bytecode 50.0
.class public synchronized com/ta/utdid2/aid/AidRequester
.super java/lang/Object
.inner class PostRestThread inner com/ta/utdid2/aid/AidRequester$PostRestThread outer com/ta/utdid2/aid/AidRequester

.field private static final 'AIDFUNCNAME' Ljava/lang/String; = "/get_aid/"

.field private static final 'AIDSERVER' Ljava/lang/String; = "http://hydra.alibaba.com/"

.field private static final 'NAME_AID' Ljava/lang/String; = "&aid="

.field private static final 'NAME_ID' Ljava/lang/String; = "&id="

.field private static final 'NAME_RESULT_ACTION' Ljava/lang/String; = "action"

.field private static final 'NAME_RESULT_AID' Ljava/lang/String; = "aid"

.field private static final 'NAME_RESULT_ISERROR' Ljava/lang/String; = "isError"

.field private static final 'NAME_RESULT_STATUS' Ljava/lang/String; = "status"

.field private static final 'NAME_RESUTL_DATA' Ljava/lang/String; = "data"

.field private static final 'NAME_TOKEN' Ljava/lang/String; = "auth[token]="

.field private static final 'NAME_TYPE' Ljava/lang/String; = "&type="

.field private static final 'RSP_ACTION_CHANGED' Ljava/lang/String; = "changed"

.field private static final 'RSP_ACTION_NEW' Ljava/lang/String; = "new"

.field private static final 'RSP_ACTION_UNCHANGED' Ljava/lang/String; = "unchanged"

.field private static final 'RSP_ISERROR_FALSE' Ljava/lang/String; = "false"

.field private static final 'RSP_ISERROR_TRUE' Ljava/lang/String; = "true"

.field private static final 'RSP_STATUS_INVALID_APP' Ljava/lang/String; = "404"

.field private static final 'RSP_STATUS_INVALID_TOKEN' Ljava/lang/String; = "401"

.field private static final 'RSP_STATUS_OK' Ljava/lang/String; = "200"

.field private static final 'SESSION_TIME_OUT' I = 1000


.field private static final 'TAG' Ljava/lang/String;

.field private static final 'TYPE_UTDID' Ljava/lang/String; = "utdid"

.field private static final 'WEAK_SESSION_TIME_OUT' I = 3000


.field private static 'sAidRequester' Lcom/ta/utdid2/aid/AidRequester;

.field private 'mContext' Landroid/content/Context;

.field private 'mLock' Ljava/lang/Object;

.method static <clinit>()V
ldc com/ta/utdid2/aid/AidRequester
invokevirtual java/lang/Class/getName()Ljava/lang/String;
putstatic com/ta/utdid2/aid/AidRequester/TAG Ljava/lang/String;
aconst_null
putstatic com/ta/utdid2/aid/AidRequester/sAidRequester Lcom/ta/utdid2/aid/AidRequester;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putfield com/ta/utdid2/aid/AidRequester/mLock Ljava/lang/Object;
aload 0
aload 1
putfield com/ta/utdid2/aid/AidRequester/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$000()Ljava/lang/String;
getstatic com/ta/utdid2/aid/AidRequester/TAG Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method static synthetic access$100(Lcom/ta/utdid2/aid/AidRequester;)Ljava/lang/Object;
aload 0
getfield com/ta/utdid2/aid/AidRequester/mLock Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
invokestatic com/ta/utdid2/aid/AidRequester/getAidFromJsonRsp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/ta/utdid2/aid/AidRequester;)Landroid/content/Context;
aload 0
getfield com/ta/utdid2/aid/AidRequester/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private static getAidFromJsonRsp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch org/json/JSONException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
.catch org/json/JSONException from L1 to L4 using L2
.catch java/lang/Exception from L1 to L4 using L3
.catch org/json/JSONException from L4 to L5 using L2
.catch java/lang/Exception from L4 to L5 using L3
.catch org/json/JSONException from L5 to L6 using L2
.catch java/lang/Exception from L5 to L6 using L3
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L7
L0:
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 2
aload 2
ldc "data"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L4
aload 2
ldc "data"
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 0
aload 0
ldc "action"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L7
aload 0
ldc "aid"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L7
aload 0
ldc "action"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
ldc "new"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifne L1
aload 2
ldc "changed"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L7
L1:
aload 0
ldc "aid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
areturn
L4:
aload 2
ldc "isError"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L7
aload 2
ldc "status"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L7
aload 2
ldc "isError"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 0
aload 2
ldc "status"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 0
ldc "true"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L7
aload 2
ldc "404"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifne L5
aload 2
ldc "401"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L7
L5:
getstatic com/ta/utdid2/android/utils/DebugUtils/DBG Z
ifeq L6
getstatic com/ta/utdid2/aid/AidRequester/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "remove the AID, status:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L6:
ldc ""
areturn
L2:
astore 0
getstatic com/ta/utdid2/aid/AidRequester/TAG Ljava/lang/String;
aload 0
invokevirtual org/json/JSONException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
areturn
L3:
astore 0
getstatic com/ta/utdid2/aid/AidRequester/TAG Ljava/lang/String;
aload 0
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L7:
aload 1
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidRequester;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
ldc com/ta/utdid2/aid/AidRequester
monitorenter
L0:
getstatic com/ta/utdid2/aid/AidRequester/sAidRequester Lcom/ta/utdid2/aid/AidRequester;
ifnonnull L1
new com/ta/utdid2/aid/AidRequester
dup
aload 0
invokespecial com/ta/utdid2/aid/AidRequester/<init>(Landroid/content/Context;)V
putstatic com/ta/utdid2/aid/AidRequester/sAidRequester Lcom/ta/utdid2/aid/AidRequester;
L1:
getstatic com/ta/utdid2/aid/AidRequester/sAidRequester Lcom/ta/utdid2/aid/AidRequester;
astore 0
L3:
ldc com/ta/utdid2/aid/AidRequester
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/ta/utdid2/aid/AidRequester
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 3
.end method

.method private static getPostUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
L0:
aload 2
ldc "UTF-8"
invokestatic java/net/URLEncoder/encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 4
L1:
aload 4
astore 2
L3:
aload 5
ldc "http://hydra.alibaba.com/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/get_aid/?auth[token]="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&type=utdid&id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&aid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L2:
astore 4
aload 4
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
goto L3
.limit locals 6
.limit stack 2
.end method

.method public postRest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L1 to L3 using L4
.catch java/lang/Exception from L5 to L2 using L2
aload 1
aload 2
aload 3
aload 4
invokestatic com/ta/utdid2/aid/AidRequester/getPostUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 0
getfield com/ta/utdid2/aid/AidRequester/mContext Landroid/content/Context;
invokestatic com/ta/utdid2/android/utils/NetworkUtils/isConnectedToWeakNetwork(Landroid/content/Context;)Z
ifeq L6
sipush 3000
istore 5
L7:
getstatic com/ta/utdid2/android/utils/DebugUtils/DBG Z
ifeq L8
getstatic com/ta/utdid2/aid/AidRequester/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "url:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "; timeout:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L8:
new com/ta/utdid2/aid/AidRequester$PostRestThread
dup
aload 0
new org/apache/http/client/methods/HttpPost
dup
aload 1
invokespecial org/apache/http/client/methods/HttpPost/<init>(Ljava/lang/String;)V
invokespecial com/ta/utdid2/aid/AidRequester$PostRestThread/<init>(Lcom/ta/utdid2/aid/AidRequester;Lorg/apache/http/client/methods/HttpPost;)V
astore 1
aload 1
invokevirtual com/ta/utdid2/aid/AidRequester$PostRestThread/start()V
L0:
aload 0
getfield com/ta/utdid2/aid/AidRequester/mLock Ljava/lang/Object;
astore 2
aload 2
monitorenter
L1:
aload 0
getfield com/ta/utdid2/aid/AidRequester/mLock Ljava/lang/Object;
iload 5
i2l
invokevirtual java/lang/Object/wait(J)V
aload 2
monitorexit
L3:
aload 1
invokevirtual com/ta/utdid2/aid/AidRequester$PostRestThread/getResponseLine()Ljava/lang/String;
astore 1
getstatic com/ta/utdid2/android/utils/DebugUtils/DBG Z
ifeq L9
getstatic com/ta/utdid2/aid/AidRequester/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "mLine:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L9:
aload 1
aload 4
invokestatic com/ta/utdid2/aid/AidRequester/getAidFromJsonRsp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
L6:
sipush 1000
istore 5
goto L7
L4:
astore 3
L5:
aload 2
monitorexit
aload 3
athrow
L2:
astore 2
getstatic com/ta/utdid2/aid/AidRequester/TAG Ljava/lang/String;
aload 2
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L3
.limit locals 6
.limit stack 6
.end method

.method public postRestAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ut/device/AidCallback;)V
aload 1
aload 2
aload 3
aload 4
invokestatic com/ta/utdid2/aid/AidRequester/getPostUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
getstatic com/ta/utdid2/android/utils/DebugUtils/DBG Z
ifeq L0
getstatic com/ta/utdid2/aid/AidRequester/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "url:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "; len:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/String/length()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
new com/ta/utdid2/aid/AidRequester$PostRestThread
dup
aload 0
new org/apache/http/client/methods/HttpPost
dup
aload 3
invokespecial org/apache/http/client/methods/HttpPost/<init>(Ljava/lang/String;)V
aload 5
aload 4
aload 1
aload 2
invokespecial com/ta/utdid2/aid/AidRequester$PostRestThread/<init>(Lcom/ta/utdid2/aid/AidRequester;Lorg/apache/http/client/methods/HttpPost;Lcom/ut/device/AidCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invokevirtual com/ta/utdid2/aid/AidRequester$PostRestThread/start()V
return
.limit locals 6
.limit stack 8
.end method
