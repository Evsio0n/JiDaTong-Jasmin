.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/ConcernFriends$4
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/cloud/activity/ConcernFriends
.inner class inner com/nd/android/u/cloud/activity/ConcernFriends$4

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/ConcernFriends;

.method <init>(Lcom/nd/android/u/cloud/activity/ConcernFriends;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/ConcernFriends$4/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$4/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$300(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$4/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$300(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$4/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$300(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$4/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
ldc_w 2131494899
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$4/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$700(Lcom/nd/android/u/cloud/activity/ConcernFriends;)V
invokestatic com/nd/android/u/cloud/data/FirstLoginOptionData/getInstance()Lcom/nd/android/u/cloud/data/FirstLoginOptionData;
invokevirtual com/nd/android/u/cloud/data/FirstLoginOptionData/finishAllActivity()V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$4/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
ldc_w 2131494173
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 3
.limit stack 2
.end method
