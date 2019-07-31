.bytecode 50.0
.class final synchronized android/support/multidex/MultiDex$V4
.super java/lang/Object
.inner class private static final V4 inner android/support/multidex/MultiDex$V4 outer android/support/multidex/MultiDex

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Ljava/lang/ClassLoader;Ljava/util/List;)V
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalAccessException
.throws java/lang/NoSuchFieldException
.throws java/io/IOException
aload 0
aload 1
invokestatic android/support/multidex/MultiDex$V4/install(Ljava/lang/ClassLoader;Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method private static install(Ljava/lang/ClassLoader;Ljava/util/List;)V
.signature "(Ljava/lang/ClassLoader;Ljava/util/List<Ljava/io/File;>;)V"
.throws java/lang/IllegalArgumentException
.throws java/lang/IllegalAccessException
.throws java/lang/NoSuchFieldException
.throws java/io/IOException
aload 1
invokeinterface java/util/List/size()I 0
istore 2
aload 0
ldc "path"
invokestatic android/support/multidex/MultiDex/access$300(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 3
new java/lang/StringBuilder
dup
aload 3
aload 0
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
astore 4
iload 2
anewarray java/lang/String
astore 5
iload 2
anewarray java/io/File
astore 6
iload 2
anewarray java/util/zip/ZipFile
astore 7
iload 2
anewarray dalvik/system/DexFile
astore 8
aload 1
invokeinterface java/util/List/listIterator()Ljava/util/ListIterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/ListIterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/ListIterator/next()Ljava/lang/Object; 0
checkcast java/io/File
astore 9
aload 9
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
astore 10
aload 4
bipush 58
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 10
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
invokeinterface java/util/ListIterator/previousIndex()I 0
istore 2
aload 5
iload 2
aload 10
aastore
aload 6
iload 2
aload 9
aastore
aload 7
iload 2
new java/util/zip/ZipFile
dup
aload 9
invokespecial java/util/zip/ZipFile/<init>(Ljava/io/File;)V
aastore
aload 8
iload 2
aload 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".dex"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokestatic dalvik/system/DexFile/loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
aastore
goto L0
L1:
aload 3
aload 0
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/reflect/Field/set(Ljava/lang/Object;Ljava/lang/Object;)V
aload 0
ldc "mPaths"
aload 5
invokestatic android/support/multidex/MultiDex/access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
aload 0
ldc "mFiles"
aload 6
invokestatic android/support/multidex/MultiDex/access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
aload 0
ldc "mZips"
aload 7
invokestatic android/support/multidex/MultiDex/access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
aload 0
ldc "mDexs"
aload 8
invokestatic android/support/multidex/MultiDex/access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
return
.limit locals 11
.limit stack 5
.end method
