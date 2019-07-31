.bytecode 50.0
.class synchronized com/bumptech/glide/ListPreloader$2
.super java/lang/Object
.implements com/bumptech/glide/ListPreloader$PreloadSizeProvider
.signature "Ljava/lang/Object;Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<TT;>;"
.enclosing method com/bumptech/glide/ListPreloader/<init>(I)V
.inner class inner com/bumptech/glide/ListPreloader$2

.field final synthetic 'this$0' Lcom/bumptech/glide/ListPreloader;

.method <init>(Lcom/bumptech/glide/ListPreloader;)V
aload 0
aload 1
putfield com/bumptech/glide/ListPreloader$2/this$0 Lcom/bumptech/glide/ListPreloader;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public getPreloadSize(Ljava/lang/Object;II)[I
.signature "(TT;II)[I"
aload 0
getfield com/bumptech/glide/ListPreloader$2/this$0 Lcom/bumptech/glide/ListPreloader;
aload 1
invokevirtual com/bumptech/glide/ListPreloader/getDimensions(Ljava/lang/Object;)[I
areturn
.limit locals 4
.limit stack 2
.end method
