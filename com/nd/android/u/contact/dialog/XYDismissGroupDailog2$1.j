.bytecode 50.0
.class synchronized com/nd/android/u/contact/dialog/XYDismissGroupDailog2$1
.super android/os/Handler
.enclosing method com/nd/android/u/contact/dialog/XYDismissGroupDailog2
.inner class inner com/nd/android/u/contact/dialog/XYDismissGroupDailog2$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog2;

.method <init>(Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog2;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2$1/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog2;
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
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2$1/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog2;
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2$1/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog2;
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2$1/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog2;
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
invokevirtual de/greenrobot/event/EventBus/unregister(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2$1/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog2;
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2/mGenKey Ljava/lang/String;
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/removeFeedbackKey(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog2$1/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog2;
invokevirtual com/nd/android/u/contact/dialog/XYDismissGroupDailog2/groupOpMsgFail()V
L0:
return
.limit locals 2
.limit stack 2
.end method
