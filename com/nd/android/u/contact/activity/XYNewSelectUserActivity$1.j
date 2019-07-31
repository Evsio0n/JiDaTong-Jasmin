.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYNewSelectUserActivity$1
.super android/os/Handler
.enclosing method com/nd/android/u/contact/activity/XYNewSelectUserActivity
.inner class inner com/nd/android/u/contact/activity/XYNewSelectUserActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYNewSelectUserActivity/groupOpMsgSuccess()V
return
.limit locals 2
.limit stack 2
.end method
