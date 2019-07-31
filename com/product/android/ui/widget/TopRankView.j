.bytecode 50.0
.class public synchronized abstract com/product/android/ui/widget/TopRankView
.super android/widget/LinearLayout
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener
.signature "Landroid/widget/LinearLayout;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ListView;>;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;"
.inner class inner com/product/android/ui/widget/TopRankView$1
.inner class inner com/product/android/ui/widget/TopRankView$2
.inner class inner com/product/android/ui/widget/TopRankView$3
.inner class inner com/product/android/ui/widget/TopRankView$4
.inner class inner com/product/android/ui/widget/TopRankView$5
.inner class inner com/product/android/ui/widget/TopRankView$6
.inner class private GetTopTask inner com/product/android/ui/widget/TopRankView$GetTopTask outer com/product/android/ui/widget/TopRankView
.inner class private TopTaskListener inner com/product/android/ui/widget/TopRankView$TopTaskListener outer com/product/android/ui/widget/TopRankView

.field public static final 'FLOWER_RANK' I = 0


.field public static final 'MSG_TOTALCOUNT' I = 200


.field public static final 'SECRETLOVE_RANK' I = 1


.field public static final 'SENDFLOWERTOME_RANK' I = 2


.field public final 'MSG_HIDETIMETIP' I

.field private 'mAdapter' Lcom/product/android/ui/adapter/TopRankListViewAdapter;

.field private 'mContext' Landroid/content/Context;

.field private 'mCurrentPage' I

.field private 'mFilter' Lcom/product/android/commonInterface/contact/RankFilterInfo;

.field private 'mFooterView' Landroid/view/View;

.field private 'mGetTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mGetTaskListener' Lcom/product/android/ui/widget/TopRankView$TopTaskListener;

.field private 'mHandler' Landroid/os/Handler;

.field private 'mHideAniListener' Landroid/view/animation/Animation$AnimationListener;

.field private 'mHideTimeTipAni' Landroid/view/animation/TranslateAnimation;

.field private 'mIsGetMoreRunning' Z

.field private 'mIsGetNewRunning' Z

.field private 'mIsHideActionRunning' Z

.field private 'mListView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private 'mParentHandler' Landroid/os/Handler;

.field private 'mPbLoad' Landroid/widget/ProgressBar;

.field private 'mRankType' I

.field private 'mScreenWidth' I

.field private 'mShowAniListener' Landroid/view/animation/Animation$AnimationListener;

.field private 'mShowTimeTipAni' Landroid/view/animation/TranslateAnimation;

.field public 'mTempListRank' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;"

.field private 'mTimer' Ljava/util/Timer;

.field public 'mTotalFlower' I

.field private 'mTvTimeTip' Landroid/widget/TextView;

.field private 'mTvTip' Landroid/widget/TextView;

.field private 'mUid' J

