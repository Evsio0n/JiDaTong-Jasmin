.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$EndlessScrollListener
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.inner class private EndlessScrollListener inner com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$EndlessScrollListener outer com/nd/android/u/publicNumber/ui/activity/PspSearchFragment

.field private 'mThreshold' I

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;

.method public <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$EndlessScrollListener/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$EndlessScrollListener/mThreshold I
return
.limit locals 2
.limit stack 2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
iload 2
ifne L0
aload 1
invokevirtual android/widget/AbsListView/getLastVisiblePosition()I
aload 1
invokevirtual android/widget/AbsListView/getCount()I
iconst_1
isub
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$EndlessScrollListener/mThreshold I
isub
if_icmplt L0
new com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$EndlessScrollListener/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$EndlessScrollListener/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/access$600(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)Ljava/lang/String;
iconst_1
invokespecial com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;Ljava/lang/String;Z)V
iconst_0
anewarray java/lang/Integer
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
L0:
return
.limit locals 3
.limit stack 5
.end method
