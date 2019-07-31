.bytecode 50.0
.class public synchronized com/ccb/ccbnetpay/dialog/CCBAlertDialog
.super android/app/Dialog
.inner class inner com/ccb/ccbnetpay/dialog/CCBAlertDialog$1

.field private 'activity' Landroid/app/Activity;

.field private 'btnView' Landroid/widget/TextView;

.field private 'context' Landroid/content/Context;

.method public <init>(Landroid/content/Context;I)V
aload 0
aload 1
iload 2
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/context Landroid/content/Context;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/activity Landroid/app/Activity;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/btnView Landroid/widget/TextView;
aload 0
aload 1
putfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/context Landroid/content/Context;
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
putfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/context Landroid/content/Context;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/activity Landroid/app/Activity;
aload 0
aconst_null
putfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/btnView Landroid/widget/TextView;
aload 0
aload 1
putfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/context Landroid/content/Context;
aload 0
aload 2
putfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/activity Landroid/app/Activity;
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$0(Lcom/ccb/ccbnetpay/dialog/CCBAlertDialog;)Landroid/app/Activity;
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/activity Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method private createColorStateList(IIII)Landroid/content/res/ColorStateList;
iconst_2
newarray int
dup
iconst_0
ldc_w 16842910
iastore
dup
iconst_1
ldc_w 16842919
iastore
astore 5
iconst_2
newarray int
dup
iconst_0
ldc_w 16842910
iastore
dup
iconst_1
ldc_w 16842908
iastore
astore 6
iconst_1
newarray int
dup
iconst_0
ldc_w 16842910
iastore
astore 7
iconst_1
newarray int
dup
iconst_0
ldc_w 16842908
iastore
astore 8
iconst_0
newarray int
astore 9
new android/content/res/ColorStateList
dup
bipush 6
anewarray [I
dup
iconst_0
aload 5
aastore
dup
iconst_1
aload 6
aastore
dup
iconst_2
aload 7
aastore
dup
iconst_3
aload 8
aastore
dup
iconst_4
iconst_1
newarray int
dup
iconst_0
ldc_w 16842909
iastore
aastore
dup
iconst_5
aload 9
aastore
bipush 6
newarray int
dup
iconst_0
iload 2
iastore
dup
iconst_1
iload 3
iastore
dup
iconst_2
iload 1
iastore
dup
iconst_3
iload 3
iastore
dup
iconst_4
iload 4
iastore
dup
iconst_5
iload 1
iastore
invokespecial android/content/res/ColorStateList/<init>([[I[I)V
areturn
.limit locals 10
.limit stack 9
.end method

.method public createDialog(Ljava/lang/String;)V
aload 0
invokevirtual com/ccb/ccbnetpay/dialog/CCBAlertDialog/getWindow()Landroid/view/Window;
astore 2
aload 2
iconst_1
invokevirtual android/view/Window/requestFeature(I)Z
pop
aload 2
invokevirtual android/view/Window/getDecorView()Landroid/view/View;
iconst_0
invokevirtual android/view/View/setBackgroundColor(I)V
aload 2
invokevirtual android/view/Window/getAttributes()Landroid/view/WindowManager$LayoutParams;
astore 3
aload 3
ldc_w 0.6F
putfield android/view/WindowManager$LayoutParams/dimAmount F
aload 3
bipush 17
putfield android/view/WindowManager$LayoutParams/gravity I
aload 3
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/activity Landroid/app/Activity;
invokevirtual android/app/Activity/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
invokevirtual android/view/Display/getWidth()I
i2d
ldc2_w 0.8D
dmul
d2i
putfield android/view/WindowManager$LayoutParams/width I
aload 3
bipush -2
putfield android/view/WindowManager$LayoutParams/height I
aload 2
aload 3
invokevirtual android/view/Window/setAttributes(Landroid/view/WindowManager$LayoutParams;)V
aload 0
iconst_0
invokevirtual com/ccb/ccbnetpay/dialog/CCBAlertDialog/setCanceledOnTouchOutside(Z)V
aload 0
iconst_1
invokevirtual com/ccb/ccbnetpay/dialog/CCBAlertDialog/setCancelable(Z)V
aload 1
astore 2
aload 1
ifnonnull L0
ldc ""
astore 2
L0:
aload 0
aload 2
invokevirtual com/ccb/ccbnetpay/dialog/CCBAlertDialog/initLayout(Ljava/lang/String;)V
return
.limit locals 4
.limit stack 5
.end method

.method public disDialog()V
ldc "---\u5173\u95edDialog---"
new java/lang/StringBuilder
dup
ldc "AlertDialog\u72b6\u6001\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual com/ccb/ccbnetpay/dialog/CCBAlertDialog/isShowing()Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
invokevirtual com/ccb/ccbnetpay/dialog/CCBAlertDialog/isShowing()Z
ifeq L0
aload 0
invokevirtual com/ccb/ccbnetpay/dialog/CCBAlertDialog/dismiss()V
L0:
return
.limit locals 1
.limit stack 4
.end method

.method public initLayout(Ljava/lang/String;)V
new android/widget/LinearLayout
dup
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/context Landroid/content/Context;
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 2
aload 2
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
invokevirtual android/widget/LinearLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 2
bipush 17
invokevirtual android/widget/LinearLayout/setGravity(I)V
aload 2
iconst_1
invokevirtual android/widget/LinearLayout/setOrientation(I)V
new android/graphics/drawable/GradientDrawable
dup
invokespecial android/graphics/drawable/GradientDrawable/<init>()V
astore 3
aload 3
ldc_w 16.0F
invokevirtual android/graphics/drawable/GradientDrawable/setCornerRadius(F)V
aload 3
ldc "#ffffff"
invokestatic android/graphics/Color/parseColor(Ljava/lang/String;)I
invokevirtual android/graphics/drawable/GradientDrawable/setColor(I)V
aload 2
aload 3
invokevirtual android/widget/LinearLayout/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 2
iconst_1
invokevirtual android/widget/LinearLayout/setId(I)V
new android/widget/TextView
dup
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/context Landroid/content/Context;
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 3
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 4
aload 4
iconst_0
bipush 125
iconst_0
bipush 125
invokevirtual android/widget/LinearLayout$LayoutParams/setMargins(IIII)V
aload 3
aload 4
invokevirtual android/widget/TextView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 3
bipush 17
invokevirtual android/widget/TextView/setGravity(I)V
aload 3
ldc "#262626"
invokestatic android/graphics/Color/parseColor(Ljava/lang/String;)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 3
iconst_2
ldc_w 16.0F
invokevirtual android/widget/TextView/setTextSize(IF)V
aload 3
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
iconst_2
invokevirtual android/widget/TextView/setId(I)V
new android/view/View
dup
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/context Landroid/content/Context;
invokespecial android/view/View/<init>(Landroid/content/Context;)V
astore 1
aload 1
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
iconst_1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 1
ldc "#E4E4E4"
invokestatic android/graphics/Color/parseColor(Ljava/lang/String;)I
invokevirtual android/view/View/setBackgroundColor(I)V
aload 0
new android/widget/TextView
dup
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/context Landroid/content/Context;
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
putfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/btnView Landroid/widget/TextView;
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 4
aload 4
iconst_0
iconst_0
iconst_0
iconst_1
invokevirtual android/widget/LinearLayout$LayoutParams/setMargins(IIII)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/btnView Landroid/widget/TextView;
aload 4
invokevirtual android/widget/TextView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/btnView Landroid/widget/TextView;
bipush 60
bipush 60
bipush 60
bipush 60
invokevirtual android/widget/TextView/setPadding(IIII)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/btnView Landroid/widget/TextView;
bipush 17
invokevirtual android/widget/TextView/setGravity(I)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/btnView Landroid/widget/TextView;
ldc "\u786e\u5b9a"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/btnView Landroid/widget/TextView;
aload 0
ldc "#00ffff"
invokestatic android/graphics/Color/parseColor(Ljava/lang/String;)I
ldc "#0066cc"
invokestatic android/graphics/Color/parseColor(Ljava/lang/String;)I
ldc "#0066cc"
invokestatic android/graphics/Color/parseColor(Ljava/lang/String;)I
ldc "#00ffff"
invokestatic android/graphics/Color/parseColor(Ljava/lang/String;)I
invokespecial com/ccb/ccbnetpay/dialog/CCBAlertDialog/createColorStateList(IIII)Landroid/content/res/ColorStateList;
invokevirtual android/widget/TextView/setTextColor(Landroid/content/res/ColorStateList;)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/btnView Landroid/widget/TextView;
iconst_2
ldc_w 16.0F
invokevirtual android/widget/TextView/setTextSize(IF)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/btnView Landroid/widget/TextView;
iconst_3
invokevirtual android/widget/TextView/setId(I)V
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/btnView Landroid/widget/TextView;
new com/ccb/ccbnetpay/dialog/CCBAlertDialog$1
dup
aload 0
invokespecial com/ccb/ccbnetpay/dialog/CCBAlertDialog$1/<init>(Lcom/ccb/ccbnetpay/dialog/CCBAlertDialog;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 2
aload 1
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 2
aload 0
getfield com/ccb/ccbnetpay/dialog/CCBAlertDialog/btnView Landroid/widget/TextView;
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 0
aload 2
invokevirtual com/ccb/ccbnetpay/dialog/CCBAlertDialog/setContentView(Landroid/view/View;)V
return
.limit locals 5
.limit stack 6
.end method

.method public showDialog()V
ldc "---\u5f39\u51faDialog---"
new java/lang/StringBuilder
dup
ldc "AlertDialog\u72b6\u6001\uff1a"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual com/ccb/ccbnetpay/dialog/CCBAlertDialog/isShowing()Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
invokevirtual com/ccb/ccbnetpay/dialog/CCBAlertDialog/isShowing()Z
ifne L0
aload 0
invokevirtual com/ccb/ccbnetpay/dialog/CCBAlertDialog/show()V
L0:
return
.limit locals 1
.limit stack 4
.end method
