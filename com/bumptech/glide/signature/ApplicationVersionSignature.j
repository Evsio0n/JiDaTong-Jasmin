.bytecode 50.0
.class public final synchronized com/bumptech/glide/signature/ApplicationVersionSignature
.super java/lang/Object

.field private static final 'PACKAGE_NAME_TO_KEY' Ljava/util/concurrent/ConcurrentHashMap; signature "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/bumptech/glide/load/Key;>;"

.method static <clinit>()V
new java/util/concurrent/ConcurrentHashMap
dup
invokespecial java/util/concurrent/ConcurrentHashMap/<init>()V
putstatic com/bumptech/glide/signature/ApplicationVersionSignature/PACKAGE_NAME_TO_KEY Ljava/util/concurrent/ConcurrentHashMap;
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

.method public static obtain(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
astore 3
getstatic com/bumptech/glide/signature/ApplicationVersionSignature/PACKAGE_NAME_TO_KEY Ljava/util/concurrent/ConcurrentHashMap;
aload 3
invokevirtual java/util/concurrent/ConcurrentHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/bumptech/glide/load/Key
astore 2
aload 2
astore 1
aload 2
ifnonnull L0
aload 0
invokestatic com/bumptech/glide/signature/ApplicationVersionSignature/obtainVersionSignature(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;
astore 0
getstatic com/bumptech/glide/signature/ApplicationVersionSignature/PACKAGE_NAME_TO_KEY Ljava/util/concurrent/ConcurrentHashMap;
aload 3
aload 0
invokevirtual java/util/concurrent/ConcurrentHashMap/putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/bumptech/glide/load/Key
astore 2
aload 2
astore 1
aload 2
ifnonnull L0
aload 0
astore 1
L0:
aload 1
areturn
.limit locals 4
.limit stack 3
.end method

.method private static obtainVersionSignature(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
aconst_null
astore 1
L0:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
iconst_0
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 0
L1:
aload 0
ifnull L3
aload 0
getfield android/content/pm/PackageInfo/versionCode I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
astore 0
L4:
new com/bumptech/glide/signature/StringSignature
dup
aload 0
invokespecial com/bumptech/glide/signature/StringSignature/<init>(Ljava/lang/String;)V
areturn
L2:
astore 0
aload 0
invokevirtual android/content/pm/PackageManager$NameNotFoundException/printStackTrace()V
aload 1
astore 0
goto L1
L3:
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
astore 0
goto L4
.limit locals 2
.limit stack 3
.end method

.method static reset()V
getstatic com/bumptech/glide/signature/ApplicationVersionSignature/PACKAGE_NAME_TO_KEY Ljava/util/concurrent/ConcurrentHashMap;
invokevirtual java/util/concurrent/ConcurrentHashMap/clear()V
return
.limit locals 0
.limit stack 1
.end method
