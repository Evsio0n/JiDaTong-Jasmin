.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYSelectUserActivity$4
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/XYSelectUserActivity
.inner class inner com/nd/android/u/contact/activity/XYSelectUserActivity$4

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYSelectUserActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYSelectUserActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$900(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$900(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
iconst_3
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/gid J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/finish()V
L2:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/createDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L3
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/createDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L3
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/createDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L3:
return
L1:
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/removeUid(J)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
getstatic com/nd/android/u/contact/R$string/create_discussion_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L2
.limit locals 3
.limit stack 4
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/create_discussion I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$4/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/wait_for_create_discussion I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/onBegin(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method
