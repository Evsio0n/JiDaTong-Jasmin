.bytecode 50.0
.class synchronized android/support/v4/app/Fragment$1
.super java/lang/Object
.implements android/support/v4/app/FragmentContainer
.enclosing method android/support/v4/app/Fragment/instantiateChildFragmentManager()V
.inner class inner android/support/v4/app/Fragment$1

.field final synthetic 'this$0' Landroid/support/v4/app/Fragment;

.method <init>(Landroid/support/v4/app/Fragment;)V
aload 0
aload 1
putfield android/support/v4/app/Fragment$1/this$0 Landroid/support/v4/app/Fragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public findViewById(I)Landroid/view/View;
aload 0
getfield android/support/v4/app/Fragment$1/this$0 Landroid/support/v4/app/Fragment;
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
ifnonnull L0
new java/lang/IllegalStateException
dup
ldc "Fragment does not have a view"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield android/support/v4/app/Fragment$1/this$0 Landroid/support/v4/app/Fragment;
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
iload 1
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
areturn
.limit locals 2
.limit stack 3
.end method
