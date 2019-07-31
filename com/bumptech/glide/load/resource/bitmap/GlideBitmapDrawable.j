.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable
.super com/bumptech/glide/load/resource/drawable/GlideDrawable
.inner class static BitmapState inner com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState outer com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable

.field private 'applyGravity' Z

.field private final 'destRect' Landroid/graphics/Rect;

.field private 'height' I

.field private 'mutated' Z

.field private 'state' Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

.field private 'width' I

.method public <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
aload 0
aload 1
new com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState
dup
aload 2
invokespecial com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/<init>(Landroid/graphics/Bitmap;)V
invokespecial com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/<init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V
return
.limit locals 3
.limit stack 5
.end method

.method <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V
aload 0
invokespecial com/bumptech/glide/load/resource/drawable/GlideDrawable/<init>()V
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/destRect Landroid/graphics/Rect;
aload 2
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "BitmapState must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 2
putfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/state Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
aload 1
ifnull L1
aload 1
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/densityDpi I
istore 3
iload 3
ifne L2
sipush 160
istore 3
L3:
aload 2
iload 3
putfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/targetDensity I
L4:
aload 0
aload 2
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/bitmap Landroid/graphics/Bitmap;
iload 3
invokevirtual android/graphics/Bitmap/getScaledWidth(I)I
putfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/width I
aload 0
aload 2
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/bitmap Landroid/graphics/Bitmap;
iload 3
invokevirtual android/graphics/Bitmap/getScaledHeight(I)I
putfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/height I
return
L2:
goto L3
L1:
aload 2
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/targetDensity I
istore 3
goto L4
.limit locals 4
.limit stack 3
.end method

.method public draw(Landroid/graphics/Canvas;)V
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/applyGravity Z
ifeq L0
bipush 119
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/width I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/height I
aload 0
invokevirtual com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/getBounds()Landroid/graphics/Rect;
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/destRect Landroid/graphics/Rect;
invokestatic android/view/Gravity/apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
aload 0
iconst_0
putfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/applyGravity Z
L0:
aload 1
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/state Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/bitmap Landroid/graphics/Bitmap;
aconst_null
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/destRect Landroid/graphics/Rect;
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/state Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
return
.limit locals 2
.limit stack 5
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/state Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/bitmap Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/state Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIntrinsicHeight()I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/height I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIntrinsicWidth()I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/width I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getOpacity()I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/state Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/bitmap Landroid/graphics/Bitmap;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual android/graphics/Bitmap/hasAlpha()Z
ifne L0
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/state Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/getAlpha()I
sipush 255
if_icmpge L1
L0:
bipush -3
ireturn
L1:
iconst_m1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public isAnimated()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isRunning()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/mutated Z
ifne L0
aload 0
invokespecial com/bumptech/glide/load/resource/drawable/GlideDrawable/mutate()Landroid/graphics/drawable/Drawable;
aload 0
if_acmpne L0
aload 0
new com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState
dup
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/state Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
invokespecial com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/<init>(Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V
putfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/state Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
aload 0
iconst_1
putfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/mutated Z
L0:
aload 0
areturn
.limit locals 1
.limit stack 4
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
aload 0
aload 1
invokespecial com/bumptech/glide/load/resource/drawable/GlideDrawable/onBoundsChange(Landroid/graphics/Rect;)V
aload 0
iconst_1
putfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/applyGravity Z
return
.limit locals 2
.limit stack 2
.end method

.method public setAlpha(I)V
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/state Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/getAlpha()I
iload 1
if_icmpeq L0
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/state Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
iload 1
invokevirtual com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/setAlpha(I)V
aload 0
invokevirtual com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/invalidateSelf()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/state Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
aload 1
invokevirtual com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/setColorFilter(Landroid/graphics/ColorFilter;)V
aload 0
invokevirtual com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/invalidateSelf()V
return
.limit locals 2
.limit stack 2
.end method

.method public setLoopCount(I)V
return
.limit locals 2
.limit stack 0
.end method

.method public start()V
return
.limit locals 1
.limit stack 0
.end method

.method public stop()V
return
.limit locals 1
.limit stack 0
.end method
