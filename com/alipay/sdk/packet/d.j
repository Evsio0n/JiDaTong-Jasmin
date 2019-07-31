.bytecode 50.0
.class public synchronized abstract com/alipay/sdk/packet/d
.super java/lang/Object

.field public static final 'a' Ljava/lang/String; = "msp-gzip"

.field public static final 'b' Ljava/lang/String; = "Msp-Param"

.field public static final 'c' Ljava/lang/String; = "Operation-Type"

.field public static final 'd' Ljava/lang/String; = "content-type"

.field public static final 'e' Ljava/lang/String; = "Version"

.field public static final 'f' Ljava/lang/String; = "AppId"

.field public static final 'g' Ljava/lang/String; = "des-mode"

.field public static final 'h' Ljava/lang/String; = "namespace"

.field public static final 'i' Ljava/lang/String; = "api_name"

.field public static final 'j' Ljava/lang/String; = "api_version"

.field public static final 'k' Ljava/lang/String; = "data"

.field public static final 'l' Ljava/lang/String; = "params"

.field public static final 'm' Ljava/lang/String; = "public_key"

.field public static final 'n' Ljava/lang/String; = "device"

.field public static final 'o' Ljava/lang/String; = "action"

.field public static final 'p' Ljava/lang/String; = "type"

.field public static final 'q' Ljava/lang/String; = "method"

.field private static 't' Lcom/alipay/sdk/net/a;

.field protected 'r' Z

.field protected 's' Z

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/alipay/sdk/packet/d/r Z
aload 0
iconst_1
putfield com/alipay/sdk/packet/d/s Z
return
.limit locals 1
.limit stack 2
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;
.throws java/lang/Throwable
aload 0
aload 1
aload 2
aload 3
iconst_1
invokevirtual com/alipay/sdk/packet/d/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/sdk/packet/b;
areturn
.limit locals 4
.limit stack 5
.end method

.method protected static a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;
.signature "(Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)Ljava/lang/String;"
.throws org/json/JSONException
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
aload 0
ifnull L0
aload 0
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 0
L1:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 4
aload 3
aload 4
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
aload 4
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
goto L1
L0:
aload 1
ifnull L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 0
aload 1
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L3:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 4
aload 0
aload 4
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
aload 4
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
goto L3
L4:
aload 3
ldc "params"
aload 0
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L2:
aload 2
ldc "data"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
areturn
.limit locals 5
.limit stack 3
.end method

