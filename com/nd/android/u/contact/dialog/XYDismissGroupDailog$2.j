.bytecode 50.0
.class synchronized com/nd/android/u/contact/dialog/XYDismissGroupDailog$2
.super android/os/Handler
.enclosing method com/nd/android/u/contact/dialog/XYDismissGroupDailog
.inner class inner com/nd/android/u/contact/dialog/XYDismissGroupDailog$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;

.method <init>(Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
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
aload 1
getfield android/os/Message/what I
sipush 2004
if_icmpeq L0
aload 1
getfield android/os/Message/what I
sipush 2005
if_icmpne L1
L0:
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L2
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L2:
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog/mhandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
invokestatic com/nd/android/u/contact/dialog/XYDismissGroupDailog/access$000(Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L3
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
invokestatic com/nd/android/u/contact/dialog/XYDismissGroupDailog/access$000(Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
invokestatic com/nd/android/u/contact/dialog/XYDismissGroupDailog/access$100(Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
L3:
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
invokevirtual com/nd/android/u/contact/dialog/XYDismissGroupDailog/groupOpMsgSuccess()V
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
invokestatic com/nd/android/u/contact/dialog/XYDismissGroupDailog/access$200(Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;)V
return
L1:
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L4
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L4
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L4:
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
invokestatic com/nd/android/u/contact/dialog/XYDismissGroupDailog/access$000(Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
invokestatic com/nd/android/u/contact/dialog/XYDismissGroupDailog/access$100(Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
invokevirtual com/nd/android/u/contact/dialog/XYDismissGroupDailog/groupOpMsgFail()V
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$2/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
invokestatic com/nd/android/u/contact/dialog/XYDismissGroupDailog/access$200(Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;)V
return
.limit locals 2
.limit stack 2
.end method
