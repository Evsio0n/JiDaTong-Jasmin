.bytecode 50.0
.class public final synchronized com/bumptech/glide/RequestManager$GenericModelRequest
.super java/lang/Object
.signature "<A:Ljava/lang/Object;T:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class public final GenericModelRequest inner com/bumptech/glide/RequestManager$GenericModelRequest outer com/bumptech/glide/RequestManager
.inner class public final GenericTypeRequest inner com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest outer com/bumptech/glide/RequestManager$GenericModelRequest

.field private final 'dataClass' Ljava/lang/Class; signature "Ljava/lang/Class<TT;>;"

.field private final 'modelLoader' Lcom/bumptech/glide/load/model/ModelLoader; signature "Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"

.field final synthetic 'this$0' Lcom/bumptech/glide/RequestManager;

.method <init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)V
.signature "(Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;Ljava/lang/Class<TT;>;)V"
aload 0
aload 1
putfield com/bumptech/glide/RequestManager$GenericModelRequest/this$0 Lcom/bumptech/glide/RequestManager;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/bumptech/glide/RequestManager$GenericModelRequest/modelLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 0
aload 3
putfield com/bumptech/glide/RequestManager$GenericModelRequest/dataClass Ljava/lang/Class;
return
.limit locals 4
.limit stack 2
.end method

.method static synthetic access$600(Lcom/bumptech/glide/RequestManager$GenericModelRequest;)Lcom/bumptech/glide/load/model/ModelLoader;
aload 0
getfield com/bumptech/glide/RequestManager$GenericModelRequest/modelLoader Lcom/bumptech/glide/load/model/ModelLoader;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/bumptech/glide/RequestManager$GenericModelRequest;)Ljava/lang/Class;
aload 0
getfield com/bumptech/glide/RequestManager$GenericModelRequest/dataClass Ljava/lang/Class;
areturn
.limit locals 1
.limit stack 1
.end method

.method public from(Ljava/lang/Class;)Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
.signature "(Ljava/lang/Class<TA;>;)Lcom/bumptech/glide/RequestManager$GenericModelRequest<TA;TT;>.GenericTypeRequest;"
new com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest
dup
aload 0
aload 1
invokespecial com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/<init>(Lcom/bumptech/glide/RequestManager$GenericModelRequest;Ljava/lang/Class;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
.signature "(TA;)Lcom/bumptech/glide/RequestManager$GenericModelRequest<TA;TT;>.GenericTypeRequest;"
new com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest
dup
aload 0
aload 1
invokespecial com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/<init>(Lcom/bumptech/glide/RequestManager$GenericModelRequest;Ljava/lang/Object;)V
areturn
.limit locals 2
.limit stack 4
.end method
