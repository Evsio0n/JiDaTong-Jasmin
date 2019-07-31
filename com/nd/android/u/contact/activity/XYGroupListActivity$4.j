.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYGroupListActivity$4
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/nd/android/u/contact/activity/XYGroupListActivity/initEvent()V
.inner class inner com/nd/android/u/contact/activity/XYGroupListActivity$4

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYGroupListActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYGroupListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupListActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
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
tableswitch 0
L0
L1
L0
default : L0
L0:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupListActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYGroupListActivity;
getfield com/nd/android/u/contact/activity/XYGroupListActivity/mSearchBarWidget Lcom/product/android/ui/widget/XYSearchBarWidget;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/hideInputStatus()V
return
.limit locals 3
.limit stack 1
.end method
