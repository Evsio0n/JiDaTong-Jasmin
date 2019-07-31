.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment
.super com/android/u/weibo/weibo/ui/fragment/PullToRefreshListFragment
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener
.signature "Lcom/android/u/weibo/weibo/ui/fragment/PullToRefreshListFragment;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ListView;>;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;"
.inner class inner com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$1
.inner class private GetMorePraiseListTask inner com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask outer com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment
.inner class private GetPraiseListTask inner com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask outer com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment

.field private static final 'PARAM_KEY' Ljava/lang/String; = "unreadcount"

.field private 'mAdapter' Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;

.field private 'mFootProgressBar' Landroid/widget/ProgressBar;

.field private 'mFootView' Landroid/view/View;

.field private 'mHeaderView' Landroid/widget/TextView;

.field private 'mIsNoMoreData' Z

.field private 'mMessageReceiver' Landroid/content/BroadcastReceiver;

.field private 'mPullToRefreshListView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private 'tvFooterView' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/fragment/PullToRefreshListFragment/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mIsNoMoreData Z
aload 0
new com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$1/<init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)V
putfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mMessageReceiver Landroid/content/BroadcastReceiver;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$002(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mIsNoMoreData Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mFootView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mHeaderView Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getInstance(I)Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;
new com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment
dup
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/<init>()V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "unreadcount"
iload 0
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
aload 2
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/setArguments(Landroid/os/Bundle;)V
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method private revertFootViewState()V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mIsNoMoreData Z
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mFootProgressBar Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/tvFooterView Landroid/widget/TextView;
ifnonnull L0
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mFootView Landroid/view/View;
getstatic com/android/u/weibo/R$id/text_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/tvFooterView Landroid/widget/TextView;
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/tvFooterView Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/foot_loading I
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 1
.limit stack 3
.end method

.method private startCommentListActivity(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 1
ifnonnull L0
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "from_msg_praiselist"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 2
aload 1
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toCommentListActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mMessageReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "wb_wsg_delete_tweet"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/fragment/PullToRefreshListFragment/onCreate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 5
.end method

.method protected volatile synthetic onCreatePullToRefreshListView(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
aload 0
aload 1
aload 2
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/onCreatePullToRefreshListView(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
.limit locals 3
.limit stack 3
.end method

.method protected onCreatePullToRefreshListView(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
new com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter
dup
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/<init>(Landroid/app/Activity;)V
putfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;
aload 0
aload 1
getstatic com/android/u/weibo/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mFootView Landroid/view/View;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mFootView Landroid/view/View;
getstatic com/android/u/weibo/R$id/progressBar_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mFootProgressBar Landroid/widget/ProgressBar;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mFootView Landroid/view/View;
getstatic com/android/u/weibo/R$id/text_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/tvFooterView Landroid/widget/TextView;
aload 1
getstatic com/android/u/weibo/R$layout/list_view_header I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/android/u/weibo/R$id/no_file I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mHeaderView Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mHeaderView Landroid/widget/TextView;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/loading I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mHeaderView Landroid/widget/TextView;
bipush 17
invokevirtual android/widget/TextView/setGravity(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mHeaderView Landroid/widget/TextView;
iconst_1
ldc_w 22.0F
invokevirtual android/widget/TextView/setTextSize(IF)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mHeaderView Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
new com/handmark/pulltorefresh/library/PullToRefreshListView
dup
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/handmark/pulltorefresh/library/PullToRefreshListView/<init>(Landroid/content/Context;)V
putfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
ldc_w 17170445
invokevirtual android/widget/ListView/setSelector(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
getstatic com/android/u/weibo/R$drawable/main_tile_background I
invokevirtual android/widget/ListView/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 1
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mFootView Landroid/view/View;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/setListAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
iconst_0
istore 3
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/getArguments()Landroid/os/Bundle;
astore 1
aload 1
ifnull L0
aload 1
ldc "unreadcount"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
istore 3
L0:
iload 3
ifle L1
new com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask
dup
aload 0
iconst_1
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/<init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;Z)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
L1:
new com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask
dup
aload 0
iconst_0
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/<init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;Z)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
goto L2
.limit locals 4
.limit stack 4
.end method

.method public onLastItemVisible()V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mIsNoMoreData Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgPraiseListAdapter/getLastItem()Lcom/android/u/weibo/weibo/business/bean/Praise;
astore 1
aload 1
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mFootView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
new com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask
dup
aload 0
aload 1
getfield com/android/u/weibo/weibo/business/bean/Praise/id J
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask/<init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;J)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetMorePraiseListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
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
checkcast com/android/u/weibo/weibo/business/bean/Praise
astore 1
aload 1
ifnull L0
aload 0
aload 1
getfield com/android/u/weibo/weibo/business/bean/Praise/mTopic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/startCommentListActivity(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
L0:
return
.limit locals 6
.limit stack 2
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/refresh(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public refresh(Z)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/revertFootViewState()V
iload 1
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setRefreshing(Z)V
L1:
return
L0:
new com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask
dup
aload 0
iconst_1
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/<init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment;Z)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgPraiseListFragment$GetPraiseListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 4
.end method
