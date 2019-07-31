.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback
.super java/lang/Object
.implements android/os/Handler$Callback
.inner class private static ResourceRecyclerCallback inner com/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback outer com/bumptech/glide/load/engine/ResourceRecycler

.field public static final 'RECYCLE_RESOURCE' I = 1


.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method synthetic <init>(Lcom/bumptech/glide/load/engine/ResourceRecycler$1;)V
aload 0
invokespecial com/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method public handleMessage(Landroid/os/Message;)Z
aload 1
getfield android/os/Message/what I
iconst_1
if_icmpne L0
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast com/bumptech/glide/load/engine/Resource
invokeinterface com/bumptech/glide/load/engine/Resource/recycle()V 0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method
