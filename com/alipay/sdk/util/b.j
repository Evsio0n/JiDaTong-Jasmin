.bytecode 50.0
.class public final synchronized com/alipay/sdk/util/b
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L6 to L7 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
iconst_2
anewarray org/json/JSONObject
astore 5
L1:
aload 5
iconst_0
aload 0
aastore
aload 5
iconst_1
aload 1
aastore
L3:
aload 5
arraylength
istore 3
L4:
iconst_0
istore 2
L8:
iload 2
iload 3
if_icmpge L9
aload 5
iload 2
aaload
astore 0
aload 0
ifnull L10
L5:
aload 0
invokevirtual org/json/JSONObject/keys()Ljava/util/Iterator;
astore 1
L6:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L10
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 6
aload 4
aload 6
aload 0
aload 6
invokevirtual org/json/JSONObject/get(Ljava/lang/String;)Ljava/lang/Object;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L7:
goto L6
L2:
astore 0
L9:
aload 4
areturn
L10:
iload 2
iconst_1
iadd
istore 2
goto L8
.limit locals 7
.limit stack 4
.end method
