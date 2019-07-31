.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspListFragment$4
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IRequstResultObserver
.enclosing method com/nd/android/u/publicNumber/ui/activity/PspListFragment
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspListFragment$4

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onRequstResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/isFinishing()Z
ifeq L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$4/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
aload 2
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$1700(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Ljava/lang/String;)V
return
.limit locals 5
.limit stack 2
.end method
