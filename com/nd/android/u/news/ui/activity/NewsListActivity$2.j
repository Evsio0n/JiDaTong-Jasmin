.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/NewsListActivity$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/news/ui/activity/NewsListActivity/afterPublishProgress(Ljava/util/List;)V
.inner class inner com/nd/android/u/news/ui/activity/NewsListActivity$2
.inner class inner com/nd/android/u/news/ui/activity/NewsListActivity$2$1

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/NewsListActivity;

.field final synthetic 'val$newsList' Ljava/util/List;

.method <init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Ljava/util/List;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/NewsListActivity$2/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
aload 0
aload 2
putfield com/nd/android/u/news/ui/activity/NewsListActivity$2/val$newsList Ljava/util/List;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/news/ui/activity/NewsListActivity$2$1
dup
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity$2$1/<init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity$2;)V
ldc2_w 1000L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$2/val$newsList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$2/val$newsList Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$2/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$2/val$newsList Ljava/util/List;
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/setDatas(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$2/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 4
.end method
