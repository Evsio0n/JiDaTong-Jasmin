.bytecode 50.0
.class public synchronized com/product/android/ui/anim/AnimateFirstDisplayListener
.super com/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener

.field final 'displayedImages' Ljava/util/List; signature "Ljava/util/List<Ljava/lang/String;>;"

.method public <init>()V
aload 0
invokespecial com/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener/<init>()V
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
invokestatic java/util/Collections/synchronizedList(Ljava/util/List;)Ljava/util/List;
putfield com/product/android/ui/anim/AnimateFirstDisplayListener/displayedImages Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
aload 3
ifnull L0
aload 2
checkcast android/widget/ImageView
astore 2
aload 0
getfield com/product/android/ui/anim/AnimateFirstDisplayListener/displayedImages Ljava/util/List;
aload 1
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L1
iconst_1
istore 4
L2:
iload 4
ifeq L0
aload 2
sipush 500
invokestatic com/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer/animate(Landroid/view/View;I)V
aload 0
getfield com/product/android/ui/anim/AnimateFirstDisplayListener/displayedImages Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L0:
return
L1:
iconst_0
istore 4
goto L2
.limit locals 5
.limit stack 2
.end method
