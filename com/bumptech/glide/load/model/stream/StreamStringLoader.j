.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/stream/StreamStringLoader
.super com/bumptech/glide/load/model/StringLoader
.implements com/bumptech/glide/load/model/stream/StreamModelLoader
.signature "Lcom/bumptech/glide/load/model/StringLoader<Ljava/io/InputStream;>;Lcom/bumptech/glide/load/model/stream/StreamModelLoader<Ljava/lang/String;>;"
.inner class public static Factory inner com/bumptech/glide/load/model/stream/StreamStringLoader$Factory outer com/bumptech/glide/load/model/stream/StreamStringLoader

.method public <init>(Landroid/content/Context;)V
aload 0
ldc android/net/Uri
aload 1
invokestatic com/bumptech/glide/Glide/buildStreamModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
invokespecial com/bumptech/glide/load/model/stream/StreamStringLoader/<init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
.signature "(Lcom/bumptech/glide/load/model/ModelLoader<Landroid/net/Uri;Ljava/io/InputStream;>;)V"
aload 0
aload 1
invokespecial com/bumptech/glide/load/model/StringLoader/<init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
return
.limit locals 2
.limit stack 2
.end method
