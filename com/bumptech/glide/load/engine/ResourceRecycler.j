.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/ResourceRecycler
.super java/lang/Object
.inner class static synthetic inner com/bumptech/glide/load/engine/ResourceRecycler$1
.inner class private static ResourceRecyclerCallback inner com/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback outer com/bumptech/glide/load/engine/ResourceRecycler

.field private final 'handler' Landroid/os/Handler;

.field private 'isRecycling' Z

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new android/os/Handler
dup
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
new com/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback
dup
aconst_null
invokespecial com/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback/<init>(Lcom/bumptech/glide/load/engine/ResourceRecycler$1;)V
invokespecial android/os/Handler/<init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
putfield com/bumptech/glide/load/engine/ResourceRecycler/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 7
.end method

.method public recycle(Lcom/bumptech/glide/load/engine/Resource;)V
.signature "(Lcom/bumptech/glide/load/engine/Resource<*>;)V"
invokestatic com/bumptech/glide/util/Util/assertMainThread()V
aload 0
getfield com/bumptech/glide/load/engine/ResourceRecycler/isRecycling Z
ifeq L0
aload 0
getfield com/bumptech/glide/load/engine/ResourceRecycler/handler Landroid/os/Handler;
iconst_1
aload 1
invokevirtual android/os/Handler/obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
invokevirtual android/os/Message/sendToTarget()V
return
L0:
aload 0
iconst_1
putfield com/bumptech/glide/load/engine/ResourceRecycler/isRecycling Z
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/recycle()V 0
aload 0
iconst_0
putfield com/bumptech/glide/load/engine/ResourceRecycler/isRecycling Z
return
.limit locals 2
.limit stack 3
.end method
