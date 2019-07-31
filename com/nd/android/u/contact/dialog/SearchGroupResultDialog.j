.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dialog/SearchGroupResultDialog
.super android/app/Dialog
.implements android/view/View$OnClickListener

.field private 'mDialogContent' Ljava/lang/String;

.field private 'mDialogTitle' Ljava/lang/String;

.field private 'mTvDialogContent' Landroid/widget/TextView;

.field private 'mTvDialogOk' Landroid/widget/TextView;

.field private 'mTvDialogTitle' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/app/Dialog/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;I)V
aload 0
aload 1
iload 2
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
iload 2
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
aload 3
putfield com/nd/android/u/contact/dialog/SearchGroupResultDialog/mDialogTitle Ljava/lang/String;
aload 0
aload 4
putfield com/nd/android/u/contact/dialog/SearchGroupResultDialog/mDialogContent Ljava/lang/String;
return
.limit locals 5
.limit stack 3
.end method

.method private initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tv_dialog_title I
invokevirtual com/nd/android/u/contact/dialog/SearchGroupResultDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/SearchGroupResultDialog/mTvDialogTitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tv_dialog_content I
invokevirtual com/nd/android/u/contact/dialog/SearchGroupResultDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/SearchGroupResultDialog/mTvDialogContent Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tv_dialog_ok I
invokevirtual com/nd/android/u/contact/dialog/SearchGroupResultDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/SearchGroupResultDialog/mTvDialogOk Landroid/widget/TextView;
return
.limit locals 1
.limit stack 3
.end method

.method private initComponentValue()V
aload 0
getfield com/nd/android/u/contact/dialog/SearchGroupResultDialog/mDialogTitle Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/contact/dialog/SearchGroupResultDialog/mDialogContent Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/contact/dialog/SearchGroupResultDialog/mTvDialogTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/dialog/SearchGroupResultDialog/mDialogTitle Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/dialog/SearchGroupResultDialog/mTvDialogContent Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/dialog/SearchGroupResultDialog/mDialogContent Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/u/contact/dialog/SearchGroupResultDialog/mTvDialogOk Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
invokevirtual com/nd/android/u/contact/dialog/SearchGroupResultDialog/dismiss()V
return
.limit locals 2
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Dialog/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/contact/R$layout/search_group_result_dialog I
invokevirtual com/nd/android/u/contact/dialog/SearchGroupResultDialog/setContentView(I)V
aload 0
iconst_0
invokevirtual com/nd/android/u/contact/dialog/SearchGroupResultDialog/setCanceledOnTouchOutside(Z)V
aload 0
invokespecial com/nd/android/u/contact/dialog/SearchGroupResultDialog/initComponent()V
aload 0
invokespecial com/nd/android/u/contact/dialog/SearchGroupResultDialog/initComponentValue()V
aload 0
invokespecial com/nd/android/u/contact/dialog/SearchGroupResultDialog/initEvent()V
return
.limit locals 2
.limit stack 2
.end method
