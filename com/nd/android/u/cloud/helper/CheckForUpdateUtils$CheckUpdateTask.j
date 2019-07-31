.bytecode 50.0
.class synchronized com/nd/android/u/cloud/helper/CheckForUpdateUtils$CheckUpdateTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private CheckUpdateTask inner com/nd/android/u/cloud/helper/CheckForUpdateUtils$CheckUpdateTask outer com/nd/android/u/cloud/helper/CheckForUpdateUtils

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/helper/CheckForUpdateUtils;

.method private <init>(Lcom/nd/android/u/cloud/helper/CheckForUpdateUtils;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/helper/CheckForUpdateUtils$CheckUpdateTask/this$0 Lcom/nd/android/u/cloud/helper/CheckForUpdateUtils;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/cloud/helper/CheckForUpdateUtils$CheckUpdateTask/this$0 Lcom/nd/android/u/cloud/helper/CheckForUpdateUtils;
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokevirtual com/nd/android/u/cloud/OapApplication/getPackageManager()Landroid/content/pm/PackageManager;
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/getPackagename()Ljava/lang/String;
sipush 16384
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
invokestatic com/nd/android/u/cloud/helper/CheckForUpdateUtils/access$002(Lcom/nd/android/u/cloud/helper/CheckForUpdateUtils;Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
pop
L1:
aload 0
getfield com/nd/android/u/cloud/helper/CheckForUpdateUtils$CheckUpdateTask/this$0 Lcom/nd/android/u/cloud/helper/CheckForUpdateUtils;
invokestatic com/nd/android/u/cloud/helper/CheckForUpdateUtils/access$100(Lcom/nd/android/u/cloud/helper/CheckForUpdateUtils;)I
ifeq L3
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L3:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 4
.end method
