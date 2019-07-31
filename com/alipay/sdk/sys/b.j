.bytecode 50.0
.class public final synchronized com/alipay/sdk/sys/b
.super java/lang/Object

.field private static 'b' Lcom/alipay/sdk/sys/b;

.field public 'a' Landroid/content/Context;

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a()Lcom/alipay/sdk/sys/b;
getstatic com/alipay/sdk/sys/b/b Lcom/alipay/sdk/sys/b;
ifnonnull L0
new com/alipay/sdk/sys/b
dup
invokespecial com/alipay/sdk/sys/b/<init>()V
putstatic com/alipay/sdk/sys/b/b Lcom/alipay/sdk/sys/b;
L0:
getstatic com/alipay/sdk/sys/b/b Lcom/alipay/sdk/sys/b;
areturn
.limit locals 0
.limit stack 2
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Throwable from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/lang/Throwable from L4 to L7 using L8
.catch all from L4 to L7 using L6
.catch java/lang/Exception from L7 to L9 using L10
.catch java/lang/Exception from L11 to L12 using L13
.catch java/lang/Exception from L14 to L15 using L16
L0:
new java/lang/ProcessBuilder
dup
aload 0
invokespecial java/lang/ProcessBuilder/<init>([Ljava/lang/String;)V
astore 0
aload 0
iconst_0
invokevirtual java/lang/ProcessBuilder/redirectErrorStream(Z)Ljava/lang/ProcessBuilder;
pop
aload 0
invokevirtual java/lang/ProcessBuilder/start()Ljava/lang/Process;
astore 0
L1:
new java/io/DataOutputStream
dup
aload 0
invokevirtual java/lang/Process/getOutputStream()Ljava/io/OutputStream;
invokespecial java/io/DataOutputStream/<init>(Ljava/io/OutputStream;)V
astore 2
new java/io/DataInputStream
dup
aload 0
invokevirtual java/lang/Process/getInputStream()Ljava/io/InputStream;
invokespecial java/io/DataInputStream/<init>(Ljava/io/InputStream;)V
invokevirtual java/io/DataInputStream/readLine()Ljava/lang/String;
astore 1
L4:
aload 2
ldc "exit\n"
invokevirtual java/io/DataOutputStream/writeBytes(Ljava/lang/String;)V
aload 2
invokevirtual java/io/DataOutputStream/flush()V
aload 0
invokevirtual java/lang/Process/waitFor()I
pop
L7:
aload 0
invokevirtual java/lang/Process/destroy()V
L9:
aload 1
areturn
L2:
astore 0
aconst_null
astore 0
ldc ""
astore 1
L11:
aload 0
invokevirtual java/lang/Process/destroy()V
L12:
aload 1
areturn
L13:
astore 0
aload 1
areturn
L3:
astore 1
aconst_null
astore 0
L14:
aload 0
invokevirtual java/lang/Process/destroy()V
L15:
aload 1
athrow
L10:
astore 0
aload 1
areturn
L16:
astore 0
goto L15
L6:
astore 1
goto L14
L5:
astore 1
ldc ""
astore 1
goto L11
L8:
astore 2
goto L11
.limit locals 3
.limit stack 3
.end method

.method public static b()Z
.catch java/lang/Exception from L0 to L1 using L2
iconst_1
istore 2
iconst_5
anewarray java/lang/String
astore 3
aload 3
iconst_0
ldc "/system/xbin/"
aastore
aload 3
iconst_1
ldc "/system/bin/"
aastore
aload 3
iconst_2
ldc "/system/sbin/"
aastore
aload 3
iconst_3
ldc "/sbin/"
aastore
aload 3
iconst_4
ldc "/vendor/bin/"
aastore
iconst_0
istore 0
L0:
iload 0
aload 3
arraylength
if_icmpge L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
iload 0
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "su"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
new java/io/File
dup
aload 4
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifeq L4
iconst_3
anewarray java/lang/String
dup
iconst_0
ldc "ls"
aastore
dup
iconst_1
ldc "-l"
aastore
dup
iconst_2
aload 4
aastore
invokestatic com/alipay/sdk/sys/b/a([Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 3
ldc "root"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 0
aload 3
ldc "root"
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
istore 1
L1:
iload 0
iload 1
if_icmpne L6
L5:
iconst_0
istore 2
L6:
iload 2
ireturn
L4:
iload 0
iconst_1
iadd
istore 0
goto L0
L2:
astore 3
L3:
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method private d()Landroid/content/Context;
aload 0
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private static e()Lcom/alipay/sdk/data/c;
invokestatic com/alipay/sdk/data/c/a()Lcom/alipay/sdk/data/c;
areturn
.limit locals 0
.limit stack 1
.end method

.method public final a(Landroid/content/Context;)V
aload 0
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putfield com/alipay/sdk/sys/b/a Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public final c()Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
L0:
aload 0
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
invokestatic com/ta/utdid2/device/UTDevice/getUtdid(Landroid/content/Context;)Ljava/lang/String;
astore 1
L1:
aload 1
areturn
L2:
astore 1
ldc ""
areturn
.limit locals 2
.limit stack 1
.end method
