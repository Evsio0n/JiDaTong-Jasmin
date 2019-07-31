.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/EngineKeyFactory
.super java/lang/Object

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public buildKey(Ljava/lang/String;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/load/engine/EngineKey;
new com/bumptech/glide/load/engine/EngineKey
dup
aload 1
aload 2
iload 3
iload 4
aload 5
aload 6
aload 7
aload 8
aload 9
aload 10
invokespecial com/bumptech/glide/load/engine/EngineKey/<init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/Encoder;)V
areturn
.limit locals 11
.limit stack 12
.end method
