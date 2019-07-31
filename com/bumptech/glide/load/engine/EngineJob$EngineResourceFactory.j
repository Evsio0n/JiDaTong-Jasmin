.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/EngineJob$EngineResourceFactory
.super java/lang/Object
.inner class static EngineResourceFactory inner com/bumptech/glide/load/engine/EngineJob$EngineResourceFactory outer com/bumptech/glide/load/engine/EngineJob

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public build(Lcom/bumptech/glide/load/engine/Resource;Z)Lcom/bumptech/glide/load/engine/EngineResource;
.signature "<R:Ljava/lang/Object;>(Lcom/bumptech/glide/load/engine/Resource<TR;>;Z)Lcom/bumptech/glide/load/engine/EngineResource<TR;>;"
new com/bumptech/glide/load/engine/EngineResource
dup
aload 1
iload 2
invokespecial com/bumptech/glide/load/engine/EngineResource/<init>(Lcom/bumptech/glide/load/engine/Resource;Z)V
areturn
.limit locals 3
.limit stack 4
.end method
