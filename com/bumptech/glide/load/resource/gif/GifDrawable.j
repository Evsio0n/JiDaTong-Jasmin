.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/gif/GifDrawable
.super com/bumptech/glide/load/resource/drawable/GlideDrawable
.implements com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback
.inner class static GifState inner com/bumptech/glide/load/resource/gif/GifDrawable$GifState outer com/bumptech/glide/load/resource/gif/GifDrawable

.field private 'applyGravity' Z

.field private final 'decoder' Lcom/bumptech/glide/gifdecoder/GifDecoder;

.field private final 'destRect' Landroid/graphics/Rect;

.field private final 'frameLoader' Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

.field private 'isRecycled' Z

.field private 'isRunning' Z

.field private 'isStarted' Z

.field private 'isVisible' Z

.field private 'loopCount' I

.field private 'maxLoopCount' I

.field private final 'paint' Landroid/graphics/Paint;

.field private final 'state' Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;

.method public <init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/graphics/Bitmap;)V
.signature "(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;IILcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/graphics/Bitmap;)V"
aload 0
new com/bumptech/glide/load/resource/gif/GifDrawable$GifState
dup
aload 7
aload 8
aload 1
aload 4
iload 5
iload 6
aload 2
aload 3
aload 9
invokespecial com/bumptech/glide/load/resource/gif/GifDrawable$GifState/<init>(Lcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/content/Context;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V
invokespecial com/bumptech/glide/load/resource/gif/GifDrawable/<init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V
return
.limit locals 10
.limit stack 12
.end method

.method <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Paint;)V
aload 0
invokespecial com/bumptech/glide/load/resource/drawable/GlideDrawable/<init>()V
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/bumptech/glide/load/resource/gif/GifDrawable/destRect Landroid/graphics/Rect;
aload 0
iconst_1
putfield com/bumptech/glide/load/resource/gif/GifDrawable/isVisible Z
aload 0
iconst_m1
putfield com/bumptech/glide/load/resource/gif/GifDrawable/maxLoopCount I
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gif/GifDrawable/decoder Lcom/bumptech/glide/gifdecoder/GifDecoder;
aload 0
aload 2
putfield com/bumptech/glide/load/resource/gif/GifDrawable/frameLoader Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
aload 0
new com/bumptech/glide/load/resource/gif/GifDrawable$GifState
dup
aconst_null
invokespecial com/bumptech/glide/load/resource/gif/GifDrawable$GifState/<init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V
putfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
aload 0
aload 5
putfield com/bumptech/glide/load/resource/gif/GifDrawable/paint Landroid/graphics/Paint;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
aload 4
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
aload 3
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/firstFrame Landroid/graphics/Bitmap;
return
.limit locals 6
.limit stack 4
.end method

