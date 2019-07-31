.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$1
.super java/lang/Object
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener
.enclosing method com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$1

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLastItemVisible()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$000(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$000(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter/getCount()I
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Z
ifeq L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$200(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
iconst_0
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$300(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;Z)V
return
.limit locals 1
.limit stack 2
.end method
