.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYNewSelectUserActivity$7
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/XYNewSelectUserActivity
.inner class inner com/nd/android/u/contact/activity/XYNewSelectUserActivity$7

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$7/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$7/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/addDiscussionMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$7/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/addDiscussionMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$7/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/addDiscussionMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$7/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$7/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYNewSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/add_discussion_member I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$7/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYNewSelectUserActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_for_add_discussion_member I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/activity/XYNewSelectUserActivity/onBegin(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method
