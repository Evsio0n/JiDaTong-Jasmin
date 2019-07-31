.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock
.super java/lang/Object
.inner class static Clock inner com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock outer com/bumptech/glide/load/engine/prefill/BitmapPreFillRunner

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public now()J
invokestatic android/os/SystemClock/currentThreadTimeMillis()J
lreturn
.limit locals 1
.limit stack 2
.end method
