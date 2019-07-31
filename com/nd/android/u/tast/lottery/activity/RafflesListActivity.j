.bytecode 50.0
.class public synchronized com/nd/android/u/tast/lottery/activity/RafflesListActivity
.super android/app/Activity
.inner class inner com/nd/android/u/tast/lottery/activity/RafflesListActivity$1
.inner class inner com/nd/android/u/tast/lottery/activity/RafflesListActivity$2
.inner class inner com/nd/android/u/tast/lottery/activity/RafflesListActivity$3
.inner class inner com/nd/android/u/tast/lottery/activity/RafflesListActivity$4
.inner class inner com/nd/android/u/tast/lottery/activity/RafflesListActivity$5
.inner class private GetLotteryHisTask inner com/nd/android/u/tast/lottery/activity/RafflesListActivity$GetLotteryHisTask outer com/nd/android/u/tast/lottery/activity/RafflesListActivity

.field private 'LotP' I

.field private 'bt' Landroid/widget/Button;

.field private 'header_btn_return' Landroid/widget/Button;

.field 'layout_listview' Landroid/widget/LinearLayout;

.field 'layout_msg' Landroid/widget/RelativeLayout;

.field private 'mAdapter' Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;

.field private 'mGetLotHisTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mGetLotHisTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mListView' Lcom/nd/android/u/tast/lottery/view/LotteryListview;

.field private 'mRaffList' Lcom/product/android/commonInterface/task/RafflesList;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'moreView' Landroid/view/View;

.field 'myHandler' Landroid/os/Handler;

.field private 'pg' Landroid/widget/ProgressBar;

.field private 'size' I

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
new com/product/android/commonInterface/task/RafflesList
dup
invokespecial com/product/android/commonInterface/task/RafflesList/<init>()V
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mRaffList Lcom/product/android/commonInterface/task/RafflesList;
aload 0
iconst_0
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/LotP I
aload 0
bipush 20
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/size I
aload 0
new com/nd/android/u/tast/lottery/activity/RafflesListActivity$4
dup
aload 0
invokespecial com/nd/android/u/tast/lottery/activity/RafflesListActivity$4/<init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)V
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/myHandler Landroid/os/Handler;
aload 0
new com/nd/android/u/tast/lottery/activity/RafflesListActivity$5
dup
aload 0
invokespecial com/nd/android/u/tast/lottery/activity/RafflesListActivity$5/<init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)V
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mGetLotHisTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Landroid/widget/ProgressBar;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/pg Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/bt Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Lcom/nd/android/u/tast/lottery/view/LotteryListview;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mListView Lcom/nd/android/u/tast/lottery/view/LotteryListview;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mAdapter Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mAdapter Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Landroid/view/View;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/moreView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Lcom/product/android/commonInterface/task/RafflesList;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mRaffList Lcom/product/android/commonInterface/task/RafflesList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;Lcom/product/android/commonInterface/task/RafflesList;)Lcom/product/android/commonInterface/task/RafflesList;
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mRaffList Lcom/product/android/commonInterface/task/RafflesList;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)I
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/LotP I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$702(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/LotP I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)I
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/size I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$902(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/m_dialog Landroid/app/ProgressDialog;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method private findView()V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/header_btn_return I
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/header_btn_return Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/record_list_view I
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/tast/lottery/view/LotteryListview
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mListView Lcom/nd/android/u/tast/lottery/view/LotteryListview;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/layout_msg I
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/layout_msg Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/layout_listview I
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/layout_listview Landroid/widget/LinearLayout;
aload 0
aload 0
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListActivity/getLayoutInflater()Landroid/view/LayoutInflater;
getstatic com/nd/android/u/tasklib/R$layout/lottert_list_loadmore I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/moreView Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/moreView Landroid/view/View;
getstatic com/nd/android/u/tasklib/R$id/bt_load I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/bt Landroid/widget/Button;
aload 0
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/moreView Landroid/view/View;
getstatic com/nd/android/u/tasklib/R$id/pg I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/pg Landroid/widget/ProgressBar;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mListView Lcom/nd/android/u/tast/lottery/view/LotteryListview;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/moreView Landroid/view/View;
invokevirtual com/nd/android/u/tast/lottery/view/LotteryListview/addFooterView(Landroid/view/View;)V
return
.limit locals 1
.limit stack 4
.end method

.method private setClick()V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/header_btn_return Landroid/widget/Button;
new com/nd/android/u/tast/lottery/activity/RafflesListActivity$1
dup
aload 0
invokespecial com/nd/android/u/tast/lottery/activity/RafflesListActivity$1/<init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/bt Landroid/widget/Button;
new com/nd/android/u/tast/lottery/activity/RafflesListActivity$2
dup
aload 0
invokespecial com/nd/android/u/tast/lottery/activity/RafflesListActivity$2/<init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mListView Lcom/nd/android/u/tast/lottery/view/LotteryListview;
new com/nd/android/u/tast/lottery/activity/RafflesListActivity$3
dup
aload 0
invokespecial com/nd/android/u/tast/lottery/activity/RafflesListActivity$3/<init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)V
invokevirtual com/nd/android/u/tast/lottery/view/LotteryListview/setFilpperListener(Lcom/nd/android/u/tast/lottery/view/LotteryListview$FilpperListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public initData()V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mGetLotHisTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mGetLotHisTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/tast/lottery/activity/RafflesListActivity$GetLotteryHisTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/tast/lottery/activity/RafflesListActivity$GetLotteryHisTask/<init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity$1;)V
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mGetLotHisTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mGetLotHisTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mGetLotHisTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mGetLotHisTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/tasklib/R$layout/lottery_list I
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListActivity/setContentView(I)V
aload 0
invokespecial com/nd/android/u/tast/lottery/activity/RafflesListActivity/findView()V
aload 0
invokespecial com/nd/android/u/tast/lottery/activity/RafflesListActivity/setClick()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial android/app/Activity/onDestroy()V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mGetLotHisTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mGetLotHisTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mGetLotHisTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mAdapter Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
ifnull L1
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/mAdapter Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/releaseTask()V
L1:
return
.limit locals 1
.limit stack 2
.end method

.method protected onResume()V
aload 0
invokespecial android/app/Activity/onResume()V
aload 0
iconst_0
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity/LotP I
aload 0
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListActivity/initData()V
return
.limit locals 1
.limit stack 2
.end method
