.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/guide/DlgCheckInfo
.super android/app/Dialog
.inner class inner com/nd/android/u/cloud/activity/guide/DlgCheckInfo$1
.inner class public static abstract interface OnDlgBtnListener inner com/nd/android/u/cloud/activity/guide/DlgCheckInfo$OnDlgBtnListener outer com/nd/android/u/cloud/activity/guide/DlgCheckInfo

.field protected 'clickListener' Landroid/view/View$OnClickListener;

.field private 'mBtnCancel' Landroid/widget/TextView;

.field private 'mBtnListener' Lcom/nd/android/u/cloud/activity/guide/DlgCheckInfo$OnDlgBtnListener;

.field private 'mBtnSet' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
ldc_w 2131230819
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
new com/nd/android/u/cloud/activity/guide/DlgCheckInfo$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/DlgCheckInfo$1/<init>(Lcom/nd/android/u/cloud/activity/guide/DlgCheckInfo;)V
putfield com/nd/android/u/cloud/activity/guide/DlgCheckInfo/clickListener Landroid/view/View$OnClickListener;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/guide/DlgCheckInfo;)Lcom/nd/android/u/cloud/activity/guide/DlgCheckInfo$OnDlgBtnListener;
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgCheckInfo/mBtnListener Lcom/nd/android/u/cloud/activity/guide/DlgCheckInfo$OnDlgBtnListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Dialog/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/DlgCheckInfo/getWindow()Landroid/view/Window;
ldc_w 17170445
invokevirtual android/view/Window/setBackgroundDrawableResource(I)V
aload 0
ldc_w 2130903285
invokevirtual com/nd/android/u/cloud/activity/guide/DlgCheckInfo/setContentView(I)V
aload 0
aload 0
ldc_w 2131624682
invokevirtual com/nd/android/u/cloud/activity/guide/DlgCheckInfo/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/guide/DlgCheckInfo/mBtnCancel Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624683
invokevirtual com/nd/android/u/cloud/activity/guide/DlgCheckInfo/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/guide/DlgCheckInfo/mBtnSet Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgCheckInfo/mBtnCancel Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgCheckInfo/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgCheckInfo/mBtnSet Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgCheckInfo/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setOnAfterDismissListener(Lcom/nd/android/u/cloud/activity/guide/DlgCheckInfo$OnDlgBtnListener;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/DlgCheckInfo/mBtnListener Lcom/nd/android/u/cloud/activity/guide/DlgCheckInfo$OnDlgBtnListener;
return
.limit locals 2
.limit stack 2
.end method
