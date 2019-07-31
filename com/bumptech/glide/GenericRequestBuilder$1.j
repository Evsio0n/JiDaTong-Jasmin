.bytecode 50.0
.class synchronized com/bumptech/glide/GenericRequestBuilder$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/bumptech/glide/GenericRequestBuilder/into(II)Lcom/bumptech/glide/request/FutureTarget;
.inner class inner com/bumptech/glide/GenericRequestBuilder$1

.field final synthetic 'this$0' Lcom/bumptech/glide/GenericRequestBuilder;

.field final synthetic 'val$target' Lcom/bumptech/glide/request/RequestFutureTarget;

.method <init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/request/RequestFutureTarget;)V
aload 0
aload 1
putfield com/bumptech/glide/GenericRequestBuilder$1/this$0 Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
aload 2
putfield com/bumptech/glide/GenericRequestBuilder$1/val$target Lcom/bumptech/glide/request/RequestFutureTarget;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/bumptech/glide/GenericRequestBuilder$1/val$target Lcom/bumptech/glide/request/RequestFutureTarget;
invokevirtual com/bumptech/glide/request/RequestFutureTarget/isCancelled()Z
ifne L0
aload 0
getfield com/bumptech/glide/GenericRequestBuilder$1/this$0 Lcom/bumptech/glide/GenericRequestBuilder;
aload 0
getfield com/bumptech/glide/GenericRequestBuilder$1/val$target Lcom/bumptech/glide/request/RequestFutureTarget;
invokevirtual com/bumptech/glide/GenericRequestBuilder/into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
pop
L0:
return
.limit locals 1
.limit stack 2
.end method
