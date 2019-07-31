.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;

.field final synthetic 'val$position' I

.field final synthetic 'val$ra' Lcom/product/android/commonInterface/task/Raffles;

.method <init>(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;Lcom/product/android/commonInterface/task/Raffles;I)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
aload 0
aload 2
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3/val$ra Lcom/product/android/commonInterface/task/Raffles;
aload 0
iload 3
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3/val$position I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3/val$ra Lcom/product/android/commonInterface/task/Raffles;
invokevirtual com/product/android/commonInterface/task/Raffles/getFlag()I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$100(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$100(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
return
L1:
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
new com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$LotteryProcessTask
dup
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
aconst_null
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$LotteryProcessTask/<init>(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter$1;)V
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$102(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;Lcom/common/android/utils/task/genericTask/GenericTask;)Lcom/common/android/utils/task/genericTask/GenericTask;
pop
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$100(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$300(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 1
ldc "type"
iconst_1
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;I)V
aload 1
ldc "pos"
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3/val$position I
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;I)V
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$100(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
pop
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
ldc com/nd/android/u/tast/experience/activity/ReceiveExpActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$3/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 5
.end method
