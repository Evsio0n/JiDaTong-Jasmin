.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/RotateImageView
.super android/widget/ImageView
.inner class inner com/nd/android/u/ui/widge/RotateImageView$1

.field private 'degrees' I

.field private 'ifRotate' Z

.field private 'mTargetDegree' I

.field private 'runer' Ljava/lang/Runnable;

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/RotateImageView/mTargetDegree I
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/RotateImageView/degrees I
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/RotateImageView/ifRotate Z
aload 0
new com/nd/android/u/ui/widge/RotateImageView$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/RotateImageView$1/<init>(Lcom/nd/android/u/ui/widge/RotateImageView;)V
putfield com/nd/android/u/ui/widge/RotateImageView/runer Ljava/lang/Runnable;
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/RotateImageView;)Z
aload 0
getfield com/nd/android/u/ui/widge/RotateImageView/ifRotate Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/widge/RotateImageView;)I
aload 0
getfield com/nd/android/u/ui/widge/RotateImageView/degrees I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/ui/widge/RotateImageView;I)I
aload 0
iload 1
putfield com/nd/android/u/ui/widge/RotateImageView/degrees I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 0
invokevirtual com/nd/android/u/ui/widge/RotateImageView/getDrawable()Landroid/graphics/drawable/Drawable;
astore 11
aload 11
ifnonnull L0
L1:
return
L0:
aload 11
invokevirtual android/graphics/drawable/Drawable/getBounds()Landroid/graphics/Rect;
astore 12
aload 12
getfield android/graphics/Rect/right I
aload 12
getfield android/graphics/Rect/left I
isub
istore 2
aload 12
getfield android/graphics/Rect/bottom I
aload 12
getfield android/graphics/Rect/top I
isub
istore 3
iload 2
ifeq L1
iload 3
ifeq L1
aload 0
invokevirtual com/nd/android/u/ui/widge/RotateImageView/getPaddingLeft()I
istore 4
aload 0
invokevirtual com/nd/android/u/ui/widge/RotateImageView/getPaddingTop()I
istore 5
aload 0
invokevirtual com/nd/android/u/ui/widge/RotateImageView/getPaddingRight()I
istore 6
aload 0
invokevirtual com/nd/android/u/ui/widge/RotateImageView/getPaddingBottom()I
istore 7
aload 0
invokevirtual com/nd/android/u/ui/widge/RotateImageView/getWidth()I
istore 8
aload 0
invokevirtual com/nd/android/u/ui/widge/RotateImageView/getHeight()I
istore 9
aload 1
invokevirtual android/graphics/Canvas/getSaveCount()I
istore 10
aload 1
iload 8
iload 4
isub
iload 6
isub
iconst_2
idiv
iload 4
iadd
i2f
iload 9
iload 5
isub
iload 7
isub
iconst_2
idiv
iload 5
iadd
i2f
invokevirtual android/graphics/Canvas/translate(FF)V
aload 1
aload 0
getfield com/nd/android/u/ui/widge/RotateImageView/mTargetDegree I
i2f
invokevirtual android/graphics/Canvas/rotate(F)V
aload 1
iload 2
ineg
iconst_2
idiv
i2f
iload 3
ineg
iconst_2
idiv
i2f
invokevirtual android/graphics/Canvas/translate(FF)V
aload 11
aload 1
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 1
iload 10
invokevirtual android/graphics/Canvas/restoreToCount(I)V
return
.limit locals 13
.limit stack 4
.end method

.method public setDegree(I)V
aload 0
iload 1
putfield com/nd/android/u/ui/widge/RotateImageView/mTargetDegree I
aload 0
invokevirtual com/nd/android/u/ui/widge/RotateImageView/postInvalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public startRotate()V
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/RotateImageView/ifRotate Z
new java/lang/Thread
dup
aload 0
getfield com/nd/android/u/ui/widge/RotateImageView/runer Ljava/lang/Runnable;
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 1
.limit stack 3
.end method

.method public stopRotate()V
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/RotateImageView/ifRotate Z
return
.limit locals 1
.limit stack 2
.end method
