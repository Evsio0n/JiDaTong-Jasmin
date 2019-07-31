.bytecode 50.0
.class public synchronized com/bumptech/glide/load/engine/Engine$LoadStatus
.super java/lang/Object
.inner class public static LoadStatus inner com/bumptech/glide/load/engine/Engine$LoadStatus outer com/bumptech/glide/load/engine/Engine

.field private final 'cb' Lcom/bumptech/glide/request/ResourceCallback;

.field private final 'engineJob' Lcom/bumptech/glide/load/engine/EngineJob;

.method public <init>(Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/Engine$LoadStatus/cb Lcom/bumptech/glide/request/ResourceCallback;
aload 0
aload 2
putfield com/bumptech/glide/load/engine/Engine$LoadStatus/engineJob Lcom/bumptech/glide/load/engine/EngineJob;
return
.limit locals 3
.limit stack 2
.end method

.method public cancel()V
aload 0
getfield com/bumptech/glide/load/engine/Engine$LoadStatus/engineJob Lcom/bumptech/glide/load/engine/EngineJob;
aload 0
getfield com/bumptech/glide/load/engine/Engine$LoadStatus/cb Lcom/bumptech/glide/request/ResourceCallback;
invokevirtual com/bumptech/glide/load/engine/EngineJob/removeCallback(Lcom/bumptech/glide/request/ResourceCallback;)V
return
.limit locals 1
.limit stack 2
.end method
