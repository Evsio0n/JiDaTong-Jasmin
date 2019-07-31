.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/CircleImageView
.super android/widget/ImageView

.field private static final 'TAG' Ljava/lang/String;

.field private static final 'sXfermode' Landroid/graphics/Xfermode;

.field protected 'mContext' Landroid/content/Context;

.field private 'mMaskBitmap' Landroid/graphics/Bitmap;

.field private 'mPaint' Landroid/graphics/Paint;

.field private 'mWeakBitmap' Ljava/lang/ref/WeakReference; signature "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"

.method static <clinit>()V
ldc com/nd/android/u/ui/widge/CircleImageView
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/android/u/ui/widge/CircleImageView/TAG Ljava/lang/String;
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/DST_IN Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
putstatic com/nd/android/u/ui/widge/CircleImageView/sXfermode Landroid/graphics/Xfermode;
return
.limit locals 0
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/CircleImageView/sharedConstructor(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/CircleImageView/sharedConstructor(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/CircleImageView/sharedConstructor(Landroid/content/Context;)V
return
.limit locals 4
.limit stack 4
.end method

.method public static getBitmap(II)Landroid/graphics/Bitmap;
iload 0
iload 1
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 2
new android/graphics/Canvas
dup
aload 2
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 3
new android/graphics/Paint
dup
iconst_1
invokespecial android/graphics/Paint/<init>(I)V
astore 4
aload 4
ldc_w -16777216
invokevirtual android/graphics/Paint/setColor(I)V
aload 3
new android/graphics/RectF
dup
fconst_0
fconst_0
iload 0
i2f
iload 1
i2f
invokespecial android/graphics/RectF/<init>(FFFF)V
aload 4
invokevirtual android/graphics/Canvas/drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
aload 2
areturn
.limit locals 5
.limit stack 7
.end method

.method private sharedConstructor(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/CircleImageView/mContext Landroid/content/Context;
aload 0
new android/graphics/Paint
dup
iconst_1
invokespecial android/graphics/Paint/<init>(I)V
putfield com/nd/android/u/ui/widge/CircleImageView/mPaint Landroid/graphics/Paint;
return
.limit locals 2
.limit stack 4
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
aload 0
invokevirtual com/nd/android/u/ui/widge/CircleImageView/getWidth()I
aload 0
invokevirtual com/nd/android/u/ui/widge/CircleImageView/getHeight()I
invokestatic com/nd/android/u/ui/widge/CircleImageView/getBitmap(II)Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 2
.end method

.method public invalidate()V
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/CircleImageView/mWeakBitmap Ljava/lang/ref/WeakReference;
aload 0
getfield com/nd/android/u/ui/widge/CircleImageView/mMaskBitmap Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/CircleImageView/mMaskBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
L0:
aload 0
invokespecial android/widget/ImageView/invalidate()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "DrawAllocation" 
.end annotation
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L5 to L6 using L2
.catch all from L5 to L6 using L3
.catch java/lang/Exception from L7 to L8 using L2
.catch all from L7 to L8 using L3
.catch java/lang/Exception from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/lang/Exception from L9 to L10 using L2
.catch all from L9 to L10 using L3
.catch java/lang/Exception from L11 to L12 using L2
.catch all from L11 to L12 using L3
.catch all from L13 to L14 using L3
aload 0
invokevirtual com/nd/android/u/ui/widge/CircleImageView/isInEditMode()Z
ifne L15
aload 1
fconst_0
fconst_0
aload 0
invokevirtual com/nd/android/u/ui/widge/CircleImageView/getWidth()I
i2f
aload 0
invokevirtual com/nd/android/u/ui/widge/CircleImageView/getHeight()I
i2f
aconst_null
bipush 31
invokevirtual android/graphics/Canvas/saveLayer(FFFFLandroid/graphics/Paint;I)I
istore 2
L0:
aload 0
getfield com/nd/android/u/ui/widge/CircleImageView/mWeakBitmap Ljava/lang/ref/WeakReference;
ifnull L16
aload 0
getfield com/nd/android/u/ui/widge/CircleImageView/mWeakBitmap Ljava/lang/ref/WeakReference;
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast android/graphics/Bitmap
astore 3
L1:
aload 3
ifnull L5
aload 3
astore 4
L4:
aload 3
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifeq L10
L5:
aload 0
invokevirtual com/nd/android/u/ui/widge/CircleImageView/getDrawable()Landroid/graphics/drawable/Drawable;
astore 5
L6:
aload 3
astore 4
aload 5
ifnull L10
L7:
aload 0
invokevirtual com/nd/android/u/ui/widge/CircleImageView/getWidth()I
aload 0
invokevirtual com/nd/android/u/ui/widge/CircleImageView/getHeight()I
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 4
new android/graphics/Canvas
dup
aload 4
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 3
aload 5
iconst_0
iconst_0
aload 0
invokevirtual com/nd/android/u/ui/widge/CircleImageView/getWidth()I
aload 0
invokevirtual com/nd/android/u/ui/widge/CircleImageView/getHeight()I
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 5
aload 3
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
aload 0
getfield com/nd/android/u/ui/widge/CircleImageView/mMaskBitmap Landroid/graphics/Bitmap;
ifnull L8
aload 0
getfield com/nd/android/u/ui/widge/CircleImageView/mMaskBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifeq L9
L8:
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/CircleImageView/getBitmap()Landroid/graphics/Bitmap;
putfield com/nd/android/u/ui/widge/CircleImageView/mMaskBitmap Landroid/graphics/Bitmap;
L9:
aload 0
getfield com/nd/android/u/ui/widge/CircleImageView/mPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/reset()V
aload 0
getfield com/nd/android/u/ui/widge/CircleImageView/mPaint Landroid/graphics/Paint;
iconst_0
invokevirtual android/graphics/Paint/setFilterBitmap(Z)V
aload 0
getfield com/nd/android/u/ui/widge/CircleImageView/mPaint Landroid/graphics/Paint;
getstatic com/nd/android/u/ui/widge/CircleImageView/sXfermode Landroid/graphics/Xfermode;
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 3
aload 0
getfield com/nd/android/u/ui/widge/CircleImageView/mMaskBitmap Landroid/graphics/Bitmap;
fconst_0
fconst_0
aload 0
getfield com/nd/android/u/ui/widge/CircleImageView/mPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
aload 0
new java/lang/ref/WeakReference
dup
aload 4
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
putfield com/nd/android/u/ui/widge/CircleImageView/mWeakBitmap Ljava/lang/ref/WeakReference;
L10:
aload 4
ifnull L17
L11:
aload 0
getfield com/nd/android/u/ui/widge/CircleImageView/mPaint Landroid/graphics/Paint;
aconst_null
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 1
aload 4
fconst_0
fconst_0
aload 0
getfield com/nd/android/u/ui/widge/CircleImageView/mPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
L12:
aload 1
iload 2
invokevirtual android/graphics/Canvas/restoreToCount(I)V
return
L16:
aconst_null
astore 3
goto L1
L17:
aload 1
iload 2
invokevirtual android/graphics/Canvas/restoreToCount(I)V
return
L2:
astore 3
L13:
invokestatic java/lang/System/gc()V
getstatic com/nd/android/u/ui/widge/CircleImageView/TAG Ljava/lang/String;
ldc "Failed to draw, Id :: %s. Error occurred :: %s"
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 0
invokevirtual com/nd/android/u/ui/widge/CircleImageView/getId()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 3
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L14:
aload 1
iload 2
invokevirtual android/graphics/Canvas/restoreToCount(I)V
return
L3:
astore 3
aload 1
iload 2
invokevirtual android/graphics/Canvas/restoreToCount(I)V
aload 3
athrow
L15:
aload 0
aload 1
invokespecial android/widget/ImageView/onDraw(Landroid/graphics/Canvas;)V
return
.limit locals 6
.limit stack 7
.end method
