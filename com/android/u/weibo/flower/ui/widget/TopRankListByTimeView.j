.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/ui/widget/TopRankListByTimeView
.super android/widget/RelativeLayout
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener
.signature "Landroid/widget/RelativeLayout;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ListView;>;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;"
.inner class inner com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$1
.inner class private GetTopTask inner com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$GetTopTask outer com/android/u/weibo/flower/ui/widget/TopRankListByTimeView
.inner class private TopTaskListener inner com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener outer com/android/u/weibo/flower/ui/widget/TopRankListByTimeView

.field public static final 'HAVESENDFLOWER_RANK' I = 1


.field public static final 'MSG_HAVESENDFLOWER' I = 300


.field public static final 'SENDFLOWERTOME_RANK' I = 0


.field private 'mAdapter' Lcom/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter;

.field private 'mContext' Landroid/content/Context;

.field private 'mCurrentPage' I

.field private 'mFooterView' Landroid/view/View;

.field private 'mGetTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mGetTaskListener' Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener;

.field private 'mIsGetMoreRunning' Z

.field private 'mIsGetNewRunning' Z

.field private 'mListRank' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;"

.field private 'mLvRankByTimeList' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private 'mParentHandler' Landroid/os/Handler;

.field private 'mPbLoad' Landroid/widget/ProgressBar;

.field private 'mRankType' I

.field public 'mTempListRank' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;"

.field public 'mTotalFlower' I

.field private 'mTvTip' Landroid/widget/TextView;

.field private 'mUid' J

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mRankType I
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mIsGetMoreRunning Z
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mIsGetNewRunning Z
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mCurrentPage I
aload 0
lconst_0
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mUid J
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;ILandroid/os/Handler;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mRankType I
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mIsGetMoreRunning Z
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mIsGetNewRunning Z
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mCurrentPage I
aload 0
lconst_0
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mUid J
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mContext Landroid/content/Context;
aload 0
iload 2
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mRankType I
aload 0
aload 3
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mParentHandler Landroid/os/Handler;
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/initView()V
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$000(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Landroid/content/Context;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/getData()Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mTvTip Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Landroid/widget/ProgressBar;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mPbLoad Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)I
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mCurrentPage I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$204(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)I
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mCurrentPage I
iconst_1
iadd
istore 1
aload 0
iload 1
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mCurrentPage I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$302(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mIsGetNewRunning Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$402(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mIsGetMoreRunning Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mLvRankByTimeList Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Landroid/view/View;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mFooterView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mListRank Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)Landroid/os/Handler;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mParentHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)I
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mRankType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private getData()Lcom/common/android/utils/task/genericTask/TaskResult;
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
astore 2
iconst_0
istore 1
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mCurrentPage I
ifeq L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mListRank Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 1
L0:
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mTempListRank Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mRankType I
ifne L1
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mUid J
lconst_0
iload 1
bipush 30
ldc "0"
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mTempListRank Ljava/util/ArrayList;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getFlowerInfoRecv(JJIILjava/lang/String;Ljava/util/ArrayList;)I
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mTotalFlower I
L2:
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mTempListRank Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/RankInfo
astore 3
aload 3
getfield com/product/android/commonInterface/contact/RankInfo/userName Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L3
aload 3
getfield com/product/android/commonInterface/contact/RankInfo/uid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/synGetOapUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 4
aload 4
ifnull L5
aload 3
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
putfield com/product/android/commonInterface/contact/RankInfo/userName Ljava/lang/String;
L5:
aload 3
getfield com/product/android/commonInterface/contact/RankInfo/userName Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L3
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
getfield com/product/android/commonInterface/contact/RankInfo/uid J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/product/android/commonInterface/contact/RankInfo/userName Ljava/lang/String;
goto L3
L1:
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
lconst_0
iload 1
bipush 30
ldc "0"
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mTempListRank Ljava/util/ArrayList;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getFlowerInfoSend(JIILjava/lang/String;Ljava/util/ArrayList;)I
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mTotalFlower I
goto L2
L4:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 5
.limit stack 10
.end method

.method private initView()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/wbflow_top_rank_by_time_view I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/android/u/weibo/R$id/lvRankByTimeList I
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mLvRankByTimeList Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/pbLoad I
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mPbLoad Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tvTip I
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mTvTip Landroid/widget/TextView;
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mFooterView Landroid/view/View;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mLvRankByTimeList Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mFooterView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
return
.limit locals 1
.limit stack 4
.end method

.method public initData()V
aload 0
new com/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter
dup
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mContext Landroid/content/Context;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mRankType I
invokespecial com/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter/<init>(Landroid/content/Context;I)V
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mAdapter Lcom/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mListRank Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mLvRankByTimeList Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mLvRankByTimeList Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mLvRankByTimeList Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/nostra13/universalimageloader/core/assist/PauseOnScrollListener
dup
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
iconst_0
iconst_1
aconst_null
invokespecial com/nostra13/universalimageloader/core/assist/PauseOnScrollListener/<init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZLandroid/widget/AbsListView$OnScrollListener;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mLvRankByTimeList Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$1
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$1/<init>(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/startTask()V
return
.limit locals 1
.limit stack 7
.end method

.method public isInit()Z
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mListRank Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onDestroy()V
aload 0
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/stopTask()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mListRank Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mListRank Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mTempListRank Ljava/util/ArrayList;
ifnull L1
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mTempListRank Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L1:
return
.limit locals 1
.limit stack 1
.end method

.method public onLastItemVisible()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mIsGetNewRunning Z
ifeq L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mContext Landroid/content/Context;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/refreshing_please_wait I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L1:
return
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mIsGetMoreRunning Z
ifne L1
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mFooterView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/startTask()V
return
.limit locals 1
.limit stack 3
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mIsGetMoreRunning Z
ifeq L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mLvRankByTimeList Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mContext Landroid/content/Context;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/gettingmore_please_wait I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L1:
return
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mIsGetNewRunning Z
ifne L1
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mCurrentPage I
aload 0
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/startTask()V
return
.limit locals 2
.limit stack 3
.end method

.method public refresh()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mAdapter Lcom/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mAdapter Lcom/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter;
invokevirtual com/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mUid J
return
.limit locals 3
.limit stack 3
.end method

.method public showData()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mListRank Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mLvRankByTimeList Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
bipush 8
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mTvTip Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mPbLoad Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mTvTip Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/no_data_now I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mLvRankByTimeList Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mTvTip Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mPbLoad Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mCurrentPage I
ifne L1
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mAdapter Lcom/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mListRank Ljava/util/ArrayList;
invokevirtual com/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter/setData(Ljava/util/ArrayList;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mLvRankByTimeList Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mAdapter Lcom/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
return
L1:
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mAdapter Lcom/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mListRank Ljava/util/ArrayList;
invokevirtual com/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter/setData(Ljava/util/ArrayList;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mAdapter Lcom/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter;
invokevirtual com/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 3
.end method

.method public startTask()V
aload 0
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/stopTask()V
aload 0
new com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$GetTopTask
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$GetTopTask/<init>(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView$1;)V
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mGetTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
new com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener/<init>(Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView$1;)V
putfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mGetTaskListener Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mGetTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mGetTaskListener Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView$TopTaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mGetTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 6
.end method

.method public stopTask()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mGetTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mGetTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/mGetTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method
