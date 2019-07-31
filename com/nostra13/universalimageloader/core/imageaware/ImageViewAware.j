.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/imageaware/ImageViewAware
.super com/nostra13/universalimageloader/core/imageaware/ViewAware

.method public <init>(Landroid/widget/ImageView;)V
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/core/imageaware/ViewAware/<init>(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/widget/ImageView;Z)V
aload 0
aload 1
iload 2
invokespecial com/nostra13/universalimageloader/core/imageaware/ViewAware/<init>(Landroid/view/View;Z)V
return
.limit locals 3
.limit stack 3
.end method

.method private static getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
.catch java/lang/Exception from L0 to L1 using L2
iconst_0
istore 3
L0:
ldc android/widget/ImageView
aload 1
invokevirtual java/lang/Class/getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
astore 1
aload 1
iconst_1
invokevirtual java/lang/reflect/Field/setAccessible(Z)V
aload 1
aload 0
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 4
L1:
iload 3
istore 2
iload 4
ifle L3
iload 3
istore 2
iload 4
ldc_w 2147483647
if_icmpge L3
iload 4
istore 2
L3:
iload 2
ireturn
L2:
astore 0
aload 0
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/Throwable;)V
iconst_0
ireturn
.limit locals 5
.limit stack 2
.end method

.method public getHeight()I
aload 0
invokespecial com/nostra13/universalimageloader/core/imageaware/ViewAware/getHeight()I
istore 2
iload 2
istore 1
iload 2
ifgt L0
aload 0
getfield com/nostra13/universalimageloader/core/imageaware/ImageViewAware/viewRef Ljava/lang/ref/Reference;
invokevirtual java/lang/ref/Reference/get()Ljava/lang/Object;
checkcast android/widget/ImageView
astore 3
iload 2
istore 1
aload 3
ifnull L0
aload 3
ldc "mMaxHeight"
invokestatic com/nostra13/universalimageloader/core/imageaware/ImageViewAware/getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
istore 1
L0:
iload 1
ireturn
.limit locals 4
.limit stack 2
.end method

.method public getScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
aload 0
getfield com/nostra13/universalimageloader/core/imageaware/ImageViewAware/viewRef Ljava/lang/ref/Reference;
invokevirtual java/lang/ref/Reference/get()Ljava/lang/Object;
checkcast android/widget/ImageView
astore 1
aload 1
ifnull L0
aload 1
invokestatic com/nostra13/universalimageloader/core/assist/ViewScaleType/fromImageView(Landroid/widget/ImageView;)Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
areturn
L0:
aload 0
invokespecial com/nostra13/universalimageloader/core/imageaware/ViewAware/getScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getWidth()I
aload 0
invokespecial com/nostra13/universalimageloader/core/imageaware/ViewAware/getWidth()I
istore 2
iload 2
istore 1
iload 2
ifgt L0
aload 0
getfield com/nostra13/universalimageloader/core/imageaware/ImageViewAware/viewRef Ljava/lang/ref/Reference;
invokevirtual java/lang/ref/Reference/get()Ljava/lang/Object;
checkcast android/widget/ImageView
astore 3
iload 2
istore 1
aload 3
ifnull L0
aload 3
ldc "mMaxWidth"
invokestatic com/nostra13/universalimageloader/core/imageaware/ImageViewAware/getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
istore 1
L0:
iload 1
ireturn
.limit locals 4
.limit stack 2
.end method

.method public volatile synthetic getWrappedView()Landroid/view/View;
aload 0
invokevirtual com/nostra13/universalimageloader/core/imageaware/ImageViewAware/getWrappedView()Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getWrappedView()Landroid/widget/ImageView;
aload 0
invokespecial com/nostra13/universalimageloader/core/imageaware/ViewAware/getWrappedView()Landroid/view/View;
checkcast android/widget/ImageView
areturn
.limit locals 1
.limit stack 1
.end method

.method protected setImageBitmapInto(Landroid/graphics/Bitmap;Landroid/view/View;)V
aload 2
checkcast android/widget/ImageView
aload 1
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected setImageDrawableInto(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
aload 2
checkcast android/widget/ImageView
aload 1
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
aload 1
instanceof android/graphics/drawable/AnimationDrawable
ifeq L0
aload 1
checkcast android/graphics/drawable/AnimationDrawable
invokevirtual android/graphics/drawable/AnimationDrawable/start()V
L0:
return
.limit locals 3
.limit stack 2
.end method
