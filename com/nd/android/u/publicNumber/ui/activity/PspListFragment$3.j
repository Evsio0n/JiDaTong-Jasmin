.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspListFragment$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/publicNumber/ui/activity/PspListFragment
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspListFragment$3

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$1300(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$1300(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$1300(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$1400(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Landroid/app/ProgressDialog;
ifnull L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$1400(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L1:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L2
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/paraData Ljava/lang/Object;
instanceof java/util/ArrayList
ifeq L3
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/paraData Ljava/lang/Object;
checkcast java/util/ArrayList
astore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
aload 1
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$1500(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Ljava/util/ArrayList;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
iconst_1
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$1600(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Z)V
L4:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$500(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)I
iconst_2
if_icmpne L5
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
getfield com/product/android/business/bean/SysParam/obtainPspGroup I
ifne L5
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
iconst_0
iconst_1
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;ZI)V
L5:
return
L3:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
iconst_0
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$1600(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Z)V
goto L4
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
iconst_0
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$1600(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Z)V
return
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$1100(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Z
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
aconst_null
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
getstatic com/nd/android/u/chat/R$string/waiting_for_refresh I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspListFragment/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$1200(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Ljava/lang/String;Ljava/lang/String;)V
L0:
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
return
.limit locals 2
.limit stack 4
.end method
