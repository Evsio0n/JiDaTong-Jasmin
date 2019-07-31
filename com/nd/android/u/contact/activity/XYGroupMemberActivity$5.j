.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYGroupMemberActivity$5
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/XYGroupMemberActivity
.inner class inner com/nd/android/u/contact/activity/XYGroupMemberActivity$5

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
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
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupMemberActivity/access$400(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/refreshAdapter()V
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L2
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L2:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/showBegin Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
getstatic com/nd/android/u/contact/R$string/get_group_info_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L1
.limit locals 3
.limit stack 2
.end method
