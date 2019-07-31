.bytecode 50.0
.class public synchronized com/bumptech/glide/provider/FixedLoadProvider
.super java/lang/Object
.implements com/bumptech/glide/provider/LoadProvider
.signature "<A:Ljava/lang/Object;T:Ljava/lang/Object;Z:Ljava/lang/Object;R:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;"

.field private final 'dataLoadProvider' Lcom/bumptech/glide/provider/DataLoadProvider; signature "Lcom/bumptech/glide/provider/DataLoadProvider<TT;TZ;>;"

.field private final 'modelLoader' Lcom/bumptech/glide/load/model/ModelLoader; signature "Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"

.field private final 'transcoder' Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder; signature "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"

.method public <init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/provider/DataLoadProvider;)V
.signature "(Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;Lcom/bumptech/glide/provider/DataLoadProvider<TT;TZ;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "ModelLoader must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/bumptech/glide/provider/FixedLoadProvider/modelLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 2
ifnonnull L1
new java/lang/NullPointerException
dup
ldc "Transcoder must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
aload 2
putfield com/bumptech/glide/provider/FixedLoadProvider/transcoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
aload 3
ifnonnull L2
new java/lang/NullPointerException
dup
ldc "DataLoadProvider must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 0
aload 3
putfield com/bumptech/glide/provider/FixedLoadProvider/dataLoadProvider Lcom/bumptech/glide/provider/DataLoadProvider;
return
.limit locals 4
.limit stack 3
.end method

.method public getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
.signature "()Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;TZ;>;"
aload 0
getfield com/bumptech/glide/provider/FixedLoadProvider/dataLoadProvider Lcom/bumptech/glide/provider/DataLoadProvider;
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
.signature "()Lcom/bumptech/glide/load/ResourceEncoder<TZ;>;"
aload 0
getfield com/bumptech/glide/provider/FixedLoadProvider/dataLoadProvider Lcom/bumptech/glide/provider/DataLoadProvider;
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getEncoder()Lcom/bumptech/glide/load/ResourceEncoder; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;
.signature "()Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
aload 0
getfield com/bumptech/glide/provider/FixedLoadProvider/modelLoader Lcom/bumptech/glide/load/model/ModelLoader;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
.signature "()Lcom/bumptech/glide/load/ResourceDecoder<TT;TZ;>;"
aload 0
getfield com/bumptech/glide/provider/FixedLoadProvider/dataLoadProvider Lcom/bumptech/glide/provider/DataLoadProvider;
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
.signature "()Lcom/bumptech/glide/load/Encoder<TT;>;"
aload 0
getfield com/bumptech/glide/provider/FixedLoadProvider/dataLoadProvider Lcom/bumptech/glide/provider/DataLoadProvider;
invokeinterface com/bumptech/glide/provider/DataLoadProvider/getSourceEncoder()Lcom/bumptech/glide/load/Encoder; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
.signature "()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
aload 0
getfield com/bumptech/glide/provider/FixedLoadProvider/transcoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
areturn
.limit locals 1
.limit stack 1
.end method
