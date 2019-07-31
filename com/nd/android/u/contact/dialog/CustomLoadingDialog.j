.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dialog/CustomLoadingDialog
.super java/lang/Object

.field private 'dlg' Landroid/app/Dialog;

.field private 'mIvLoadingIcon' Landroid/widget/ImageView;

.field private 'mTvDialogContent' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/loading_progress_dialog I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 4
aload 4
getstatic com/nd/android/u/contact/R$id/ll_loading_dialog I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
astore 3
aload 0
aload 4
getstatic com/nd/android/u/contact/R$id/iv_loading I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/dialog/CustomLoadingDialog/mIvLoadingIcon Landroid/widget/ImageView;
aload 0
aload 4
getstatic com/nd/android/u/contact/R$id/tv_loading_dialog_content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/CustomLoadingDialog/mTvDialogContent Landroid/widget/TextView;
aload 1
getstatic com/nd/android/u/contact/R$anim/loading_dialog I
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
astore 4
aload 0
getfield com/nd/android/u/contact/dialog/CustomLoadingDialog/mIvLoadingIcon Landroid/widget/ImageView;
aload 4
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
aload 0
getfield com/nd/android/u/contact/dialog/CustomLoadingDialog/mTvDialogContent Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
new android/app/Dialog
dup
aload 1
getstatic com/nd/android/u/contact/R$style/MyDialog I
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
putfield com/nd/android/u/contact/dialog/CustomLoadingDialog/dlg Landroid/app/Dialog;
aload 0
getfield com/nd/android/u/contact/dialog/CustomLoadingDialog/dlg Landroid/app/Dialog;
invokevirtual android/app/Dialog/show()V
aload 0
getfield com/nd/android/u/contact/dialog/CustomLoadingDialog/dlg Landroid/app/Dialog;
aload 3
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
invokevirtual android/app/Dialog/setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 5
.limit stack 6
.end method

.method public cancel()V
aload 0
getfield com/nd/android/u/contact/dialog/CustomLoadingDialog/dlg Landroid/app/Dialog;
invokevirtual android/app/Dialog/cancel()V
return
.limit locals 1
.limit stack 1
.end method

.method public dismiss()V
aload 0
getfield com/nd/android/u/contact/dialog/CustomLoadingDialog/dlg Landroid/app/Dialog;
invokevirtual android/app/Dialog/dismiss()V
return
.limit locals 1
.limit stack 1
.end method

.method public setCancelable(Z)V
aload 0
getfield com/nd/android/u/contact/dialog/CustomLoadingDialog/dlg Landroid/app/Dialog;
iload 1
invokevirtual android/app/Dialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public show()V
aload 0
getfield com/nd/android/u/contact/dialog/CustomLoadingDialog/dlg Landroid/app/Dialog;
invokevirtual android/app/Dialog/show()V
return
.limit locals 1
.limit stack 1
.end method