.field private 'mlistRank' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
new com/product/android/commonInterface/contact/RankFilterInfo
dup
invokespecial com/product/android/commonInterface/contact/RankFilterInfo/<init>()V
putfield com/product/android/ui/widget/TopRankView/mFilter Lcom/product/android/commonInterface/contact/RankFilterInfo;
aload 0
iconst_0
putfield com/product/android/ui/widget/TopRankView/mIsGetMoreRunning Z
aload 0
iconst_0
putfield com/product/android/ui/widget/TopRankView/mIsGetNewRunning Z
aload 0
iconst_0
putfield com/product/android/ui/widget/TopRankView/mCurrentPage I
aload 0
iconst_0
putfield com/product/android/ui/widget/TopRankView/mRankType I
aload 0
aconst_null
putfield com/product/android/ui/widget/TopRankView/mTimer Ljava/util/Timer;
aload 0
iconst_0
putfield com/product/android/ui/widget/TopRankView/mIsHideActionRunning Z
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/product/android/ui/widget/TopRankView/mlistRank Ljava/util/ArrayList;
aload 0
lconst_0
putfield com/product/android/ui/widget/TopRankView/mUid J
aload 0
new com/product/android/ui/widget/TopRankView$2
dup
aload 0
invokespecial com/product/android/ui/widget/TopRankView$2/<init>(Lcom/product/android/ui/widget/TopRankView;)V
putfield com/product/android/ui/widget/TopRankView/mShowAniListener Landroid/view/animation/Animation$AnimationListener;
aload 0
new com/product/android/ui/widget/TopRankView$3
dup
aload 0
invokespecial com/product/android/ui/widget/TopRankView$3/<init>(Lcom/product/android/ui/widget/TopRankView;)V
putfield com/product/android/ui/widget/TopRankView/mHideAniListener Landroid/view/animation/Animation$AnimationListener;
aload 0
bipush 100
putfield com/product/android/ui/widget/TopRankView/MSG_HIDETIMETIP I
aload 0
new com/product/android/ui/widget/TopRankView$6
dup
aload 0
invokespecial com/product/android/ui/widget/TopRankView$6/<init>(Lcom/product/android/ui/widget/TopRankView;)V
putfield com/product/android/ui/widget/TopRankView/mHandler Landroid/os/Handler;
aload 0
aload 1
putfield com/product/android/ui/widget/TopRankView/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;II)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
new com/product/android/commonInterface/contact/RankFilterInfo
dup
invokespecial com/product/android/commonInterface/contact/RankFilterInfo/<init>()V
putfield com/product/android/ui/widget/TopRankView/mFilter Lcom/product/android/commonInterface/contact/RankFilterInfo;
aload 0
iconst_0
putfield com/product/android/ui/widget/TopRankView/mIsGetMoreRunning Z
aload 0
iconst_0
putfield com/product/android/ui/widget/TopRankView/mIsGetNewRunning Z
aload 0
iconst_0
putfield com/product/android/ui/widget/TopRankView/mCurrentPage I
aload 0
iconst_0
putfield com/product/android/ui/widget/TopRankView/mRankType I
aload 0
aconst_null
putfield com/product/android/ui/widget/TopRankView/mTimer Ljava/util/Timer;
aload 0
iconst_0
putfield com/product/android/ui/widget/TopRankView/mIsHideActionRunning Z
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/product/android/ui/widget/TopRankView/mlistRank Ljava/util/ArrayList;
aload 0
lconst_0
putfield com/product/android/ui/widget/TopRankView/mUid J
aload 0
new com/product/android/ui/widget/TopRankView$2
dup
aload 0
invokespecial com/product/android/ui/widget/TopRankView$2/<init>(Lcom/product/android/ui/widget/TopRankView;)V
putfield com/product/android/ui/widget/TopRankView/mShowAniListener Landroid/view/animation/Animation$AnimationListener;
aload 0
new com/product/android/ui/widget/TopRankView$3
dup
aload 0
invokespecial com/product/android/ui/widget/TopRankView$3/<init>(Lcom/product/android/ui/widget/TopRankView;)V
putfield com/product/android/ui/widget/TopRankView/mHideAniListener Landroid/view/animation/Animation$AnimationListener;
aload 0
bipush 100
putfield com/product/android/ui/widget/TopRankView/MSG_HIDETIMETIP I
aload 0
new com/product/android/ui/widget/TopRankView$6
dup
aload 0
invokespecial com/product/android/ui/widget/TopRankView$6/<init>(Lcom/product/android/ui/widget/TopRankView;)V
putfield com/product/android/ui/widget/TopRankView/mHandler Landroid/os/Handler;
aload 0
aload 1
putfield com/product/android/ui/widget/TopRankView/mContext Landroid/content/Context;
aload 0
iload 2
putfield com/product/android/ui/widget/TopRankView/mRankType I
aload 0
iload 3
putfield com/product/android/ui/widget/TopRankView/mScreenWidth I
return
.limit locals 4
.limit stack 4
.end method

