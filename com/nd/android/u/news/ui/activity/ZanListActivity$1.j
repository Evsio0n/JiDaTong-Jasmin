.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/ZanListActivity$1
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/nd/android/u/news/ui/activity/ZanListActivity/initEvent()V
.inner class inner com/nd/android/u/news/ui/activity/ZanListActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/ZanListActivity;

.method <init>(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/ZanListActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
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
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
invokestatic com/nd/android/u/news/ui/activity/ZanListActivity/access$100(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)Z
ifeq L0
iload 2
ifne L0
aload 1
invokevirtual android/widget/AbsListView/getLastVisiblePosition()I
aload 1
invokevirtual android/widget/AbsListView/getCount()I
iconst_1
isub
if_icmpne L0
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
invokestatic com/nd/android/u/news/ui/activity/ZanListActivity/access$200(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)V
L0:
return
.limit locals 3
.limit stack 3
.end method
