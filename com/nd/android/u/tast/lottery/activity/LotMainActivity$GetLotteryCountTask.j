.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryCountTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private GetLotteryCountTask inner com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryCountTask outer com/nd/android/u/tast/lottery/activity/LotMainActivity

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;

.method private <init>(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryCountTask/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;Lcom/nd/android/u/tast/lottery/activity/LotMainActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryCountTask/<init>(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
L0:
invokestatic com/nd/android/u/tast/com/TaskComFactory/getInstance()Lcom/nd/android/u/tast/com/TaskComFactory;
invokevirtual com/nd/android/u/tast/com/TaskComFactory/getLotteryCom()Lcom/nd/android/u/tast/com/OapLotteryCom;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryCountTask/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$900(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
invokevirtual com/nd/android/u/tast/com/OapLotteryCom/getItemByType(I)I
istore 2
L1:
iload 2
ifle L4
L3:
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryCountTask/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
iload 2
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1402(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)I
pop
L4:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 3
.limit stack 2
.end method