.method private StartTimer()V
aload 0
invokespecial com/product/android/ui/widget/TopRankView/StopTimer()V
aload 0
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
putfield com/product/android/ui/widget/TopRankView/mTimer Ljava/util/Timer;
aload 0
getfield com/product/android/ui/widget/TopRankView/mTimer Ljava/util/Timer;
new com/product/android/ui/widget/TopRankView$5
dup
aload 0
invokespecial com/product/android/ui/widget/TopRankView$5/<init>(Lcom/product/android/ui/widget/TopRankView;)V
ldc2_w 2000L
lconst_1
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;JJ)V
return
.limit locals 1
.limit stack 6
.end method

.method private StopTimer()V
aload 0
getfield com/product/android/ui/widget/TopRankView/mTimer Ljava/util/Timer;
ifnull L0
aload 0
getfield com/product/android/ui/widget/TopRankView/mTimer Ljava/util/Timer;
invokevirtual java/util/Timer/purge()I
pop
aload 0
getfield com/product/android/ui/widget/TopRankView/mTimer Ljava/util/Timer;
invokevirtual java/util/Timer/cancel()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/product/android/ui/widget/TopRankView;)Lcom/product/android/ui/adapter/TopRankListViewAdapter;
aload 0
getfield com/product/android/ui/widget/TopRankView/mAdapter Lcom/product/android/ui/adapter/TopRankListViewAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/product/android/ui/widget/TopRankView;)Landroid/content/Context;
aload 0
getfield com/product/android/ui/widget/TopRankView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/product/android/ui/widget/TopRankView;)Landroid/widget/ProgressBar;
aload 0
getfield com/product/android/ui/widget/TopRankView/mPbLoad Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/product/android/ui/widget/TopRankView;)V
aload 0
invokespecial com/product/android/ui/widget/TopRankView/StartTimer()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/product/android/ui/widget/TopRankView;)Landroid/widget/TextView;
aload 0
getfield com/product/android/ui/widget/TopRankView/mTvTimeTip Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1502(Lcom/product/android/ui/widget/TopRankView;Z)Z
aload 0
iload 1
putfield com/product/android/ui/widget/TopRankView/mIsHideActionRunning Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1600(Lcom/product/android/ui/widget/TopRankView;)Landroid/os/Handler;
aload 0
getfield com/product/android/ui/widget/TopRankView/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/product/android/ui/widget/TopRankView;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
invokespecial com/product/android/ui/widget/TopRankView/getData()Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/product/android/ui/widget/TopRankView;)I
aload 0
getfield com/product/android/ui/widget/TopRankView/mCurrentPage I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$304(Lcom/product/android/ui/widget/TopRankView;)I
aload 0
getfield com/product/android/ui/widget/TopRankView/mCurrentPage I
iconst_1
iadd
istore 1
aload 0
iload 1
putfield com/product/android/ui/widget/TopRankView/mCurrentPage I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$402(Lcom/product/android/ui/widget/TopRankView;Z)Z
aload 0
iload 1
putfield com/product/android/ui/widget/TopRankView/mIsGetNewRunning Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$502(Lcom/product/android/ui/widget/TopRankView;Z)Z
aload 0
iload 1
putfield com/product/android/ui/widget/TopRankView/mIsGetMoreRunning Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/product/android/ui/widget/TopRankView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/product/android/ui/widget/TopRankView/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/product/android/ui/widget/TopRankView;)Landroid/view/View;
aload 0
getfield com/product/android/ui/widget/TopRankView/mFooterView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/product/android/ui/widget/TopRankView;)Ljava/util/ArrayList;
aload 0
getfield com/product/android/ui/widget/TopRankView/mlistRank Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/product/android/ui/widget/TopRankView;)Landroid/os/Handler;
aload 0
getfield com/product/android/ui/widget/TopRankView/mParentHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method private getData()Lcom/common/android/utils/task/genericTask/TaskResult;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
astore 4
iconst_1
istore 1
iconst_0
istore 2
aload 0
getfield com/product/android/ui/widget/TopRankView/mCurrentPage I
ifeq L0
aload 0
getfield com/product/android/ui/widget/TopRankView/mlistRank Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 2
iload 2
ifne L9
iconst_1
istore 1
L0:
aload 0
getfield com/product/android/ui/widget/TopRankView/mRankType I
tableswitch 0
L5
L5
L7
default : L10
L1:
aload 4
astore 3
L3:
aload 0
getfield com/product/android/ui/widget/TopRankView/mTempListRank Ljava/util/ArrayList;
ifnull L4
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
astore 3
L4:
aload 3
areturn
L9:
aload 0
getfield com/product/android/ui/widget/TopRankView/mlistRank Ljava/util/ArrayList;
iload 2
iconst_1
isub
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/RankInfo
getfield com/product/android/commonInterface/contact/RankInfo/ranking I
iconst_1
iadd
istore 1
goto L0
L5:
aload 0
aload 0
aload 0
getfield com/product/android/ui/widget/TopRankView/mFilter Lcom/product/android/commonInterface/contact/RankFilterInfo;
invokevirtual com/product/android/commonInterface/contact/RankFilterInfo/getTimeSelect()I
aload 0
getfield com/product/android/ui/widget/TopRankView/mFilter Lcom/product/android/commonInterface/contact/RankFilterInfo;
invokevirtual com/product/android/commonInterface/contact/RankFilterInfo/getDepartid()I
i2l
aload 0
getfield com/product/android/ui/widget/TopRankView/mFilter Lcom/product/android/commonInterface/contact/RankFilterInfo;
invokevirtual com/product/android/commonInterface/contact/RankFilterInfo/getGenderSelect()I
bipush 30
iload 1
iconst_0
invokevirtual com/product/android/ui/widget/TopRankView/getRankList(IJIIII)Ljava/util/ArrayList;
putfield com/product/android/ui/widget/TopRankView/mTempListRank Ljava/util/ArrayList;
L6:
goto L1
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
aload 4
areturn
L7:
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/product/android/ui/widget/TopRankView/mTempListRank Ljava/util/ArrayList;
aload 0
aload 0
aload 0
getfield com/product/android/ui/widget/TopRankView/mUid J
iconst_0
iload 2
aload 0
getfield com/product/android/ui/widget/TopRankView/mTempListRank Ljava/util/ArrayList;
ldc "1"
invokevirtual com/product/android/ui/widget/TopRankView/getSendFlowerToMeList(JIILjava/util/ArrayList;Ljava/lang/String;)I
putfield com/product/android/ui/widget/TopRankView/mTotalFlower I
L8:
goto L1
L10:
goto L1
.limit locals 5
.limit stack 9
.end method

