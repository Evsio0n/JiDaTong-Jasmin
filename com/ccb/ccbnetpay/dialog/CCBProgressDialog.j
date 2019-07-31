.bytecode 50.0
.class public synchronized com/ccb/ccbnetpay/dialog/CCBProgressDialog
.super android/app/Dialog

.field private 'activity' Landroid/app/Activity;

.field private 'context' Landroid/content/Context;

.field private 'imageView' Landroid/widget/ImageView;

.field private 'spinner' Landroid/graphics/drawable/AnimationDrawable;

.field private 'textView' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/app/Dialog/<init>(Landroid/content/Context;)V
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/textView Landroid/widget/TextView;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/imageView Landroid/widget/ImageView;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/spinner Landroid/graphics/drawable/AnimationDrawable;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/context Landroid/content/Context;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/activity Landroid/app/Activity;
aload 0
aload 1
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/context Landroid/content/Context;
aload 0
invokevirtual com/ccb/ccbnetpay/dialog/CCBProgressDialog/initDialog()V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;I)V
aload 0
aload 1
iload 2
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/textView Landroid/widget/TextView;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/imageView Landroid/widget/ImageView;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/spinner Landroid/graphics/drawable/AnimationDrawable;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/context Landroid/content/Context;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/activity Landroid/app/Activity;
aload 0
aload 1
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/context Landroid/content/Context;
aload 0
invokevirtual com/ccb/ccbnetpay/dialog/CCBProgressDialog/initDialog()V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/app/Activity;)V
aload 0
aload 1
invokespecial android/app/Dialog/<init>(Landroid/content/Context;)V
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/textView Landroid/widget/TextView;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/imageView Landroid/widget/ImageView;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/spinner Landroid/graphics/drawable/AnimationDrawable;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/context Landroid/content/Context;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/activity Landroid/app/Activity;
aload 0
aload 1
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/context Landroid/content/Context;
aload 0
aload 2
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/activity Landroid/app/Activity;
aload 0
invokevirtual com/ccb/ccbnetpay/dialog/CCBProgressDialog/initDialog()V
return
.limit locals 3
.limit stack 2
.end method

.method public disDialog()V
ldc "---\u5173\u95edProgressDialog---"
new java/lang/StringBuilder
dup
ldc "ProgressDialog\u72b6\u6001\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual com/ccb/ccbnetpay/dialog/CCBProgressDialog/isShowing()Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
invokevirtual com/ccb/ccbnetpay/dialog/CCBProgressDialog/isShowing()Z
ifeq L0
aload 0
invokevirtual com/ccb/ccbnetpay/dialog/CCBProgressDialog/dismiss()V
L0:
return
.limit locals 1
.limit stack 4
.end method

.method public initDialog()V
aload 0
invokevirtual com/ccb/ccbnetpay/dialog/CCBProgressDialog/getWindow()Landroid/view/Window;
astore 1
aload 1
bipush 32
invokevirtual android/view/Window/setSoftInputMode(I)V
aload 1
iconst_1
invokevirtual android/view/Window/requestFeature(I)Z
pop
aload 1
invokevirtual android/view/Window/getDecorView()Landroid/view/View;
iconst_0
invokevirtual android/view/View/setBackgroundColor(I)V
aload 1
invokevirtual android/view/Window/getAttributes()Landroid/view/WindowManager$LayoutParams;
astore 2
aload 2
ldc_w 0.6F
putfield android/view/WindowManager$LayoutParams/dimAmount F
aload 2
bipush 17
putfield android/view/WindowManager$LayoutParams/gravity I
aload 1
aload 2
invokevirtual android/view/Window/setAttributes(Landroid/view/WindowManager$LayoutParams;)V
aload 0
iconst_1
invokevirtual com/ccb/ccbnetpay/dialog/CCBProgressDialog/setCancelable(Z)V
aload 0
iconst_0
invokevirtual com/ccb/ccbnetpay/dialog/CCBProgressDialog/setCanceledOnTouchOutside(Z)V
aload 0
invokevirtual com/ccb/ccbnetpay/dialog/CCBProgressDialog/initLayout()V
return
.limit locals 3
.limit stack 2
.end method

