.bytecode 50.0
.class synchronized com/bumptech/glide/GlideBuilder$1
.super java/lang/Object
.implements com/bumptech/glide/load/engine/cache/DiskCache$Factory
.enclosing method com/bumptech/glide/GlideBuilder/setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache;)Lcom/bumptech/glide/GlideBuilder;
.inner class inner com/bumptech/glide/GlideBuilder$1

.field final synthetic 'this$0' Lcom/bumptech/glide/GlideBuilder;

.field final synthetic 'val$diskCache' Lcom/bumptech/glide/load/engine/cache/DiskCache;

.method <init>(Lcom/bumptech/glide/GlideBuilder;Lcom/bumptech/glide/load/engine/cache/DiskCache;)V
aload 0
aload 1
putfield com/bumptech/glide/GlideBuilder$1/this$0 Lcom/bumptech/glide/GlideBuilder;
aload 0
aload 2
putfield com/bumptech/glide/GlideBuilder$1/val$diskCache Lcom/bumptech/glide/load/engine/cache/DiskCache;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public build()Lcom/bumptech/glide/load/engine/cache/DiskCache;
aload 0
getfield com/bumptech/glide/GlideBuilder$1/val$diskCache Lcom/bumptech/glide/load/engine/cache/DiskCache;
areturn
.limit locals 1
.limit stack 1
.end method