.method public getFilter()Lcom/product/android/commonInterface/contact/RankFilterInfo;
aload 0
getfield com/product/android/ui/widget/TopRankView/mFilter Lcom/product/android/commonInterface/contact/RankFilterInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected abstract getRankList(IJIIII)Ljava/util/ArrayList;
.signature "(IJIIII)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;"
.end method

.method protected abstract getSendFlowerToMeList(JIILjava/util/ArrayList;Ljava/lang/String;)I
.signature "(JIILjava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;Ljava/lang/String;)I"
.end method

.method public hideTimeTip()V
aload 0
getfield com/product/android/ui/widget/TopRankView/mIsHideActionRunning Z
ifne L0
aload 0
getfield com/product/android/ui/widget/TopRankView/mTvTimeTip Landroid/widget/TextView;
invokevirtual android/widget/TextView/getVisibility()I
bipush 8
if_icmpne L1
L0:
return
L1:
aload 0
iconst_1
putfield com/product/android/ui/widget/TopRankView/mIsHideActionRunning Z
aload 0
invokespecial com/product/android/ui/widget/TopRankView/StopTimer()V
aload 0
getfield com/product/android/ui/widget/TopRankView/mHideTimeTipAni Landroid/view/animation/TranslateAnimation;
ifnonnull L2
aload 0
new android/view/animation/TranslateAnimation
dup
fconst_0
fconst_0
fconst_0
ldc_w -100.0F
invokespecial android/view/animation/TranslateAnimation/<init>(FFFF)V
putfield com/product/android/ui/widget/TopRankView/mHideTimeTipAni Landroid/view/animation/TranslateAnimation;
aload 0
getfield com/product/android/ui/widget/TopRankView/mHideTimeTipAni Landroid/view/animation/TranslateAnimation;
ldc2_w 1000L
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mHideTimeTipAni Landroid/view/animation/TranslateAnimation;
iconst_1
invokevirtual android/view/animation/TranslateAnimation/setFillAfter(Z)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mHideTimeTipAni Landroid/view/animation/TranslateAnimation;
aload 0
getfield com/product/android/ui/widget/TopRankView/mHideAniListener Landroid/view/animation/Animation$AnimationListener;
invokevirtual android/view/animation/TranslateAnimation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
L2:
aload 0
getfield com/product/android/ui/widget/TopRankView/mTvTimeTip Landroid/widget/TextView;
aload 0
getfield com/product/android/ui/widget/TopRankView/mHideTimeTipAni Landroid/view/animation/TranslateAnimation;
invokevirtual android/widget/TextView/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 1
.limit stack 7
.end method

