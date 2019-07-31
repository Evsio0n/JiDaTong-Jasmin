.bytecode 50.0
.class final synchronized android/support/multidex/MultiDex$V19
.super java/lang/Object
.inner class private static final V19 inner android/support/multidex/MultiDex$V19 outer android/support/multidex/MultiDex

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalAccessException
.throws java/lang/NoSuchFieldException
.throws java/lang/reflect/InvocationTargetException
.throws java/lang/NoSuchMethodException
aload 0
aload 1
aload 2
invokestatic android/support/multidex/MultiDex$V19/install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
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
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 4
ldc "dexElements"
aload 4
new java/util/ArrayList
dup
aload 1
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
aload 2
aload 3
invokestatic android/support/multidex/MultiDex$V19/makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;
invokestatic android/support/multidex/MultiDex/access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
aload 3
invokevirtual java/util/ArrayList/size()I
ifle L0
aload 3
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
ldc "MultiDex"
ldc "Exception in makeDexElement"
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/io/IOException
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
goto L1
L2:
aload 0
ldc "dexElementsSuppressedExceptions"
invokestatic android/support/multidex/MultiDex/access$300(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 2
aload 2
aload 0
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast [Ljava/io/IOException;
checkcast [Ljava/io/IOException;
astore 4
aload 4
ifnonnull L3
aload 3
aload 3
invokevirtual java/util/ArrayList/size()I
anewarray java/io/IOException
invokevirtual java/util/ArrayList/toArray([Ljava/lang/Object;)[Ljava/lang/Object;
checkcast [Ljava/io/IOException;
astore 1
L4:
aload 2
aload 0
aload 1
invokevirtual java/lang/reflect/Field/set(Ljava/lang/Object;Ljava/lang/Object;)V
L0:
return
L3:
aload 3
invokevirtual java/util/ArrayList/size()I
aload 4
arraylength
iadd
anewarray java/io/IOException
astore 1
aload 3
aload 1
invokevirtual java/util/ArrayList/toArray([Ljava/lang/Object;)[Ljava/lang/Object;
pop
aload 4
iconst_0
aload 1
aload 3
invokevirtual java/util/ArrayList/size()I
aload 4
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto L4
.limit locals 5
.limit stack 6
.end method

.method private static makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;
.signature "(Ljava/lang/Object;Ljava/util/ArrayList<Ljava/io/File;>;Ljava/io/File;Ljava/util/ArrayList<Ljava/io/IOException;>;)[Ljava/lang/Object;"
.throws java/lang/IllegalAccessException
.throws java/lang/reflect/InvocationTargetException
.throws java/lang/NoSuchMethodException
aload 0
ldc "makeDexElements"
iconst_3
anewarray java/lang/Class
dup
iconst_0
ldc java/util/ArrayList
aastore
dup
iconst_1
ldc java/io/File
aastore
dup
iconst_2
ldc java/util/ArrayList
aastore
invokestatic android/support/multidex/MultiDex/access$500(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
aload 0
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 2
aastore
dup
iconst_2
aload 3
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
checkcast [Ljava/lang/Object;
checkcast [Ljava/lang/Object;
areturn
.limit locals 4
.limit stack 6
.end method
