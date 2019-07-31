.bytecode 50.0
.class synchronized com/common/android/ui/gif/GifPlayer$PlayTask
.super java/lang/Object
.implements java/lang/Runnable
.inner class private PlayTask inner com/common/android/ui/gif/GifPlayer$PlayTask outer com/common/android/ui/gif/GifPlayer

.field final synthetic 'this$0' Lcom/common/android/ui/gif/GifPlayer;

.method private <init>(Lcom/common/android/ui/gif/GifPlayer;)V
aload 0
aload 1
putfield com/common/android/ui/gif/GifPlayer$PlayTask/this$0 Lcom/common/android/ui/gif/GifPlayer;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/common/android/ui/gif/GifPlayer;Lcom/common/android/ui/gif/GifPlayer$1;)V
aload 0
aload 1
invokespecial com/common/android/ui/gif/GifPlayer$PlayTask/<init>(Lcom/common/android/ui/gif/GifPlayer;)V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
.catch java/lang/InterruptedException from L0 to L1 using L2
aconst_null
astore 4
getstatic com/common/android/ui/gif/GifCacheManager/INSTANCE Lcom/common/android/ui/gif/GifCacheManager;
aload 0
getfield com/common/android/ui/gif/GifPlayer$PlayTask/this$0 Lcom/common/android/ui/gif/GifPlayer;
invokestatic com/common/android/ui/gif/GifPlayer/access$100(Lcom/common/android/ui/gif/GifPlayer;)Ljava/lang/Object;
invokevirtual com/common/android/ui/gif/GifCacheManager/get(Ljava/lang/Object;)Ljava/util/Vector;
astore 7
L3:
aload 0
getfield com/common/android/ui/gif/GifPlayer$PlayTask/this$0 Lcom/common/android/ui/gif/GifPlayer;
invokestatic com/common/android/ui/gif/GifPlayer/access$200(Lcom/common/android/ui/gif/GifPlayer;)Z
ifeq L4
aload 7
invokevirtual java/util/Vector/size()I
istore 2
iconst_0
istore 1
aload 4
astore 3
L5:
aload 3
astore 4
iload 1
iload 2
if_icmpge L3
aload 0
getfield com/common/android/ui/gif/GifPlayer$PlayTask/this$0 Lcom/common/android/ui/gif/GifPlayer;
invokestatic com/common/android/ui/gif/GifPlayer/access$200(Lcom/common/android/ui/gif/GifPlayer;)Z
ifne L6
L4:
return
L6:
aload 7
iload 1
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/gif/GifFrame
invokevirtual com/common/android/ui/gif/GifFrame/getBitmap()Landroid/graphics/Bitmap;
astore 5
aload 5
ifnonnull L7
aload 5
astore 6
aload 3
astore 4
aload 3
ifnull L8
aload 5
astore 6
aload 3
astore 4
aload 3
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L8
aload 3
astore 6
aload 3
astore 4
L8:
aload 6
ifnonnull L9
L9:
aload 0
getfield com/common/android/ui/gif/GifPlayer$PlayTask/this$0 Lcom/common/android/ui/gif/GifPlayer;
invokestatic com/common/android/ui/gif/GifPlayer/access$300(Lcom/common/android/ui/gif/GifPlayer;)Lcom/common/android/ui/gif/IGifPlayInterface;
ifnull L0
aload 0
getfield com/common/android/ui/gif/GifPlayer$PlayTask/this$0 Lcom/common/android/ui/gif/GifPlayer;
invokestatic com/common/android/ui/gif/GifPlayer/access$300(Lcom/common/android/ui/gif/GifPlayer;)Lcom/common/android/ui/gif/IGifPlayInterface;
aload 6
invokeinterface com/common/android/ui/gif/IGifPlayInterface/onPlaying(Landroid/graphics/Bitmap;)V 1
L0:
aload 7
iload 1
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/gif/GifFrame
getfield com/common/android/ui/gif/GifFrame/delay I
i2l
invokestatic java/lang/Thread/sleep(J)V
L1:
iload 1
iconst_1
iadd
istore 1
aload 4
astore 3
goto L5
L7:
aload 5
astore 4
aload 5
astore 6
goto L8
L2:
astore 3
aload 3
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L1
.limit locals 8
.limit stack 2
.end method
