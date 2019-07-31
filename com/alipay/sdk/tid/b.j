.bytecode 50.0
.class public final synchronized com/alipay/sdk/tid/b
.super java/lang/Object

.field private static 'c' Lcom/alipay/sdk/tid/b;

.field public 'a' Ljava/lang/String;

.field public 'b' Ljava/lang/String;

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a()Lcom/alipay/sdk/tid/b;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
ldc com/alipay/sdk/tid/b
monitorenter
L0:
getstatic com/alipay/sdk/tid/b/c Lcom/alipay/sdk/tid/b;
ifnonnull L6
new com/alipay/sdk/tid/b
dup
invokespecial com/alipay/sdk/tid/b/<init>()V
putstatic com/alipay/sdk/tid/b/c Lcom/alipay/sdk/tid/b;
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
astore 0
new com/alipay/sdk/tid/a
dup
aload 0
invokespecial com/alipay/sdk/tid/a/<init>(Landroid/content/Context;)V
astore 2
aload 0
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/a()Ljava/lang/String;
astore 3
aload 0
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/b()Ljava/lang/String;
astore 4
getstatic com/alipay/sdk/tid/b/c Lcom/alipay/sdk/tid/b;
aload 2
aload 3
aload 4
invokevirtual com/alipay/sdk/tid/a/b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
putfield com/alipay/sdk/tid/b/a Ljava/lang/String;
getstatic com/alipay/sdk/tid/b/c Lcom/alipay/sdk/tid/b;
aload 2
aload 3
aload 4
invokevirtual com/alipay/sdk/tid/a/c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
putfield com/alipay/sdk/tid/b/b Ljava/lang/String;
getstatic com/alipay/sdk/tid/b/c Lcom/alipay/sdk/tid/b;
getfield com/alipay/sdk/tid/b/b Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
getstatic com/alipay/sdk/tid/b/c Lcom/alipay/sdk/tid/b;
astore 5
invokestatic java/lang/System/currentTimeMillis()J
invokestatic java/lang/Long/toHexString(J)Ljava/lang/String;
astore 1
L1:
aload 1
astore 0
L3:
aload 1
invokevirtual java/lang/String/length()I
bipush 10
if_icmple L4
aload 1
aload 1
invokevirtual java/lang/String/length()I
bipush 10
isub
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 0
L4:
aload 5
aload 0
putfield com/alipay/sdk/tid/b/b Ljava/lang/String;
L5:
aload 2
aload 3
aload 4
getstatic com/alipay/sdk/tid/b/c Lcom/alipay/sdk/tid/b;
getfield com/alipay/sdk/tid/b/a Ljava/lang/String;
getstatic com/alipay/sdk/tid/b/c Lcom/alipay/sdk/tid/b;
getfield com/alipay/sdk/tid/b/b Ljava/lang/String;
invokevirtual com/alipay/sdk/tid/a/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L6:
getstatic com/alipay/sdk/tid/b/c Lcom/alipay/sdk/tid/b;
astore 0
L7:
ldc com/alipay/sdk/tid/b
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/alipay/sdk/tid/b
monitorexit
aload 0
athrow
.limit locals 6
.limit stack 5
.end method

.method private a(Landroid/content/Context;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
new com/alipay/sdk/tid/a
dup
aload 1
invokespecial com/alipay/sdk/tid/a/<init>(Landroid/content/Context;)V
astore 2
L0:
aload 2
aload 1
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/a()Ljava/lang/String;
aload 1
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/b()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/tid/b/a Ljava/lang/String;
aload 0
getfield com/alipay/sdk/tid/b/b Ljava/lang/String;
invokevirtual com/alipay/sdk/tid/a/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 2
invokevirtual com/alipay/sdk/tid/a/close()V
return
L2:
astore 1
aload 2
invokevirtual com/alipay/sdk/tid/a/close()V
return
L3:
astore 1
aload 2
invokevirtual com/alipay/sdk/tid/a/close()V
aload 1
athrow
.limit locals 3
.limit stack 5
.end method

.method private a(Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/sdk/tid/b/a Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private b()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/tid/b/a Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private b(Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/sdk/tid/b/b Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private c()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/tid/b/b Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private d()Z
aload 0
getfield com/alipay/sdk/tid/b/a Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method private static e()V
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
astore 2
aload 2
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/a()Ljava/lang/String;
astore 0
aload 2
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/b()Ljava/lang/String;
astore 1
new com/alipay/sdk/tid/a
dup
aload 2
invokespecial com/alipay/sdk/tid/a/<init>(Landroid/content/Context;)V
astore 2
aload 2
aload 0
aload 1
invokevirtual com/alipay/sdk/tid/a/a(Ljava/lang/String;Ljava/lang/String;)V
aload 2
invokevirtual com/alipay/sdk/tid/a/close()V
return
.limit locals 3
.limit stack 3
.end method

.method private static f()Ljava/lang/String;
invokestatic java/lang/System/currentTimeMillis()J
invokestatic java/lang/Long/toHexString(J)Ljava/lang/String;
astore 1
aload 1
astore 0
aload 1
invokevirtual java/lang/String/length()I
bipush 10
if_icmple L0
aload 1
aload 1
invokevirtual java/lang/String/length()I
bipush 10
isub
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 0
L0:
aload 0
areturn
.limit locals 2
.limit stack 3
.end method
