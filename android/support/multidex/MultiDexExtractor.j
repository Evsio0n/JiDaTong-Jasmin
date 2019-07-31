.bytecode 50.0
.class final synchronized android/support/multidex/MultiDexExtractor
.super java/lang/Object
.inner class static final inner android/support/multidex/MultiDexExtractor$1

.field private static final 'BUFFER_SIZE' I = 16384


.field private static final 'DEX_PREFIX' Ljava/lang/String; = "classes"

.field private static final 'DEX_SUFFIX' Ljava/lang/String; = ".dex"

.field private static final 'EXTRACTED_NAME_EXT' Ljava/lang/String; = ".classes"

.field private static final 'EXTRACTED_SUFFIX' Ljava/lang/String; = ".zip"

.field private static final 'KEY_CRC' Ljava/lang/String; = "crc"

.field private static final 'KEY_DEX_NUMBER' Ljava/lang/String; = "dex.number"

.field private static final 'KEY_TIME_STAMP' Ljava/lang/String; = "timestamp"

.field private static final 'MAX_EXTRACT_ATTEMPTS' I = 3


.field private static final 'NO_VALUE' J = -1L


.field private static final 'PREFS_FILE' Ljava/lang/String; = "multidex.version"

.field private static final 'TAG' Ljava/lang/String; = "MultiDex"

.field private static 'sApplyMethod' Ljava/lang/reflect/Method;

.method static <clinit>()V
.catch java/lang/NoSuchMethodException from L0 to L1 using L2
L0:
ldc android/content/SharedPreferences$Editor
ldc "apply"
iconst_0
anewarray java/lang/Class
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
putstatic android/support/multidex/MultiDexExtractor/sApplyMethod Ljava/lang/reflect/Method;
L1:
return
L2:
astore 0
aconst_null
putstatic android/support/multidex/MultiDexExtractor/sApplyMethod Ljava/lang/reflect/Method;
return
.limit locals 1
.limit stack 3
.end method

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static apply(Landroid/content/SharedPreferences$Editor;)V
.catch java/lang/reflect/InvocationTargetException from L0 to L1 using L2
.catch java/lang/IllegalAccessException from L0 to L1 using L3
getstatic android/support/multidex/MultiDexExtractor/sApplyMethod Ljava/lang/reflect/Method;
ifnull L4
L0:
getstatic android/support/multidex/MultiDexExtractor/sApplyMethod Ljava/lang/reflect/Method;
aload 0
iconst_0
anewarray java/lang/Object
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
L1:
return
L3:
astore 1
L4:
aload 0
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
L2:
astore 1
goto L4
.limit locals 2
.limit stack 3
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
invokeinterface java/io/Closeable/close()V 0
L1:
return
L2:
astore 0
ldc "MultiDex"
ldc "Failed to close resource"
aload 0
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
return
.limit locals 1
.limit stack 3
.end method

