.bytecode 50.0
.class synchronized android/support/v4/app/FragmentManagerImpl$4
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method android/support/v4/app/FragmentManagerImpl/popBackStack(II)V
.inner class inner android/support/v4/app/FragmentManagerImpl$4

.field final synthetic 'this$0' Landroid/support/v4/app/FragmentManagerImpl;

.field final synthetic 'val$flags' I

.field final synthetic 'val$id' I

.method <init>(Landroid/support/v4/app/FragmentManagerImpl;II)V
aload 0
aload 1
putfield android/support/v4/app/FragmentManagerImpl$4/this$0 Landroid/support/v4/app/FragmentManagerImpl;
aload 0
iload 2
putfield android/support/v4/app/FragmentManagerImpl$4/val$id I
aload 0
iload 3
putfield android/support/v4/app/FragmentManagerImpl$4/val$flags I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public run()V
aload 0
getfield android/support/v4/app/FragmentManagerImpl$4/this$0 Landroid/support/v4/app/FragmentManagerImpl;
aload 0
getfield android/support/v4/app/FragmentManagerImpl$4/this$0 Landroid/support/v4/app/FragmentManagerImpl;
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mHandler Landroid/os/Handler;
aconst_null
aload 0
getfield android/support/v4/app/FragmentManagerImpl$4/val$id I
aload 0
getfield android/support/v4/app/FragmentManagerImpl$4/val$flags I
invokevirtual android/support/v4/app/FragmentManagerImpl/popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
pop
return
.limit locals 1
.limit stack 5
.end method
