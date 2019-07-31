.bytecode 50.0
.class public synchronized com/bumptech/glide/provider/DataLoadProviderRegistry
.super java/lang/Object

.field private static final 'GET_KEY' Lcom/bumptech/glide/util/MultiClassKey;

.field private final 'providers' Ljava/util/Map; signature "Ljava/util/Map<Lcom/bumptech/glide/util/MultiClassKey;Lcom/bumptech/glide/provider/DataLoadProvider<**>;>;"

.method static <clinit>()V
new com/bumptech/glide/util/MultiClassKey
dup
invokespecial com/bumptech/glide/util/MultiClassKey/<init>()V
putstatic com/bumptech/glide/provider/DataLoadProviderRegistry/GET_KEY Lcom/bumptech/glide/util/MultiClassKey;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/bumptech/glide/provider/DataLoadProviderRegistry/providers Ljava/util/Map;
return
.limit locals 1
.limit stack 3
.end method

.method public get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;
.signature "<T:Ljava/lang/Object;Z:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TZ;>;)Lcom/bumptech/glide/provider/DataLoadProvider<TT;TZ;>;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
getstatic com/bumptech/glide/provider/DataLoadProviderRegistry/GET_KEY Lcom/bumptech/glide/util/MultiClassKey;
astore 3
aload 3
monitorenter
L0:
getstatic com/bumptech/glide/provider/DataLoadProviderRegistry/GET_KEY Lcom/bumptech/glide/util/MultiClassKey;
aload 1
aload 2
invokevirtual com/bumptech/glide/util/MultiClassKey/set(Ljava/lang/Class;Ljava/lang/Class;)V
aload 0
getfield com/bumptech/glide/provider/DataLoadProviderRegistry/providers Ljava/util/Map;
getstatic com/bumptech/glide/provider/DataLoadProviderRegistry/GET_KEY Lcom/bumptech/glide/util/MultiClassKey;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/bumptech/glide/provider/DataLoadProvider
astore 2
aload 3
monitorexit
L1:
aload 2
astore 1
aload 2
ifnonnull L5
invokestatic com/bumptech/glide/provider/EmptyDataLoadProvider/get()Lcom/bumptech/glide/provider/DataLoadProvider;
astore 1
L5:
aload 1
areturn
L2:
astore 1
L3:
aload 3
monitorexit
L4:
aload 1
athrow
.limit locals 4
.limit stack 3
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V
.signature "<T:Ljava/lang/Object;Z:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/Class<TZ;>;Lcom/bumptech/glide/provider/DataLoadProvider<TT;TZ;>;)V"
aload 0
getfield com/bumptech/glide/provider/DataLoadProviderRegistry/providers Ljava/util/Map;
new com/bumptech/glide/util/MultiClassKey
dup
aload 1
aload 2
invokespecial com/bumptech/glide/util/MultiClassKey/<init>(Ljava/lang/Class;Ljava/lang/Class;)V
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 4
.limit stack 5
.end method
