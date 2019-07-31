.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/activity/senior/SeniorDetailActivity$ApplyGuideTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class public final ApplyGuideTask inner com/nd/android/u/contact/activity/senior/SeniorDetailActivity$ApplyGuideTask outer com/nd/android/u/contact/activity/senior/SeniorDetailActivity

.field 'errCode' I

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;

.method public <init>(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$ApplyGuideTask/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$ApplyGuideTask/errCode I
return
.limit locals 2
.limit stack 2
.end method

.method public transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L1 to L3 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
lconst_0
lstore 2
L0:
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$ApplyGuideTask/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$000(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$ApplyGuideTask/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$000(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/uid J
lstore 2
L1:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getSeniorSystemCom()Lcom/nd/android/u/contact/com/OapSeniorSystemCom;
lload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/com/OapSeniorSystemCom/applySenior(JJ)Z
ifeq L3
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L3:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L4:
aload 1
areturn
L2:
astore 1
aload 0
aload 1
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$ApplyGuideTask/errCode I
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$ApplyGuideTask/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
aload 1
invokevirtual com/common/android/utils/http/HttpException/getMessage()Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$102(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;Ljava/lang/String;)Ljava/lang/String;
pop
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 4
.limit stack 5
.end method
