.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/EngineResource
.super java/lang/Object
.implements com/bumptech/glide/load/engine/Resource
.signature "<Z:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
.inner class static abstract interface ResourceListener inner com/bumptech/glide/load/engine/EngineResource$ResourceListener outer com/bumptech/glide/load/engine/EngineResource

.field private 'acquired' I

.field private final 'isCacheable' Z

.field private 'isRecycled' Z

.field private 'key' Lcom/bumptech/glide/load/Key;

.field private 'listener' Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

.field private final 'resource' Lcom/bumptech/glide/load/engine/Resource; signature "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"

.method <init>(Lcom/bumptech/glide/load/engine/Resource;Z)V
.signature "(Lcom/bumptech/glide/load/engine/Resource<TZ;>;Z)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "Wrapped resource must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/bumptech/glide/load/engine/EngineResource/resource Lcom/bumptech/glide/load/engine/Resource;
aload 0
iload 2
putfield com/bumptech/glide/load/engine/EngineResource/isCacheable Z
return
.limit locals 3
.limit stack 3
.end method

.method acquire()V
aload 0
getfield com/bumptech/glide/load/engine/EngineResource/isRecycled Z
ifeq L0
new java/lang/IllegalStateException
dup
ldc "Cannot acquire a recycled resource"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
invokestatic android/os/Looper/myLooper()Landroid/os/Looper;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
new java/lang/IllegalThreadStateException
dup
ldc "Must call acquire on the main thread"
invokespecial java/lang/IllegalThreadStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
aload 0
getfield com/bumptech/glide/load/engine/EngineResource/acquired I
iconst_1
iadd
putfield com/bumptech/glide/load/engine/EngineResource/acquired I
return
.limit locals 1
.limit stack 3
.end method

.method public get()Ljava/lang/Object;
.signature "()TZ;"
aload 0
getfield com/bumptech/glide/load/engine/EngineResource/resource Lcom/bumptech/glide/load/engine/Resource;
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSize()I
aload 0
getfield com/bumptech/glide/load/engine/EngineResource/resource Lcom/bumptech/glide/load/engine/Resource;
invokeinterface com/bumptech/glide/load/engine/Resource/getSize()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method isCacheable()Z
aload 0
getfield com/bumptech/glide/load/engine/EngineResource/isCacheable Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public recycle()V
aload 0
getfield com/bumptech/glide/load/engine/EngineResource/acquired I
ifle L0
new java/lang/IllegalStateException
dup
ldc "Cannot recycle a resource while it is still acquired"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/bumptech/glide/load/engine/EngineResource/isRecycled Z
ifeq L1
new java/lang/IllegalStateException
dup
ldc "Cannot recycle a resource that has already been recycled"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
iconst_1
putfield com/bumptech/glide/load/engine/EngineResource/isRecycled Z
aload 0
getfield com/bumptech/glide/load/engine/EngineResource/resource Lcom/bumptech/glide/load/engine/Resource;
invokeinterface com/bumptech/glide/load/engine/Resource/recycle()V 0
return
.limit locals 1
.limit stack 3
.end method

.method release()V
aload 0
getfield com/bumptech/glide/load/engine/EngineResource/acquired I
ifgt L0
new java/lang/IllegalStateException
dup
ldc "Cannot release a recycled or not yet acquired resource"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
invokestatic android/os/Looper/myLooper()Landroid/os/Looper;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
new java/lang/IllegalThreadStateException
dup
ldc "Must call release on the main thread"
invokespecial java/lang/IllegalThreadStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
getfield com/bumptech/glide/load/engine/EngineResource/acquired I
iconst_1
isub
istore 1
aload 0
iload 1
putfield com/bumptech/glide/load/engine/EngineResource/acquired I
iload 1
ifne L2
aload 0
getfield com/bumptech/glide/load/engine/EngineResource/listener Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;
aload 0
getfield com/bumptech/glide/load/engine/EngineResource/key Lcom/bumptech/glide/load/Key;
aload 0
invokeinterface com/bumptech/glide/load/engine/EngineResource$ResourceListener/onResourceReleased(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V 2
L2:
return
.limit locals 2
.limit stack 3
.end method

.method setResourceListener(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V
aload 0
aload 1
putfield com/bumptech/glide/load/engine/EngineResource/key Lcom/bumptech/glide/load/Key;
aload 0
aload 2
putfield com/bumptech/glide/load/engine/EngineResource/listener Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;
return
.limit locals 3
.limit stack 2
.end method
