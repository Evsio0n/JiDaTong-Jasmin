.bytecode 50.0
.class synchronized com/common/android/ui/gif/GifImageView$DecodeThread$1
.super java/lang/Object
.implements com/common/android/ui/gif/GifDecoder$BitmapDecodeCallback
.enclosing method com/common/android/ui/gif/GifImageView$DecodeThread/play(Ljava/io/InputStream;)I
.inner class private DecodeThread inner com/common/android/ui/gif/GifImageView$DecodeThread outer com/common/android/ui/gif/GifImageView
.inner class inner com/common/android/ui/gif/GifImageView$DecodeThread$1

.field final synthetic 'this$1' Lcom/common/android/ui/gif/GifImageView$DecodeThread;

.field final synthetic 'val$mGifDecoder' Lcom/common/android/ui/gif/GifDecoder;

.method <init>(Lcom/common/android/ui/gif/GifImageView$DecodeThread;Lcom/common/android/ui/gif/GifDecoder;)V
aload 0
aload 1
putfield com/common/android/ui/gif/GifImageView$DecodeThread$1/this$1 Lcom/common/android/ui/gif/GifImageView$DecodeThread;
aload 0
aload 2
putfield com/common/android/ui/gif/GifImageView$DecodeThread$1/val$mGifDecoder Lcom/common/android/ui/gif/GifDecoder;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onDecoded(Landroid/graphics/Bitmap;I)V
.catch java/lang/InterruptedException from L0 to L1 using L2
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread$1/this$1 Lcom/common/android/ui/gif/GifImageView$DecodeThread;
getfield com/common/android/ui/gif/GifImageView$DecodeThread/mIsQuit Z
ifeq L3
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread$1/val$mGifDecoder Lcom/common/android/ui/gif/GifDecoder;
invokevirtual com/common/android/ui/gif/GifDecoder/quit()V
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread$1/this$1 Lcom/common/android/ui/gif/GifImageView$DecodeThread;
getfield com/common/android/ui/gif/GifImageView$DecodeThread/this$0 Lcom/common/android/ui/gif/GifImageView;
invokestatic com/common/android/ui/gif/GifImageView/access$500(Lcom/common/android/ui/gif/GifImageView;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 7
aload 7
aload 1
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread$1/this$1 Lcom/common/android/ui/gif/GifImageView$DecodeThread;
getfield com/common/android/ui/gif/GifImageView$DecodeThread/this$0 Lcom/common/android/ui/gif/GifImageView;
invokestatic com/common/android/ui/gif/GifImageView/access$500(Lcom/common/android/ui/gif/GifImageView;)Landroid/os/Handler;
aload 7
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L3:
invokestatic java/lang/System/currentTimeMillis()J
lstore 3
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread$1/this$1 Lcom/common/android/ui/gif/GifImageView$DecodeThread;
invokestatic com/common/android/ui/gif/GifImageView$DecodeThread/access$600(Lcom/common/android/ui/gif/GifImageView$DecodeThread;)J
lconst_0
lcmp
ifle L1
lload 3
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread$1/this$1 Lcom/common/android/ui/gif/GifImageView$DecodeThread;
invokestatic com/common/android/ui/gif/GifImageView$DecodeThread/access$600(Lcom/common/android/ui/gif/GifImageView$DecodeThread;)J
lsub
lstore 3
lload 3
lconst_0
lcmp
ifle L1
iload 2
ifle L1
lload 3
iload 2
i2l
lcmp
ifge L1
iload 2
i2l
lstore 5
L0:
lload 5
lload 3
lsub
invokestatic java/lang/Thread/sleep(J)V
L1:
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread$1/this$1 Lcom/common/android/ui/gif/GifImageView$DecodeThread;
invokestatic java/lang/System/currentTimeMillis()J
invokestatic com/common/android/ui/gif/GifImageView$DecodeThread/access$602(Lcom/common/android/ui/gif/GifImageView$DecodeThread;J)J
pop2
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread$1/this$1 Lcom/common/android/ui/gif/GifImageView$DecodeThread;
getfield com/common/android/ui/gif/GifImageView$DecodeThread/this$0 Lcom/common/android/ui/gif/GifImageView;
invokestatic com/common/android/ui/gif/GifImageView/access$500(Lcom/common/android/ui/gif/GifImageView;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 7
aload 7
aload 1
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/common/android/ui/gif/GifImageView$DecodeThread$1/this$1 Lcom/common/android/ui/gif/GifImageView$DecodeThread;
getfield com/common/android/ui/gif/GifImageView$DecodeThread/this$0 Lcom/common/android/ui/gif/GifImageView;
invokestatic com/common/android/ui/gif/GifImageView/access$500(Lcom/common/android/ui/gif/GifImageView;)Landroid/os/Handler;
aload 7
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L2:
astore 7
aload 7
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L1
.limit locals 8
.limit stack 4
.end method
