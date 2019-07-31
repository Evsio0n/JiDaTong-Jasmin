.bytecode 50.0
.class synchronized com/common/android/ui/gif/GifImageView$DrawHandler
.super android/os/Handler
.inner class private static DrawHandler inner com/common/android/ui/gif/GifImageView$DrawHandler outer com/common/android/ui/gif/GifImageView

.field 'mWGImageView' Ljava/lang/ref/WeakReference; signature "Ljava/lang/ref/WeakReference<Lcom/common/android/ui/gif/GifImageView;>;"

.method public <init>(Lcom/common/android/ui/gif/GifImageView;)V
aload 0
invokespecial android/os/Handler/<init>()V
aload 0
new java/lang/ref/WeakReference
dup
aload 1
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
putfield com/common/android/ui/gif/GifImageView$DrawHandler/mWGImageView Ljava/lang/ref/WeakReference;
return
.limit locals 2
.limit stack 4
.end method

.method public handleMessage(Landroid/os/Message;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aload 0
getfield com/common/android/ui/gif/GifImageView$DrawHandler/mWGImageView Ljava/lang/ref/WeakReference;
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast com/common/android/ui/gif/GifImageView
astore 2
aload 2
ifnull L5
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
instanceof android/graphics/Bitmap
ifeq L5
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast android/graphics/Bitmap
astore 1
L0:
aload 1
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifeq L3
L1:
return
L3:
aload 2
aload 1
invokestatic com/common/android/ui/gif/GifImageView/access$100(Lcom/common/android/ui/gif/GifImageView;Landroid/graphics/Bitmap;)V
aload 2
invokestatic com/common/android/ui/gif/GifImageView/access$200(Landroid/widget/ImageView;)V
L4:
return
L2:
astore 1
L5:
return
.limit locals 3
.limit stack 2
.end method
