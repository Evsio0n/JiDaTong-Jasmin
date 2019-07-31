.bytecode 50.0
.class public synchronized com/nd/teamfile/util/FileUtil
.super java/lang/Object

.field private static final 'ANDROID_ROOT' Ljava/lang/String; = "/Android/data/"

.field private static final 'BUFFER_SIZE' I = 61440


.field private static final 'DEFAULT_FILE_FOLDER_NAME' Ljava/lang/String; = "/cache/files/"

.field private static final 'NOMEDIA_FILE_NAME' Ljava/lang/String; = ".nomedia"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private addNomediaFile(Ljava/io/File;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
new java/io/File
dup
aload 1
ldc ".nomedia"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
invokevirtual java/io/File/createNewFile()Z
pop
L1:
return
L2:
astore 1
ldc "ImageLoader"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Problem creating .nomedia file : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method private prepareExternalCacheDir(Lcom/nd/teamfile/util/AndroidFileContext;)Ljava/io/File;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/nd/teamfile/util/AndroidFileContext/getPackageName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/cache/files/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/nd/teamfile/Env/gid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
new java/io/File
dup
aload 1
invokevirtual com/nd/teamfile/util/AndroidFileContext/getExternalStorageDirectory()Ljava/io/File;
aload 2
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/isDirectory()Z
ifne L0
aload 1
invokevirtual java/io/File/mkdirs()Z
pop
L0:
aload 1
areturn
.limit locals 3
.limit stack 4
.end method

.method public checkStorage(Lcom/nd/teamfile/util/AndroidFileContext;J)Z
aload 1
invokevirtual com/nd/teamfile/util/AndroidFileContext/isMounted()Z
ifne L0
L1:
iconst_0
ireturn
L0:
aload 1
invokevirtual com/nd/teamfile/util/AndroidFileContext/getAvailableSpace()J
lload 2
lsub
ldc2_w 1024L
lcmp
ifle L1
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public closeSilently(Ljava/io/Closeable;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 1
ifnull L1
L0:
aload 1
invokeinterface java/io/Closeable/close()V 0
L1:
return
L2:
astore 1
ldc "ImageLoader"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Problem closing stream "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 3
.end method

.method public copy(Ljava/io/File;Ljava/io/File;)V
.throws com/nd/teamfile/exception/TeamFileException
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/io/IOException from L4 to L7 using L8
.catch all from L4 to L7 using L9
.catch java/io/IOException from L7 to L10 using L8
.catch all from L7 to L10 using L9
.catch java/io/IOException from L11 to L12 using L8
.catch all from L11 to L12 using L9
.catch all from L13 to L3 using L3
aconst_null
astore 4
aconst_null
astore 8
aconst_null
astore 5
aconst_null
astore 7
aconst_null
astore 6
L0:
new java/io/FileInputStream
dup
aload 1
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 1
L1:
new java/io/FileOutputStream
dup
aload 2
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 2
L4:
sipush 1024
newarray byte
astore 4
L7:
aload 1
aload 4
invokevirtual java/io/InputStream/read([B)I
istore 3
L10:
iload 3
ifle L14
L11:
aload 2
aload 4
iconst_0
iload 3
invokevirtual java/io/OutputStream/write([BII)V
L12:
goto L7
L8:
astore 4
aload 2
astore 5
aload 4
astore 2
L15:
aload 1
astore 4
L13:
new com/nd/teamfile/exception/TeamFileException
dup
aload 2
invokespecial com/nd/teamfile/exception/TeamFileException/<init>(Ljava/lang/Throwable;)V
athrow
L3:
astore 1
L16:
aload 0
aload 5
invokevirtual com/nd/teamfile/util/FileUtil/closeSilently(Ljava/io/Closeable;)V
aload 0
aload 4
invokevirtual com/nd/teamfile/util/FileUtil/closeSilently(Ljava/io/Closeable;)V
aload 1
athrow
L14:
aload 0
aload 2
invokevirtual com/nd/teamfile/util/FileUtil/closeSilently(Ljava/io/Closeable;)V
aload 0
aload 1
invokevirtual com/nd/teamfile/util/FileUtil/closeSilently(Ljava/io/Closeable;)V
return
L6:
astore 2
aload 1
astore 4
aload 7
astore 5
aload 2
astore 1
goto L16
L9:
astore 6
aload 1
astore 4
aload 2
astore 5
aload 6
astore 1
goto L16
L2:
astore 2
aload 8
astore 1
aload 6
astore 5
goto L15
L5:
astore 2
aload 6
astore 5
goto L15
.limit locals 9
.limit stack 4
.end method

.method public copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
L0:
ldc_w 61440
newarray byte
astore 4
L1:
aload 1
aload 4
invokevirtual java/io/InputStream/read([B)I
istore 3
L3:
iload 3
iconst_m1
if_icmpne L4
return
L4:
aload 2
aload 4
iconst_0
iload 3
invokevirtual java/io/OutputStream/write([BII)V
L5:
goto L1
L2:
astore 1
ldc "ImageLoader"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Exception : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 5
.limit stack 4
.end method

.method public deleteFileCache(Ljava/lang/String;)Z
aload 0
aload 1
ldc2_w -1L
invokevirtual com/nd/teamfile/util/FileUtil/reduceFileCache(Ljava/lang/String;J)Z
ireturn
.limit locals 2
.limit stack 4
.end method

.method public prepareCacheDirectory(Lcom/nd/teamfile/util/AndroidFileContext;)Ljava/io/File;
aload 1
invokevirtual com/nd/teamfile/util/AndroidFileContext/isMounted()Z
ifeq L0
aload 0
aload 1
invokespecial com/nd/teamfile/util/FileUtil/prepareExternalCacheDir(Lcom/nd/teamfile/util/AndroidFileContext;)Ljava/io/File;
astore 1
L1:
aload 0
aload 1
invokespecial com/nd/teamfile/util/FileUtil/addNomediaFile(Ljava/io/File;)V
aload 1
areturn
L0:
aload 1
invokevirtual com/nd/teamfile/util/AndroidFileContext/preparePhoneCacheDir()Ljava/io/File;
astore 1
goto L1
.limit locals 2
.limit stack 2
.end method

.method public reduceFileCache(Ljava/lang/String;J)Z
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/isDirectory()Z
ifeq L0
aload 1
invokevirtual java/io/File/listFiles()[Ljava/io/File;
astore 1
invokestatic java/lang/System/currentTimeMillis()J
lstore 6
aload 1
arraylength
istore 5
iconst_0
istore 4
L1:
iload 4
iload 5
if_icmpge L0
aload 1
iload 4
aaload
astore 8
aload 8
invokevirtual java/io/File/lastModified()J
lload 6
lload 2
lsub
lcmp
ifge L2
aload 8
invokevirtual java/io/File/delete()Z
pop
L2:
iload 4
iconst_1
iadd
istore 4
goto L1
L0:
iconst_1
ireturn
.limit locals 9
.limit stack 6
.end method