.method public init()V
aload 0
getfield com/product/android/ui/widget/TopRankView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/allcommon/R$layout/top_rank_view I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/pbload I
invokevirtual com/product/android/ui/widget/TopRankView/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/product/android/ui/widget/TopRankView/mPbLoad Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/tvtip I
invokevirtual com/product/android/ui/widget/TopRankView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/TopRankView/mTvTip Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/rlvlist I
invokevirtual com/product/android/ui/widget/TopRankView/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/product/android/ui/widget/TopRankView/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
aload 0
getfield com/product/android/ui/widget/TopRankView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/allcommon/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/product/android/ui/widget/TopRankView/mFooterView Landroid/view/View;
aload 0
getfield com/product/android/ui/widget/TopRankView/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/product/android/ui/widget/TopRankView/mFooterView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
new com/product/android/ui/adapter/TopRankListViewAdapter
dup
aload 0
getfield com/product/android/ui/widget/TopRankView/mContext Landroid/content/Context;
aload 0
getfield com/product/android/ui/widget/TopRankView/mRankType I
aload 0
getfield com/product/android/ui/widget/TopRankView/mScreenWidth I
invokespecial com/product/android/ui/adapter/TopRankListViewAdapter/<init>(Landroid/content/Context;II)V
putfield com/product/android/ui/widget/TopRankView/mAdapter Lcom/product/android/ui/adapter/TopRankListViewAdapter;
aload 0
getfield com/product/android/ui/widget/TopRankView/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/product/android/ui/widget/TopRankView/mAdapter Lcom/product/android/ui/adapter/TopRankListViewAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/tvtimetip I
invokevirtual com/product/android/ui/widget/TopRankView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/TopRankView/mTvTimeTip Landroid/widget/TextView;
aload 0
getfield com/product/android/ui/widget/TopRankView/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/nostra13/universalimageloader/core/assist/PauseOnScrollListener
dup
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
iconst_0
iconst_1
new com/product/android/ui/widget/TopRankView$1
dup
aload 0
invokespecial com/product/android/ui/widget/TopRankView$1/<init>(Lcom/product/android/ui/widget/TopRankView;)V
invokespecial com/nostra13/universalimageloader/core/assist/PauseOnScrollListener/<init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZLandroid/widget/AbsListView$OnScrollListener;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
invokevirtual com/product/android/ui/widget/TopRankView/startTask()V
return
.limit locals 1
.limit stack 9
.end method

