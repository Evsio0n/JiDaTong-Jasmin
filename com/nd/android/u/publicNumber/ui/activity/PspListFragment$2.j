.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspListFragment$2
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/publicNumber/ui/activity/PspListFragment
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspListFragment$2

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/paraData Ljava/lang/Object;
instanceof [Ljava/lang/Object;
ifeq L0
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/paraData Ljava/lang/Object;
checkcast [Ljava/lang/Object;
checkcast [Ljava/lang/Object;
astore 1
aload 1
iconst_0
aaload
checkcast com/nd/android/u/publicNumber/ui/widget/PspItemView
aload 1
iconst_1
aaload
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspItemView/setData(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;)V
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$1000(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$1000(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$1000(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
return
.limit locals 3
.limit stack 3
.end method
