.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/view/widget/HotPostListView
.super com/nd/schoollife/ui/common/base/BaseView
.implements com/nd/schoollife/ui/common/view/RefreshBtn$RefreshBtnOnClickListener
.implements com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.implements android/view/View$OnClickListener
.implements com/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener
.inner class inner com/nd/schoollife/ui/square/view/widget/HotPostListView$1
.inner class inner com/nd/schoollife/ui/square/view/widget/HotPostListView$2
.inner class private HotPostListAdapter inner com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter outer com/nd/schoollife/ui/square/view/widget/HotPostListView
.inner class public static abstract interface SendPostBtnClickListener inner com/nd/schoollife/ui/square/view/widget/HotPostListView$SendPostBtnClickListener outer com/nd/schoollife/ui/square/view/widget/HotPostListView

.field public static final 'TAG' Ljava/lang/String;

.field private 'dataList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;"

.field private 'isInit' Z

.field private 'mActivity' Landroid/app/Activity;

.field private 'mCommentEditViewLayout' Landroid/widget/LinearLayout;

.field private 'mHandler' Lcom/nd/schoollife/ui/post/handler/PostListHandler;

.field private 'mInputContentManager' Lcom/nd/schoollife/ui/common/process/InputContentViewManager;

.field private 'mListView' Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;

.field private 'mListener' Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$SendPostBtnClickListener;

.field private 'mNoDataLL' Landroid/widget/LinearLayout;

.field private 'mPostListAdapter' Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;

.field private 'mRefreshBtn' Lcom/nd/schoollife/ui/common/view/RefreshBtn;

.field private 'postTask' Lcom/nd/schoollife/ui/square/task/PostDataTask;

.field final 'replyNum' I