.method <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V
aload 0
invokespecial com/bumptech/glide/load/resource/drawable/GlideDrawable/<init>()V
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/bumptech/glide/load/resource/gif/GifDrawable/destRect Landroid/graphics/Rect;
aload 0
iconst_1
putfield com/bumptech/glide/load/resource/gif/GifDrawable/isVisible Z
aload 0
iconst_m1
putfield com/bumptech/glide/load/resource/gif/GifDrawable/maxLoopCount I
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "GifState must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
aload 0
new com/bumptech/glide/gifdecoder/GifDecoder
dup
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/bitmapProvider Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
invokespecial com/bumptech/glide/gifdecoder/GifDecoder/<init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V
putfield com/bumptech/glide/load/resource/gif/GifDrawable/decoder Lcom/bumptech/glide/gifdecoder/GifDecoder;
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/bumptech/glide/load/resource/gif/GifDrawable/paint Landroid/graphics/Paint;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/decoder Lcom/bumptech/glide/gifdecoder/GifDecoder;
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/gifHeader Lcom/bumptech/glide/gifdecoder/GifHeader;
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/data [B
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
aload 0
new com/bumptech/glide/load/resource/gif/GifFrameLoader
dup
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/context Landroid/content/Context;
aload 0
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/decoder Lcom/bumptech/glide/gifdecoder/GifDecoder;
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/targetWidth I
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/targetHeight I
invokespecial com/bumptech/glide/load/resource/gif/GifFrameLoader/<init>(Landroid/content/Context;Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/bumptech/glide/gifdecoder/GifDecoder;II)V
putfield com/bumptech/glide/load/resource/gif/GifDrawable/frameLoader Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/frameLoader Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/frameTransformation Lcom/bumptech/glide/load/Transformation;
invokevirtual com/bumptech/glide/load/resource/gif/GifFrameLoader/setFrameTransformation(Lcom/bumptech/glide/load/Transformation;)V
return
.limit locals 2
.limit stack 8
.end method

.method public <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation;)V
.signature "(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;)V"
aload 0
new com/bumptech/glide/load/resource/gif/GifDrawable$GifState
dup
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/gifHeader Lcom/bumptech/glide/gifdecoder/GifHeader;
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/data [B
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/context Landroid/content/Context;
aload 3
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/targetWidth I
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/targetHeight I
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/bitmapProvider Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 2
invokespecial com/bumptech/glide/load/resource/gif/GifDrawable$GifState/<init>(Lcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/content/Context;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V
invokespecial com/bumptech/glide/load/resource/gif/GifDrawable/<init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V
return
.limit locals 4
.limit stack 12
.end method

.method private reset()V
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/frameLoader Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
invokevirtual com/bumptech/glide/load/resource/gif/GifFrameLoader/clear()V
aload 0
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/invalidateSelf()V
return
.limit locals 1
.limit stack 1
.end method

.method private resetLoopCount()V
aload 0
iconst_0
putfield com/bumptech/glide/load/resource/gif/GifDrawable/loopCount I
return
.limit locals 1
.limit stack 2
.end method

.method private startRunning()V
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/decoder Lcom/bumptech/glide/gifdecoder/GifDecoder;
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/getFrameCount()I
iconst_1
if_icmpne L0
aload 0
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/invalidateSelf()V
L1:
return
L0:
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/isRunning Z
ifne L1
aload 0
iconst_1
putfield com/bumptech/glide/load/resource/gif/GifDrawable/isRunning Z
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/frameLoader Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
invokevirtual com/bumptech/glide/load/resource/gif/GifFrameLoader/start()V
aload 0
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/invalidateSelf()V
return
.limit locals 1
.limit stack 2
.end method

.method private stopRunning()V
aload 0
iconst_0
putfield com/bumptech/glide/load/resource/gif/GifDrawable/isRunning Z
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/frameLoader Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
invokevirtual com/bumptech/glide/load/resource/gif/GifFrameLoader/stop()V
return
.limit locals 1
.limit stack 2
.end method

.method public draw(Landroid/graphics/Canvas;)V
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/isRecycled Z
ifeq L0
return
L0:
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/applyGravity Z
ifeq L1
bipush 119
aload 0
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/getIntrinsicWidth()I
aload 0
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/getIntrinsicHeight()I
aload 0
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/getBounds()Landroid/graphics/Rect;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/destRect Landroid/graphics/Rect;
invokestatic android/view/Gravity/apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
aload 0
iconst_0
putfield com/bumptech/glide/load/resource/gif/GifDrawable/applyGravity Z
L1:
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/frameLoader Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
invokevirtual com/bumptech/glide/load/resource/gif/GifFrameLoader/getCurrentFrame()Landroid/graphics/Bitmap;
astore 2
aload 2
ifnull L2
L3:
aload 1
aload 2
aconst_null
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/destRect Landroid/graphics/Rect;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
return
L2:
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/firstFrame Landroid/graphics/Bitmap;
astore 2
goto L3
.limit locals 3
.limit stack 5
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getData()[B
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/data [B
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDecoder()Lcom/bumptech/glide/gifdecoder/GifDecoder;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/decoder Lcom/bumptech/glide/gifdecoder/GifDecoder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFirstFrame()Landroid/graphics/Bitmap;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/firstFrame Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFrameCount()I
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/decoder Lcom/bumptech/glide/gifdecoder/GifDecoder;
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/getFrameCount()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFrameTransformation()Lcom/bumptech/glide/load/Transformation;
.signature "()Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/frameTransformation Lcom/bumptech/glide/load/Transformation;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIntrinsicHeight()I
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/firstFrame Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getHeight()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIntrinsicWidth()I
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/firstFrame Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getWidth()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getOpacity()I
bipush -2
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isAnimated()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method isRecycled()Z
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/isRecycled Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isRunning()Z
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/isRunning Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
aload 0
aload 1
invokespecial com/bumptech/glide/load/resource/drawable/GlideDrawable/onBoundsChange(Landroid/graphics/Rect;)V
aload 0
iconst_1
putfield com/bumptech/glide/load/resource/gif/GifDrawable/applyGravity Z
return
.limit locals 2
.limit stack 2
.end method

.method public onFrameReady(I)V
.annotation invisible Landroid/annotation/TargetApi;
value I = 11
.end annotation
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
aload 0
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/getCallback()Landroid/graphics/drawable/Drawable$Callback;
ifnonnull L0
aload 0
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/stop()V
aload 0
invokespecial com/bumptech/glide/load/resource/gif/GifDrawable/reset()V
L1:
return
L0:
aload 0
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/invalidateSelf()V
iload 1
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/decoder Lcom/bumptech/glide/gifdecoder/GifDecoder;
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/getFrameCount()I
iconst_1
isub
if_icmpne L2
aload 0
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/loopCount I
iconst_1
iadd
putfield com/bumptech/glide/load/resource/gif/GifDrawable/loopCount I
L2:
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/maxLoopCount I
iconst_m1
if_icmpeq L1
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/loopCount I
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/maxLoopCount I
if_icmplt L1
aload 0
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/stop()V
return
.limit locals 2
.limit stack 3
.end method

.method public recycle()V
aload 0
iconst_1
putfield com/bumptech/glide/load/resource/gif/GifDrawable/isRecycled Z
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/firstFrame Landroid/graphics/Bitmap;
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool/put(Landroid/graphics/Bitmap;)Z 1
pop
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/frameLoader Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
invokevirtual com/bumptech/glide/load/resource/gif/GifFrameLoader/clear()V
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/frameLoader Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
invokevirtual com/bumptech/glide/load/resource/gif/GifFrameLoader/stop()V
return
.limit locals 1
.limit stack 2
.end method

.method public setAlpha(I)V
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/paint Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setAlpha(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/paint Landroid/graphics/Paint;
aload 1
invokevirtual android/graphics/Paint/setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
pop
return
.limit locals 2
.limit stack 2
.end method

.method public setFrameTransformation(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
.signature "(Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;Landroid/graphics/Bitmap;)V"
aload 2
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "The first frame of the GIF must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 1
ifnonnull L1
new java/lang/NullPointerException
dup
ldc "The frame transformation must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
aload 1
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/frameTransformation Lcom/bumptech/glide/load/Transformation;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/state Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
aload 2
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/firstFrame Landroid/graphics/Bitmap;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/frameLoader Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
aload 1
invokevirtual com/bumptech/glide/load/resource/gif/GifFrameLoader/setFrameTransformation(Lcom/bumptech/glide/load/Transformation;)V
return
.limit locals 3
.limit stack 3
.end method

.method setIsRunning(Z)V
aload 0
iload 1
putfield com/bumptech/glide/load/resource/gif/GifDrawable/isRunning Z
return
.limit locals 2
.limit stack 2
.end method

.method public setLoopCount(I)V
iload 1
ifgt L0
iload 1
iconst_m1
if_icmpeq L0
iload 1
ifeq L0
new java/lang/IllegalArgumentException
dup
ldc "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
iload 1
ifne L1
aload 0
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/decoder Lcom/bumptech/glide/gifdecoder/GifDecoder;
invokevirtual com/bumptech/glide/gifdecoder/GifDecoder/getLoopCount()I
putfield com/bumptech/glide/load/resource/gif/GifDrawable/maxLoopCount I
return
L1:
aload 0
iload 1
putfield com/bumptech/glide/load/resource/gif/GifDrawable/maxLoopCount I
return
.limit locals 2
.limit stack 3
.end method

.method public setVisible(ZZ)Z
aload 0
iload 1
putfield com/bumptech/glide/load/resource/gif/GifDrawable/isVisible Z
iload 1
ifne L0
aload 0
invokespecial com/bumptech/glide/load/resource/gif/GifDrawable/stopRunning()V
L1:
aload 0
iload 1
iload 2
invokespecial com/bumptech/glide/load/resource/drawable/GlideDrawable/setVisible(ZZ)Z
ireturn
L0:
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/isStarted Z
ifeq L1
aload 0
invokespecial com/bumptech/glide/load/resource/gif/GifDrawable/startRunning()V
goto L1
.limit locals 3
.limit stack 3
.end method

.method public start()V
aload 0
iconst_1
putfield com/bumptech/glide/load/resource/gif/GifDrawable/isStarted Z
aload 0
invokespecial com/bumptech/glide/load/resource/gif/GifDrawable/resetLoopCount()V
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawable/isVisible Z
ifeq L0
aload 0
invokespecial com/bumptech/glide/load/resource/gif/GifDrawable/startRunning()V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public stop()V
aload 0
iconst_0
putfield com/bumptech/glide/load/resource/gif/GifDrawable/isStarted Z
aload 0
invokespecial com/bumptech/glide/load/resource/gif/GifDrawable/stopRunning()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmpge L0
aload 0
invokespecial com/bumptech/glide/load/resource/gif/GifDrawable/reset()V
L0:
return
.limit locals 1
.limit stack 2
.end method
