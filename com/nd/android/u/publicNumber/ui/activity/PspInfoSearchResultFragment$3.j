.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$3
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$3

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
aload 0
invokespecial java/lang/Object/<init>()V
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
tableswitch 1
L0
default : L1
L1:
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$400(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/product/android/ui/widget/XYSearchBarWidget;
ifnull L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/access$400(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/product/android/ui/widget/XYSearchBarWidget;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/hideInputStatus()V
return
.limit locals 3
.limit stack 1
.end method
