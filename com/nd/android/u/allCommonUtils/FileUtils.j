.bytecode 50.0
.class public synchronized com/nd/android/u/allCommonUtils/FileUtils
.super java/lang/Object

.field private static final 'ARRAY_LEN' I = 1024


.field public static final 'LOCAL_FILE_PREFIX' Ljava/lang/String; = "file://"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static cleanDirectory(Ljava/io/File;)V
.throws java/io/IOException
.catch all from L0 to L1 using L1
.catch all from L2 to L3 using L1
.catch all from L3 to L4 using L1
.catch all from L5 to L6 using L1
.catch all from L6 to L7 using L1
.catch all from L8 to L9 using L1
.catch java/io/IOException from L10 to L11 using L12
.catch all from L10 to L11 using L1
ldc com/nd/android/u/allCommonUtils/FileUtils
monitorenter
L0:
aload 0
invokevirtual java/io/File/exists()Z
ifne L2
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " does not exist"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
astore 0
ldc com/nd/android/u/allCommonUtils/FileUtils
monitorexit
aload 0
athrow
L2:
aload 0
invokevirtual java/io/File/isDirectory()Z
ifne L3
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " is not a directory"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 0
invokevirtual java/io/File/listFiles()[Ljava/io/File;
astore 2
L4:
aload 2
ifnonnull L13
L5:
new java/io/IOException
dup
new java/lang/StringBuilder
dup
ldc "Failed to list contents of "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L6:
iload 1
aload 2
arraylength
if_icmplt L9
L7:
aload 0
ifnull L14
L8:
aload 0
athrow
L9:
aload 2
iload 1
aaload
astore 3
L10:
aload 3
invokestatic com/nd/android/u/allCommonUtils/FileUtils/forceDelete(Ljava/io/File;)V
L11:
iload 1
iconst_1
iadd
istore 1
goto L6
L12:
astore 0
goto L11
L14:
ldc com/nd/android/u/allCommonUtils/FileUtils
monitorexit
return
L13:
aconst_null
astore 0
iconst_0
istore 1
goto L6
.limit locals 4
.limit stack 5
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch java/io/FileNotFoundException from L1 to L5 using L6
.catch java/io/IOException from L1 to L5 using L7
.catch all from L1 to L5 using L8
.catch java/io/FileNotFoundException from L5 to L9 using L10
.catch java/io/IOException from L5 to L9 using L11
.catch all from L5 to L9 using L12
.catch java/io/FileNotFoundException from L9 to L13 using L10
.catch java/io/IOException from L9 to L13 using L11
.catch all from L9 to L13 using L12
.catch java/io/IOException from L14 to L15 using L16
.catch java/io/IOException from L17 to L18 using L16
.catch java/io/FileNotFoundException from L19 to L20 using L10
.catch java/io/IOException from L19 to L20 using L11
.catch all from L19 to L20 using L12
.catch all from L21 to L22 using L4
.catch all from L23 to L24 using L4
.catch java/io/IOException from L25 to L26 using L27
.catch java/io/IOException from L28 to L29 using L27
.catch all from L30 to L31 using L4
.catch java/io/IOException from L32 to L33 using L34
.catch java/io/IOException from L35 to L36 using L34
.catch java/io/IOException from L37 to L38 using L39
.catch java/io/IOException from L40 to L41 using L39
iconst_0
istore 3
aconst_null
astore 10
aconst_null
astore 5
aconst_null
astore 8
aconst_null
astore 7
aconst_null
astore 4
aconst_null
astore 9
aconst_null
astore 6
L0:
new java/io/FileInputStream
dup
aload 0
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 0
L1:
new java/io/FileOutputStream
dup
aload 1
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 1
L5:
sipush 1024
newarray byte
astore 4
L9:
aload 0
aload 4
invokevirtual java/io/FileInputStream/read([B)I
istore 2
L13:
iload 2
iconst_m1
if_icmpne L19
iconst_1
istore 3
aload 0
ifnull L15
L14:
aload 0
invokevirtual java/io/FileInputStream/close()V
L15:
aload 1
ifnull L42
L17:
aload 1
invokevirtual java/io/FileOutputStream/close()V
L18:
iload 3
ireturn
L19:
aload 1
aload 4
iconst_0
iload 2
invokevirtual java/io/FileOutputStream/write([BII)V
L20:
goto L9
L10:
astore 6
L43:
aload 1
astore 4
aload 0
astore 5
L21:
aload 6
invokevirtual java/io/FileNotFoundException/printStackTrace()V
L22:
aload 1
astore 4
aload 0
astore 5
L23:
ldc "FileFun.CopyFile()"
ldc "FileNotFoundException"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L24:
aload 0
ifnull L26
L25:
aload 0
invokevirtual java/io/FileInputStream/close()V
L26:
aload 1
ifnull L18
L28:
aload 1
invokevirtual java/io/FileOutputStream/close()V
L29:
iconst_0
ireturn
L27:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
iconst_0
ireturn
L3:
astore 6
aload 10
astore 0
aload 7
astore 1
L44:
aload 1
astore 4
aload 0
astore 5
L30:
aload 6
invokevirtual java/io/IOException/printStackTrace()V
L31:
aload 0
ifnull L33
L32:
aload 0
invokevirtual java/io/FileInputStream/close()V
L33:
aload 1
ifnull L18
L35:
aload 1
invokevirtual java/io/FileOutputStream/close()V
L36:
iconst_0
ireturn
L34:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
iconst_0
ireturn
L4:
astore 0
L45:
aload 5
ifnull L38
L37:
aload 5
invokevirtual java/io/FileInputStream/close()V
L38:
aload 4
ifnull L41
L40:
aload 4
invokevirtual java/io/FileOutputStream/close()V
L41:
aload 0
athrow
L39:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L41
L16:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
L42:
iconst_1
ireturn
L8:
astore 1
aload 9
astore 4
aload 0
astore 5
aload 1
astore 0
goto L45
L12:
astore 6
aload 1
astore 4
aload 0
astore 5
aload 6
astore 0
goto L45
L7:
astore 6
aload 7
astore 1
goto L44
L11:
astore 6
goto L44
L2:
astore 0
aload 6
astore 1
aload 0
astore 6
aload 8
astore 0
goto L43
L6:
astore 4
aload 6
astore 1
aload 4
astore 6
goto L43
.limit locals 11
.limit stack 4
.end method

.method public static delFile(Landroid/net/Uri;)V
aload 0
ifnonnull L0
L1:
return
L0:
new java/io/File
dup
aload 0
invokevirtual android/net/Uri/getPath()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 0
aload 0
ifnull L1
aload 0
invokevirtual java/io/File/exists()Z
ifeq L1
aload 0
invokevirtual java/io/File/delete()Z
pop
return
.limit locals 1
.limit stack 3
.end method

.method public static deleteDir(Ljava/io/File;)Z
aload 0
invokevirtual java/io/File/listFiles()[Ljava/io/File;
astore 2
aload 2
ifnonnull L0
iconst_0
ireturn
L0:
iconst_0
istore 1
L1:
iload 1
aload 2
arraylength
if_icmplt L2
aload 0
invokevirtual java/io/File/delete()Z
ireturn
L2:
aload 2
iload 1
aaload
invokevirtual java/io/File/isFile()Z
ifeq L3
aload 2
iload 1
aaload
invokevirtual java/io/File/delete()Z
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
invokestatic com/nd/android/u/allCommonUtils/FileUtils/deleteDir(Ljava/io/File;)Z
pop
goto L4
.limit locals 3
.limit stack 2
.end method

.method public static forceDelete(Ljava/io/File;)V
.throws java/io/IOException
aload 0
invokevirtual java/io/File/isDirectory()Z
ifeq L0
aload 0
invokestatic com/nd/android/u/allCommonUtils/FileUtils/deleteDir(Ljava/io/File;)Z
pop
L1:
return
L0:
aload 0
invokevirtual java/io/File/exists()Z
istore 1
aload 0
invokevirtual java/io/File/delete()Z
ifne L1
iload 1
ifne L2
new java/io/FileNotFoundException
dup
new java/lang/StringBuilder
dup
ldc "File does not exist: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/FileNotFoundException/<init>(Ljava/lang/String;)V
athrow
L2:
new java/io/IOException
dup
new java/lang/StringBuilder
dup
ldc "Unable to delete file: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 5
.end method

.method public static getAudioDuration(Ljava/lang/String;)I
.catch java/io/IOException from L0 to L1 using L2
.catch java/lang/IllegalStateException from L0 to L1 using L3
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
iconst_m1
ireturn
L0:
new android/media/MediaPlayer
dup
invokespecial android/media/MediaPlayer/<init>()V
astore 2
aload 2
invokevirtual android/media/MediaPlayer/reset()V
aload 2
aload 0
invokevirtual android/media/MediaPlayer/setDataSource(Ljava/lang/String;)V
aload 2
invokevirtual android/media/MediaPlayer/prepare()V
aload 2
invokevirtual android/media/MediaPlayer/getDuration()I
istore 1
aload 2
invokevirtual android/media/MediaPlayer/stop()V
L1:
iload 1
ireturn
L2:
astore 0
iconst_m1
ireturn
L3:
astore 0
iconst_m1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public static getContentLength(Ljava/net/HttpURLConnection;)J
.catch java/lang/NumberFormatException from L0 to L1 using L2
aload 0
ldc "Content-Range"
invokevirtual java/net/HttpURLConnection/getHeaderField(Ljava/lang/String;)Ljava/lang/String;
astore 0
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
lconst_0
lreturn
L3:
aload 0
ldc "/"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 3
L0:
aload 3
iconst_1
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 1
L1:
lload 1
lreturn
L2:
astore 3
ldc "debug"
ldc "The HttpResponse contains an invalid instance-length: %s"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
lconst_0
lreturn
.limit locals 4
.limit stack 6
.end method

.method public static getDataDirectory()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FileUtils/isDataDirectory()Z
ifeq L0
invokestatic android/os/Environment/getDataDirectory()Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
areturn
L0:
aconst_null
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getFileExtensionName(Ljava/io/File;)Ljava/lang/String;
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

.method public static getFileExtensionName(Ljava/lang/String;)Ljava/lang/String;
aload 0
bipush 46
invokevirtual java/lang/String/lastIndexOf(I)I
istore 1
iload 1
ifge L0
aconst_null
areturn
L0:
aload 0
iload 1
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getFileLengthUnitKB(J)Ljava/lang/String;
new java/lang/StringBuilder
dup
new java/text/DecimalFormat
dup
ldc "#.#"
invokespecial java/text/DecimalFormat/<init>(Ljava/lang/String;)V
lload 0
l2d
ldc2_w 1024.0D
ddiv
invokevirtual java/text/DecimalFormat/format(D)Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "KB"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 7
.end method

.method public static getFilename(Ljava/lang/String;)Ljava/lang/String;
aload 0
astore 1
aload 0
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iflt L0
new java/io/File
dup
aload 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/getName()Ljava/lang/String;
astore 1
L0:
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public static isDataDirectory()Z
invokestatic android/os/Environment/getDataDirectory()Ljava/io/File;
invokevirtual java/io/File/exists()Z
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static isSupportExtFile(Ljava/lang/String;[Ljava/lang/String;)Z
aload 0
invokestatic com/nd/android/u/allCommonUtils/FileUtils/getFileExtensionName(Ljava/lang/String;)Ljava/lang/String;
astore 0
aload 0
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 1
arraylength
istore 3
iconst_0
istore 2
L2:
iload 2
iload 3
if_icmpge L1
aload 0
aload 1
iload 2
aaload
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L3
iconst_1
ireturn
L3:
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 4
.limit stack 3
.end method

.method public static readTxtFile(Ljava/io/File;)Ljava/lang/String;
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L5
.catch java/io/FileNotFoundException from L3 to L4 using L2
.catch java/io/IOException from L6 to L7 using L5
.catch java/io/FileNotFoundException from L6 to L7 using L2
.catch java/io/FileNotFoundException from L8 to L9 using L2
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
astore 3
L1:
aload 2
astore 0
L10:
aload 0
astore 1
L3:
aload 3
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 2
L4:
aload 2
ifnonnull L11
aload 0
areturn
L11:
aload 0
astore 1
L6:
new java/lang/StringBuilder
dup
aload 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
L7:
aload 2
astore 0
goto L10
L5:
astore 2
aload 0
astore 1
L8:
aload 2
invokevirtual java/io/IOException/printStackTrace()V
L9:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual java/io/FileNotFoundException/printStackTrace()V
aload 1
areturn
.limit locals 4
.limit stack 5
.end method

.method public static writeTxtFile(Ljava/io/File;Ljava/lang/String;)V
.throws java/io/IOException
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L4 to L5 using L3
new java/lang/StringBuilder
dup
aload 1
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "\r\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
new java/io/FileWriter
dup
aload 0
iconst_1
invokespecial java/io/FileWriter/<init>(Ljava/io/File;Z)V
astore 0
L0:
aload 0
aload 1
invokevirtual java/io/FileWriter/write(Ljava/lang/String;)V
aload 0
invokevirtual java/io/FileWriter/flush()V
L1:
aload 0
ifnull L6
aload 0
invokevirtual java/io/FileWriter/close()V
L6:
return
L2:
astore 1
L4:
aload 1
invokevirtual java/io/IOException/printStackTrace()V
L5:
aload 0
ifnull L6
aload 0
invokevirtual java/io/FileWriter/close()V
return
L3:
astore 1
aload 0
ifnull L7
aload 0
invokevirtual java/io/FileWriter/close()V
L7:
aload 1
athrow
.limit locals 2
.limit stack 4
.end method
