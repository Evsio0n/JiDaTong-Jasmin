.bytecode 50.0
.class public final synchronized com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot
.super java/lang/Object
.implements java/io/Closeable
.inner class public final Snapshot inner com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot outer com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache

.field private 'files' [Ljava/io/File;

.field private final 'ins' [Ljava/io/InputStream;

.field private final 'key' Ljava/lang/String;

.field private final 'lengths' [J

.field private final 'sequenceNumber' J

.field final synthetic 'this$0' Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

.method private <init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V
aload 0
aload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/key Ljava/lang/String;
aload 0
lload 3
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/sequenceNumber J
aload 0
aload 5
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/files [Ljava/io/File;
aload 0
aload 6
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/ins [Ljava/io/InputStream;
aload 0
aload 7
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/lengths [J
return
.limit locals 8
.limit stack 3
.end method

.method synthetic <init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;)V
aload 0
aload 1
aload 2
lload 3
aload 5
aload 6
aload 7
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/<init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V
return
.limit locals 9
.limit stack 8
.end method

.method public close()V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/ins [Ljava/io/InputStream;
astore 3
aload 3
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmplt L1
return
L1:
aload 3
iload 1
aaload
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/Util/closeQuietly(Ljava/io/Closeable;)V
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 4
.limit stack 2
.end method

.method public edit()Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
.throws java/io/IOException
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/key Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/sequenceNumber J
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$6(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;J)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getFile(I)Ljava/io/File;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/files [Ljava/io/File;
iload 1
aaload
areturn
.limit locals 2
.limit stack 2
.end method

.method public getInputStream(I)Ljava/io/InputStream;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/ins [Ljava/io/InputStream;
iload 1
aaload
areturn
.limit locals 2
.limit stack 2
.end method

.method public getLength(I)J
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/lengths [J
iload 1
laload
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getString(I)Ljava/lang/String;
.throws java/io/IOException
aload 0
iload 1
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Snapshot/getInputStream(I)Ljava/io/InputStream;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$7(Ljava/io/InputStream;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method
