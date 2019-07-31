.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class public DoSendFlowersTask inner com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask outer com/android/u/weibo/flower/ui/dialog/SendFlowerDialog

.field public 'info' Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo;

.field public 'sendNum' I

.field final synthetic 'this$0' Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;

.field public 'totalNum' I

.field public 'type' I

.method public <init>(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/sendNum I
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/type I
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/totalNum I
return
.limit locals 2
.limit stack 2
.end method

.method public transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch java/lang/Exception from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L3 to L4 using L5
.catch com/android/u/weibo/weibo/controller/WeiBoException from L4 to L6 using L5
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
astore 4
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/sendNum I
L0:
aload 0
aload 1
iconst_0
aaload
ldc "num"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getInt(Ljava/lang/String;)I
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/sendNum I
L1:
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/sendNum I
ifgt L7
getstatic com/common/android/utils/task/genericTask/TaskResult/No_RESULT Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
L7:
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
astore 1
L3:
aload 0
aload 1
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
invokestatic com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/access$100(Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;)J
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/sendNum I
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/this$0 Lcom/android/u/weibo/flower/ui/dialog/SendFlowerDialog;
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mItemId J
iconst_0
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/sendBatchFlower(JIJI)Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo;
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/info Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo;
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/info Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo;
ifnull L4
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/info Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo;
getfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo/num I
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/totalNum I
L4:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L6:
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/info Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo;
ifnull L8
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/info Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo;
getfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo/backPackList Ljava/util/List;
ifnull L8
iconst_0
istore 2
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/info Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo;
getfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo/backPackList Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
L9:
iload 2
iload 3
if_icmpge L8
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/info Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo;
getfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo/backPackList Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/backpack/BackPackItem
getfield com/product/android/commonInterface/backpack/BackPackItem/itemtype I
sipush 20000
if_icmpne L10
aload 0
getfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog$DoSendFlowersTask/info Lcom/android/u/weibo/flower/business/bean/SendFlowerReturnInfo;
getfield com/android/u/weibo/flower/business/bean/SendFlowerReturnInfo/backPackList Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/backpack/BackPackItem
getfield com/product/android/commonInterface/backpack/BackPackItem/amount I
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/flowerNum I
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/flowerNum I
ifge L8
iconst_0
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/flowerNum I
L8:
aload 1
areturn
L5:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
aload 4
astore 1
goto L6
L10:
iload 2
iconst_1
iadd
istore 2
goto L9
.limit locals 5
.limit stack 8
.end method
