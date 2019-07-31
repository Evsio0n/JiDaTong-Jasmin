.bytecode 50.0
.class synchronized com/bumptech/glide/manager/ApplicationLifecycle
.super java/lang/Object
.implements com/bumptech/glide/manager/Lifecycle

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V
aload 1
invokeinterface com/bumptech/glide/manager/LifecycleListener/onStart()V 0
return
.limit locals 2
.limit stack 1
.end method
