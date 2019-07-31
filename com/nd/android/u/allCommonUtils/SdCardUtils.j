.bytecode 50.0
.class public synchronized com/nd/android/u/allCommonUtils/SdCardUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getInstalledApkPath(Landroid/content/Context;)Ljava/lang/String;
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
astore 1
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
sipush 128
invokevirtual android/content/pm/PackageManager/getInstalledApplications(I)Ljava/util/List;
astore 0
aload 0
ifnonnull L0
ldc ""
astore 0
L1:
aload 0
areturn
L0:
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L2:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L3
ldc ""
areturn
L3:
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/content/pm/ApplicationInfo
astore 2
aload 1
aload 2
getfield android/content/pm/ApplicationInfo/packageName Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 2
getfield android/content/pm/ApplicationInfo/sourceDir Ljava/lang/String;
astore 1
aload 1
astore 0
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifne L1
ldc ""
areturn
.limit locals 3
.limit stack 3
.end method

.method public static getInternalStoreCacheDir(Landroid/content/Context;)Ljava/lang/String;
aload 0
invokevirtual android/content/Context/getCacheDir()Ljava/io/File;
astore 0
aload 0
ifnonnull L0
ldc ""
areturn
L0:
aload 0
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/SdCardUtils/makesureFileSepInTheEnd(Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getSDCardCacheDir(Landroid/content/Context;)Ljava/lang/String;
getstatic android/os/Build$VERSION/SDK_INT I
bipush 8
if_icmplt L0
aload 0
invokevirtual android/content/Context/getExternalCacheDir()Ljava/io/File;
ifnonnull L1
ldc ""
areturn
L1:
aload 0
invokevirtual android/content/Context/getExternalCacheDir()Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/SdCardUtils/makesureFileSepInTheEnd(Ljava/lang/String;)Ljava/lang/String;
areturn
L0:
invokestatic com/nd/android/u/allCommonUtils/SdCardUtils/isSdCardExist()Z
ifne L2
ldc ""
areturn
L2:
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "/Android/data/%s/cache/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 6
.end method

.method public static getSdCardPath()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/SdCardUtils/isSdCardExist()Z
ifeq L0
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/io/File/toString()Ljava/lang/String;
areturn
L0:
aconst_null
areturn
.limit locals 0
.limit stack 1
.end method

.method public static isSdCardExist()Z
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 0
.limit stack 2
.end method

.method private static makesureFileSepInTheEnd(Ljava/lang/String;)Ljava/lang/String;
aload 0
astore 1
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
astore 1
aload 0
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifne L0
new java/lang/StringBuilder
dup
aload 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L0:
aload 1
areturn
.limit locals 2
.limit stack 3
.end method
