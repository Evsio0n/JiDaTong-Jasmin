.bytecode 50.0
.class synchronized android/support/v4/app/ListFragment$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method android/support/v4/app/ListFragment
.inner class inner android/support/v4/app/ListFragment$1

.field final synthetic 'this$0' Landroid/support/v4/app/ListFragment;

.method <init>(Landroid/support/v4/app/ListFragment;)V
aload 0
aload 1
putfield android/support/v4/app/ListFragment$1/this$0 Landroid/support/v4/app/ListFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield android/support/v4/app/ListFragment$1/this$0 Landroid/support/v4/app/ListFragment;
getfield android/support/v4/app/ListFragment/mList Landroid/widget/ListView;
aload 0
getfield android/support/v4/app/ListFragment$1/this$0 Landroid/support/v4/app/ListFragment;
getfield android/support/v4/app/ListFragment/mList Landroid/widget/ListView;
invokevirtual android/widget/ListView/focusableViewAvailable(Landroid/view/View;)V
return
.limit locals 1
.limit stack 2
.end method
