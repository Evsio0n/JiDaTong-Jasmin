.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/SearchOrgResultActivity$2
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/cloud/activity/SearchOrgResultActivity
.inner class inner com/nd/android/u/cloud/activity/SearchOrgResultActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SearchOrgResultActivity$2/this$0 Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;
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
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity$2/this$0 Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;
invokestatic com/nd/android/u/cloud/activity/SearchOrgResultActivity/access$000(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity$2/this$0 Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity$2/this$0 Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;
invokevirtual com/nd/android/u/cloud/activity/SearchOrgResultActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131494928
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/cloud/activity/SearchOrgResultActivity/access$100(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity$2/this$0 Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;
aload 0
getfield com/nd/android/u/cloud/activity/SearchOrgResultActivity$2/this$0 Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;
invokevirtual com/nd/android/u/cloud/activity/SearchOrgResultActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131495590
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/cloud/activity/SearchOrgResultActivity/access$200(Lcom/nd/android/u/cloud/activity/SearchOrgResultActivity;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
