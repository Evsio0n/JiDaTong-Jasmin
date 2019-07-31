.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class public final GetJuniorListTask inner com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask outer com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity

.field 'errCode' I

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;

.method public <init>(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/errCode I
return
.limit locals 2
.limit stack 2
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
L0:
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$000(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
ifnonnull L1
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
new com/nd/android/u/contact/dataStructure/SeniorInfoListResult
dup
invokespecial com/nd/android/u/contact/dataStructure/SeniorInfoListResult/<init>()V
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$002(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
pop
L1:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getSeniorSystemCom()Lcom/nd/android/u/contact/com/OapSeniorSystemCom;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$200(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)I
bipush 20
invokevirtual com/nd/android/u/contact/com/OapSeniorSystemCom/getNewJuniorApplyList(JII)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
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
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$300(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/util/ListState;
if_acmpne L7
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
aload 1
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$002(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
pop
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/count I
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$402(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;I)I
pop
L5:
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$000(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
getfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/total I
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$400(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)I
if_icmpne L9
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
iconst_1
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$502(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Z)Z
pop
L6:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L7:
getstatic com/nd/android/util/ListState/LOADMORE Lcom/nd/android/util/ListState;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$300(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/util/ListState;
if_acmpne L5
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$400(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)I
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/count I
iadd
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$402(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;I)I
pop
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$000(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/count I
putfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/count I
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$000(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/total I
putfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/total I
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$000(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/addAll(Ljava/util/Collection;)Z
pop
L8:
goto L5
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L9:
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$502(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Z)Z
pop
L10:
goto L6
L11:
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
iconst_1
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$502(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Z)Z
pop
L12:
aload 1
ifnull L15
L13:
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/total I
ifne L14
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/errCode I
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$502(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Z)Z
pop
L14:
sipush 200
aload 1
getfield com/nd/android/u/contact/dataStructure/SeniorInfoListResult/errorCode I
if_icmpeq L15
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$502(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Z)Z
pop
L15:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L16:
aload 1
areturn
.limit locals 2
.limit stack 5
.end method
