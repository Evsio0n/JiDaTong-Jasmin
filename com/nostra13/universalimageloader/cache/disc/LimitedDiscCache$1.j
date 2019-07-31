.bytecode 50.0
.class synchronized com/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/calculateCacheSizeAndFillUsageMap()V
.inner class inner com/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1

.field final synthetic 'this$0' Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;

.method <init>(Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;)V
aload 0
aload 1
putfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1/this$0 Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
iconst_0
istore 2
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1/this$0 Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;
invokestatic com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/access$0(Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;)Ljava/io/File;
invokevirtual java/io/File/listFiles()[Ljava/io/File;
astore 4
aload 4
ifnull L0
aload 4
arraylength
istore 3
iconst_0
istore 1
L1:
iload 1
iload 3
if_icmplt L2
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1/this$0 Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;
invokestatic com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/access$2(Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;)Ljava/util/concurrent/atomic/AtomicInteger;
iload 2
invokevirtual java/util/concurrent/atomic/AtomicInteger/set(I)V
L0:
return
L2:
aload 4
iload 1
aaload
astore 5
iload 2
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1/this$0 Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;
aload 5
invokevirtual com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/getSize(Ljava/io/File;)I
iadd
istore 2
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1/this$0 Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;
invokestatic com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/access$1(Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;)Ljava/util/Map;
aload 5
aload 5
invokevirtual java/io/File/lastModified()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
iload 1
iconst_1
iadd
istore 1
goto L1
.limit locals 6
.limit stack 4
.end method
