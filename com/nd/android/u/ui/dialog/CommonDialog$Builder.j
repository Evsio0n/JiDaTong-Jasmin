.bytecode 50.0
.class public synchronized com/nd/android/u/ui/dialog/CommonDialog$Builder
.super java/lang/Object
.inner class public static Builder inner com/nd/android/u/ui/dialog/CommonDialog$Builder outer com/nd/android/u/ui/dialog/CommonDialog
.inner class inner com/nd/android/u/ui/dialog/CommonDialog$Builder$1
.inner class inner com/nd/android/u/ui/dialog/CommonDialog$Builder$2

.field private 'contentView' Landroid/view/View;

.field private 'context' Landroid/content/Context;

.field private 'icon' Landroid/graphics/drawable/Drawable;

.field private 'message' Ljava/lang/CharSequence;

.field private 'negativeButtonClickListener' Landroid/content/DialogInterface$OnClickListener;

.field private 'negativeButtonText' Ljava/lang/CharSequence;

.field private 'positiveButtonClickListener' Landroid/content/DialogInterface$OnClickListener;

.field private 'positiveButtonText' Ljava/lang/CharSequence;

.field private 'title' Ljava/lang/CharSequence;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder/context Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method private getApiLevel()I
.catch java/lang/Exception from L0 to L1 using L2
L0:
getstatic android/os/Build$VERSION/SDK Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 1
L1:
iload 1
ireturn
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
bipush 7
ireturn
.limit locals 3
.limit stack 1
.end method

