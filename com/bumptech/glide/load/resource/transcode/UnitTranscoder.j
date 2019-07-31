.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/transcode/UnitTranscoder
.super java/lang/Object
.implements com/bumptech/glide/load/resource/transcode/ResourceTranscoder
.signature "<Z:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TZ;>;"

.field private static final 'UNIT_TRANSCODER' Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder; signature "Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder<*>;"

.method static <clinit>()V
new com/bumptech/glide/load/resource/transcode/UnitTranscoder
dup
invokespecial com/bumptech/glide/load/resource/transcode/UnitTranscoder/<init>()V
putstatic com/bumptech/glide/load/resource/transcode/UnitTranscoder/UNIT_TRANSCODER Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;
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

.method public static get()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
.signature "<Z:Ljava/lang/Object;>()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TZ;>;"
getstatic com/bumptech/glide/load/resource/transcode/UnitTranscoder/UNIT_TRANSCODER Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;
areturn
.limit locals 0
.limit stack 1
.end method

.method public getId()Ljava/lang/String;
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method

.method public transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/engine/Resource<TZ;>;)Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
aload 1
areturn
.limit locals 2
.limit stack 1
.end method
