.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/senior/SeniorDetailActivity
.inner class inner com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;

.method <init>(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCancelled(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onCancelled(Lcom/common/android/utils/task/genericTask/GenericTask;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
aload 1
aload 2
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
aload 2
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
getstatic com/nd/android/u/contact/R$string/yx_success_apply_guide I
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$400(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$string/yx_has_apply_guide I
invokevirtual android/widget/Button/setText(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$400(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setEnabled(Z)V
new android/content/Intent
dup
getstatic com/nd/android/util/BroadcastContact/REFRESH_SENIOR_ACTION Ljava/lang/String;
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "position"
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$500(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/sendBroadcast(Landroid/content/Intent;)V
L1:
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$600(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)V
return
L0:
aload 1
checkcast com/nd/android/u/contact/activity/senior/SeniorDetailActivity$ApplyGuideTask
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$ApplyGuideTask/errCode I
istore 3
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L2
sipush 404
iload 3
if_icmpeq L3
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
getstatic com/nd/android/u/contact/R$string/yx_failure_apply_guide I
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$102(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;Ljava/lang/String;)Ljava/lang/String;
pop
L3:
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$100(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$100(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
goto L1
L2:
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$102(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;Ljava/lang/String;)Ljava/lang/String;
pop
goto L3
.limit locals 4
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
getstatic com/nd/android/u/contact/R$string/yx_wait_for_apply_guide I
invokevirtual com/nd/android/u/contact/activity/senior/SeniorDetailActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$300(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onProgressUpdate(Lcom/common/android/utils/task/genericTask/GenericTask;Ljava/lang/Object;)V
aload 0
aload 1
aload 2
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onProgressUpdate(Lcom/common/android/utils/task/genericTask/GenericTask;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method
