.bytecode 50.0
.class public abstract interface com/bumptech/glide/load/engine/cache/DiskCache
.super java/lang/Object
.inner class public static abstract interface Factory inner com/bumptech/glide/load/engine/cache/DiskCache$Factory outer com/bumptech/glide/load/engine/cache/DiskCache
.inner class public static abstract interface Writer inner com/bumptech/glide/load/engine/cache/DiskCache$Writer outer com/bumptech/glide/load/engine/cache/DiskCache

.method public abstract clear()V
.end method

.method public abstract delete(Lcom/bumptech/glide/load/Key;)V
.end method

.method public abstract get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;
.end method

.method public abstract put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
.end method
