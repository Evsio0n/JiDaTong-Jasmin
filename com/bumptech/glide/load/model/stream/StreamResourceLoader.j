.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/stream/StreamResourceLoader
.super com/bumptech/glide/load/model/ResourceLoader
.implements com/bumptech/glide/load/model/stream/StreamModelLoader
.signature "Lcom/bumptech/glide/load/model/ResourceLoader<Ljava/io/InputStream;>;Lcom/bumptech/glide/load/model/stream/StreamModelLoader<Ljava/lang/Integer;>;"
.inner class public static Factory inner com/bumptech/glide/load/model/stream/StreamResourceLoader$Factory outer com/bumptech/glide/load/model/stream/StreamResourceLoader

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
ldc android/net/Uri
aload 1
invokestatic com/bumptech/glide/Glide/buildStreamModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
invokespecial com/bumptech/glide/load/model/stream/StreamResourceLoader/<init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V
.signature "(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;Ljava/io/InputStream;>;)V"
aload 0
aload 1
aload 2
invokespecial com/bumptech/glide/load/model/ResourceLoader/<init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V
return
.limit locals 3
.limit stack 3
.end method
