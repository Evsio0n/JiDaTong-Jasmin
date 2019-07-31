.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog
.super android/app/Dialog
.implements android/view/View$OnClickListener

.field private 'context' Landroid/content/Context;

.field private 'eTRejectReason' Landroid/widget/EditText;

.field public 'isCancel' Z

.field private 'mTvDialogCancle' Landroid/widget/TextView;

.field private 'mTvDialogOk' Landroid/widget/TextView;

.field public 'reason' Ljava/lang/String;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/app/Dialog/<init>(Landroid/content/Context;)V
aload 0
iconst_1
putfield com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/isCancel Z
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/context Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;I)V
aload 0
aload 1
iload 2
invokespecial android/app/Dialog/<init>(Landroid/content/Context;I)V
aload 0
iconst_1
putfield com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/isCancel Z
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/context Landroid/content/Context;
return
.limit locals 3
.limit stack 3
.end method

.method private initComponent()V
aload 0
aload 0
ldc_w 2131626501
invokevirtual com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/eTRejectReason Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624497
invokevirtual com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/mTvDialogOk Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624496
invokevirtual com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/mTvDialogCancle Landroid/widget/TextView;
return
.limit locals 1
.limit stack 3
.end method

.method private initComponentValue()V
return
.limit locals 1
.limit stack 0
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/mTvDialogOk Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/mTvDialogCancle Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131624496
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/dismiss()V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131624497
if_icmpne L1
aload 0
iconst_0
putfield com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/isCancel Z
aload 0
aload 0
getfield com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/eTRejectReason Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
putfield com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/reason Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/dismiss()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Dialog/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903652
invokevirtual com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/setContentView(I)V
aload 0
invokespecial com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/initComponent()V
aload 0
invokespecial com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/initComponentValue()V
aload 0
invokespecial com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/initEvent()V
return
.limit locals 2
.limit stack 2
.end method
