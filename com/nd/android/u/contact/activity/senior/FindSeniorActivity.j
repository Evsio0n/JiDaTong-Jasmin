.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/senior/FindSeniorActivity
.super com/product/android/ui/activity/HeaderActivity
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.signature "Lcom/product/android/ui/activity/HeaderActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ListView;>;"
.inner class inner com/nd/android/u/contact/activity/senior/FindSeniorActivity$1
.inner class inner com/nd/android/u/contact/activity/senior/FindSeniorActivity$2
.inner class inner com/nd/android/u/contact/activity/senior/FindSeniorActivity$3
.inner class inner com/nd/android/u/contact/activity/senior/FindSeniorActivity$4
.inner class public final GetSeniorListTask inner com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask outer com/nd/android/u/contact/activity/senior/FindSeniorActivity

.field private static final 'PAGE_SIZE' I = 20


.field private 'errorMsg' Ljava/lang/String;

.field private 'findSeniorAdapter' Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;

.field private 'getSeniorListTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'getSeniorListTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'isLoadAllData' Z

.field private 'listState' Lcom/nd/android/util/ListState;

.field private 'listView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field protected 'mFootView' Landroid/view/View;

.field private 'mFooterProgressBar' Landroid/view/View;

.field private 'mTvFootText' Landroid/widget/TextView;

.field private 'nDataCount' I

.field private 'noDataView' Landroid/widget/TextView;

.field private 'page' I

.field private 'refreshSeniorBroadcastReceiver' Landroid/content/BroadcastReceiver;

