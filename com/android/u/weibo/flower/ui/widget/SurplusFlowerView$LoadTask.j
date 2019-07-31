.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class public LoadTask inner com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask outer com/android/u/weibo/flower/ui/widget/SurplusFlowerView

.field public 'monlyGetMoney' Z

.field final synthetic 'this$0' Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;

.method public <init>(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;Z)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/this$0 Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/monlyGetMoney Z
aload 0
iload 2
putfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/monlyGetMoney Z
return
.limit locals 3
.limit stack 2
.end method

.method public transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/this$0 Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/this$0 Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
invokestatic com/android/u/weibo/flower/ui/widget/SurplusFlowerView/access$300(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
iconst_1
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getFlowerMessage(JI)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
invokestatic com/android/u/weibo/flower/ui/widget/SurplusFlowerView/access$202(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
pop
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/this$0 Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/this$0 Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
invokestatic com/android/u/weibo/flower/ui/widget/SurplusFlowerView/access$300(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
iconst_2
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getFlowerMessage(JI)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
invokestatic com/android/u/weibo/flower/ui/widget/SurplusFlowerView/access$402(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
pop
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
astore 2
L1:
aload 2
astore 1
L3:
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/monlyGetMoney Z
ifne L4
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/this$0 Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/this$0 Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
invokestatic com/android/u/weibo/flower/ui/widget/SurplusFlowerView/access$300(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getFlowerLeft()I
invokestatic com/android/u/weibo/flower/ui/widget/SurplusFlowerView/access$502(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;I)I
pop
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/this$0 Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
invokestatic com/android/u/weibo/flower/ui/widget/SurplusFlowerView/access$500(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)I
iconst_m1
if_icmpne L5
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/this$0 Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
iconst_0
invokestatic com/android/u/weibo/flower/ui/widget/SurplusFlowerView/access$502(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;I)I
pop
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L5:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L4:
aload 1
areturn
L2:
astore 2
aload 2
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L3
.limit locals 3
.limit stack 5
.end method

.method protected onPreExecute()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/monlyGetMoney Z
ifne L0
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/this$0 Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
invokestatic com/android/u/weibo/flower/ui/widget/SurplusFlowerView/access$000(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/this$0 Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
invokestatic com/android/u/weibo/flower/ui/widget/SurplusFlowerView/access$100(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L1:
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/onPreExecute()V
return
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/this$0 Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
invokestatic com/android/u/weibo/flower/ui/widget/SurplusFlowerView/access$000(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/SurplusFlowerView$LoadTask/this$0 Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
invokestatic com/android/u/weibo/flower/ui/widget/SurplusFlowerView/access$100(Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
goto L1
.limit locals 1
.limit stack 2
.end method
