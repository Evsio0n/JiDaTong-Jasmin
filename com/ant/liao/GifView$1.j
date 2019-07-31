.bytecode 50.0
.class synchronized com/ant/liao/GifView$1
.super android/os/Handler
.enclosing method com/ant/liao/GifView
.inner class inner com/ant/liao/GifView$1

.field final synthetic 'this$0' Lcom/ant/liao/GifView;

.method <init>(Lcom/ant/liao/GifView;)V
aload 0
aload 1
putfield com/ant/liao/GifView$1/this$0 Lcom/ant/liao/GifView;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
L0:
aload 0
getfield com/ant/liao/GifView$1/this$0 Lcom/ant/liao/GifView;
invokestatic com/ant/liao/GifView/access$0(Lcom/ant/liao/GifView;)Landroid/view/View;
ifnull L3
aload 0
getfield com/ant/liao/GifView$1/this$0 Lcom/ant/liao/GifView;
invokestatic com/ant/liao/GifView/access$0(Lcom/ant/liao/GifView;)Landroid/view/View;
new android/graphics/drawable/BitmapDrawable
dup
aload 0
getfield com/ant/liao/GifView$1/this$0 Lcom/ant/liao/GifView;
invokestatic com/ant/liao/GifView/access$1(Lcom/ant/liao/GifView;)Landroid/graphics/Bitmap;
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/graphics/Bitmap;)V
invokevirtual android/view/View/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
L1:
return
L3:
aload 0
getfield com/ant/liao/GifView$1/this$0 Lcom/ant/liao/GifView;
invokestatic com/ant/liao/GifView/access$2(Lcom/ant/liao/GifView;)V
L4:
return
L2:
astore 1
ldc "GifView"
aload 1
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 4
.end method
