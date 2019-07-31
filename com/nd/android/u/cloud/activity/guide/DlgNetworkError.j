.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/guide/DlgNetworkError
.super android/app/Dialog
.inner class inner com/nd/android/u/cloud/activity/guide/DlgNetworkError$1

.field protected 'clickListener' Landroid/view/View$OnClickListener;

.field private 'mContext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
ldc_w 2131230819
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
new com/nd/android/u/cloud/activity/guide/DlgNetworkError$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/DlgNetworkError$1/<init>(Lcom/nd/android/u/cloud/activity/guide/DlgNetworkError;)V
putfield com/nd/android/u/cloud/activity/guide/DlgNetworkError/clickListener Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/DlgNetworkError/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/guide/DlgNetworkError;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgNetworkError/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Dialog/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/DlgNetworkError/getWindow()Landroid/view/Window;
ldc_w 17170445
invokevirtual android/view/Window/setBackgroundDrawableResource(I)V
aload 0
ldc_w 2130903290
invokevirtual com/nd/android/u/cloud/activity/guide/DlgNetworkError/setContentView(I)V
aload 0
ldc_w 2131624682
invokevirtual com/nd/android/u/cloud/activity/guide/DlgNetworkError/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgNetworkError/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
ldc_w 2131624683
invokevirtual com/nd/android/u/cloud/activity/guide/DlgNetworkError/findViewById(I)Landroid/view/View;
aload 0
getfield com/nd/android/u/cloud/activity/guide/DlgNetworkError/clickListener Landroid/view/View$OnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 2
.end method
