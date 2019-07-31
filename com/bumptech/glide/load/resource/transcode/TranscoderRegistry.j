.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/transcode/TranscoderRegistry
.super java/lang/Object

.field private static final 'GET_KEY' Lcom/bumptech/glide/util/MultiClassKey;

.field private final 'factories' Ljava/util/Map; signature "Ljava/util/Map<Lcom/bumptech/glide/util/MultiClassKey;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<**>;>;"

.method static <clinit>()V
new com/bumptech/glide/util/MultiClassKey
dup
invokespecial com/bumptech/glide/util/MultiClassKey/<init>()V
putstatic com/bumptech/glide/load/resource/transcode/TranscoderRegistry/GET_KEY Lcom/bumptech/glide/util/MultiClassKey;
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
putfield com/bumptech/glide/load/resource/transcode/TranscoderRegistry/factories Ljava/util/Map;
return
.limit locals 1
.limit stack 3
.end method

.method public get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
.signature "<Z:Ljava/lang/Object;R:Ljava/lang/Object;>(Ljava/lang/Class<TZ;>;Ljava/lang/Class<TR;>;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 1
aload 2
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L5
invokestatic com/bumptech/glide/load/resource/transcode/UnitTranscoder/get()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
astore 3
L6:
aload 3
areturn
L5:
getstatic com/bumptech/glide/load/resource/transcode/TranscoderRegistry/GET_KEY Lcom/bumptech/glide/util/MultiClassKey;
astore 3
aload 3
monitorenter
L0:
getstatic com/bumptech/glide/load/resource/transcode/TranscoderRegistry/GET_KEY Lcom/bumptech/glide/util/MultiClassKey;
aload 1
aload 2
invokevirtual com/bumptech/glide/util/MultiClassKey/set(Ljava/lang/Class;Ljava/lang/Class;)V
aload 0
getfield com/bumptech/glide/load/resource/transcode/TranscoderRegistry/factories Ljava/util/Map;
getstatic com/bumptech/glide/load/resource/transcode/TranscoderRegistry/GET_KEY Lcom/bumptech/glide/util/MultiClassKey;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/bumptech/glide/load/resource/transcode/ResourceTranscoder
astore 4
aload 3
monitorexit
L1:
aload 4
astore 3
aload 4
ifnonnull L6
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "No transcoder registered for "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " and "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 1
L3:
aload 3
monitorexit
L4:
aload 1
athrow
.limit locals 5
.limit stack 4
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
.signature "<Z:Ljava/lang/Object;R:Ljava/lang/Object;>(Ljava/lang/Class<TZ;>;Ljava/lang/Class<TR;>;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;)V"
aload 0
getfield com/bumptech/glide/load/resource/transcode/TranscoderRegistry/factories Ljava/util/Map;
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
