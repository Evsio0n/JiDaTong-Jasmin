.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/senior/SeniorDetailActivity$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/senior/SeniorDetailActivity
.inner class inner com/nd/android/u/contact/activity/senior/SeniorDetailActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;

.method <init>(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
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
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$600(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$400(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$string/yx_has_apply_guide I
invokevirtual android/widget/Button/setText(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$400(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setEnabled(Z)V
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
return
.limit locals 2
.limit stack 2
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
