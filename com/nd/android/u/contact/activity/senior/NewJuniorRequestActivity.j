.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity
.super com/product/android/ui/activity/HeaderActivity
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.implements android/widget/AdapterView$OnItemClickListener
.signature "Lcom/product/android/ui/activity/HeaderActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ListView;>;Landroid/widget/AdapterView$OnItemClickListener;"
.inner class inner com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$1
.inner class inner com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2
.inner class inner com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$3
.inner class inner com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$4
.inner class inner com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$5
.inner class public final AgreeJuniorRequestTask inner com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask outer com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity
.inner class public final ClearJuniorRequestTask inner com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$ClearJuniorRequestTask outer com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity
.inner class public final GetJuniorListTask inner com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask outer com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity

.field private static final 'PAGE_SIZE' I = 20


.field private static 'REQUEST_CODE_CLEAR' I

.field private 'agreeJuniorRequestTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'agreeJuniorRequestTasks' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Lcom/common/android/utils/task/genericTask/GenericTask;>;"

.field private 'clearJuniorRequestTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'clearJuniorRequestTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'getJuniorListTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'getJuniorRequestTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'isLoadAllData' Z

.field private 'listState' Lcom/nd/android/util/ListState;

.field private 'loadingDialog' Landroid/app/ProgressDialog;

.field private 'mAdapter' Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;

.field private 'mAgreeList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/SeniorInfo;>;"

.field protected 'mFootView' Landroid/view/View;

.field private 'mFooterProgressBar' Landroid/view/View;

.field private 'mIsAgree' Z

.field private 'mListView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private 'mTvFootText' Landroid/widget/TextView;

.field private 'nDataCount' I

.field private 'noDataView' Landroid/widget/TextView;

.field private 'page' I

.field private 'seniorInfoListResult' Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;

