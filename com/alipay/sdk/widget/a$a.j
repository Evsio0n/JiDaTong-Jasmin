.bytecode 50.0
.class public final synchronized com/alipay/sdk/widget/a$a
.super android/app/AlertDialog
.inner class public final a inner com/alipay/sdk/widget/a$a outer com/alipay/sdk/widget/a

.field final synthetic 'a' Lcom/alipay/sdk/widget/a;

.method protected <init>(Lcom/alipay/sdk/widget/a;Landroid/content/Context;)V
aload 0
aload 1
putfield com/alipay/sdk/widget/a$a/a Lcom/alipay/sdk/widget/a;
aload 0
aload 2
invokespecial android/app/AlertDialog/<init>(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 2
.end method

.method private static a(Landroid/content/Context;F)I
aload 0
ifnonnull L0
invokestatic android/content/res/Resources/getSystem()Landroid/content/res/Resources;
astore 0
L1:
aload 0
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
fload 1
fmul
f2i
ireturn
L0:
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
astore 0
goto L1
.limit locals 2
.limit stack 2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.catch java/lang/Throwable from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Throwable from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/lang/Exception from L4 to L7 using L8
.catch java/lang/Exception from L9 to L10 using L11
.catch java/lang/Exception from L12 to L13 using L14
L0:
new java/io/ByteArrayInputStream
dup
aload 1
invokestatic com/alipay/sdk/encrypt/a/a(Ljava/lang/String;)[B
invokespecial java/io/ByteArrayInputStream/<init>([B)V
astore 1
L1:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 2
aload 2
sipush 480
putfield android/graphics/BitmapFactory$Options/inDensity I
aload 2
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/densityDpi I
putfield android/graphics/BitmapFactory$Options/inTargetDensity I
aload 1
aconst_null
aload 2
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 2
new android/graphics/drawable/BitmapDrawable
dup
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 2
invokespecial android/graphics/drawable/BitmapDrawable/<init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
astore 0
L4:
aload 1
invokevirtual java/io/InputStream/close()V
L7:
aload 0
areturn
L2:
astore 0
aconst_null
astore 0
L15:
aload 0
ifnull L16
L9:
aload 0
invokevirtual java/io/InputStream/close()V
L10:
aconst_null
areturn
L11:
astore 0
aconst_null
areturn
L3:
astore 0
aconst_null
astore 1
L17:
aload 1
ifnull L13
L12:
aload 1
invokevirtual java/io/InputStream/close()V
L13:
aload 0
athrow
L8:
astore 1
aload 0
areturn
L14:
astore 1
goto L13
L6:
astore 0
goto L17
L5:
astore 0
aload 1
astore 0
goto L15
L16:
aconst_null
areturn
.limit locals 3
.limit stack 4
.end method

.method private a(Landroid/content/Context;)Landroid/view/View;
new android/widget/LinearLayout
dup
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 3
new android/widget/FrameLayout$LayoutParams
dup
bipush -2
aload 1
ldc_w 50.0F
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;F)I
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
astore 2
aload 2
bipush 17
putfield android/widget/FrameLayout$LayoutParams/gravity I
aload 3
iconst_0
invokevirtual android/widget/LinearLayout/setOrientation(I)V
aload 3
aload 2
invokevirtual android/widget/LinearLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new android/graphics/drawable/GradientDrawable
dup
invokespecial android/graphics/drawable/GradientDrawable/<init>()V
astore 2
aload 2
ldc_w -450944201
invokevirtual android/graphics/drawable/GradientDrawable/setColor(I)V
aload 2
aload 1
ldc_w 5.0F
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;F)I
i2f
invokevirtual android/graphics/drawable/GradientDrawable/setCornerRadius(F)V
aload 3
aload 2
invokevirtual android/widget/LinearLayout/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
new android/widget/ImageView
dup
aload 1
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
astore 4
new android/widget/LinearLayout$LayoutParams
dup
aload 1
ldc_w 20.0F
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;F)I
aload 1
ldc_w 20.0F
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;F)I
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 2
aload 2
bipush 16
putfield android/widget/LinearLayout$LayoutParams/gravity I
aload 2
aload 0
getfield com/alipay/sdk/widget/a$a/a Lcom/alipay/sdk/widget/a;
invokestatic com/alipay/sdk/widget/a/a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;
ldc_w 17.0F
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;F)I
aload 0
getfield com/alipay/sdk/widget/a$a/a Lcom/alipay/sdk/widget/a;
invokestatic com/alipay/sdk/widget/a/a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;
ldc_w 10.0F
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;F)I
aload 0
getfield com/alipay/sdk/widget/a$a/a Lcom/alipay/sdk/widget/a;
invokestatic com/alipay/sdk/widget/a/a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;
ldc_w 8.0F
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;F)I
aload 0
getfield com/alipay/sdk/widget/a$a/a Lcom/alipay/sdk/widget/a;
invokestatic com/alipay/sdk/widget/a/a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;
ldc_w 10.0F
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;F)I
invokevirtual android/widget/LinearLayout$LayoutParams/setMargins(IIII)V
aload 4
aload 2
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 4
getstatic android/widget/ImageView$ScaleType/FIT_CENTER Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
aload 4
aload 1
getstatic com/alipay/sdk/widget/a/d Ljava/lang/String;
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
new android/view/animation/RotateAnimation
dup
fconst_0
ldc_w 359.0F
iconst_1
ldc_w 0.5F
iconst_1
ldc_w 0.5F
invokespecial android/view/animation/RotateAnimation/<init>(FFIFIF)V
astore 2
aload 2
iconst_m1
invokevirtual android/view/animation/Animation/setRepeatCount(I)V
aload 2
ldc2_w 900L
invokevirtual android/view/animation/Animation/setDuration(J)V
aload 2
new android/view/animation/LinearInterpolator
dup
invokespecial android/view/animation/LinearInterpolator/<init>()V
invokevirtual android/view/animation/Animation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 4
aload 2
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
new android/widget/TextView
dup
aload 1
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 5
aload 0
getfield com/alipay/sdk/widget/a$a/a Lcom/alipay/sdk/widget/a;
invokestatic com/alipay/sdk/widget/a/b(Lcom/alipay/sdk/widget/a;)Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc "\u6b63\u5728\u52a0\u8f7d"
astore 2
L1:
aload 5
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 5
ldc_w 16.0F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 5
iconst_m1
invokevirtual android/widget/TextView/setTextColor(I)V
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 2
aload 2
bipush 16
putfield android/widget/LinearLayout$LayoutParams/gravity I
aload 2
iconst_0
iconst_0
aload 1
ldc_w 17.0F
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;F)I
iconst_0
invokevirtual android/widget/LinearLayout$LayoutParams/setMargins(IIII)V
aload 5
aload 2
invokevirtual android/widget/TextView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 3
aload 4
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 3
aload 5
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 3
areturn
L0:
aload 0
getfield com/alipay/sdk/widget/a$a/a Lcom/alipay/sdk/widget/a;
invokestatic com/alipay/sdk/widget/a/b(Lcom/alipay/sdk/widget/a;)Ljava/lang/String;
astore 2
goto L1
.limit locals 6
.limit stack 8
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/AlertDialog/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/alipay/sdk/widget/a$a/getContext()Landroid/content/Context;
astore 2
new android/widget/LinearLayout
dup
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 3
new android/widget/FrameLayout$LayoutParams
dup
bipush -2
aload 2
ldc_w 50.0F
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;F)I
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
astore 1
aload 1
bipush 17
putfield android/widget/FrameLayout$LayoutParams/gravity I
aload 3
iconst_0
invokevirtual android/widget/LinearLayout/setOrientation(I)V
aload 3
aload 1
invokevirtual android/widget/LinearLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new android/graphics/drawable/GradientDrawable
dup
invokespecial android/graphics/drawable/GradientDrawable/<init>()V
astore 1
aload 1
ldc_w -450944201
invokevirtual android/graphics/drawable/GradientDrawable/setColor(I)V
aload 1
aload 2
ldc_w 5.0F
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;F)I
i2f
invokevirtual android/graphics/drawable/GradientDrawable/setCornerRadius(F)V
aload 3
aload 1
invokevirtual android/widget/LinearLayout/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
new android/widget/ImageView
dup
aload 2
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
astore 4
new android/widget/LinearLayout$LayoutParams
dup
aload 2
ldc_w 20.0F
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;F)I
aload 2
ldc_w 20.0F
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;F)I
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 1
aload 1
bipush 16
putfield android/widget/LinearLayout$LayoutParams/gravity I
aload 1
aload 0
getfield com/alipay/sdk/widget/a$a/a Lcom/alipay/sdk/widget/a;
invokestatic com/alipay/sdk/widget/a/a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;
ldc_w 17.0F
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;F)I
aload 0
getfield com/alipay/sdk/widget/a$a/a Lcom/alipay/sdk/widget/a;
invokestatic com/alipay/sdk/widget/a/a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;
ldc_w 10.0F
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;F)I
aload 0
getfield com/alipay/sdk/widget/a$a/a Lcom/alipay/sdk/widget/a;
invokestatic com/alipay/sdk/widget/a/a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;
ldc_w 8.0F
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;F)I
aload 0
getfield com/alipay/sdk/widget/a$a/a Lcom/alipay/sdk/widget/a;
invokestatic com/alipay/sdk/widget/a/a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;
ldc_w 10.0F
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;F)I
invokevirtual android/widget/LinearLayout$LayoutParams/setMargins(IIII)V
aload 4
aload 1
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 4
getstatic android/widget/ImageView$ScaleType/FIT_CENTER Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
aload 4
aload 2
getstatic com/alipay/sdk/widget/a/d Ljava/lang/String;
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
new android/view/animation/RotateAnimation
dup
fconst_0
ldc_w 359.0F
iconst_1
ldc_w 0.5F
iconst_1
ldc_w 0.5F
invokespecial android/view/animation/RotateAnimation/<init>(FFIFIF)V
astore 1
aload 1
iconst_m1
invokevirtual android/view/animation/Animation/setRepeatCount(I)V
aload 1
ldc2_w 900L
invokevirtual android/view/animation/Animation/setDuration(J)V
aload 1
new android/view/animation/LinearInterpolator
dup
invokespecial android/view/animation/LinearInterpolator/<init>()V
invokevirtual android/view/animation/Animation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 4
aload 1
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
new android/widget/TextView
dup
aload 2
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 5
aload 0
getfield com/alipay/sdk/widget/a$a/a Lcom/alipay/sdk/widget/a;
invokestatic com/alipay/sdk/widget/a/b(Lcom/alipay/sdk/widget/a;)Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc "\u6b63\u5728\u52a0\u8f7d"
astore 1
L1:
aload 5
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 5
ldc_w 16.0F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 5
iconst_m1
invokevirtual android/widget/TextView/setTextColor(I)V
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 1
aload 1
bipush 16
putfield android/widget/LinearLayout$LayoutParams/gravity I
aload 1
iconst_0
iconst_0
aload 2
ldc_w 17.0F
invokestatic com/alipay/sdk/widget/a$a/a(Landroid/content/Context;F)I
iconst_0
invokevirtual android/widget/LinearLayout$LayoutParams/setMargins(IIII)V
aload 5
aload 1
invokevirtual android/widget/TextView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 3
aload 4
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 3
aload 5
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 0
aload 3
invokevirtual com/alipay/sdk/widget/a$a/setContentView(Landroid/view/View;)V
aload 0
iconst_0
invokevirtual com/alipay/sdk/widget/a$a/setCancelable(Z)V
return
L0:
aload 0
getfield com/alipay/sdk/widget/a$a/a Lcom/alipay/sdk/widget/a;
invokestatic com/alipay/sdk/widget/a/b(Lcom/alipay/sdk/widget/a;)Ljava/lang/String;
astore 1
goto L1
.limit locals 6
.limit stack 8
.end method
