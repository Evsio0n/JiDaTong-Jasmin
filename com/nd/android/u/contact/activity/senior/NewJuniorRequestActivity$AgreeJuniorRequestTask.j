.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class public final AgreeJuniorRequestTask inner com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask outer com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity

.field 'errCode' I

.field 'seniorInfo' Lcom/nd/android/u/contact/dataStructure/SeniorInfo;

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;

.method public <init>(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Lcom/nd/android/u/contact/dataStructure/SeniorInfo;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask/errCode I
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask/seniorInfo Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
aload 0
aload 2
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask/seniorInfo Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
return
.limit locals 3
.limit stack 2
.end method

.method public transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L1 to L3 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L4 to L5 using L2
lconst_0
lstore 2
L0:
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask/seniorInfo Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask/seniorInfo Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/uid J
lstore 2
L1:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getSeniorSystemCom()Lcom/nd/android/u/contact/com/OapSeniorSystemCom;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lload 2
invokevirtual com/nd/android/u/contact/com/OapSeniorSystemCom/agreeJuniorApply(JJ)Z
ifeq L4
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$600(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Ljava/util/ArrayList;
ifnonnull L3
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$602(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
pop
L3:
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$600(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask/seniorInfo Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L4:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L5:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 4
.limit stack 5
.end method
