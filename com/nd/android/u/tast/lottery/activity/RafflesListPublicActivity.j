.bytecode 50.0
.class public synchronized com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity
.super android/app/Activity
.inner class inner com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$1
.inner class inner com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$2
.inner class inner com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3
.inner class private GetLotteryHisTask inner com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$GetLotteryHisTask outer com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity

.field private 'header_btn_lotterydraw' Landroid/widget/Button;

.field private 'header_btn_return' Landroid/widget/Button;

.field 'ldadd' Landroid/widget/LinearLayout;

.field private 'mGetLotHisTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mGetLotHisTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mLotPriseList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotPrise;>;"

.field public 'mRafflesListPublic' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/RafflesListPublic;>;"

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field 'sv' Landroid/widget/ScrollView;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/mLotPriseList Ljava/util/List;
aload 0
new com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3
dup
aload 0
invokespecial com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$3/<init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;)V
putfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/mGetLotHisTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/mLotPriseList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;Ljava/util/List;)Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/mLotPriseList Ljava/util/List;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/m_dialog Landroid/app/ProgressDialog;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method private findView()V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/header_btn_return I
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/header_btn_return Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/header_btn_lotterydraw I
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/header_btn_lotterydraw Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/record_scroll_view I
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ScrollView
putfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/sv Landroid/widget/ScrollView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/ldadd I
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/ldadd Landroid/widget/LinearLayout;
return
.limit locals 1
.limit stack 3
.end method

.method private init()V
aload 0
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/initData()V
return
.limit locals 1
.limit stack 1
.end method

.method private setClick()V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/header_btn_return Landroid/widget/Button;
new com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$1
dup
aload 0
invokespecial com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$1/<init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/header_btn_lotterydraw Landroid/widget/Button;
new com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$2
dup
aload 0
invokespecial com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$2/<init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public initData()V
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/mGetLotHisTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/mGetLotHisTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$GetLotteryHisTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$GetLotteryHisTask/<init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$1;)V
putfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/mGetLotHisTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/mGetLotHisTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/mGetLotHisTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/mGetLotHisTask Lcom/common/android/utils/task/genericTask/GenericTask;
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
getstatic com/nd/android/u/tasklib/R$layout/lottery_public_list I
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/setContentView(I)V
aload 0
invokespecial com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/findView()V
aload 0
invokespecial com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/setClick()V
aload 0
invokespecial com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/init()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial android/app/Activity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method
