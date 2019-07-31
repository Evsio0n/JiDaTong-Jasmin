.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dialog/AddFriendGroupDialog
.super android/app/Dialog
.implements android/view/View$OnClickListener
.inner class public MagicTextLengthWatcher inner com/nd/android/u/contact/dialog/AddFriendGroupDialog$MagicTextLengthWatcher outer com/nd/android/u/contact/dialog/AddFriendGroupDialog

.field private 'context' Landroid/content/Context;

.field private 'mEtFriendGroupName' Landroid/widget/EditText;

.field public 'mFriendGroupName' Ljava/lang/String;

.field private 'mTvDialogCancle' Landroid/widget/TextView;

.field private 'mTvDialogOk' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/app/Dialog/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/AddFriendGroupDialog/context Landroid/content/Context;
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
aload 1
putfield com/nd/android/u/contact/dialog/AddFriendGroupDialog/context Landroid/content/Context;
return
.limit locals 3
.limit stack 3
.end method

.method private initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/et_friend_group_name I
invokevirtual com/nd/android/u/contact/dialog/AddFriendGroupDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/contact/dialog/AddFriendGroupDialog/mEtFriendGroupName Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tv_dialog_ok I
invokevirtual com/nd/android/u/contact/dialog/AddFriendGroupDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/AddFriendGroupDialog/mTvDialogOk Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/tv_dialog_cancle I
invokevirtual com/nd/android/u/contact/dialog/AddFriendGroupDialog/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/AddFriendGroupDialog/mTvDialogCancle Landroid/widget/TextView;
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
getfield com/nd/android/u/contact/dialog/AddFriendGroupDialog/mTvDialogOk Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendGroupDialog/mTvDialogCancle Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/tv_dialog_cancle I
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/contact/dialog/AddFriendGroupDialog/dismiss()V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/tv_dialog_ok I
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendGroupDialog/mEtFriendGroupName Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendGroupDialog/context Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendGroupDialog/context Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/friend_group_name_is_null I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
return
L2:
aload 0
invokevirtual com/nd/android/u/contact/dialog/AddFriendGroupDialog/dismiss()V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/AddFriendGroupDialog/mFriendGroupName Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Dialog/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/contact/R$layout/add_friend_group_dialog I
invokevirtual com/nd/android/u/contact/dialog/AddFriendGroupDialog/setContentView(I)V
aload 0
invokespecial com/nd/android/u/contact/dialog/AddFriendGroupDialog/initComponent()V
aload 0
invokespecial com/nd/android/u/contact/dialog/AddFriendGroupDialog/initComponentValue()V
aload 0
invokespecial com/nd/android/u/contact/dialog/AddFriendGroupDialog/initEvent()V
return
.limit locals 2
.limit stack 2
.end method