.method public isInit()Z
aload 0
getfield com/product/android/ui/widget/TopRankView/mlistRank Ljava/util/ArrayList;
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
invokevirtual com/product/android/ui/widget/TopRankView/stopTask()V
aload 0
invokespecial com/product/android/ui/widget/TopRankView/StopTimer()V
aload 0
getfield com/product/android/ui/widget/TopRankView/mlistRank Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/product/android/ui/widget/TopRankView/mlistRank Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onLastItemVisible()V
aload 0
getfield com/product/android/ui/widget/TopRankView/mIsGetNewRunning Z
ifeq L0
aload 0
getfield com/product/android/ui/widget/TopRankView/mContext Landroid/content/Context;
aload 0
getfield com/product/android/ui/widget/TopRankView/mContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/refreshing_please_wait I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L1:
return
L0:
aload 0
getfield com/product/android/ui/widget/TopRankView/mIsGetMoreRunning Z
ifne L1
aload 0
getfield com/product/android/ui/widget/TopRankView/mFooterView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
invokevirtual com/product/android/ui/widget/TopRankView/startTask()V
return
.limit locals 1
.limit stack 3
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getfield com/product/android/ui/widget/TopRankView/mContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/product/android/ui/widget/TopRankView$4
dup
aload 0
invokespecial com/product/android/ui/widget/TopRankView$4/<init>(Lcom/product/android/ui/widget/TopRankView;)V
ldc2_w 1000L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
getstatic com/nd/android/u/allcommon/R$string/network_error I
invokestatic com/common/android/utils/ToastUtils/display(I)V
L1:
return
L0:
aload 0
getfield com/product/android/ui/widget/TopRankView/mIsGetMoreRunning Z
ifeq L2
aload 0
getfield com/product/android/ui/widget/TopRankView/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
aload 0
getfield com/product/android/ui/widget/TopRankView/mContext Landroid/content/Context;
aload 0
getfield com/product/android/ui/widget/TopRankView/mContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/gettingmore_please_wait I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L2:
aload 0
getfield com/product/android/ui/widget/TopRankView/mIsGetNewRunning Z
ifne L1
aload 0
iconst_0
putfield com/product/android/ui/widget/TopRankView/mCurrentPage I
aload 0
invokevirtual com/product/android/ui/widget/TopRankView/startTask()V
return
.limit locals 2
.limit stack 4
.end method

