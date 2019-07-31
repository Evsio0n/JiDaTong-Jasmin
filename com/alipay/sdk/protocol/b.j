.bytecode 50.0
.class public final synchronized com/alipay/sdk/protocol/b
.super java/lang/Object

.field public 'a' Lcom/alipay/sdk/protocol/a;

.field public 'b' [Ljava/lang/String;

.field private 'c' Ljava/lang/String;

.method private <init>(Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alipay/sdk/protocol/b/c Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private <init>(Ljava/lang/String;Lcom/alipay/sdk/protocol/a;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alipay/sdk/protocol/b/c Ljava/lang/String;
aload 0
aload 2
putfield com/alipay/sdk/protocol/b/a Lcom/alipay/sdk/protocol/a;
return
.limit locals 3
.limit stack 2
.end method

.method private a()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/protocol/b/c Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/List;
.signature "(Lorg/json/JSONObject;)Ljava/util/List<Lcom/alipay/sdk/protocol/b;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 0
ifnonnull L0
aload 2
areturn
L0:
aload 0
ldc "name"
ldc ""
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
aconst_null
astore 0
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 3
ldc ";"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 0
L1:
iconst_0
istore 1
L2:
iload 1
aload 0
arraylength
if_icmpge L3
aload 0
iload 1
aaload
invokestatic com/alipay/sdk/protocol/a/a(Ljava/lang/String;)Lcom/alipay/sdk/protocol/a;
astore 3
aload 3
getstatic com/alipay/sdk/protocol/a/a Lcom/alipay/sdk/protocol/a;
if_acmpeq L4
new com/alipay/sdk/protocol/b
dup
aload 0
iload 1
aaload
aload 3
invokespecial com/alipay/sdk/protocol/b/<init>(Ljava/lang/String;Lcom/alipay/sdk/protocol/a;)V
astore 3
aload 3
aload 0
iload 1
aaload
invokestatic com/alipay/sdk/protocol/b/a(Ljava/lang/String;)[Ljava/lang/String;
putfield com/alipay/sdk/protocol/b/b [Ljava/lang/String;
aload 2
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L4:
iload 1
iconst_1
iadd
istore 1
goto L2
L3:
aload 2
areturn
.limit locals 4
.limit stack 4
.end method

.method private static a(Lcom/alipay/sdk/protocol/b;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
aload 0
getfield com/alipay/sdk/protocol/b/b [Ljava/lang/String;
astore 0
aload 0
arraylength
iconst_3
if_icmpeq L4
L5:
return
L4:
ldc "tid"
aload 0
iconst_0
aaload
invokestatic android/text/TextUtils/equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
ifeq L5
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
astore 1
invokestatic com/alipay/sdk/tid/b/a()Lcom/alipay/sdk/tid/b;
astore 2
aload 0
iconst_1
aaload
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 0
iconst_2
aaload
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 2
aload 0
iconst_1
aaload
putfield com/alipay/sdk/tid/b/a Ljava/lang/String;
aload 2
aload 0
iconst_2
aaload
putfield com/alipay/sdk/tid/b/b Ljava/lang/String;
new com/alipay/sdk/tid/a
dup
aload 1
invokespecial com/alipay/sdk/tid/a/<init>(Landroid/content/Context;)V
astore 0
L0:
aload 0
aload 1
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/a()Ljava/lang/String;
aload 1
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/b()Ljava/lang/String;
aload 2
getfield com/alipay/sdk/tid/b/a Ljava/lang/String;
aload 2
getfield com/alipay/sdk/tid/b/b Ljava/lang/String;
invokevirtual com/alipay/sdk/tid/a/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 0
invokevirtual com/alipay/sdk/tid/a/close()V
return
L2:
astore 1
aload 0
invokevirtual com/alipay/sdk/tid/a/close()V
return
L3:
astore 1
aload 0
invokevirtual com/alipay/sdk/tid/a/close()V
aload 1
athrow
.limit locals 3
.limit stack 5
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 0
bipush 40
invokevirtual java/lang/String/indexOf(I)I
istore 1
aload 0
bipush 41
invokevirtual java/lang/String/lastIndexOf(I)I
istore 2
iload 1
iconst_m1
if_icmpeq L0
iload 2
iconst_m1
if_icmpeq L0
iload 2
iload 1
if_icmpgt L1
L0:
aconst_null
areturn
L1:
aload 0
iload 1
iconst_1
iadd
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
ldc ","
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 0
aload 0
ifnull L2
iconst_0
istore 1
L3:
iload 1
aload 0
arraylength
if_icmpge L2
aload 0
iload 1
aaload
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 3
aload 0
iload 1
aaload
invokevirtual java/lang/String/trim()Ljava/lang/String;
ldc "'"
ldc ""
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
ldc "\""
ldc ""
invokevirtual java/lang/String/replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L4:
iload 1
iconst_1
iadd
istore 1
goto L3
L2:
aload 3
iconst_0
anewarray java/lang/String
invokeinterface java/util/List/toArray([Ljava/lang/Object;)[Ljava/lang/Object; 1
checkcast [Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method

.method private b()Lcom/alipay/sdk/protocol/a;
aload 0
getfield com/alipay/sdk/protocol/b/a Lcom/alipay/sdk/protocol/a;
areturn
.limit locals 1
.limit stack 1
.end method

.method private static b(Ljava/lang/String;)[Ljava/lang/String;
aconst_null
astore 1
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
ldc ";"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 1
L0:
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method private c()[Ljava/lang/String;
aload 0
getfield com/alipay/sdk/protocol/b/b [Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
