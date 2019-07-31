.bytecode 50.0
.class final synchronized android/support/multidex/MultiDex$V14
.super java/lang/Object
.inner class private static final V14 inner android/support/multidex/MultiDex$V14 outer android/support/multidex/MultiDex

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalAccessException
.throws java/lang/NoSuchFieldException
.throws java/lang/reflect/InvocationTargetException
.throws java/lang/NoSuchMethodException
aload 0
aload 1
aload 2
invokestatic android/support/multidex/MultiDex$V14/install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
return
.limit locals 3
.limit stack 3
.end method

.method private static install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
.signature "(Ljava/lang/ClassLoader;Ljava/util/List<Ljava/io/File;>;Ljava/io/File;)V"
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalAccessException
.throws java/lang/NoSuchFieldException
.throws java/lang/reflect/InvocationTargetException
.throws java/lang/NoSuchMethodException
aload 0
ldc "pathList"
invokestatic android/support/multidex/MultiDex/access$300(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
aload 0
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 0
aload 0
ldc "dexElements"
aload 0
new java/util/ArrayList
dup
aload 1
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
aload 2
invokestatic android/support/multidex/MultiDex$V14/makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;)[Ljava/lang/Object;
invokestatic android/support/multidex/MultiDex/access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 6
.end method

.method private static makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;)[Ljava/lang/Object;
.signature "(Ljava/lang/Object;Ljava/util/ArrayList<Ljava/io/File;>;Ljava/io/File;)[Ljava/lang/Object;"
.throws java/lang/IllegalAccessException
.throws java/lang/reflect/InvocationTargetException
.throws java/lang/NoSuchMethodException
aload 0
ldc "makeDexElements"
iconst_2
anewarray java/lang/Class
dup
iconst_0
ldc java/util/ArrayList
aastore
dup
iconst_1
ldc java/io/File
aastore
invokestatic android/support/multidex/MultiDex/access$500(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
aload 0
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 2
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
checkcast [Ljava/lang/Object;
checkcast [Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 6
.end method
