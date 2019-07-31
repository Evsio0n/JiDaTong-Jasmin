.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/GroupListFragment$1
.super android/os/Handler
.enclosing method com/nd/android/u/contact/fragment/GroupListFragment
.inner class inner com/nd/android/u/contact/fragment/GroupListFragment$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/GroupListFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/GroupListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/GroupListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/GroupListFragment;
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
getfield com/nd/android/u/contact/fragment/GroupListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/GroupListFragment;
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupFunDialog Landroid/app/AlertDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/GroupListFragment;
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupFunDialog Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/dismiss()V
L0:
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/GroupListFragment;
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/refreshGroupAdapter()V
return
.limit locals 2
.limit stack 2
.end method
