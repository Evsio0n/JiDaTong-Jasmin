.bytecode 50.0
.class public final synchronized com/bumptech/glide/module/ManifestParser
.super java/lang/Object

.field private static final 'GLIDE_MODULE_VALUE' Ljava/lang/String; = "GlideModule"

.field private final 'context' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/module/ManifestParser/context Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method private static parseModule(Ljava/lang/String;)Lcom/bumptech/glide/module/GlideModule;
.catch java/lang/ClassNotFoundException from L0 to L1 using L2
.catch java/lang/InstantiationException from L1 to L3 using L4
.catch java/lang/IllegalAccessException from L1 to L3 using L5
L0:
aload 0
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
astore 0
L1:
aload 0
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
astore 1
L3:
aload 1
instanceof com/bumptech/glide/module/GlideModule
ifne L6
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Expected instanceof GlideModule, but found: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 0
new java/lang/IllegalArgumentException
dup
ldc "Unable to find GlideModule implementation"
aload 0
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L4:
astore 1
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unable to instantiate GlideModule implementation for "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L5:
astore 1
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Unable to instantiate GlideModule implementation for "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L6:
aload 1
checkcast com/bumptech/glide/module/GlideModule
areturn
.limit locals 2
.limit stack 4
.end method

.method public parse()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/bumptech/glide/module/GlideModule;>;"
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L1 to L3 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
L0:
aload 0
getfield com/bumptech/glide/module/ManifestParser/context Landroid/content/Context;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 0
getfield com/bumptech/glide/module/ManifestParser/context Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
sipush 128
invokevirtual android/content/pm/PackageManager/getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
astore 2
aload 2
getfield android/content/pm/ApplicationInfo/metaData Landroid/os/Bundle;
ifnull L4
aload 2
getfield android/content/pm/ApplicationInfo/metaData Landroid/os/Bundle;
invokevirtual android/os/Bundle/keySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 4
ldc "GlideModule"
aload 2
getfield android/content/pm/ApplicationInfo/metaData Landroid/os/Bundle;
aload 4
invokevirtual android/os/Bundle/get(Ljava/lang/String;)Ljava/lang/Object;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 1
aload 4
invokestatic com/bumptech/glide/module/ManifestParser/parseModule(Ljava/lang/String;)Lcom/bumptech/glide/module/GlideModule;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L3:
goto L1
L2:
astore 1
new java/lang/RuntimeException
dup
ldc "Unable to find metadata to parse GlideModules"
aload 1
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L4:
aload 1
areturn
.limit locals 5
.limit stack 4
.end method
