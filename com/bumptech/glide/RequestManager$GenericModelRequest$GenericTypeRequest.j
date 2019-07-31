.bytecode 50.0
.class public final synchronized com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest
.super java/lang/Object
.inner class public final GenericModelRequest inner com/bumptech/glide/RequestManager$GenericModelRequest outer com/bumptech/glide/RequestManager
.inner class public final GenericTypeRequest inner com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest outer com/bumptech/glide/RequestManager$GenericModelRequest

.field private final 'model' Ljava/lang/Object; signature "TA;"

.field private final 'modelClass' Ljava/lang/Class; signature "Ljava/lang/Class<TA;>;"

.field private final 'providedModel' Z

.field final synthetic 'this$1' Lcom/bumptech/glide/RequestManager$GenericModelRequest;

.method <init>(Lcom/bumptech/glide/RequestManager$GenericModelRequest;Ljava/lang/Class;)V
.signature "(Ljava/lang/Class<TA;>;)V"
aload 0
aload 1
putfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/this$1 Lcom/bumptech/glide/RequestManager$GenericModelRequest;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/providedModel Z
aload 0
aconst_null
putfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/model Ljava/lang/Object;
aload 0
aload 2
putfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/modelClass Ljava/lang/Class;
return
.limit locals 3
.limit stack 2
.end method

.method <init>(Lcom/bumptech/glide/RequestManager$GenericModelRequest;Ljava/lang/Object;)V
.signature "(TA;)V"
aload 0
aload 1
putfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/this$1 Lcom/bumptech/glide/RequestManager$GenericModelRequest;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/providedModel Z
aload 0
aload 2
putfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/model Ljava/lang/Object;
aload 0
aload 2
invokestatic com/bumptech/glide/RequestManager/access$000(Ljava/lang/Object;)Ljava/lang/Class;
putfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/modelClass Ljava/lang/Class;
return
.limit locals 3
.limit stack 2
.end method

.method public as(Ljava/lang/Class;)Lcom/bumptech/glide/GenericTranscodeRequest;
.signature "<Z:Ljava/lang/Object;>(Ljava/lang/Class<TZ;>;)Lcom/bumptech/glide/GenericTranscodeRequest<TA;TT;TZ;>;"
aload 0
getfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/this$1 Lcom/bumptech/glide/RequestManager$GenericModelRequest;
getfield com/bumptech/glide/RequestManager$GenericModelRequest/this$0 Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/RequestManager/access$500(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$OptionsApplier;
new com/bumptech/glide/GenericTranscodeRequest
dup
aload 0
getfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/this$1 Lcom/bumptech/glide/RequestManager$GenericModelRequest;
getfield com/bumptech/glide/RequestManager$GenericModelRequest/this$0 Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/RequestManager/access$100(Lcom/bumptech/glide/RequestManager;)Landroid/content/Context;
aload 0
getfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/this$1 Lcom/bumptech/glide/RequestManager$GenericModelRequest;
getfield com/bumptech/glide/RequestManager$GenericModelRequest/this$0 Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/RequestManager/access$200(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/Glide;
aload 0
getfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/modelClass Ljava/lang/Class;
aload 0
getfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/this$1 Lcom/bumptech/glide/RequestManager$GenericModelRequest;
invokestatic com/bumptech/glide/RequestManager$GenericModelRequest/access$600(Lcom/bumptech/glide/RequestManager$GenericModelRequest;)Lcom/bumptech/glide/load/model/ModelLoader;
aload 0
getfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/this$1 Lcom/bumptech/glide/RequestManager$GenericModelRequest;
invokestatic com/bumptech/glide/RequestManager$GenericModelRequest/access$700(Lcom/bumptech/glide/RequestManager$GenericModelRequest;)Ljava/lang/Class;
aload 1
aload 0
getfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/this$1 Lcom/bumptech/glide/RequestManager$GenericModelRequest;
getfield com/bumptech/glide/RequestManager$GenericModelRequest/this$0 Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/RequestManager/access$300(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/RequestTracker;
aload 0
getfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/this$1 Lcom/bumptech/glide/RequestManager$GenericModelRequest;
getfield com/bumptech/glide/RequestManager$GenericModelRequest/this$0 Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/RequestManager/access$400(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/Lifecycle;
aload 0
getfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/this$1 Lcom/bumptech/glide/RequestManager$GenericModelRequest;
getfield com/bumptech/glide/RequestManager$GenericModelRequest/this$0 Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/RequestManager/access$500(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$OptionsApplier;
invokespecial com/bumptech/glide/GenericTranscodeRequest/<init>(Landroid/content/Context;Lcom/bumptech/glide/Glide;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
invokevirtual com/bumptech/glide/RequestManager$OptionsApplier/apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
checkcast com/bumptech/glide/GenericTranscodeRequest
astore 1
aload 0
getfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/providedModel Z
ifeq L0
aload 1
aload 0
getfield com/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest/model Ljava/lang/Object;
invokevirtual com/bumptech/glide/GenericTranscodeRequest/load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
pop
L0:
aload 1
areturn
.limit locals 2
.limit stack 12
.end method
