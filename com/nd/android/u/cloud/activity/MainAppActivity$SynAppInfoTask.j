.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MainAppActivity$SynAppInfoTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SynAppInfoTask inner com/nd/android/u/cloud/activity/MainAppActivity$SynAppInfoTask outer com/nd/android/u/cloud/activity/MainAppActivity

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MainAppActivity;

.method private <init>(Lcom/nd/android/u/cloud/activity/MainAppActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MainAppActivity$SynAppInfoTask/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/MainAppActivity;Lcom/nd/android/u/cloud/activity/MainAppActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/MainAppActivity$SynAppInfoTask/<init>(Lcom/nd/android/u/cloud/activity/MainAppActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
iconst_0
istore 2
L3:
iload 2
iconst_2
if_icmpge L1
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic com/nd/android/u/contact/business/SynOapApp/initAppInfo(J)Z
pop
L1:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iload 2
iconst_1
if_icmpeq L4
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity$SynAppInfoTask/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
invokestatic com/nd/android/u/cloud/activity/MainAppActivity/access$100(Lcom/nd/android/u/cloud/activity/MainAppActivity;)Landroid/content/Context;
invokestatic ims/utils/CommUtil/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L5
L4:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L5:
iload 2
iconst_1
iadd
istore 2
goto L3
.limit locals 3
.limit stack 2
.end method
