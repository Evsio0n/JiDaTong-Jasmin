.bytecode 50.0
.class synchronized android/support/v4/app/FragmentActivity$1
.super android/os/Handler
.enclosing method android/support/v4/app/FragmentActivity
.inner class inner android/support/v4/app/FragmentActivity$1

.field final synthetic 'this$0' Landroid/support/v4/app/FragmentActivity;

.method <init>(Landroid/support/v4/app/FragmentActivity;)V
aload 0
aload 1
putfield android/support/v4/app/FragmentActivity$1/this$0 Landroid/support/v4/app/FragmentActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 1
L0
L1
default : L2
L2:
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
L3:
return
L0:
aload 0
getfield android/support/v4/app/FragmentActivity$1/this$0 Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mStopped Z
ifeq L3
aload 0
getfield android/support/v4/app/FragmentActivity$1/this$0 Landroid/support/v4/app/FragmentActivity;
iconst_0
invokevirtual android/support/v4/app/FragmentActivity/doReallyStop(Z)V
return
L1:
aload 0
getfield android/support/v4/app/FragmentActivity$1/this$0 Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/onResumeFragments()V
aload 0
getfield android/support/v4/app/FragmentActivity$1/this$0 Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/execPendingActions()Z
pop
return
.limit locals 2
.limit stack 2
.end method