.method private static extract(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;)V
.throws java/io/IOException
.throws java/io/FileNotFoundException
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L4
.catch all from L5 to L6 using L4
.catch all from L7 to L8 using L4
.catch all from L8 to L9 using L9
.catch all from L10 to L11 using L9
aload 0
aload 1
invokevirtual java/util/zip/ZipFile/getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
astore 5
aload 3
ldc ".zip"
aload 2
invokevirtual java/io/File/getParentFile()Ljava/io/File;
invokestatic java/io/File/createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
astore 3
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Extracting "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
new java/util/zip/ZipOutputStream
dup
new java/io/BufferedOutputStream
dup
new java/io/FileOutputStream
dup
aload 3
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
invokespecial java/io/BufferedOutputStream/<init>(Ljava/io/OutputStream;)V
invokespecial java/util/zip/ZipOutputStream/<init>(Ljava/io/OutputStream;)V
astore 0
L1:
new java/util/zip/ZipEntry
dup
ldc "classes.dex"
invokespecial java/util/zip/ZipEntry/<init>(Ljava/lang/String;)V
astore 6
aload 6
aload 1
invokevirtual java/util/zip/ZipEntry/getTime()J
invokevirtual java/util/zip/ZipEntry/setTime(J)V
aload 0
aload 6
invokevirtual java/util/zip/ZipOutputStream/putNextEntry(Ljava/util/zip/ZipEntry;)V
sipush 16384
newarray byte
astore 1
aload 5
aload 1
invokevirtual java/io/InputStream/read([B)I
istore 4
L3:
iload 4
iconst_m1
if_icmpeq L7
L5:
aload 0
aload 1
iconst_0
iload 4
invokevirtual java/util/zip/ZipOutputStream/write([BII)V
aload 5
aload 1
invokevirtual java/io/InputStream/read([B)I
istore 4
L6:
goto L3
L7:
aload 0
invokevirtual java/util/zip/ZipOutputStream/closeEntry()V
L8:
aload 0
invokevirtual java/util/zip/ZipOutputStream/close()V
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Renaming to "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 3
aload 2
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
ifne L11
new java/io/IOException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failed to rename \""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\" to \""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L9:
astore 0
L12:
aload 5
invokestatic android/support/multidex/MultiDexExtractor/closeQuietly(Ljava/io/Closeable;)V
aload 3
invokevirtual java/io/File/delete()Z
pop
aload 0
athrow
L4:
astore 1
L10:
aload 0
invokevirtual java/util/zip/ZipOutputStream/close()V
aload 1
athrow
L11:
aload 5
invokestatic android/support/multidex/MultiDexExtractor/closeQuietly(Ljava/io/Closeable;)V
aload 3
invokevirtual java/io/File/delete()Z
pop
return
L2:
astore 0
goto L12
.limit locals 7
.limit stack 7
.end method

.method private static getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmpge L0
iconst_0
istore 1
L1:
aload 0
ldc "multidex.version"
iload 1
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
areturn
L0:
iconst_4
istore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method private static getTimeStamp(Ljava/io/File;)J
aload 0
invokevirtual java/io/File/lastModified()J
lstore 3
lload 3
lstore 1
lload 3
ldc2_w -1L
lcmp
ifne L0
lload 3
lconst_1
lsub
lstore 1
L0:
lload 1
lreturn
.limit locals 5
.limit stack 4
.end method

.method private static getZipCrc(Ljava/io/File;)J
.throws java/io/IOException
aload 0
invokestatic android/support/multidex/ZipUtil/getZipCrc(Ljava/io/File;)J
lstore 3
lload 3
lstore 1
lload 3
ldc2_w -1L
lcmp
ifne L0
lload 3
lconst_1
lsub
lstore 1
L0:
lload 1
lreturn
.limit locals 5
.limit stack 4
.end method

.method private static isModified(Landroid/content/Context;Ljava/io/File;J)Z
aload 0
invokestatic android/support/multidex/MultiDexExtractor/getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
astore 0
aload 0
ldc "timestamp"
ldc2_w -1L
invokeinterface android/content/SharedPreferences/getLong(Ljava/lang/String;J)J 3
aload 1
invokestatic android/support/multidex/MultiDexExtractor/getTimeStamp(Ljava/io/File;)J
lcmp
ifne L0
aload 0
ldc "crc"
ldc2_w -1L
invokeinterface android/content/SharedPreferences/getLong(Ljava/lang/String;J)J 3
lload 2
lcmp
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method static load(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/io/File;Z)Ljava/util/List;
.signature "(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/io/File;Z)Ljava/util/List<Ljava/io/File;>;"
.throws java/io/IOException
.catch java/io/IOException from L0 to L1 using L2
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "MultiDexExtractor.load("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield android/content/pm/ApplicationInfo/sourceDir Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/io/File
dup
aload 1
getfield android/content/pm/ApplicationInfo/sourceDir Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 6
aload 6
invokestatic android/support/multidex/MultiDexExtractor/getZipCrc(Ljava/io/File;)J
lstore 4
iload 3
ifne L3
aload 0
aload 6
lload 4
invokestatic android/support/multidex/MultiDexExtractor/isModified(Landroid/content/Context;Ljava/io/File;J)Z
ifne L3
L0:
aload 0
aload 6
aload 2
invokestatic android/support/multidex/MultiDexExtractor/loadExistingExtractions(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Ljava/util/List;
astore 1
L1:
aload 1
astore 0
L4:
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "load found "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokeinterface java/util/List/size()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " secondary dex files"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
areturn
L2:
astore 1
ldc "MultiDex"
ldc "Failed to reload existing extracted secondary dex files, falling back to fresh extraction"
aload 1
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
aload 6
aload 2
invokestatic android/support/multidex/MultiDexExtractor/performExtractions(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
astore 1
aload 0
aload 6
invokestatic android/support/multidex/MultiDexExtractor/getTimeStamp(Ljava/io/File;)J
lload 4
aload 1
invokeinterface java/util/List/size()I 0
iconst_1
iadd
invokestatic android/support/multidex/MultiDexExtractor/putStoredApkInfo(Landroid/content/Context;JJI)V
aload 1
astore 0
goto L4
L3:
ldc "MultiDex"
ldc "Detected that extraction must be performed."
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 6
aload 2
invokestatic android/support/multidex/MultiDexExtractor/performExtractions(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
astore 1
aload 0
aload 6
invokestatic android/support/multidex/MultiDexExtractor/getTimeStamp(Ljava/io/File;)J
lload 4
aload 1
invokeinterface java/util/List/size()I 0
iconst_1
iadd
invokestatic android/support/multidex/MultiDexExtractor/putStoredApkInfo(Landroid/content/Context;JJI)V
aload 1
astore 0
goto L4
.limit locals 7
.limit stack 7
.end method

.method private static loadExistingExtractions(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Ljava/util/List;
.signature "(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Ljava/util/List<Ljava/io/File;>;"
.throws java/io/IOException
ldc "MultiDex"
ldc "loading existing secondary dex files"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/io/File/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".classes"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
invokestatic android/support/multidex/MultiDexExtractor/getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
ldc "dex.number"
iconst_1
invokeinterface android/content/SharedPreferences/getInt(Ljava/lang/String;I)I 2
istore 4
new java/util/ArrayList
dup
iload 4
invokespecial java/util/ArrayList/<init>(I)V
astore 0
iconst_2
istore 3
L0:
iload 3
iload 4
if_icmpgt L1
new java/io/File
dup
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ".zip"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 5
aload 5
invokevirtual java/io/File/isFile()Z
ifeq L2
aload 0
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 5
invokestatic android/support/multidex/MultiDexExtractor/verifyZipFile(Ljava/io/File;)Z
ifne L3
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Invalid zip file: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/io/IOException
dup
ldc "Invalid ZIP file."
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L2:
new java/io/IOException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Missing extracted secondary dex file '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L3:
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
aload 0
areturn
.limit locals 6
.limit stack 5
.end method

.method private static mkdirChecked(Ljava/io/File;)V
.throws java/io/IOException
aload 0
invokevirtual java/io/File/mkdir()Z
pop
aload 0
invokevirtual java/io/File/isDirectory()Z
ifne L0
aload 0
invokevirtual java/io/File/getParentFile()Ljava/io/File;
astore 1
aload 1
ifnonnull L1
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failed to create dir "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ". Parent file is null."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L2:
new java/io/IOException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failed to create cache directory "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L1:
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failed to create dir "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ". parent file is a dir "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/io/File/isDirectory()Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc ", a file "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/io/File/isFile()Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc ", exists "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/io/File/exists()Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc ", readable "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/io/File/canRead()Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc ", writable "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/io/File/canWrite()Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L2
L0:
return
.limit locals 2
.limit stack 4
.end method

.method private static performExtractions(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
.signature "(Ljava/io/File;Ljava/io/File;)Ljava/util/List<Ljava/io/File;>;"
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
.catch java/io/IOException from L13 to L14 using L15
.catch all from L16 to L17 using L2
.catch all from L18 to L19 using L2
.catch java/io/IOException from L20 to L21 using L22
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/io/File/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".classes"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 9
aload 1
aload 9
invokestatic android/support/multidex/MultiDexExtractor/prepareDexDir(Ljava/io/File;Ljava/lang/String;)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
new java/util/zip/ZipFile
dup
aload 0
invokespecial java/util/zip/ZipFile/<init>(Ljava/io/File;)V
astore 10
iconst_2
istore 2
L0:
aload 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "classes"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ".dex"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/util/zip/ZipFile/getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
astore 0
L1:
aload 0
ifnull L20
L3:
new java/io/File
dup
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 9
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ".zip"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 11
aload 8
aload 11
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Extraction is needed for file "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 11
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
iconst_0
istore 3
iconst_0
istore 5
L23:
iload 3
iconst_3
if_icmpge L24
iload 5
ifne L24
iload 3
iconst_1
iadd
istore 4
L5:
aload 10
aload 0
aload 11
aload 9
invokestatic android/support/multidex/MultiDexExtractor/extract(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;)V
aload 11
invokestatic android/support/multidex/MultiDexExtractor/verifyZipFile(Ljava/io/File;)Z
istore 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Extraction "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 12
L6:
iload 6
ifeq L25
ldc "success"
astore 7
L7:
ldc "MultiDex"
aload 12
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " - length "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 11
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ": "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 11
invokevirtual java/io/File/length()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L8:
iload 6
istore 5
iload 4
istore 3
iload 6
ifne L23
L9:
aload 11
invokevirtual java/io/File/delete()Z
pop
L10:
iload 6
istore 5
iload 4
istore 3
L11:
aload 11
invokevirtual java/io/File/exists()Z
ifeq L23
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failed to delete corrupted secondary dex '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 11
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
L12:
iload 6
istore 5
iload 4
istore 3
goto L23
L2:
astore 0
L13:
aload 10
invokevirtual java/util/zip/ZipFile/close()V
L14:
aload 0
athrow
L25:
ldc "failed"
astore 7
goto L7
L24:
iload 5
ifne L17
L16:
new java/io/IOException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Could not create zip file "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 11
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " for secondary dex ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L17:
iload 2
iconst_1
iadd
istore 2
L18:
aload 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "classes"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ".dex"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/util/zip/ZipFile/getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
astore 0
L19:
goto L1
L20:
aload 10
invokevirtual java/util/zip/ZipFile/close()V
L21:
aload 8
areturn
L22:
astore 0
ldc "MultiDex"
ldc "Failed to close resource"
aload 0
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
aload 8
areturn
L15:
astore 1
ldc "MultiDex"
ldc "Failed to close resource"
aload 1
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
goto L14
.limit locals 13
.limit stack 5
.end method

.method private static prepareDexDir(Ljava/io/File;Ljava/lang/String;)V
.throws java/io/IOException
aload 0
invokevirtual java/io/File/getParentFile()Ljava/io/File;
invokestatic android/support/multidex/MultiDexExtractor/mkdirChecked(Ljava/io/File;)V
aload 0
invokestatic android/support/multidex/MultiDexExtractor/mkdirChecked(Ljava/io/File;)V
aload 0
new android/support/multidex/MultiDexExtractor$1
dup
aload 1
invokespecial android/support/multidex/MultiDexExtractor$1/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
astore 1
aload 1
ifnonnull L0
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failed to list secondary dex dir content ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
return
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
aload 1
iload 2
aaload
astore 0
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Trying to delete old file "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " of size "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/io/File/length()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
invokevirtual java/io/File/delete()Z
ifne L3
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failed to delete old file "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Deleted old file "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L4
.limit locals 4
.limit stack 4
.end method

.method private static putStoredApkInfo(Landroid/content/Context;JJI)V
aload 0
invokestatic android/support/multidex/MultiDexExtractor/getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 0
aload 0
ldc "timestamp"
lload 1
invokeinterface android/content/SharedPreferences$Editor/putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor; 3
pop
aload 0
ldc "crc"
lload 3
invokeinterface android/content/SharedPreferences$Editor/putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor; 3
pop
aload 0
ldc "dex.number"
iload 5
invokeinterface android/content/SharedPreferences$Editor/putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor; 2
pop
aload 0
invokestatic android/support/multidex/MultiDexExtractor/apply(Landroid/content/SharedPreferences$Editor;)V
return
.limit locals 6
.limit stack 4
.end method

.method static verifyZipFile(Ljava/io/File;)Z
.catch java/util/zip/ZipException from L0 to L1 using L2
.catch java/io/IOException from L0 to L1 using L3
.catch java/io/IOException from L1 to L4 using L5
.catch java/util/zip/ZipException from L1 to L4 using L2
.catch java/util/zip/ZipException from L6 to L7 using L2
.catch java/io/IOException from L6 to L7 using L3
L0:
new java/util/zip/ZipFile
dup
aload 0
invokespecial java/util/zip/ZipFile/<init>(Ljava/io/File;)V
astore 1
L1:
aload 1
invokevirtual java/util/zip/ZipFile/close()V
L4:
iconst_1
ireturn
L5:
astore 1
L6:
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failed to close zip file: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
L7:
iconst_0
ireturn
L2:
astore 1
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "File "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " is not a valid zip file."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
goto L7
L3:
astore 1
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Got an IOException trying to open zip file: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
goto L7
.limit locals 2
.limit stack 3
.end method
