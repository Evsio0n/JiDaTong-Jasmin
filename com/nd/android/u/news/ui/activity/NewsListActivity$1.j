.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/NewsListActivity$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/news/ui/activity/NewsListActivity/afterGetNewDatasSuccess(Ljava/util/List;)V
.inner class inner com/nd/android/u/news/ui/activity/NewsListActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/NewsListActivity;

.field final synthetic 'val$newsList' Ljava/util/List;

.method <init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Ljava/util/List;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/NewsListActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
aload 0
aload 2
putfield com/nd/android/u/news/ui/activity/NewsListActivity$1/val$newsList Ljava/util/List;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
iconst_1
istore 1
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getVisibility()I
bipush 8
if_icmpne L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
iconst_0
invokestatic com/nd/android/u/news/ui/activity/NewsListActivity/access$600(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Z)V
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$1/val$newsList Ljava/util/List;
ifnonnull L1
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
iconst_0
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mIsPullRefresh Z
return
L1:
invokestatic java/lang/System/currentTimeMillis()J
lstore 2
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getApplicationContext()Landroid/content/Context;
lload 2
ldc_w 524305
invokestatic android/text/format/DateUtils/formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
astore 4
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/str_common_list_view_last_refrash_time I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 4
aastore
invokevirtual android/content/res/Resources/getString(I[Ljava/lang/Object;)Ljava/lang/String;
astore 4
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_1
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
aload 4
invokeinterface com/handmark/pulltorefresh/library/ILoadingLayout/setRefreshingLabel(Ljava/lang/CharSequence;)V 1
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance()Lcom/product/android/utils/SharedPreferenceHelper;
ldc "last_get_news_time"
lload 2
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveLongKey(Ljava/lang/String;J)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
astore 4
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$1/val$newsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
bipush 21
if_icmpne L2
L3:
aload 4
iload 1
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/setIsFullData(Z)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mIsPullRefresh Z
ifeq L4
new com/nd/android/u/news/ui/activity/NewsListActivity$ShowNewNewsCountTask
dup
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/getFirstItem()Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$1/val$newsList Ljava/util/List;
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity$ShowNewNewsCountTask/<init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;Ljava/util/List;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$ShowNewNewsCountTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
L4:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
iconst_0
putfield com/nd/android/u/news/ui/activity/NewsListActivity/mIsPullRefresh Z
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$1/val$newsList Ljava/util/List;
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/setDatas(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
getfield com/nd/android/u/news/ui/activity/NewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/notifyDataSetChanged()V
return
L2:
iconst_0
istore 1
goto L3
.limit locals 5
.limit stack 6
.end method
