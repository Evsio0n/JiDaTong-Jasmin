.bytecode 50.0
.class public synchronized abstract com/nostra13/universalimageloader/core/imageaware/ViewAware
.super java/lang/Object
.implements com/nostra13/universalimageloader/core/imageaware/ImageAware

.field public static final 'WARN_CANT_SET_BITMAP' Ljava/lang/String; = "Can't set a bitmap into view. You should call ImageLoader on UI thread for it."

.field public static final 'WARN_CANT_SET_DRAWABLE' Ljava/lang/String; = "Can't set a drawable into view. You should call ImageLoader on UI thread for it."

.field protected 'checkActualViewSize' Z

.field protected 'viewRef' Ljava/lang/ref/Reference; signature "Ljava/lang/ref/Reference<Landroid/view/View;>;"

.method public <init>(Landroid/view/View;)V
aload 0
aload 1
iconst_1
invokespecial com/nostra13/universalimageloader/core/imageaware/ViewAware/<init>(Landroid/view/View;Z)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/view/View;Z)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
ifnonnull L0
new java/lang/IllegalArgumentException
dup
ldc "view must not be null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
new java/lang/ref/WeakReference
dup
aload 1
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
putfield com/nostra13/universalimageloader/core/imageaware/ViewAware/viewRef Ljava/lang/ref/Reference;
aload 0
iload 2
putfield com/nostra13/universalimageloader/core/imageaware/ViewAware/checkActualViewSize Z
return
.limit locals 3
.limit stack 4
.end method

.method public getHeight()I
aload 0
getfield com/nostra13/universalimageloader/core/imageaware/ViewAware/viewRef Ljava/lang/ref/Reference;
invokevirtual java/lang/ref/Reference/get()Ljava/lang/Object;
checkcast android/view/View
astore 3
aload 3
ifnull L0
aload 3
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 4
iconst_0
istore 2
iload 2
istore 1
aload 0
getfield com/nostra13/universalimageloader/core/imageaware/ViewAware/checkActualViewSize Z
ifeq L1
iload 2
istore 1
aload 4
ifnull L1
iload 2
istore 1
aload 4
getfield android/view/ViewGroup$LayoutParams/height I
bipush -2
if_icmpeq L1
aload 3
invokevirtual android/view/View/getHeight()I
istore 1
L1:
iload 1
istore 2
iload 1
ifgt L2
iload 1
istore 2
aload 4
ifnull L2
aload 4
getfield android/view/ViewGroup$LayoutParams/height I
istore 2
L2:
iload 2
ireturn
L0:
iconst_0
ireturn
.limit locals 5
.limit stack 2
.end method

.method public getId()I
aload 0
getfield com/nostra13/universalimageloader/core/imageaware/ViewAware/viewRef Ljava/lang/ref/Reference;
invokevirtual java/lang/ref/Reference/get()Ljava/lang/Object;
checkcast android/view/View
astore 1
aload 1
ifnonnull L0
aload 0
invokespecial java/lang/Object/hashCode()I
ireturn
L0:
aload 1
invokevirtual java/lang/Object/hashCode()I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
getstatic com/nostra13/universalimageloader/core/assist/ViewScaleType/CROP Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getWidth()I
aload 0
getfield com/nostra13/universalimageloader/core/imageaware/ViewAware/viewRef Ljava/lang/ref/Reference;
invokevirtual java/lang/ref/Reference/get()Ljava/lang/Object;
checkcast android/view/View
astore 3
aload 3
ifnull L0
aload 3
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 4
iconst_0
istore 2
iload 2
istore 1
aload 0
getfield com/nostra13/universalimageloader/core/imageaware/ViewAware/checkActualViewSize Z
ifeq L1
iload 2
istore 1
aload 4
ifnull L1
iload 2
istore 1
aload 4
getfield android/view/ViewGroup$LayoutParams/width I
bipush -2
if_icmpeq L1
aload 3
invokevirtual android/view/View/getWidth()I
istore 1
L1:
iload 1
istore 2
iload 1
ifgt L2
iload 1
istore 2
aload 4
ifnull L2
aload 4
getfield android/view/ViewGroup$LayoutParams/width I
istore 2
L2:
iload 2
ireturn
L0:
iconst_0
ireturn
.limit locals 5
.limit stack 2
.end method

.method public getWrappedView()Landroid/view/View;
aload 0
getfield com/nostra13/universalimageloader/core/imageaware/ViewAware/viewRef Ljava/lang/ref/Reference;
invokevirtual java/lang/ref/Reference/get()Ljava/lang/Object;
checkcast android/view/View
areturn
.limit locals 1
.limit stack 1
.end method

.method public isCollected()Z
aload 0
getfield com/nostra13/universalimageloader/core/imageaware/ViewAware/viewRef Ljava/lang/ref/Reference;
invokevirtual java/lang/ref/Reference/get()Ljava/lang/Object;
ifnonnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)Z
iconst_0
istore 2
invokestatic android/os/Looper/myLooper()Landroid/os/Looper;
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
if_acmpne L0
aload 0
getfield com/nostra13/universalimageloader/core/imageaware/ViewAware/viewRef Ljava/lang/ref/Reference;
invokevirtual java/lang/ref/Reference/get()Ljava/lang/Object;
checkcast android/view/View
astore 3
aload 3
ifnull L1
aload 0
aload 1
aload 3
invokevirtual com/nostra13/universalimageloader/core/imageaware/ViewAware/setImageBitmapInto(Landroid/graphics/Bitmap;Landroid/view/View;)V
iconst_1
istore 2
L1:
iload 2
ireturn
L0:
ldc "Can't set a bitmap into view. You should call ImageLoader on UI thread for it."
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method protected abstract setImageBitmapInto(Landroid/graphics/Bitmap;Landroid/view/View;)V
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)Z
iconst_0
istore 2
invokestatic android/os/Looper/myLooper()Landroid/os/Looper;
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
if_acmpne L0
aload 0
getfield com/nostra13/universalimageloader/core/imageaware/ViewAware/viewRef Ljava/lang/ref/Reference;
invokevirtual java/lang/ref/Reference/get()Ljava/lang/Object;
checkcast android/view/View
astore 3
aload 3
ifnull L1
aload 0
aload 1
aload 3
invokevirtual com/nostra13/universalimageloader/core/imageaware/ViewAware/setImageDrawableInto(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
iconst_1
istore 2
L1:
iload 2
ireturn
L0:
ldc "Can't set a drawable into view. You should call ImageLoader on UI thread for it."
iconst_0
anewarray java/lang/Object
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method protected abstract setImageDrawableInto(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
.end method
