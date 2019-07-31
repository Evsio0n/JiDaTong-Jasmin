.bytecode 50.0
.class public synchronized com/nd/rj/common/suggest/communication/suggestCom
.super java/lang/Object

.field private static 'mCom' Lcom/nd/rj/common/suggest/communication/suggestCom;

.field private final 'ADVISE_URL' Ljava/lang/String;

.field private final 'GETANSWER_URL' Ljava/lang/String;

.field private final 'SENDSUGGEST_URL' Ljava/lang/String;

.field private 'mHttpRequest' Lcom/common/android/utils/httpRequest/IHttpRequest;

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "http://api.fk.rj.99.com/"
putfield com/nd/rj/common/suggest/communication/suggestCom/ADVISE_URL Ljava/lang/String;
aload 0
ldc "sendsuggest"
putfield com/nd/rj/common/suggest/communication/suggestCom/SENDSUGGEST_URL Ljava/lang/String;
aload 0
ldc "getanswer"
putfield com/nd/rj/common/suggest/communication/suggestCom/GETANSWER_URL Ljava/lang/String;
aload 0
aload 1
invokestatic com/common/android/utils/httpRequest/HttpRequest/getInstance(Landroid/content/Context;)Lcom/common/android/utils/httpRequest/IHttpRequest;
putfield com/nd/rj/common/suggest/communication/suggestCom/mHttpRequest Lcom/common/android/utils/httpRequest/IHttpRequest;
return
.limit locals 2
.limit stack 2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nd/rj/common/suggest/communication/suggestCom;
getstatic com/nd/rj/common/suggest/communication/suggestCom/mCom Lcom/nd/rj/common/suggest/communication/suggestCom;
ifnonnull L0
new com/nd/rj/common/suggest/communication/suggestCom
dup
aload 0
invokespecial com/nd/rj/common/suggest/communication/suggestCom/<init>(Landroid/content/Context;)V
putstatic com/nd/rj/common/suggest/communication/suggestCom/mCom Lcom/nd/rj/common/suggest/communication/suggestCom;
L0:
getstatic com/nd/rj/common/suggest/communication/suggestCom/mCom Lcom/nd/rj/common/suggest/communication/suggestCom;
areturn
.limit locals 1
.limit stack 3
.end method

.method public addNewSuggest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 10
L0:
aload 10
ldc "productid"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "product"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "localid"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "questno"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "quest"
aload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "app_version"
aload 6
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "type"
getstatic android/os/Build/MODEL Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "os"
ldc "Android"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 10
ldc "os_version"
getstatic android/os/Build$VERSION/RELEASE Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new java/text/SimpleDateFormat
dup
ldc "yyyy-MM-dd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 124
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 4
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 124
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 4
aload 2
new java/util/Date
dup
invokestatic java/lang/System/currentTimeMillis()J
invokespecial java/util/Date/<init>(J)V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 124
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
aload 4
ldc "736datyh378j4f63ws9bd0c8e54278bv"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 10
ldc "chkcode"
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/rj/common/util/ComfunHelp/Md5Digest(Ljava/lang/String;)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 1
ldc "http://api.fk.rj.99.com/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "sendsuggest"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/rj/common/suggest/communication/suggestCom/mHttpRequest Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 10
aload 7
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I 3
istore 8
L1:
iload 8
istore 9
iload 8
sipush 200
if_icmpne L3
iconst_0
istore 9
L3:
iload 9
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/nd/rj/common/R$string/nd_json_error I
ireturn
.limit locals 11
.limit stack 6
.end method

.method public getAnswer(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/StringBuilder;)I
.catch org/json/JSONException from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 7
L0:
aload 7
ldc "productid"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "localid"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "vecquestno"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 1
ldc "http://api.fk.rj.99.com/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "getanswer"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/nd/rj/common/suggest/communication/suggestCom/mHttpRequest Lcom/common/android/utils/httpRequest/IHttpRequest;
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 7
aload 4
invokeinterface com/common/android/utils/httpRequest/IHttpRequest/doPost(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)I 3
istore 5
L1:
iload 5
istore 6
iload 5
sipush 200
if_icmpne L3
iconst_0
istore 6
L3:
iload 6
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
getstatic com/nd/rj/common/R$string/nd_json_error I
ireturn
.limit locals 8
.limit stack 4
.end method
