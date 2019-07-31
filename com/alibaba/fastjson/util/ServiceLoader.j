.bytecode 50.0
.class public synchronized com/alibaba/fastjson/util/ServiceLoader
.super java/lang/Object

.field private static final 'PREFIX' Ljava/lang/String; = "META-INF/services/"

.field private static final 'loadedUrls' Ljava/util/Set; signature "Ljava/util/Set<Ljava/lang/String;>;"

.method static <clinit>()V
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
putstatic com/alibaba/fastjson/util/ServiceLoader/loadedUrls Ljava/util/Set;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/ClassLoader;)Ljava/util/Set<TT;>;"
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L6
aload 1
ifnonnull L7
invokestatic java/util/Collections/emptySet()Ljava/util/Set;
astore 0
L8:
aload 0
areturn
L7:
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
astore 2
aload 0
invokevirtual java/lang/Class/getName()Ljava/lang/String;
astore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "META-INF/services/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
astore 0
L0:
aload 1
aload 3
invokevirtual java/lang/ClassLoader/getResources(Ljava/lang/String;)Ljava/util/Enumeration;
astore 3
L1:
aload 3
invokeinterface java/util/Enumeration/hasMoreElements()Z 0
ifeq L9
aload 3
invokeinterface java/util/Enumeration/nextElement()Ljava/lang/Object; 0
checkcast java/net/URL
astore 4
getstatic com/alibaba/fastjson/util/ServiceLoader/loadedUrls Ljava/util/Set;
aload 4
invokevirtual java/net/URL/toString()Ljava/lang/String;
invokeinterface java/util/Set/contains(Ljava/lang/Object;)Z 1
ifne L1
aload 4
aload 0
invokestatic com/alibaba/fastjson/util/ServiceLoader/load(Ljava/net/URL;Ljava/util/Set;)V
getstatic com/alibaba/fastjson/util/ServiceLoader/loadedUrls Ljava/util/Set;
aload 4
invokevirtual java/net/URL/toString()Ljava/lang/String;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
L3:
goto L1
L2:
astore 3
L9:
aload 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 3
L10:
aload 2
astore 0
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 0
L4:
aload 2
aload 1
aload 0
invokevirtual java/lang/ClassLoader/loadClass(Ljava/lang/String;)Ljava/lang/Class;
invokevirtual java/lang/Class/newInstance()Ljava/lang/Object;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
L5:
goto L10
L6:
astore 0
goto L10
.limit locals 5
.limit stack 3
.end method

.method public static load(Ljava/net/URL;Ljava/util/Set;)V
.signature "(Ljava/net/URL;Ljava/util/Set<Ljava/lang/String;>;)V"
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L6
.catch all from L7 to L8 using L6
.catch all from L9 to L10 using L6
.catch all from L10 to L11 using L6
aconst_null
astore 3
aconst_null
astore 4
L0:
aload 0
invokevirtual java/net/URL/openStream()Ljava/io/InputStream;
astore 0
L1:
aload 0
astore 3
L3:
new java/io/BufferedReader
dup
new java/io/InputStreamReader
dup
aload 0
ldc "utf-8"
invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;Ljava/lang/String;)V
invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
astore 5
L4:
aload 5
invokevirtual java/io/BufferedReader/readLine()Ljava/lang/String;
astore 3
L5:
aload 3
ifnonnull L7
aload 5
invokestatic com/alibaba/fastjson/util/IOUtils/close(Ljava/io/Closeable;)V
aload 0
invokestatic com/alibaba/fastjson/util/IOUtils/close(Ljava/io/Closeable;)V
return
L7:
aload 3
bipush 35
invokevirtual java/lang/String/indexOf(I)I
istore 2
L8:
aload 3
astore 4
iload 2
iflt L10
L9:
aload 3
iconst_0
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 4
L10:
aload 4
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 3
aload 3
invokevirtual java/lang/String/length()I
ifeq L4
aload 1
aload 3
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
L11:
goto L4
L6:
astore 3
aload 5
astore 1
L12:
aload 1
invokestatic com/alibaba/fastjson/util/IOUtils/close(Ljava/io/Closeable;)V
aload 0
invokestatic com/alibaba/fastjson/util/IOUtils/close(Ljava/io/Closeable;)V
aload 3
athrow
L2:
astore 5
aload 3
astore 0
aload 4
astore 1
aload 5
astore 3
goto L12
.limit locals 6
.limit stack 6
.end method
