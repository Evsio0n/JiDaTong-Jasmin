.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/activity/RafflesListActivity$GetLotteryHisTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private GetLotteryHisTask inner com/nd/android/u/tast/lottery/activity/RafflesListActivity$GetLotteryHisTask outer com/nd/android/u/tast/lottery/activity/RafflesListActivity

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;

.method private <init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$GetLotteryHisTask/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/tast/lottery/activity/RafflesListActivity$GetLotteryHisTask/<init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$GetLotteryHisTask/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/com/TaskComFactory/getInstance()Lcom/nd/android/u/tast/com/TaskComFactory;
invokevirtual com/nd/android/u/tast/com/TaskComFactory/getLotteryCom()Lcom/nd/android/u/tast/com/OapLotteryCom;
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$GetLotteryHisTask/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$700(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)I
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListActivity$GetLotteryHisTask/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$800(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;)I
iconst_0
invokevirtual com/nd/android/u/tast/com/OapLotteryCom/getRecordRafflesList(III)Lcom/product/android/commonInterface/task/RafflesList;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListActivity/access$602(Lcom/nd/android/u/tast/lottery/activity/RafflesListActivity;Lcom/product/android/commonInterface/task/RafflesList;)Lcom/product/android/commonInterface/task/RafflesList;
pop
L1:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 5
.end method
