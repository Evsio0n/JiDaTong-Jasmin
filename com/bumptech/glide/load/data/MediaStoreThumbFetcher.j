.bytecode 50.0
.class public synchronized com/bumptech/glide/load/data/MediaStoreThumbFetcher
.super java/lang/Object
.implements com/bumptech/glide/load/data/DataFetcher
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;"
.inner class static FileService inner com/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService outer com/bumptech/glide/load/data/MediaStoreThumbFetcher
.inner class static ImageThumbnailQuery inner com/bumptech/glide/load/data/MediaStoreThumbFetcher$ImageThumbnailQuery outer com/bumptech/glide/load/data/MediaStoreThumbFetcher
.inner class static abstract interface ThumbnailQuery inner com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery outer com/bumptech/glide/load/data/MediaStoreThumbFetcher
.inner class static ThumbnailStreamOpener inner com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener outer com/bumptech/glide/load/data/MediaStoreThumbFetcher
.inner class static ThumbnailStreamOpenerFactory inner com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory outer com/bumptech/glide/load/data/MediaStoreThumbFetcher
.inner class static VideoThumbnailQuery inner com/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery outer com/bumptech/glide/load/data/MediaStoreThumbFetcher

.field private static final 'DEFAULT_FACTORY' Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

.field private static final 'MINI_HEIGHT' I = 384


.field private static final 'MINI_WIDTH' I = 512


.field private static final 'TAG' Ljava/lang/String; = "MediaStoreThumbFetcher"

.field private final 'context' Landroid/content/Context;

.field private final 'defaultFetcher' Lcom/bumptech/glide/load/data/DataFetcher; signature "Lcom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;"

.field private final 'factory' Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

.field private final 'height' I

.field private 'inputStream' Ljava/io/InputStream;

.field private final 'mediaStoreUri' Landroid/net/Uri;

.field private final 'width' I

.method static <clinit>()V
new com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory
dup
invokespecial com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory/<init>()V
putstatic com/bumptech/glide/load/data/MediaStoreThumbFetcher/DEFAULT_FACTORY Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/DataFetcher;II)V
.signature "(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;II)V"
aload 0
aload 1
aload 2
aload 3
iload 4
iload 5
getstatic com/bumptech/glide/load/data/MediaStoreThumbFetcher/DEFAULT_FACTORY Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;
invokespecial com/bumptech/glide/load/data/MediaStoreThumbFetcher/<init>(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/DataFetcher;IILcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;)V
return
.limit locals 6
.limit stack 7
.end method

.method <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/DataFetcher;IILcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;)V
.signature "(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;IILcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/context Landroid/content/Context;
aload 0
aload 2
putfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/mediaStoreUri Landroid/net/Uri;
aload 0
aload 3
putfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/defaultFetcher Lcom/bumptech/glide/load/data/DataFetcher;
aload 0
iload 4
putfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/width I
aload 0
iload 5
putfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/height I
aload 0
aload 6
putfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/factory Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;
return
.limit locals 7
.limit stack 2
.end method

.method static synthetic access$000(Landroid/net/Uri;)Z
aload 0
invokestatic com/bumptech/glide/load/data/MediaStoreThumbFetcher/isMediaStoreUri(Landroid/net/Uri;)Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Landroid/net/Uri;)Z
aload 0
invokestatic com/bumptech/glide/load/data/MediaStoreThumbFetcher/isMediaStoreVideo(Landroid/net/Uri;)Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method private static isMediaStoreUri(Landroid/net/Uri;)Z
aload 0
ifnull L0
ldc "content"
aload 0
invokevirtual android/net/Uri/getScheme()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
ldc "media"
aload 0
invokevirtual android/net/Uri/getAuthority()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private static isMediaStoreVideo(Landroid/net/Uri;)Z
aload 0
invokestatic com/bumptech/glide/load/data/MediaStoreThumbFetcher/isMediaStoreUri(Landroid/net/Uri;)Z
ifeq L0
aload 0
invokevirtual android/net/Uri/getPathSegments()Ljava/util/List;
ldc "video"
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private openThumbInputStream(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;)Ljava/io/InputStream;
.catch java/io/FileNotFoundException from L0 to L1 using L2
L0:
aload 1
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/context Landroid/content/Context;
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/mediaStoreUri Landroid/net/Uri;
invokevirtual com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener/open(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
astore 3
L1:
iconst_m1
istore 2
aload 3
ifnull L3
aload 1
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/context Landroid/content/Context;
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/mediaStoreUri Landroid/net/Uri;
invokevirtual com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener/getOrientation(Landroid/content/Context;Landroid/net/Uri;)I
istore 2
L3:
iload 2
iconst_m1
if_icmpeq L4
new com/bumptech/glide/load/data/ExifOrientationStream
dup
aload 3
iload 2
invokespecial com/bumptech/glide/load/data/ExifOrientationStream/<init>(Ljava/io/InputStream;I)V
areturn
L2:
astore 3
ldc "MediaStoreThumbFetcher"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L5
ldc "MediaStoreThumbFetcher"
ldc "Failed to find thumbnail file"
aload 3
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L5:
aconst_null
astore 3
goto L1
L4:
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public cancel()V
return
.limit locals 1
.limit stack 0
.end method

.method public cleanup()V
.catch java/io/IOException from L0 to L1 using L2
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/inputStream Ljava/io/InputStream;
ifnull L1
L0:
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/inputStream Ljava/io/InputStream;
invokevirtual java/io/InputStream/close()V
L1:
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/defaultFetcher Lcom/bumptech/glide/load/data/DataFetcher;
invokeinterface com/bumptech/glide/load/data/DataFetcher/cleanup()V 0
return
L2:
astore 1
goto L1
.limit locals 2
.limit stack 1
.end method

.method public getId()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/mediaStoreUri Landroid/net/Uri;
invokevirtual android/net/Uri/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
.throws java/lang/Exception
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/factory Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/mediaStoreUri Landroid/net/Uri;
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/width I
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/height I
invokevirtual com/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory/build(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
astore 2
aload 2
ifnull L0
aload 0
aload 0
aload 2
invokespecial com/bumptech/glide/load/data/MediaStoreThumbFetcher/openThumbInputStream(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;)Ljava/io/InputStream;
putfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/inputStream Ljava/io/InputStream;
L0:
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/inputStream Ljava/io/InputStream;
ifnonnull L1
aload 0
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/defaultFetcher Lcom/bumptech/glide/load/data/DataFetcher;
aload 1
invokeinterface com/bumptech/glide/load/data/DataFetcher/loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object; 1
checkcast java/io/InputStream
putfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/inputStream Ljava/io/InputStream;
L1:
aload 0
getfield com/bumptech/glide/load/data/MediaStoreThumbFetcher/inputStream Ljava/io/InputStream;
areturn
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
.throws java/lang/Exception
aload 0
aload 1
invokevirtual com/bumptech/glide/load/data/MediaStoreThumbFetcher/loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
areturn
.limit locals 2
.limit stack 2
.end method
