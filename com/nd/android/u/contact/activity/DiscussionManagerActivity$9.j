.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/DiscussionManagerActivity$9
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/DiscussionManagerActivity
.inner class inner com/nd/android/u/contact/activity/DiscussionManagerActivity$9

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;

.method <init>(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/DiscussionManagerActivity$9/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$9/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$700(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$9/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$700(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$9/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$9/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$000(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
iconst_0
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/setDeleteModule(Z)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$9/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$000(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/notifyDataSetChanged()V
L2:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$9/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$1300(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L3
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$9/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$1300(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L3
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$9/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokestatic com/nd/android/u/contact/activity/DiscussionManagerActivity/access$1300(Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;)Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L3:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$9/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
getstatic com/nd/android/u/contact/R$string/delete_discussion_member_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L2
.limit locals 3
.limit stack 2
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$9/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
ldc ""
aload 0
getfield com/nd/android/u/contact/activity/DiscussionManagerActivity$9/this$0 Lcom/nd/android/u/contact/activity/DiscussionManagerActivity;
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_for_delete I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/activity/DiscussionManagerActivity/onBegin(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method
