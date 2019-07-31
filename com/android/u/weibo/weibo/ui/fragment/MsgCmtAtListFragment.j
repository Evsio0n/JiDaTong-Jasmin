.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment
.super com/android/u/weibo/weibo/ui/fragment/PullToRefreshListFragment
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener
.signature "Lcom/android/u/weibo/weibo/ui/fragment/PullToRefreshListFragment;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ListView;>;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;"
.inner class inner com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment$1
.inner class private GetAtListTask inner com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment$GetAtListTask outer com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment
.inner class private GetMoreAtListTask inner com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment$GetMoreAtListTask outer com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment

.field private 'footView' Landroid/view/View;

.field private 'hasGetData' Z

.field private 'headerView' Landroid/widget/TextView;

.field private 'mAdapter' Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;

.field private 'mFootProgressBar' Landroid/widget/ProgressBar;

.field private 'mIsNoMoreData' Z

.field private 'mPullToRefreshListView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private 'mUnreadCount' I

.field private 'tvFooterView' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/fragment/PullToRefreshListFragment/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mIsNoMoreData Z
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/hasGetData Z
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$002(Lcom/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mIsNoMoreData Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment;)Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/footView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment;)Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/headerView Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment;Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/startWriteComment(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment;Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/startCommentListActivity(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
return
.limit locals 2
.limit stack 2
.end method

.method private onCommentClickMsg(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
aload 1
ifnonnull L0
L1:
return
L0:
aconst_null
astore 3
aload 3
astore 2
aload 1
ifnull L2
aload 3
astore 2
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
ifnull L2
aload 3
astore 2
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/exists I
iconst_1
if_icmpne L2
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
astore 2
L2:
aload 2
ifnull L1
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lconst_0
lcmp
ifle L1
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/content Ljava/lang/String;
astore 3
iconst_2
anewarray java/lang/String
astore 2
aload 2
iconst_0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/replydeil I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
aload 2
iconst_1
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/goto_weibo_detail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
aload 2
ifnull L1
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
new android/app/AlertDialog$Builder
dup
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 3
aload 3
aload 2
new com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment$1
dup
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment$1/<init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment;Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
invokevirtual android/app/AlertDialog$Builder/setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 3
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
astore 1
aload 1
iconst_1
invokevirtual android/app/AlertDialog/setCanceledOnTouchOutside(Z)V
aload 1
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 4
.limit stack 6
.end method

.method private revertFootViewState()V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mIsNoMoreData Z
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mFootProgressBar Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/tvFooterView Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/foot_loading I
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private startCommentListActivity(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
aload 1
ifnull L0
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
ifnull L0
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/exists I
ifne L1
L0:
return
L1:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toCommentListActivity(Landroid/content/Context;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
.limit locals 2
.limit stack 2
.end method

.method private startWriteComment(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
new android/content/Intent
dup
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc com/android/u/weibo/weibo/ui/activity/TweetCommentActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/reply_comment_head_no_at I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic com/product/android/utils/wbAtUtils/WbAtView/getMTagString(Ljava/lang/String;J)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "comment"
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 3
invokevirtual java/lang/StringBuilder/reverse()Ljava/lang/StringBuilder;
pop
aload 2
ldc "isFromOutside"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
ldc "tweet_id"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/to_tid J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 2
ldc "is_only_sina"
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/toTopic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/startActivity(Landroid/content/Intent;)V
return
.limit locals 4
.limit stack 4
.end method

.method public loadData()V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/hasGetData Z
ifne L0
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/hasGetData Z
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mUnreadCount I
ifle L1
new com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment$GetAtListTask
dup
aload 0
iconst_1
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment$GetAtListTask/<init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment;Z)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment$GetAtListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mUnreadCount I
L0:
return
L1:
new com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment$GetAtListTask
dup
aload 0
iconst_0
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment$GetAtListTask/<init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment;Z)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment$GetAtListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 4
.end method

.method protected volatile synthetic onCreatePullToRefreshListView(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
aload 0
aload 1
aload 2
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/onCreatePullToRefreshListView(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
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
putfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/headerView Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/headerView Landroid/widget/TextView;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/loading I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/headerView Landroid/widget/TextView;
bipush 17
invokevirtual android/widget/TextView/setGravity(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/headerView Landroid/widget/TextView;
iconst_1
ldc_w 22.0F
invokevirtual android/widget/TextView/setTextSize(IF)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/headerView Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
new com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter
dup
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/<init>(Landroid/content/Context;)V
putfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;
aload 0
aload 1
getstatic com/android/u/weibo/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/footView Landroid/view/View;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/footView Landroid/view/View;
getstatic com/android/u/weibo/R$id/progressBar_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mFootProgressBar Landroid/widget/ProgressBar;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/footView Landroid/view/View;
getstatic com/android/u/weibo/R$id/text_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/tvFooterView Landroid/widget/TextView;
aload 0
new com/handmark/pulltorefresh/library/PullToRefreshListView
dup
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/handmark/pulltorefresh/library/PullToRefreshListView/<init>(Landroid/content/Context;)V
putfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
ldc_w 17170445
invokevirtual android/widget/ListView/setSelector(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
getstatic com/android/u/weibo/R$drawable/main_tile_background I
invokevirtual android/widget/ListView/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 2
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/footView Landroid/view/View;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/setListAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
.limit locals 3
.limit stack 4
.end method

.method public onLastItemVisible()V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mIsNoMoreData Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/MsgCommentListAdapter/getLastItem()Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;
astore 1
aload 1
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/footView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
new com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment$GetMoreAtListTask
dup
aload 0
aload 1
getfield com/android/u/weibo/weibo/business/bean/ReplyInfo/request_id J
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment$GetMoreAtListTask/<init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment;J)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment$GetMoreAtListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
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
checkcast com/android/u/weibo/weibo/business/bean/ReplyInfo
astore 1
aload 1
ifnull L0
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/onCommentClickMsg(Lcom/android/u/weibo/weibo/business/bean/ReplyInfo;)V
L0:
return
.limit locals 6
.limit stack 2
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/refresh(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public refresh(Z)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/revertFootViewState()V
iload 1
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
ifnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mPullToRefreshListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setRefreshing(Z)V
L1:
return
L0:
new com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment$GetAtListTask
dup
aload 0
iconst_1
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment$GetAtListTask/<init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment;Z)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment$GetAtListTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 4
.end method

.method public setUnreadCount(I)V
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/mUnreadCount I
return
.limit locals 2
.limit stack 2
.end method

.method public setUserVisibleHint(Z)V
aload 0
iload 1
invokespecial com/android/u/weibo/weibo/ui/fragment/PullToRefreshListFragment/setUserVisibleHint(Z)V
iload 1
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/hasGetData Z
ifne L0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgCmtAtListFragment/loadData()V
L0:
return
.limit locals 2
.limit stack 2
.end method