.method private static a(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;
aload 0
ifnull L0
aload 1
ifnonnull L1
L0:
aconst_null
areturn
L1:
aload 0
invokeinterface org/apache/http/HttpResponse/getAllHeaders()[Lorg/apache/http/Header; 0
astore 0
aload 0
ifnull L0
aload 0
arraylength
ifle L0
aload 0
arraylength
istore 3
iconst_0
istore 2
L2:
iload 2
iload 3
if_icmpge L0
aload 0
iload 2
aaload
astore 4
aload 4
ifnull L3
aload 4
invokeinterface org/apache/http/Header/getName()Ljava/lang/String; 0
astore 5
aload 5
ifnull L3
aload 5
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L3
aload 4
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
areturn
L3:
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 6
.limit stack 2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
.throws org/json/JSONException
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
aload 3
ldc "type"
aload 0
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ldc "method"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "action"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
areturn
.limit locals 4
.limit stack 3
.end method

.method private static a(Ljava/lang/String;)Z
.catch org/json/JSONException from L0 to L1 using L2
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L3:
iconst_0
ireturn
L0:
new org/json/JSONObject
dup
aload 0
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "data"
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 0
aload 0
ldc "params"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L3
aload 0
ldc "params"
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
ldc "public_key"
aconst_null
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
pop
invokestatic com/alipay/sdk/data/c/a()Lcom/alipay/sdk/data/c;
aload 0
invokevirtual com/alipay/sdk/data/c/a(Ljava/lang/String;)V
L1:
iconst_1
ireturn
L2:
astore 0
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Z
aconst_null
astore 3
aload 0
ifnonnull L0
aload 3
astore 0
L1:
aload 0
invokestatic java/lang/Boolean/valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
invokevirtual java/lang/Boolean/booleanValue()Z
ireturn
L0:
aload 0
invokeinterface org/apache/http/HttpResponse/getAllHeaders()[Lorg/apache/http/Header; 0
astore 4
aload 3
astore 0
aload 4
ifnull L1
aload 3
astore 0
aload 4
arraylength
ifle L1
aload 4
arraylength
istore 2
iconst_0
istore 1
L2:
aload 3
astore 0
iload 1
iload 2
if_icmpge L1
aload 4
iload 1
aaload
astore 0
aload 0
ifnull L3
aload 0
invokeinterface org/apache/http/Header/getName()Ljava/lang/String; 0
astore 5
aload 5
ifnull L3
aload 5
ldc "msp-gzip"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L3
aload 0
invokeinterface org/apache/http/Header/getValue()Ljava/lang/String; 0
astore 0
goto L1
L3:
iload 1
iconst_1
iadd
istore 1
goto L2
.limit locals 6
.limit stack 2
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/net/a;
getstatic com/alipay/sdk/packet/d/t Lcom/alipay/sdk/net/a;
ifnonnull L0
new com/alipay/sdk/net/a
dup
aload 0
aload 1
invokespecial com/alipay/sdk/net/a/<init>(Landroid/content/Context;Ljava/lang/String;)V
putstatic com/alipay/sdk/packet/d/t Lcom/alipay/sdk/net/a;
L1:
getstatic com/alipay/sdk/packet/d/t Lcom/alipay/sdk/net/a;
areturn
L0:
aload 1
getstatic com/alipay/sdk/packet/d/t Lcom/alipay/sdk/net/a;
getfield com/alipay/sdk/net/a/b Ljava/lang/String;
invokestatic android/text/TextUtils/equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
ifne L1
getstatic com/alipay/sdk/packet/d/t Lcom/alipay/sdk/net/a;
aload 1
putfield com/alipay/sdk/net/a/b Ljava/lang/String;
goto L1
.limit locals 2
.limit stack 4
.end method

.method private static b(Lorg/apache/http/HttpResponse;)[B
.throws java/lang/IllegalStateException
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L4
.catch all from L3 to L5 using L6
.catch all from L7 to L8 using L6
.catch java/lang/Exception from L9 to L10 using L11
.catch java/lang/Exception from L12 to L13 using L14
.catch all from L15 to L16 using L6
.catch java/lang/Exception from L17 to L18 using L19
.catch java/lang/Exception from L18 to L20 using L21
aconst_null
astore 3
sipush 1024
newarray byte
astore 4
L0:
aload 0
invokeinterface org/apache/http/HttpResponse/getEntity()Lorg/apache/http/HttpEntity; 0
invokeinterface org/apache/http/HttpEntity/getContent()Ljava/io/InputStream; 0
astore 2
L1:
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 0
L3:
aload 2
aload 4
invokevirtual java/io/InputStream/read([B)I
istore 1
L5:
iload 1
iconst_m1
if_icmpeq L15
L7:
aload 0
aload 4
iconst_0
iload 1
invokevirtual java/io/ByteArrayOutputStream/write([BII)V
L8:
goto L3
L6:
astore 4
aload 0
astore 3
aload 4
astore 0
L22:
aload 2
ifnull L10
L9:
aload 2
invokevirtual java/io/InputStream/close()V
L10:
aload 3
ifnull L13
L12:
aload 3
invokevirtual java/io/ByteArrayOutputStream/close()V
L13:
aload 0
athrow
L15:
aload 0
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
astore 3
L16:
aload 2
ifnull L18
L17:
aload 2
invokevirtual java/io/InputStream/close()V
L18:
aload 0
invokevirtual java/io/ByteArrayOutputStream/close()V
L20:
aload 3
areturn
L19:
astore 2
goto L18
L21:
astore 0
aload 3
areturn
L11:
astore 2
goto L10
L14:
astore 2
goto L13
L2:
astore 0
aconst_null
astore 2
goto L22
L4:
astore 0
goto L22
.limit locals 5
.limit stack 4
.end method

.method public final a(Landroid/content/Context;)Lcom/alipay/sdk/packet/b;
.throws java/lang/Throwable
aload 0
aload 1
ldc ""
getstatic com/alipay/sdk/cons/a/a Ljava/lang/String;
iconst_1
invokevirtual com/alipay/sdk/packet/d/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/sdk/packet/b;
areturn
.limit locals 2
.limit stack 5
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;
.throws java/lang/Throwable
aload 0
aload 1
aload 2
getstatic com/alipay/sdk/cons/a/a Ljava/lang/String;
iconst_1
invokevirtual com/alipay/sdk/packet/d/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/sdk/packet/b;
areturn
.limit locals 3
.limit stack 5
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/sdk/packet/b;
.throws java/lang/Throwable
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L1 to L3 using L2
.catch java/lang/Throwable from L4 to L5 using L2
.catch java/lang/Throwable from L6 to L7 using L2
.catch java/lang/Throwable from L7 to L8 using L2
new java/lang/StringBuilder
dup
ldc "PacketTask::request url >"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
new com/alipay/sdk/packet/e
dup
aload 0
getfield com/alipay/sdk/packet/d/s Z
invokespecial com/alipay/sdk/packet/e/<init>(Z)V
astore 5
L0:
aload 5
new com/alipay/sdk/packet/b
dup
aload 0
invokevirtual com/alipay/sdk/packet/d/c()Ljava/lang/String;
aload 0
aload 2
aload 0
invokevirtual com/alipay/sdk/packet/d/a()Lorg/json/JSONObject;
invokevirtual com/alipay/sdk/packet/d/a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
invokespecial com/alipay/sdk/packet/b/<init>(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/packet/d/r Z
invokevirtual com/alipay/sdk/packet/e/a(Lcom/alipay/sdk/packet/b;Z)Lcom/alipay/sdk/packet/c;
astore 6
getstatic com/alipay/sdk/packet/d/t Lcom/alipay/sdk/net/a;
ifnonnull L7
new com/alipay/sdk/net/a
dup
aload 1
aload 3
invokespecial com/alipay/sdk/net/a/<init>(Landroid/content/Context;Ljava/lang/String;)V
putstatic com/alipay/sdk/packet/d/t Lcom/alipay/sdk/net/a;
L1:
getstatic com/alipay/sdk/packet/d/t Lcom/alipay/sdk/net/a;
astore 7
aload 0
aload 6
getfield com/alipay/sdk/packet/c/a Z
aload 2
invokevirtual com/alipay/sdk/packet/d/a(ZLjava/lang/String;)Ljava/util/List;
astore 8
aload 7
aload 6
getfield com/alipay/sdk/packet/c/b [B
aload 8
invokevirtual com/alipay/sdk/net/a/a([BLjava/util/List;)Lorg/apache/http/HttpResponse;
astore 6
aload 5
new com/alipay/sdk/packet/c
dup
aload 6
invokestatic com/alipay/sdk/packet/d/a(Lorg/apache/http/HttpResponse;)Z
aload 6
invokestatic com/alipay/sdk/packet/d/b(Lorg/apache/http/HttpResponse;)[B
invokespecial com/alipay/sdk/packet/c/<init>(Z[B)V
invokevirtual com/alipay/sdk/packet/e/a(Lcom/alipay/sdk/packet/c;)Lcom/alipay/sdk/packet/b;
astore 5
L3:
aload 5
ifnull L9
L4:
aload 5
getfield com/alipay/sdk/packet/b/a Ljava/lang/String;
invokestatic com/alipay/sdk/packet/d/a(Ljava/lang/String;)Z
ifeq L9
L5:
iload 4
ifeq L9
L6:
aload 0
aload 1
aload 2
aload 3
iconst_0
invokevirtual com/alipay/sdk/packet/d/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/sdk/packet/b;
areturn
L7:
aload 3
getstatic com/alipay/sdk/packet/d/t Lcom/alipay/sdk/net/a;
getfield com/alipay/sdk/net/a/b Ljava/lang/String;
invokestatic android/text/TextUtils/equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
ifne L1
getstatic com/alipay/sdk/packet/d/t Lcom/alipay/sdk/net/a;
aload 3
putfield com/alipay/sdk/net/a/b Ljava/lang/String;
L8:
goto L1
L2:
astore 1
aload 1
athrow
L9:
aload 5
areturn
.limit locals 9
.limit stack 7
.end method

.method protected a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L1 to L3 using L2
.catch java/lang/Throwable from L4 to L5 using L2
.catch java/lang/Throwable from L5 to L6 using L2
.catch java/lang/Throwable from L7 to L8 using L2
.catch java/lang/Throwable from L9 to L10 using L2
.catch java/lang/Throwable from L10 to L11 using L2
.catch java/lang/Throwable from L12 to L13 using L2
.catch java/lang/Throwable from L13 to L14 using L2
.catch java/lang/Throwable from L15 to L16 using L2
.catch java/lang/Throwable from L16 to L17 using L2
.catch java/lang/Throwable from L18 to L19 using L2
.catch java/lang/Throwable from L19 to L20 using L2
.catch java/lang/Throwable from L21 to L22 using L2
.catch java/lang/Throwable from L22 to L23 using L2
.catch java/lang/Throwable from L24 to L25 using L2
.catch java/lang/Throwable from L26 to L27 using L2
.catch java/lang/Throwable from L28 to L29 using L2
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
astore 7
invokestatic com/alipay/sdk/tid/b/a()Lcom/alipay/sdk/tid/b;
astore 8
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
aload 2
invokestatic com/alipay/sdk/util/b/a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
astore 9
L0:
aload 9
ldc "tid"
aload 8
getfield com/alipay/sdk/tid/b/a Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
invokestatic com/alipay/sdk/data/c/a()Lcom/alipay/sdk/data/c;
astore 11
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
astore 10
aload 10
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
astore 6
aload 11
getfield com/alipay/sdk/data/c/a Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
invokestatic com/alipay/sdk/util/i/a()Ljava/lang/String;
astore 2
invokestatic com/alipay/sdk/util/i/b()Ljava/lang/String;
astore 4
aload 10
invokestatic com/alipay/sdk/util/i/d(Landroid/content/Context;)Ljava/lang/String;
astore 5
getstatic com/alipay/sdk/cons/a/a Ljava/lang/String;
astore 12
aload 12
iconst_0
aload 12
ldc "://"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 12
aload 10
invokestatic com/alipay/sdk/util/i/e(Landroid/content/Context;)Ljava/lang/String;
astore 13
new android/widget/TextView
dup
aload 10
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
invokevirtual android/widget/TextView/getTextSize()F
invokestatic java/lang/Float/toString(F)Ljava/lang/String;
astore 14
aload 11
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Msp/15.0.8"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 12
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 13
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 14
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/alipay/sdk/data/c/a Ljava/lang/String;
L1:
aload 10
invokestatic com/alipay/sdk/util/a/b(Landroid/content/Context;)Lcom/alipay/sdk/util/d;
invokevirtual com/alipay/sdk/util/d/a()Ljava/lang/String;
astore 12
aload 6
invokevirtual com/alipay/sdk/util/a/a()Ljava/lang/String;
astore 13
aload 6
invokevirtual com/alipay/sdk/util/a/b()Ljava/lang/String;
astore 14
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
astore 15
aload 15
ldc "virtualImeiAndImsi"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
astore 5
aload 5
ldc "virtual_imsi"
aconst_null
invokeinterface android/content/SharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 2
L3:
aload 2
astore 4
L4:
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L7
invokestatic com/alipay/sdk/tid/b/a()Lcom/alipay/sdk/tid/b;
getfield com/alipay/sdk/tid/b/a Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L26
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
invokevirtual com/alipay/sdk/sys/b/c()Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L24
invokestatic com/alipay/sdk/data/c/b()Ljava/lang/String;
astore 2
L5:
aload 5
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
ldc "virtual_imsi"
aload 2
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
L6:
aload 2
astore 4
L7:
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
astore 16
aload 16
ldc "virtualImeiAndImsi"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
astore 15
aload 15
ldc "virtual_imei"
aconst_null
invokeinterface android/content/SharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 5
L8:
aload 5
astore 2
L9:
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L11
invokestatic com/alipay/sdk/tid/b/a()Lcom/alipay/sdk/tid/b;
getfield com/alipay/sdk/tid/b/a Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L28
invokestatic com/alipay/sdk/data/c/b()Ljava/lang/String;
astore 2
L10:
aload 15
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
ldc "virtual_imei"
aload 2
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
L11:
aload 8
ifnull L13
L12:
aload 11
aload 8
getfield com/alipay/sdk/tid/b/b Ljava/lang/String;
putfield com/alipay/sdk/data/c/c Ljava/lang/String;
L13:
getstatic android/os/Build/MANUFACTURER Ljava/lang/String;
ldc ";"
ldc " "
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 15
getstatic android/os/Build/MODEL Ljava/lang/String;
ldc ";"
ldc " "
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 16
invokestatic com/alipay/sdk/sys/b/b()Z
istore 3
aload 6
invokevirtual com/alipay/sdk/util/a/c()Ljava/lang/String;
astore 17
aload 10
ldc "wifi"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/wifi/WifiManager
invokevirtual android/net/wifi/WifiManager/getConnectionInfo()Landroid/net/wifi/WifiInfo;
astore 5
L14:
aload 5
ifnull L30
L15:
aload 5
invokevirtual android/net/wifi/WifiInfo/getSSID()Ljava/lang/String;
astore 5
L16:
aload 10
ldc "wifi"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/wifi/WifiManager
invokevirtual android/net/wifi/WifiManager/getConnectionInfo()Landroid/net/wifi/WifiInfo;
astore 6
L17:
aload 6
ifnull L31
L18:
aload 6
invokevirtual android/net/wifi/WifiInfo/getBSSID()Ljava/lang/String;
astore 6
L19:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 18
aload 18
aload 11
getfield com/alipay/sdk/data/c/a Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 12
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "-1;-1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 13
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 14
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 11
getfield com/alipay/sdk/data/c/c Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 15
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 16
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 17
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";-1;-1;"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 11
getfield com/alipay/sdk/data/c/b Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L20:
aload 8
ifnull L22
L21:
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 2
aload 2
ldc "tid"
aload 8
getfield com/alipay/sdk/tid/b/a Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 2
ldc "utdid"
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
invokevirtual com/alipay/sdk/sys/b/c()Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 10
aload 2
invokestatic com/alipay/sdk/data/c/a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L22
aload 18
ldc ";"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L22:
aload 18
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 9
ldc "user_agent"
aload 18
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 9
ldc "has_alipay"
aload 7
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
invokestatic com/alipay/sdk/util/i/b(Landroid/content/Context;)Z
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Z)Lorg/json/JSONObject;
pop
aload 9
ldc "has_msp_app"
aload 7
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
invokestatic com/alipay/sdk/util/i/a(Landroid/content/Context;)Z
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Z)Lorg/json/JSONObject;
pop
aload 9
ldc "external_info"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 9
ldc "app_key"
ldc "2014052600006128"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 9
ldc "utdid"
aload 7
invokevirtual com/alipay/sdk/sys/b/c()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 9
ldc "new_client_key"
aload 8
getfield com/alipay/sdk/tid/b/b Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L23:
aload 9
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
areturn
L24:
aload 2
iconst_3
bipush 18
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 2
L25:
goto L5
L26:
aload 15
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/a()Ljava/lang/String;
astore 2
L27:
goto L5
L28:
aload 16
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/b()Ljava/lang/String;
astore 2
L29:
goto L10
L31:
ldc "00"
astore 6
goto L19
L2:
astore 1
goto L23
L30:
ldc "-1"
astore 5
goto L16
.limit locals 19
.limit stack 4
.end method

.method protected a(ZLjava/lang/String;)Ljava/util/List;
.signature "(ZLjava/lang/String;)Ljava/util/List<Lorg/apache/http/Header;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 3
new org/apache/http/message/BasicHeader
dup
ldc "msp-gzip"
iload 1
invokestatic java/lang/String/valueOf(Z)Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
new org/apache/http/message/BasicHeader
dup
ldc "Operation-Type"
ldc "alipay.msp.cashier.dispatch.bytes"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
new org/apache/http/message/BasicHeader
dup
ldc "content-type"
ldc "application/octet-stream"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
new org/apache/http/message/BasicHeader
dup
ldc "Version"
ldc "2.0"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
new org/apache/http/message/BasicHeader
dup
ldc "AppId"
ldc "TAOBAO"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
new org/apache/http/message/BasicHeader
dup
ldc "Msp-Param"
aload 2
invokestatic com/alipay/sdk/packet/a/a(Ljava/lang/String;)Ljava/lang/String;
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
new org/apache/http/message/BasicHeader
dup
ldc "des-mode"
ldc "CBC"
invokespecial org/apache/http/message/BasicHeader/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
areturn
.limit locals 4
.limit stack 5
.end method

.method protected abstract a()Lorg/json/JSONObject;
.throws org/json/JSONException
.end method

.method protected b()Ljava/lang/String;
ldc "4.9.0"
areturn
.limit locals 1
.limit stack 1
.end method

.method protected c()Ljava/lang/String;
.throws org/json/JSONException
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
aload 1
ldc "device"
getstatic android/os/Build/MODEL Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
ldc "namespace"
ldc "com.alipay.mobilecashier"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
ldc "api_name"
ldc "com.alipay.mcpay"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
ldc "api_version"
aload 0
invokevirtual com/alipay/sdk/packet/d/b()Ljava/lang/String;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
invokestatic com/alipay/sdk/packet/d/a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method
