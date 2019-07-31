.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment
.super com/android/u/weibo/weibo/ui/fragment/PullToRefreshListFragment
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener
.implements android/widget/AdapterView$OnItemClickListener
.signature "Lcom/android/u/weibo/weibo/ui/fragment/PullToRefreshListFragment;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ListView;>;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;Landroid/widget/AdapterView$OnItemClickListener;"
.inner class inner com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$1
.inner class inner com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$2
.inner class private GetAtListTask inner com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask outer com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment
.inner class private GetMoreAtListTask inner com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetMoreAtListTask outer com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment

.field private 'footView' Landroid/view/View;

.field private 'headerView' Landroid/widget/TextView;

.field private 'mAdapter' Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;

.field private 'mFootProgressBar' Landroid/widget/ProgressBar;

.field private 'mIsNoMoreData' Z

.field private 'mPullToRefreshListView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private 'mReSetTweetDataReceiver' Landroid/content/BroadcastReceiver;

.field private 'mReSetTweetPraiseReceiver' Landroid/content/BroadcastReceiver;

.field private 'mUnreadCount' I

.field private 'tvFooterView' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/fragment/PullToRefreshListFragment/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mIsNoMoreData Z
aload 0
new com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$1/<init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)V
putfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mReSetTweetDataReceiver Landroid/content/BroadcastReceiver;
aload 0
new com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$2
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$2/<init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)V
putfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mReSetTweetPraiseReceiver Landroid/content/BroadcastReceiver;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$002(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mIsNoMoreData Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/footView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/headerView Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private revertFootViewState()V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mIsNoMoreData Z
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mFootProgressBar Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/tvFooterView Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/foot_loading I
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/fragment/PullToRefreshListFragment/onCreate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onCreatePullToRefreshListView(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
aload 0
aload 1
aload 2
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/onCreatePullToRefreshListView(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
.limit locals 3
.limit stack 3
.end method

.method protected onCreatePullToRefreshListView(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 1
getstatic com/android/u/weibo/R$layout/list_view_header I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 0
aload 2
getstatic com/android/u/weibo/R$id/no_file I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/headerView Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/headerView Landroid/widget/TextView;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/loading I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/headerView Landroid/widget/TextView;
bipush 17
invokevirtual android/widget/TextView/setGravity(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/headerView Landroid/widget/TextView;
iconst_1
ldc_w 22.0F
invokevirtual android/widget/TextView/setTextSize(IF)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/headerView Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase
dup
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/<init>(Landroid/app/Activity;)V
putfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/setIsShowGlancesNum(Z)V
aload 0
aload 1
getstatic com/android/u/weibo/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/footView Landroid/view/View;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/footView Landroid/view/View;
getstatic com/android/u/weibo/R$id/progressBar_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mFootProgressBar Landroid/widget/ProgressBar;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/footView Landroid/view/View;
getstatic com/android/u/weibo/R$id/text_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/tvFooterView Landroid/widget/TextView;
aload 0
new com/handmark/pulltorefresh/library/PullToRefreshListView
dup
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/handmark/pulltorefresh/library/PullToRefreshListView/<init>(Landroid/content/Context;)V
putfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
ldc_w 17170445
invokevirtual android/widget/ListView/setSelector(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
getstatic com/android/u/weibo/R$drawable/main_tile_background I
invokevirtual android/widget/ListView/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 2
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/footView Landroid/view/View;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/setListAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mReSetTweetDataReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "refresh_data"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mReSetTweetPraiseReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "like-event"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/app/FragmentActivity/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
pop
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mUnreadCount I
ifle L0
new com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask
dup
aload 0
iconst_1
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/<init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;Z)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mUnreadCount I
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
L0:
new com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask
dup
aload 0
iconst_0
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/<init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;Z)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
goto L1
.limit locals 3
.limit stack 5
.end method

.method public onDestroyView()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/fragment/PullToRefreshListFragment/onDestroyView()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mReSetTweetDataReceiver Landroid/content/BroadcastReceiver;
invokevirtual android/support/v4/content/LocalBroadcastManager/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mReSetTweetPraiseReceiver Landroid/content/BroadcastReceiver;
invokevirtual android/support/v4/app/FragmentActivity/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 1
invokevirtual android/widget/AdapterView/getAdapter()Landroid/widget/Adapter;
iload 3
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 1
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toCommentListActivity(Landroid/content/Context;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
.limit locals 6
.limit stack 2
.end method

.method public onLastItemVisible()V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mIsNoMoreData Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase/getLastItem()Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 1
aload 1
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/footView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
new com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetMoreAtListTask
dup
aload 0
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/request_id J
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetMoreAtListTask/<init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;J)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetMoreAtListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
aload 1
invokevirtual android/widget/ListView/getAdapter()Landroid/widget/ListAdapter;
iload 3
invokeinterface android/widget/ListAdapter/getItem(I)Ljava/lang/Object; 1
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 1
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toCommentListActivity(Landroid/content/Context;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
.limit locals 6
.limit stack 2
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/refresh(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public refresh(Z)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/revertFootViewState()V
iload 1
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setRefreshing(Z)V
L1:
return
L0:
new com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask
dup
aload 0
iconst_1
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/<init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment;Z)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment$GetAtListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 4
.end method

.method public setUnreadCount(I)V
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/fragment/MsgTopicInfoAtListFragment/mUnreadCount I
return
.limit locals 2
.limit stack 2
.end method
