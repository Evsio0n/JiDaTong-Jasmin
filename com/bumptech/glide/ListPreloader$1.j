.bytecode 50.0
.class synchronized com/bumptech/glide/ListPreloader$1
.super java/lang/Object
.implements com/bumptech/glide/ListPreloader$PreloadModelProvider
.signature "Ljava/lang/Object;Lcom/bumptech/glide/ListPreloader$PreloadModelProvider<TT;>;"
.enclosing method com/bumptech/glide/ListPreloader/<init>(I)V
.inner class inner com/bumptech/glide/ListPreloader$1

.field final synthetic 'this$0' Lcom/bumptech/glide/ListPreloader;

.method <init>(Lcom/bumptech/glide/ListPreloader;)V
aload 0
aload 1
putfield com/bumptech/glide/ListPreloader$1/this$0 Lcom/bumptech/glide/ListPreloader;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public getPreloadItems(I)Ljava/util/List;
.signature "(I)Ljava/util/List<TT;>;"
aload 0
getfield com/bumptech/glide/ListPreloader$1/this$0 Lcom/bumptech/glide/ListPreloader;
iload 1
iload 1
iconst_1
iadd
invokevirtual com/bumptech/glide/ListPreloader/getItems(II)Ljava/util/List;
areturn
.limit locals 2
.limit stack 4
.end method

.method public getPreloadRequestBuilder(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
.signature "(TT;)Lcom/bumptech/glide/GenericRequestBuilder;"
aload 0
getfield com/bumptech/glide/ListPreloader$1/this$0 Lcom/bumptech/glide/ListPreloader;
aload 1
invokevirtual com/bumptech/glide/ListPreloader/getRequestBuilder(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
areturn
.limit locals 2
.limit stack 2
.end method