.method static <clinit>()V
iconst_1
putstatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/REQUEST_CODE_CLEAR I
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/page I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/nDataCount I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/isLoadAllData Z
aload 0
getstatic com/nd/android/util/ListState/NORMAL Lcom/nd/android/util/ListState;
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/listState Lcom/nd/android/util/ListState;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/agreeJuniorRequestTasks Ljava/util/HashMap;
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mIsAgree Z
aload 0
new com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2/<init>(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)V
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getJuniorListTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$3/<init>(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)V
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/agreeJuniorRequestTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$4
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$4/<init>(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)V
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/clearJuniorRequestTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/seniorInfoListResult Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/seniorInfoListResult Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Ljava/lang/String;Lcom/nd/android/u/contact/dataStructure/SeniorInfo;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/agreeJuniorRequest(Ljava/lang/String;Lcom/nd/android/u/contact/dataStructure/SeniorInfo;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$1000(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;I)V
aload 0
iload 1
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/setRightImgBtnVisiable(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/removeLoadMoreFooterView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/onLoadFinish()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/showLoading(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1402(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mIsAgree Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1500(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/hideLoading()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/page I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/util/ListState;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/listState Lcom/nd/android/util/ListState;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/nDataCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/nDataCount I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$502(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/isLoadAllData Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mAgreeList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mAgreeList Ljava/util/ArrayList;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/noDataView Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;I)V
aload 0
iload 1
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/setRightImgBtnVisiable(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mAdapter Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method private addLoadMoreFooterView()V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mFooterProgressBar Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mTvFootText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/str_common_foot_loading I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mFootView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private agreeJuniorRequest(Ljava/lang/String;Lcom/nd/android/u/contact/dataStructure/SeniorInfo;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/agreeJuniorRequestTasks Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/agreeJuniorRequestTasks Ljava/util/HashMap;
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/common/android/utils/task/genericTask/GenericTask
astore 3
aload 3
ifnull L0
aload 3
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getstatic com/nd/android/u/contact/R$string/yx_agree_one_junior_request I
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/nickname Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
return
L0:
new com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask
dup
aload 0
aload 2
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask/<init>(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Lcom/nd/android/u/contact/dataStructure/SeniorInfo;)V
astore 2
aload 2
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/agreeJuniorRequestTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
aload 2
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
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/agreeJuniorRequestTasks Ljava/util/HashMap;
aload 1
aload 2
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 4
.limit stack 6
.end method

.method private cancelAgreeJuniorRequestTasks()V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/agreeJuniorRequestTasks Ljava/util/HashMap;
invokevirtual java/util/HashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast com/common/android/utils/task/genericTask/GenericTask
astore 2
aload 2
ifnull L0
aload 2
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 2
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
goto L0
L1:
return
.limit locals 3
.limit stack 2
.end method

.method private cancelClearJuniorRequestTask()V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/clearJuniorRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/clearJuniorRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/clearJuniorRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private cancelGetJuniorRequestTask()V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getJuniorRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getJuniorRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getJuniorRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private clearJuniorRequest()V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/clearJuniorRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/clearJuniorRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
getstatic com/nd/android/u/contact/R$string/yx_clearing_junior_request I
invokestatic com/common/android/utils/ToastUtils/display(I)V
L1:
aload 0
new com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$ClearJuniorRequestTask
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$ClearJuniorRequestTask/<init>(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)V
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/clearJuniorRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/clearJuniorRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/clearJuniorRequestTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/clearJuniorRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method private getJuniorData(Lcom/nd/android/util/ListState;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getJuniorRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getJuniorRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
ldc ""
astore 1
getstatic com/nd/android/util/ListState/REFRESH Lcom/nd/android/util/ListState;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/listState Lcom/nd/android/util/ListState;
if_acmpne L1
aload 0
getstatic com/nd/android/u/contact/R$string/yx_list_refresh_data I
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getString(I)Ljava/lang/String;
astore 1
L2:
aload 1
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
return
L1:
getstatic com/nd/android/util/ListState/LOADMORE Lcom/nd/android/util/ListState;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/listState Lcom/nd/android/util/ListState;
if_acmpne L2
aload 0
getstatic com/nd/android/u/contact/R$string/yx_list_load_more_data I
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getString(I)Ljava/lang/String;
astore 1
goto L2
L0:
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/listState Lcom/nd/android/util/ListState;
getstatic com/nd/android/util/ListState/REFRESH Lcom/nd/android/util/ListState;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/listState Lcom/nd/android/util/ListState;
if_acmpne L3
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/page I
L4:
aload 0
new com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/<init>(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)V
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getJuniorRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getJuniorRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getJuniorListTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getJuniorRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
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
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/listState Lcom/nd/android/util/ListState;
if_acmpne L4
aload 0
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/page I
iconst_1
iadd
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/page I
aload 0
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/addLoadMoreFooterView()V
goto L4
.limit locals 2
.limit stack 5
.end method

.method private hideLoading()V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/loadingDialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/loadingDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/loadingDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method private onLoadFinish()V
aload 0
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/removeLoadMoreFooterView()V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/isLoadAllData Z
ifeq L0
aload 0
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/showLoadAllDataView()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
aload 0
getstatic com/nd/android/util/ListState/NORMAL Lcom/nd/android/util/ListState;
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/listState Lcom/nd/android/util/ListState;
return
.limit locals 1
.limit stack 2
.end method

.method private removeLoadMoreFooterView()V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mFootView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private showLoadAllDataView()V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mFooterProgressBar Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mTvFootText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/str_common_foot_load_all_data I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mFootView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private showLoading(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/loadingDialog Landroid/app/ProgressDialog;
ifnonnull L0
aload 0
aload 0
ldc ""
aload 1
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/loadingDialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/loadingDialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
L0:
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/loadingDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
return
.limit locals 2
.limit stack 5
.end method

.method public finish()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "isAgree"
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mIsAgree Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 1
ldc "agreeList"
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mAgreeList Ljava/util/ArrayList;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 0
iconst_m1
aload 1
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/setResult(ILandroid/content/Intent;)V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/finish()V
return
.limit locals 2
.limit stack 3
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/new_junior_request_list_view I
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/new_junior_request_no_data I
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/noDataView Landroid/widget/TextView;
aload 0
aload 0
ldc "layout_inflater"
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/android/u/contact/R$layout/list_view_footer I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mFootView Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mFootView Landroid/view/View;
getstatic com/nd/android/u/contact/R$drawable/group_manager_item_normal I
invokevirtual android/view/View/setBackgroundResource(I)V
aload 0
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mFootView Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/text_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mTvFootText Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mFootView Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/progressBar_footer I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mFooterProgressBar Landroid/view/View;
return
.limit locals 1
.limit stack 4
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getstatic com/nd/android/u/contact/R$string/yx_new_junior_request I
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/setActivityTitle(I)V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$drawable/yx_new_junior_apply_clear I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/setRightImgBtnDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
iconst_0
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/setRightImgBtnVisiable(I)V
aload 0
new com/nd/android/u/contact/adapter/NewJuniorRequestAdapter
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/NewJuniorRequestAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mAdapter Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mAdapter Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/seniorInfoListResult Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
invokevirtual com/nd/android/u/contact/adapter/NewJuniorRequestAdapter/setDatas(Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mAdapter Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mFootView Landroid/view/View;
aconst_null
iconst_0
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/showRefreshView()V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setRefreshing(Z)V
L0:
return
.limit locals 1
.limit stack 4
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/nostra13/universalimageloader/core/assist/PauseOnScrollListener
dup
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
iconst_0
iconst_1
aconst_null
invokespecial com/nostra13/universalimageloader/core/assist/PauseOnScrollListener/<init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZLandroid/widget/AbsListView$OnScrollListener;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mAdapter Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;
new com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$1/<init>(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)V
invokevirtual com/nd/android/u/contact/adapter/NewJuniorRequestAdapter/setOnItemClickListener(Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter$OnItemClickListener;)V
return
.limit locals 1
.limit stack 7
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
iload 2
iconst_m1
if_icmpne L0
iload 1
getstatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/REQUEST_CODE_CLEAR I
if_icmpne L0
aload 0
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/clearJuniorRequest()V
L0:
return
.limit locals 4
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/contact/R$layout/activity_new_junior_request I
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/initEvent()V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/noDataView Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/noDataView Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
L0:
aload 0
getstatic com/nd/android/util/ListState/REFRESH Lcom/nd/android/util/ListState;
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getJuniorData(Lcom/nd/android/util/ListState;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/cancelClearJuniorRequestTask()V
aload 0
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/cancelGetJuniorRequestTask()V
aload 0
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/cancelAgreeJuniorRequestTasks()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 1
invokevirtual android/widget/AdapterView/getAdapter()Landroid/widget/Adapter;
iload 3
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/SeniorInfo
astore 1
aload 1
ifnonnull L0
return
L0:
aload 0
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/uid J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 6
.limit stack 3
.end method

.method public onLastItemVisible()V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mAdapter Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/mAdapter Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;
invokevirtual com/nd/android/u/contact/adapter/NewJuniorRequestAdapter/getLastItem()Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/isLoadAllData Z
ifne L1
aload 0
getstatic com/nd/android/util/ListState/LOADMORE Lcom/nd/android/util/ListState;
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getJuniorData(Lcom/nd/android/util/ListState;)V
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
new com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$5
dup
aload 0
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$5/<init>(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)V
ldc2_w 300L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
L0:
aload 0
getstatic com/nd/android/util/ListState/REFRESH Lcom/nd/android/util/ListState;
invokespecial com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getJuniorData(Lcom/nd/android/util/ListState;)V
return
.limit locals 2
.limit stack 4
.end method

.method protected rightBtnHandle()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
aload 0
ldc com/nd/android/u/contact/activity/senior/ClearNewRequestActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
aload 1
getstatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/REQUEST_CODE_CLEAR I
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 2
.limit stack 3
.end method