.method static <clinit>()V
ldc com/nd/schoollife/ui/square/view/widget/HotPostListView
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/square/view/widget/HotPostListView/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/app/Activity;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/base/BaseView/<init>(Landroid/content/Context;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/dataList Ljava/util/List;
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/isInit Z
aload 0
iconst_2
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/replyNum I
aload 0
aload 1
invokespecial com/nd/schoollife/ui/square/view/widget/HotPostListView/initView(Landroid/app/Activity;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/nd/schoollife/ui/common/base/BaseView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/dataList Ljava/util/List;
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/isInit Z
aload 0
iconst_2
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/replyNum I
aload 0
aload 1
invokespecial com/nd/schoollife/ui/square/view/widget/HotPostListView/initView(Landroid/app/Activity;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;)Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;)Landroid/app/Activity;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mActivity Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;J)I
aload 0
lload 1
invokespecial com/nd/schoollife/ui/square/view/widget/HotPostListView/findPost(J)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;)Ljava/util/List;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/dataList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;)Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method private buildData(Lcom/nd/android/forumsdk/business/bean/result/ResultHotPostList;)V
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultHotPostList/getPosts()Ljava/util/List;
astore 4
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultHotPostList/getLatest_v()J
lstore 2
aload 4
ifnull L0
aload 4
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mNoDataLL Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
bipush 8
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
bipush 8
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/setVisibility(I)V
L2:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
ifnonnull L3
aload 0
new com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mActivity Landroid/app/Activity;
new com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo
dup
bipush 30
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/<init>(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokespecial com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/<init>(Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
L3:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
aload 4
new com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo
dup
lload 2
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/<init>(J)V
iconst_1
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/updateData(Ljava/util/List;Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;Z)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/getList()Ljava/util/List;
ifnonnull L4
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/dataList Ljava/util/List;
return
L1:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mNoDataLL Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
iconst_0
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/setVisibility(I)V
goto L2
L4:
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/getList()Ljava/util/List;
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/dataList Ljava/util/List;
return
.limit locals 5
.limit stack 8
.end method

.method private findPost(J)I
iconst_0
istore 3
L0:
iload 3
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/dataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/dataList Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
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

.method private getData(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
iconst_1
istore 2
aload 1
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpeq L0
aload 1
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L1
L0:
iconst_1
istore 2
L2:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 1
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPageCtrlAction(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
aload 0
new com/nd/schoollife/ui/square/task/PostDataTask
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mActivity Landroid/app/Activity;
aload 0
sipush 770
aload 1
aload 0
invokespecial com/nd/schoollife/ui/square/task/PostDataTask/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/postTask Lcom/nd/schoollife/ui/square/task/PostDataTask;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/postTask Lcom/nd/schoollife/ui/square/task/PostDataTask;
iconst_4
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/getGhostV()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
iconst_1
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
dup
iconst_2
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/getSize()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
dup
iconst_3
iconst_2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/square/task/PostDataTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L1:
aload 1
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L2
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/nextPage()I
istore 2
goto L2
.limit locals 3
.limit stack 8
.end method

.method private initView(Landroid/app/Activity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mActivity Landroid/app/Activity;
getstatic com/nd/schoollife/R$layout/fragment_hot_post_list I
aconst_null
invokestatic com/nd/schoollife/ui/square/view/widget/HotPostListView/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView/setContentView(Landroid/view/View;)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView/setOnReloadClickListener(Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;)V
aload 0
aload 1
getstatic com/nd/schoollife/R$id/post_list_listview I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
new com/nd/schoollife/ui/post/handler/PostListHandler
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
invokespecial com/nd/schoollife/ui/post/handler/PostListHandler/<init>(Landroid/widget/ListView;)V
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mHandler Lcom/nd/schoollife/ui/post/handler/PostListHandler;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setPullToActionListerner(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$PullToActionListener;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
getstatic com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode/BOTH Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setActionMode(Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView$ActionMode;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/cor_common_transparent I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aconst_null
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
new com/nd/schoollife/ui/square/view/widget/HotPostListView$1
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/HotPostListView$1/<init>(Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;)V
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
aload 1
getstatic com/nd/schoollife/R$id/ll_inputcontent I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mCommentEditViewLayout Landroid/widget/LinearLayout;
aload 0
new com/nd/schoollife/ui/common/process/InputContentViewManager
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mCommentEditViewLayout Landroid/widget/LinearLayout;
aload 0
invokespecial com/nd/schoollife/ui/common/process/InputContentViewManager/<init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
ifnonnull L0
aload 0
new com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mActivity Landroid/app/Activity;
new com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo
dup
bipush 30
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/<init>(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokespecial com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/<init>(Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;Lcom/nd/schoollife/ui/common/process/InputContentViewManager;)V
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
aload 1
getstatic com/nd/schoollife/R$id/refresh_btn I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/common/view/RefreshBtn
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
aload 0
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/setRefreshOnClickListener(Lcom/nd/schoollife/ui/common/view/RefreshBtn$RefreshBtnOnClickListener;)V
aload 0
aload 1
getstatic com/nd/schoollife/R$id/ll_square_hot_post_nodata I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mNoDataLL Landroid/widget/LinearLayout;
aload 1
getstatic com/nd/schoollife/R$id/btn_square_hot_post_send_post I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/isInit Z
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/square/view/widget/HotPostListView/getData(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 8
.end method

.method private stopRefreshBtn()V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/isRoting()Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/stopRoting()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public getPraiseReceiver()Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
new com/nd/schoollife/common/receiver/PraiseChangeReceiver
dup
new com/nd/schoollife/ui/square/view/widget/HotPostListView$2
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/HotPostListView$2/<init>(Lcom/nd/schoollife/ui/square/view/widget/HotPostListView;)V
invokespecial com/nd/schoollife/common/receiver/PraiseChangeReceiver/<init>(Lcom/nd/schoollife/ui/common/process/PraiseListener;)V
areturn
.limit locals 1
.limit stack 5
.end method

.method public hideCommentView()V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideView()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public moveToSpecialPosition(Landroid/view/View;II)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/getHeight()I
istore 4
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mActivity Landroid/app/Activity;
invokestatic com/nd/schoollife/ui/square/utils/SquareUtils/getStateBarHeight(Landroid/content/Context;)I
istore 5
iconst_2
newarray int
astore 8
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 8
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getLocationOnScreen([I)V
aload 8
iconst_1
iaload
istore 6
aload 1
invokevirtual android/view/View/getHeight()I
istore 7
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_1
putfield android/os/Message/what I
aload 1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
invokevirtual android/widget/ListView/getHeaderViewsCount()I
iload 2
iadd
putfield android/os/Message/arg2 I
aload 1
iload 6
iload 7
iadd
iload 3
iload 4
isub
iload 5
iadd
isub
putfield android/os/Message/arg1 I
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mHandler Lcom/nd/schoollife/ui/post/handler/PostListHandler;
aload 1
ldc2_w 100L
invokevirtual com/nd/schoollife/ui/post/handler/PostListHandler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
return
.limit locals 9
.limit stack 4
.end method

.method public notifyListView()V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/schoollife/R$id/btn_square_hot_post_send_post I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListener Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$SendPostBtnClickListener;
aload 1
invokeinterface com/nd/schoollife/ui/square/view/widget/HotPostListView$SendPostBtnClickListener/onSendPostBtnClick(Landroid/view/View;)V 1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideView()V
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/isRoting()Z
ifne L1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/performClick()Z
pop
L1:
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/square/view/widget/HotPostListView/getData(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onPullUpToLoadMore(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/hideView()V
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mRefreshBtn Lcom/nd/schoollife/ui/common/view/RefreshBtn;
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/isRoting()Z
ifeq L1
return
L1:
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_LOADMORE Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/square/view/widget/HotPostListView/getData(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onRefreshOnClick(Lcom/nd/schoollife/ui/common/view/RefreshBtn;)Z
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/postTask Lcom/nd/schoollife/ui/square/task/PostDataTask;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/postTask Lcom/nd/schoollife/ui/square/task/PostDataTask;
invokevirtual com/nd/schoollife/ui/square/task/PostDataTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mActivity Landroid/app/Activity;
getstatic com/nd/schoollife/R$string/str_common_loading I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
iconst_0
ireturn
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/isRefreshing()Z
ifne L1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/isInit Z
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/callPullDownToRefresh(Z)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/isInit Z
ifeq L1
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/isInit Z
L1:
iconst_1
ireturn
.limit locals 2
.limit stack 3
.end method

.method public onReloadClicked()V
aload 0
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
invokespecial com/nd/schoollife/ui/square/view/widget/HotPostListView/getData(Lcom/nd/schoollife/ui/common/task/CallStyle;)V
return
.limit locals 1
.limit stack 2
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
iload 1
sipush 770
if_icmpne L0
aload 3
ifnull L1
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ResultHotPostList
ifeq L1
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ResultHotPostList
astore 3
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultHotPostList/isSuccess()Z
ifeq L2
aload 0
aload 3
invokespecial com/nd/schoollife/ui/square/view/widget/HotPostListView/buildData(Lcom/nd/android/forumsdk/business/bean/result/ResultHotPostList;)V
L1:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_REFLASH Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L3
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/HotPostListView/stopRefreshBtn()V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
return
L2:
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultHotPostList/isBusinessError()Z
ifeq L1
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultHotPostList/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
ifnull L1
ldc "105010011"
aload 3
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultHotPostList/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
invokevirtual com/nd/android/forumsdk/business/bean/ForumErrorBean/getCode()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mActivity Landroid/app/Activity;
getstatic com/nd/schoollife/R$string/str_hotpost_ghost_is_lost I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
iconst_0
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/setHasMoreData(Z)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;
ldc2_w -1L
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/setGhostV(J)V
goto L1
L0:
iload 1
bipush 12
if_icmpne L1
aload 3
instanceof com/nd/schoollife/common/bean/result/CommentInfoBean
ifeq L1
aload 3
checkcast com/nd/schoollife/common/bean/result/CommentInfoBean
astore 3
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/isSuccess()Z
ifeq L4
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mActivity Landroid/app/Activity;
getstatic com/nd/schoollife/R$string/str_do_comment_success I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortCustomToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView/dismissLoading()V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L5
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/updateOperatorPanelCommentCount(Lcom/nd/schoollife/common/bean/result/CommentInfoBean;)V
L5:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/isSuccess()Z
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onSendResult(Z)V
goto L1
L4:
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/isBusinessError()Z
ifeq L5
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
ifnull L5
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mActivity Landroid/app/Activity;
getstatic com/nd/schoollife/R$string/str_do_comment_fail I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
getstatic com/nd/schoollife/ui/square/view/widget/HotPostListView/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "error\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual com/nd/schoollife/common/bean/result/CommentInfoBean/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
invokevirtual com/nd/android/forumsdk/business/bean/ForumErrorBean/getMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
goto L5
L3:
aload 2
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L6
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/isInit Z
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onRefreshComplete()V
return
L6:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListView Lcom/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView;
invokevirtual com/nd/schoollife/ui/common/view/widget/CustomPullToRefreshListView/onLoadMoreComplate()V
return
.limit locals 4
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
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
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
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 3
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/onResultPic(Landroid/content/Intent;)V
L4:
return
L5:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
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
invokespecial com/nd/schoollife/ui/square/view/widget/HotPostListView/findPost(J)I
istore 2
L8:
iload 2
iconst_m1
if_icmpeq L16
iload 4
ifeq L19
L9:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/getList()Ljava/util/List;
iload 2
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/notifyDataSetChanged()V
L10:
return
L19:
iload 1
iconst_m1
if_icmpeq L16
L11:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/getList()Ljava/util/List;
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
checkcast com/nd/android/forumsdk/business/bean/result/PostInfoBean
iload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/PostInfoBean/setPraised(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mPostListAdapter Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter;
invokevirtual com/nd/schoollife/ui/square/view/widget/HotPostListView$HotPostListAdapter/notifyDataSetChanged()V
L14:
return
.limit locals 5
.limit stack 5
.end method

.method public setOnSendPostBtnClickListener(Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$SendPostBtnClickListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mListener Lcom/nd/schoollife/ui/square/view/widget/HotPostListView$SendPostBtnClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setPositionListener(Lcom/nd/schoollife/ui/square/listener/PositionListener;)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/HotPostListView/mInputContentManager Lcom/nd/schoollife/ui/common/process/InputContentViewManager;
aload 1
invokevirtual com/nd/schoollife/ui/common/process/InputContentViewManager/setPositionListener(Lcom/nd/schoollife/ui/square/listener/PositionListener;)V
L0:
return
.limit locals 2
.limit stack 2
.end method
