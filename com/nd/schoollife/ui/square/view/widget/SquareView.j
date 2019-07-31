.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/view/widget/SquareView
.super com/nd/schoollife/ui/common/base/BaseViewManager
.implements android/view/View$OnClickListener
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.implements com/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener
.signature "Lcom/nd/schoollife/ui/common/base/BaseViewManager;Landroid/view/View$OnClickListener;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ScrollView;>;Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;"
.inner class inner com/nd/schoollife/ui/square/view/widget/SquareView$1
.inner class public static abstract interface SearchBarClickListener inner com/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener outer com/nd/schoollife/ui/square/view/widget/SquareView

.field public static final 'NOTIFY_GET_ONLINE_DATA' I = 256


.field private 'mBannerView' Lcom/nd/schoollife/ui/square/view/BannerView;

.field private 'mContainerLL' Landroid/widget/LinearLayout;

.field private 'mData' Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;

.field private 'mHandler' Landroid/os/Handler;

.field private 'mListener' Lcom/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener;

.field private 'mMainScrollView' Lcom/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView;

.field private 'mRootView' Landroid/view/View;

.field private 'mScrollView' Landroid/widget/ScrollView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/base/BaseViewManager/<init>(Landroid/content/Context;)V
aload 0
new com/nd/schoollife/ui/square/view/widget/SquareView$1
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/SquareView$1/<init>(Lcom/nd/schoollife/ui/square/view/widget/SquareView;)V
putfield com/nd/schoollife/ui/square/view/widget/SquareView/mHandler Landroid/os/Handler;
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/SquareView/initView()V
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/square/view/widget/SquareView;)Lcom/nd/schoollife/ui/square/view/BannerView;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mBannerView Lcom/nd/schoollife/ui/square/view/BannerView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/square/view/widget/SquareView;)Lcom/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mMainScrollView Lcom/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initView()V
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/fragment_square I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/schoollife/ui/square/view/widget/SquareView/mRootView Landroid/view/View;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mRootView Landroid/view/View;
getstatic com/nd/schoollife/R$id/scr_square I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView
putfield com/nd/schoollife/ui/square/view/widget/SquareView/mMainScrollView Lcom/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView;
aload 0
new com/nd/schoollife/ui/square/view/BannerView
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/square/view/BannerView/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/square/view/widget/SquareView/mBannerView Lcom/nd/schoollife/ui/square/view/BannerView;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mMainScrollView Lcom/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView;
aload 0
invokevirtual com/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mBannerView Lcom/nd/schoollife/ui/square/view/BannerView;
aload 0
invokevirtual com/nd/schoollife/ui/square/view/BannerView/setSearchBarClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mBannerView Lcom/nd/schoollife/ui/square/view/BannerView;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mHandler Landroid/os/Handler;
invokevirtual com/nd/schoollife/ui/square/view/BannerView/setHandler(Landroid/os/Handler;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mMainScrollView Lcom/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView;
invokevirtual com/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ScrollView
putfield com/nd/schoollife/ui/square/view/widget/SquareView/mScrollView Landroid/widget/ScrollView;
aload 0
new android/widget/LinearLayout
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mCtx Landroid/content/Context;
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/square/view/widget/SquareView/mContainerLL Landroid/widget/LinearLayout;
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mContainerLL Landroid/widget/LinearLayout;
aload 1
invokevirtual android/widget/LinearLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mContainerLL Landroid/widget/LinearLayout;
iconst_1
invokevirtual android/widget/LinearLayout/setOrientation(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mScrollView Landroid/widget/ScrollView;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mContainerLL Landroid/widget/LinearLayout;
invokevirtual android/widget/ScrollView/addView(Landroid/view/View;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mRootView Landroid/view/View;
invokevirtual com/nd/schoollife/ui/square/view/widget/SquareView/setContentView(Landroid/view/View;)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/SquareView/setOnReloadClickListener(Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;)V
aload 0
sipush 1281
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/square/view/widget/SquareView/startTask(ILcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 4
.end method

.method private notifyGetData()V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mHandler Landroid/os/Handler;
sipush 256
ldc2_w 1000L
invokevirtual android/os/Handler/sendEmptyMessageDelayed(IJ)Z
pop
return
.limit locals 1
.limit stack 4
.end method

.method private setData(Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;Z)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mContainerLL Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/removeAllViews()V
iconst_0
istore 4
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
ifnonnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mBannerView Lcom/nd/schoollife/ui/square/view/BannerView;
aconst_null
invokevirtual com/nd/schoollife/ui/square/view/BannerView/setData(Ljava/util/List;)Z
pop
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mContainerLL Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mBannerView Lcom/nd/schoollife/ui/square/view/BannerView;
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
iload 2
ifeq L1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mContainerLL Landroid/widget/LinearLayout;
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/SquareView/getNoDataView()Landroid/view/View;
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mBannerView Lcom/nd/schoollife/ui/square/view/BannerView;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
invokevirtual com/nd/schoollife/ui/square/view/BannerView/setData(Ljava/util/List;)Z
ifeq L2
iconst_0
iconst_1
iadd
istore 4
L2:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mContainerLL Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mBannerView Lcom/nd/schoollife/ui/square/view/BannerView;
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
iload 4
istore 3
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getPosts()Ljava/util/List;
ifnull L3
iload 4
istore 3
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getPosts()Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L3
new com/nd/schoollife/ui/square/view/SquareSubItem
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/square/view/SquareSubItem/<init>(Landroid/content/Context;)V
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getPosts()Ljava/util/List;
invokevirtual com/nd/schoollife/ui/square/view/SquareSubItem/setPostData(Ljava/util/List;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mContainerLL Landroid/widget/LinearLayout;
aload 1
invokevirtual com/nd/schoollife/ui/square/view/SquareSubItem/getParentView()Landroid/view/View;
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
iload 4
iconst_1
iadd
istore 3
L3:
iload 3
istore 4
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getCommunities()Ljava/util/List;
ifnull L4
iload 3
istore 4
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getCommunities()Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L4
new com/nd/schoollife/ui/square/view/SquareSubItem
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/square/view/SquareSubItem/<init>(Landroid/content/Context;)V
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getCommunities()Ljava/util/List;
invokevirtual com/nd/schoollife/ui/square/view/SquareSubItem/setCommunityData(Ljava/util/List;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mContainerLL Landroid/widget/LinearLayout;
aload 1
invokevirtual com/nd/schoollife/ui/square/view/SquareSubItem/getParentView()Landroid/view/View;
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
iload 3
iconst_1
iadd
istore 4
L4:
iload 4
istore 3
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getTeams()Ljava/util/List;
ifnull L5
iload 4
istore 3
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getTeams()Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L5
new com/nd/schoollife/ui/square/view/SquareSubItem
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mCtx Landroid/content/Context;
invokespecial com/nd/schoollife/ui/square/view/SquareSubItem/<init>(Landroid/content/Context;)V
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getTeams()Ljava/util/List;
invokevirtual com/nd/schoollife/ui/square/view/SquareSubItem/setTeamData(Ljava/util/List;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mContainerLL Landroid/widget/LinearLayout;
aload 1
invokevirtual com/nd/schoollife/ui/square/view/SquareSubItem/getParentView()Landroid/view/View;
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
iload 4
iconst_1
iadd
istore 3
L5:
iload 2
ifeq L1
iload 3
ifne L1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mContainerLL Landroid/widget/LinearLayout;
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/SquareView/getNoDataView()Landroid/view/View;
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
return
.limit locals 5
.limit stack 3
.end method

.method private startTask(ILcom/nd/schoollife/ui/common/task/CallStyle;)V
new com/nd/schoollife/ui/square/task/SquareDataTask
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mCtx Landroid/content/Context;
aload 0
iload 1
aload 2
aload 0
invokespecial com/nd/schoollife/ui/square/task/SquareDataTask/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_0
anewarray java/lang/String
invokevirtual com/nd/schoollife/ui/square/task/SquareDataTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 3
.limit stack 7
.end method

.method public getNoDataView()Landroid/view/View;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/schoollife_no_data_view I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 1
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 1
areturn
.limit locals 2
.limit stack 5
.end method

.method public getSquareView()Landroid/view/View;
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/SquareView/getViewContainer()Landroid/widget/RelativeLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/ll_square_search I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mListener Lcom/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mListener Lcom/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener;
aload 1
invokeinterface com/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener/onSearchBarClick(Landroid/view/View;)V 1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ScrollView;>;)V"
aload 0
sipush 1280
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/square/view/widget/SquareView/startTask(ILcom/nd/schoollife/ui/common/task/CallStyle;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mListener Lcom/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mListener Lcom/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener;
invokeinterface com/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener/onPullToRefresh()V 0
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public onReloadClicked()V
aload 0
sipush 1280
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/square/view/widget/SquareView/startTask(ILcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 1
.limit stack 3
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
aload 3
ifnull L0
aload 3
instanceof com/nd/schoollife/common/bean/result/ResultSquareAllData
ifeq L0
aload 3
checkcast com/nd/schoollife/common/bean/result/ResultSquareAllData
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/isSuccess()Z
ifne L1
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mMainScrollView Lcom/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView;
invokevirtual com/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView/isRefreshing()Z
ifeq L2
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mMainScrollView Lcom/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView;
invokevirtual com/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView/onRefreshComplete()V
L2:
getstatic com/product/android/business/config/Configuration/CONTACT_NEED_NEW_JUNIOR Z
ifeq L3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getIdentity()I
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
new com/nd/schoollife/common/bean/structure/BannerItemBean
dup
invokespecial com/nd/schoollife/common/bean/structure/BannerItemBean/<init>()V
astore 3
aload 3
ldc "senior"
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/setType(Ljava/lang/String;)V
aload 3
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mCtx Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$string/str_square_banner_senior I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/setName(Ljava/lang/String;)V
aload 2
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
ifnonnull L4
aload 0
new com/nd/schoollife/common/bean/result/ResultSquareAllData
dup
invokespecial com/nd/schoollife/common/bean/result/ResultSquareAllData/<init>()V
putfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
L4:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setBanner(Ljava/util/List;)V
L5:
iload 1
tableswitch 1280
L6
L7
default : L3
L3:
return
L1:
aload 3
checkcast com/nd/schoollife/common/bean/result/ResultSquareAllData
astore 2
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
ifnonnull L8
aload 0
aload 2
putfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
L9:
getstatic com/product/android/business/config/Configuration/CONTACT_NEED_NEW_JUNIOR Z
ifeq L5
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getIdentity()I
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L5
new com/nd/schoollife/common/bean/structure/BannerItemBean
dup
invokespecial com/nd/schoollife/common/bean/structure/BannerItemBean/<init>()V
astore 2
aload 2
ldc "senior"
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/setType(Ljava/lang/String;)V
aload 2
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mCtx Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$string/str_square_banner_senior I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/setName(Ljava/lang/String;)V
iconst_0
istore 6
iconst_0
istore 4
L10:
iload 6
istore 5
iload 4
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L11
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getIdentity()I
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L12
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/BannerItemBean
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getType()Ljava/lang/String;
ldc "senior"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L12
iconst_1
istore 5
L11:
iload 5
ifne L5
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/addBanner(Lcom/nd/schoollife/common/bean/structure/BannerItemBean;)V
goto L5
L8:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getCommunities()Ljava/util/List;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setCommunities(Ljava/util/List;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getPosts()Ljava/util/List;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setPosts(Ljava/util/List;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getTeams()Ljava/util/List;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setTeams(Ljava/util/List;)V
aload 2
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
ifnull L9
aload 2
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L13:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L9
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/schoollife/common/bean/structure/BannerItemBean
astore 3
iconst_0
istore 6
iload 6
istore 4
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
ifnull L14
iload 6
istore 4
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifne L14
iconst_0
istore 5
L15:
iload 6
istore 4
iload 5
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L14
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
iload 5
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/BannerItemBean
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getScope_id()J
aload 3
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getScope_id()J
lcmp
ifne L16
iconst_1
istore 4
L14:
iload 4
ifne L13
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/addBanner(Lcom/nd/schoollife/common/bean/structure/BannerItemBean;)V
goto L13
L16:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
iload 5
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/BannerItemBean
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getType()Ljava/lang/String;
aload 3
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getType()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L17
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
iload 5
aload 3
invokeinterface java/util/List/set(ILjava/lang/Object;)Ljava/lang/Object; 2
pop
iconst_1
istore 4
goto L14
L17:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
iload 5
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/BannerItemBean
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getType()Ljava/lang/String;
ldc "senior"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L18
aload 3
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getType()Ljava/lang/String;
ldc "senior"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L18
iconst_1
istore 4
goto L14
L18:
iload 5
iconst_1
iadd
istore 5
goto L15
L12:
iload 4
iconst_1
iadd
istore 4
goto L10
L7:
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
iconst_0
invokespecial com/nd/schoollife/ui/square/view/widget/SquareView/setData(Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;Z)V
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/SquareView/notifyGetData()V
return
L6:
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
iconst_1
invokespecial com/nd/schoollife/ui/square/view/widget/SquareView/setData(Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;Z)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mMainScrollView Lcom/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView;
invokevirtual com/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView/isRefreshing()Z
ifeq L3
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mMainScrollView Lcom/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView;
invokevirtual com/nd/schoollife/ui/square/view/SquarePullToRefreshScrollView/onRefreshComplete()V
return
.limit locals 7
.limit stack 4
.end method

.method public setSearchBarClickListener(Lcom/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/widget/SquareView/mListener Lcom/nd/schoollife/ui/square/view/widget/SquareView$SearchBarClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setUnicomFlowBanner(Z)V
iload 1
ifeq L0
iconst_1
istore 4
new com/nd/schoollife/common/bean/structure/BannerItemBean
dup
invokespecial com/nd/schoollife/common/bean/structure/BannerItemBean/<init>()V
astore 5
aload 5
ldc "unicom_flow"
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/setType(Ljava/lang/String;)V
aload 5
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mCtx Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$string/str_square_banner_unicom_flow I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/setName(Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
ifnonnull L1
aload 0
new com/nd/schoollife/common/bean/result/ResultSquareAllData
dup
invokespecial com/nd/schoollife/common/bean/result/ResultSquareAllData/<init>()V
putfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/setBanner(Ljava/util/List;)V
iconst_1
istore 2
L2:
iload 2
ifeq L3
invokestatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/getInstance()Lcom/nd/schoollife/business/db/SchoolLifeDaoFactory;
invokevirtual com/nd/schoollife/business/db/SchoolLifeDaoFactory/getSquareBannerDao()Lcom/nd/schoollife/business/db/dao/SquareBannerDao;
aload 5
invokeinterface com/nd/schoollife/business/db/dao/SquareBannerDao/insertSquareBannerSingle(Lcom/nd/schoollife/common/bean/structure/BannerItemBean;)J 1
pop2
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/addBanner(Lcom/nd/schoollife/common/bean/structure/BannerItemBean;)V
L3:
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
iconst_0
invokespecial com/nd/schoollife/ui/square/view/widget/SquareView/setData(Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;Z)V
L4:
return
L1:
iconst_0
istore 3
L5:
iload 4
istore 2
iload 3
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L2
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/BannerItemBean
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getType()Ljava/lang/String;
ldc "unicom_flow"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L6
iconst_0
istore 2
goto L2
L6:
iload 3
iconst_1
iadd
istore 3
goto L5
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
ifnull L4
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L7:
iload 2
iload 3
if_icmpge L8
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/schoollife/common/bean/structure/BannerItemBean
invokevirtual com/nd/schoollife/common/bean/structure/BannerItemBean/getType()Ljava/lang/String;
ldc "unicom_flow"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L9
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mData Lcom/nd/schoollife/common/bean/result/ResultSquareAllData;
invokevirtual com/nd/schoollife/common/bean/result/ResultSquareAllData/getBanner()Ljava/util/List;
iload 2
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
L8:
invokestatic com/nd/schoollife/business/db/SchoolLifeDaoFactory/getInstance()Lcom/nd/schoollife/business/db/SchoolLifeDaoFactory;
invokevirtual com/nd/schoollife/business/db/SchoolLifeDaoFactory/getSquareBannerDao()Lcom/nd/schoollife/business/db/dao/SquareBannerDao;
ldc "unicom_flow"
invokeinterface com/nd/schoollife/business/db/dao/SquareBannerDao/deleteSquareByType(Ljava/lang/String;)Z 1
pop
return
L9:
iload 2
iconst_1
iadd
istore 2
goto L7
.limit locals 6
.limit stack 3
.end method

.method public startTimer()V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mBannerView Lcom/nd/schoollife/ui/square/view/BannerView;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mBannerView Lcom/nd/schoollife/ui/square/view/BannerView;
invokevirtual com/nd/schoollife/ui/square/view/BannerView/startTimer()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public stopTimer()V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mBannerView Lcom/nd/schoollife/ui/square/view/BannerView;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SquareView/mBannerView Lcom/nd/schoollife/ui/square/view/BannerView;
invokevirtual com/nd/schoollife/ui/square/view/BannerView/stopTimer()V
L0:
return
.limit locals 1
.limit stack 1
.end method
