.bytecode 50.0
.class public final synchronized com/bumptech/glide/RequestManager$VideoModelRequest
.super java/lang/Object
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class public final VideoModelRequest inner com/bumptech/glide/RequestManager$VideoModelRequest outer com/bumptech/glide/RequestManager

.field private final 'loader' Lcom/bumptech/glide/load/model/ModelLoader; signature "Lcom/bumptech/glide/load/model/ModelLoader<TT;Landroid/os/ParcelFileDescriptor;>;"

.field final synthetic 'this$0' Lcom/bumptech/glide/RequestManager;

.method <init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;)V
.signature "(Lcom/bumptech/glide/load/model/ModelLoader<TT;Landroid/os/ParcelFileDescriptor;>;)V"
aload 0
aload 1
putfield com/bumptech/glide/RequestManager$VideoModelRequest/this$0 Lcom/bumptech/glide/RequestManager;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/bumptech/glide/RequestManager$VideoModelRequest/loader Lcom/bumptech/glide/load/model/ModelLoader;
return
.limit locals 3
.limit stack 2
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;
.signature "(TT;)Lcom/bumptech/glide/DrawableTypeRequest<TT;>;"
aload 0
getfield com/bumptech/glide/RequestManager$VideoModelRequest/this$0 Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/RequestManager/access$500(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$OptionsApplier;
new com/bumptech/glide/DrawableTypeRequest
dup
aload 1
invokestatic com/bumptech/glide/RequestManager/access$000(Ljava/lang/Object;)Ljava/lang/Class;
aconst_null
aload 0
getfield com/bumptech/glide/RequestManager$VideoModelRequest/loader Lcom/bumptech/glide/load/model/ModelLoader;
aload 0
getfield com/bumptech/glide/RequestManager$VideoModelRequest/this$0 Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/RequestManager/access$100(Lcom/bumptech/glide/RequestManager;)Landroid/content/Context;
aload 0
getfield com/bumptech/glide/RequestManager$VideoModelRequest/this$0 Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/RequestManager/access$200(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/Glide;
aload 0
getfield com/bumptech/glide/RequestManager$VideoModelRequest/this$0 Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/RequestManager/access$300(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/RequestTracker;
aload 0
getfield com/bumptech/glide/RequestManager$VideoModelRequest/this$0 Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/RequestManager/access$400(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/Lifecycle;
aload 0
getfield com/bumptech/glide/RequestManager$VideoModelRequest/this$0 Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/RequestManager/access$500(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$OptionsApplier;
invokespecial com/bumptech/glide/DrawableTypeRequest/<init>(Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
invokevirtual com/bumptech/glide/RequestManager$OptionsApplier/apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
checkcast com/bumptech/glide/DrawableTypeRequest
aload 1
invokevirtual com/bumptech/glide/DrawableTypeRequest/load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;
checkcast com/bumptech/glide/DrawableTypeRequest
areturn
.limit locals 2
.limit stack 11
.end method
