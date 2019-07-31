.bytecode 50.0
.class final synchronized com/flurry/android/z
.super android/widget/RelativeLayout

.field private 'a' Lcom/flurry/android/v;

.field private 'b' Lcom/flurry/android/p;

.field private 'c' I

.method public <init>(Landroid/content/Context;Lcom/flurry/android/v;Lcom/flurry/android/p;Lcom/flurry/android/e;IZ)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
aload 2
putfield com/flurry/android/z/a Lcom/flurry/android/v;
aload 0
aload 3
putfield com/flurry/android/z/b Lcom/flurry/android/p;
aload 3
getfield com/flurry/android/p/c Lcom/flurry/android/w;
astore 2
aload 0
iload 5
putfield com/flurry/android/z/c I
aload 0
getfield com/flurry/android/z/c I
tableswitch 1
L0
L1
default : L2
L2:
aload 0
iconst_1
invokevirtual com/flurry/android/z/setFocusable(Z)V
return
L1:
iload 6
ifeq L3
aload 0
aload 1
aload 4
aload 2
iconst_0
invokespecial com/flurry/android/z/a(Landroid/content/Context;Lcom/flurry/android/e;Lcom/flurry/android/w;Z)V
L0:
iload 6
ifeq L4
aload 0
aload 1
aload 4
aload 2
iconst_0
invokespecial com/flurry/android/z/a(Landroid/content/Context;Lcom/flurry/android/e;Lcom/flurry/android/w;Z)V
goto L2
L3:
aload 0
aload 1
aload 4
aload 2
iconst_1
invokespecial com/flurry/android/z/a(Landroid/content/Context;Lcom/flurry/android/e;Lcom/flurry/android/w;Z)V
goto L0
L4:
aload 0
aload 1
aload 4
aload 2
iconst_1
invokespecial com/flurry/android/z/a(Landroid/content/Context;Lcom/flurry/android/e;Lcom/flurry/android/w;Z)V
goto L2
.limit locals 7
.limit stack 5
.end method