.method public refresh()V
aload 0
getfield com/product/android/ui/widget/TopRankView/mAdapter Lcom/product/android/ui/adapter/TopRankListViewAdapter;
ifnull L0
aload 0
getfield com/product/android/ui/widget/TopRankView/mAdapter Lcom/product/android/ui/adapter/TopRankListViewAdapter;
invokevirtual com/product/android/ui/adapter/TopRankListViewAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public setFilter(Lcom/product/android/commonInterface/contact/RankFilterInfo;)V
aload 0
aload 1
putfield com/product/android/ui/widget/TopRankView/mFilter Lcom/product/android/commonInterface/contact/RankFilterInfo;
aload 0
getfield com/product/android/ui/widget/TopRankView/mContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L0
aload 0
getfield com/product/android/ui/widget/TopRankView/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
bipush 8
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mTvTip Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mPbLoad Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
iconst_0
putfield com/product/android/ui/widget/TopRankView/mCurrentPage I
aload 0
invokevirtual com/product/android/ui/widget/TopRankView/startTask()V
return
L0:
getstatic com/nd/android/u/allcommon/R$string/network_error I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setGender(I)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mFilter Lcom/product/android/commonInterface/contact/RankFilterInfo;
iload 1
invokevirtual com/product/android/commonInterface/contact/RankFilterInfo/setGenderSelect(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setParentHanlder(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/product/android/ui/widget/TopRankView/mParentHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method

.method public setTimeSelect(I)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mFilter Lcom/product/android/commonInterface/contact/RankFilterInfo;
iload 1
invokevirtual com/product/android/commonInterface/contact/RankFilterInfo/setTimeSelect(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setUid(J)V
aload 0
lload 1
putfield com/product/android/ui/widget/TopRankView/mUid J
return
.limit locals 3
.limit stack 3
.end method

.method public showData()V
aload 0
getfield com/product/android/ui/widget/TopRankView/mlistRank Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L0
aload 0
getfield com/product/android/ui/widget/TopRankView/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
bipush 8
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mTvTip Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mPbLoad Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mTvTip Landroid/widget/TextView;
aload 0
getfield com/product/android/ui/widget/TopRankView/mContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/no_data_now I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
return
L0:
aload 0
getfield com/product/android/ui/widget/TopRankView/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mTvTip Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mPbLoad Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mCurrentPage I
ifne L1
aload 0
getfield com/product/android/ui/widget/TopRankView/mAdapter Lcom/product/android/ui/adapter/TopRankListViewAdapter;
aload 0
getfield com/product/android/ui/widget/TopRankView/mlistRank Ljava/util/ArrayList;
invokevirtual com/product/android/ui/adapter/TopRankListViewAdapter/setRankInfos(Ljava/util/List;)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/product/android/ui/widget/TopRankView/mAdapter Lcom/product/android/ui/adapter/TopRankListViewAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mFilter Lcom/product/android/commonInterface/contact/RankFilterInfo;
invokevirtual com/product/android/commonInterface/contact/RankFilterInfo/getTimeSelect()I
iconst_1
if_icmpne L1
aload 0
invokevirtual com/product/android/ui/widget/TopRankView/showTimeTip()V
return
.limit locals 1
.limit stack 3
.end method

.method public showTimeTip()V
aload 0
getfield com/product/android/ui/widget/TopRankView/mShowTimeTipAni Landroid/view/animation/TranslateAnimation;
ifnonnull L0
aload 0
new android/view/animation/TranslateAnimation
dup
fconst_0
fconst_0
ldc_w -100.0F
fconst_0
invokespecial android/view/animation/TranslateAnimation/<init>(FFFF)V
putfield com/product/android/ui/widget/TopRankView/mShowTimeTipAni Landroid/view/animation/TranslateAnimation;
aload 0
getfield com/product/android/ui/widget/TopRankView/mShowTimeTipAni Landroid/view/animation/TranslateAnimation;
ldc2_w 1000L
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mShowTimeTipAni Landroid/view/animation/TranslateAnimation;
iconst_1
invokevirtual android/view/animation/TranslateAnimation/setFillAfter(Z)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mShowTimeTipAni Landroid/view/animation/TranslateAnimation;
aload 0
getfield com/product/android/ui/widget/TopRankView/mShowAniListener Landroid/view/animation/Animation$AnimationListener;
invokevirtual android/view/animation/TranslateAnimation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
L0:
aload 0
getfield com/product/android/ui/widget/TopRankView/mTvTimeTip Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/product/android/ui/widget/TopRankView/mContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/week_leaderboard I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic com/product/android/utils/TimeUtils/getLastWeekStr()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mTvTimeTip Landroid/widget/TextView;
aload 0
getfield com/product/android/ui/widget/TopRankView/mShowTimeTipAni Landroid/view/animation/TranslateAnimation;
invokevirtual android/widget/TextView/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 1
.limit stack 7
.end method

.method public startTask()V
aload 0
invokevirtual com/product/android/ui/widget/TopRankView/stopTask()V
aload 0
new com/product/android/ui/widget/TopRankView$GetTopTask
dup
aload 0
aconst_null
invokespecial com/product/android/ui/widget/TopRankView$GetTopTask/<init>(Lcom/product/android/ui/widget/TopRankView;Lcom/product/android/ui/widget/TopRankView$1;)V
putfield com/product/android/ui/widget/TopRankView/mGetTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
new com/product/android/ui/widget/TopRankView$TopTaskListener
dup
aload 0
aconst_null
invokespecial com/product/android/ui/widget/TopRankView$TopTaskListener/<init>(Lcom/product/android/ui/widget/TopRankView;Lcom/product/android/ui/widget/TopRankView$1;)V
putfield com/product/android/ui/widget/TopRankView/mGetTaskListener Lcom/product/android/ui/widget/TopRankView$TopTaskListener;
aload 0
getfield com/product/android/ui/widget/TopRankView/mGetTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/product/android/ui/widget/TopRankView/mGetTaskListener Lcom/product/android/ui/widget/TopRankView$TopTaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
aload 0
getfield com/product/android/ui/widget/TopRankView/mGetTask Lcom/common/android/utils/task/genericTask/GenericTask;
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
getfield com/product/android/ui/widget/TopRankView/mGetTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/product/android/ui/widget/TopRankView/mGetTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/product/android/ui/widget/TopRankView/mGetTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method
