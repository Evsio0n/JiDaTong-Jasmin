.bytecode 50.0
.class public synchronized com/ta/utdid2/android/utils/SystemUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getAppLabel(Landroid/content/Context;)Ljava/lang/String;
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L3 to L4 using L2
L0:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
astore 1
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
astore 0
L1:
aload 1
ifnull L5
aload 0
ifnull L5
L3:
aload 1
aload 1
aload 0
iconst_1
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
getfield android/content/pm/PackageInfo/applicationInfo Landroid/content/pm/ApplicationInfo;
invokevirtual android/content/pm/PackageManager/getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 0
L4:
aload 0
areturn
L2:
astore 0
aload 0
invokevirtual android/content/pm/PackageManager$NameNotFoundException/printStackTrace()V
L5:
aconst_null
areturn
.limit locals 2
.limit stack 4
.end method

.method public static getCpuInfo()Ljava/lang/String;
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L5
.catch java/io/FileNotFoundException from L3 to L4 using L2
.catch java/io/IOException from L6 to L7 using L5
.catch java/io/FileNotFoundException from L6 to L7 using L2
.catch java/io/IOException from L8 to L9 using L5
.catch java/io/FileNotFoundException from L8 to L9 using L2
.catch java/io/IOException from L10 to L11 using L5
.catch java/io/FileNotFoundException from L10 to L11 using L2
.catch java/io/FileNotFoundException from L12 to L13 using L2
aconst_null
astore 3
aconst_null
astore 2
aload 3
astore 0
L0:
new java/io/FileReader
dup
ldc "/proc/cpuinfo"
invokespecial java/io/FileReader/<init>(Ljava/lang/String;)V
astore 4
L1:
aload 2
astore 1
aload 3
astore 0
L3:
new java/io/BufferedReader
dup
aload 4
sipush 1024
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;I)V
astore 5
L4:
aload 2
astore 1
aload 3
astore 0
L6:
aload 5
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 2
L7:
aload 2
astore 1
aload 2
astore 0
L8:
aload 5
invokevirtual java/io/BufferedReader/close()V
L9:
aload 2
astore 1
aload 2
astore 0
L10:
aload 4
invokevirtual java/io/FileReader/close()V
L11:
aload 2
astore 0
L14:
aload 0
ifnull L15
aload 0
aload 0
bipush 58
invokevirtual java/lang/String/indexOf(I)I
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
areturn
L5:
astore 2
aload 1
astore 0
L12:
ldc "Could not read from file /proc/cpuinfo"
aload 2
invokevirtual java/io/IOException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L13:
aload 1
astore 0
goto L14
L2:
astore 1
ldc "BaseParameter-Could not open file /proc/cpuinfo"
aload 1
invokevirtual java/io/FileNotFoundException/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L14
L15:
ldc ""
areturn
.limit locals 6
.limit stack 4
.end method

.method public static getRootFolder(Ljava/lang/String;)Ljava/io/File;
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
astore 1
aload 1
ifnull L0
new java/io/File
dup
ldc "%s%s%s"
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 1
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
aastore
dup
iconst_1
getstatic java/io/File/separator Ljava/lang/String;
aastore
dup
iconst_2
aload 0
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 0
aload 0
invokevirtual java/io/File/exists()Z
ifne L1
aload 0
invokevirtual java/io/File/mkdirs()Z
pop
L1:
aload 0
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 7
.end method

.method public static getSystemVersion()I
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
L0:
ldc android/os/Build$VERSION
ldc "SDK_INT"
invokevirtual java/lang/Class/getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
aconst_null
invokevirtual java/lang/reflect/Field/getInt(Ljava/lang/Object;)I
istore 0
L1:
iload 0
ireturn
L2:
astore 1
L3:
ldc android/os/Build$VERSION
ldc "SDK"
invokevirtual java/lang/Class/getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
aconst_null
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 0
L4:
iload 0
ireturn
L5:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
iconst_2
ireturn
.limit locals 2
.limit stack 2
.end method
