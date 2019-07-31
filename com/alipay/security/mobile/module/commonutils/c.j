.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/commonutils/c
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L4 to L5 using L5
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L8 to L9 using L10
.catch all from L8 to L9 using L11
.catch java/lang/Exception from L12 to L13 using L10
.catch all from L12 to L13 using L11
.catch java/io/IOException from L13 to L14 using L15
.catch all from L16 to L17 using L11
.catch java/io/IOException from L17 to L18 using L19
.catch java/io/IOException from L20 to L21 using L22
L0:
new java/io/File
dup
aload 0
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 0
aload 0
invokevirtual java/io/File/exists()Z
istore 2
L1:
iload 2
ifne L6
L4:
new java/lang/NullPointerException
dup
invokespecial java/lang/NullPointerException/<init>()V
athrow
L5:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
aconst_null
areturn
L6:
aload 0
invokevirtual java/io/File/length()J
l2i
newarray char
astore 3
new java/io/FileReader
dup
aload 0
invokespecial java/io/FileReader/<init>(Ljava/io/File;)V
astore 1
L7:
aload 1
astore 0
L8:
aload 1
aload 3
invokevirtual java/io/FileReader/read([C)I
pop
L9:
aload 1
astore 0
L12:
aload 3
invokestatic java/lang/String/valueOf([C)Ljava/lang/String;
astore 3
L13:
aload 1
invokevirtual java/io/FileReader/close()V
L14:
aload 3
areturn
L15:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
aload 3
areturn
L2:
astore 3
aconst_null
astore 1
L23:
aload 1
astore 0
L16:
aload 3
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
pop
L17:
aload 1
invokevirtual java/io/FileReader/close()V
L18:
ldc ""
areturn
L19:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L18
L3:
astore 1
aconst_null
astore 0
L20:
aload 0
invokevirtual java/io/FileReader/close()V
L21:
aload 1
athrow
L22:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L21
L11:
astore 1
goto L20
L10:
astore 3
goto L23
.limit locals 4
.limit stack 4
.end method

.method private static a(Ljava/lang/String;)Z
iconst_0
istore 4
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/length()I
istore 2
iload 2
ifne L1
L0:
iconst_1
istore 3
L2:
iload 3
ireturn
L1:
iconst_0
istore 1
L3:
iload 1
iload 2
if_icmpge L4
iload 4
istore 3
aload 0
iload 1
invokevirtual java/lang/String/charAt(I)C
invokestatic java/lang/Character/isWhitespace(C)Z
ifeq L2
iload 1
iconst_1
iadd
istore 1
goto L3
L4:
iconst_1
ireturn
.limit locals 5
.limit stack 2
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/io/IOException from L4 to L7 using L8
.catch java/io/IOException from L9 to L10 using L11
.catch java/io/IOException from L12 to L13 using L14
new java/io/File
dup
aload 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 0
aconst_null
astore 2
L0:
new java/io/FileWriter
dup
aload 0
iconst_0
invokespecial java/io/FileWriter/<init>(Ljava/io/File;Z)V
astore 0
L1:
aload 0
aload 1
invokevirtual java/io/FileWriter/write(Ljava/lang/String;)V
L4:
aload 0
invokevirtual java/io/FileWriter/close()V
L7:
return
L2:
astore 0
aconst_null
astore 0
L15:
aload 0
ifnull L7
L9:
aload 0
invokevirtual java/io/FileWriter/close()V
L10:
return
L11:
astore 0
return
L3:
astore 0
aload 2
astore 1
L16:
aload 1
ifnull L13
L12:
aload 1
invokevirtual java/io/FileWriter/close()V
L13:
aload 0
athrow
L8:
astore 0
return
L14:
astore 1
goto L13
L6:
astore 2
aload 0
astore 1
aload 2
astore 0
goto L16
L5:
astore 1
goto L15
.limit locals 3
.limit stack 4
.end method

.method private static b(Ljava/lang/String;)Z
.catch java/lang/Exception from L0 to L1 using L2
iconst_0
istore 1
new java/io/File
dup
aload 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 0
aload 0
invokevirtual java/io/File/exists()Z
ifne L1
L0:
aload 0
invokevirtual java/io/File/createNewFile()Z
istore 1
L1:
iload 1
ireturn
L2:
astore 0
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)J
new java/io/File
dup
aload 0
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 0
aload 0
invokevirtual java/io/File/exists()Z
ifeq L0
aload 0
invokevirtual java/io/File/length()J
lreturn
L0:
lconst_0
lreturn
.limit locals 2
.limit stack 4
.end method

.method private static c(Ljava/lang/String;)Z
new java/io/File
dup
aload 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 0
aload 0
invokevirtual java/io/File/exists()Z
ifne L0
aload 0
invokevirtual java/io/File/mkdirs()Z
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method
