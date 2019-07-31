.bytecode 50.0
.class public synchronized com/nd/teamfile/util/FileExplorerUtil
.super java/lang/Object

.field private static 'ANDROID_SECURE' Ljava/lang/String;

.field public static final 'ROOT_PATH' Ljava/lang/String; = "/"

.method static <clinit>()V
ldc ".android_secure"
putstatic com/nd/teamfile/util/FileExplorerUtil/ANDROID_SECURE Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static GetFileInfo(Ljava/io/File;)Lcom/nd/teamfile/sdk/type/FileExplorerInfo;
new com/nd/teamfile/sdk/type/FileExplorerInfo
dup
invokespecial com/nd/teamfile/sdk/type/FileExplorerInfo/<init>()V
astore 5
aload 0
invokevirtual java/io/File/getPath()Ljava/lang/String;
astore 6
new java/io/File
dup
aload 6
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 7
aload 5
aload 0
invokevirtual java/io/File/getName()Ljava/lang/String;
putfield com/nd/teamfile/sdk/type/FileExplorerInfo/fileName Ljava/lang/String;
aload 5
aload 7
invokevirtual java/io/File/lastModified()J
putfield com/nd/teamfile/sdk/type/FileExplorerInfo/ModifiedDate J
aload 5
aload 7
invokevirtual java/io/File/isDirectory()Z
putfield com/nd/teamfile/sdk/type/FileExplorerInfo/IsDir Z
aload 5
aload 6
putfield com/nd/teamfile/sdk/type/FileExplorerInfo/filePath Ljava/lang/String;
aload 5
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/IsDir Z
ifeq L0
iconst_0
istore 2
aload 7
invokevirtual java/io/File/listFiles()[Ljava/io/File;
astore 0
aload 0
ifnonnull L1
aconst_null
areturn
L1:
aload 0
arraylength
istore 4
iconst_0
istore 1
L2:
iload 1
iload 4
if_icmpge L3
iload 2
istore 3
aload 0
iload 1
aaload
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokestatic com/nd/teamfile/util/FileExplorerUtil/isNormalFile(Ljava/lang/String;)Z
ifeq L4
iload 2
iconst_1
iadd
istore 3
L4:
iload 1
iconst_1
iadd
istore 1
iload 3
istore 2
goto L2
L3:
aload 5
iload 2
putfield com/nd/teamfile/sdk/type/FileExplorerInfo/Count I
aload 5
areturn
L0:
aload 5
aload 7
invokevirtual java/io/File/length()J
putfield com/nd/teamfile/sdk/type/FileExplorerInfo/fileSize J
aload 5
areturn
.limit locals 8
.limit stack 3
.end method

.method public static GetFileInfo(Ljava/lang/String;)Lcom/nd/teamfile/sdk/type/FileExplorerInfo;
new java/io/File
dup
aload 0
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifne L0
aconst_null
areturn
L0:
new com/nd/teamfile/sdk/type/FileExplorerInfo
dup
invokespecial com/nd/teamfile/sdk/type/FileExplorerInfo/<init>()V
astore 2
aload 2
aload 0
invokestatic com/nd/teamfile/util/FileExplorerUtil/getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/teamfile/sdk/type/FileExplorerInfo/fileName Ljava/lang/String;
aload 2
aload 1
invokevirtual java/io/File/lastModified()J
putfield com/nd/teamfile/sdk/type/FileExplorerInfo/ModifiedDate J
aload 2
aload 1
invokevirtual java/io/File/isDirectory()Z
putfield com/nd/teamfile/sdk/type/FileExplorerInfo/IsDir Z
aload 2
aload 0
putfield com/nd/teamfile/sdk/type/FileExplorerInfo/filePath Ljava/lang/String;
aload 2
aload 1
invokevirtual java/io/File/length()J
putfield com/nd/teamfile/sdk/type/FileExplorerInfo/fileSize J
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public static convertNumber(J)Ljava/lang/String;
ldc "%,d"
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 0
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 6
.end method

.method public static convertStorage(J)Ljava/lang/String;
ldc2_w 1024L
ldc2_w 1024L
lmul
lstore 3
lload 3
ldc2_w 1024L
lmul
lstore 5
lload 0
lload 5
lcmp
iflt L0
ldc "%.1f GB"
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 0
l2f
lload 5
l2f
fdiv
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L0:
lload 0
lload 3
lcmp
iflt L1
lload 0
l2f
lload 3
l2f
fdiv
fstore 2
fload 2
ldc_w 100.0F
fcmpl
ifle L2
ldc "%.0f MB"
astore 7
L3:
aload 7
iconst_1
anewarray java/lang/Object
dup
iconst_0
fload 2
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L2:
ldc "%.1f MB"
astore 7
goto L3
L1:
lload 0
ldc2_w 1024L
lcmp
iflt L4
lload 0
l2f
ldc2_w 1024L
l2f
fdiv
fstore 2
fload 2
ldc_w 100.0F
fcmpl
ifle L5
ldc "%.0f KB"
astore 7
L6:
aload 7
iconst_1
anewarray java/lang/Object
dup
iconst_0
fload 2
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L5:
ldc "%.1f KB"
astore 7
goto L6
L4:
ldc "%d B"
iconst_1
anewarray java/lang/Object
dup
iconst_0
lload 0
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 8
.limit stack 7
.end method

.method public static formatDateString(Landroid/content/Context;J)Ljava/lang/String;
aload 0
invokestatic android/text/format/DateFormat/getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
astore 3
aload 0
invokestatic android/text/format/DateFormat/getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
astore 0
new java/util/Date
dup
lload 1
invokespecial java/util/Date/<init>(J)V
astore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
aload 4
invokevirtual java/text/DateFormat/format(Ljava/util/Date;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
aload 4
invokevirtual java/text/DateFormat/format(Ljava/util/Date;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 5
.limit stack 4
.end method

.method public static getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
aconst_null
astore 2
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
astore 3
aload 3
aload 1
iconst_1
invokevirtual android/content/pm/PackageManager/getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 4
aload 2
astore 0
aload 4
ifnull L1
aload 4
getfield android/content/pm/PackageInfo/applicationInfo Landroid/content/pm/ApplicationInfo;
astore 0
aload 0
aload 1
putfield android/content/pm/ApplicationInfo/sourceDir Ljava/lang/String;
aload 0
aload 1
putfield android/content/pm/ApplicationInfo/publicSourceDir Ljava/lang/String;
L0:
aload 0
aload 3
invokevirtual android/content/pm/ApplicationInfo/loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
astore 0
L1:
aload 0
areturn
L2:
astore 0
invokestatic java/lang/System/gc()V
aconst_null
areturn
.limit locals 5
.limit stack 3
.end method

.method public static getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;
aload 0
bipush 46
invokevirtual java/lang/String/lastIndexOf(I)I
istore 1
iload 1
iconst_m1
if_icmpeq L0
aload 0
iload 1
iconst_1
iadd
aload 0
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;
aload 0
bipush 46
invokevirtual java/lang/String/lastIndexOf(I)I
istore 1
iload 1
iconst_m1
if_icmpeq L0
aload 0
iconst_0
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;
aload 0
bipush 47
invokevirtual java/lang/String/lastIndexOf(I)I
istore 1
iload 1
iconst_m1
if_icmpeq L0
aload 0
iload 1
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;
aload 0
bipush 47
invokevirtual java/lang/String/lastIndexOf(I)I
istore 1
iload 1
iconst_m1
if_icmpeq L0
aload 0
iconst_0
iload 1
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 2
.limit stack 3
.end method

.method public static isNormalFile(Ljava/lang/String;)Z
aload 0
getstatic com/nd/teamfile/util/FileExplorerUtil/ANDROID_SECURE Ljava/lang/String;
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_m1
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isSDCardReady()Z
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 0
.limit stack 2
.end method
