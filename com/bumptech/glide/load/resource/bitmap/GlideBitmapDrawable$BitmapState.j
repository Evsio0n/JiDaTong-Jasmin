.bytecode 50.0
.class synchronized com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState
.super android/graphics/drawable/Drawable$ConstantState
.inner class static BitmapState inner com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState outer com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable

.field private static final 'DEFAULT_PAINT' Landroid/graphics/Paint;

.field private static final 'DEFAULT_PAINT_FLAGS' I = 6


.field private static final 'GRAVITY' I = 119


.field final 'bitmap' Landroid/graphics/Bitmap;

.field 'paint' Landroid/graphics/Paint;

.field 'targetDensity' I

.method static <clinit>()V
new android/graphics/Paint
dup
bipush 6
invokespecial android/graphics/Paint/<init>(I)V
putstatic com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/DEFAULT_PAINT Landroid/graphics/Paint;
return
.limit locals 0
.limit stack 3
.end method

.method public <init>(Landroid/graphics/Bitmap;)V
aload 0
invokespecial android/graphics/drawable/Drawable$ConstantState/<init>()V
aload 0
getstatic com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/DEFAULT_PAINT Landroid/graphics/Paint;
putfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/paint Landroid/graphics/Paint;
aload 0
aload 1
putfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/bitmap Landroid/graphics/Bitmap;
return
.limit locals 2
.limit stack 2
.end method

.method <init>(Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V
aload 0
aload 1
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/bitmap Landroid/graphics/Bitmap;
invokespecial com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/<init>(Landroid/graphics/Bitmap;)V
aload 0
aload 1
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/targetDensity I
putfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/targetDensity I
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

.method mutatePaint()V
getstatic com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/DEFAULT_PAINT Landroid/graphics/Paint;
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/paint Landroid/graphics/Paint;
if_acmpne L0
aload 0
new android/graphics/Paint
dup
bipush 6
invokespecial android/graphics/Paint/<init>(I)V
putfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/paint Landroid/graphics/Paint;
L0:
return
.limit locals 1
.limit stack 4
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
new com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable
dup
aconst_null
aload 0
invokespecial com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/<init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
new com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable
dup
aload 1
aload 0
invokespecial com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable/<init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method setAlpha(I)V
aload 0
invokevirtual com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/mutatePaint()V
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/paint Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setAlpha(I)V
return
.limit locals 2
.limit stack 2
.end method

.method setColorFilter(Landroid/graphics/ColorFilter;)V
aload 0
invokevirtual com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/mutatePaint()V
aload 0
getfield com/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState/paint Landroid/graphics/Paint;
aload 1
invokevirtual android/graphics/Paint/setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
pop
return
.limit locals 2
.limit stack 2
.end method
