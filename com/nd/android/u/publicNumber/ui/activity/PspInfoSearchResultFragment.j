.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment
.super android/support/v4/app/Fragment
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$1
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$2
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$3
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5$1
.inner class private GetPspInfoListTask inner com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask outer com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment

.field private static final 'PAGE_SIZE' I = 20


.field private 'getPspInfoListTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'hasAllPspInfo' Z

.field private 'llSearching' Landroid/widget/LinearLayout;

.field private 'mAdapter' Lcom/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter;

.field private 'mCurrentPage' I

.field private 'mFootView' Landroid/view/View;

.field private 'mGetPspInfoListTask' Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;

.field private 'mIsFirst' Z

.field private 'mKey' Ljava/lang/String;

.field private 'mPspInfoList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;"

.field private 'mResultListView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private 'mSearchBar' Lcom/product/android/ui/widget/XYSearchBarWidget;

.field private 'mTempList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;"

.field private 'observer' Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;

.field private 'tvNoResult' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mCurrentPage I
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/hasAllPspInfo Z
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mIsFirst Z
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$4/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/getPspInfoListTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$5/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/observer Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mAdapter Lcom/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Z
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/hasAllPspInfo Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mGetPspInfoListTask Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1002(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;)Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mGetPspInfoListTask Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$102(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;Z)Z
aload 0
iload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/hasAllPspInfo Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mKey Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/getPspInfoListTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mTempList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1302(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mTempList Ljava/util/ArrayList;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1400(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mCurrentPage I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1408(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mCurrentPage I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mCurrentPage I
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$1500(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mPspInfoList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1502(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mPspInfoList Ljava/util/ArrayList;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/view/View;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mFootView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;Z)V
aload 0
iload 1
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/loadPspInfoList(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Z
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mIsFirst Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/onBegin(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$700(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/llSearching Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mResultListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/tvNoResult Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getInstance(Ljava/lang/String;Lcom/product/android/ui/widget/XYSearchBarWidget;)Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;
new com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment
dup
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/<init>()V
astore 2
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 3
aload 3
ldc "search_key"
aload 0
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 2
aload 3
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/setArguments(Landroid/os/Bundle;)V
aload 2
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mSearchBar Lcom/product/android/ui/widget/XYSearchBarWidget;
aload 2
areturn
.limit locals 4
.limit stack 3
.end method

.method private loadPspInfoList(Z)V
aload 0
iload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mIsFirst Z
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mGetPspInfoListTask Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mGetPspInfoListTask Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask
dup
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mKey Ljava/lang/String;
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;Ljava/lang/String;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mGetPspInfoListTask Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mGetPspInfoListTask Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/getPspInfoListTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mGetPspInfoListTask Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 2
aastore
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method

.method private onBegin(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/getArguments()Landroid/os/Bundle;
astore 1
aload 1
ifnull L0
aload 0
aload 1
ldc "search_key"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mKey Ljava/lang/String;
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mKey Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
iconst_1
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/loadPspInfoList(Z)V
L1:
getstatic com/nd/android/u/controller/observer/RequestResultNotifier/INSTANCE Lcom/nd/android/u/controller/observer/RequestResultNotifier;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/observer Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;
invokevirtual com/nd/android/u/controller/observer/RequestResultNotifier/registObserver(Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 1
getstatic com/nd/android/u/chat/R$layout/pspinfo_page I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
astore 2
aload 0
aload 2
getstatic com/nd/android/u/chat/R$id/pspinfo_list_view I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mResultListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
aload 2
getstatic com/nd/android/u/chat/R$id/tvNoResult I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/tvNoResult Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/android/u/chat/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mFootView Landroid/view/View;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mResultListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mFootView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter
dup
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mAdapter Lcom/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mResultListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mAdapter Lcom/nd/android/u/publicNumber/ui/activity/PspSearchListAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
aload 2
getstatic com/nd/android/u/chat/R$id/ll_searching I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/llSearching Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/llSearching Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 2
getstatic com/nd/android/u/chat/R$id/fl_inner I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mResultListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$1/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mResultListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$2
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$2/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mResultListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$3
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$3/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 2
areturn
.limit locals 4
.limit stack 4
.end method

.method public onDestroy()V
aload 0
invokespecial android/support/v4/app/Fragment/onDestroy()V
getstatic com/nd/android/u/controller/observer/RequestResultNotifier/INSTANCE Lcom/nd/android/u/controller/observer/RequestResultNotifier;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/observer Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;
invokevirtual com/nd/android/u/controller/observer/RequestResultNotifier/unregistObserver(Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mGetPspInfoListTask Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mGetPspInfoListTask Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mGetPspInfoListTask Lcom/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask;
iconst_1
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment$GetPspInfoListTask/cancel(Z)Z
pop
L0:
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mKey Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mTempList Ljava/util/ArrayList;
return
.limit locals 1
.limit stack 2
.end method

.method public searchPspInfoByKey(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mKey Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
return
L0:
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mKey Ljava/lang/String;
aload 0
iconst_1
putfield com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/mCurrentPage I
aload 0
iconst_1
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInfoSearchResultFragment/loadPspInfoList(Z)V
return
.limit locals 2
.limit stack 2
.end method
