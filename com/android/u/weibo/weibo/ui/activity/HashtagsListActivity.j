.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity/HashtagsListActivity
.super com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity
.implements android/widget/AdapterView$OnItemClickListener
.inner class inner com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$1
.inner class inner com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$2
.inner class inner com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$3
.inner class inner com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$4
.inner class inner com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$5
.inner class private GetHashtagsListTask inner com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$GetHashtagsListTask outer com/android/u/weibo/weibo/ui/activity/HashtagsListActivity

.field private 'footView' Landroid/view/View;

.field private 'mAdapter' Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;

.field private 'mHasMore' Z

.field private 'mHeaderView' Landroid/view/View;

.field private 'mIsLoading' Z

.field private 'mKeyword' Ljava/lang/String;

.field private 'mListView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private 'mReplyOrRetweetReceiver' Landroid/content/BroadcastReceiver;

.field private 'mTempReceiver' Landroid/content/BroadcastReceiver;

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/<init>()V
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mHasMore Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mIsLoading Z
aload 0
new com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$4
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$4/<init>(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mTempReceiver Landroid/content/BroadcastReceiver;
aload 0
new com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$5
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$5/<init>(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mReplyOrRetweetReceiver Landroid/content/BroadcastReceiver;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mIsLoading Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mIsLoading Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mHasMore Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mHasMore Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/footView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mKeyword Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected handleRightButtonClick()V
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/weibo/ui/activity/TweetComposeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "content"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "#"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mKeyword Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "#"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/android/u/weibo/R$layout/hashtags_list I
invokevirtual com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/setContentView(I)V
aload 0
getstatic com/android/u/weibo/R$id/stub_tweet_header I
invokevirtual com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/initHeadComponent(I)V
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/getIntent()Landroid/content/Intent;
ldc "tags_name"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mKeyword Ljava/lang/String;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mKeyword Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/setHeadTitle(Ljava/lang/String;)V
aload 0
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/setRightButtonVisibility(I)V
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getstatic com/android/u/weibo/R$drawable/xy_actionbar_edit_background I
invokevirtual com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/setRightButtonBackground(I)V
L1:
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tweet_list_view I
invokevirtual com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
ldc "layout_inflater"
invokevirtual com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
astore 1
aload 0
aload 1
getstatic com/android/u/weibo/R$layout/hashtags_list_header I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mHeaderView Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mHeaderView Landroid/view/View;
getstatic com/android/u/weibo/R$id/name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "#"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mKeyword Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "#"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mHeaderView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
aload 1
getstatic com/android/u/weibo/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/footView Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/footView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/<init>(Landroid/app/Activity;)V
putfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$1/<init>(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$2
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$2/<init>(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$3
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/HashtagsListActivity$3/<init>(Lcom/android/u/weibo/weibo/ui/activity/HashtagsListActivity;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/showRefreshView()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setRefreshing(Z)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mTempReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "like-event"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
pop
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mReplyOrRetweetReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "refresh_data"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return
L0:
aload 0
getstatic com/android/u/weibo/R$drawable/actionbar_edit_background I
invokevirtual com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/setRightButtonBackground(I)V
goto L1
.limit locals 2
.limit stack 5
.end method

.method protected onDestroy()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onDestroy()V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mTempReceiver Landroid/content/BroadcastReceiver;
invokevirtual com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/HashtagsListActivity/mReplyOrRetweetReceiver Landroid/content/BroadcastReceiver;
invokevirtual android/support/v4/content/LocalBroadcastManager/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
aload 1
invokevirtual android/widget/AdapterView/getAdapter()Landroid/widget/Adapter;
iload 3
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toCommentListActivity(Landroid/content/Context;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
.limit locals 6
.limit stack 3
.end method
