.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/NewsListActivity$3
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/news/ui/activity/NewsListActivity/afterGetNewDatasFail(Ljava/lang/String;)V
.inner class inner com/nd/android/u/news/ui/activity/NewsListActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/NewsListActivity;

.field final synthetic 'val$errorMsg' Ljava/lang/String;

.method <init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/NewsListActivity$3/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
aload 0
aload 2
putfield com/nd/android/u/news/ui/activity/NewsListActivity$3/val$errorMsg Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$3/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$3/val$errorMsg Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$3/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$3/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/getData()Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$3/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/getData()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L1
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$3/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
iconst_1
invokestatic com/nd/android/u/news/ui/activity/NewsListActivity/access$600(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Z)V
L1:
return
.limit locals 1
.limit stack 2
.end method