.method private a(Landroid/content/Context;Lcom/flurry/android/e;Lcom/flurry/android/w;Z)V
aload 0
new android/widget/RelativeLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
invokevirtual com/flurry/android/z/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 2
getfield com/flurry/android/e/d Lcom/flurry/android/c;
astore 11
new android/widget/ImageView
dup
aload 1
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
astore 10
aload 10
iconst_1
invokevirtual android/widget/ImageView/setId(I)V
aload 3
getfield com/flurry/android/w/h Lcom/flurry/android/AdImage;
astore 2
aload 2
ifnull L0
aload 2
getfield com/flurry/android/AdImage/e [B
astore 2
aload 2
iconst_0
aload 2
arraylength
invokestatic android/graphics/BitmapFactory/decodeByteArray([BII)Landroid/graphics/Bitmap;
astore 9
aload 9
ifnonnull L1
ldc "FlurryAgent"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Ad with bad image: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
getfield com/flurry/android/w/d Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", data: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/flurry/android/ai/a(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aload 9
ifnull L0
aload 9
invokevirtual android/graphics/Bitmap/getWidth()I
aload 9
invokevirtual android/graphics/Bitmap/getHeight()I
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 2
new android/graphics/Canvas
dup
aload 2
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
astore 12
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
astore 13
new android/graphics/Rect
dup
iconst_0
iconst_0
aload 9
invokevirtual android/graphics/Bitmap/getWidth()I
aload 9
invokevirtual android/graphics/Bitmap/getHeight()I
invokespecial android/graphics/Rect/<init>(IIII)V
astore 14
new android/graphics/RectF
dup
aload 14
invokespecial android/graphics/RectF/<init>(Landroid/graphics/Rect;)V
astore 15
aload 1
bipush 8
invokestatic com/flurry/android/r/a(Landroid/content/Context;I)I
i2f
fstore 5
aload 13
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 12
iconst_0
iconst_0
iconst_0
iconst_0
invokevirtual android/graphics/Canvas/drawARGB(IIII)V
aload 13
ldc_w -16777216
invokevirtual android/graphics/Paint/setColor(I)V
aload 12
aload 15
fload 5
fload 5
aload 13
invokevirtual android/graphics/Canvas/drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
aload 13
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/SRC_IN Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 12
aload 9
aload 14
aload 14
aload 13
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
getstatic android/os/Build$VERSION/SDK Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
iconst_4
if_icmple L2
new android/graphics/BlurMaskFilter
dup
ldc_w 3.0F
getstatic android/graphics/BlurMaskFilter$Blur/OUTER Landroid/graphics/BlurMaskFilter$Blur;
invokespecial android/graphics/BlurMaskFilter/<init>(FLandroid/graphics/BlurMaskFilter$Blur;)V
astore 12
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
astore 9
aload 9
aload 12
invokevirtual android/graphics/Paint/setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
pop
iconst_2
newarray int
astore 12
aload 2
aload 9
aload 12
invokevirtual android/graphics/Bitmap/extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
iconst_1
invokevirtual android/graphics/Bitmap/copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
astore 9
new android/graphics/Canvas
dup
aload 9
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
aload 2
aload 12
iconst_0
iaload
ineg
i2f
aload 12
iconst_1
iaload
ineg
i2f
aconst_null
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
aload 9
astore 2
L3:
aload 10
aload 2
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
aload 1
aload 10
aload 1
aload 11
getfield com/flurry/android/c/m I
invokestatic com/flurry/android/r/a(Landroid/content/Context;I)I
aload 1
aload 11
getfield com/flurry/android/c/n I
invokestatic com/flurry/android/r/a(Landroid/content/Context;I)I
invokestatic com/flurry/android/r/a(Landroid/content/Context;Landroid/widget/ImageView;II)V
aload 10
getstatic android/widget/ImageView$ScaleType/FIT_XY Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
L0:
aload 0
getfield com/flurry/android/z/a Lcom/flurry/android/v;
aload 11
getfield com/flurry/android/c/c J
invokevirtual com/flurry/android/v/a(J)Lcom/flurry/android/AdImage;
astore 2
aload 2
ifnull L4
aload 2
getfield com/flurry/android/AdImage/e [B
astore 2
aload 2
iconst_0
aload 2
arraylength
invokestatic android/graphics/BitmapFactory/decodeByteArray([BII)Landroid/graphics/Bitmap;
astore 2
aload 2
invokevirtual android/graphics/Bitmap/getNinePatchChunk()[B
invokestatic android/graphics/NinePatch/isNinePatchChunk([B)Z
ifeq L5
new android/graphics/drawable/NinePatchDrawable
dup
aload 2
aload 2
invokevirtual android/graphics/Bitmap/getNinePatchChunk()[B
new android/graphics/Rect
dup
iconst_0
iconst_0
iconst_0
iconst_0
invokespecial android/graphics/Rect/<init>(IIII)V
aconst_null
invokespecial android/graphics/drawable/NinePatchDrawable/<init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
astore 2
L6:
aload 0
aload 2
invokevirtual com/flurry/android/z/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
L4:
new android/widget/TextView
dup
aload 1
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 2
aload 2
iconst_5
invokevirtual android/widget/TextView/setId(I)V
aload 2
iconst_0
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setPadding(IIII)V
new android/widget/TextView
dup
aload 1
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 9
aload 9
iconst_3
invokevirtual android/widget/TextView/setId(I)V
aload 9
iconst_0
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setPadding(IIII)V
iload 4
ifeq L7
aload 2
aload 11
getfield com/flurry/android/c/f I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 2
aload 11
getfield com/flurry/android/c/e I
i2f
invokevirtual android/widget/TextView/setTextSize(F)V
aload 2
new java/lang/String
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u2022 "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 11
getfield com/flurry/android/c/b Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/String/<init>(Ljava/lang/String;)V
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
aload 11
getfield com/flurry/android/c/d Ljava/lang/String;
iconst_0
invokestatic android/graphics/Typeface/create(Ljava/lang/String;I)Landroid/graphics/Typeface;
invokevirtual android/widget/TextView/setTypeface(Landroid/graphics/Typeface;)V
aload 9
aload 11
getfield com/flurry/android/c/i I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 9
aload 11
getfield com/flurry/android/c/h I
i2f
invokevirtual android/widget/TextView/setTextSize(F)V
aload 9
aload 11
getfield com/flurry/android/c/g Ljava/lang/String;
iconst_0
invokestatic android/graphics/Typeface/create(Ljava/lang/String;I)Landroid/graphics/Typeface;
invokevirtual android/widget/TextView/setTypeface(Landroid/graphics/Typeface;)V
aload 9
aload 3
getfield com/flurry/android/w/d Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L8:
aload 0
new android/view/ViewGroup$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual com/flurry/android/z/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new android/widget/RelativeLayout$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 3
aload 0
new android/widget/ImageView
dup
aload 1
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
aload 3
invokevirtual com/flurry/android/z/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 11
getfield com/flurry/android/c/q I
istore 6
aload 11
getfield com/flurry/android/c/o I
istore 7
aload 11
getfield com/flurry/android/c/m I
istore 8
new android/widget/RelativeLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 1
aload 1
bipush 9
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(I)V
aload 1
aload 11
getfield com/flurry/android/c/o I
aload 11
getfield com/flurry/android/c/p I
iload 6
iload 7
iconst_1
ishl
isub
iload 8
isub
iconst_0
invokevirtual android/widget/RelativeLayout$LayoutParams/setMargins(IIII)V
aload 0
aload 10
aload 1
invokevirtual com/flurry/android/z/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new android/widget/RelativeLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 1
aload 1
bipush 6
aload 10
invokevirtual android/widget/ImageView/getId()I
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(II)V
aload 1
iconst_1
aload 10
invokevirtual android/widget/ImageView/getId()I
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(II)V
aload 1
iconst_0
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/RelativeLayout$LayoutParams/setMargins(IIII)V
aload 0
aload 2
aload 1
invokevirtual com/flurry/android/z/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new android/widget/RelativeLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 1
aload 1
iconst_1
aload 10
invokevirtual android/widget/ImageView/getId()I
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(II)V
aload 1
iconst_3
aload 2
invokevirtual android/widget/TextView/getId()I
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(II)V
aload 1
iconst_0
bipush -2
iconst_0
iconst_0
invokevirtual android/widget/RelativeLayout$LayoutParams/setMargins(IIII)V
aload 0
aload 9
aload 1
invokevirtual com/flurry/android/z/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return
L5:
new android/graphics/drawable/BitmapDrawable
dup
aload 2
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/graphics/Bitmap;)V
astore 2
goto L6
L7:
aload 2
iconst_3
invokevirtual android/widget/TextView/setId(I)V
aload 2
aload 3
getfield com/flurry/android/w/d Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
aload 11
getfield com/flurry/android/c/i I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 2
aload 11
getfield com/flurry/android/c/h I
i2f
invokevirtual android/widget/TextView/setTextSize(F)V
aload 2
aload 11
getfield com/flurry/android/c/g Ljava/lang/String;
iconst_0
invokestatic android/graphics/Typeface/create(Ljava/lang/String;I)Landroid/graphics/Typeface;
invokevirtual android/widget/TextView/setTypeface(Landroid/graphics/Typeface;)V
aload 9
iconst_4
invokevirtual android/widget/TextView/setId(I)V
aload 9
aload 3
getfield com/flurry/android/w/c Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 9
aload 11
getfield com/flurry/android/c/l I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 9
aload 11
getfield com/flurry/android/c/k I
i2f
invokevirtual android/widget/TextView/setTextSize(F)V
aload 9
aload 11
getfield com/flurry/android/c/j Ljava/lang/String;
iconst_0
invokestatic android/graphics/Typeface/create(Ljava/lang/String;I)Landroid/graphics/Typeface;
invokevirtual android/widget/TextView/setTypeface(Landroid/graphics/Typeface;)V
goto L8
L2:
goto L3
.limit locals 16
.limit stack 10
.end method

.method final a()Lcom/flurry/android/p;
aload 0
getfield com/flurry/android/z/b Lcom/flurry/android/p;
areturn
.limit locals 1
.limit stack 1
.end method

.method final a(Lcom/flurry/android/p;)V
aload 0
aload 1
putfield com/flurry/android/z/b Lcom/flurry/android/p;
return
.limit locals 2
.limit stack 2
.end method
