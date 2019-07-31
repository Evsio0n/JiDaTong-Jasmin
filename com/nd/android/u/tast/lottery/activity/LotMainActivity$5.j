.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/activity/LotMainActivity$5
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/tast/lottery/activity/LotMainActivity
.inner class inner com/nd/android/u/tast/lottery/activity/LotMainActivity$5

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;

.method <init>(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/LotMainActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
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
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1400(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)I
ifle L0
aload 0
getfield com/nd/android/u/tast/lottery/activity/LotMainActivity$5/this$0 Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;
invokestatic com/nd/android/u/tast/lottery/activity/LotMainActivity/access$1500(Lcom/nd/android/u/tast/lottery/activity/LotMainActivity;)V
L0:
return
.limit locals 3
.limit stack 2
.end method