.method public initLayout()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L8 to L9 using L2
.catch java/lang/Exception from L9 to L10 using L2
new android/widget/LinearLayout
dup
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/context Landroid/content/Context;
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 5
aload 5
bipush 17
invokevirtual android/widget/LinearLayout/setGravity(I)V
aload 5
iconst_1
invokevirtual android/widget/LinearLayout/setOrientation(I)V
aload 5
bipush 50
bipush 50
bipush 50
bipush 50
invokevirtual android/widget/LinearLayout/setPadding(IIII)V
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 4
aload 4
bipush 17
putfield android/widget/LinearLayout$LayoutParams/gravity I
aload 5
aload 4
invokevirtual android/widget/LinearLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new android/graphics/drawable/GradientDrawable
dup
invokespecial android/graphics/drawable/GradientDrawable/<init>()V
astore 4
aload 4
ldc_w 15.0F
invokevirtual android/graphics/drawable/GradientDrawable/setCornerRadius(F)V
aload 4
ldc "#88000000"
invokestatic android/graphics/Color/parseColor(Ljava/lang/String;)I
invokevirtual android/graphics/drawable/GradientDrawable/setColor(I)V
aload 5
aload 4
invokevirtual android/widget/LinearLayout/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
new android/widget/ImageView
dup
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/context Landroid/content/Context;
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/imageView Landroid/widget/ImageView;
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 4
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/imageView Landroid/widget/ImageView;
aload 4
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/imageView Landroid/widget/ImageView;
iconst_1
invokevirtual android/widget/ImageView/setId(I)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/context Landroid/content/Context;
invokevirtual android/content/Context/getAssets()Landroid/content/res/AssetManager;
astore 6
aload 0
new android/graphics/drawable/AnimationDrawable
dup
invokespecial android/graphics/drawable/AnimationDrawable/<init>()V
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/spinner Landroid/graphics/drawable/AnimationDrawable;
iconst_0
istore 1
L11:
iload 1
bipush 11
if_icmple L0
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/spinner Landroid/graphics/drawable/AnimationDrawable;
iconst_0
invokevirtual android/graphics/drawable/AnimationDrawable/setOneShot(Z)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/imageView Landroid/widget/ImageView;
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/spinner Landroid/graphics/drawable/AnimationDrawable;
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
new android/widget/TextView
dup
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/context Landroid/content/Context;
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
putfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/textView Landroid/widget/TextView;
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 4
aload 4
iconst_0
bipush 10
iconst_0
iconst_0
invokevirtual android/widget/LinearLayout$LayoutParams/setMargins(IIII)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/textView Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/textView Landroid/widget/TextView;
bipush 17
invokevirtual android/widget/TextView/setGravity(I)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/textView Landroid/widget/TextView;
ldc "#ffffff"
invokestatic android/graphics/Color/parseColor(Ljava/lang/String;)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/textView Landroid/widget/TextView;
iconst_2
ldc_w 12.0F
invokevirtual android/widget/TextView/setTextSize(IF)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/textView Landroid/widget/TextView;
iconst_2
invokevirtual android/widget/TextView/setId(I)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/textView Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 5
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/imageView Landroid/widget/ImageView;
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 5
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/textView Landroid/widget/TextView;
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 0
aload 5
invokevirtual com/ccb/ccbnetpay/dialog/CCBProgressDialog/setContentView(Landroid/view/View;)V
return
L0:
aload 6
new java/lang/StringBuilder
dup
ldc "images/progess_loading_"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ".png"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/content/res/AssetManager/open(Ljava/lang/String;)Ljava/io/InputStream;
astore 7
aload 7
invokestatic com/ccb/ccbnetpay/util/NetUtil/readStream(Ljava/io/InputStream;)[B
astore 8
aload 7
aconst_null
invokestatic android/graphics/drawable/Drawable/createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
astore 4
L1:
aload 4
ifnull L4
L3:
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/spinner Landroid/graphics/drawable/AnimationDrawable;
aload 4
bipush 100
invokevirtual android/graphics/drawable/AnimationDrawable/addFrame(Landroid/graphics/drawable/Drawable;I)V
L4:
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 9
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/activity Landroid/app/Activity;
ifnull L5
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/activity Landroid/app/Activity;
invokevirtual android/app/Activity/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 9
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
L5:
aconst_null
astore 4
aload 8
ifnull L7
L6:
aload 8
iconst_0
aload 8
arraylength
invokestatic android/graphics/BitmapFactory/decodeByteArray([BII)Landroid/graphics/Bitmap;
astore 4
L7:
aload 4
ifnull L9
L8:
iconst_1
aload 4
invokevirtual android/graphics/Bitmap/getWidth()I
iconst_1
imul
i2f
aload 9
invokestatic android/util/TypedValue/applyDimension(IFLandroid/util/DisplayMetrics;)F
f2i
istore 2
iconst_1
aload 4
invokevirtual android/graphics/Bitmap/getHeight()I
iconst_1
imul
i2f
aload 9
invokestatic android/util/TypedValue/applyDimension(IFLandroid/util/DisplayMetrics;)F
f2i
istore 3
new java/lang/StringBuilder
dup
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "---"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
aload 4
invokevirtual android/graphics/Bitmap/getWidth()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "---"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual android/graphics/Bitmap/getHeight()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/imageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 2
putfield android/view/ViewGroup$LayoutParams/width I
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/imageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 3
putfield android/view/ViewGroup$LayoutParams/height I
L9:
aload 7
invokevirtual java/io/InputStream/close()V
L10:
iload 1
iconst_1
iadd
istore 1
goto L11
L2:
astore 4
aload 4
invokevirtual java/lang/Exception/printStackTrace()V
ldc "---\u83b7\u53d6\u56fe\u7247\u5f02\u5e38---"
aload 4
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L10
.limit locals 10
.limit stack 5
.end method

.method public onWindowFocusChanged(Z)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/spinner Landroid/graphics/drawable/AnimationDrawable;
ifnull L0
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/spinner Landroid/graphics/drawable/AnimationDrawable;
invokevirtual android/graphics/drawable/AnimationDrawable/start()V
L0:
return
.limit locals 2
.limit stack 1
.end method

.method public setMessage(Ljava/lang/String;)V
aload 1
ifnull L0
aload 1
invokevirtual java/lang/String/length()I
ifeq L0
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/textView Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/textView Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L1:
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/textView Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/textView Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBProgressDialog/textView Landroid/widget/TextView;
invokevirtual android/widget/TextView/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public showDialog()V
ldc "---\u5f39\u51faProgressDialog---"
new java/lang/StringBuilder
dup
ldc "ProgressDialog\u72b6\u6001\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual com/ccb/ccbnetpay/dialog/CCBProgressDialog/isShowing()Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
invokevirtual com/ccb/ccbnetpay/dialog/CCBProgressDialog/isShowing()Z
ifne L0
aload 0
invokevirtual com/ccb/ccbnetpay/dialog/CCBProgressDialog/show()V
L0:
return
.limit locals 1
.limit stack 4
.end method
