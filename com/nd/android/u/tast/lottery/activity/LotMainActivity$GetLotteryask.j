.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private GetLotteryask inner com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryask outer com/nd/android/u/tast/lottery/activity/LotMainActivity

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;

.method private <init>(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryask/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;Lcom/nd/android/u/tast/lottery/activity/LotMainActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryask/<init>(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method private initLotUsersListFromRafflesList(Lcom/product/android/commonInterface/task/RafflesList;)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryask/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$2000(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aconst_null
astore 3
iconst_0
istore 2
L0:
iload 2
aload 1
invokevirtual com/product/android/commonInterface/task/RafflesList/size()I
if_icmpge L1
aload 1
iload 2
invokevirtual com/product/android/commonInterface/task/RafflesList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/task/Raffles
astore 5
iload 2
iconst_2
irem
ifne L2
new com/nd/android/u/tast/lottery/dataStructure/LotUsersData
dup
invokespecial com/nd/android/u/tast/lottery/dataStructure/LotUsersData/<init>()V
astore 4
aload 4
new com/nd/android/u/tast/lottery/dataStructure/LotUserData
dup
invokespecial com/nd/android/u/tast/lottery/dataStructure/LotUserData/<init>()V
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/setLotUser1(Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;)V
aload 4
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser1()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 5
invokevirtual com/product/android/commonInterface/task/Raffles/getId()J
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setId(J)V
aload 4
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser1()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 5
invokevirtual com/product/android/commonInterface/task/Raffles/getUId()J
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setUid(J)V
aload 4
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser1()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 5
invokevirtual com/product/android/commonInterface/task/Raffles/getUserName()Ljava/lang/String;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setUser_name(Ljava/lang/String;)V
aload 4
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser1()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 5
invokevirtual com/product/android/commonInterface/task/Raffles/getRank()I
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setRank(I)V
aload 4
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser1()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 5
invokevirtual com/product/android/commonInterface/task/Raffles/getPrize_name()Ljava/lang/String;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setPrize_name(Ljava/lang/String;)V
aload 4
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser1()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 5
invokevirtual com/product/android/commonInterface/task/Raffles/getCreate_dt()Ljava/lang/String;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setCreate_dt(Ljava/lang/String;)V
aload 4
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser1()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 5
invokevirtual com/product/android/commonInterface/task/Raffles/getPrize_id()J
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setPrize_id(J)V
aload 4
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser1()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 5
invokevirtual com/product/android/commonInterface/task/Raffles/getFlag()I
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setFlag(I)V
aload 4
astore 3
iload 2
aload 1
invokevirtual com/product/android/commonInterface/task/RafflesList/size()I
iconst_1
isub
if_icmpne L3
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryask/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$2000(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Ljava/util/List;
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
astore 3
L3:
iload 2
iconst_1
iadd
istore 2
goto L0
L2:
aload 3
ifnonnull L4
L1:
return
L4:
aload 3
new com/nd/android/u/tast/lottery/dataStructure/LotUserData
dup
invokespecial com/nd/android/u/tast/lottery/dataStructure/LotUserData/<init>()V
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/setLotUser2(Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;)V
aload 3
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser2()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 5
invokevirtual com/product/android/commonInterface/task/Raffles/getId()J
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setId(J)V
aload 3
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser2()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 5
invokevirtual com/product/android/commonInterface/task/Raffles/getUId()J
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setUid(J)V
aload 3
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser2()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 5
invokevirtual com/product/android/commonInterface/task/Raffles/getUserName()Ljava/lang/String;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setUser_name(Ljava/lang/String;)V
aload 3
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser2()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 5
invokevirtual com/product/android/commonInterface/task/Raffles/getRank()I
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setRank(I)V
aload 3
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser2()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 5
invokevirtual com/product/android/commonInterface/task/Raffles/getPrize_name()Ljava/lang/String;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setPrize_name(Ljava/lang/String;)V
aload 3
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser2()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 5
invokevirtual com/product/android/commonInterface/task/Raffles/getCreate_dt()Ljava/lang/String;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setCreate_dt(Ljava/lang/String;)V
aload 3
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser2()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 5
invokevirtual com/product/android/commonInterface/task/Raffles/getPrize_id()J
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setPrize_id(J)V
aload 3
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser2()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 5
invokevirtual com/product/android/commonInterface/task/Raffles/getFlag()I
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/setFlag(I)V
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryask/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$2000(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Ljava/util/List;
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L3
.limit locals 6
.limit stack 3
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L1 to L3 using L4
.catch org/json/JSONException from L1 to L3 using L5
L0:
invokestatic com/nd/android/u/tast/com/TaskComFactory/getInstance()Lcom/nd/android/u/tast/com/TaskComFactory;
invokevirtual com/nd/android/u/tast/com/TaskComFactory/getLotteryCom()Lcom/nd/android/u/tast/com/OapLotteryCom;
invokevirtual com/nd/android/u/tast/com/OapLotteryCom/getRecordMarqueeRaffles()Lcom/product/android/commonInterface/task/RafflesList;
astore 1
aload 1
invokevirtual com/product/android/commonInterface/task/RafflesList/size()I
ifle L1
aload 0
aload 1
invokespecial com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryask/initLotUsersListFromRafflesList(Lcom/product/android/commonInterface/task/RafflesList;)V
L1:
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryask/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/com/TaskComFactory/getInstance()Lcom/nd/android/u/tast/com/TaskComFactory;
invokevirtual com/nd/android/u/tast/com/TaskComFactory/getLotteryCom()Lcom/nd/android/u/tast/com/OapLotteryCom;
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryask/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1200(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)Ljava/util/List;
invokevirtual com/nd/android/u/tast/com/OapLotteryCom/getLotList(Ljava/util/List;)I
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1002(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;I)I
pop
L3:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
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
putfield com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryask/message Ljava/lang/String;
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L1
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
putfield com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryask/message Ljava/lang/String;
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L5:
astore 1
aload 0
aload 1
invokevirtual org/json/JSONException/getMessage()Ljava/lang/String;
putfield com/nd/android/u/tast/lottery/activity/LotMainActivity$GetLotteryask/message Ljava/lang/String;
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 3
.end method
