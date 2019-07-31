.bytecode 50.0
.class synchronized com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream
.super java/io/FilterOutputStream
.inner class public final Editor inner com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor outer com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache
.inner class private FaultHidingOutputStream inner com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream outer com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor

.field final synthetic 'this$1' Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

.method private <init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Ljava/io/OutputStream;)V
aload 0
aload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream/this$1 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
aload 0
aload 2
invokespecial java/io/FilterOutputStream/<init>(Ljava/io/OutputStream;)V
return
.limit locals 3
.limit stack 2
.end method

.method synthetic <init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;)V
aload 0
aload 1
aload 2
invokespecial com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream/<init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Ljava/io/OutputStream;)V
return
.limit locals 4
.limit stack 3
.end method

.method public close()V
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream/out Ljava/io/OutputStream;
invokevirtual java/io/OutputStream/close()V
L1:
return
L2:
astore 1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream/this$1 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
iconst_1
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/access$0(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public flush()V
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream/out Ljava/io/OutputStream;
invokevirtual java/io/OutputStream/flush()V
L1:
return
L2:
astore 1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream/this$1 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
iconst_1
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/access$0(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public write(I)V
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream/out Ljava/io/OutputStream;
iload 1
invokevirtual java/io/OutputStream/write(I)V
L1:
return
L2:
astore 2
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream/this$1 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
iconst_1
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/access$0(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
return
.limit locals 3
.limit stack 2
.end method

.method public write([BII)V
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream/out Ljava/io/OutputStream;
aload 1
iload 2
iload 3
invokevirtual java/io/OutputStream/write([BII)V
L1:
return
L2:
astore 1
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream/this$1 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
iconst_1
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor/access$0(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
return
.limit locals 4
.limit stack 4
.end method
