.bytecode 50.0
.class synchronized com/bumptech/glide/RequestManager$OptionsApplier
.super java/lang/Object
.inner class OptionsApplier inner com/bumptech/glide/RequestManager$OptionsApplier outer com/bumptech/glide/RequestManager

.field final synthetic 'this$0' Lcom/bumptech/glide/RequestManager;

.method <init>(Lcom/bumptech/glide/RequestManager;)V
aload 0
aload 1
putfield com/bumptech/glide/RequestManager$OptionsApplier/this$0 Lcom/bumptech/glide/RequestManager;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public apply(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "<A:Ljava/lang/Object;X:Lcom/bumptech/glide/GenericRequestBuilder<TA;***>;>(TX;)TX;"
aload 0
getfield com/bumptech/glide/RequestManager$OptionsApplier/this$0 Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/RequestManager/access$800(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$DefaultOptions;
ifnull L0
aload 0
getfield com/bumptech/glide/RequestManager$OptionsApplier/this$0 Lcom/bumptech/glide/RequestManager;
invokestatic com/bumptech/glide/RequestManager/access$800(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$DefaultOptions;
aload 1
invokeinterface com/bumptech/glide/RequestManager$DefaultOptions/apply(Lcom/bumptech/glide/GenericRequestBuilder;)V 1
L0:
aload 1
areturn
.limit locals 2
.limit stack 2
.end method
