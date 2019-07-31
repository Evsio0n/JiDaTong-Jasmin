.bytecode 50.0
.class synchronized com/bumptech/glide/load/resource/gif/GifDrawable$GifState
.super android/graphics/drawable/Drawable$ConstantState
.inner class static GifState inner com/bumptech/glide/load/resource/gif/GifDrawable$GifState outer com/bumptech/glide/load/resource/gif/GifDrawable

.field private static final 'GRAVITY' I = 119


.field 'bitmapPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field 'bitmapProvider' Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field 'context' Landroid/content/Context;

.field 'data' [B

.field 'firstFrame' Landroid/graphics/Bitmap;

.field 'frameTransformation' Lcom/bumptech/glide/load/Transformation; signature "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"

.field 'gifHeader' Lcom/bumptech/glide/gifdecoder/GifHeader;

.field 'targetHeight' I

.field 'targetWidth' I

.method public <init>(Lcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/content/Context;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V
.signature "(Lcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/content/Context;Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;IILcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V"
aload 0
invokespecial android/graphics/drawable/Drawable$ConstantState/<init>()V
aload 9
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "The first frame of the GIF must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/gifHeader Lcom/bumptech/glide/gifdecoder/GifHeader;
aload 0
aload 2
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/data [B
aload 0
aload 8
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
aload 9
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/firstFrame Landroid/graphics/Bitmap;
aload 0
aload 3
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/context Landroid/content/Context;
aload 0
aload 4
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/frameTransformation Lcom/bumptech/glide/load/Transformation;
aload 0
iload 5
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/targetWidth I
aload 0
iload 6
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/targetHeight I
aload 0
aload 7
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/bitmapProvider Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
return
.limit locals 10
.limit stack 3
.end method

.method public <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V
aload 0
invokespecial android/graphics/drawable/Drawable$ConstantState/<init>()V
aload 1
ifnull L0
aload 0
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/gifHeader Lcom/bumptech/glide/gifdecoder/GifHeader;
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/gifHeader Lcom/bumptech/glide/gifdecoder/GifHeader;
aload 0
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/data [B
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/data [B
aload 0
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/context Landroid/content/Context;
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/context Landroid/content/Context;
aload 0
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/frameTransformation Lcom/bumptech/glide/load/Transformation;
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/frameTransformation Lcom/bumptech/glide/load/Transformation;
aload 0
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/targetWidth I
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/targetWidth I
aload 0
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/targetHeight I
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/targetHeight I
aload 0
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/bitmapProvider Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/bitmapProvider Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
aload 0
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
aload 1
getfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/firstFrame Landroid/graphics/Bitmap;
putfield com/bumptech/glide/load/resource/gif/GifDrawable$GifState/firstFrame Landroid/graphics/Bitmap;
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public getChangingConfigurations()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
new com/bumptech/glide/load/resource/gif/GifDrawable
dup
aload 0
invokespecial com/bumptech/glide/load/resource/gif/GifDrawable/<init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
aload 0
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable$GifState/newDrawable()Landroid/graphics/drawable/Drawable;
areturn
.limit locals 2
.limit stack 1
.end method
