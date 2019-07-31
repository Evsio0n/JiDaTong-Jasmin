.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupManagerActivity2$8
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/GroupManagerActivity2
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity2$8

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupManagerActivity2;

.method <init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity2$8/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$8/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$3500(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$8/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokestatic com/nd/android/u/contact/activity/GroupManagerActivity2/access$3500(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$8/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/initComponentValue()V
L2:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$8/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L3
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$8/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L3
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$8/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L3:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$8/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/showBegin Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$8/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
getstatic com/nd/android/u/contact/R$string/get_group_info_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L2
.limit locals 3
.limit stack 2
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$8/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/showBegin Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$8/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$8/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/update_group_info I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2$8/this$0 Lcom/nd/android/u/contact/activity/GroupManagerActivity2;
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/wait_for_update_group_info I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/onBegin(Ljava/lang/String;Ljava/lang/String;)V
L0:
return
.limit locals 2
.limit stack 4
.end method
