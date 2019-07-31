.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/localstorage/util/a
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
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

.method public static a(Ljava/lang/String;)Z
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

.method public static b(Ljava/lang/String;)Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/io/IOException from L5 to L6 using L7
.catch all from L5 to L6 using L8
.catch java/io/IOException from L9 to L10 using L7
.catch all from L9 to L10 using L8
.catch java/lang/Throwable from L11 to L12 using L13
.catch java/lang/Throwable from L14 to L15 using L16
.catch java/lang/Throwable from L17 to L18 using L19
aconst_null
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
L0:
new java/io/File
dup
aload 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifne L4
L1:
aconst_null
areturn
L4:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
new java/io/FileInputStream
dup
aload 0
invokespecial java/io/FileInputStream/<init>(Ljava/lang/String;)V
ldc "UTF-8"
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;Ljava/lang/String;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 0
L5:
aload 0
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 1
L6:
aload 1
ifnull L14
L9:
aload 2
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L10:
goto L5
L7:
astore 1
L20:
aload 0
ifnull L12
L11:
aload 0
invokevirtual java/io/BufferedReader/close()V
L12:
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L14:
aload 0
invokevirtual java/io/BufferedReader/close()V
L15:
goto L12
L16:
astore 0
goto L12
L3:
astore 1
aconst_null
astore 0
L21:
aload 0
ifnull L18
L17:
aload 0
invokevirtual java/io/BufferedReader/close()V
L18:
aload 1
athrow
L13:
astore 0
goto L12
L19:
astore 0
goto L18
L8:
astore 1
goto L21
L2:
astore 0
aload 1
astore 0
goto L20
.limit locals 3
.limit stack 7
.end method
