.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/guide/DlgHaveBind
.super android/app/Dialog
.inner class inner com/nd/android/u/cloud/activity/guide/DlgHaveBind$1
.inner class public static abstract interface OnDlgBtnListener inner com/nd/android/u/cloud/activity/guide/DlgHaveBind$OnDlgBtnListener outer com/nd/android/u/cloud/activity/guide/DlgHaveBind

.field protected 'clickListener' Landroid/view/View$OnClickListener;

.field private 'mBtnCancel' Landroid/widget/TextView;

.field private 'mBtnListener' Lcom/nd/android/u/cloud/activity/guide/DlgHaveBind$OnDlgBtnListener;

.field private 'mBtnSet' Landroid/widget/TextView;

.field private 'mStrAccount' Ljava/lang/String;

.method public <init>(Landroid/content/Context;Ljava/lang/String;)V
aload 0
aload 1
ldc_w 2131230819
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
new com/nd/android/u/cloud/activity/guide/DlgHaveBind$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/DlgHaveBind$1/<init>(Lcom/nd/android/u/cloud/activity/guide/DlgHaveBind;)V
putfield com/nd/android/u/cloud/activity/guide/DlgHaveBind/clickListener Landroid/view/View$OnClickListener;
aload 0
aload 2
putfield com/nd/android/u/cloud/activity/guide/DlgHaveBind/mStrAccount Ljava/lang/String;
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/guide/DlgHaveBind;)Lcom/nd/android/u/cloud/activity/guide/DlgHaveBind$OnDlgBtnListener;
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgHaveBind/mBtnListener Lcom/nd/android/u/cloud/activity/guide/DlgHaveBind$OnDlgBtnListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Dialog/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/DlgHaveBind/getWindow()Landroid/view/Window;
ldc_w 17170445
invokevirtual android/view/Window/setBackgroundDrawableResource(I)V
aload 0
ldc_w 2130903289
invokevirtual com/nd/android/u/cloud/activity/guide/DlgHaveBind/setContentView(I)V
aload 0
aload 0
ldc_w 2131624682
invokevirtual com/nd/android/u/cloud/activity/guide/DlgHaveBind/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/guide/DlgHaveBind/mBtnCancel Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624683
invokevirtual com/nd/android/u/cloud/activity/guide/DlgHaveBind/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/guide/DlgHaveBind/mBtnSet Landroid/widget/TextView;
aload 0
ldc_w 2131625173
invokevirtual com/nd/android/u/cloud/activity/guide/DlgHaveBind/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 1
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgHaveBind/mStrAccount Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgHaveBind/mBtnCancel Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgHaveBind/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgHaveBind/mBtnSet Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgHaveBind/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setOnAfterDismissListener(Lcom/nd/android/u/cloud/activity/guide/DlgHaveBind$OnDlgBtnListener;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/DlgHaveBind/mBtnListener Lcom/nd/android/u/cloud/activity/guide/DlgHaveBind$OnDlgBtnListener;
return
.limit locals 2
.limit stack 2
.end method
