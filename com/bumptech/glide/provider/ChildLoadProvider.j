.bytecode 50.0
.class public synchronized com/bumptech/glide/provider/ChildLoadProvider
.super java/lang/Object
.implements com/bumptech/glide/provider/LoadProvider
.implements java/lang/Cloneable
.signature "<A:Ljava/lang/Object;T:Ljava/lang/Object;Z:Ljava/lang/Object;R:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;Ljava/lang/Cloneable;"

.field private 'cacheDecoder' Lcom/bumptech/glide/load/ResourceDecoder; signature "Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;TZ;>;"

.field private 'encoder' Lcom/bumptech/glide/load/ResourceEncoder; signature "Lcom/bumptech/glide/load/ResourceEncoder<TZ;>;"

.field private final 'parent' Lcom/bumptech/glide/provider/LoadProvider; signature "Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;"

.field private 'sourceDecoder' Lcom/bumptech/glide/load/ResourceDecoder; signature "Lcom/bumptech/glide/load/ResourceDecoder<TT;TZ;>;"

.field private 'sourceEncoder' Lcom/bumptech/glide/load/Encoder; signature "Lcom/bumptech/glide/load/Encoder<TT;>;"

.field private 'transcoder' Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder; signature "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"

.method public <init>(Lcom/bumptech/glide/provider/LoadProvider;)V
.signature "(Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/provider/ChildLoadProvider/parent Lcom/bumptech/glide/provider/LoadProvider;
return
.limit locals 2
.limit stack 2
.end method

.method public clone()Lcom/bumptech/glide/provider/ChildLoadProvider;
.signature "()Lcom/bumptech/glide/provider/ChildLoadProvider<TA;TT;TZ;TR;>;"
.catch java/lang/CloneNotSupportedException from L0 to L1 using L2
L0:
aload 0
invokespecial java/lang/Object/clone()Ljava/lang/Object;
checkcast com/bumptech/glide/provider/ChildLoadProvider
astore 1
L1:
aload 1
areturn
L2:
astore 1
new java/lang/RuntimeException
dup
aload 1
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/Throwable;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public volatile synthetic clone()Ljava/lang/Object;
.throws java/lang/CloneNotSupportedException
aload 0
invokevirtual com/bumptech/glide/provider/ChildLoadProvider/clone()Lcom/bumptech/glide/provider/ChildLoadProvider;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
.signature "()Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;TZ;>;"
aload 0
getfield com/bumptech/glide/provider/ChildLoadProvider/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
ifnull L0
aload 0
getfield com/bumptech/glide/provider/ChildLoadProvider/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
areturn
L0:
aload 0
getfield com/bumptech/glide/provider/ChildLoadProvider/parent Lcom/bumptech/glide/provider/LoadProvider;
invokeinterface com/bumptech/glide/provider/LoadProvider/getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;
.signature "()Lcom/bumptech/glide/load/ResourceEncoder<TZ;>;"
aload 0
getfield com/bumptech/glide/provider/ChildLoadProvider/encoder Lcom/bumptech/glide/load/ResourceEncoder;
ifnull L0
aload 0
getfield com/bumptech/glide/provider/ChildLoadProvider/encoder Lcom/bumptech/glide/load/ResourceEncoder;
areturn
L0:
aload 0
getfield com/bumptech/glide/provider/ChildLoadProvider/parent Lcom/bumptech/glide/provider/LoadProvider;
invokeinterface com/bumptech/glide/provider/LoadProvider/getEncoder()Lcom/bumptech/glide/load/ResourceEncoder; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;
.signature "()Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
aload 0
getfield com/bumptech/glide/provider/ChildLoadProvider/parent Lcom/bumptech/glide/provider/LoadProvider;
invokeinterface com/bumptech/glide/provider/LoadProvider/getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
.signature "()Lcom/bumptech/glide/load/ResourceDecoder<TT;TZ;>;"
aload 0
getfield com/bumptech/glide/provider/ChildLoadProvider/sourceDecoder Lcom/bumptech/glide/load/ResourceDecoder;
ifnull L0
aload 0
getfield com/bumptech/glide/provider/ChildLoadProvider/sourceDecoder Lcom/bumptech/glide/load/ResourceDecoder;
areturn
L0:
aload 0
getfield com/bumptech/glide/provider/ChildLoadProvider/parent Lcom/bumptech/glide/provider/LoadProvider;
invokeinterface com/bumptech/glide/provider/LoadProvider/getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSourceEncoder()Lcom/bumptech/glide/load/Encoder;
.signature "()Lcom/bumptech/glide/load/Encoder<TT;>;"
aload 0
getfield com/bumptech/glide/provider/ChildLoadProvider/sourceEncoder Lcom/bumptech/glide/load/Encoder;
ifnull L0
aload 0
getfield com/bumptech/glide/provider/ChildLoadProvider/sourceEncoder Lcom/bumptech/glide/load/Encoder;
areturn
L0:
aload 0
getfield com/bumptech/glide/provider/ChildLoadProvider/parent Lcom/bumptech/glide/provider/LoadProvider;
invokeinterface com/bumptech/glide/provider/LoadProvider/getSourceEncoder()Lcom/bumptech/glide/load/Encoder; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
.signature "()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
aload 0
getfield com/bumptech/glide/provider/ChildLoadProvider/transcoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
ifnull L0
aload 0
getfield com/bumptech/glide/provider/ChildLoadProvider/transcoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
areturn
L0:
aload 0
getfield com/bumptech/glide/provider/ChildLoadProvider/parent Lcom/bumptech/glide/provider/LoadProvider;
invokeinterface com/bumptech/glide/provider/LoadProvider/getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public setCacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)V
.signature "(Lcom/bumptech/glide/load/ResourceDecoder<Ljava/io/File;TZ;>;)V"
aload 0
aload 1
putfield com/bumptech/glide/provider/ChildLoadProvider/cacheDecoder Lcom/bumptech/glide/load/ResourceDecoder;
return
.limit locals 2
.limit stack 2
.end method

.method public setEncoder(Lcom/bumptech/glide/load/ResourceEncoder;)V
.signature "(Lcom/bumptech/glide/load/ResourceEncoder<TZ;>;)V"
aload 0
aload 1
putfield com/bumptech/glide/provider/ChildLoadProvider/encoder Lcom/bumptech/glide/load/ResourceEncoder;
return
.limit locals 2
.limit stack 2
.end method

.method public setSourceDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)V
.signature "(Lcom/bumptech/glide/load/ResourceDecoder<TT;TZ;>;)V"
aload 0
aload 1
putfield com/bumptech/glide/provider/ChildLoadProvider/sourceDecoder Lcom/bumptech/glide/load/ResourceDecoder;
return
.limit locals 2
.limit stack 2
.end method

.method public setSourceEncoder(Lcom/bumptech/glide/load/Encoder;)V
.signature "(Lcom/bumptech/glide/load/Encoder<TT;>;)V"
aload 0
aload 1
putfield com/bumptech/glide/provider/ChildLoadProvider/sourceEncoder Lcom/bumptech/glide/load/Encoder;
return
.limit locals 2
.limit stack 2
.end method

.method public setTranscoder(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
.signature "(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;)V"
aload 0
aload 1
putfield com/bumptech/glide/provider/ChildLoadProvider/transcoder Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
return
.limit locals 2
.limit stack 2
.end method
