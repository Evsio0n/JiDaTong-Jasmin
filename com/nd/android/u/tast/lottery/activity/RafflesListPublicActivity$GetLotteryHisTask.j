.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$GetLotteryHisTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private GetLotteryHisTask inner com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$GetLotteryHisTask outer com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;

.method private <init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$GetLotteryHisTask/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$GetLotteryHisTask/<init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L1 to L3 using L4
L0:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$GetLotteryHisTask/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
invokestatic com/nd/android/u/tast/com/TaskComFactory/getInstance()Lcom/nd/android/u/tast/com/TaskComFactory;
invokevirtual com/nd/android/u/tast/com/TaskComFactory/getLotteryCom()Lcom/nd/android/u/tast/com/OapLotteryCom;
invokevirtual com/nd/android/u/tast/com/OapLotteryCom/getLoglist()Ljava/util/List;
putfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/mRafflesListPublic Ljava/util/List;
L1:
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$GetLotteryHisTask/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
invokestatic com/nd/android/u/tast/com/TaskComFactory/getInstance()Lcom/nd/android/u/tast/com/TaskComFactory;
invokevirtual com/nd/android/u/tast/com/TaskComFactory/getLotteryCom()Lcom/nd/android/u/tast/com/OapLotteryCom;
invokevirtual com/nd/android/u/tast/com/OapLotteryCom/getPrizeList()Ljava/util/List;
invokestatic com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/access$102(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;Ljava/util/List;)Ljava/util/List;
pop
L3:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L4:
astore 1
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$GetLotteryHisTask/message Ljava/lang/String;
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 3
.end method
