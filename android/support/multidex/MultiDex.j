.bytecode 50.0
.class public final synchronized android/support/multidex/MultiDex
.super java/lang/Object
.inner class private static final V14 inner android/support/multidex/MultiDex$V14 outer android/support/multidex/MultiDex
.inner class private static final V19 inner android/support/multidex/MultiDex$V19 outer android/support/multidex/MultiDex
.inner class private static final V4 inner android/support/multidex/MultiDex$V4 outer android/support/multidex/MultiDex

.field private static final 'IS_VM_MULTIDEX_CAPABLE' Z

.field private static final 'MAX_SUPPORTED_SDK_VERSION' I = 20


.field private static final 'MIN_SDK_VERSION' I = 4


.field private static final 'OLD_SECONDARY_FOLDER_NAME' Ljava/lang/String; = "secondary-dexes"

.field private static final 'SECONDARY_FOLDER_NAME' Ljava/lang/String;

.field static final 'TAG' Ljava/lang/String; = "MultiDex"

.field private static final 'VM_WITH_MULTIDEX_VERSION_MAJOR' I = 2


.field private static final 'VM_WITH_MULTIDEX_VERSION_MINOR' I = 1


.field private static final 'installedApk' Ljava/util/Set; signature "Ljava/util/Set<Ljava/lang/String;>;"

