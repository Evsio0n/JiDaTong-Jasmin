.bytecode 50.0
.class public final synchronized com/nostra13/universalimageloader/utils/StorageUtils
.super java/lang/Object

.field private static final 'EXTERNAL_STORAGE_PERMISSION' Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"

.field private static final 'INDIVIDUAL_DIR_NAME' Ljava/lang/String; = "uil-images"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
aload 0
iconst_1
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;
.catch java/lang/NullPointerException from L0 to L1 using L2
aconst_null
astore 4
L0:
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
astore 3
L1:
aload 4
astore 2
iload 1
ifeq L3
aload 4
astore 2
ldc "mounted"
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 4
astore 2
aload 0
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/hasExternalStoragePermission(Landroid/content/Context;)Z
ifeq L3
aload 0
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
astore 2
L3:
aload 2
astore 3
aload 2
ifnonnull L4
aload 0
invokevirtual android/content/Context/getCacheDir()Ljava/io/File;
astore 3
L4:
aload 3
astore 2
aload 3
ifnonnull L5
new java/lang/StringBuilder
dup
ldc "/data/data/"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/cache/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
ldc "Can't define system cache directory! '%s' will be used."
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
aastore
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
new java/io/File
dup
aload 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 2
L5:
aload 2
areturn
L2:
astore 2
ldc ""
astore 3
goto L1
.limit locals 5
.limit stack 5
.end method

.method private static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
.catch java/io/IOException from L0 to L1 using L2
new java/io/File
dup
new java/io/File
dup
new java/io/File
dup
new java/io/File
dup
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
ldc "Android"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
ldc "data"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
ldc "cache"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 1
aload 1
astore 0
aload 1
invokevirtual java/io/File/exists()Z
ifne L3
aload 1
invokevirtual java/io/File/mkdirs()Z
ifne L0
ldc "Unable to create external cache directory"
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
aconst_null
astore 0
L3:
aload 0
areturn
L0:
new java/io/File
dup
aload 1
ldc ".nomedia"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
invokevirtual java/io/File/createNewFile()Z
pop
L1:
aload 1
areturn
L2:
astore 0
ldc "Can't create \".nomedia\" file in application external cache directory"
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/i(Ljava/lang/String;[Ljava/lang/Object;)V
aload 1
areturn
.limit locals 2
.limit stack 10
.end method

.method public static getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;
aload 0
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
astore 1
new java/io/File
dup
aload 1
ldc "uil-images"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 2
aload 2
astore 0
aload 2
invokevirtual java/io/File/exists()Z
ifne L0
aload 2
astore 0
aload 2
invokevirtual java/io/File/mkdir()Z
ifne L0
aload 1
astore 0
L0:
aload 0
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
aload 0
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
astore 2
new java/io/File
dup
aload 2
aload 1
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 1
aload 1
astore 0
aload 1
invokevirtual java/io/File/exists()Z
ifne L0
aload 1
astore 0
aload 1
invokevirtual java/io/File/mkdir()Z
ifne L0
aload 2
astore 0
L0:
aload 0
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getOwnCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
aconst_null
astore 3
aload 3
astore 2
ldc "mounted"
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 3
astore 2
aload 0
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/hasExternalStoragePermission(Landroid/content/Context;)Z
ifeq L0
new java/io/File
dup
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
aload 1
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 2
L0:
aload 2
ifnull L1
aload 2
astore 1
aload 2
invokevirtual java/io/File/exists()Z
ifne L2
aload 2
astore 1
aload 2
invokevirtual java/io/File/mkdirs()Z
ifne L2
L1:
aload 0
invokevirtual android/content/Context/getCacheDir()Ljava/io/File;
astore 1
L2:
aload 1
areturn
.limit locals 4
.limit stack 4
.end method

.method private static hasExternalStoragePermission(Landroid/content/Context;)Z
aload 0
ldc "android.permission.WRITE_EXTERNAL_STORAGE"
invokevirtual android/content/Context/checkCallingOrSelfPermission(Ljava/lang/String;)I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method
