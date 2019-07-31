.bytecode 50.0
.class public synchronized com/nd/android/u/news/ui/activity/TopicNewsListActivity
.super com/nd/android/u/news/ui/activity/NewsListActivity
.inner class static synthetic inner com/nd/android/u/news/ui/activity/TopicNewsListActivity$1
.inner class private GetMoreTopicNewsInfoListTask inner com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask outer com/nd/android/u/news/ui/activity/TopicNewsListActivity
.inner class private GetTopicNewsListTask inner com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask outer com/nd/android/u/news/ui/activity/TopicNewsListActivity

.field private 'ivTopicNewsImage' Landroid/widget/ImageView;

.field private 'mGetMoreTopicNewsListTask' Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask;

.field private 'mGetTopicNewsListTask' Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask;

.field private 'mHeaderView' Landroid/view/View;

.field private 'mTid' J

.field private 'tvTopicNewsSummary' Landroid/widget/TextView;

.field private 'tvTopicNewsTitle' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;)J
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mTid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/TopicNewsListActivity/initTopicNewsInfo(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
return
.limit locals 2
.limit stack 2
.end method

.method private initTopicNewsInfo(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;)V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getCoverImg()Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/ivTopicNewsImage Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getCoverImg()Lcom/nd/android/forumsdk/business/bean/structure/FileInfoBean;
iconst_0
invokevirtual com/nd/android/forumsdk/business/bean/structure/FileInfoBean/getUrl(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/ivTopicNewsImage Landroid/widget/ImageView;
aload 0
invokestatic com/nd/android/u/news/NewsGlobalSetting/getNewsCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
L1:
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/tvTopicNewsTitle Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/tvTopicNewsTitle Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getTitle()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
aload 2
aload 0
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/topic_news_summary I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
ldc " "
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/NewsInfoBean/getSummary()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
new android/text/SpannableString
dup
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokespecial android/text/SpannableString/<init>(Ljava/lang/CharSequence;)V
astore 1
aload 0
aload 1
invokevirtual android/text/SpannableString/toString()Ljava/lang/String;
aload 1
invokestatic com/nd/android/u/news/NewsUtil/resolveTopicNewsSummary(Landroid/content/Context;Ljava/lang/String;Landroid/text/SpannableString;)Landroid/text/SpannableString;
astore 1
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/tvTopicNewsSummary Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/tvTopicNewsSummary Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/ivTopicNewsImage Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L1
.limit locals 3
.limit stack 4
.end method

.method protected getMoreNewsList()V
aload 0
new com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask/<init>(Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$1;)V
putfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mGetMoreTopicNewsListTask Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask;
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mGetMoreTopicNewsListTask Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method protected getNewNewsList(Z)V
aload 0
new com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask/<init>(Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity;Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$1;)V
putfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mGetTopicNewsListTask Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask;
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mGetTopicNewsListTask Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method protected initAdapter()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity/initAdapter()V
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
iconst_0
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/setIsShowTopic(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initEvent()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity/initEvent()V
return
.limit locals 1
.limit stack 1
.end method

.method protected initListView()V
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity/initListView()V
aload 0
aload 0
ldc "layout_inflater"
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/android/u/news/R$layout/topic_news_list_head I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mHeaderView Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mHeaderView Landroid/view/View;
getstatic com/nd/android/u/news/R$id/tv_topic_news_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/tvTopicNewsTitle Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mHeaderView Landroid/view/View;
getstatic com/nd/android/u/news/R$id/tv_topic_info_summary I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/tvTopicNewsSummary Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mHeaderView Landroid/view/View;
getstatic com/nd/android/u/news/R$id/iv_topic_news_image I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/ivTopicNewsImage Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mHeaderView Landroid/view/View;
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setPullToRefreshEnabled(Z)V
return
.limit locals 1
.limit stack 4
.end method

.method protected initTitleBarData()V
aload 0
getstatic com/nd/android/u/news/R$string/topic_news I
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity/setActivityTitle(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mIbLeft Landroid/widget/ImageButton;
iconst_0
invokevirtual android/widget/ImageButton/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mIbRight Landroid/widget/ImageButton;
bipush 8
invokevirtual android/widget/ImageButton/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected isGettingMoreData()Z
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mGetMoreTopicNewsListTask Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mGetMoreTopicNewsListTask Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask;
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected isRefreshing()Z
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mGetTopicNewsListTask Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mGetTopicNewsListTask Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask;
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected onClickNewsItem()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
aload 0
ldc com/nd/android/u/news/ui/activity/TopicNewsDetailActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 1
ldc "news_index_in_list"
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mCurrentIndex I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
ldc "news_list_maxtime"
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mMinTs J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 1
ldc "news_list"
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mAdapter Lcom/nd/android/u/news/ui/adapter/NewsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsListAdapter/getData()Ljava/util/List;
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc "topic_news_id"
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mTid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity/getIntent()Landroid/content/Intent;
ldc "topic_news_id"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mTid J
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity/onCreate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 5
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mGetTopicNewsListTask Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mGetTopicNewsListTask Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask;
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mGetTopicNewsListTask Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask;
iconst_1
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetTopicNewsListTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mGetMoreTopicNewsListTask Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask;
ifnull L1
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mGetMoreTopicNewsListTask Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask;
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/news/ui/activity/TopicNewsListActivity/mGetMoreTopicNewsListTask Lcom/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask;
iconst_1
invokevirtual com/nd/android/u/news/ui/activity/TopicNewsListActivity$GetMoreTopicNewsInfoListTask/cancel(Z)Z
pop
L1:
aload 0
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method
