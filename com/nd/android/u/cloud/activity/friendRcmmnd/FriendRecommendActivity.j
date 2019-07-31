.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/widget/AbsListView$OnScrollListener
.inner class static synthetic inner com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$1
.inner class private GetFriendTask inner com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask outer com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity

.field private 'mFootView' Landroid/view/View;

.field private 'mHasMore' Z

.field private 'mIsGettingMore' Z

.field private 'mLastItem' I

.field private 'mListAdapter' Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter;

.field private 'mPage' I

.field private final 'mSize' I

.field private 'mTask' Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask;

.field private 'mivNocommon' Landroid/widget/ImageView;

.field private 'mlvFriends' Landroid/widget/ListView;

.field private 'mpbLoading' Landroid/widget/ProgressBar;

.field private 'mtvTip' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
bipush 20
putfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mSize I
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mPage I
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mLastItem I
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mHasMore Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mIsGettingMore Z
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mListAdapter Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mtvTip Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Landroid/widget/ProgressBar;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mpbLoading Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mlvFriends Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mivNocommon Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)Landroid/view/View;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mFootView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$702(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mIsGettingMore Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)I
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mPage I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$804(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;)I
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mPage I
iconst_1
iadd
istore 1
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mPage I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$902(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mHasMore Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private initAppByIntent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 2
aload 2
ifnull L0
aload 2
ldc "APPID"
iconst_0
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
istore 1
iload 1
ifle L0
aload 2
ldc "APPCODE"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 2
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 2
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 3
iload 1
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20066
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
L0:
return
.limit locals 4
.limit stack 4
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
ldc_w 2131624205
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mivNocommon Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131624206
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mtvTip Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624207
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mpbLoading Landroid/widget/ProgressBar;
aload 0
aload 0
ldc_w 2131624204
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mlvFriends Landroid/widget/ListView;
aload 0
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903440
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mFootView Landroid/view/View;
return
.limit locals 1
.limit stack 4
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
ldc_w 2131493645
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/setActivityTitle(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mlvFriends Landroid/widget/ListView;
aload 0
invokevirtual android/widget/ListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
new com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mlvFriends Landroid/widget/ListView;
invokespecial com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/<init>(Landroid/content/Context;Landroid/widget/ListView;)V
putfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mListAdapter Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mFootView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mlvFriends Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mFootView Landroid/view/View;
invokevirtual android/widget/ListView/addFooterView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mlvFriends Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mListAdapter Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 1
.limit stack 5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903073
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/setContentView(I)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/initAppByIntent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/initEvent()V
aload 0
invokestatic ims/utils/CommUtil/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mpbLoading Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mtvTip Landroid/widget/TextView;
ldc_w 2131493660
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mtvTip Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mivNocommon Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
ldc_w 2131494478
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L0:
aload 0
new com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/<init>(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$1;)V
putfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mTask Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mTask Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mTask Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mTask Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask;
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mTask Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask;
iconst_1
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mListAdapter Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/stopTask()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
aload 0
iload 2
iload 3
iadd
iconst_1
isub
putfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mLastItem I
return
.limit locals 5
.limit stack 3
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
iload 2
tableswitch 0
L0
default : L1
L1:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mLastItem I
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mListAdapter Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/getCount()I
if_icmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mHasMore Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mIsGettingMore Z
ifne L1
aload 0
new com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/<init>(Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity;Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$1;)V
putfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mTask Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity/mTask Lcom/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity$GetFriendTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method
