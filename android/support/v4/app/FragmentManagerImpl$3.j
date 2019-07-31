.bytecode 50.0
.class synchronized android/support/v4/app/FragmentManagerImpl$3
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method android/support/v4/app/FragmentManagerImpl/popBackStack(Ljava/lang/String;I)V
.inner class inner android/support/v4/app/FragmentManagerImpl$3

.field final synthetic 'this$0' Landroid/support/v4/app/FragmentManagerImpl;

.field final synthetic 'val$flags' I

.field final synthetic 'val$name' Ljava/lang/String;

.method <init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;I)V
aload 0
aload 1
putfield android/support/v4/app/FragmentManagerImpl$3/this$0 Landroid/support/v4/app/FragmentManagerImpl;
aload 0
aload 2
putfield android/support/v4/app/FragmentManagerImpl$3/val$name Ljava/lang/String;
aload 0
iload 3
putfield android/support/v4/app/FragmentManagerImpl$3/val$flags I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public run()V
aload 0
getfield android/support/v4/app/FragmentManagerImpl$3/this$0 Landroid/support/v4/app/FragmentManagerImpl;
aload 0
getfield android/support/v4/app/FragmentManagerImpl$3/this$0 Landroid/support/v4/app/FragmentManagerImpl;
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mHandler Landroid/os/Handler;
aload 0
getfield android/support/v4/app/FragmentManagerImpl$3/val$name Ljava/lang/String;
iconst_m1
aload 0
getfield android/support/v4/app/FragmentManagerImpl$3/val$flags I
invokevirtual android/support/v4/app/FragmentManagerImpl/popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
pop
return
.limit locals 1
.limit stack 5
.end method
