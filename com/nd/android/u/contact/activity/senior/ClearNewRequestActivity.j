.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/senior/ClearNewRequestActivity
.super com/product/android/ui/activity/BaseActivity
.implements android/view/View$OnClickListener

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
iconst_1
invokevirtual com/nd/android/u/contact/activity/senior/ClearNewRequestActivity/requestWindowFeature(I)Z
pop
aload 0
getstatic com/nd/android/u/contact/R$layout/activity_clear_new_request I
invokevirtual com/nd/android/u/contact/activity/senior/ClearNewRequestActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/ClearNewRequestActivity/getWindow()Landroid/view/Window;
iconst_m1
aload 0
invokestatic com/product/android/utils/ScreenUtil/getScreenHeight(Landroid/content/Context;)I
aload 0
invokestatic com/product/android/utils/ScreenUtil/getStatusBarHeight(Landroid/app/Activity;)I
isub
invokevirtual android/view/Window/setLayout(II)V
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/ClearNewRequestActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/ClearNewRequestActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/ClearNewRequestActivity/initEvent()V
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/BaseActivity/initEvent()V
aload 0
getstatic com/nd/android/u/contact/R$id/tvClear I
invokevirtual com/nd/android/u/contact/activity/senior/ClearNewRequestActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/android/u/contact/R$id/tvCancel I
invokevirtual com/nd/android/u/contact/activity/senior/ClearNewRequestActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/tvClear I
if_icmpne L0
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "clear"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
iconst_m1
aload 1
invokevirtual com/nd/android/u/contact/activity/senior/ClearNewRequestActivity/setResult(ILandroid/content/Intent;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/ClearNewRequestActivity/finish()V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/tvCancel I
if_icmpne L1
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/ClearNewRequestActivity/finish()V
return
.limit locals 2
.limit stack 3
.end method
