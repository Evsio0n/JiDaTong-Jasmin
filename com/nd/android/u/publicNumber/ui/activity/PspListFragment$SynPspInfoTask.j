.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspListFragment$SynPspInfoTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SynPspInfoTask inner com/nd/android/u/publicNumber/ui/activity/PspListFragment$SynPspInfoTask outer com/nd/android/u/publicNumber/ui/activity/PspListFragment

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;

.method private <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$SynPspInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/activity/PspListFragment$SynPspInfoTask/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$SynPspInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$500(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$SynPspInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getMyFocusPublicNumberFromServer()Ljava/util/ArrayList;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$602(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
pop
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_1
putfield com/product/android/business/bean/SysParam/obtainPspGroup I
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$SynPspInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$600(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;)Ljava/util/ArrayList;
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$SynPspInfoTask/paraData Ljava/lang/Object;
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L0:
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getMyFocusPublicNumberFromDb()Ljava/util/ArrayList;
astore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$SynPspInfoTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;
aload 1
invokestatic com/nd/android/u/publicNumber/ui/activity/PspListFragment/access$602(Lcom/nd/android/u/publicNumber/ui/activity/PspListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
pop
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspListFragment$SynPspInfoTask/paraData Ljava/lang/Object;
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 2
.end method
