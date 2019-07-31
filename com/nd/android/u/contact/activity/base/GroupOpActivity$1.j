.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/base/GroupOpActivity$1
.super android/os/Handler
.enclosing method com/nd/android/u/contact/activity/base/GroupOpActivity
.inner class inner com/nd/android/u/contact/activity/base/GroupOpActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/base/GroupOpActivity;

.method <init>(Lcom/nd/android/u/contact/activity/base/GroupOpActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/base/GroupOpActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/GroupOpActivity;
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
getfield com/nd/android/u/contact/activity/base/GroupOpActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/GroupOpActivity;
getfield com/nd/android/u/contact/activity/base/GroupOpActivity/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/base/GroupOpActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/GroupOpActivity;
getfield com/nd/android/u/contact/activity/base/GroupOpActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/base/GroupOpActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/GroupOpActivity;
getfield com/nd/android/u/contact/activity/base/GroupOpActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
aload 0
getfield com/nd/android/u/contact/activity/base/GroupOpActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/GroupOpActivity;
getfield com/nd/android/u/contact/activity/base/GroupOpActivity/mGenKey Ljava/lang/String;
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/removeFeedbackKey(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/base/GroupOpActivity$1/this$0 Lcom/nd/android/u/contact/activity/base/GroupOpActivity;
invokevirtual com/nd/android/u/contact/activity/base/GroupOpActivity/groupOpMsgFail()V
L0:
return
.limit locals 2
.limit stack 2
.end method
