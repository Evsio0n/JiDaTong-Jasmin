.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/view/widget/SubscribeView
.super com/nd/schoollife/ui/common/base/BaseViewManager
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.implements com/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener
.implements com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener
.implements com/nd/schoollife/ui/common/view/RefreshBtn$RefreshBtnOnClickListener
.implements android/view/View$OnClickListener
.implements com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter$CtrlViewCallBack
.inner class inner com/nd/schoollife/ui/square/view/widget/SubscribeView$1
.inner class inner com/nd/schoollife/ui/square/view/widget/SubscribeView$2
.inner class inner com/nd/schoollife/ui/square/view/widget/SubscribeView$3

.field public static final 'TAG' Ljava/lang/String;

.field private 'hasData' Z

.field private 'isInit' Z

.field private 'mActivity' Landroid/app/Activity;

.field private 'mCommentEditViewLayout' Landroid/widget/LinearLayout;

.field private 'mCustomListView' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;

.field private 'mInputContentManager' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.field private 'mLoaderMoreTask' Lcom/nd/schoollife/ui/square/task/SquareDBDataTask;

.field private 'mNoDataView' Landroid/view/View;

.field private 'mPostAdapter' Lcom/nd/schoollife/ui/post/adapter/SubcribePostListAdapter;

.field private 'mRefreshBtn' Lcom/nd/schoollife/ui/common/view/RefreshBtn;

.field private 'mRootView' Landroid/widget/RelativeLayout;

.field private 'mSoftInput' Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;

.field private 'postsResult' Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;

.method static <clinit>()V
ldc com/nd/schoollife/ui/square/view/widget/SubscribeView
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/square/view/widget/SubscribeView/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/base/BaseViewManager/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/isInit Z
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/hasData Z
aload 0
aconst_null
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/postsResult Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
aload 1
instanceof android/app/Activity
ifeq L0
aload 0
aload 1
checkcast android/app/Activity
invokespecial com/nd/schoollife/ui/square/view/widget/SubscribeView/initView(Landroid/app/Activity;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;)Landroid/app/Activity;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mActivity Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;J)I
aload 0
lload 1
invokespecial com/nd/schoollife/ui/square/view/widget/SubscribeView/findPost(J)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;)Lcom/nd/schoollife/ui/post/adapter/SubcribePostListAdapter;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mPostAdapter Lcom/nd/schoollife/ui/post/adapter/SubcribePostListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method private findPost(J)I
iconst_0
istore 3
L0:
iload 3
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mPostAdapter Lcom/nd/schoollife/ui/post/adapter/SubcribePostListAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/getList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mPostAdapter Lcom/nd/schoollife/ui/post/adapter/SubcribePostListAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/getList()Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean
invokevirtual com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean/getPost()Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
astore 4
aload 4
ifnull L2
aload 4
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/getTid()J
lload 1
lcmp
ifne L2
iload 3
ireturn
L2:
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
iconst_m1
ireturn
.limit locals 5
.limit stack 4
.end method