.method static <clinit>()V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "code_cache"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "secondary-dexes"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putstatic android/support/multidex/MultiDex/SECONDARY_FOLDER_NAME Ljava/lang/String;
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
putstatic android/support/multidex/MultiDex/installedApk Ljava/util/Set;
ldc "java.vm.version"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
invokestatic android/support/multidex/MultiDex/isVMMultidexCapable(Ljava/lang/String;)Z
putstatic android/support/multidex/MultiDex/IS_VM_MULTIDEX_CAPABLE Z
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
.throws java/lang/NoSuchFieldException
aload 0
aload 1
invokestatic android/support/multidex/MultiDex/findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
.throws java/lang/NoSuchFieldException
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalAccessException
aload 0
aload 1
aload 2
invokestatic android/support/multidex/MultiDex/expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$500(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
.throws java/lang/NoSuchMethodException
aload 0
aload 1
aload 2
invokestatic android/support/multidex/MultiDex/findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
areturn
.limit locals 3
.limit stack 3
.end method

.method private static checkValidZipFiles(Ljava/util/List;)Z
.signature "(Ljava/util/List<Ljava/io/File;>;)Z"
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L0:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/io/File
invokestatic android/support/multidex/MultiDexExtractor/verifyZipFile(Ljava/io/File;)Z
ifne L0
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method private static clearOldDexDir(Landroid/content/Context;)V
.throws java/lang/Exception
new java/io/File
dup
aload 0
invokevirtual android/content/Context/getFilesDir()Ljava/io/File;
ldc "secondary-dexes"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 0
aload 0
invokevirtual java/io/File/isDirectory()Z
ifeq L0
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Clearing old secondary dex dir ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
invokevirtual java/io/File/listFiles()[Ljava/io/File;
astore 3
aload 3
ifnonnull L1
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
L0:
return
L1:
aload 3
arraylength
istore 2
iconst_0
istore 1
L2:
iload 1
iload 2
if_icmpge L3
aload 3
iload 1
aaload
astore 4
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Trying to delete old file "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " of size "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/io/File/length()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
invokevirtual java/io/File/delete()Z
ifne L4
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failed to delete old file "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
iload 1
iconst_1
iadd
istore 1
goto L2
L4:
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Deleted old file "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L5
L3:
aload 0
invokevirtual java/io/File/delete()Z
ifne L6
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failed to delete secondary dex dir "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L6:
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Deleted old secondary dex dir "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 5
.limit stack 4
.end method

.method private static expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
.throws java/lang/NoSuchFieldException
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalAccessException
aload 0
aload 1
invokestatic android/support/multidex/MultiDex/findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 1
aload 1
aload 0
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast [Ljava/lang/Object;
checkcast [Ljava/lang/Object;
astore 3
aload 3
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getComponentType()Ljava/lang/Class;
aload 3
arraylength
aload 2
arraylength
iadd
invokestatic java/lang/reflect/Array/newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
checkcast [Ljava/lang/Object;
checkcast [Ljava/lang/Object;
astore 4
aload 3
iconst_0
aload 4
iconst_0
aload 3
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
iconst_0
aload 4
aload 3
arraylength
aload 2
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 1
aload 0
aload 4
invokevirtual java/lang/reflect/Field/set(Ljava/lang/Object;Ljava/lang/Object;)V
return
.limit locals 5
.limit stack 5
.end method

.method private static findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
.throws java/lang/NoSuchFieldException
.catch java/lang/NoSuchFieldException from L0 to L1 using L2
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
astore 2
L3:
aload 2
ifnull L4
L0:
aload 2
aload 1
invokevirtual java/lang/Class/getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 3
aload 3
invokevirtual java/lang/reflect/Field/isAccessible()Z
ifne L1
aload 3
iconst_1
invokevirtual java/lang/reflect/Field/setAccessible(Z)V
L1:
aload 3
areturn
L2:
astore 3
aload 2
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
astore 2
goto L3
L4:
new java/lang/NoSuchFieldException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Field "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " not found in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/NoSuchFieldException/<init>(Ljava/lang/String;)V
athrow
.limit locals 4
.limit stack 4
.end method

.method private static transient findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
.signature "(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class<*>;)Ljava/lang/reflect/Method;"
.throws java/lang/NoSuchMethodException
.catch java/lang/NoSuchMethodException from L0 to L1 using L2
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
astore 3
L3:
aload 3
ifnull L4
L0:
aload 3
aload 1
aload 2
invokevirtual java/lang/Class/getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
astore 4
aload 4
invokevirtual java/lang/reflect/Method/isAccessible()Z
ifne L1
aload 4
iconst_1
invokevirtual java/lang/reflect/Method/setAccessible(Z)V
L1:
aload 4
areturn
L2:
astore 4
aload 3
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
astore 3
goto L3
L4:
new java/lang/NoSuchMethodException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Method "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " with parameters "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokestatic java/util/Arrays/asList([Ljava/lang/Object;)Ljava/util/List;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " not found in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/NoSuchMethodException/<init>(Ljava/lang/String;)V
athrow
.limit locals 5
.limit stack 4
.end method

.method private static getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
.throws android/content/pm/PackageManager$NameNotFoundException
.catch java/lang/RuntimeException from L0 to L1 using L2
L0:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
astore 1
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
astore 0
L1:
aload 1
ifnull L3
aload 0
ifnonnull L4
L3:
aconst_null
areturn
L2:
astore 0
ldc "MultiDex"
ldc "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching."
aload 0
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
aconst_null
areturn
L4:
aload 1
aload 0
sipush 128
invokevirtual android/content/pm/PackageManager/getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static install(Landroid/content/Context;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch all from L4 to L5 using L6
.catch all from L7 to L8 using L6
.catch java/lang/Exception from L8 to L2 using L2
.catch all from L9 to L10 using L6
.catch java/lang/RuntimeException from L10 to L11 using L12
.catch all from L10 to L11 using L6
.catch all from L13 to L14 using L6
.catch all from L15 to L16 using L6
.catch java/lang/Throwable from L17 to L18 using L19
.catch all from L17 to L18 using L6
.catch all from L18 to L20 using L6
.catch all from L20 to L21 using L6
.catch all from L22 to L23 using L6
.catch all from L24 to L25 using L6
.catch all from L26 to L27 using L6
ldc "MultiDex"
ldc "install"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
getstatic android/support/multidex/MultiDex/IS_VM_MULTIDEX_CAPABLE Z
ifeq L28
ldc "MultiDex"
ldc "VM has multidex support, MultiDex support library is disabled."
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L29:
return
L28:
getstatic android/os/Build$VERSION/SDK_INT I
iconst_4
if_icmpge L0
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Multi dex installation failed. SDK "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic android/os/Build$VERSION/SDK_INT I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " is unsupported. Min SDK version is "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokestatic android/support/multidex/MultiDex/getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
astore 2
L1:
aload 2
ifnull L29
L3:
getstatic android/support/multidex/MultiDex/installedApk Ljava/util/Set;
astore 1
aload 1
monitorenter
L4:
aload 2
getfield android/content/pm/ApplicationInfo/sourceDir Ljava/lang/String;
astore 3
getstatic android/support/multidex/MultiDex/installedApk Ljava/util/Set;
aload 3
invokeinterface java/util/Set/contains(Ljava/lang/Object;)Z 1
ifeq L9
aload 1
monitorexit
L5:
return
L6:
astore 0
L7:
aload 1
monitorexit
L8:
aload 0
athrow
L2:
astore 0
ldc "MultiDex"
ldc "Multidex installation failure"
aload 0
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Multi dex installation failed ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L9:
getstatic android/support/multidex/MultiDex/installedApk Ljava/util/Set;
aload 3
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
getstatic android/os/Build$VERSION/SDK_INT I
bipush 20
if_icmple L10
ldc "MultiDex"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "MultiDex is not guaranteed to work in SDK version "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic android/os/Build$VERSION/SDK_INT I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ": SDK version higher than "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 20
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " should be backed by "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "runtime with built-in multidex capabilty but it's not the "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "case here: java.vm.version=\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "java.vm.version"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
L10:
aload 0
invokevirtual android/content/Context/getClassLoader()Ljava/lang/ClassLoader;
astore 3
L11:
aload 3
ifnonnull L17
L13:
ldc "MultiDex"
ldc "Context class loader is null. Must be running in test mode. Skip patching."
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
monitorexit
L14:
return
L12:
astore 0
L15:
ldc "MultiDex"
ldc "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching."
aload 0
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
aload 1
monitorexit
L16:
return
L17:
aload 0
invokestatic android/support/multidex/MultiDex/clearOldDexDir(Landroid/content/Context;)V
L18:
new java/io/File
dup
aload 2
getfield android/content/pm/ApplicationInfo/dataDir Ljava/lang/String;
getstatic android/support/multidex/MultiDex/SECONDARY_FOLDER_NAME Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 4
aload 0
aload 2
aload 4
iconst_0
invokestatic android/support/multidex/MultiDexExtractor/load(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/io/File;Z)Ljava/util/List;
astore 5
aload 5
invokestatic android/support/multidex/MultiDex/checkValidZipFiles(Ljava/util/List;)Z
ifeq L24
aload 3
aload 4
aload 5
invokestatic android/support/multidex/MultiDex/installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
L20:
aload 1
monitorexit
L21:
ldc "MultiDex"
ldc "install done"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L19:
astore 4
L22:
ldc "MultiDex"
ldc "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning."
aload 4
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L23:
goto L18
L24:
ldc "MultiDex"
ldc "Files were not valid zip files.  Forcing a reload."
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
aload 2
aload 4
iconst_1
invokestatic android/support/multidex/MultiDexExtractor/load(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/io/File;Z)Ljava/util/List;
astore 0
aload 0
invokestatic android/support/multidex/MultiDex/checkValidZipFiles(Ljava/util/List;)Z
ifeq L26
aload 3
aload 4
aload 0
invokestatic android/support/multidex/MultiDex/installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
L25:
goto L20
L26:
new java/lang/RuntimeException
dup
ldc "Zip files were not valid."
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L27:
.limit locals 6
.limit stack 4
.end method

.method private static installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
.signature "(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List<Ljava/io/File;>;)V"
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalAccessException
.throws java/lang/NoSuchFieldException
.throws java/lang/reflect/InvocationTargetException
.throws java/lang/NoSuchMethodException
.throws java/io/IOException
aload 2
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
getstatic android/os/Build$VERSION/SDK_INT I
bipush 19
if_icmplt L1
aload 0
aload 2
aload 1
invokestatic android/support/multidex/MultiDex$V19/access$000(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
L0:
return
L1:
getstatic android/os/Build$VERSION/SDK_INT I
bipush 14
if_icmplt L2
aload 0
aload 2
aload 1
invokestatic android/support/multidex/MultiDex$V14/access$100(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
return
L2:
aload 0
aload 2
invokestatic android/support/multidex/MultiDex$V4/access$200(Ljava/lang/ClassLoader;Ljava/util/List;)V
return
.limit locals 3
.limit stack 3
.end method

.method static isVMMultidexCapable(Ljava/lang/String;)Z
.catch java/lang/NumberFormatException from L0 to L1 using L2
iconst_0
istore 4
iload 4
istore 3
aload 0
ifnull L3
ldc "(\\d+)\\.(\\d+)(\\.\\d+)?"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 0
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
astore 5
iload 4
istore 3
aload 5
invokevirtual java/util/regex/Matcher/matches()Z
ifeq L3
L0:
aload 5
iconst_1
invokevirtual java/util/regex/Matcher/group(I)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 1
aload 5
iconst_2
invokevirtual java/util/regex/Matcher/group(I)Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 2
L1:
iload 1
iconst_2
if_icmpgt L4
iload 1
iconst_2
if_icmpne L5
iload 2
iconst_1
if_icmplt L5
L4:
iconst_1
istore 3
L3:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "VM with version "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 5
iload 3
ifeq L6
ldc " has multidex support"
astore 0
L7:
ldc "MultiDex"
aload 5
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 3
ireturn
L5:
iconst_0
istore 3
goto L3
L6:
ldc " does not have multidex support"
astore 0
goto L7
L2:
astore 5
iload 4
istore 3
goto L3
.limit locals 6
.limit stack 3
.end method
