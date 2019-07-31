.bytecode 50.0
.class synchronized android/support/v4/app/FragmentManagerImpl$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method android/support/v4/app/FragmentManagerImpl
.inner class inner android/support/v4/app/FragmentManagerImpl$1

.field final synthetic 'this$0' Landroid/support/v4/app/FragmentManagerImpl;

.method <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
aload 0
aload 1
putfield android/support/v4/app/FragmentManagerImpl$1/this$0 Landroid/support/v4/app/FragmentManagerImpl;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield android/support/v4/app/FragmentManagerImpl$1/this$0 Landroid/support/v4/app/FragmentManagerImpl;
invokevirtual android/support/v4/app/FragmentManagerImpl/execPendingActions()Z
pop
return
.limit locals 1
.limit stack 1
.end method
