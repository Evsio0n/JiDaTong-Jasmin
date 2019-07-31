.bytecode 50.0
.class public final synchronized com/alipay/apmobilesecuritysdk/a/a/b
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
.signature "(Ljava/lang/String;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
L0:
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 0
aload 0
invokevirtual org/json/JSONObject/keys()Ljava/util/Iterator;
astore 1
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 2
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 3
aload 2
aload 3
aload 0
aload 3
invokevirtual org/json/JSONObject/get(Ljava/lang/String;)Ljava/lang/Object;
checkcast java/lang/String
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L3:
goto L1
L2:
astore 0
aconst_null
areturn
L4:
aload 2
areturn
.limit locals 4
.limit stack 4
.end method
