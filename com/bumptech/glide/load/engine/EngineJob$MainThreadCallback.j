.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/EngineJob$MainThreadCallback
.super java/lang/Object
.implements android/os/Handler$Callback
.inner class private static MainThreadCallback inner com/bumptech/glide/load/engine/EngineJob$MainThreadCallback outer com/bumptech/glide/load/engine/EngineJob

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/bumptech/glide/load/engine/EngineJob$1;)V
aload 0
invokespecial com/bumptech/glide/load/engine/EngineJob$MainThreadCallback/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public handleMessage(Landroid/os/Message;)Z
iconst_1
aload 1
getfield android/os/Message/what I
if_icmpeq L0
iconst_2
aload 1
getfield android/os/Message/what I
if_icmpne L1
L0:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast com/bumptech/glide/load/engine/EngineJob
astore 2
iconst_1
aload 1
getfield android/os/Message/what I
if_icmpne L2
aload 2
invokestatic com/bumptech/glide/load/engine/EngineJob/access$100(Lcom/bumptech/glide/load/engine/EngineJob;)V
iconst_1
ireturn
L2:
aload 2
invokestatic com/bumptech/glide/load/engine/EngineJob/access$200(Lcom/bumptech/glide/load/engine/EngineJob;)V
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method
