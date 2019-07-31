.bytecode 50.0
.class public synchronized com/nd/rj/common/microblogging/help/FileFun
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "FileFun"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 1
aload 0
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
bipush 85
aload 1
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
aload 1
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
areturn
.limit locals 2
.limit stack 4
.end method

.method public static DeleteDir(Ljava/io/File;)Z
aload 0
ifnull L0
aload 0
invokevirtual java/io/File/exists()Z
ifeq L0
aload 0
invokevirtual java/io/File/listFiles()[Ljava/io/File;
astore 2
iconst_0
istore 1
L1:
iload 1
aload 2
arraylength
if_icmpge L2
aload 2
iload 1
aaload
invokevirtual java/io/File/isDirectory()Z
ifeq L3
aload 2
iload 1
aaload
invokestatic com/nd/rj/common/microblogging/help/FileFun/DeleteDir(Ljava/io/File;)Z
pop
L4:
iload 1
iconst_1
iadd
istore 1
goto L1
L3:
aload 2
iload 1
aaload
invokestatic com/nd/rj/common/microblogging/help/FileFun/DeleteFile(Ljava/io/File;)V
goto L4
L2:
aload 0
invokevirtual java/io/File/delete()Z
pop
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public static DeleteFile(Ljava/io/File;)V
aload 0
invokevirtual java/io/File/exists()Z
ifeq L0
aload 0
invokevirtual java/io/File/delete()Z
pop
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public static DeleteFile(Ljava/lang/String;)V
new java/io/File
dup
aload 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 0
aload 0
invokevirtual java/io/File/exists()Z
ifeq L0
aload 0
invokevirtual java/io/File/delete()Z
pop
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public static GetFileBytes(Ljava/io/File;)[B
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch java/io/FileNotFoundException from L5 to L6 using L7
.catch java/io/IOException from L5 to L6 using L8
.catch all from L5 to L6 using L9
.catch java/io/FileNotFoundException from L10 to L11 using L7
.catch java/io/IOException from L10 to L11 using L8
.catch all from L10 to L11 using L9
.catch java/io/FileNotFoundException from L12 to L13 using L7
.catch java/io/IOException from L12 to L13 using L8
.catch all from L12 to L13 using L9
.catch java/io/FileNotFoundException from L14 to L15 using L7
.catch java/io/IOException from L14 to L15 using L8
.catch all from L14 to L15 using L9
.catch java/lang/Exception from L16 to L17 using L18
.catch all from L19 to L20 using L4
.catch java/lang/Exception from L21 to L22 using L23
.catch all from L24 to L25 using L4
.catch java/lang/Exception from L26 to L27 using L28
.catch java/lang/Exception from L29 to L30 using L31
aconst_null
astore 8
aconst_null
astore 6
aconst_null
astore 9
aconst_null
astore 7
aconst_null
astore 10
aconst_null
astore 4
aconst_null
astore 5
L0:
new java/io/FileInputStream
dup
aload 0
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 0
L1:
aload 6
astore 4
aload 9
astore 5
L5:
aload 0
invokevirtual java/io/FileInputStream/available()I
istore 3
L6:
iconst_0
istore 1
aload 6
astore 4
aload 9
astore 5
L10:
iload 3
newarray byte
astore 6
L11:
iload 1
iload 3
if_icmpge L32
iload 3
iload 1
isub
sipush 1024
if_icmplt L33
aload 6
astore 4
aload 6
astore 5
L12:
aload 0
aload 6
iload 1
sipush 1024
invokevirtual java/io/FileInputStream/read([BII)I
istore 2
L13:
goto L34
L33:
aload 6
astore 4
aload 6
astore 5
L14:
aload 0
aload 6
iload 1
iload 3
iload 1
isub
invokevirtual java/io/FileInputStream/read([BII)I
istore 2
L15:
goto L34
L32:
aload 0
ifnull L17
L16:
aload 0
invokevirtual java/io/FileInputStream/close()V
L17:
aload 6
areturn
L18:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
aload 6
areturn
L2:
astore 6
aload 7
astore 0
L35:
aload 5
astore 4
L19:
aload 6
invokevirtual java/io/FileNotFoundException/printStackTrace()V
L20:
aload 0
astore 6
aload 5
ifnull L17
L21:
aload 5
invokevirtual java/io/FileInputStream/close()V
L22:
aload 0
areturn
L23:
astore 4
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
areturn
L3:
astore 6
aload 10
astore 5
aload 8
astore 0
L36:
aload 5
astore 4
L24:
aload 6
invokevirtual java/io/IOException/printStackTrace()V
L25:
aload 0
astore 6
aload 5
ifnull L17
L26:
aload 5
invokevirtual java/io/FileInputStream/close()V
L27:
aload 0
areturn
L28:
astore 4
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
areturn
L4:
astore 0
L37:
aload 4
ifnull L30
L29:
aload 4
invokevirtual java/io/FileInputStream/close()V
L30:
aload 0
athrow
L31:
astore 4
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
goto L30
L9:
astore 5
aload 0
astore 4
aload 5
astore 0
goto L37
L8:
astore 6
aload 0
astore 5
aload 4
astore 0
goto L36
L7:
astore 6
aload 0
astore 4
aload 5
astore 0
aload 4
astore 5
goto L35
L34:
iload 1
iload 2
iadd
istore 1
goto L11
.limit locals 11
.limit stack 5
.end method

.method public static getFileExt(Ljava/io/File;)Ljava/lang/String;
aload 0
ifnull L0
aload 0
invokevirtual java/io/File/getName()Ljava/lang/String;
astore 0
aload 0
invokevirtual java/lang/String/length()I
ifle L0
aload 0
bipush 46
invokevirtual java/lang/String/lastIndexOf(I)I
istore 1
iload 1
iconst_m1
if_icmple L0
iload 1
aload 0
invokevirtual java/lang/String/length()I
iconst_1
isub
if_icmpge L0
aload 0
iload 1
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method

.method public static readStrFromFile(Ljava/io/File;)Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/io/IOException from L7 to L8 using L5
.catch all from L7 to L8 using L6
.catch all from L9 to L10 using L3
.catch java/io/IOException from L11 to L12 using L13
.catch java/io/IOException from L14 to L15 using L16
.catch java/io/IOException from L17 to L18 using L19
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
aload 0
invokevirtual java/io/File/exists()Z
ifeq L12
aconst_null
astore 1
aconst_null
astore 2
L0:
new java/io/BufferedReader
dup
new java/io/FileReader
dup
aload 0
invokespecial java/io/FileReader/<init>(Ljava/io/File;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 0
L1:
aload 0
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 1
L4:
aload 1
ifnull L20
L7:
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
aload 3
aload 1
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L8:
goto L1
L5:
astore 1
L21:
aload 0
astore 1
L9:
ldc "FileFun"
ldc "readStrFromFile IOException"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L10:
aload 0
ifnull L12
L11:
aload 0
invokevirtual java/io/BufferedReader/close()V
L12:
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
L20:
aload 0
ifnull L12
L14:
aload 0
invokevirtual java/io/BufferedReader/close()V
L15:
goto L12
L16:
astore 0
ldc "FileFun"
ldc "readStrFromFile close IOException"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L12
L13:
astore 0
ldc "FileFun"
ldc "readStrFromFile close IOException"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L12
L3:
astore 0
L22:
aload 1
ifnull L18
L17:
aload 1
invokevirtual java/io/BufferedReader/close()V
L18:
aload 0
athrow
L19:
astore 1
ldc "FileFun"
ldc "readStrFromFile close IOException"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L18
L6:
astore 2
aload 0
astore 1
aload 2
astore 0
goto L22
L2:
astore 0
aload 2
astore 0
goto L21
.limit locals 4
.limit stack 5
.end method

.method public static string2File(Ljava/lang/String;Ljava/io/File;)Z
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/io/IOException from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/io/IOException from L7 to L8 using L9
.catch all from L7 to L8 using L10
.catch java/io/IOException from L8 to L11 using L12
.catch all from L8 to L11 using L13
.catch java/io/IOException from L11 to L14 using L12
.catch all from L11 to L14 using L13
.catch java/io/IOException from L15 to L16 using L12
.catch all from L15 to L16 using L13
.catch all from L17 to L18 using L3
.catch java/io/IOException from L19 to L20 using L21
.catch java/io/IOException from L22 to L23 using L12
.catch all from L22 to L23 using L13
.catch java/io/IOException from L24 to L25 using L26
.catch java/io/IOException from L27 to L28 using L29
aconst_null
astore 5
aconst_null
astore 4
aload 5
astore 3
L0:
aload 1
invokevirtual java/io/File/getParentFile()Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifne L5
L1:
aload 5
astore 3
L4:
aload 1
invokevirtual java/io/File/getParentFile()Ljava/io/File;
invokevirtual java/io/File/mkdirs()Z
pop
L5:
aload 5
astore 3
L6:
new java/io/BufferedReader
dup
new java/io/StringReader
dup
aload 0
invokespecial java/io/StringReader/<init>(Ljava/lang/String;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 0
L7:
new java/io/BufferedWriter
dup
new java/io/FileWriter
dup
aload 1
invokespecial java/io/FileWriter/<init>(Ljava/io/File;)V
invokespecial java/io/BufferedWriter/<init>(Ljava/io/Writer;)V
astore 1
L8:
sipush 1024
newarray char
astore 3
L11:
aload 0
aload 3
invokevirtual java/io/BufferedReader/read([C)I
istore 2
L14:
iload 2
iconst_m1
if_icmpeq L22
L15:
aload 1
aload 3
iconst_0
iload 2
invokevirtual java/io/BufferedWriter/write([CII)V
L16:
goto L11
L12:
astore 1
L30:
aload 0
astore 3
L17:
aload 1
invokevirtual java/io/IOException/printStackTrace()V
L18:
aload 0
ifnull L20
L19:
aload 0
invokevirtual java/io/BufferedReader/close()V
L20:
iconst_0
ireturn
L22:
aload 1
invokevirtual java/io/BufferedWriter/flush()V
aload 0
invokevirtual java/io/BufferedReader/close()V
aload 1
invokevirtual java/io/BufferedWriter/close()V
L23:
aload 0
ifnull L25
L24:
aload 0
invokevirtual java/io/BufferedReader/close()V
L25:
iconst_1
ireturn
L26:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L25
L21:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
goto L20
L3:
astore 0
L31:
aload 3
ifnull L28
L27:
aload 3
invokevirtual java/io/BufferedReader/close()V
L28:
aload 0
athrow
L29:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L28
L10:
astore 1
aload 0
astore 3
aload 1
astore 0
goto L31
L13:
astore 1
aload 0
astore 3
aload 1
astore 0
goto L31
L2:
astore 1
aload 4
astore 0
goto L30
L9:
astore 1
goto L30
.limit locals 6
.limit stack 5
.end method

.method public static writeFileData(Ljava/io/File;Ljava/lang/String;)V
.throws java/io/IOException
aload 0
invokevirtual java/io/File/exists()Z
ifeq L0
aload 0
invokevirtual java/io/File/delete()Z
pop
L0:
new java/io/FileOutputStream
dup
aload 0
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 0
aload 0
aload 1
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/io/FileOutputStream/write([B)V
aload 0
invokevirtual java/io/FileOutputStream/flush()V
aload 0
invokevirtual java/io/FileOutputStream/close()V
return
.limit locals 2
.limit stack 3
.end method
