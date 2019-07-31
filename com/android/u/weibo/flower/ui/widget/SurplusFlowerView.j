.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/ui/widget/SurplusFlowerView
.super android/widget/LinearLayout
.inner class inner com/android/u/weibo/flower/ui/widget/SurplusFlowerView$1
.inner class public LoadTask inner com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask outer com/android/u/weibo/flower/ui/widget/SurplusFlowerView

.field private 'bIsGetData' Z

.field private 'llContent' Landroid/widget/LinearLayout;

.field private 'llProgress' Landroid/widget/LinearLayout;

.field private 'mContext' Landroid/content/Context;

.field protected 'mLoadTask' Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask;

.field private 'mMyFlower' I

.field private 'mRequestMsgInfo' Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;

.field private 'mRequestMsgView' Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;

.field private 'mThankMsgInfo' Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;

.field private 'mThankMsgView' Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;

.field private 'mhandler' Landroid/os/Handler;

.field public 'myTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'pbProgress' Landroid/widget/ProgressBar;

.field private 'tvMyInfo' Landroid/widget/TextView;

.field private 'tvTip' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mMyFlower I
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/bIsGetData Z
aload 0
new com/android/u/weibo/flower/ui/widget/SurplusFlowerView$1
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/SurplusFlowerView$1/<init>(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)V
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/myTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)Landroid/widget/LinearLayout;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/llProgress Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)Landroid/widget/LinearLayout;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/llContent Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/tvTip Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mRequestMsgInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mRequestMsgInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)Landroid/content/Context;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mThankMsgInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mThankMsgInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)I
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mMyFlower I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;I)I
aload 0
iload 1
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mMyFlower I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$602(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;Z)Z
aload 0
iload 1
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/bIsGetData Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mRequestMsgView Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mThankMsgView Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)Landroid/widget/ProgressBar;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/pbProgress Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method public LoadData(Z)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mLoadTask Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mLoadTask Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask;
invokevirtual com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask
dup
aload 0
iload 1
invokespecial com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/<init>(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;Z)V
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mLoadTask Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mLoadTask Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/myTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mLoadTask Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 2
aastore
invokevirtual com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method

.method public getIsGetData()Z
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/bIsGetData Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMyFlower()I
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mMyFlower I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public init()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/purchase_flower I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/android/u/weibo/R$id/llprogress I
invokevirtual com/android/u/weibo/flower/ui/widget/SurplusFlowerView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/llProgress Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/pbprogress I
invokevirtual com/android/u/weibo/flower/ui/widget/SurplusFlowerView/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/pbProgress Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tvtip I
invokevirtual com/android/u/weibo/flower/ui/widget/SurplusFlowerView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/tvTip Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/llcontent I
invokevirtual com/android/u/weibo/flower/ui/widget/SurplusFlowerView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/llContent Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tvmyinfo I
invokevirtual com/android/u/weibo/flower/ui/widget/SurplusFlowerView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/tvMyInfo Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/requestMsgView I
invokevirtual com/android/u/weibo/flower/ui/widget/SurplusFlowerView/findViewById(I)Landroid/view/View;
checkcast com/android/u/weibo/flower/ui/widget/FlowerMsgSetView
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mRequestMsgView Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/thankMsgView I
invokevirtual com/android/u/weibo/flower/ui/widget/SurplusFlowerView/findViewById(I)Landroid/view/View;
checkcast com/android/u/weibo/flower/ui/widget/FlowerMsgSetView
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mThankMsgView Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mRequestMsgView Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/setUIStyle()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mThankMsgView Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/setUIStyle()V
aload 0
iconst_0
invokevirtual com/android/u/weibo/flower/ui/widget/SurplusFlowerView/LoadData(Z)V
return
.limit locals 1
.limit stack 4
.end method

.method public onDestroy()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mLoadTask Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mLoadTask Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask;
invokevirtual com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mLoadTask Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask;
iconst_1
invokevirtual com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/cancel(Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public onPause()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mRequestMsgView Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mRequestMsgView Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/onPause()V
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mThankMsgView Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
ifnull L1
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mThankMsgView Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokevirtual com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/onPause()V
L1:
return
.limit locals 1
.limit stack 1
.end method

.method public setMyInfo()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/tvMyInfo Landroid/widget/TextView;
ldc "%s%d"
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/my_flower_number I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
aastore
dup
iconst_1
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mMyFlower I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mhandler Landroid/os/Handler;
ifnull L0
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
bipush 100
putfield android/os/Message/what I
aload 1
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mMyFlower I
putfield android/os/Message/arg1 I
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mhandler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L0:
return
.limit locals 2
.limit stack 7
.end method

.method public setParentHandler(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView/mhandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method
