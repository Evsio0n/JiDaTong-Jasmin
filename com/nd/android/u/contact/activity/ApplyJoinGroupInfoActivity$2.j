.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$2
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity
.inner class inner com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;

.method <init>(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$2/this$0 Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;
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
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$2/this$0 Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;
invokestatic com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/access$100(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;)V
return
L0:
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
ifnonnull L1
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$2/this$0 Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;
invokestatic com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/access$200(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;)Lcom/nd/android/u/contact/dialog/CustomLoadingDialog;
invokevirtual com/nd/android/u/contact/dialog/CustomLoadingDialog/dismiss()V
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$2/this$0 Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$2/this$0 Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
return
L1:
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
ldc "404"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$2/this$0 Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$2/this$0 Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/search_nothing I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/access$300(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;Ljava/lang/String;)V
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$2/this$0 Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$2/this$0 Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/search_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/access$300(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$2/this$0 Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;
aload 0
getfield com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity$2/this$0 Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;
getstatic com/nd/android/u/contact/R$string/send_message_to_check I
invokevirtual com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity/access$400(Lcom/nd/android/u/contact/activity/ApplyJoinGroupInfoActivity;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
