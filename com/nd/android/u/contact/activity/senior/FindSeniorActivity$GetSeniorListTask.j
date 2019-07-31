.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class public final GetSeniorListTask inner com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask outer com/nd/android/u/contact/activity/senior/FindSeniorActivity

.field 'errCode' I

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;

.method public <init>(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/errCode I
aload 1
aload 1
getstatic com/nd/android/u/contact/R$string/yx_failure_get_data I
invokevirtual com/nd/android/u/contact/activity/senior/FindSeniorActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$102(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Ljava/lang/String;)Ljava/lang/String;
pop
return
.limit locals 2
.limit stack 3
.end method

.method public transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L1 to L3 using L2
.catch com/common/android/utils/http/HttpException from L4 to L5 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L6 to L7 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
.catch com/common/android/utils/http/HttpException from L9 to L10 using L2
.catch com/common/android/utils/http/HttpException from L11 to L12 using L2
.catch com/common/android/utils/http/HttpException from L13 to L14 using L2
.catch com/common/android/utils/http/HttpException from L14 to L15 using L2
.catch com/common/android/utils/http/HttpException from L15 to L16 using L2
.catch com/common/android/utils/http/HttpException from L16 to L17 using L2
.catch com/common/android/utils/http/HttpException from L18 to L19 using L2
L0:
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$000(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
ifnonnull L1
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
new com/nd/android/u/contact/dataStructure/SeniorInfoListResult
dup
invokespecial com/nd/android/u/contact/dataStructure/SeniorInfoListResult/<init>()V
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$002(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
pop
L1:
aload 0
iconst_1
anewarray java/lang/Object
dup
iconst_0
ldc com/nd/android/u/contact/dao/MySeniorDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/MySeniorDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokeinterface com/nd/android/u/contact/dao/MySeniorDao/queryFindSeniorList(J)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult; 2
aastore
invokevirtual com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/publishProgress([Ljava/lang/Object;)V
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getSeniorSystemCom()Lcom/nd/android/u/contact/com/OapSeniorSystemCom;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$200(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)I
bipush 20
invokevirtual com/nd/android/u/contact/com/OapSeniorSystemCom/getNewSeniorList(JII)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
astore 1
L3:
aload 1
ifnull L11
L4:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/isEmpty()Z
ifne L11
getstatic com/nd/android/util/ListState/REFRESH Lcom/nd/android/util/ListState;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$300(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/util/ListState;
if_acmpne L7
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
aload 1
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$002(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
pop
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/count I
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$402(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;I)I
pop
L5:
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$000(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
getfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/total I
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$400(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)I
if_icmpne L9
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
iconst_1
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$502(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Z)Z
pop
L6:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L7:
getstatic com/nd/android/util/ListState/LOADMORE Lcom/nd/android/util/ListState;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$300(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/util/ListState;
if_acmpne L5
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$400(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)I
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/count I
iadd
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$402(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;I)I
pop
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$000(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/count I
putfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/count I
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$000(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/total I
putfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/total I
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$000(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/addAll(Ljava/util/Collection;)Z
pop
L8:
goto L5
L2:
astore 1
aload 0
aload 1
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/errCode I
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
aload 1
invokevirtual com/common/android/utils/http/HttpException/getMessage()Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$102(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Ljava/lang/String;)Ljava/lang/String;
pop
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$502(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Z)Z
pop
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L9:
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$502(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Z)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$000(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
getfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/count I
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$000(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
getfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/total I
if_icmpne L6
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
iconst_1
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$502(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Z)Z
pop
L10:
goto L6
L11:
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
iconst_1
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$502(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Z)Z
pop
L12:
aload 1
ifnull L18
L13:
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/total I
ifne L16
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/errCode I
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$502(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Z)Z
pop
L14:
sipush 200
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/errorCode I
if_icmpeq L15
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$502(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Z)Z
pop
L15:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L16:
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/count I
ifne L14
aload 0
iconst_2
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/errCode I
L17:
goto L14
L18:
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$502(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Z)Z
pop
L19:
goto L15
.limit locals 2
.limit stack 7
.end method
