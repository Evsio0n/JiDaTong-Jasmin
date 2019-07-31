.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$LotteryProcessTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private LotteryProcessTask inner com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$LotteryProcessTask outer com/nd/android/u/tast/lottery/adapter/RafflesListAdapter

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;

.method private <init>(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$LotteryProcessTask/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$LotteryProcessTask/<init>(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
iconst_0
istore 2
iconst_0
istore 4
L0:
aload 1
iconst_0
aaload
ldc "type"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getInt(Ljava/lang/String;)I
istore 3
L1:
iload 3
istore 2
L3:
aload 1
iconst_0
aaload
ldc "pos"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getInt(Ljava/lang/String;)I
istore 5
L4:
iload 5
istore 2
iload 3
istore 4
iload 2
istore 3
L5:
iload 3
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$LotteryProcessTask/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/mRafflesList Lcom/product/android/commonInterface/task/RafflesList;
invokevirtual com/product/android/commonInterface/task/RafflesList/size()I
if_icmplt L6
getstatic com/common/android/utils/task/genericTask/TaskResult/IO_ERROR Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
iload 4
istore 3
iload 2
istore 4
goto L5
L6:
new com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$lotHisData
dup
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$LotteryProcessTask/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
aconst_null
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$lotHisData/<init>(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter$1;)V
astore 1
iload 4
iconst_1
if_icmpne L7
aload 1
iconst_1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$lotHisData/type I
aload 1
iload 3
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$lotHisData/pos I
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$LotteryProcessTask/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
iload 3
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/getItem(I)Lcom/product/android/commonInterface/task/Raffles;
pop
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$LotteryProcessTask/paraData Ljava/lang/Object;
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L7:
iload 4
iconst_2
if_icmpne L8
aload 1
iconst_2
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$lotHisData/type I
aload 1
iload 3
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$lotHisData/pos I
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$LotteryProcessTask/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
iload 3
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/getItem(I)Lcom/product/android/commonInterface/task/Raffles;
astore 6
invokestatic com/nd/android/u/tast/com/TaskComFactory/getInstance()Lcom/nd/android/u/tast/com/TaskComFactory;
invokevirtual com/nd/android/u/tast/com/TaskComFactory/getLotteryCom()Lcom/nd/android/u/tast/com/OapLotteryCom;
aload 6
invokevirtual com/product/android/commonInterface/task/Raffles/getId()J
invokevirtual com/nd/android/u/tast/com/OapLotteryCom/delLotHis(J)I
sipush 200
if_icmpne L9
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$LotteryProcessTask/paraData Ljava/lang/Object;
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L9:
aload 1
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$LotteryProcessTask/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
getstatic com/nd/android/u/tasklib/R$string/lot_his_delete_fail I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$lotHisData/message Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$LotteryProcessTask/paraData Ljava/lang/Object;
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L8:
getstatic com/common/android/utils/task/genericTask/TaskResult/IO_ERROR Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 7
.limit stack 4
.end method
