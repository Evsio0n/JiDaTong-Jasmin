.bytecode 50.0
.class public final synchronized com/alipay/sdk/util/c
.super java/lang/Object

.field public static final 'a' Ljava/lang/String; = "mspstd"

.field private static final 'b' Z = 0


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
new java/io/StringWriter
dup
invokespecial java/io/StringWriter/<init>()V
astore 1
aload 0
new java/io/PrintWriter
dup
aload 1
invokespecial java/io/PrintWriter/<init>(Ljava/io/Writer;)V
invokevirtual java/lang/Throwable/printStackTrace(Ljava/io/PrintWriter;)V
aload 1
invokevirtual java/io/StringWriter/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method

.method private static a()V
return
.limit locals 0
.limit stack 0
.end method

.method private static a(Ljava/lang/Object;)V
aload 0
instanceof java/lang/Exception
ifne L0
L0:
return
.limit locals 1
.limit stack 1
.end method

.method private static a(Ljava/lang/String;)V
ldc "mspstd"
aload 0
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 2
.end method

.method private static b()V
return
.limit locals 0
.limit stack 0
.end method

.method private static c()V
return
.limit locals 0
.limit stack 0
.end method

.method private static d()V
return
.limit locals 0
.limit stack 0
.end method

.method private static e()V
return
.limit locals 0
.limit stack 0
.end method

.method private static f()V
return
.limit locals 0
.limit stack 0
.end method

.method private static g()V
return
.limit locals 0
.limit stack 0
.end method
