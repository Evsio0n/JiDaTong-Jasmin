.bytecode 50.0
.class public synchronized com/bestpay/util/JsonUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static jsonToAccount(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/bestpay/db/AccountInfo;>;"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 3
L1:
aload 2
astore 0
L3:
aload 3
ldc "success"
invokevirtual org/json/JSONObject/isNull(Ljava/lang/String;)Z
ifne L13
L4:
aload 2
astore 0
L5:
aload 3
ldc "success"
invokevirtual org/json/JSONObject/optBoolean(Ljava/lang/String;)Z
ifeq L13
L6:
aload 2
astore 0
L7:
aload 3
ldc "result"
invokevirtual org/json/JSONObject/isNull(Ljava/lang/String;)Z
ifne L13
aload 3
ldc "result"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 0
L8:
iconst_0
istore 1
L9:
iload 1
aload 0
invokevirtual org/json/JSONArray/length()I
if_icmplt L11
L10:
aload 2
areturn
L11:
aload 0
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 3
new com/bestpay/db/AccountInfo
dup
invokespecial com/bestpay/db/AccountInfo/<init>()V
astore 4
aload 4
aload 3
ldc "tid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/bestpay/db/AccountInfo/setTid(Ljava/lang/String;)V
aload 4
aload 3
ldc "key_index"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/bestpay/db/AccountInfo/setKey_index(Ljava/lang/String;)V
aload 4
aload 3
ldc "key_tid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/bestpay/db/AccountInfo/setKey_tid(Ljava/lang/String;)V
aload 2
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L12:
iload 1
iconst_1
iadd
istore 1
goto L9
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
astore 0
L13:
aload 0
areturn
.limit locals 5
.limit stack 3
.end method
