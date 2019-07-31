.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYGroupListActivity$1
.super android/os/Handler
.enclosing method com/nd/android/u/contact/activity/XYGroupListActivity
.inner class inner com/nd/android/u/contact/activity/XYGroupListActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYGroupListActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupListActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
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
tableswitch 0
L0
L1
default : L2
L2:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$200(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/refresh()V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$000(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)V
goto L2
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupListActivity/access$100(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)V
goto L2
.limit locals 2
.limit stack 2
.end method