.method private getSubPostListOffLine(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
new com/nd/schoollife/ui/square/task/SquareDataTask
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCtx Landroid/content/Context;
aload 0
sipush 512
aload 1
aload 0
invokespecial com/nd/schoollife/ui/square/task/SquareDataTask/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "30"
aastore
invokevirtual com/nd/schoollife/ui/square/task/SquareDataTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 7
.end method

.method private initView(Landroid/app/Activity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mActivity Landroid/app/Activity;
aload 0
new com/nd/schoollife/common/utils/ui/SoftInputUtil
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mActivity Landroid/app/Activity;
invokespecial com/nd/schoollife/common/utils/ui/SoftInputUtil/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mSoftInput Lcom/nd/schoollife/common/utils/ui/SoftInputUtil;
aload 0
aload 1
invokevirtual android/app/Activity/getLayoutInflater()Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/fragment_square_subscribe I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mRootView Landroid/widget/RelativeLayout;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mRootView Landroid/widget/RelativeLayout;
invokevirtual com/nd/schoollife/ui/square/view/widget/SubscribeView/setContentView(Landroid/view/View;)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/SubscribeView/setOnReloadClickListener(Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mRootView Landroid/widget/RelativeLayout;
getstatic com/nd/schoollife/R$id/rl_square_subscribe_nodata I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mNoDataView Landroid/view/View;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mRootView Landroid/widget/RelativeLayout;
getstatic com/nd/schoollife/R$id/btn_square_subscribe_find_group I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mRootView Landroid/widget/RelativeLayout;
getstatic com/nd/schoollife/R$id/btn_square_subscribe_find_community I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mRootView Landroid/widget/RelativeLayout;
getstatic com/nd/schoollife/R$id/plv_square_subscribe I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 1
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/cor_common_transparent I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPullToActionListerner(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/BOTH Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getNoMoreDataToLoadText()Landroid/widget/TextView;
astore 1
aload 1
iconst_0
bipush 10
iconst_0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mActivity Landroid/app/Activity;
ldc_w 20.0F
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/dip2px(Landroid/content/Context;F)I
invokevirtual android/widget/TextView/setPadding(IIII)V
aload 1
bipush 49
invokevirtual android/widget/TextView/setGravity(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aconst_null
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mRootView Landroid/widget/RelativeLayout;
getstatic com/nd/schoollife/R$id/ll_inputcontent I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCommentEditViewLayout Landroid/widget/LinearLayout;
aload 0
new com/nd/schoollife/ui/common/process/InputContentViewManager
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getParent()Landroid/app/Activity;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCommentEditViewLayout Landroid/widget/LinearLayout;
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/<init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
new com/nd/schoollife/ui/square/view/widget/SubscribeView$1
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/SubscribeView$1/<init>(Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;)V
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/setOnCommentViewShowListener(Lcom/nd/schoollife/ui/common/process/InputContentViewManager$OnCommentViewShowListener;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
new com/nd/schoollife/ui/square/view/widget/SubscribeView$2
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/SubscribeView$2/<init>(Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;)V
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
new com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mActivity Landroid/app/Activity;
new com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo
dup
bipush 30
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/<init>(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokespecial com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mPostAdapter Lcom/nd/schoollife/ui/post/adapter/SubcribePostListAdapter;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mPostAdapter Lcom/nd/schoollife/ui/post/adapter/SubcribePostListAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mRootView Landroid/widget/RelativeLayout;
getstatic com/nd/schoollife/R$id/refresh_btn I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/RefreshBtn
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/setRefreshOnClickListener(Lcom/nd/schoollife/ui/common/view/RefreshBtn$RefreshBtnOnClickListener;)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/isInit Z
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/square/view/widget/SubscribeView/getSubPostListOffLine(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 7
.end method

.method private stopRefreshBtn()V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/isRoting()Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/stopRoting()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public getPraiseReceiver()Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
new com/nd/schoollife/common/receiver/PraiseChangeReceiver
dup
new com/nd/schoollife/ui/square/view/widget/SubscribeView$3
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/SubscribeView$3/<init>(Lcom/nd/schoollife/ui/square/view/widget/SubscribeView;)V
invokespecial com/nd/schoollife/common/receiver/PraiseChangeReceiver/<init>(Lcom/nd/schoollife/ui/common/process/PraiseListener;)V
areturn
.limit locals 1
.limit stack 5
.end method

.method public getSubPostListOnLine(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCtx Landroid/content/Context;
invokestatic com/nd/schoollife/common/utils/common/AppSp/getInstatce(Landroid/content/Context;)Lcom/nd/schoollife/common/utils/common/AppSp;
ldc "FLAG_GET_MYRSS_INT"
iconst_0
invokevirtual com/nd/schoollife/common/utils/common/AppSp/getBoolean(Ljava/lang/String;Z)Z
ifeq L0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
astore 1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCtx Landroid/content/Context;
invokestatic com/nd/schoollife/common/utils/common/AppSp/getInstatce(Landroid/content/Context;)Lcom/nd/schoollife/common/utils/common/AppSp;
ldc "FLAG_GET_MYRSS_INT"
iconst_0
invokevirtual com/nd/schoollife/common/utils/common/AppSp/setValue(Ljava/lang/String;Z)V
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 1
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPageCtrlAction(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
new com/nd/schoollife/ui/square/task/SquareDataTask
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCtx Landroid/content/Context;
aload 0
sipush 513
aload 1
aload 0
invokespecial com/nd/schoollife/ui/square/task/SquareDataTask/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_3
anewarray java/lang/String
dup
iconst_0
ldc "30"
aastore
dup
iconst_1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mPostAdapter Lcom/nd/schoollife/ui/post/adapter/SubcribePostListAdapter;
aload 1
invokevirtual com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/getMaxActive(Lcom/nd/schoollife/ui/common/task/CallStyle;)J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
dup
iconst_2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mPostAdapter Lcom/nd/schoollife/ui/post/adapter/SubcribePostListAdapter;
aload 1
invokevirtual com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/getMinActive(Lcom/nd/schoollife/ui/common/task/CallStyle;)J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/square/task/SquareDataTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 7
.end method

.method public getSubScribeView()Landroid/view/View;
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/SubscribeView/getViewContainer()Landroid/widget/RelativeLayout;
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

.method public moveListViewToPosition(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
astore 2
aload 2
aload 2
invokevirtual android/widget/ListView/getHeaderViewsCount()I
iload 1
iadd
invokevirtual android/widget/ListView/setSelection(I)V
return
.limit locals 3
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/btn_square_subscribe_find_group I
if_icmpne L0
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mActivity Landroid/app/Activity;
ldc com/nd/schoollife/ui/square/activity/PostAndTeamActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "type"
iconst_2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mActivity Landroid/app/Activity;
aload 1
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/btn_square_subscribe_find_community I
if_icmpne L1
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mActivity Landroid/app/Activity;
ldc com/nd/schoollife/ui/community/activity/CommunitySquareActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mActivity Landroid/app/Activity;
aload 1
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method

.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideView()V
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/isRoting()Z
ifne L1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/performClick()Z
pop
L1:
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
invokevirtual com/nd/schoollife/ui/square/view/widget/SubscribeView/getSubPostListOnLine(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onPullUpToLoadMore(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideView()V
L0:
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
invokevirtual com/nd/schoollife/ui/square/view/widget/SubscribeView/getSubPostListOnLine(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onRefreshOnClick(Lcom/nd/schoollife/ui/common/view/RefreshBtn;)Z
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mLoaderMoreTask Lcom/nd/schoollife/ui/square/task/SquareDBDataTask;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mLoaderMoreTask Lcom/nd/schoollife/ui/square/task/SquareDBDataTask;
invokevirtual com/nd/schoollife/ui/square/task/SquareDBDataTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_common_loading I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
iconst_0
ireturn
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/isInit Z
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/callPullDownToRefresh(Z)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/isInit Z
ifeq L1
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/isInit Z
L1:
iconst_1
ireturn
.limit locals 2
.limit stack 3
.end method

.method public onReloadClicked()V
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/square/view/widget/SubscribeView/getSubPostListOffLine(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 1
.limit stack 2
.end method

.method public processHasMoreData()V
return
.limit locals 1
.limit stack 0
.end method

.method public processNoMoreData()V
return
.limit locals 1
.limit stack 0
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
iload 1
lookupswitch
12 : L0
512 : L1
513 : L2
default : L3
L3:
return
L1:
aload 3
ifnull L4
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList
ifeq L4
aload 0
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/postsResult Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/postsResult Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/getPosts()Ljava/util/List;
ifnull L5
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/postsResult Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/getPosts()Ljava/util/List;
astore 3
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mPostAdapter Lcom/nd/schoollife/ui/post/adapter/SubcribePostListAdapter;
aload 3
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/postsResult Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/getMax_active()J
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/postsResult Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/getMin_active()J
iconst_1
invokevirtual com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/updateData(Ljava/util/List;JJZ)V
L4:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L6
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/SubscribeView/stopRefreshBtn()V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
L6:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L7
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/isInit Z
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
L8:
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
invokevirtual com/nd/schoollife/ui/square/view/widget/SubscribeView/getSubPostListOnLine(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
L5:
getstatic com/nd/schoollife/ui/square/view/widget/SubscribeView/TAG Ljava/lang/String;
ldc "\u83b7\u53d6\u7684db\u65e0\u6570\u636e"
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
goto L4
L7:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
goto L8
L2:
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList
ifeq L9
aload 0
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/postsResult Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/postsResult Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/getPosts()Ljava/util/List;
ifnull L9
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/postsResult Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/getPosts()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L10
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/postsResult Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/getPosts()Ljava/util/List;
astore 3
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mPostAdapter Lcom/nd/schoollife/ui/post/adapter/SubcribePostListAdapter;
aload 3
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/postsResult Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/getMax_active()J
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/postsResult Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/getMin_active()J
iconst_0
invokevirtual com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/updateData(Ljava/util/List;JJZ)V
L9:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L11
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/SubscribeView/stopRefreshBtn()V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
L11:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L12
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/isInit Z
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
L13:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mPostAdapter Lcom/nd/schoollife/ui/post/adapter/SubcribePostListAdapter;
ifnull L14
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mPostAdapter Lcom/nd/schoollife/ui/post/adapter/SubcribePostListAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/getCount()I
ifgt L15
L14:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
iconst_4
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mNoDataView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
iconst_4
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/setVisibility(I)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/hasData Z
return
L10:
getstatic com/nd/schoollife/ui/square/view/widget/SubscribeView/TAG Ljava/lang/String;
ldc "\u83b7\u53d6\u7684\u7f51\u7edc\u65e0\u6570\u636e"
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
goto L9
L12:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
goto L13
L15:
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/view/widget/SubscribeView/hasData Z
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mNoDataView Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCustomListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/setVisibility(I)V
return
L0:
aload 3
instanceof com/nd/schoollife/common/bean/result/CommentInfoBean
ifeq L3
aload 3
checkcast com/nd/schoollife/common/bean/result/CommentInfoBean
astore 2
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/isSuccess()Z
ifeq L16
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_do_comment_success I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortCustomToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/SubscribeView/dismissLoading()V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L17
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 2
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/updateOperatorPanelCommentCount(Lcom/nd/schoollife/common/bean/result/CommentInfoBean;)V
L17:
new android/content/Intent
dup
ldc "com.nd.schoollife.changemainbottom"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "BOOL_MAIN_BOTTOM_CHANGE"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mActivity Landroid/app/Activity;
aload 3
invokevirtual android/app/Activity/sendBroadcast(Landroid/content/Intent;)V
L18:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L3
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/isSuccess()Z
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onSendResult(Z)V
return
L16:
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/isBusinessError()Z
ifeq L18
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
ifnull L18
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_do_comment_fail I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
getstatic com/nd/schoollife/ui/square/view/widget/SubscribeView/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "error\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
invokevirtual com/nd/android/forumsdk/business/bean/ForumErrorBean/getMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L18
.limit locals 4
.limit stack 7
.end method

.method public reloadPostList()V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/hasData Z
ifne L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mNoDataView Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokevirtual com/nd/schoollife/ui/square/view/widget/SubscribeView/getSubPostListOnLine(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mCtx Landroid/content/Context;
invokestatic com/nd/schoollife/common/utils/common/AppSp/getInstatce(Landroid/content/Context;)Lcom/nd/schoollife/common/utils/common/AppSp;
ldc "FLAG_GET_MYRSS_INT"
iconst_0
invokevirtual com/nd/schoollife/common/utils/common/AppSp/getBoolean(Ljava/lang/String;Z)Z
ifeq L1
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokevirtual com/nd/schoollife/ui/square/view/widget/SubscribeView/getSubPostListOnLine(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 1
.limit stack 3
.end method

.method public result(IILandroid/content/Intent;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L13 to L14 using L2
iload 2
iconst_m1
if_icmpeq L15
L16:
return
L15:
iload 1
tableswitch 100
L0
L3
L5
L17
default : L18
L18:
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onResultCamera(Landroid/content/Intent;)V
L1:
return
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
return
L3:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onResultPic(Landroid/content/Intent;)V
L4:
return
L5:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onResultAt(Landroid/content/Intent;)V
L6:
return
L17:
aload 3
ifnull L16
L7:
aload 3
ldc "IS_DEL"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
istore 4
aload 3
ldc "IS_PRAISE"
iconst_m1
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 1
aload 0
aload 3
ldc "INT_POST_ID"
ldc2_w -1L
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
invokespecial com/nd/schoollife/ui/square/view/widget/SubscribeView/findPost(J)I
istore 2
L8:
iload 2
iconst_m1
if_icmpeq L16
iload 4
ifeq L19
L9:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mPostAdapter Lcom/nd/schoollife/ui/post/adapter/SubcribePostListAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/getList()Ljava/util/List;
iload 2
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mPostAdapter Lcom/nd/schoollife/ui/post/adapter/SubcribePostListAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/notifyDataSetChanged()V
L10:
return
L19:
iload 1
iconst_m1
if_icmpeq L16
L11:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mPostAdapter Lcom/nd/schoollife/ui/post/adapter/SubcribePostListAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/getList()Ljava/util/List;
astore 3
L12:
aload 3
ifnull L16
L13:
aload 3
invokeinterface java/util/List/size()I 0
iload 2
iconst_1
iadd
if_icmplt L16
aload 3
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
ifnull L16
aload 3
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean
invokevirtual com/nd/android/forumsdk/business/bean/structure/PostWithActiveBean/getPost()Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;
iload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mPostAdapter Lcom/nd/schoollife/ui/post/adapter/SubcribePostListAdapter;
invokevirtual com/nd/schoollife/ui/post/adapter/SubcribePostListAdapter/notifyDataSetChanged()V
L14:
return
.limit locals 5
.limit stack 5
.end method

.method public setPositionListener(Lcom/nd/schoollife/ui/square/listener/PositionListener;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/SubscribeView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 1
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/setPositionListener(Lcom/nd/schoollife/ui/square/listener/PositionListener;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
