.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/guide/DlgFindPsw
.super android/app/Dialog
.inner class inner com/nd/android/u/cloud/activity/guide/DlgFindPsw$1
.inner class public static abstract interface OnDlgBtnListener inner com/nd/android/u/cloud/activity/guide/DlgFindPsw$OnDlgBtnListener outer com/nd/android/u/cloud/activity/guide/DlgFindPsw

.field protected 'clickListener' Landroid/view/View$OnClickListener;

.field private 'mBtnCancel' Landroid/widget/Button;

.field private 'mBtnListener' Lcom/nd/android/u/cloud/activity/guide/DlgFindPsw$OnDlgBtnListener;

.field private 'mBtnSet' Landroid/widget/Button;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
ldc_w 2131230819
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
new com/nd/android/u/cloud/activity/guide/DlgFindPsw$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/DlgFindPsw$1/<init>(Lcom/nd/android/u/cloud/activity/guide/DlgFindPsw;)V
putfield com/nd/android/u/cloud/activity/guide/DlgFindPsw/clickListener Landroid/view/View$OnClickListener;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/guide/DlgFindPsw;)Lcom/nd/android/u/cloud/activity/guide/DlgFindPsw$OnDlgBtnListener;
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgFindPsw/mBtnListener Lcom/nd/android/u/cloud/activity/guide/DlgFindPsw$OnDlgBtnListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Dialog/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/DlgFindPsw/getWindow()Landroid/view/Window;
ldc_w 17170445
invokevirtual android/view/Window/setBackgroundDrawableResource(I)V
aload 0
ldc_w 2130903288
invokevirtual com/nd/android/u/cloud/activity/guide/DlgFindPsw/setContentView(I)V
aload 0
aload 0
ldc_w 2131624682
invokevirtual com/nd/android/u/cloud/activity/guide/DlgFindPsw/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/activity/guide/DlgFindPsw/mBtnCancel Landroid/widget/Button;
aload 0
aload 0
ldc_w 2131624683
invokevirtual com/nd/android/u/cloud/activity/guide/DlgFindPsw/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/activity/guide/DlgFindPsw/mBtnSet Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgFindPsw/mBtnCancel Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgFindPsw/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgFindPsw/mBtnSet Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgFindPsw/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setOnAfterDismissListener(Lcom/nd/android/u/cloud/activity/guide/DlgFindPsw$OnDlgBtnListener;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/DlgFindPsw/mBtnListener Lcom/nd/android/u/cloud/activity/guide/DlgFindPsw$OnDlgBtnListener;
return
.limit locals 2
.limit stack 2
.end method
