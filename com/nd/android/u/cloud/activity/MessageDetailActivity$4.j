.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MessageDetailActivity$4
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/cloud/activity/MessageDetailActivity
.inner class inner com/nd/android/u/cloud/activity/MessageDetailActivity$4

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MessageDetailActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageDetailActivity$4/this$0 Lcom/nd/android/u/cloud/activity/MessageDetailActivity;
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
ldc "MessageDetailActivity"
ldc "\u53d1\u9001\u6210\u529f"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity$4/this$0 Lcom/nd/android/u/cloud/activity/MessageDetailActivity;
invokestatic com/nd/android/u/cloud/activity/MessageDetailActivity/access$700(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;)V
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity$4/this$0 Lcom/nd/android/u/cloud/activity/MessageDetailActivity;
invokestatic com/nd/android/u/cloud/activity/MessageDetailActivity/access$300(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;)Landroid/app/ProgressDialog;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity$4/this$0 Lcom/nd/android/u/cloud/activity/MessageDetailActivity;
invokestatic com/nd/android/u/cloud/activity/MessageDetailActivity/access$300(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L1:
return
.limit locals 3
.limit stack 2
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity$4/this$0 Lcom/nd/android/u/cloud/activity/MessageDetailActivity;
invokestatic com/nd/android/u/cloud/activity/MessageDetailActivity/access$800(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;)Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity$4/this$0 Lcom/nd/android/u/cloud/activity/MessageDetailActivity;
aload 0
getfield com/nd/android/u/cloud/activity/MessageDetailActivity$4/this$0 Lcom/nd/android/u/cloud/activity/MessageDetailActivity;
invokevirtual com/nd/android/u/cloud/activity/MessageDetailActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131495588
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/cloud/activity/MessageDetailActivity/access$400(Lcom/nd/android/u/cloud/activity/MessageDetailActivity;Ljava/lang/String;)V
L0:
return
.limit locals 2
.limit stack 3
.end method
