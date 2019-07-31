.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/WelcomeDialog
.super android/app/Dialog
.inner class inner com/nd/android/u/cloud/activity/welcome/WelcomeDialog$1
.inner class inner com/nd/android/u/cloud/activity/welcome/WelcomeDialog$2

.field private 'mNegativeClickListener' Landroid/content/DialogInterface$OnClickListener;

.field private 'mPositiveClickListener' Landroid/content/DialogInterface$OnClickListener;

.method public <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
aload 0
aload 1
ldc_w 2131230792
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
aload 2
putfield com/nd/android/u/cloud/activity/welcome/WelcomeDialog/mPositiveClickListener Landroid/content/DialogInterface$OnClickListener;
aload 0
aload 3
putfield com/nd/android/u/cloud/activity/welcome/WelcomeDialog/mNegativeClickListener Landroid/content/DialogInterface$OnClickListener;
aload 0
ldc_w 2130903830
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeDialog/setContentView(I)V
aload 0
ldc_w 2131626836
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeDialog/findViewById(I)Landroid/view/View;
new com/nd/android/u/cloud/activity/welcome/WelcomeDialog$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeDialog$1/<init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeDialog;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131627117
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeDialog/findViewById(I)Landroid/view/View;
new com/nd/android/u/cloud/activity/welcome/WelcomeDialog$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeDialog$2/<init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeDialog;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/welcome/WelcomeDialog;)Landroid/content/DialogInterface$OnClickListener;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeDialog/mPositiveClickListener Landroid/content/DialogInterface$OnClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/welcome/WelcomeDialog;)Landroid/content/DialogInterface$OnClickListener;
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeDialog/mNegativeClickListener Landroid/content/DialogInterface$OnClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setContent(Ljava/lang/String;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
ldc_w 2131624505
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeDialog/findViewById(I)Landroid/view/View;
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
ldc_w 2131627117
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeDialog/findViewById(I)Landroid/view/View;
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
ldc_w 2131626836
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeDialog/findViewById(I)Landroid/view/View;
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
ldc_w 2131624709
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
