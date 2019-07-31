.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/NewsListActivity$2$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/news/ui/activity/NewsListActivity$2/run()V
.inner class inner com/nd/android/u/news/ui/activity/NewsListActivity$2
.inner class inner com/nd/android/u/news/ui/activity/NewsListActivity$2$1

.field final synthetic 'this$1' Lcom/nd/android/u/news/ui/activity/NewsListActivity$2;

.method <init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity$2;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/NewsListActivity$2$1/this$1 Lcom/nd/android/u/news/ui/activity/NewsListActivity$2;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$2$1/this$1 Lcom/nd/android/u/news/ui/activity/NewsListActivity$2;
getfield com/nd/android/u/news/ui/activity/NewsListActivity$2/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$2$1/this$1 Lcom/nd/android/u/news/ui/activity/NewsListActivity$2;
getfield com/nd/android/u/news/ui/activity/NewsListActivity$2/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setRefreshing(Z)V
L0:
return
.limit locals 1
.limit stack 2
.end method
