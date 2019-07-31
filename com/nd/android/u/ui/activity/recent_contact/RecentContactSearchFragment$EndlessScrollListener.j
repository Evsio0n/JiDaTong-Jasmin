.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.inner class private EndlessScrollListener inner com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener outer com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment

.field private 'mPageNum' I

.field private 'mSearchText' Ljava/lang/String;

.field private 'mThreshold' I

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;

.method public <init>(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener/mThreshold I
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener/mPageNum I
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
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener/mThreshold I
isub
if_icmplt L0
aload 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener/mPageNum I
iconst_1
iadd
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener/mPageNum I
new com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask
dup
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener/mSearchText Ljava/lang/String;
iconst_1
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/<init>(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;Ljava/lang/String;Z)V
iconst_1
anewarray java/lang/Integer
dup
iconst_0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener/mPageNum I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
L0:
return
.limit locals 3
.limit stack 5
.end method

.method public setPageNum(I)V
aload 0
iload 1
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener/mPageNum I
return
.limit locals 2
.limit stack 2
.end method

.method public setSearchText(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$EndlessScrollListener/mSearchText Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