.field private 'seniorInfoListResult' Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/page I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/isLoadAllData Z
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/nDataCount I
aload 0
getstatic com/nd/android/util/ListState/NORMAL Lcom/nd/android/util/ListState;
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/listState Lcom/nd/android/util/ListState;
aload 0
new com/nd/android/u/contact/activity/senior/FindSeniorActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/<init>(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)V
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/getSeniorListTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/senior/FindSeniorActivity$4
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/FindSeniorActivity$4/<init>(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)V
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/refreshSeniorBroadcastReceiver Landroid/content/BroadcastReceiver;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/seniorInfoListResult Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/seniorInfoListResult Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/errorMsg Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/errorMsg Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/page I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/util/ListState;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/listState Lcom/nd/android/util/ListState;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/nDataCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/nDataCount I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$502(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/isLoadAllData Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/noDataView Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/findSeniorAdapter Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$702(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;)Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/findSeniorAdapter Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method private addLoadMoreFooterView()V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/mFooterProgressBar Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/mTvFootText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/str_common_foot_loading I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/mFootView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private cancelGetSeniorListTask()V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/getSeniorListTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/getSeniorListTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/getSeniorListTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private getSeniorData(Lcom/nd/android/util/ListState;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/getSeniorListTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/getSeniorListTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
getstatic com/nd/android/util/ListState/REFRESH Lcom/nd/android/util/ListState;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/listState Lcom/nd/android/util/ListState;
if_acmpne L1
aload 0
getstatic com/nd/android/u/contact/R$string/yx_list_refresh_data I
invokevirtual com/nd/android/u/contact/activity/senior/FindSeniorActivity/getString(I)Ljava/lang/String;
pop
L2:
return
L1:
getstatic com/nd/android/util/ListState/LOADMORE Lcom/nd/android/util/ListState;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/listState Lcom/nd/android/util/ListState;
if_acmpne L2
aload 0
getstatic com/nd/android/u/contact/R$string/yx_list_load_more_data I
invokevirtual com/nd/android/u/contact/activity/senior/FindSeniorActivity/getString(I)Ljava/lang/String;
pop
return
L0:
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/listState Lcom/nd/android/util/ListState;
getstatic com/nd/android/util/ListState/REFRESH Lcom/nd/android/util/ListState;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/listState Lcom/nd/android/util/ListState;
if_acmpne L3
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/page I
L4:
aload 0
new com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/<init>(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)V
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/getSeniorListTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/getSeniorListTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/getSeniorListTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/getSeniorListTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L3:
getstatic com/nd/android/util/ListState/LOADMORE Lcom/nd/android/util/ListState;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/listState Lcom/nd/android/util/ListState;
if_acmpne L4
aload 0
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/page I
iconst_1
iadd
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/page I
aload 0
invokespecial com/nd/android/u/contact/activity/senior/FindSeniorActivity/addLoadMoreFooterView()V
goto L4
.limit locals 2
.limit stack 5
.end method

.method private removeLoadMoreFooterView()V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/mFootView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private showLoadAllDataView()V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/mFooterProgressBar Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/mTvFootText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/str_common_foot_load_all_data I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/mFootView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/find_senior_list_view I
invokevirtual com/nd/android/u/contact/activity/senior/FindSeniorActivity/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/find_senior_no_data I
invokevirtual com/nd/android/u/contact/activity/senior/FindSeniorActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/noDataView Landroid/widget/TextView;
aload 0
aload 0
ldc "layout_inflater"
invokevirtual com/nd/android/u/contact/activity/senior/FindSeniorActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/android/u/contact/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/mFootView Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/mFootView Landroid/view/View;
getstatic com/nd/android/u/contact/R$drawable/group_manager_item_normal I
invokevirtual android/view/View/setBackgroundResource(I)V
aload 0
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/mFootView Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/text_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/mTvFootText Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/mFootView Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/progressBar_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/mFooterProgressBar Landroid/view/View;
return
.limit locals 1
.limit stack 4
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
new android/content/IntentFilter
dup
getstatic com/nd/android/util/BroadcastContact/REFRESH_SENIOR_ACTION Ljava/lang/String;
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
astore 1
aload 0
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/refreshSeniorBroadcastReceiver Landroid/content/BroadcastReceiver;
aload 1
invokevirtual com/nd/android/u/contact/activity/senior/FindSeniorActivity/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
pop
aload 0
getstatic com/nd/android/u/contact/R$string/yx_find_senior I
invokevirtual com/nd/android/u/contact/activity/senior/FindSeniorActivity/setActivityTitle(I)V
aload 0
new com/nd/android/u/contact/adapter/FindSeniorAdapter
dup
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/seniorInfoListResult Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 0
invokespecial com/nd/android/u/contact/adapter/FindSeniorAdapter/<init>(Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;Landroid/content/Context;)V
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/findSeniorAdapter Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/findSeniorAdapter Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;
new com/nd/android/u/contact/activity/senior/FindSeniorActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/FindSeniorActivity$1/<init>(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)V
invokevirtual com/nd/android/u/contact/adapter/FindSeniorAdapter/setOnItemClickListener(Lcom/nd/android/u/contact/adapter/FindSeniorAdapter$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/findSeniorAdapter Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/mFootView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/showRefreshView()V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setRefreshing(Z)V
L0:
return
.limit locals 2
.limit stack 5
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/nostra13/universalimageloader/core/assist/PauseOnScrollListener
dup
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
iconst_0
iconst_1
aconst_null
invokespecial com/nostra13/universalimageloader/core/assist/PauseOnScrollListener/<init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZLandroid/widget/AbsListView$OnScrollListener;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return
.limit locals 1
.limit stack 7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/contact/R$layout/activity_find_senior I
invokevirtual com/nd/android/u/contact/activity/senior/FindSeniorActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/FindSeniorActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/FindSeniorActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/FindSeniorActivity/initEvent()V
aload 0
getstatic com/nd/android/util/ListState/REFRESH Lcom/nd/android/util/ListState;
invokespecial com/nd/android/u/contact/activity/senior/FindSeniorActivity/getSeniorData(Lcom/nd/android/util/ListState;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial com/nd/android/u/contact/activity/senior/FindSeniorActivity/cancelGetSeniorListTask()V
aload 0
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/refreshSeniorBroadcastReceiver Landroid/content/BroadcastReceiver;
invokevirtual com/nd/android/u/contact/activity/senior/FindSeniorActivity/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onLastItemVisible()V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/findSeniorAdapter Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/findSeniorAdapter Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;
invokevirtual com/nd/android/u/contact/adapter/FindSeniorAdapter/getLastItem()Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/isLoadAllData Z
ifne L1
aload 0
getstatic com/nd/android/util/ListState/LOADMORE Lcom/nd/android/util/ListState;
invokespecial com/nd/android/u/contact/activity/senior/FindSeniorActivity/getSeniorData(Lcom/nd/android/util/ListState;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onLoadFinish()V
aload 0
invokespecial com/nd/android/u/contact/activity/senior/FindSeniorActivity/removeLoadMoreFooterView()V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/isLoadAllData Z
ifeq L0
aload 0
invokespecial com/nd/android/u/contact/activity/senior/FindSeniorActivity/showLoadAllDataView()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
aload 0
getstatic com/nd/android/util/ListState/NORMAL Lcom/nd/android/util/ListState;
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity/listState Lcom/nd/android/util/ListState;
return
.limit locals 1
.limit stack 2
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokestatic com/common/android/utils/ToastUtils/display(I)V
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/contact/activity/senior/FindSeniorActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/FindSeniorActivity$2/<init>(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)V
ldc2_w 300L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
L0:
aload 0
getstatic com/nd/android/util/ListState/REFRESH Lcom/nd/android/util/ListState;
invokespecial com/nd/android/u/contact/activity/senior/FindSeniorActivity/getSeniorData(Lcom/nd/android/util/ListState;)V
return
.limit locals 2
.limit stack 4
.end method
