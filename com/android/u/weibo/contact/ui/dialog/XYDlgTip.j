.bytecode 50.0
.class public synchronized com/android/u/weibo/contact/ui/dialog/XYDlgTip
.super android/app/Dialog
.inner class inner com/android/u/weibo/contact/ui/dialog/XYDlgTip$1
.inner class inner com/android/u/weibo/contact/ui/dialog/XYDlgTip$2

.field private 'mNegativeClickListener' Landroid/content/DialogInterface$OnClickListener;

.field private 'mPositiveClickListener' Landroid/content/DialogInterface$OnClickListener;

.method public <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
aload 0
aload 1
getstatic com/android/u/weibo/R$style/Style_Self_Info_Dlg I
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
aload 2
putfield com/android/u/weibo/contact/ui/dialog/XYDlgTip/mPositiveClickListener Landroid/content/DialogInterface$OnClickListener;
aload 0
aload 3
putfield com/android/u/weibo/contact/ui/dialog/XYDlgTip/mNegativeClickListener Landroid/content/DialogInterface$OnClickListener;
aload 0
getstatic com/android/u/weibo/R$layout/xy_dialog_tip I
invokevirtual com/android/u/weibo/contact/ui/dialog/XYDlgTip/setContentView(I)V
aload 0
getstatic com/android/u/weibo/R$id/btn_positive I
invokevirtual com/android/u/weibo/contact/ui/dialog/XYDlgTip/findViewById(I)Landroid/view/View;
new com/android/u/weibo/contact/ui/dialog/XYDlgTip$1
dup
aload 0
invokespecial com/android/u/weibo/contact/ui/dialog/XYDlgTip$1/<init>(Lcom/android/u/weibo/contact/ui/dialog/XYDlgTip;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/android/u/weibo/R$id/btn_nagetive I
invokevirtual com/android/u/weibo/contact/ui/dialog/XYDlgTip/findViewById(I)Landroid/view/View;
new com/android/u/weibo/contact/ui/dialog/XYDlgTip$2
dup
aload 0
invokespecial com/android/u/weibo/contact/ui/dialog/XYDlgTip$2/<init>(Lcom/android/u/weibo/contact/ui/dialog/XYDlgTip;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/android/u/weibo/contact/ui/dialog/XYDlgTip;)Landroid/content/DialogInterface$OnClickListener;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/XYDlgTip/mPositiveClickListener Landroid/content/DialogInterface$OnClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/android/u/weibo/contact/ui/dialog/XYDlgTip;)Landroid/content/DialogInterface$OnClickListener;
aload 0
getfield com/android/u/weibo/contact/ui/dialog/XYDlgTip/mNegativeClickListener Landroid/content/DialogInterface$OnClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setContent(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getstatic com/android/u/weibo/R$id/tv_content I
invokevirtual com/android/u/weibo/contact/ui/dialog/XYDlgTip/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setNegativeBtnText(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getstatic com/android/u/weibo/R$id/btn_nagetive I
invokevirtual com/android/u/weibo/contact/ui/dialog/XYDlgTip/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
aload 1
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setPositiveBtnText(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getstatic com/android/u/weibo/R$id/btn_positive I
invokevirtual com/android/u/weibo/contact/ui/dialog/XYDlgTip/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
aload 1
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setTitle(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getstatic com/android/u/weibo/R$id/tv_title I
invokevirtual com/android/u/weibo/contact/ui/dialog/XYDlgTip/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
