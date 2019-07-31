.bytecode 50.0
.class public synchronized com/nd/android/u/allCommonUtils/FileHelper
.super java/lang/Object

.field public static final 'AUDIO' Ljava/lang/String; = "audio"

.field public static final 'AUDIO_PRE' Ljava/lang/String; = "androidVoice"

.field private static final 'BASE_PATH' Ljava/lang/String; = "91nd/"

.field public static final 'CHAT' Ljava/lang/String; = "chat"

.field public static final 'DEFAULT_COMPRESS_QUALITY' I = 80


.field public static final 'IMAGE' Ljava/lang/String; = "image"

.field public static final 'OFFLINEFILEDIR' Ljava/lang/String; = "ofile"

.field public static final 'THUMBNAIL_NAME' Ljava/lang/String; = "_thumb"

.field public static final 'TYPE_EXSD_MEMORY' I = 258


.field public static final 'TYPE_PHONE_MEMORY' I = 256


.field public static final 'TYPE_SD_MEMORY' I = 257


.field public static final 'UPLOAD' Ljava/lang/String; = "upload"

.field public static final 'VIDEO' Ljava/lang/String; = "video"

.field public static 'exts' [Ljava/lang/String;

.method static <clinit>()V
iconst_4
anewarray java/lang/String
dup
iconst_0
ldc "jpg"
aastore
dup
iconst_1
ldc "jpeg"
aastore
dup
iconst_2
ldc "png"
aastore
dup
iconst_3
ldc "gif"
aastore
putstatic com/nd/android/u/allCommonUtils/FileHelper/exts [Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

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
ldc com/nd/android/u/allCommonUtils/FileHelper
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
ldc com/nd/android/u/allCommonUtils/FileHelper
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
invokestatic com/nd/android/u/allCommonUtils/FileHelper/forceDelete(Ljava/io/File;)V
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
ldc com/nd/android/u/allCommonUtils/FileHelper
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

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
.throws java/io/FileNotFoundException
.throws java/io/IOException
new java/io/FileInputStream
dup
aload 0
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
astore 0
new java/io/FileOutputStream
dup
aload 1
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 1
sipush 4096
newarray byte
astore 3
L0:
aload 0
aload 3
invokevirtual java/io/FileInputStream/read([B)I
istore 2
iload 2
iconst_m1
if_icmpne L1
aload 0
invokevirtual java/io/FileInputStream/close()V
aload 1
invokevirtual java/io/FileOutputStream/flush()V
aload 1
invokevirtual java/io/FileOutputStream/close()V
return
L1:
aload 1
aload 3
iconst_0
iload 2
invokevirtual java/io/FileOutputStream/write([BII)V
goto L0
.limit locals 4
.limit stack 4
.end method

.method public static creatFileByPath(Ljava/lang/String;)Ljava/io/File;
.throws java/io/IOException
new java/io/File
dup
new java/lang/StringBuilder
dup
ldc "91nd/"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 5
.end method

.method public static createNomedia(Ljava/lang/StringBuilder;)V
.catch java/io/IOException from L0 to L1 using L2
new java/io/File
dup
new java/lang/StringBuilder
dup
aload 0
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc ".nomedia"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 0
aload 0
invokevirtual java/io/File/exists()Z
ifne L1
L0:
aload 0
invokevirtual java/io/File/createNewFile()Z
pop
L1:
return
L2:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
return
.limit locals 1
.limit stack 5
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

.method public static deleteDirectory(Ljava/io/File;)V
.throws java/io/IOException
aload 0
invokevirtual java/io/File/exists()Z
ifne L0
L1:
return
L0:
aload 0
invokestatic com/nd/android/u/allCommonUtils/FileHelper/cleanDirectory(Ljava/io/File;)V
aload 0
invokevirtual java/io/File/delete()Z
ifne L1
new java/io/IOException
dup
new java/lang/StringBuilder
dup
ldc "Unable to delete directory "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 5
.end method

.method public static forceDelete(Ljava/io/File;)V
.throws java/io/IOException
aload 0
invokevirtual java/io/File/isDirectory()Z
ifeq L0
aload 0
invokestatic com/nd/android/u/allCommonUtils/FileHelper/deleteDirectory(Ljava/io/File;)V
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

.method public static getAudioFileName(Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "androidVoice"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokestatic com/nd/android/u/allCommonUtils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".amr"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getBasePath(Ljava/lang/String;)Ljava/io/File;
.throws java/io/IOException
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
lstore 1
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
lload 1
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
new java/lang/StringBuilder
dup
ldc "91nd/"
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L1:
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
astore 0
invokestatic com/nd/android/u/allCommonUtils/SdCardUtils/isSdCardExist()Z
ifeq L2
aload 0
aload 3
invokevirtual android/content/Context/getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
astore 0
L3:
aload 0
astore 4
aload 0
ifnonnull L4
new java/io/File
dup
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
aload 3
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 4
L4:
aload 4
invokevirtual java/io/File/exists()Z
ifne L5
aload 4
invokevirtual java/io/File/mkdirs()Z
ifne L5
new java/io/IOException
dup
ldc "%s cannot be created!"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 4
invokevirtual java/io/File/toString()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L0:
new java/lang/StringBuilder
dup
ldc "91nd/"
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
goto L1
L2:
new java/io/File
dup
aload 0
invokevirtual android/content/Context/getCacheDir()Ljava/io/File;
aload 3
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 0
goto L3
L5:
aload 4
invokevirtual java/io/File/isDirectory()Z
ifne L6
new java/io/IOException
dup
ldc "%s is not a directory!"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 4
invokevirtual java/io/File/toString()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L6:
aload 4
areturn
.limit locals 5
.limit stack 7
.end method

.method public static getBasePathCHAT()Ljava/io/File;
.throws java/io/IOException
ldc "chat"
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getBasePath(Ljava/lang/String;)Ljava/io/File;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getBasePathIMAGE()Ljava/io/File;
.throws java/io/IOException
ldc "image"
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getBasePath(Ljava/lang/String;)Ljava/io/File;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getDataDirectory()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FileHelper/isDataDirectory()Z
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

.method public static getDefaultAudioFile(Ljava/lang/String;)Ljava/io/File;
.throws java/io/IOException
new java/io/File
dup
ldc "audio"
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getBasePath(Ljava/lang/String;)Ljava/io/File;
aload 0
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getAudioFileName(Ljava/lang/String;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public static getDefaultDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.throws java/io/IOException
new java/io/File
dup
ldc "ofile"
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getBasePath(Ljava/lang/String;)Ljava/io/File;
aload 0
aload 1
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getDownloadFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
areturn
.limit locals 2
.limit stack 5
.end method

.method public static getDefaultImageFile(Ljava/lang/String;Z)Ljava/io/File;
.throws java/io/IOException
iload 1
ifne L0
new java/io/File
dup
ldc "image"
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getBasePath(Ljava/lang/String;)Ljava/io/File;
aload 0
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getImageFileName(Ljava/lang/String;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
areturn
L0:
new java/io/File
dup
ldc "image"
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getBasePath(Ljava/lang/String;)Ljava/io/File;
aload 0
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getGifImageFileName(Ljava/lang/String;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public static getDefaultVideoFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.throws java/io/IOException
new java/io/File
dup
ldc "video"
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getBasePath(Ljava/lang/String;)Ljava/io/File;
aload 0
aload 1
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getVedioFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
areturn
.limit locals 2
.limit stack 5
.end method

.method private static getDownloadFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
ldc ""
astore 5
ldc ""
astore 6
aload 5
astore 4
aload 6
astore 3
aload 0
invokevirtual java/lang/String/length()I
ifle L0
aload 0
bipush 46
invokevirtual java/lang/String/lastIndexOf(I)I
istore 2
aload 5
astore 4
aload 6
astore 3
iload 2
iconst_m1
if_icmple L0
aload 5
astore 4
aload 6
astore 3
iload 2
aload 0
invokevirtual java/lang/String/length()I
iconst_1
isub
if_icmpge L0
aload 0
iconst_0
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 4
aload 0
iload 2
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
astore 3
L0:
aload 1
invokestatic com/nd/android/u/allCommonUtils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
astore 0
aload 1
invokevirtual java/lang/String/length()I
bipush 8
if_icmple L1
aload 1
iconst_0
bipush 8
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 0
L1:
new java/lang/StringBuilder
dup
aload 4
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 7
.limit stack 3
.end method

.method public static getDownloadFilePath()Ljava/lang/String;
ldc "91nd/download/"
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getExtensionName(Ljava/lang/String;)Ljava/lang/String;
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

.method public static getFileUri(Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "file://"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
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

.method private static getGifImageFileName(Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
aload 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ".gif"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method private static getImageFileName(Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
aload 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ".jpg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getStorageDirectories(Landroid/content/Context;)Ljava/util/HashMap;
.signature "(Landroid/content/Context;)Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/IllegalAccessException from L0 to L1 using L3
.catch java/lang/reflect/InvocationTargetException from L0 to L1 using L4
.catch java/lang/NoSuchMethodException from L0 to L1 using L5
.catch java/lang/IllegalArgumentException from L6 to L7 using L2
.catch java/lang/IllegalAccessException from L6 to L7 using L3
.catch java/lang/reflect/InvocationTargetException from L6 to L7 using L4
.catch java/lang/NoSuchMethodException from L6 to L7 using L5
.catch java/lang/IllegalArgumentException from L8 to L9 using L2
.catch java/lang/IllegalAccessException from L8 to L9 using L3
.catch java/lang/reflect/InvocationTargetException from L8 to L9 using L4
.catch java/lang/NoSuchMethodException from L8 to L9 using L5
.catch java/lang/IllegalArgumentException from L10 to L11 using L2
.catch java/lang/IllegalAccessException from L10 to L11 using L3
.catch java/lang/reflect/InvocationTargetException from L10 to L11 using L4
.catch java/lang/NoSuchMethodException from L10 to L11 using L5
.catch java/lang/IllegalArgumentException from L11 to L12 using L2
.catch java/lang/IllegalAccessException from L11 to L12 using L3
.catch java/lang/reflect/InvocationTargetException from L11 to L12 using L4
.catch java/lang/NoSuchMethodException from L11 to L12 using L5
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 4
aload 4
sipush 256
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
ldc "/"
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
invokestatic com/nd/android/u/allCommonUtils/SdCardUtils/isSdCardExist()Z
ifne L13
L14:
aload 4
areturn
L13:
invokestatic com/nd/android/u/allCommonUtils/SdCardUtils/getSdCardPath()Ljava/lang/String;
astore 5
aload 4
sipush 257
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 5
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L14
aload 0
ldc "storage"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/os/storage/StorageManager
astore 0
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
ldc "getVolumePaths"
iconst_0
anewarray java/lang/Class
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
aload 0
iconst_0
anewarray java/lang/Object
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
checkcast [Ljava/lang/String;
astore 0
L1:
aload 0
ifnull L14
sipush 258
istore 1
iconst_0
istore 2
L6:
iload 2
aload 0
arraylength
if_icmpge L14
L7:
aload 0
iload 2
aaload
ifnonnull L15
iload 1
istore 3
goto L16
L15:
iload 1
istore 3
L8:
new java/io/File
dup
aload 0
iload 2
aaload
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/canRead()Z
ifeq L16
L9:
iload 1
istore 3
L10:
aload 5
aload 0
iload 2
aaload
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L16
L11:
aload 4
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifne L17
aload 4
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 0
iload 2
aaload
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L12:
iload 1
istore 3
goto L16
L2:
astore 0
aload 0
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
aload 4
areturn
L17:
iload 1
iconst_1
iadd
istore 1
goto L11
L3:
astore 0
aload 0
invokevirtual java/lang/IllegalAccessException/printStackTrace()V
aload 4
areturn
L4:
astore 0
aload 0
invokevirtual java/lang/reflect/InvocationTargetException/printStackTrace()V
aload 4
areturn
L5:
astore 0
aload 0
invokevirtual java/lang/NoSuchMethodException/printStackTrace()V
aload 4
areturn
L16:
iload 2
iconst_1
iadd
istore 2
iload 3
istore 1
goto L6
.limit locals 6
.limit stack 4
.end method

.method public static getThumbnailName(Ljava/lang/String;)Ljava/lang/String;
aload 0
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getFilename(Ljava/lang/String;)Ljava/lang/String;
astore 0
aload 0
ldc "."
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
istore 1
iload 1
ifle L0
new java/lang/StringBuilder
dup
aload 0
iconst_0
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "_thumb"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
iload 1
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
new java/lang/StringBuilder
dup
aload 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "_thumb"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 5
.end method

.method public static getVedioFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "video"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokestatic com/nd/android/u/allCommonUtils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static isDataDirectory()Z
invokestatic android/os/Environment/getDataDirectory()Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static isRoot()Z
.catch java/lang/Exception from L0 to L1 using L2
L0:
new java/io/File
dup
ldc "/system"
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/canRead()Z
ifeq L3
new java/io/File
dup
ldc "/system/bin/su"
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifne L3
new java/io/File
dup
ldc "/system/xbin/su"
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
istore 0
L1:
iload 0
ifne L3
iconst_0
ireturn
L3:
iconst_1
ireturn
L2:
astore 1
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public static isSupportExtFile(Ljava/lang/String;[Ljava/lang/String;)Z
aload 0
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getExtensionName(Ljava/lang/String;)Ljava/lang/String;
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

.method public static isWeiboSupportImage(Ljava/lang/String;)Z
aload 0
getstatic com/nd/android/u/allCommonUtils/FileHelper/exts [Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FileHelper/isSupportExtFile(Ljava/lang/String;[Ljava/lang/String;)Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static saveMyBitmap(Ljava/io/File;Landroid/graphics/Bitmap;)V
.throws java/io/IOException
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L5
aload 1
ifnonnull L6
L7:
return
L6:
aconst_null
astore 2
L0:
new java/io/FileOutputStream
dup
aload 0
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 0
L1:
aload 1
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
bipush 80
aload 0
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
aload 0
ifnull L7
L3:
aload 0
invokevirtual java/io/FileOutputStream/flush()V
aload 0
invokevirtual java/io/FileOutputStream/close()V
L4:
return
L5:
astore 0
aload 0
invokevirtual java/io/IOException/printStackTrace()V
return
L2:
astore 0
aload 0
invokevirtual java/io/FileNotFoundException/printStackTrace()V
aload 2
astore 0
goto L1
.limit locals 3
.limit stack 4
.end method

.method public static upgradeRootPermission(Ljava/lang/String;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Exception from L7 to L8 using L9
.catch all from L7 to L8 using L10
.catch java/lang/Exception from L11 to L12 using L13
.catch java/lang/Exception from L12 to L14 using L13
.catch java/lang/Exception from L15 to L16 using L17
.catch java/lang/Exception from L16 to L18 using L17
.catch java/lang/Exception from L19 to L20 using L21
.catch java/lang/Exception from L20 to L22 using L21
invokestatic com/nd/android/u/allCommonUtils/FileHelper/isRoot()Z
ifne L23
iconst_0
ireturn
L23:
aconst_null
astore 6
aconst_null
astore 3
aconst_null
astore 4
aconst_null
astore 5
aload 3
astore 2
aload 6
astore 1
L0:
new java/lang/StringBuilder
dup
ldc "chmod 777 "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
L1:
aload 3
astore 2
aload 6
astore 1
L4:
invokestatic java/lang/Runtime/getRuntime()Ljava/lang/Runtime;
ldc "su"
invokevirtual java/lang/Runtime/exec(Ljava/lang/String;)Ljava/lang/Process;
astore 0
L5:
aload 0
astore 2
aload 0
astore 1
L6:
new java/io/DataOutputStream
dup
aload 0
invokevirtual java/lang/Process/getOutputStream()Ljava/io/OutputStream;
invokespecial java/io/DataOutputStream/<init>(Ljava/io/OutputStream;)V
astore 3
L7:
aload 3
new java/lang/StringBuilder
dup
aload 7
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/io/DataOutputStream/writeBytes(Ljava/lang/String;)V
aload 3
ldc "exit\n"
invokevirtual java/io/DataOutputStream/writeBytes(Ljava/lang/String;)V
aload 3
invokevirtual java/io/DataOutputStream/flush()V
aload 0
invokevirtual java/lang/Process/waitFor()I
pop
L8:
aload 3
ifnull L12
L11:
aload 3
invokevirtual java/io/DataOutputStream/close()V
L12:
aload 0
invokevirtual java/lang/Process/destroy()V
L14:
iconst_1
ireturn
L2:
astore 0
aload 2
astore 0
aload 5
astore 1
L24:
aload 1
ifnull L16
L15:
aload 1
invokevirtual java/io/DataOutputStream/close()V
L16:
aload 0
invokevirtual java/lang/Process/destroy()V
L18:
iconst_0
ireturn
L17:
astore 0
iconst_0
ireturn
L3:
astore 0
aload 1
astore 2
aload 4
astore 1
L25:
aload 1
ifnull L20
L19:
aload 1
invokevirtual java/io/DataOutputStream/close()V
L20:
aload 2
invokevirtual java/lang/Process/destroy()V
L22:
aload 0
athrow
L13:
astore 0
goto L14
L21:
astore 1
goto L22
L10:
astore 4
aload 3
astore 1
aload 0
astore 2
aload 4
astore 0
goto L25
L9:
astore 1
aload 3
astore 1
goto L24
.limit locals 8
.limit stack 4
.end method
