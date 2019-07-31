.bytecode 50.0
.class public synchronized abstract com/nd/android/u/contact/activity/base/GroupOpActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/contact/activity/base/GroupOpActivity$1
.inner class public static Params inner com/nd/android/u/contact/activity/base/GroupOpActivity$Params outer com/nd/android/u/contact/activity/base/GroupOpActivity

.field public static final 'FEEDBACK_WAITTIME' I = 15000


.field protected static final 'MESSAGE_WHAT' I = 1


.field public 'mGenKey' Ljava/lang/String;

.field public 'mGroupOpdialog' Landroid/app/ProgressDialog;

.field public 'mGroupOpmessage' Ljava/lang/String;

.field protected 'mhandler' Landroid/os/Handler;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
ldc ""
putfield com/nd/android/u/contact/activity/base/GroupOpActivity/mGenKey Ljava/lang/String;
aload 0
new com/nd/android/u/contact/activity/base/GroupOpActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity$1/<init>(Lcom/nd/android/u/contact/activity/base/GroupOpActivity;)V
putfield com/nd/android/u/contact/activity/base/GroupOpActivity/mhandler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
new android/app/ProgressDialog
dup
aload 0
invokespecial android/app/ProgressDialog/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/activity/base/GroupOpActivity/mGroupOpdialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/base/GroupOpActivity/mGroupOpdialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/base/GroupOpActivity/mGroupOpmessage Ljava/lang/String;
invokevirtual android/app/ProgressDialog/setMessage(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/base/GroupOpActivity/mGroupOpdialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setIndeterminate(Z)V
aload 0
getfield com/nd/android/u/contact/activity/base/GroupOpActivity/mGroupOpdialog Landroid/app/ProgressDialog;
iconst_0
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 4
.end method

.method protected final dismissDialog()V
aload 0
getfield com/nd/android/u/contact/activity/base/GroupOpActivity/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/base/GroupOpActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/base/GroupOpActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected abstract groupOpMsgFail()V
.end method

.method protected abstract groupOpMsgSuccess()V
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onDestroy()V
aload 0
invokevirtual com/nd/android/u/contact/activity/base/GroupOpActivity/dismissDialog()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method public final onEventMainThread(Lcom/nd/android/u/contact/activity/base/GroupOpActivity$Params;)V
aload 1
ifnonnull L0
L0:
return
.limit locals 2
.limit stack 1
.end method

.method protected onStart()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onStart()V
return
.limit locals 1
.limit stack 1
.end method

.method protected removeMsg()V
aload 0
getfield com/nd/android/u/contact/activity/base/GroupOpActivity/mhandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected abstract setGenKey(Ljava/lang/String;)V
.end method

.method protected abstract setGroupOpMsg(Ljava/lang/String;)V
.end method

.method protected final startGroupOp()V
aload 0
getfield com/nd/android/u/contact/activity/base/GroupOpActivity/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/base/GroupOpActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/base/GroupOpActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
aload 0
getfield com/nd/android/u/contact/activity/base/GroupOpActivity/mhandler Landroid/os/Handler;
iconst_1
ldc2_w 15000L
invokevirtual android/os/Handler/sendEmptyMessageDelayed(IJ)Z
pop
L0:
return
.limit locals 1
.limit stack 4
.end method
