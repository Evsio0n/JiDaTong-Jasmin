.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity
.super android/support/v4/app/FragmentActivity
.implements android/widget/AdapterView$OnItemClickListener
.implements android/view/View$OnClickListener
.implements com/product/android/business/switchUser/TabUIRefresh
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener
.signature "Landroid/support/v4/app/FragmentActivity;Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View$OnClickListener;Lcom/product/android/business/switchUser/TabUIRefresh;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ListView;>;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;"
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$1
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$4
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$5
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$6
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$7
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$8
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$9
.inner class public MyOnCycleItemClickListener inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener outer com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity
.inner class private ServerCallback inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback outer com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity
.inner class ShowNewTweetCountTask inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ShowNewTweetCountTask outer com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity

.field protected 'friendFootView' Landroid/view/View;

.field protected 'friendListView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field protected 'mAdapter' Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;

.field private 'mAddLocalTweetReceiver' Landroid/content/BroadcastReceiver;

.field protected 'mAvatar' Landroid/widget/ImageView;

.field protected 'mCallback' Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback;

.field protected 'mCurrentType' I

.field protected 'mFriendTweetListCache' Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;

.field protected 'mHasMoreMyTweet' Z

.field protected 'mHasMorePublicTweet' Z

.field protected 'mHeaderView' Landroid/view/View;

.field protected 'mIsInitData' Z

.field protected 'mIsLoadingNewMine' Z

.field protected 'mIsLoadingNewPublic' Z

.field protected 'mIsPullToRefresh' Z

.field protected 'mListSelection' Landroid/widget/Button;

.field protected 'mLocalTweetListCache' Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;

.field private 'mMessageReceiver' Landroid/content/BroadcastReceiver;

.field protected 'mNewTweetToast' Landroid/widget/Toast;

.field protected 'mOapUser' Lcom/product/android/commonInterface/contact/OapUser;

.field protected 'mPublicTweetListCache' Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;

.field protected 'mReceiveNum' I

.field private 'mRefreshLocalTweet' Landroid/content/BroadcastReceiver;

.field private 'mReplyOrRetweetReceiver' Landroid/content/BroadcastReceiver;

.field protected 'mSelectionPopWindow' Lcom/android/u/weibo/weibo/ui/widget/CycleSelectionView;

.field protected 'mUnreadMsgInfo' Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;

.field private 'mUnreadMsgReceiver' Landroid/content/BroadcastReceiver;

.field protected 'publicFootView' Landroid/view/View;

.field protected 'publicListView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field protected 'scrollDoubleLayout' Lcom/product/android/ui/widget/ScrollDoubleLayout;

.field protected 'tvUnreadCount' Landroid/widget/TextView;

.field protected 'weibo_list_header_layout_id' I

.field protected 'weibo_list_layout_id' I

.method public <init>()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/<init>()V
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCurrentType I
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsPullToRefresh Z
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mHasMoreMyTweet Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsLoadingNewMine Z
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mHasMorePublicTweet Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsLoadingNewPublic Z
aload 0
aconst_null
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mNewTweetToast Landroid/widget/Toast;
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsInitData Z
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$5
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$5/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mMessageReceiver Landroid/content/BroadcastReceiver;
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$6
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$6/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mReplyOrRetweetReceiver Landroid/content/BroadcastReceiver;
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$7
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$7/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAddLocalTweetReceiver Landroid/content/BroadcastReceiver;
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$8
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$8/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mRefreshLocalTweet Landroid/content/BroadcastReceiver;
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$9
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$9/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mUnreadMsgReceiver Landroid/content/BroadcastReceiver;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 0
aload 1
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/afterGetNewTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 0
aload 1
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/afterGetMoreTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 0
aload 1
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/afterGetNewPublicTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$400(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 0
aload 1
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/afterGetMorePublicTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$500(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/startRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)I
aload 0
aload 1
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/countNewTweet(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$700(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;I)V
aload 0
iload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/showNewTweetCountToast(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private afterGetMorePublicTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 1
iconst_1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertTopicList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Z)V
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$4
dup
aload 0
aload 2
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$4/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/controller/NdWeiboException;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 3
.limit stack 6
.end method

.method private afterGetMoreTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 1
iconst_1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertTopicList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Z)V
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2
dup
aload 0
aload 2
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/controller/NdWeiboException;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 3
.limit stack 6
.end method

.method private afterGetNewPublicTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 1
iconst_1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertTopicList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Z)V
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3
dup
aload 0
aload 2
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/controller/NdWeiboException;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 3
.limit stack 6
.end method

