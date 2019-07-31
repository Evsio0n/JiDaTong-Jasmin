.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnClickListener
.inner class static synthetic inner com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$1
.inner class private GetFriendTask inner com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask outer com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity

.field private 'mListAdapter' Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter;

.field private 'mTask' Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask;

.field private 'mivFresh' Landroid/widget/ImageView;

.field private 'mivNocommon' Landroid/widget/ImageView;

.field private 'mlvFriends' Landroid/widget/ListView;

.field private 'mpbLoading' Landroid/widget/ProgressBar;

.field private 'mtvTip' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;)Landroid/widget/ProgressBar;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mpbLoading Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mtvTip Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mivNocommon Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mlvFriends Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;)Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mListAdapter Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
ldc_w 2131624205
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mivNocommon Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131624206
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mtvTip Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624207
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mpbLoading Landroid/widget/ProgressBar;
aload 0
aload 0
ldc_w 2131624204
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mlvFriends Landroid/widget/ListView;
aload 0
aload 0
ldc_w 2131625528
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mivFresh Landroid/widget/ImageView;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
ldc_w 2131493661
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/setActivityTitle(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mivFresh Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mivFresh Landroid/widget/ImageView;
ldc_w 2130838003
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
new com/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mlvFriends Landroid/widget/ListView;
invokespecial com/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter/<init>(Landroid/content/Context;Landroid/widget/ListView;)V
putfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mListAdapter Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mlvFriends Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mListAdapter Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mivFresh Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 5
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131625528
if_icmpne L0
aload 0
invokestatic ims/utils/CommUtil/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L1
ldc_w 2131494478
invokestatic com/common/android/utils/ToastUtils/display(I)V
L0:
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mTask Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask;
ifnull L2
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mTask Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask;
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpeq L0
L2:
aload 0
new com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/<init>(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$1;)V
putfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mTask Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mTask Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903073
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/setContentView(I)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/initEvent()V
aload 0
invokestatic ims/utils/CommUtil/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mpbLoading Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mtvTip Landroid/widget/TextView;
ldc_w 2131493659
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mtvTip Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mivNocommon Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
ldc_w 2131494478
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L0:
aload 0
new com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/<init>(Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity;Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$1;)V
putfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mTask Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask;
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mTask Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mTask Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mTask Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask;
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mTask Lcom/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask;
iconst_1
invokevirtual com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity$GetFriendTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity/mListAdapter Lcom/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter/stopTask()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method
