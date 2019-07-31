.bytecode 50.0
.class public final synchronized com/bumptech/glide/load/model/LazyHeaders
.super java/lang/Object
.implements com/bumptech/glide/load/model/Headers
.inner class public static final Builder inner com/bumptech/glide/load/model/LazyHeaders$Builder outer com/bumptech/glide/load/model/LazyHeaders
.inner class static final StringHeaderFactory inner com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory outer com/bumptech/glide/load/model/LazyHeaders

.field private volatile 'combinedHeaders' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"

.field private final 'headers' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"

.method <init>(Ljava/util/Map;)V
.signature "(Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokestatic java/util/Collections/unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
putfield com/bumptech/glide/load/model/LazyHeaders/headers Ljava/util/Map;
return
.limit locals 2
.limit stack 2
.end method

.method private generateHeaders()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 2
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders/headers Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 4
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/util/List
astore 6
iconst_0
istore 1
L2:
iload 1
aload 6
invokeinterface java/util/List/size()I 0
if_icmpge L3
aload 5
aload 6
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/bumptech/glide/load/model/LazyHeaderFactory
invokeinterface com/bumptech/glide/load/model/LazyHeaderFactory/buildHeader()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 1
aload 6
invokeinterface java/util/List/size()I 0
iconst_1
isub
if_icmpeq L4
aload 5
bipush 44
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
pop
L4:
iload 1
iconst_1
iadd
istore 1
goto L2
L3:
aload 2
aload 4
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L0
L1:
aload 2
areturn
.limit locals 7
.limit stack 3
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof com/bumptech/glide/load/model/LazyHeaders
ifeq L0
aload 1
checkcast com/bumptech/glide/load/model/LazyHeaders
astore 1
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders/headers Ljava/util/Map;
aload 1
getfield com/bumptech/glide/load/model/LazyHeaders/headers Ljava/util/Map;
invokeinterface java/util/Map/equals(Ljava/lang/Object;)Z 1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getHeaders()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders/combinedHeaders Ljava/util/Map;
ifnonnull L3
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders/combinedHeaders Ljava/util/Map;
ifnonnull L1
aload 0
aload 0
invokespecial com/bumptech/glide/load/model/LazyHeaders/generateHeaders()Ljava/util/Map;
invokestatic java/util/Collections/unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
putfield com/bumptech/glide/load/model/LazyHeaders/combinedHeaders Ljava/util/Map;
L1:
aload 0
monitorexit
L3:
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders/combinedHeaders Ljava/util/Map;
areturn
L2:
astore 1
L4:
aload 0
monitorexit
L5:
aload 1
athrow
.limit locals 2
.limit stack 2
.end method

.method public hashCode()I
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders/headers Ljava/util/Map;
invokeinterface java/util/Map/hashCode()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "LazyHeaders{headers="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders/headers Ljava/util/Map;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
bipush 125
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