.method public create()Lcom/nd/android/u/ui/dialog/CommonDialog;
new com/nd/android/u/ui/dialog/CommonDialog
dup
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/context Landroid/content/Context;
getstatic com/nd/android/u/chat/R$style/Dialog I
invokespecial com/nd/android/u/ui/dialog/CommonDialog/<init>(Landroid/content/Context;I)V
astore 5
aload 5
getstatic com/nd/android/u/chat/R$layout/common_dialog_layout I
invokevirtual com/nd/android/u/ui/dialog/CommonDialog/setContentView(I)V
aload 5
getstatic com/nd/android/u/chat/R$id/common_dialog_layout I
invokevirtual com/nd/android/u/ui/dialog/CommonDialog/findViewById(I)Landroid/view/View;
checkcast android/view/ViewGroup
astore 6
aload 6
new android/widget/FrameLayout$LayoutParams
dup
invokestatic com/nd/android/u/allCommonUtils/DisplayUtils/getCurrentScreenWidth()I
i2f
ldc_w 0.9F
fmul
f2i
bipush -2
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
invokevirtual android/view/ViewGroup/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/icon Landroid/graphics/drawable/Drawable;
ifnull L0
aload 6
getstatic com/nd/android/u/chat/R$id/common_dialog_top_icon I
invokevirtual android/view/ViewGroup/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/icon Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
L1:
aload 6
getstatic com/nd/android/u/chat/R$id/common_dialog_top_title I
invokevirtual android/view/ViewGroup/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/title Ljava/lang/CharSequence;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/positiveButtonText Ljava/lang/CharSequence;
astore 1
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/negativeButtonText Ljava/lang/CharSequence;
astore 2
aload 0
invokespecial com/nd/android/u/ui/dialog/CommonDialog$Builder/getApiLevel()I
bipush 14
if_icmplt L2
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/negativeButtonText Ljava/lang/CharSequence;
astore 1
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/positiveButtonText Ljava/lang/CharSequence;
astore 2
L2:
aload 0
invokespecial com/nd/android/u/ui/dialog/CommonDialog$Builder/getApiLevel()I
bipush 14
if_icmplt L3
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/negativeButtonClickListener Landroid/content/DialogInterface$OnClickListener;
astore 3
L4:
aload 0
invokespecial com/nd/android/u/ui/dialog/CommonDialog$Builder/getApiLevel()I
bipush 14
if_icmplt L5
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/positiveButtonClickListener Landroid/content/DialogInterface$OnClickListener;
astore 4
L6:
aload 1
ifnull L7
aload 6
getstatic com/nd/android/u/chat/R$id/common_dialog_left_button I
invokevirtual android/view/ViewGroup/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
aload 1
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 3
ifnull L8
aload 6
getstatic com/nd/android/u/chat/R$id/common_dialog_left_button I
invokevirtual android/view/ViewGroup/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
new com/nd/android/u/ui/dialog/CommonDialog$Builder$1
dup
aload 0
aload 3
aload 5
invokespecial com/nd/android/u/ui/dialog/CommonDialog$Builder$1/<init>(Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;Landroid/content/DialogInterface$OnClickListener;Lcom/nd/android/u/ui/dialog/CommonDialog;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
L8:
aload 2
ifnull L9
aload 6
getstatic com/nd/android/u/chat/R$id/common_dialog_right_button I
invokevirtual android/view/ViewGroup/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
aload 2
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 4
ifnull L10
aload 6
getstatic com/nd/android/u/chat/R$id/common_dialog_right_button I
invokevirtual android/view/ViewGroup/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
new com/nd/android/u/ui/dialog/CommonDialog$Builder$2
dup
aload 0
aload 4
aload 5
invokespecial com/nd/android/u/ui/dialog/CommonDialog$Builder$2/<init>(Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;Landroid/content/DialogInterface$OnClickListener;Lcom/nd/android/u/ui/dialog/CommonDialog;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
L10:
aload 6
getstatic com/nd/android/u/chat/R$id/common_dialog_content I
invokevirtual android/view/ViewGroup/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 1
aload 1
invokestatic android/text/method/ScrollingMovementMethod/getInstance()Landroid/text/method/MovementMethod;
invokevirtual android/widget/TextView/setMovementMethod(Landroid/text/method/MovementMethod;)V
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/message Ljava/lang/CharSequence;
ifnull L11
aload 1
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/message Ljava/lang/CharSequence;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L12:
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/contentView Landroid/view/View;
ifnull L13
aload 6
getstatic com/nd/android/u/chat/R$id/common_dialog_custom_view_layout I
invokevirtual android/view/ViewGroup/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/contentView Landroid/view/View;
new android/view/ViewGroup$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 5
areturn
L0:
aload 6
getstatic com/nd/android/u/chat/R$id/common_dialog_top_icon I
invokevirtual android/view/ViewGroup/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
goto L1
L3:
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/positiveButtonClickListener Landroid/content/DialogInterface$OnClickListener;
astore 3
goto L4
L5:
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/negativeButtonClickListener Landroid/content/DialogInterface$OnClickListener;
astore 4
goto L6
L7:
aload 6
getstatic com/nd/android/u/chat/R$id/common_dialog_left_button I
invokevirtual android/view/ViewGroup/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
goto L8
L9:
aload 6
getstatic com/nd/android/u/chat/R$id/common_dialog_right_button I
invokevirtual android/view/ViewGroup/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
goto L10
L11:
aload 1
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L12
L13:
aload 6
getstatic com/nd/android/u/chat/R$id/common_dialog_custom_view_layout I
invokevirtual android/view/ViewGroup/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 5
areturn
.limit locals 7
.limit stack 6
.end method

.method public setContentView(Landroid/view/View;)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
aload 0
aload 1
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder/contentView Landroid/view/View;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setIcon(I)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
aload 0
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder/icon Landroid/graphics/drawable/Drawable;
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
aload 0
aload 1
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder/icon Landroid/graphics/drawable/Drawable;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setMessage(I)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
aload 0
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/context Landroid/content/Context;
iload 1
invokevirtual android/content/Context/getText(I)Ljava/lang/CharSequence;
checkcast java/lang/String
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder/message Ljava/lang/CharSequence;
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
aload 0
aload 1
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder/message Ljava/lang/CharSequence;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
aload 0
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/context Landroid/content/Context;
iload 1
invokevirtual android/content/Context/getText(I)Ljava/lang/CharSequence;
checkcast java/lang/String
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder/negativeButtonText Ljava/lang/CharSequence;
aload 0
aload 2
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder/negativeButtonClickListener Landroid/content/DialogInterface$OnClickListener;
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
aload 0
aload 1
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder/negativeButtonText Ljava/lang/CharSequence;
aload 0
aload 2
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder/negativeButtonClickListener Landroid/content/DialogInterface$OnClickListener;
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
aload 0
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/context Landroid/content/Context;
iload 1
invokevirtual android/content/Context/getText(I)Ljava/lang/CharSequence;
checkcast java/lang/String
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder/positiveButtonText Ljava/lang/CharSequence;
aload 0
aload 2
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder/positiveButtonClickListener Landroid/content/DialogInterface$OnClickListener;
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
aload 0
aload 1
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder/positiveButtonText Ljava/lang/CharSequence;
aload 0
aload 2
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder/positiveButtonClickListener Landroid/content/DialogInterface$OnClickListener;
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method public setTitle(I)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
aload 0
aload 0
getfield com/nd/android/u/ui/dialog/CommonDialog$Builder/context Landroid/content/Context;
iload 1
invokevirtual android/content/Context/getText(I)Ljava/lang/CharSequence;
checkcast java/lang/String
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder/title Ljava/lang/CharSequence;
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/nd/android/u/ui/dialog/CommonDialog$Builder;
aload 0
aload 1
putfield com/nd/android/u/ui/dialog/CommonDialog$Builder/title Ljava/lang/CharSequence;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method
