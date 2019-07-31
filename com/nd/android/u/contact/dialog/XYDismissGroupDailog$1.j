.bytecode 50.0
.class synchronized com/nd/android/u/contact/dialog/XYDismissGroupDailog$1
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver
.enclosing method com/nd/android/u/contact/dialog/XYDismissGroupDailog
.inner class inner com/nd/android/u/contact/dialog/XYDismissGroupDailog$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;

.method <init>(Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$1/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onDataChanged(IJ)V
iload 1
sipush 2004
if_icmpeq L0
iload 1
sipush 2005
if_icmpeq L0
iload 1
sipush 2014
if_icmpne L1
L0:
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$1/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog/mhandler Landroid/os/Handler;
iload 1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
aload 0
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog$1/this$0 Lcom/nd/android/u/contact/dialog/XYDismissGroupDailog;
getfield com/nd/android/u/contact/dialog/XYDismissGroupDailog/mhandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
L1:
return
.limit locals 4
.limit stack 2
.end method
