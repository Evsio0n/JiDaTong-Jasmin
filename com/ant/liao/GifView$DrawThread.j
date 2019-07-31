.bytecode 50.0
.class synchronized com/ant/liao/GifView$DrawThread
.super java/lang/Thread
.inner class private DrawThread inner com/ant/liao/GifView$DrawThread outer com/ant/liao/GifView

.field final synthetic 'this$0' Lcom/ant/liao/GifView;

.method private <init>(Lcom/ant/liao/GifView;)V
aload 0
aload 1
putfield com/ant/liao/GifView$DrawThread/this$0 Lcom/ant/liao/GifView;
aload 0
invokespecial java/lang/Thread/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/ant/liao/GifView;Lcom/ant/liao/GifView$DrawThread;)V
aload 0
aload 1
invokespecial com/ant/liao/GifView$DrawThread/<init>(Lcom/ant/liao/GifView;)V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/ant/liao/GifView$DrawThread/this$0 Lcom/ant/liao/GifView;
invokestatic com/ant/liao/GifView/access$3(Lcom/ant/liao/GifView;)Lcom/ant/liao/GifDecoder;
ifnonnull L0
L1:
return
L2:
aload 0
getfield com/ant/liao/GifView$DrawThread/this$0 Lcom/ant/liao/GifView;
invokestatic com/ant/liao/GifView/access$3(Lcom/ant/liao/GifView;)Lcom/ant/liao/GifDecoder;
invokevirtual com/ant/liao/GifDecoder/getFrameCount()I
iconst_1
if_icmpne L3
aload 0
getfield com/ant/liao/GifView$DrawThread/this$0 Lcom/ant/liao/GifView;
invokestatic com/ant/liao/GifView/access$3(Lcom/ant/liao/GifView;)Lcom/ant/liao/GifDecoder;
invokevirtual com/ant/liao/GifDecoder/next()Lcom/ant/liao/GifFrame;
astore 3
aload 0
getfield com/ant/liao/GifView$DrawThread/this$0 Lcom/ant/liao/GifView;
aload 3
getfield com/ant/liao/GifFrame/image Landroid/graphics/Bitmap;
invokestatic com/ant/liao/GifView/access$5(Lcom/ant/liao/GifView;Landroid/graphics/Bitmap;)V
aload 0
getfield com/ant/liao/GifView$DrawThread/this$0 Lcom/ant/liao/GifView;
invokestatic com/ant/liao/GifView/access$3(Lcom/ant/liao/GifView;)Lcom/ant/liao/GifDecoder;
invokevirtual com/ant/liao/GifDecoder/free()V
aload 0
getfield com/ant/liao/GifView$DrawThread/this$0 Lcom/ant/liao/GifView;
invokestatic com/ant/liao/GifView/access$6(Lcom/ant/liao/GifView;)V
return
L3:
aload 0
getfield com/ant/liao/GifView$DrawThread/this$0 Lcom/ant/liao/GifView;
invokestatic com/ant/liao/GifView/access$7(Lcom/ant/liao/GifView;)Z
ifne L4
aload 0
getfield com/ant/liao/GifView$DrawThread/this$0 Lcom/ant/liao/GifView;
invokestatic com/ant/liao/GifView/access$3(Lcom/ant/liao/GifView;)Lcom/ant/liao/GifDecoder;
invokevirtual com/ant/liao/GifDecoder/next()Lcom/ant/liao/GifFrame;
astore 3
aload 3
ifnonnull L5
ldc2_w 50L
invokestatic android/os/SystemClock/sleep(J)V
L0:
aload 0
getfield com/ant/liao/GifView$DrawThread/this$0 Lcom/ant/liao/GifView;
invokestatic com/ant/liao/GifView/access$4(Lcom/ant/liao/GifView;)Z
ifne L2
return
L5:
aload 3
getfield com/ant/liao/GifFrame/image Landroid/graphics/Bitmap;
ifnull L6
aload 0
getfield com/ant/liao/GifView$DrawThread/this$0 Lcom/ant/liao/GifView;
aload 3
getfield com/ant/liao/GifFrame/image Landroid/graphics/Bitmap;
invokestatic com/ant/liao/GifView/access$5(Lcom/ant/liao/GifView;Landroid/graphics/Bitmap;)V
L7:
aload 3
getfield com/ant/liao/GifFrame/delay I
i2l
lstore 1
aload 0
getfield com/ant/liao/GifView$DrawThread/this$0 Lcom/ant/liao/GifView;
invokestatic com/ant/liao/GifView/access$8(Lcom/ant/liao/GifView;)Landroid/os/Handler;
ifnull L1
aload 0
getfield com/ant/liao/GifView$DrawThread/this$0 Lcom/ant/liao/GifView;
invokestatic com/ant/liao/GifView/access$6(Lcom/ant/liao/GifView;)V
lload 1
invokestatic android/os/SystemClock/sleep(J)V
goto L0
L6:
aload 3
getfield com/ant/liao/GifFrame/imageName Ljava/lang/String;
ifnull L7
aload 0
getfield com/ant/liao/GifView$DrawThread/this$0 Lcom/ant/liao/GifView;
aload 3
getfield com/ant/liao/GifFrame/imageName Ljava/lang/String;
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
invokestatic com/ant/liao/GifView/access$5(Lcom/ant/liao/GifView;Landroid/graphics/Bitmap;)V
goto L7
L4:
ldc2_w 50L
invokestatic android/os/SystemClock/sleep(J)V
goto L0
.limit locals 4
.limit stack 2
.end method
