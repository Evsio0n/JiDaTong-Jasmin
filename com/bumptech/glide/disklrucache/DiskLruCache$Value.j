.bytecode 50.0
.class public final synchronized com/bumptech/glide/disklrucache/DiskLruCache$Value
.super java/lang/Object
.inner class public final Value inner com/bumptech/glide/disklrucache/DiskLruCache$Value outer com/bumptech/glide/disklrucache/DiskLruCache

.field private final 'files' [Ljava/io/File;

.field private final 'key' Ljava/lang/String;

.field private final 'lengths' [J

.field private final 'sequenceNumber' J

.field final synthetic 'this$0' Lcom/bumptech/glide/disklrucache/DiskLruCache;

.method private <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[J)V
aload 0
aload 1
putfield com/bumptech/glide/disklrucache/DiskLruCache$Value/this$0 Lcom/bumptech/glide/disklrucache/DiskLruCache;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/bumptech/glide/disklrucache/DiskLruCache$Value/key Ljava/lang/String;
aload 0
lload 3
putfield com/bumptech/glide/disklrucache/DiskLruCache$Value/sequenceNumber J
aload 0
aload 5
putfield com/bumptech/glide/disklrucache/DiskLruCache$Value/files [Ljava/io/File;
aload 0
aload 6
putfield com/bumptech/glide/disklrucache/DiskLruCache$Value/lengths [J
return
.limit locals 7
.limit stack 3
.end method

.method synthetic <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
aload 0
aload 1
aload 2
lload 3
aload 5
aload 6
invokespecial com/bumptech/glide/disklrucache/DiskLruCache$Value/<init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[J)V
return
.limit locals 8
.limit stack 7
.end method

.method public edit()Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Value/this$0 Lcom/bumptech/glide/disklrucache/DiskLruCache;
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Value/key Ljava/lang/String;
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Value/sequenceNumber J
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$1600(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getFile(I)Ljava/io/File;
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Value/files [Ljava/io/File;
iload 1
aaload
areturn
.limit locals 2
.limit stack 2
.end method

.method public getLength(I)J
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Value/lengths [J
iload 1
laload
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getString(I)Ljava/lang/String;
.throws java/io/IOException
new java/io/FileInputStream
dup
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$Value/files [Ljava/io/File;
iload 1
aaload
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$1700(Ljava/io/InputStream;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 4
.end method
