.bytecode 50.0
.class synchronized com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory
.super java/lang/Object
.inner class static ThumbnailStreamOpenerFactory inner com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory outer com/bumptech/glide/load/data/MediaStoreThumbFetcher

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public build(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
aload 1
invokestatic com/bumptech/glide/load/data/MediaStoreThumbFetcher/access$000(Landroid/net/Uri;)Z
ifeq L0
iload 2
sipush 512
if_icmpgt L0
iload 3
sipush 384
if_icmple L1
L0:
aconst_null
areturn
L1:
aload 1
invokestatic com/bumptech/glide/load/data/MediaStoreThumbFetcher/access$100(Landroid/net/Uri;)Z
ifeq L2
new com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener
dup
new com/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery
dup
invokespecial com/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery/<init>()V
invokespecial com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener/<init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V
areturn
L2:
new com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener
dup
new com/bumptech/glide/load/data/MediaStoreThumbFetcher$ImageThumbnailQuery
dup
invokespecial com/bumptech/glide/load/data/MediaStoreThumbFetcher$ImageThumbnailQuery/<init>()V
invokespecial com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener/<init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V
areturn
.limit locals 4
.limit stack 4
.end method