.method private afterGetNewTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
aload 1
iconst_1
invokestatic com/android/u/weibo/weibo/utils/ConvertTweetListUtils/convertTopicList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Z)V
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$1
dup
aload 0
aload 2
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$1/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/controller/NdWeiboException;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/runOnUiThread(Ljava/lang/Runnable;)V
return
.limit locals 3
.limit stack 6
.end method

.method private countNewTweet(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)I
iconst_0
istore 3
iconst_0
istore 6
iload 3
istore 5
aload 2
ifnull L0
iload 3
istore 5
aload 2
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/isEmpty()Z
ifne L0
lconst_0
lstore 9
iconst_0
istore 3
L1:
lload 9
lstore 7
iload 3
aload 2
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
if_icmpge L2
aload 2
iload 3
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 11
aload 11
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/isLocalTopic(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Z
ifne L3
aload 11
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
lstore 7
L2:
iconst_0
istore 4
iload 6
istore 3
L4:
iload 3
istore 5
iload 4
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
if_icmpge L0
iload 3
istore 5
lload 7
aload 1
iload 4
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
lcmp
ifge L0
iload 3
iconst_1
iadd
istore 3
iload 4
iconst_1
iadd
istore 4
goto L4
L3:
iload 3
iconst_1
iadd
istore 3
goto L1
L0:
iload 5
ireturn
.limit locals 12
.limit stack 4
.end method

.method private initData()V
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$1;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCallback Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mMessageReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "like-event"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
pop
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mReplyOrRetweetReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "refresh_data"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAddLocalTweetReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "add-local-tweet"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mRefreshLocalTweet Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "refresh-local-tweet"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mUnreadMsgReceiver Landroid/content/BroadcastReceiver;
new android/content/IntentFilter
dup
ldc "wb_unread_msg"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
aload 0
new com/android/u/weibo/weibo/ui/adapter/TweetListAdapter
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/<init>(Landroid/app/Activity;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/startRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)V
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsInitData Z
return
.limit locals 1
.limit stack 5
.end method

.method private initEvent()V
aload 0
getstatic com/android/u/weibo/R$id/compose I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/android/u/weibo/R$id/message I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mListSelection Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/nostra13/universalimageloader/core/assist/PauseOnScrollListener
dup
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
iconst_0
iconst_1
aconst_null
invokespecial com/nostra13/universalimageloader/core/assist/PauseOnScrollListener/<init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZLandroid/widget/AbsListView$OnScrollListener;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/nostra13/universalimageloader/core/assist/PauseOnScrollListener
dup
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
iconst_0
iconst_1
aconst_null
invokespecial com/nostra13/universalimageloader/core/assist/PauseOnScrollListener/<init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZLandroid/widget/AbsListView$OnScrollListener;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
return
.limit locals 1
.limit stack 7
.end method

.method private loadTweetList(Z)V
aload 0
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
astore 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCurrentType I
iconst_1
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsLoadingNewPublic Z
ifeq L1
L2:
return
L1:
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsLoadingNewPublic Z
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mHasMorePublicTweet Z
aload 2
iload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCallback Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/refreshPublicTimeline(ZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsLoadingNewMine Z
ifne L2
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsLoadingNewMine Z
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mHasMoreMyTweet Z
aload 2
iload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCallback Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/refreshFriendsTimeline(ZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 3
.limit stack 3
.end method

.method private showNewTweetCountToast(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mNewTweetToast Landroid/widget/Toast;
ifnonnull L0
aload 0
new android/widget/Toast
dup
aload 0
invokespecial android/widget/Toast/<init>(Landroid/content/Context;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mNewTweetToast Landroid/widget/Toast;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mNewTweetToast Landroid/widget/Toast;
bipush 55
iconst_0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$dimen/actionbar_compat_height I
invokevirtual android/content/res/Resources/getDimension(I)F
f2i
invokevirtual android/widget/Toast/setGravity(III)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mNewTweetToast Landroid/widget/Toast;
iconst_1
invokevirtual android/widget/Toast/setDuration(I)V
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 2
aload 0
ldc "window"
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 2
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
L0:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/getLayoutInflater()Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/get_new_tweet_toast I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 2
getstatic com/android/u/weibo/R$id/new_tweet_count I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/new_tweet_count I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mNewTweetToast Landroid/widget/Toast;
aload 2
invokevirtual android/widget/Toast/setView(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mNewTweetToast Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 3
.limit stack 6
.end method

.method private startRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)V
aload 1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/showRefreshView()V
aload 1
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setRefreshing(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public clearOldAccountUI()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mFriendTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mFriendTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/clear()V
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mPublicTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mPublicTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/clear()V
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mLocalTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mLocalTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/clear()V
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
ifnull L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/getData()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 1
aload 1
ifnull L4
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/clear()V
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/notifyDataSetChanged()V
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/tvUnreadCount Landroid/widget/TextView;
ifnull L5
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/tvUnreadCount Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L5:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/scrollDoubleLayout Lcom/product/android/ui/widget/ScrollDoubleLayout;
bipush 8
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
bipush 8
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mListSelection Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/common_weibo I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCurrentType I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mSelectionPopWindow Lcom/android/u/weibo/weibo/ui/widget/CycleSelectionView;
ifnull L6
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mSelectionPopWindow Lcom/android/u/weibo/weibo/ui/widget/CycleSelectionView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCurrentType I
invokevirtual com/android/u/weibo/weibo/ui/widget/CycleSelectionView/setCurrentType(I)V
L6:
return
.limit locals 2
.limit stack 3
.end method

.method public getTabIdentifier()Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
getstatic com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/TAB_SNS Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected initComponent()V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/weibo_list_layout_id I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/setContentView(I)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/new_message_icon I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/tvUnreadCount Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/list_type_selection I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mListSelection Landroid/widget/Button;
aload 0
new com/android/u/weibo/weibo/ui/widget/CycleSelectionView
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mListSelection Landroid/widget/Button;
invokespecial com/android/u/weibo/weibo/ui/widget/CycleSelectionView/<init>(Landroid/view/View;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mSelectionPopWindow Lcom/android/u/weibo/weibo/ui/widget/CycleSelectionView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mSelectionPopWindow Lcom/android/u/weibo/weibo/ui/widget/CycleSelectionView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCurrentType I
invokevirtual com/android/u/weibo/weibo/ui/widget/CycleSelectionView/setCurrentType(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCurrentType I
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mListSelection Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/my_follow I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
aload 0
getstatic com/android/u/weibo/R$id/public_tweet_list_view I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/friend_tweet_list_view I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
bipush 8
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
aload 0
ldc "layout_inflater"
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
astore 1
aload 0
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/weibo_list_header_layout_id I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mHeaderView Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mHeaderView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mHeaderView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
aload 1
getstatic com/android/u/weibo/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicFootView Landroid/view/View;
aload 0
aload 1
getstatic com/android/u/weibo/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendFootView Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicFootView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendFootView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/scroll_lot_users I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/ScrollDoubleLayout
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/scrollDoubleLayout Lcom/product/android/ui/widget/ScrollDoubleLayout;
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mListSelection Landroid/widget/Button;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/common_weibo I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
goto L1
.limit locals 2
.limit stack 4
.end method

.method protected initData(Z)V
aload 0
iload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/loadTweetList(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method protected initUnreadCountView(Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)V
iconst_0
istore 2
aload 1
ifnull L0
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_at I
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt_at I
iadd
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt I
iadd
aload 1
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_praise I
iadd
istore 2
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/tvUnreadCount Landroid/widget/TextView;
ifnonnull L1
aload 0
aload 0
getstatic com/android/u/weibo/R$id/new_message_icon I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/tvUnreadCount Landroid/widget/TextView;
L1:
iload 2
ifle L2
iload 2
bipush 99
if_icmple L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/tvUnreadCount Landroid/widget/TextView;
ldc "99+"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/tvUnreadCount Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/tvUnreadCount Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L4
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/tvUnreadCount Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 3
.limit stack 3
.end method

.method public loadDataToMemory()V
return
.limit locals 1
.limit stack 0
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/message I
if_icmpne L0
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/weibo/ui/activity/TweetMessageActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
ifnull L1
aload 1
ldc "unread"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
L1:
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/startActivity(Landroid/content/Intent;)V
L2:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/compose I
if_icmpne L3
aload 0
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/weibo/ui/activity/TweetComposeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/startActivity(Landroid/content/Intent;)V
return
L3:
iload 2
getstatic com/android/u/weibo/R$id/list_type_selection I
if_icmpne L4
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mSelectionPopWindow Lcom/android/u/weibo/weibo/ui/widget/CycleSelectionView;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mSelectionPopWindow Lcom/android/u/weibo/weibo/ui/widget/CycleSelectionView;
invokevirtual com/android/u/weibo/weibo/ui/widget/CycleSelectionView/showLikePopDownSelection()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mSelectionPopWindow Lcom/android/u/weibo/weibo/ui/widget/CycleSelectionView;
new com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$MyOnCycleItemClickListener/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;)V
invokevirtual com/android/u/weibo/weibo/ui/widget/CycleSelectionView/setOnCycleItemClickListener(Lcom/android/u/weibo/weibo/ui/widget/CycleSelectionView$OnCycleItemClickListener;)V
return
L4:
iload 2
getstatic com/android/u/weibo/R$id/scroll_lot_users I
if_icmpne L2
aload 0
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/doRafflesListPublic(Landroid/app/Activity;)V
return
.limit locals 3
.limit stack 5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "InlinedApi" 
.end annotation
aload 0
aload 1
invokespecial android/support/v4/app/FragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/initComponent()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/initEvent()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/initData()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onDestroy()V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mMessageReceiver Landroid/content/BroadcastReceiver;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAddLocalTweetReceiver Landroid/content/BroadcastReceiver;
invokevirtual android/support/v4/content/LocalBroadcastManager/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mRefreshLocalTweet Landroid/content/BroadcastReceiver;
invokevirtual android/support/v4/content/LocalBroadcastManager/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mUnreadMsgReceiver Landroid/content/BroadcastReceiver;
invokevirtual android/support/v4/content/LocalBroadcastManager/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
iconst_0
istore 6
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCurrentType I
iconst_1
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getHeaderViewsCount()I
istore 6
L1:
iload 3
iload 6
isub
istore 6
iload 6
iflt L2
iload 6
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/getCount()I
if_icmplt L3
L2:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCurrentType I
ifne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getHeaderViewsCount()I
istore 6
goto L1
L3:
aload 1
invokevirtual android/widget/AdapterView/getAdapter()Landroid/widget/Adapter;
iload 3
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 1
aload 1
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
iload 6
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/getItemViewType(I)I
iconst_4
if_icmpeq L2
aload 1
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/isLocalTopic(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Z
ifne L2
aload 0
aload 1
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toCommentListActivity(Landroid/content/Context;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
.limit locals 7
.limit stack 2
.end method

.method public onLastItemVisible()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
ifnonnull L0
L1:
return
L0:
aload 0
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
astore 3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/getLastItem()Ljava/lang/Object;
astore 4
aconst_null
astore 2
aload 2
astore 1
aload 4
ifnull L2
aload 2
astore 1
aload 4
instanceof com/android/u/weibo/weibo/business/bean/TopicInfo
ifeq L2
aload 4
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 1
L2:
aload 1
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCurrentType I
ifne L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mHasMoreMyTweet Z
ifeq L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsLoadingNewMine Z
ifne L1
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mHasMoreMyTweet Z
aload 3
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/getData()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 1
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/getLastNdTweetId(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCallback Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/getOlderFriendsTimeline(JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendFootView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mHasMorePublicTweet Z
ifeq L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsLoadingNewPublic Z
ifne L1
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mHasMorePublicTweet Z
aload 3
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCallback Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/getOlderPublicTimeline(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicFootView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 5
.limit stack 6
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentActivity/onNewIntent(Landroid/content/Intent;)V
aload 1
ldc "refresh"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCurrentType I
iconst_1
if_icmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setRefreshing(Z)V
L0:
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_1
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setRefreshing(Z)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onPause()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onPause()V
aload 0
invokestatic com/android/u/weibo/weibo/utils/TweetCountForGlances/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/utils/TweetCountForGlances;
invokevirtual com/android/u/weibo/weibo/utils/TweetCountForGlances/postGlancesCount()V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/resume()V
return
.limit locals 1
.limit stack 1
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/initData(Z)V
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsPullToRefresh Z
return
.limit locals 2
.limit stack 2
.end method

.method public onResume()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/onResume()V
aload 0
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
sipush 1001
invokevirtual com/android/u/weibo/weibo/controller/Manager/getBindState(I)I
istore 1
iconst_1
iload 1
if_icmpeq L0
iconst_2
iload 1
if_icmpne L1
L0:
aload 0
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
iconst_1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCallback Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/refreshFriendsTimeline(ZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsInitData Z
ifeq L2
getstatic com/product/android/business/switchUser/SwitchUserReloadManager/INSTANCE Lcom/product/android/business/switchUser/SwitchUserReloadManager;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/getTabIdentifier()Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
iconst_0
invokevirtual com/product/android/business/switchUser/SwitchUserReloadManager/setReloadFlag(Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;Z)V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsInitData Z
return
L2:
aload 0
aload 0
invokestatic com/product/android/business/switchUser/SwitchUserReloadManager/tabActivityCheckUserSwitch(Landroid/app/Activity;Lcom/product/android/business/switchUser/TabUIRefresh;)V
return
.limit locals 2
.limit stack 3
.end method

.method public refreshWhenSwitchUser()V
aload 0
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/initData(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method protected setListSelectionButton(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mListSelection Landroid/widget/Button;
iconst_0
iconst_0
iload 1
iconst_0
invokevirtual android/widget/Button/setCompoundDrawablesWithIntrinsicBounds(IIII)V
return
.limit locals 2
.limit stack 5
.end method

.method protected updateScrollDoubleLayout(Ljava/util/List;)V
.signature "(Ljava/util/List<[Ljava/lang/String;>;)V"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/scrollDoubleLayout Lcom/product/android/ui/widget/ScrollDoubleLayout;
iconst_0
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/scrollDoubleLayout Lcom/product/android/ui/widget/ScrollDoubleLayout;
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/beforeUpdate()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/scrollDoubleLayout Lcom/product/android/ui/widget/ScrollDoubleLayout;
aload 1
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/setData12(Ljava/util/List;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/scrollDoubleLayout Lcom/product/android/ui/widget/ScrollDoubleLayout;
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/update()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/scrollDoubleLayout Lcom/product/android/ui/widget/ScrollDoubleLayout;
aload 0
invokevirtual com/product/android/ui/widget/ScrollDoubleLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 2
.end method
